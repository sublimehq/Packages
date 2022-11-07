from __future__ import annotations

import sublime
import sublime_plugin

import re
import timeit

from functools import cached_property, wraps

from . import completions

import typing
if typing.TYPE_CHECKING:
    import sublime_types

__all__ = ['CSSCompletions']

KIND_CSS_PROPERTY: sublime_types.Kind = (sublime.KIND_ID_KEYWORD, "p", "property")
KIND_CSS_FUNCTION: sublime_types.Kind = (sublime.KIND_ID_FUNCTION, "f", "function")
KIND_CSS_CONSTANT: sublime_types.Kind = (sublime.KIND_ID_VARIABLE, "c", "constant")

ENABLE_TIMING: bool = False


def timing(func):
    @wraps(func)
    def wrap(*args, **kw):
        if ENABLE_TIMING:
            ts: float = timeit.default_timer()
        result = func(*args, **kw)
        if ENABLE_TIMING:
            te: float = timeit.default_timer()
            print(f"{func.__name__}({args}, {kw}) took: {1000.0 * (te - ts):2.3f} ms")
        return result
    return wrap


def match_selector(
    view: sublime.View,
    pt: sublime_types.Point,
    scope: str
) -> bool:
    # This will catch scenarios like:
    # - .foo {font-style: |}
    # - <style type="text/css">.foo { font-weight: b|</style>
    return any(view.match_selector(p, scope) for p in (pt, pt - 1))


def next_none_whitespace(
    view: sublime.View,
    pt: sublime_types.Point
) -> typing.Union[str, None]:
    for pt in range(pt, view.size()):
        ch: str = view.substr(pt)
        if ch not in ' \t':
            return ch


