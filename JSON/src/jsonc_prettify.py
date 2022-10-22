#!/usr/bin/env python
# coding: utf-8

#   This file is being maintained at:
#       https://github.com/sublimehq/Packages/blob/master/JSON/src/jsonc_prettify.py


from __future__ import annotations

import sublime
import sublime_plugin

import json


PKG_NAME: str = __package__.split('.')[0]
base_scope: str = 'source.json.jsonc'


def status_msg(msg: str = '') -> None:
    if msg == '': return
    sublime.status_message(f'{PKG_NAME}: {msg}')


def print_msg(msg_header: str = '', msg_body: str = '') -> None:
    if msg_body == '': return
    print(f'JSONC: {msg_header}:\n\n{msg_body}\n\n')


def json2py(view: sublime.View) -> sublime.Value:
    old_contents: str = view.substr(
        x=whole_view(view)
    )
    return sublime.decode_value(
        data=old_contents
    )


def whole_view(view: sublime.View) -> sublime.Region:
    return sublime.Region(
        a=0,
        b=view.size()
    )


def is_jsonc(view: sublime.View) -> bool:
    return view.match_selector(
        pt=0,
        selector=base_scope
    )


class JsoncPrettify(sublime_plugin.TextCommand):

    def run(self, edit_token: sublime.Edit, auto: bool = False) -> None:
        """
        Attempt to prettify the current view's JSONC contents. Print errors to
        the console when it fails.
        """

        try:
            if not auto and not sublime.ok_cancel_dialog(
                msg='Prettifying JSONC will remove included comments and trailing commas.',
                ok_title='Continue',
                title='JSONC: Prettify'                                         # only shown on Windows
            ):
                return
            json_as_python: sublime.Value = json2py(self.view)
            self.view.replace(
                edit_token,
                r=whole_view(self.view),
                text=json.dumps(                                                # https://docs.python.org/3.8/library/json.html#json.dumps
                    obj=json_as_python,
                    allow_nan=False,
                    indent=4,
                    sort_keys=True
                )
            )
            status_msg('Prettified.')
        except Exception as e:
            print_msg(
                msg_header='Conversion failed due to error',
                msg_body=f'{e}'
            )
            status_msg('Prettifying failed. See console for details.')
            pass

    def is_enabled(self) -> bool:
        return is_jsonc(self.view)

    def is_visible(self) -> bool:
        return is_jsonc(self.view)

    def description(self) -> str:
        return 'Prettify JSONC'


class JsoncMinify(sublime_plugin.TextCommand):

    def run(self, edit_token: sublime.Edit, auto: bool = False) -> None:
        """
        Attempt to minify the current view's JSONC contents. Print errors to
        the console when it fails.
        """

        try:
            if not auto and not sublime.ok_cancel_dialog(
                msg='Minifying JSONC will remove included comments and trailing commas.',
                ok_title='Continue',
                title='JSONC: Minify'                                           # only shown on Windows
            ):
                return
            json_as_python: sublime.Value = json2py(self.view)
            self.view.replace(
                edit_token,
                r=whole_view(self.view),
                text=json.dumps(                                                # https://docs.python.org/3.8/library/json.html#json.dumps
                    obj=json_as_python,
                    allow_nan=False,
                    indent=None,
                    separators=(',', ':'),
                    sort_keys=True
                )
            )
            status_msg('Minified.')
        except Exception as e:
            print_msg(
                msg_header='Conversion failed due to error',
                msg_body=f'{e}'
            )
            status_msg('Minifying failed. See console for details.')
            pass

    def is_enabled(self) -> bool:
        return is_jsonc(self.view)

    def is_visible(self) -> bool:
        return is_jsonc(self.view)

    def description(self) -> str:
        return 'Minify JSONC'
