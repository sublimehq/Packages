#!/usr/bin/env python3
# coding: utf-8


from __future__ import annotations                                              # https://docs.python.org/3.13/library/__future__.html

import sublime                                                                  # EXECUTABLE_DIR/Lib/python313/sublime.py
import sublime_plugin                                                           # EXECUTABLE_DIR/Lib/python313/sublime_plugin.py

import typing                                                                   # https://docs.python.org/3.13/library/typing.html


PKG_NAME : typing.Final[str] = str(__package__).split('.')[0]


def status_msg(msg:str) -> None:

    sublime.status_message(f'{PKG_NAME}: {msg}')


class RestructuredtextEncapsulateLiteralCommand(sublime_plugin.TextCommand):
    """
    If (conditions applied in keymap):
    - we are in a reStructuredText source file, and
    - all selections have some text selected

    then wrap the selected text like this:

        ``selected text``
    """
    @typing.override
    def run(self, edit:sublime.Edit) -> None:
        sel_list : sublime.Selection = self.view.sel()

        # Replace each selection with edited string.
        for rgn in reversed(sel_list):
            selected_text : str = self.view.substr(rgn)
            new_text : str = '``' + selected_text + '``'
            self.view.replace(edit, rgn, new_text)

        # De-select each selection, leaving cursor on right edge of its
        # previous selection.  This avoids the danger of a stray keystroke
        # wiping out the new text.
        for i, rgn in enumerate(sel_list):
            del sel_list[i]
            sel_list.add(sublime.Region(rgn.end()))

        status_msg("Made all selections a literal command.")


class RestructuredtextEncapsulateInterpretedTextRoleCommand(sublime_plugin.TextCommand):
    """
    If (conditions applied in keymap):
    - we are in a reStructuredText source file, and
    - all selections have some text selected

    then wrap the selected text like this:

        :role_name:`selected text`
    """
    @typing.override
    def run(self, edit:sublime.Edit, role_name:str) -> None:
        sel_list : sublime.Selection = self.view.sel()

        # Replace each selection with edited string.
        for rgn in reversed(sel_list):
            selected_text : str = self.view.substr(rgn)
            new_text : str = f':{role_name}:`{selected_text}`'
            self.view.replace(edit, rgn, new_text)

        # De-select each selection, leaving cursor on right edge of its
        # previous selection.  This avoids the danger of a stray keystroke
        # wiping out the new text.
        for i, rgn in enumerate(sel_list):
            del sel_list[i]
            sel_list.add(sublime.Region(rgn.end()))

        status_msg("Made all selections an interpreted text role.")
