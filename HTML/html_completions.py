import html
import html.entities
import re

import sublime
import sublime_plugin
import timeit

from functools import cached_property, wraps

__all__ = ['HtmlTagCompletions']

KIND_ENTITY_MARKUP = (sublime.KIND_ID_MARKUP, 'e', 'Entity')
KIND_ENTITY_SNIPPET = (sublime.KIND_ID_SNIPPET, 'e', 'Entity')
KIND_ATTRIBUTE_SNIPPET = (sublime.KIND_ID_SNIPPET, 'a', 'Attribute')
KIND_TAG_MARKUP = (sublime.KIND_ID_MARKUP, 't', 'Tag')

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


def match(pattern, string):
    match = pattern.match(string)
    if match:
        return match.group(0)
    else:
        return None


def get_entity_completions():
    """
    Generate a completion list for HTML entities.
    """

    return sublime.CompletionList(
        [
            sublime.CompletionItem(
                trigger='#00;',
                completion='#${1:00};',
                completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                kind=KIND_ENTITY_SNIPPET,
                details='Base-10 Unicode character',
            ),
            sublime.CompletionItem(
                trigger='#x0000;',
                completion='#x${1:0000};',
                completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                kind=KIND_ENTITY_SNIPPET,
                details='Base-16 Unicode character',
            ),
            *(
                sublime.CompletionItem(
                    trigger=entity,
                    annotation=printed,
                    completion=entity,
                    completion_format=sublime.COMPLETION_FORMAT_TEXT,
                    kind=KIND_ENTITY_MARKUP,
                    details=f'Renders as <code>{printed}</code>',
                )
                for entity, printed in html.entities.html5.items()
                if entity.endswith(';')
            )
        ],
        sublime.INHIBIT_WORD_COMPLETIONS
    )


def get_tag_completions(inside_tag=True):
    """
    Generate a default completion list for HTML
    """

    normal_tags = (
        'abbr', 'acronym', 'address', 'applet', 'article', 'aside',
        'audio', 'b', 'basefont', 'bdi', 'bdo', 'big', 'blockquote',
        'body', 'button', 'center', 'canvas', 'caption', 'cdata',
        'cite', 'colgroup', 'code', 'content', 'data', 'datalist', 'dialog',
        'dir', 'div', 'dd', 'del', 'details', 'dfn', 'dl', 'dt', 'element',
        'em', 'embed', 'fieldset', 'figure', 'figcaption', 'font', 'footer',
        'form', 'frame', 'frameset', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'head',
        'header', 'hgroup', 'i', 'ins', 'isindex', 'kbd', 'keygen',
        'li', 'label', 'legend', 'main', 'map', 'mark', 'meter',
        'nav', 'noframes', 'noscript', 'object', 'ol', 'optgroup',
        'option', 'output', 'p', 'picture', 'pre', 'q', 'rb', 'rp',
        'rt', 'rtc', 'ruby', 's', 'samp', 'section', 'select', 'shadow',
        'small', 'span', 'strong', 'sub', 'summary', 'sup',
        'table', 'tbody', 'td', 'template', 'textarea', 'tfoot', 'th',
        'thead', 'time', 'title', 'tr', 'tt', 'u', 'ul', 'var',
        'video'
    )
    snippet_tags = (
        ('a', 'a href=\"$1\">$0</a>'),
        ('area', 'area shape=\"$1\" coords=\"$2\" href=\"$3\">'),
        ('audio', 'audio src=\"$1\">$0</audio>'),
        ('base', 'base href=\"$1\">'),
        ('br', 'br>'),
        ('col', 'col>'),
        ('hr', 'hr>'),
        ('iframe', 'iframe src=\"$1\">$0</iframe>'),
        ('input', 'input type=\"$1\" name=\"$2\">'),
        ('img', 'img src=\"$1\">'),
        ('link', 'link rel=\"stylesheet\" type=\"text/css\" href=\"$1\">'),
        ('meta', 'meta ${1:charset=\"utf-8\"}>'),
        ('param', 'param name=\"$1\" value=\"$2\">'),
        ('progress', 'progress value=\"$1\" max=\"$2\">'),
        ('script', 'script${2: type=\"${1:text/javascript}\"}>$0</script>'),
        ('slot', 'slot name=name=\"$1\">$0</slot>'),
        ('source', 'source src=\"$1\" type=\"$2\">'),
        ('style', 'style type=\"${1:text/css}\">$0</style>'),
        ('track', 'track kind=\"$1\" src=\"$2\">'),
        ('wbr', 'wbr>'),
        ('video', 'video src=\"$1\">$0</video>')
    )

    tag_begin = '' if inside_tag else '<'

    return sublime.CompletionList(
        [
            *(
                sublime.CompletionItem(
                    trigger=tag,
                    completion=f'{tag_begin}{tag}>$0</{tag}>',
                    completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                    kind=KIND_TAG_MARKUP,
                    details=f'Expands to <code>&lt;{tag}&gt;$0&lt;/{tag}&gt;</code>'
                )
                for tag in normal_tags
            ),
            *(
                sublime.CompletionItem(
                    trigger=tag,
                    completion=f'{tag_begin}{completion}',
                    completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                    kind=KIND_TAG_MARKUP,
                    details=f'Expands to <code>&lt;{html.escape(completion)}</code>'
                )
                for tag, completion in snippet_tags
            )
        ],
        sublime.INHIBIT_WORD_COMPLETIONS
    )


