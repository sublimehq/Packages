import re
import sublime
import sublime_plugin
import timeit

from functools import cached_property, wraps

from . import completions

__all__ = ['CSSCompletions']

KIND_CSS_PROPERTY = (sublime.KIND_ID_KEYWORD, "p", "property")
KIND_CSS_FUNCTION = (sublime.KIND_ID_FUNCTION, "f", "function")
KIND_CSS_CONSTANT = (sublime.KIND_ID_VARIABLE, "c", "constant")

ENABLE_TIMING = False


def timing(func):
    @wraps(func)
    def wrap(*args, **kw):
        if ENABLE_TIMING:
            ts = timeit.default_timer()
        result = func(*args, **kw)
        if ENABLE_TIMING:
            te = timeit.default_timer()
            print(f"{func.__name__}({args}, {kw}) took: {1000.0 * (te - ts):2.3f} ms")
        return result
    return wrap


def match_selector(view, pt, scope):
    # This will catch scenarios like:
    # - .foo {font-style: |}
    # - <style type="text/css">.foo { font-weight: b|</style>
    return any(view.match_selector(p, scope) for p in (pt, pt - 1))


def next_none_whitespace(view, pt):
    for pt in range(pt, view.size()):
        ch = view.substr(pt)
        if ch not in ' \t':
            return ch


class CSSCompletions(sublime_plugin.EventListener):
    @cached_property
    def props(self):
        return completions.properties.get_properties()

    @cached_property
    def re_name(self):
        return re.compile(r"([a-zA-Z-]+)\s*:[^:;{}]*$")

    @cached_property
    def re_value(self):
        return re.compile(r"^(?:\s*(:)|([ \t]*))([^:]*)([;}])")

    @timing
    def on_query_completions(self, view, prefix, locations):

        settings = sublime.load_settings('CSS.sublime-settings')
        if settings.get('disable_default_completions'):
            return None

        selector = settings.get('default_completions_selector', '')
        if isinstance(selector, list):
            selector = ''.join(selector)

        pt = locations[0]
        if not match_selector(view, pt, selector):
            return None

        if match_selector(view, pt, "meta.property-value.css meta.function-call"):
            items = self.complete_function_argument(view, prefix, pt)
        elif match_selector(view, pt, "meta.property-value.css"):
            items = self.complete_property_value(view, prefix, pt)
        elif match_selector(view, pt, "meta.property-list.css, meta.property-name.css"):
            items = self.complete_property_name(view, prefix, pt)
        else:
            # TODO: provide selectors, at-rules
            items = None

        if items:
            return sublime.CompletionList(items, sublime.INHIBIT_WORD_COMPLETIONS)
        return None

    def complete_property_name(self, view, prefix, pt):
        if match_selector(view, pt, "meta.group"):
            # don't append semicolon in groups e.g.: `@media screen (prop: |)`
            suffix = ": $0"
        else:
            suffix = ": $0;"
        text = view.substr(sublime.Region(pt, view.line(pt).end()))
        matches = self.re_value.search(text)
        if matches:
            colon, space, value, term = matches.groups()
            if colon:
                # don't append anything if the next character is a colon
                suffix = ""
            elif value:
                # only append colon if value already exists
                suffix = ":" if space else ": "
            elif term == ";":
                # ommit semicolon if rule is already terminated
                suffix = ": $0"

        return (
            sublime.CompletionItem(
                trigger=prop,
                completion=prop + suffix,
                completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                kind=KIND_CSS_PROPERTY
            ) for prop in self.props
        )

    def complete_property_value(self, view, prefix, pt):
        completions = []
        text = view.substr(sublime.Region(view.line(pt).begin(), pt - len(prefix)))
        matches = self.re_name.search(text)
        if matches:
            prop = matches.group(1)
            values = self.props.get(prop)
            if values:
                details = f"<code>{prop}</code> property-value"

                if match_selector(view, pt, "meta.group"):
                    # don't append semicolon in groups e.g.: `@media screen (prop: val)`
                    suffix = ""
                elif next_none_whitespace(view, pt) == ";":
                    suffix = ""
                else:
                    suffix = "$0;"

                for value in values:
                    if isinstance(value, list):
                        desc, snippet = value
                        kind = KIND_CSS_FUNCTION
                    else:
                        desc = value
                        snippet = value
                        kind = KIND_CSS_CONSTANT

                    completions.append(sublime.CompletionItem(
                        trigger=desc,
                        completion=snippet + suffix,
                        completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                        kind=kind,
                        details=details
                    ))

        return completions

    def complete_function_argument(self, view, prefix, pt):
        return None
