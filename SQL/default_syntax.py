from __future__ import annotations
import re

import sublime
import sublime_plugin

from pathlib import Path


class DialectFileInputHandler(sublime_plugin.ListInputHandler):
    def __init__(self, default_syntax: sublime.Syntax, dialect_files: list[str]):
        super().__init__()
        self.default_syntax = default_syntax
        self.dialect_files = dialect_files

    def placeholder(self) -> str:
        return "Choose the dialect to use as default syntax."

    def list_items(self) -> list[sublime.ListInputItem]:
        match = re.search(
            r"^extends:\s+(?:-\s+)?(Packages/.+)",
            sublime.load_resource(self.default_syntax.path),
            flags=re.MULTILINE,
        )
        selected_syntax = sublime.syntax_from_path(match.group(1)) if match else None
        selected_kind = (sublime.KindId.AMBIGUOUS, "✓", "Selected")

        items = []
        for dialect_file in self.dialect_files:
            syntax = sublime.syntax_from_path(dialect_file)
            if not syntax:
                continue
            if syntax == self.default_syntax:
                continue
            items.append(
                sublime.ListInputItem(
                    text=syntax.name,
                    value=syntax.path,
                    kind=selected_kind
                    if syntax == selected_syntax
                    else sublime.KIND_AMBIGUOUS,
                )
            )
        return items


class SqlSetDefaultSyntaxCommand(sublime_plugin.WindowCommand):
    """
    This class implements the `sql_set_default_syntax` command.

    This command manipulates a syntax file (e.g.: SQL.sublime-syntax) to make
    it point to a desired dialect (e.g.: MySQL.sublime-syntax). As a result
    the dialect is used whenever the default syntax's scope (e.g.: `source.sql`)
    is addressed. This way it is possible to specify the syntax to use in
    embedded code blocks.

    Usage:
    ======

    .. code-block:: json
        {
            "caption": "SQL: Set Default Syntax",
            "command": "sql_set_default_syntax",
            "args": {
                "syntax_file": "Packages/SQL/SQL.sublime-syntax",
                "dialect_file": [
                    "Packages/SQL/Cassandra.sublime-syntax",
                    "Packages/SQL/MySQL.sublime-syntax",
                    "Packages/SQL/PostgreSQL.sublime-syntax",
                    "Packages/SQL/TSQL.sublime-syntax"
                ]
            }
        }
    """

    def input(self, args: dict[str, str]) -> DialectFileInputHandler | None:
        dialect_files = args.get("dialect_file")
        if isinstance(dialect_files, list):
            syntax_file = sublime.syntax_from_path(args.get("syntax_file", ""))
            if syntax_file:
                return DialectFileInputHandler(syntax_file, dialect_files)
        return None

    def input_description(self) -> str:
        return "Syntax:"

    def run(self, syntax_file: str, dialect_file: str) -> None:
        # validate target syntax
        default_syntax = sublime.syntax_from_path(syntax_file)
        if not default_syntax:
            sublime.error_message(f'Error: "{syntax_file}" is no valid target syntax!')
            return

        # validate dialect syntax
        dialect_syntax = sublime.syntax_from_path(dialect_file)
        if not dialect_syntax:
            sublime.error_message(f'Error: "{dialect_file}" is no valid syntax!')
            return

        # open existing target syntax and replace `extends:` value with dialect syntax
        old_content = sublime.load_resource(default_syntax.path)
        new_content = re.sub(
            r"(^extends:\s+(?:-\s+)?)Packages/.+",
            rf"\1{dialect_syntax.path}",
            old_content,
            flags=re.MULTILINE,
        )
        # don't touch syntax file if content is unchanged in order to
        # avoid re-indexing all open files and folders
        if old_content == new_content:
            return

        # write modified default syntax to extracted Packages path
        with open(
            file=Path(sublime.packages_path()).parent / default_syntax.path,
            mode="w",
            encoding="utf-8",
            newline="\n",
        ) as out:
            out.write(new_content)