def get_tag_attributes():
    """
    Returns a dictionary with attributes accociated to tags
    This assumes that all tags can have global attributes as per MDN:
    https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes
    """

    # Map tags to specific attributes applicable for that tag
    tag_attr_dict = {
        'a': [
            'charset', 'coords', 'download', 'href', 'hreflang', 'media',
            'name', 'ping', 'rel', 'rev', 'shape', 'target', 'type'
        ],
        'abbr': ['title'],
        'address': [],
        'applet': [
            'align', 'alt', 'archive', 'code', 'codebase', 'height', 'hspace',
            'name', 'object', 'vspace', 'width'
        ],
        'area': [
            'alt', 'coords', 'download', 'href', 'hreflang', 'media',
            'nohref', 'rel', 'shape', 'target'
        ],
        'article': [],
        'aside': [],
        'audio': [
            'autoplay', 'buffered', 'controls', 'loop', 'muted', 'played',
            'preload', 'src', 'volume'
        ],
        'b': [],
        'base': ['href', 'target'],
        'basefont': ['color', 'face', 'size'],
        'bdi': [],
        'bdo': [],
        'blockquote': ['cite'],
        'body': [
            'alink', 'background', 'bgcolor', 'link', 'onafterprint',
            'onbeforeprint', 'onbeforeunload', 'onhashchange', 'onmessage',
            'onoffline', 'ononline', 'onpopstate', 'onredo', 'onstorage',
            'onundo', 'onunload', 'text', 'vlink'
        ],
        'br': ['clear'],
        'button': [
            'autofocus', 'disabled', 'form', 'formaction', 'formenctype',
            'formmethod', 'formnovalidate', 'formtarget', 'name', 'type',
            'value'
        ],
        'canvas': ['height', 'width'],
        'caption': ['align'],
        'cite': [],
        'code': [],
        'col': ['align', 'char', 'charoff', 'span', 'valign', 'width'],
        'colgroup': ['align', 'char', 'charoff', 'span', 'valign', 'width'],
        'content': ['select'],
        'data': ['value'],
        'datalist': [],
        'dd': [],
        'del': ['cite', 'datetime'],
        'details': ['open'],
        'dfn': [],
        'dialog': ['open'],
        'dir': ['compact'],
        'div': ['align'],
        'dl': ['compact'],
        'dt': [],
        'element': [],
        'em': [],
        'embed': ['height', 'src', 'type', 'width'],
        'fieldset': ['disabled', 'form', 'name'],
        'figcaption': [],
        'figure': [],
        'font': ['color', 'face', 'size'],
        'footer': [],
        'form': [
            'accept-charset', 'accept', 'action', 'autocomplete', 'enctype',
            'method', 'name', 'novalidate', 'target'
        ],
        'frame': [
            'frameborder', 'longdesc', 'marginheight', 'marginwidth', 'name',
            'noresize', 'scrolling', 'src'
        ],
        'frameset': ['cols', 'onunload', 'rows'],
        'h1': ['align'],
        'h2': ['align'],
        'h3': ['align'],
        'h4': ['align'],
        'h5': ['align'],
        'h6': ['align'],
        'head': ['profile'],
        'header': [],
        'hgroup': [],
        'hr': ['align', 'noshade', 'size', 'width'],
        'html': ['manifest', 'version', 'xmlns'],
        'i': [],
        'iframe': [
            'align', 'frameborder', 'height', 'longdesc', 'marginheight',
            'marginwidth', 'name', 'sandbox', 'scrolling', 'seamless', 'src',
            'srcdoc', 'width'
        ],
        'img': [
            'align', 'alt', 'border', 'crossorigin', 'height', 'hspace',
            'ismap', 'longdesc', 'name', 'sizes', 'src', 'srcset', 'usemap',
            'vspace', 'width'
        ],
        'input': [
            'accept', 'align', 'alt', 'autocomplete', 'autofocus', 'autosave',
            'checked', 'disabled', 'form', 'formaction', 'formenctype',
            'formmethod', 'formnovalidate', 'formtarget', 'height',
            'inputmode', 'ismap', 'list', 'max', 'maxlength', 'min',
            'minlength', 'multiple', 'name', 'pattern', 'placeholder',
            'readonly', 'required', 'selectionDirection', 'size',
            'spellcheck', 'src', 'step', 'tabindex', 'type', 'usemap',
            'value', 'width'
        ],
        'ins': ['cite', 'datetime'],
        'isindex': ['prompt'],
        'kbd': [],
        'keygen': [
            'autofocus', 'challenge', 'disabled', 'form', 'keytype', 'name'
        ],
        'label': ['for', 'form'],
        'legend': [],
        'li': ['type', 'value'],
        'link': [
            'charset', 'crossorigin', 'href', 'hreflang', 'media', 'rel',
            'rev', 'sizes', 'target', 'type'
        ],
        'main': [],
        'map': ['name'],
        'mark': [],
        'menu': ['compact'],
        'meta': ['charset', 'content', 'http-equiv', 'name', 'scheme'],
        'meter': ['value', 'min', 'max', 'low', 'high', 'optimum', 'form'],
        'nav': [],
        'noframes': [],
        'noscript': [],
        'object': [
            'align', 'archive', 'border', 'classid', 'codebase', 'codetype',
            'data', 'declare', 'form', 'height', 'hspace', 'name', 'standby',
            'type', 'typemustmatch', 'usemap', 'vspace', 'width'
        ],
        'ol': ['compact', 'reversed', 'start', 'type'],
        'optgroup': ['disabled', 'label'],
        'option': ['disabled', 'label', 'selected', 'value'],
        'output': ['for', 'form', 'name'],
        'p': ['align'],
        'param': ['name', 'type', 'value', 'valuetype'],
        'picture': [],
        'pre': ['width'],
        'progress': ['max', 'value'],
        'q': ['cite'],
        'rb': [],
        'rp': [],
        'rt': [],
        'rtc': [],
        's': [],
        'samp': [],
        'script': ['async', 'charset', 'defer', 'language', 'src', 'type'],
        'section': [],
        'select': [
            'autofocus', 'disabled', 'form', 'multiple', 'name', 'required',
            'size'
        ],
        'shadow': [],
        'slot': [],
        'small': [],
        'source': ['src', 'type'],
        'span': [],
        'strong': [],
        'style': ['disabled', 'media', 'scoped', 'title', 'type'],
        'sub': [],
        'summary': [],
        'sup': [],
        'table': [
            'align', 'bgcolor', 'border', 'cellpadding', 'cellspacing',
            'frame', 'rules', 'summary', 'width'
        ],
        'tbody': ['align', 'char', 'charoff', 'valign'],
        'td': [
            'abbr', 'align', 'axis', 'bgcolor', 'char', 'charoff', 'colspan',
            'headers', 'height', 'nowrap', 'rowspan', 'scope', 'valign',
            'width'
        ],
        'template': ['content'],
        'textarea': [
            'autocomplete', 'autofocus', 'cols', 'disabled', 'form',
            'maxlength', 'minlength', 'name', 'placeholder', 'readonly',
            'required', 'rows', 'selectionDirection', 'selectionEnd',
            'selectionStart', 'spellcheck', 'wrap'
        ],
        'tfoot': ['align', 'char', 'charoff', 'valign'],
        'th': [
            'abbr', 'align', 'axis', 'bgcolor', 'char', 'charoff', 'colspan',
            'headers', 'height', 'nowrap', 'rowspan', 'scope', 'valign',
            'width'
        ],
        'thead': ['align', 'char', 'charoff', 'valign'],
        'time': ['datetime'],
        'title': [],
        'tr': ['align', 'bgcolor', 'char', 'charoff', 'valign'],
        'track': ['default', 'kind', 'label', 'src', 'srclang'],
        'u': [],
        'ul': ['compact', 'type'],
        'var': [],
        'video': [
            'autoplay', 'autobuffer', 'buffered', 'controls', 'crossorigin',
            'height', 'loop', 'muted', 'played', 'preload', 'poster', 'src',
            'width'
        ],
        'wbr': []
    }

    # Assume that global attributes are common to all HTML elements
    global_attributes = (
        'accesskey', 'class', 'contenteditable', 'contextmenu', 'dir',
        'hidden', 'id', 'lang', 'style', 'tabindex', 'title', 'translate'

        # event handler attributes
        'onabort', 'onautocomplete', 'onautocompleteerror', 'onauxclick',
        'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange',
        'onclick', 'onclose', 'oncontextmenu', 'oncuechange', 'ondblclick',
        'ondrag', 'ondragend', 'ondragenter', 'ondragexit', 'ondragleave',
        'ondragover', 'ondragstart', 'ondrop', 'ondurationchange',
        'onemptied', 'onended', 'onerror', 'onfocus', 'oninput', 'oninvalid',
        'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata',
        'onloadedmetadata', 'onloadstart', 'onmousedown', 'onmouseenter',
        'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover',
        'onmouseup', 'onmousewheel', 'onpause', 'onplay', 'onplaying',
        'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll',
        'onseeked', 'onseeking', 'onselect', 'onshow', 'onsort', 'onstalled',
        'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onvolumechange',
        'onwaiting'
    )

    for attributes in tag_attr_dict.values():
        attributes.extend(global_attributes)

    # Remove `dir` attribute from `bdi` key, because it is *not* inherited
    # from the global attributes
    tag_attr_dict['bdi'].remove('dir')

    return tag_attr_dict


