import sublime
import sublime_plugin

import difflib
import time

from pathlib import Path
from typing import Iterable, Iterator


def splitlines_keep_ends(text: str) -> list[str]:
    """
    Split text into lines but preserve newline endings.
    Required for difflib to work correctly.
    """
    lines: list[str] = text.split(sep='\n')
    for i in range(len(lines) - 1):
        lines[i] += '\n'
    return lines


def read_file_lines(fname: str | Path) -> list[str]:
    """Read a UTF-8 file and return its lines with newline endings preserved."""
    path: Path = Path(fname)
    text: str = path.read_text(encoding="utf-8")
    lines: list[str] = splitlines_keep_ends(text)
    add_no_eol_warning_if_applicable(lines)
    return lines


def add_no_eol_warning_if_applicable(lines: list[str]) -> None:
    """
    Append a note if file doesn't end with newline.
    difflib misbehaves otherwise.
    """
    if lines and lines[-1] and not lines[-1].endswith('\n'):
        lines[-1] += '\n\\ No newline at end of file\n'


class DiffFilesCommand(sublime_plugin.WindowCommand):
    def run(self, files: list[str]) -> None:
        if len(files) != 2:
            return

        try:
            a: list[str] = read_file_lines(fname=files[1])
            b: list[str] = read_file_lines(fname=files[0])
        except UnicodeDecodeError:
            sublime.status_message("Diff only works with UTF-8 files")
            return

        a_path, b_path = Path(files[1]), Path(files[0])
        adate: str = time.ctime(a_path.stat().st_mtime)
        bdate: str = time.ctime(b_path.stat().st_mtime)

        diff = difflib.unified_diff(
            a,
            b,
            fromfile=files[1],
            tofile=files[0],
            fromfiledate=adate,
            tofiledate=bdate,
            lineterm=""
        )
        show_diff_output(
            diff,
            view=None,
            win=self.window,
            name=f"{a_path.name} -> {b_path.name}",
            panel_name="diff_files",
            buffer_setting_name="diff_files_to_buffer",
        )

    def is_visible(self, files: list[str]) -> bool:
        return len(files) == 2


class DiffChangesCommand(sublime_plugin.TextCommand):
    def run(self, edit: sublime.Edit) -> None:
        fname: str | None = self.view.file_name()
        fpath: Path = Path(fname)
        if not fname or not fpath.exists():
            sublime.status_message("Unable to diff changes because the file does not exist")
            return

        try:
            a: list[str] = read_file_lines(fname)
        except UnicodeDecodeError:
            sublime.status_message(msg="Diff only works with UTF-8 files")
            return

        b: list[str] = get_lines_for_view(self.view)
        add_no_eol_warning_if_applicable(lines=b)

        adate: str = time.ctime(fpath.stat().st_mtime)
        bdate: str = time.ctime()

        diff = difflib.unified_diff(
            a,
            b,
            fromfile=fname,
            tofile=fname,
            fromfiledate=adate,
            tofiledate=bdate,
            lineterm=""
        )
        name: str = f"Unsaved Changes: {fpath.name}"
        show_diff_output(
            diff,
            self.view,
            win=self.view.window(),
            name=name,
            panel_name="unsaved_changes",
            buffer_setting_name="diff_changes_to_buffer"
        )

    def is_enabled(self) -> bool:
        return self.view.is_dirty() and self.view.file_name() is not None


def show_diff_output(
    diff: Iterable[str],
    view: sublime.View | None,
    win: sublime.Window,
    name: str,
    panel_name: str,
    buffer_setting_name: str,
) -> None:
    """Display the unified diff either in a scratch buffer or an output panel."""
    difftxt: str = "".join(diff)

    if not difftxt:
        sublime.status_message(msg="No changes")
        return

    use_buffer = not view or view.settings().get(key=buffer_setting_name)

    if use_buffer:
        v: sublime.View = win.new_file()
        v.set_name(name)
        v.set_scratch(scratch=True)
    else:
        v: sublime.View = win.create_output_panel(name=panel_name)
        if view:
            v.settings().set(key="word_wrap", value=view.settings().get(key="word_wrap"))

    v.assign_syntax(syntax="Packages/Diff/Diff.sublime-syntax")
    v.run_command(cmd="append", args={"characters": difftxt, "disable_tab_translation": True})

    if not use_buffer:
        win.run_command(cmd="show_panel", args={"panel": f"output.{panel_name}"})


def get_view_from_tab_context(active_view: sublime.View, **kwargs) -> sublime.View:
    """Return the view associated with the clicked tab."""
    if "group" in kwargs and "index" in kwargs:
        return active_view.window().views_in_group(group=kwargs["group"])[kwargs["index"]]
    return active_view


def get_views_from_tab_context(active_view: sublime.View, **kwargs) -> list[sublime.View]:
    """Return selected views, preserving right-click order."""
    selected_views: list[sublime.View] = list(get_selected_views(window=active_view.window()))
    if "group" in kwargs and "index" in kwargs:
        tab_view: sublime.View = get_view_from_tab_context(active_view, **kwargs)
        return [v for v in selected_views if v.id() != tab_view.id()] + [tab_view]
    return selected_views


def get_selected_views(window: sublime.Window) -> Iterator[sublime.View]:
    """Yield selected views from the given window."""
    return filter(None, (sheet.view() for sheet in window.selected_sheets()))


def get_name_for_view(view: sublime.View) -> str:
    return view.file_name() or view.name() or f"Unsaved view ({view.id()})"


def get_lines_for_view(view: sublime.View) -> list[str]:
    """Return the full text of a view split into lines."""
    return splitlines_keep_ends(text=view.substr(x=sublime.Region(a=0, b=view.size())))


class DiffViewsCommand(sublime_plugin.TextCommand):
    def run(self, edit: sublime.Edit, **kwargs) -> None:
        views: list[sublime.View] = get_views_from_tab_context(active_view=self.view, **kwargs)
        if len(views) != 2:
            return

        view_names: list[str] = [get_name_for_view(view=v) for v in views]
        from_lines, to_lines = map(get_lines_for_view, views)
        add_no_eol_warning_if_applicable(lines=from_lines)
        add_no_eol_warning_if_applicable(lines=to_lines)

        diff = difflib.unified_diff(
            a=from_lines,
            b=to_lines,
            fromfile=view_names[0],
            tofile=view_names[1],
            lineterm="",
        )

        # Try to shorten common path prefix
        try:
            common_path: Path = Path(*Path(view_names[0]).parts).parent
            common_prefix: str = str(common_path)
            if common_prefix and all(name.startswith(common_prefix) for name in view_names):
                view_names: list[str] = [name[len(common_prefix) + 1 :] for name in view_names]
        except Exception:
            pass

        show_diff_output(
            diff,
            view=views[0],
            win=views[0].window(),
            name=f"{view_names[0]} -> {view_names[1]}",
            panel_name="diff_views",
            buffer_setting_name="diff_tabs_to_buffer",
        )

    def is_enabled(self, **kwargs) -> bool:
        return self.is_visible(**kwargs)

    def is_visible(self, **kwargs) -> bool:
        return len(get_views_from_tab_context(active_view=self.view, **kwargs)) == 2

    def description(self, **kwargs) -> str:
        selected_views: list[sublime.View] = list(get_selected_views(window=self.view.window()))
        return "Diff Selected Tabs..." if len(selected_views) == 2 else "Diff With Current Tab..."
