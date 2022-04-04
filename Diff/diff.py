import codecs
import difflib
import os.path
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
    with open(fname, mode="rt", encoding="utf-8") as f:
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
        show_diff_output(diff, None, self, os.path.basename(files[1]) + " -> " + os.path.basename(files[0]))

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
        show_diff_output(diff, self.view, self.view.window(), os.path.basename(self.view.file_name()))

    def is_enabled(self):
        return self.view.is_dirty() and self.view.file_name() is not None


def show_diff_output(diff, view, win, name):
    difftxt = u"".join(line for line in diff)

    if difftxt == "":
        sublime.status_message("No changes")
        return

    use_buffer = view and view.settings().get('diff_changes_to_buffer')

    if use_buffer:
        v = view.window().new_file()
        v.set_name("Unsaved Changes: " + name)
        v.set_scratch(True)
        v.assign_syntax('Packages/Diff/Diff.sublime-syntax')
    else:
        v = win.create_output_panel('unsaved_changes')
        v.assign_syntax('Packages/Diff/Diff.sublime-syntax')
        v.settings().set('word_wrap', view.settings().get('word_wrap'))

    v.run_command('append', {'characters': difftxt, 'disable_tab_translation': True})

    if not use_buffer:
        win.run_command("show_panel", {"panel": "output.unsaved_changes"})


def get_common_prefix_length(str1, str2):
    seqMatcher = difflib.SequenceMatcher(None, str1, str2)
    matches = seqMatcher.get_matching_blocks()
    if not matches:
        return 0
    if not matches[0].a == 0 or not matches[0].b == 0:
        return 0
    return matches[0].size


def get_view_from_tab_context(active_view, **kwargs):
    view = active_view
    if 'group' in kwargs and 'index' in kwargs:
        view = view.window().views_in_group(kwargs['group'])[kwargs['index']]
    return view


def get_views_from_tab_context(active_view, **kwargs):
    selected_views = list(filter(lambda view: view, map(lambda sheet: sheet.view(), active_view.window().selected_sheets())))
    if 'group' in kwargs and 'index' in kwargs:
        tab_context_view = get_view_from_tab_context(active_view, **kwargs)
        if tab_context_view.id() not in map(lambda view: view.id(), selected_views):
            return selected_views + [tab_context_view]
    return selected_views


def get_name_for_view(view, fallback_name):
    return view.file_name() or view.name() or fallback_name


def get_lines_for_view(view):
    return splitlines_keep_ends(view.substr(sublime.Region(0, view.size())))


class DiffViewsCommand(sublime_plugin.TextCommand):
    def run(self, edit, **kwargs):
        views = get_views_from_tab_context(self.view, **kwargs)
        if len(views) != 2:
            return

        view_names = (
            get_name_for_view(views[0], 'from_file'),
            get_name_for_view(views[1], 'to_file')
        )

        diff = difflib.unified_diff(
            get_lines_for_view(views[0]),
            get_lines_for_view(views[1]),
            fromfile=view_names[0],
            tofile  =view_names[1]
        )

        common_prefix_length = get_common_prefix_length(*view_names)
        view_names = list(map(lambda name: name[common_prefix_length:], view_names))
        show_diff_output(diff, views[0], views[0].window(), f'{view_names[0]} -> {view_names[1]}')

    def is_enabled(self, **kwargs):
        return self.is_visible(**kwargs)

    def is_visible(self, **kwargs):
        views = get_views_from_tab_context(self.view, **kwargs)
        return len(views) == 2