class HtmlTagCompletions(sublime_plugin.EventListener):
    """
    Provide tag completions for HTML
    """

    @cached_property
    def entity_completions(self):
        return get_entity_completions()

    @cached_property
    def tag_attributes(self):
        return get_tag_attributes()

    @cached_property
    def tag_appreviations(self):
        return get_tag_completions(inside_tag=False)

    @cached_property
    def tag_completions(self):
        return get_tag_completions(inside_tag=True)

    @cached_property
    def tag_name_completions(self):
        """
        Create a completion list with all known tag names.

        It uses the keys of `self.tag_attributes` dictionary as it contains
        all known/supported tag names and is available/cached anyway.
        """
        return sublime.CompletionList(
            [
                sublime.CompletionItem(
                    trigger=tag,
                    completion_format=sublime.COMPLETION_FORMAT_TEXT,
                    kind=KIND_TAG_MARKUP,
                    details=f'Expands to <code>{html.escape(tag)}</code>'
                )
                for tag in self.tag_attributes
            ],
            sublime.INHIBIT_WORD_COMPLETIONS
        )

    @timing
    def on_query_completions(self, view, prefix, locations):

        def match_selector(selector):
            return view.match_selector(locations[0], selector)

        # Only trigger within HTML
        if not match_selector(
            "text.html"
            # disable in embedded script/css code
            " - (source - source text.html) - meta.string"
            # disable in markdown but not fenced code blocks
            " - (text.html.markdown - text.html text.html)"
        ):
            return None

        pt = locations[0] - len(prefix) - 1
        ch = view.substr(sublime.Region(pt, pt + 1))

        if ch == '&':
            return self.entity_completions

        if ch == '<':
            # If the caret is in front of `>` complete only tag names.
            # see: https://github.com/sublimehq/sublime_text/issues/3508
            ch = view.substr(sublime.Region(locations[0], locations[0] + 1))
            if ch == '>':
                return self.tag_name_completions
            return self.tag_completions

        # Note: Exclude opening punctuation to enable appreviations
        #       if the caret is located directly in front of a html tag.
        if match_selector("text.html meta.tag - punctuation.definition.tag.begin"):
            if ch in ' \f\n\t':
                return self.attribute_completions(view, locations[0], prefix)
            return None

        # Expand tag and attribute appreviations
        return self.expand_tag_attributes(view, locations) or self.tag_appreviations

    def expand_tag_attributes(self, view, locations):
        """
        The method responds to on_query_completions, but conceptually it's
        expanding expressions, rather than completing words.

        It expands these simple expressions:

            tag.class -> <tag class="class"></tag>
            tag#id    -> <tag id="id"></tag>
        """

        # Get the contents of each line, from the beginning of the line to
        # each point
        lines = [
            view.substr(sublime.Region(view.line(pt).a, pt))
            for pt in locations
        ]

        # Reverse the contents of each line, to simulate having the regex
        # match backwards
        lines = [line[::-1] for line in lines]

        # Check the first location looks like an expression
        pattern = re.compile(r"([-\w]+)([.#])(\w+)")
        expr = match(pattern, lines[0])
        if not expr:
            return None

        # Ensure that all other lines have identical expressions
        for line in lines[1:]:
            ex = match(pattern, line)
            if ex != expr:
                return None

        # Return the completions
        arg, op, tag = pattern.match(expr).groups()

        arg = arg[::-1]
        tag = tag[::-1]
        expr = expr[::-1]

        attr = 'class' if op == '.' else 'id'
        snippet = f'<{tag} {attr}=\"{arg}\">$0</{tag}>'

        return sublime.CompletionList(
            [
                sublime.CompletionItem(
                    trigger=expr,
                    completion=snippet,
                    completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                    kind=KIND_TAG_MARKUP,
                    details=f'Expands to <code>{html.escape(snippet)}</code>'
                )
            ],
            sublime.INHIBIT_WORD_COMPLETIONS
        )

    def attribute_completions(self, view, pt, prefix):
        SEARCH_LIMIT = 500
        search_start = max(0, pt - SEARCH_LIMIT - len(prefix))
        line = view.substr(sublime.Region(search_start, pt + SEARCH_LIMIT))

        line_head = line[0:pt - search_start]
        line_tail = line[pt - search_start:]

        # find the tag from end of line_head
        i = len(line_head) - 1
        tag = None
        space_index = len(line_head)
        while i >= 0:
            c = line_head[i]
            if c == '<':
                # found the open tag
                tag = line_head[i + 1:space_index]
                break
            elif c == ' ':
                space_index = i
            i -= 1

        # check that this tag looks valid
        if not tag or not tag.isalnum():
            return None

        # determines whether we need to close the tag
        # default to closing the tag
        suffix = '>'

        for c in line_tail:
            if c == '>':
                # found end tag
                suffix = ''
                break
            elif c == '<':
                # found another open tag, need to close this one
                break

        if suffix == '' and line_tail[0] not in ' >':
            # add a space if not there
            suffix = ' '

        # got the tag, now find all attributes that match
        return sublime.CompletionList(
            [
                sublime.CompletionItem(
                    trigger=attr,
                    completion=f'{attr}="$1"{suffix}',
                    completion_format=sublime.COMPLETION_FORMAT_SNIPPET,
                    kind=KIND_ATTRIBUTE_SNIPPET
                )
                for attr in self.tag_attributes.get(tag, [])
            ],
            sublime.INHIBIT_WORD_COMPLETIONS
        )
