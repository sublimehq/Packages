import difflib
import os
import time

import sublime
import sublime_plugin


def splitlines_keep_ends(text):
    lines = text.split('\n')

    # Need to insert back the newline characters between lines, difflib
    # requires this.
    if len(lines) > 0:
        for i in range(len(lines) - 1):
            lines[i] += '\n'

    return lines


def read_file_lines(fname):
    with open(fname, mode='rt', encoding='utf-8') as f:
        lines = splitlines_keep_ends(f.read())

    # as `difflib` doesn't work properly when the file does not end
    # with a new line character (https://bugs.python.org/issue2142),
    # we add a warning ourselves to fix it
    add_no_eol_warning_if_applicable(lines)

    return lines


def add_no_eol_warning_if_applicable(lines):
    if len(lines) > 0 and lines[-1]:
        # note we update the last line rather than adding a new one
        # so that the diff will show the warning with the last line
        lines[-1] += '\n\\ No newline at end of file\n'


class DiffFilesCommand(sublime_plugin.WindowCommand):

    def run(self, files):
        if len(files) != 2:
            return

        try:
            a = read_file_lines(files[1])
            b = read_file_lines(files[0])
        except UnicodeDecodeError:
            sublime.status_message("Diff only works with UTF-8 files")
            return

        adate = time.ctime(os.stat(files[1]).st_mtime)
        bdate = time.ctime(os.stat(files[0]).st_mtime)

        diff = difflib.unified_diff(a, b, files[1], files[0], adate, bdate)
        show_diff_output(diff, None, self.window, f"{os.path.basename(files[1])} -> {os.path.basename(files[0])}", 'diff_files', 'diff_files_to_buffer')

    def is_visible(self, files):
        return len(files) == 2


class DiffChangesCommand(sublime_plugin.TextCommand):

    def run(self, edit):

        fname = self.view.file_name()

        if not fname or not os.path.exists(fname):
            sublime.status_message("Unable to diff changes because the file does not exist")
            return

        try:
            a = read_file_lines(fname)
        except UnicodeDecodeError:
            sublime.status_message("Diff only works with UTF-8 files")
            return

        b = get_lines_for_view(self.view)

        add_no_eol_warning_if_applicable(b)

        adate = time.ctime(os.stat(fname).st_mtime)
        bdate = time.ctime()

        diff = difflib.unified_diff(a, b, fname, fname, adate, bdate)
        name = "Unsaved Changes: " + os.path.basename(fname)
        show_diff_output(diff, self.view, self.view.window(), name, 'unsaved_changes', 'diff_changes_to_buffer')

    def is_enabled(self):
        return self.view.is_dirty() and self.view.file_name() is not None


def show_diff_output(diff, view, win, name, panel_name, buffer_setting_name):
    difftxt = u"".join(line for line in diff)

    if difftxt == "":
        sublime.status_message("No changes")
        return

    use_buffer = not view or view.settings().get(buffer_setting_name)

    if use_buffer:
        v = win.new_file()
        v.set_name(name)
        v.set_scratch(True)
    else:
        v = win.create_output_panel(panel_name)
        if view:
            v.settings().set('word_wrap', view.settings().get('word_wrap'))

    v.assign_syntax('Packages/Diff/Diff.sublime-syntax')
    v.run_command('append', {'characters': difftxt, 'disable_tab_translation': True})

    if not use_buffer:
        win.run_command('show_panel', {'panel': f'output.{panel_name}'})


def get_view_from_tab_context(active_view, **kwargs):
    view = active_view
    if 'group' in kwargs and 'index' in kwargs:
        view = view.window().views_in_group(kwargs['group'])[kwargs['index']]
    return view


def get_views_from_tab_context(active_view, **kwargs):
    selected_views = list(get_selected_views(active_view.window()))
    if 'group' in kwargs and 'index' in kwargs:
        tab_context_view = get_view_from_tab_context(active_view, **kwargs)
        # if the tab which was right clicked on is selected, exclude it from the selected views and re-add it afterwards
        # so that the order of the diff will be determined by which tab was right-clicked on
        return [view for view in selected_views if view.id() != tab_context_view.id()] + [tab_context_view]
    return selected_views


def get_selected_views(window):
    return filter(lambda view: view, map(lambda sheet: sheet.view(), window.selected_sheets()))


def get_name_for_view(view):
    return view.file_name() or view.name() or "Unsaved view ({})".format(view.id())


def get_lines_for_view(view):
    return splitlines_keep_ends(view.substr(sublime.Region(0, view.size())))


class DiffViewsCommand(sublime_plugin.TextCommand):
    def run(self, edit, **kwargs):
        views = get_views_from_tab_context(self.view, **kwargs)
        if len(views) != 2:
            return

        view_names = (
            get_name_for_view(views[0]),
            get_name_for_view(views[1])
        )

        from_lines = get_lines_for_view(views[0])
        to_lines = get_lines_for_view(views[1])
        add_no_eol_warning_if_applicable(from_lines)
        add_no_eol_warning_if_applicable(to_lines)

        diff = difflib.unified_diff(
            from_lines,
            to_lines,
            fromfile=view_names[0],
            tofile=view_names[1]
        )

        try:
            common_path_length = len(os.path.commonpath(view_names))
            if common_path_length <= 1:
                common_path_length = 0
            else:
                common_path_length += 1
        except ValueError:
            common_path_length = 0
        view_names = list(map(lambda name: name[common_path_length:], view_names))
        show_diff_output(diff, views[0], views[0].window(), f'{view_names[0]} -> {view_names[1]}', 'diff_views', 'diff_tabs_to_buffer')

    def is_enabled(self, **kwargs):
        return self.is_visible(**kwargs)

    def is_visible(self, **kwargs):
        views = get_views_from_tab_context(self.view, **kwargs)
        return len(views) == 2

    def description(self, **kwargs):
        selected_views = list(get_selected_views(self.view.window()))
        if len(selected_views) == 2:
            return 'Diff Selected Tabs...'

        return 'Diff With Current Tab...'
