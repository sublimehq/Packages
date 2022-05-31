#!/usr/bin/env python
# coding: utf-8

#   This file is being maintained at:
#       https://github.com/sublimehq/Packages/blob/master/JSON/src/json_prettify.py


from __future__ import annotations

import sublime
import sublime_plugin

import collections
import decimal
import json
from typing import (
    Union
)


PKG_NAME: str = __package__.split('.')[0]
settings: Union[sublime.Settings, None] = None
base_settings: str = 'JSON.sublime-settings'
base_scope: str = 'source.json - (source.json.json-dotnet | source.json.json5 | source.json.jsonc)'


def status_msg(msg: str = '') -> None:
    if msg == '': return
    sublime.status_message(f'{PKG_NAME}: {msg}')


def print_msg(msg_header: str = '', msg_body: str = '') -> None:
    if msg_body == '': return
    print(f'JSON: {msg_header}:\n\n{msg_body}\n\n')


def json2py(view: sublime.View) -> sublime.Value:
    old_contents: str = view.substr(
        x=whole_view(view)
    )
    try:
        return json.loads(                                                      # https://docs.python.org/3.8/library/json.html#json.loads
            s=old_contents,
            object_pairs_hook=collections.OrderedDict,
            parse_float=decimal.Decimal
        )
    except Exception as e:
        print_msg(
            msg_header='Conversion failed due to error:',
            msg_body=f'{e}'
        )
    return None


def whole_view(view: sublime.View) -> sublime.Region:
    return sublime.Region(
        a=0,
        b=view.size()
    )


def is_json(view: sublime.View) -> bool:
    return view.match_selector(
        pt=0,
        selector=base_scope
    )


def plugin_loaded(reload: bool = False) -> None:
    try:
        global settings
        settings = sublime.load_settings(base_name=base_settings)
        settings.clear_on_change(tag='reload')
        settings.add_on_change(
            tag='reload',
            callback=lambda: plugin_loaded(reload=True)
        )
    except Exception as e:
        print_msg(
            msg_header=f'Loading "{base_settings}" failed due to error',
            msg_body=f'{e}'
        )

    if reload:
        status_msg('Reloaded settings on change.')


def plugin_unloaded() -> None:
    global settings
    settings = None


class JsonToggleAutoPrettify(sublime_plugin.WindowCommand):

    _is_checked: bool = False
    _key: str = 'json.auto_prettify'

    def __init__(self, window: sublime.Window) -> None:
        self.window: sublime.Window = window

        try:
            if settings is None:
                return
            self._is_checked = settings.get(key=self._key, default=False)
        except Exception:
            pass

    def run(self) -> None:
        try:
            global settings
            if settings is None:
                return
            if self._is_checked:
                settings.erase(key=self._key)                                   # remove the override (true) of the default (false)
            else:
                settings.set(key=self._key, value=True)
            sublime.save_settings(base_name=base_settings)
            self._is_checked = not self._is_checked                             # toggle
        except Exception:
            pass

    def is_checked(self) -> bool:
        return self._is_checked


class JsonAutoPrettifyListener(sublime_plugin.EventListener):

    _key: str = 'json.auto_prettify'

    def on_pre_save_async(self, view) -> None:
        if not is_json(view):
            return
        if settings is None:
            return
        if not settings.get(key=self._key, default=False):
            return
        view.run_command(cmd='json_prettify')


class JsonPrettify(sublime_plugin.TextCommand):

    def run(self, edit_token: sublime.Edit) -> None:
        """
        Attempt to prettify the current view's JSON contents. Print errors to
        the console when it fails.
        """

        try:
            json_as_python: sublime.Value = json2py(self.view)
            if json_as_python is None: return
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
        return is_json(self.view)

    def is_visible(self) -> bool:
        return is_json(self.view)

    def description(self) -> str:
        return 'Prettify JSON'


class JsonMinify(sublime_plugin.TextCommand):

    def run(self, edit_token: sublime.Edit) -> None:
        """
        Attempt to minify the current view's JSON contents. Print errors to
        the console when it fails.
        """

        try:
            json_as_python: sublime.Value = json2py(self.view)
            if json_as_python is None: return
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
        return is_json(self.view)

    def is_visible(self) -> bool:
        return is_json(self.view)

    def description(self) -> str:
        return 'Minify JSON'