class CSSCompletions(sublime_plugin.EventListener):

    @cached_property
    def func_args(self):
        return completions.get_func_args()

    @cached_property
    def props(self):
        return completions.get_properties()

    @cached_property
    def re_name(self):
        return re.compile(r"([a-zA-Z-]+)\s*:[^:;{}]*$")

    @cached_property
    def re_value(self):
        return re.compile(r"^(?:\s*(:)|([ \t]*))([^:]*)([;}])")

    @timing
    def on_query_completions(
        self,
        view: sublime.View,
        prefix: str,
        locations: typing.List[sublime_types.Point]
    ) -> typing.Union[None, typing.List[sublime_types.CompletionValue], typing.Tuple[typing.List[sublime_types.CompletionValue], sublime.AutoCompleteFlags], sublime.CompletionList]:

        settings: sublime.Settings = sublime.load_settings('CSS.sublime-settings')
        if settings.get('disable_default_completions'):
            return None

        selector: str = settings.get('default_completions_selector', '')
        if isinstance(selector, list):
            selector = ''.join(selector)

        pt: sublime_types.Point = locations[0]
        if not match_selector(view, pt, selector):
            return None

        if match_selector(view, pt, "meta.property-value.css meta.function-call.arguments"):
            items = self.complete_function_argument(view, prefix, pt)
        elif view.match_selector(pt - 1, "meta.property-value.css, punctuation.separator.key-value"):
            items = self.complete_property_value(view, prefix, pt)
        elif view.match_selector(pt - 1, "meta.property-name.css, meta.property-list.css - meta.selector"):
            items = self.complete_property_name(view, prefix, pt)
        else:
            # TODO: provide selectors, at-rules
            items = None

        if items:
            return sublime.CompletionList(items, sublime.INHIBIT_WORD_COMPLETIONS)
        return None

    def complete_property_name(
        self,
        view: sublime.View,
        prefix: str,
        pt: sublime_types.Point
    ):
        text: str = view.substr(sublime.Region(pt, view.line(pt).end()))
        matches = self.re_value.search(text)
        if matches:
            colon, space, value, term = matches.groups()
        else:
            colon = ""
            space = ""
            value = ""
            term = ""

        # don't append anything if next character is a colon
        suffix: str = ""
        if not colon:
            # add space after colon if smart typing is enabled
            if not space and view.settings().get("auto_complete_trailing_spaces"):
                suffix = ": $0"
            else:
                suffix = ":$0"

            # terminate empty value if not within parentheses
            if not value and not term and not match_selector(view, pt, "meta.group"):
                suffix += ";"

        return (
            sublime.CompletionItem(
                trigger=prop,
                completion=prop + suffix,
                completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                kind=KIND_CSS_PROPERTY
            ) for prop in self.props
        )

    def complete_property_value(
        self,
        view: sublime.View,
        prefix: str,
        pt: sublime_types.Point
    ):
        completions = [
            sublime.CompletionItem(
                trigger="!important",
                completion_format=sublime.COMPLETION_FORMAT_TEXT,
                kind=sublime.KIND_KEYWORD,
                details="override any other declaration"
            )
        ]
        text: str = view.substr(sublime.Region(view.line(pt).begin(), pt - len(prefix)))
        matches = self.re_name.search(text)
        if matches:
            prop = matches.group(1)
            values = self.props.get(prop)
            if values:
                details: str = f"<code>{prop}</code> property-value"

                if match_selector(view, pt, "meta.group") or next_none_whitespace(view, pt) == ";":
                    suffix: str = ""
                else:
                    suffix: str = "$0;"

                for value in values:
                    if isinstance(value, list):
                        desc, snippet = value
                        kind: sublime_types.Kind = KIND_CSS_FUNCTION
                    else:
                        desc = value
                        snippet = value
                        kind: sublime_types.Kind = KIND_CSS_CONSTANT

                    completions.append(sublime.CompletionItem(
                        trigger=desc,
                        completion=snippet + suffix,
                        completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                        kind=kind,
                        details=details
                    ))

        return completions

    def complete_function_argument(
        self,
        view: sublime.View,
        prefix: str,
        pt: sublime_types.Point
    ) -> typing.Union[typing.List[sublime.CompletionItem], None]:
        func_name: str = ""
        nest_level: int = 1
        # Look for the beginning of the current function call's arguments list,
        # while ignoring any nested function call or group.
        for i in range(pt - 1, pt - 32 * 1024, -1):
            ch: str = view.substr(i)
            # end of nested arguments list or group before caret
            if ch == ")" and not view.match_selector(i, "string, comment"):
                nest_level += 1
                continue
            # begin of maybe nested arguments list or group before caret
            if ch == "(" and not view.match_selector(i, "string, comment"):
                nest_level -= 1
                # Stop, if nesting level drops below start value as this indicates the
                # beginning of the arguments list the function name is of interest for.
                if nest_level <= 0:
                    func_name: str = view.substr(view.expand_by_class(
                        i - 1, sublime.CLASS_WORD_START | sublime.CLASS_WORD_END))
                    break

        if func_name == "var":
            return [
                sublime.CompletionItem(
                    trigger=symbol,
                    completion_format=sublime.COMPLETION_FORMAT_TEXT,
                    kind=sublime.KIND_VARIABLE,
                    details="var() argument"
                )
                for symbol in set(
                    view.substr(symbol_region)
                    for symbol_region in view.find_by_selector("entity.other.custom-property")
                )
                if not prefix or symbol.startswith(prefix)
            ]

        args = self.func_args.get(func_name)
        if not args:
            return None

        completions = []
        details = f"{func_name}() argument"
        for arg in args:
            if isinstance(arg, list):
                completions.append(sublime.CompletionItem(
                    trigger=arg[0],
                    completion=arg[1],
                    completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                    kind=KIND_CSS_FUNCTION,
                    details=details
                ))
            else:
                completions.append(sublime.CompletionItem(
                    trigger=arg,
                    completion_format=sublime.COMPLETION_FORMAT_TEXT,
                    kind=KIND_CSS_CONSTANT,
                    details=details
                ))

        return completions
