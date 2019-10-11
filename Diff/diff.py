import codecs
import difflib
import os.path
import time

import sublime
import sublime_plugin


def read_file_lines(fname):
    with open(fname, mode="rt", encoding="utf-8", newline=None) as f:
        lines = f.readlines()

    # as `difflib` doesn't work properly when the file does not end
    # with a new line character (https://bugs.python.org/issue2142),
    # we add a warning ourselves to fix it
    add_no_eol_warning_if_applicable(lines)
    return lines


def add_no_eol_warning_if_applicable(lines):
    if len(lines) > 0 and not lines[-1].endswith('\n'):
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

        difftxt = u"".join(line for line in diff)

        if difftxt == "":
            sublime.status_message("Files are identical")
        else:
            v = self.window.new_file()
            v.set_name(os.path.basename(files[1]) + " -> " + os.path.basename(files[0]))
            v.set_scratch(True)
            v.assign_syntax('Packages/Diff/Diff.sublime-syntax')
            v.settings().set('translate_tabs_to_spaces', False)
            v.run_command('append', {'characters': difftxt})
            v.settings().erase('translate_tabs_to_spaces')

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

        b = self.view.substr(sublime.Region(0, self.view.size())).splitlines(True)
        add_no_eol_warning_if_applicable(b)

        adate = time.ctime(os.stat(fname).st_mtime)
        bdate = time.ctime()

        diff = difflib.unified_diff(a, b, fname, fname, adate, bdate)
        difftxt = u"".join(line for line in diff)

        if difftxt == "":
            sublime.status_message("No changes")
            return

        use_buffer = self.view.settings().get('diff_changes_to_buffer')

        if use_buffer:
            v = self.view.window().new_file()
            v.set_name("Unsaved Changes: " + os.path.basename(self.view.file_name()))
            v.set_scratch(True)
            v.assign_syntax('Packages/Diff/Diff.sublime-syntax')
        else:
            win = self.view.window()
            v = win.create_output_panel('unsaved_changes')
            v.assign_syntax('Packages/Diff/Diff.sublime-syntax')
            v.settings().set('word_wrap', self.view.settings().get('word_wrap'))

        v.settings().set('translate_tabs_to_spaces', False)
        v.run_command('append', {'characters': difftxt})
        v.settings().erase('translate_tabs_to_spaces')

        if not use_buffer:
            win.run_command("show_panel", {"panel": "output.unsaved_changes"})

    def is_enabled(self):
        return self.view.is_dirty() and self.view.file_name() is not None
