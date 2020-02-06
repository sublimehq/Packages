#!/usr/bin/env python
# coding: utf-8


import sublime
import sublime_plugin


class PreviewMarkdownViaHtmlSheet(sublime_plugin.TextCommand):

    def run(self, edit):
        try:
            v = self.view
            w = v.window()
            if not v.settings().get('syntax').startswith('Packages/Markdown/'):
                return
            import mdpopups
            md_preview = mdpopups.md2html(
                view=v,
                markup=v.substr(sublime.Region(0, v.size())),
                template_vars=None,
                template_env_options=None,
                nl2br=True,
                allow_code_wrap=False
            )
            preview_sheet = w.new_html_sheet(
                name='HTML Preview (read_only)',
                contents=md_preview,
                cmd='open_url',
                args=None,
                flags=0,
                group=-1
            )
            w.run_command('new_pane')
        except Exception as e:
            pass

    # def is_enabled(self): return bool

    def is_visible(self):
        # only show for markdown when mdpopups can be imported
        try:
            import mdpopups
            return self.view.settings().get('syntax').startswith('Packages/Markdown/')
        except Exception as e:
            return False

    # def description(self): return str
    # def want_event(): return bool
    # def input(self, args): return CommandInputHandler or None
