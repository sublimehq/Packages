import re
import sublime
import sublime_plugin
import timeit

from functools import cached_property, wraps

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


def get_common_values():
    common_values = {
        'animation-direction': [
            'alternate', 'alternate-reverse', 'normal', 'reverse'
        ],
        'absolute-size': [
            'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'
        ],
        'absolute-weight': [
            '100', '200', '300', '400', '500', '600', '700', '800', '900',
            'normal', 'bold'
        ],
        'basic-shape': [
            ['circle()', 'circle($1)'],
            ['ellipse()', 'ellipse($1)'],
            ['inset()', 'inset($1)'],
            ['polygon()', 'polygon($1)']
        ],
        'blend-mode': [
            'normal', 'multiply', 'screen', 'overlay', 'darken', 'lighten',
            'color-dodge', 'color-burn', 'hard-light', 'soft-light', 'difference',
            'exclusion', 'hue', 'saturation', 'color', 'luminosity'
        ],
        'border-style': [
            'none', 'hidden', 'dotted', 'dashed', 'solid', 'double',
            'groove', 'ridge', 'inset', 'outset'
        ],
        'border-width': ['thin', 'medium', 'thick'],
        'break-before-after': [
            'always', 'left', 'right', 'recto', 'verso', 'page', 'column', 'region'
        ],
        'break-inside': [
            'auto', 'avoid', 'avoid-page', 'avoid-column', 'avoid-region'
        ],
        'calc': [
            ['calc()', 'calc($1)'],
            ['clamp()', 'clamp(${1:0}, ${2:0}, ${3:0})'],
            ['max()', 'max(${1:0}, ${2:0})'],
            ['min()', 'min(${1:0}, ${2:0})']
        ],
        'color': [
            'currentColor',
            'transparent',
            ['rgb()', 'rgb(${1:0}, ${2:0}, ${3:0})'],
            ['rgba()', 'rgba(${1:0}, ${2:0}, ${3:0}, ${4:1.0})'],
            ['hsl()', 'hsl(${1:0}, ${2:100%}, ${3:50%})'],
            ['hsla()', 'hsla(${1:0}, ${2:100%}, ${3:50%}, ${4:1.0})'],
            # Named colors
            'aliceblue', 'antiquewhite', 'aqua', 'aquamarine', 'azure', 'beige',
            'bisque', 'black', 'blanchedalmond', 'blue', 'blueviolet', 'brown',
            'burlywood', 'cadetblue', 'chartreuse', 'chocolate', 'coral',
            'cornflowerblue', 'cornsilk', 'crimson', 'cyan', 'darkblue',
            'darkcyan', 'darkgoldenrod', 'darkgray', 'darkgrey', 'darkgreen',
            'darkkhaki', 'darkmagenta', 'darkolivegreen', 'darkorange',
            'darkorchid', 'darkred', 'darksalmon', 'darkseagreen',
            'darkslateblue', 'darkslategray', 'darkslategrey', 'darkturquoise',
            'darkviolet', 'deeppink', 'deepskyblue', 'dimgray', 'dimgrey',
            'dodgerblue', 'firebrick', 'floralwhite', 'forestgreen', 'fuchsia',
            'gainsboro', 'ghostwhite', 'gold', 'goldenrod', 'gray', 'grey',
            'green', 'greenyellow', 'honeydew', 'hotpink', 'indianred', 'indigo',
            'ivory', 'khaki', 'lavender', 'lavenderblush', 'lawngreen',
            'lemonchiffon', 'lightblue', 'lightcoral', 'lightcyan',
            'lightgoldenrodyellow', 'lightgray', 'lightgrey', 'lightgreen',
            'lightpink', 'lightsalmon', 'lightseagreen', 'lightskyblue',
            'lightslategray', 'lightslategrey', 'lightsteelblue', 'lightyellow',
            'lime', 'limegreen', 'linen', 'magenta', 'maroon', 'mediumaquamarine',
            'mediumblue', 'mediumorchid', 'mediumpurple', 'mediumseagreen',
            'mediumslateblue', 'mediumspringgreen', 'mediumturquoise',
            'mediumvioletred', 'midnightblue', 'mintcream', 'mistyrose',
            'moccasin', 'navajowhite', 'navy', 'oldlace', 'olive', 'olivedrab',
            'orange', 'orangered', 'orchid', 'palegoldenrod', 'palegreen',
            'paleturquoise', 'palevioletred', 'papayawhip', 'peachpuff', 'peru',
            'pink', 'plum', 'powderblue', 'purple', 'rebeccapurple', 'red',
            'rosybrown', 'royalblue', 'saddlebrown', 'salmon', 'sandybrown',
            'seagreen', 'seashell', 'sienna', 'silver', 'skyblue', 'slateblue',
            'slategray', 'slategrey', 'snow', 'springgreen', 'steelblue', 'tan',
            'teal', 'thistle', 'tomato', 'turquoise', 'violet', 'wheat', 'white',
            'whitesmoke', 'yellow', 'yellowgreen'
        ],
        'counter-style': [
            ['symbols()', 'symbols($1)']
        ],
        'counter-symbols': [
            'cyclic', 'numeric', 'alphabetic', 'symbolic', 'additive', 'fixed'
        ],
        'ending-shape': ['circle', 'ellipse'],
        'fill-rule': ['nonzero', 'evenodd'],
        'filter-function': [
            ['blur()', 'blur($1)'],
            ['brightness()', 'brightness($1)'],
            ['contrast()', 'contrast($1)'],
            ['drop-shadow()', 'drop-shadow($1)'],
            ['grayscale()', 'grayscale($1)'],
            ['hue-rotate()', 'hue-rotate($1)'],
            ['invert()', 'invert($1)'],
            ['opacity()', 'opacity($1)'],
            ['saturate()', 'saturate($1)'],
            ['sepia()', 'sepia($1)']
        ],
        'font-variant-alternates': [
            'normal', 'historical-forms',
            ['stylistic()', 'stylistic($1)'],
            ['styleset()', 'styleset($1)'],
            ['character-variant()', 'character-variant($1)'],
            ['swash()', 'swash($1)'],
            ['ornaments()', 'ornaments($1)'],
            ['annotation()', 'annotation($1)']
        ],
        'generic-font-name': [
            'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'
        ],
        'gradient': [
            ['conic-gradient()', 'conic-gradient($1)'],
            ['linear-gradient()', 'linear-gradient($1)'],
            ['radial-gradient()', 'radial-gradient($1)'],
            ['repeating-conic-gradient()', 'repeating-conic-gradient($1)'],
            ['repeating-linear-gradient()', 'repeating-linear-gradient($1)'],
            ['repeating-radial-gradient()', 'repeating-radial-gradient($1)']
        ],
        'grid': [
            ['repeat()', 'repeat(${1:2}, ${2:1fr})'],
            ['minmax()', 'minmax(${1:100px}, ${2:1fr})'],
        ],
        'image': [
            '<url>',
            ['image()', 'image($1)'],
            ['image-set()', 'image-set($1)'],
            ['element()', 'element($1)'],
            ['paint()', 'paint($1)'],
            ['cross-fade()', 'cross-fade($1)'],
            ['linear-gradient()', 'linear-gradient($1)'],
            ['repeating-linear-gradient()', 'repeating-linear-gradient($1)'],
            ['radial-gradient()', 'radial-gradient($1)'],
            ['repeating-radial-gradient()', 'repeating-radial-gradient($1)'],
            ['conic-gradient()', 'conic-gradient($1)'],
        ],
        'image-tags': ['ltr', 'rtl'],
        'line-style': [
            'none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove',
            'ridge', 'inset', 'outset'
        ],
        'leader-type': [
            'dotted', 'solid', 'space'
        ],
        'list-style-type': [
            'none', 'inline', 'disc', 'circle', 'square', 'decimal',
            'decimal-leading-zero', 'arabic-indic', 'binary', 'bengali',
            'cambodian', 'khmer', 'devanagari', 'gujarati', 'gurmukhi',
            'kannada', 'lower-hexadecimal', 'lao', 'malayalam', 'mongolian',
            'myanmar', 'octal', 'oriya', 'persian', 'urdu', 'telugu',
            'tibetan', 'thai', 'upper-hexadecimal', 'lower-roman',
            'upper-roman', 'lower-greek', 'lower-alpha', 'lower-latin',
            'upper-alpha', 'upper-latin', 'afar', 'ethiopic-halehame-aa-et',
            'ethiopic-halehame-aa-er', 'amharic', 'ethiopic-halehame-am-et',
            'amharic-abegede', 'ethiopic-abegede-am-et', 'cjk-earthly-branch',
            'cjk-heavenly-stem', 'ethiopic', 'ethiopic-halehame-gez',
            'ethiopic-abegede', 'ethiopic-abegede-gez', 'hangul-consonant',
            'hangul', 'lower-norwegian', 'oromo', 'ethiopic-halehame-om-et',
            'sidama', 'ethiopic-halehame-sid-et', 'somali',
            'ethiopic-halehame-so-et', 'tigre', 'ethiopic-halehame-tig',
            'tigrinya-er', 'ethiopic-halehame-ti-er', 'tigrinya-er-abegede',
            'ethiopic-abegede-ti-er', 'tigrinya-et', 'ethiopic-halehame-ti-et',
            'tigrinya-et-abegede', 'ethiopic-abegede-ti-et', 'upper-greek',
            'upper-norwegian', 'asterisks', 'footnotes', 'hebrew', 'armenian',
            'lower-armenian', 'upper-armenian', 'georgian', 'cjk-ideographic',
            'hiragana', 'katakana', 'hiragana-iroha', 'katakana-iroha'
        ],
        'position': ['<side-or-corner>', 'center'],
        'relative-size': ['larger', 'smaller'],
        'relative-weight': ['bolder', 'lighter'],
        'repeat-style': [
            'repeat', 'repeat-x', 'repeat-y', 'space', 'round', 'no-repeat'
        ],
        'self-position': [
            'center', 'start', 'end', 'self-start', 'self-end', 'flex-start',
            'flex-end'
        ],
        'shape-radius': [
            'closest-side', 'farthest-side'
        ],
        'side-or-corner': [
            'left', 'right', 'top', 'bottom'
        ],
        'timing-function': [
            'linear',
            'ease', 'ease-in', 'ease-out', 'ease-in-out', 'step-start', 'step-end',
            ['cubic-bezier()', 'cubic-bezier(${1:0.0}, ${2:0.0}, ${3:1.0}, ${4:1.0})'],
            ['steps()', 'steps(${1:2}, ${2:start})'],
        ],
        'type-or-unit': [
            'string', 'color', 'url', 'integer', 'number', 'length', 'angle',
            'time', 'frequency', 'cap', 'ch', 'em', 'ex', 'ic', 'lh', 'rlh',
            'rem', 'vb', 'vi', 'vw', 'vh', 'vmin', 'vmax', 'mm', 'Q', 'cm',
            'in', 'pt', 'pc', 'px', 'deg', 'grad', 'rad', 'turn', 'ms', 's',
            'Hz', 'kHz', '%'
        ],
        'url': [['url()', 'url($1)']],
    }

    resolved_values = {}

    def resolve(vals):
        vals_resolved = []
        for val in vals:
            if val[0] == '<' and val[-1] == '>':
                key = val[1:-1]
                resolved = resolved_values.get(key)
                if resolved:
                    vals_resolved += resolved
                    continue
                resolved = common_values.get(key)
                if resolved:
                    vals_resolved += resolve(resolved)
                    continue

            vals_resolved.append(val)
        return vals_resolved

    for val_key, val_vals in common_values.items():
        resolved_values[val_key] = resolve(val_vals)

    return resolved_values


def get_func_args():

    common_values = get_common_values()

    func_args = {
        'attr': ['<color>', '<type-or-unit>'],
        'blur': ['<calc>'],
        'brightness': ['<calc>'],
        'calc': [
            ['attr()', 'attr($1)'],
            '<calc>'
        ],
        'circle': ['<calc>', '<shape-radius>', 'at', '<position>'],
        'clamp': [
            ['attr()', 'attr($1)'],
            '<calc>'
        ],
        'conic-gradient': ['from', 'at', '<position>', '<color>'],
        'contrast': [],
        'counter': ['<counter-style>'],
        'counters': ['<counter-style>'],
        'cross-fade': ['<image>', '<color>'],
        'cubic-bezier': ['<calc>'],
        'drop-shadow': ['<calc>', '<color>'],
        'element': [],
        'ellipse': ['<calc>', '<shape-radius>', 'at',  '<position>'],
        'env': [],
        'filter': ['<filter-function>', '<image>'],
        'fit-content': [],
        'grayscale': ['<calc>'],
        'hsl': ['<calc>'],
        'hsla': ['<calc>'],
        'hue-rotate': ['<calc>'],
        'image': ['<image-tags>', '<url>', '<color>'],
        'image-set': [
            ['type()', 'type($)'],
            '<url>', '<color>'
        ],
        'inset': ['<calc>', 'round'],
        'invert': ['<calc>'],
        'leader': ['<leader-type>'],
        'linear-gradient': ['<side-or-corner>', '<color>', 'to'],
        'matrix': ['<calc>'],
        'matrix3d': ['<calc>'],
        'max': [
            ['attr()', 'attr($1)'],
            '<calc>'
        ],
        'min': [
            ['attr()', 'attr($1)'],
            '<calc>'
        ],
        'minmax': ['min-content', 'max-content', 'auto'],
        'opacity': ['<calc>'],
        'path': ['<fill-rule>'],
        'paint': [],
        'perspective': ['<calc>'],
        'polygon': ['<calc>', '<fill-rule>'],
        'radial-gradient': [
            '<ending-shape>', '<size>', 'at',  '<position>', '<color>'
        ],
        'rect': ['<calc>', 'auto'],
        'repeat': ['<calc>', 'auto-fill', 'auto-fit'],
        'repeating-conic-gradient': ['from', 'at', '<position>', '<color>'],
        'repeating-linear-gradient': ['<side-or-corner>', '<color>', 'to'],
        'repeating-radial-gradient': [
            '<ending-shape>', '<size>', 'at',  '<position>', '<color>'
        ],
        'rgb': ['<calc>'],
        'rgba': ['<calc>'],
        'rotate': ['<calc>'],
        'rotate3d': ['<calc>'],
        'rotateX': ['<calc>'],
        'rotateY': ['<calc>'],
        'rotateZ': ['<calc>'],
        'saturate': ['<calc>'],
        'scale': ['<calc>'],
        'scale3d': ['<calc>'],
        'scaleX': ['<calc>'],
        'scaleY': ['<calc>'],
        'scaleZ': ['<calc>'],
        'skew': ['<calc>'],
        'skewX': ['<calc>'],
        'skewY': ['<calc>'],
        'sepia': ['<calc>'],
        'steps': ['<calc>', 'end', 'middle', 'start'],
        'target-counter': ['<url>', '<counter-style>'],
        'target-counters': ['<url>', '<counter-style>'],
        'target-text': ['<url>', 'content', 'before', 'after', 'first-letter'],
        'toggle': ['<calc>', '<color>'],
        'translate': ['<calc>'],
        'translate3d': ['<calc>'],
        'translateX': ['<calc>'],
        'translateY': ['<calc>'],
        'translateZ': ['<calc>'],
        'var': [],
    }

    completions = {}

    for func, args in func_args.items():
        # args that are allowed for all properties
        expanded_args = [['var()', 'var($1)']]

        # Determine which args are available for the current property name
        for arg in args:
            if arg[0] == '<' and arg[-1] == '>':
                key = arg[1:-1]
                if key in common_values:
                    expanded_args += common_values[key]
            else:
                expanded_args.append(arg)

        completions[func] = expanded_args

    return completions


def get_properties():
    '''
    Gets the properties.

    Prepare some common property values for when there is more than one way to
    specify a certain value type. The color value for example can be specified
    by `rgb()` or `hsl()` and so on. Example where `|` denotes the caret:

        color: rg|   -->   color: rgb(|);

    This is also helpful when multiple properties share the same value types.
    '''
    common_values = get_common_values()

    properties_dict = {
        'align-content': [
            'center', 'flex-end', 'flex-start', 'space-around', 'space-between',
            'stretch'
        ],
        'align-items': [
            'baseline', 'center', 'flex-end', 'flex-start', 'stretch'
        ],
        'align-self': [
            'auto', 'baseline', 'center', 'flex-end', 'flex-start', 'stretch'
        ],
        'alignment-baseline': [
            'baseline', 'middle', 'auto', 'before-edge', 'after-edge', 'central',
            'text-before-edge', 'text-after-edge', 'ideographic', 'alphabetic',
            'hanging', 'mathematical'
        ],
        'animation': [
            'none', '<timing-function>', 'infinite', '<animation-direction>',
            'forwards', 'backwards', 'both', 'running', 'paused'
        ],
        'animation-name': ['none', '<custom-ident>'],
        'animation-duration': ['<time>'],
        'animation-timing-function': ['<timing-function>'],
        'animation-delay': ['<time>'],
        'animation-iteration-count': ['infinite', '<number>'],
        'animation-direction': ['<animation-direction>'],
        'animation-fill-mode': ['none', 'forwards', 'backwards', 'both'],
        'animation-play-state': ['running', 'paused'],
        'backface-visibility': ['visible', 'hidden'],
        'background': [
            '<color>', '<gradient>', '<position>', '<url>',
            'repeat', 'repeat-x', 'repeat-y', 'no-repeat', 'scroll', 'fixed'
        ],
        'background-attachment': ['fixed', 'local', 'scroll'],
        'background-blend-mode': ['<blend-mode>'],
        'background-clip': ['border-box', 'padding-box', 'content-box'],
        'background-color': ['<color>'],
        'background-image': ['<url>', 'none'],
        'background-origin': ['border-box', 'padding-box', 'content-box'],
        'background-position': ['<position>'],
        'background-repeat': ['<repeat-style>'],
        'background-size': [
            'auto', 'cover', 'contain', '<length>', '<percentage>'
        ],
        'baseline-shift': ['baseline', 'sub', 'super'],
        'border': ['<border-width>', '<border-style>', '<color>'],
        'border-width': ['<border-width>'],
        'border-style': ['<border-style>'],
        'border-color': ['<color>'],
        'border-collapse': ['collapse', 'separate'],
        'border-radius': ['<length>', '<percentage>'],
        'border-spacing': ['<length>'],
        'border-image': [
            '<border-image-source>', '<border-image-slice>',
            '<border-image-width>', '<border-image-outset>',
            '<border-image-repeat>'
        ],
        'border-image-outset': ['<length>', '<number>'],
        'border-image-repeat': ['stretch', 'repeat', 'round', 'space'],
        'border-image-slice': ['fill', '<number>', '<percentage>'],
        'border-image-source': ['none', '<image>'],
        'border-image-width': ['<length>', '<percentage>', '<number>', 'auto'],
        'border-top | border-right | border-bottom | border-left': [
            '<border-width>', '<border-style>', '<color>'
        ],
        'border-top-color | border-right-color | border-bottom-color | border-left-color': ['<color>'],
        'border-top-left-radius | border-top-right-radius | border-bottom-right-radius | border-bottom-left-radius': [
            '<length>', '<percentage>'
        ],
        'border-top-style | border-right-style | border-bottom-style | border-left-style': ['<border-style>'],
        'border-top-width | border-right-width | border-bottom-width | border-left-width': ['<border-width>'],
        'bottom': ['<length>', '<percentage>', 'auto'],
        'box-decoration-break': ['slice', 'clone'],
        'box-shadow': ['none', 'inset', '<color>'],
        'box-sizing': ['content-box', 'border-box'],
        'break-after': ['<break-before-after>', '<break-inside>'],
        'break-before': ['<break-before-after>', '<break-inside>'],
        'break-inside': ['<break-inside>'],
        'caption-side': ['top', 'bottom'],
        'clear': ['none', 'left', 'right', 'both'],
        'clip': [
            ['rect()', 'rect(${1:0}, ${2:0}, ${3:0}, ${4:0})'],
            'auto'
        ],
        'clip-path': ['none', '<url>', '<basic-shape>'],
        'clip-rule': ['nonzero', 'evenodd'],
        'color': ['<color>'],
        'color-interpolation': ['auto', 'sRGB', 'linearRGB'],
        'color-interpolation-filters': ['auto', 'sRGB', 'linearRGB'],
        'color-profile': ['auto', 'sRGB', '<url>'],
        'color-rendering': ['auto', 'optimizeSpeed', 'optimizeQuality'],
        'columns': ['auto'],
        'column-count': ['auto', '<number>'],
        'column-fill': ['auto', 'balance'],
        'column-gap': ['normal', '<length>'],
        'column-rule': ['<border-width>', '<border-style>', '<color>'],
        'column-rule-color': ['<color>'],
        'column-rule-style': ['<border-style>'],
        'column-rule-width': ['<border-width>'],
        'column-span': ['none'],
        'column-width': ['auto', '<length>'],
        'content': [
            'none', 'normal', '<url>',
            'open-quote', 'close-quote', 'no-open-quote', 'no-close-quote',
            ['attr()', 'attr($1)'],
            ['counter()', 'counter($1)']
        ],
        'counter-increment': ['none', '<custom_ident>', '<integer>'],
        'counter-reset': ['none', '<custom_ident>', '<integer>'],
        'cursor': [
            '<url>', 'auto', 'default', 'none', 'context-menu', 'help',
            'pointer', 'progress', 'wait', 'cell', 'crosshair', 'text',
            'vertical-text', 'alias', 'copy', 'move', 'no-drop', 'not-allowed',
            'e-resize', 'n-resize', 'ne-resize', 'nw-resize', 's-resize',
            'se-resize', 'sw-resize', 'w-resize', 'ew-resize', 'ns-resize',
            'nesw-resize', 'nwse-resize', 'col-resize', 'row-resize',
            'all-scroll', 'zoom-in', 'zoom-out'
        ],
        'direction': ['<image-tags>'],
        'display': [
            'none', 'inline', 'block', 'contents', 'list-item', 'inline-block',
            'inline-table', 'table', 'table-cell', 'table-column',
            'table-column-group', 'table-footer-group', 'table-header-group',
            'table-row', 'table-row-group', 'table-caption', 'flex',
            'inline-flex', 'grid', 'inline-grid', 'ruby', 'ruby-base',
            'ruby-text', 'ruby-base-container', 'ruby-text-container', 'run-in'
        ],
        'dominant-baseline': [
            'auto', 'middle', 'central', 'text-before-edge',
            'text-after-edge', 'ideographic', 'alphabetic', 'hanging',
            'mathematical', 'use-script', 'no-change', 'reset-size'
        ],
        'empty-cells': ['show', 'hide'],
        'fill': ['<color>'],
        'fill-rule': ['nonzero', 'evenodd'],
        'filter': [
            '<url>',
            ['blur()', 'blur(${1:5px})'],
            ['brightness()', 'brightness(${1:1.0})'],
            ['contrast()', 'contrast(${1:100%})'],
            ['drop-shadow()', 'drop-shadow(${1:1px} ${2:1px})'],
            ['grayscale()', 'grayscale(${1:50%})'],
            ['hue-rotate()', 'hue-rotate(${1:90deg})'],
            ['invert()', 'invert(${1:50%})'],
            ['opacity()', 'opacity(${1:100%})'],
            ['saturate()', 'saturate(${1:50%})'],
            ['sepia()', 'sepia(${1:50%})']
        ],
        'flex': ['none'],
        'flex-grow': ['<number>'],
        'flex-shrink': ['<number>'],
        'flex-basis': ['auto', '<width>'],
        'flex-flow': [
            'row', 'row-reverse', 'column', 'column-reverse', 'nowrap', 'wrap',
            'wrap-reverse'
        ],
        'flex-direction': ['row', 'row-reverse', 'column', 'column-reverse'],
        'flex-wrap': ['nowrap', 'wrap', 'wrap-reverse'],
        'float': ['left', 'right', 'none'],
        'flood-color': ['<color>'],
        'font': [
            '<absolute-weight>', '<generic-font-name>', '<relative-weight>',
            'caption', 'icon', 'italic', 'menu', 'message-box', 'oblique',
            'small-caps', 'small-caption', 'status-bar'
        ],
        'font-display': ['auto', 'block', 'swap', 'fallback', 'optional'],
        'font-family': ['<generic-font-name>'],
        'font-feature-settings': ['normal', '<string>'],
        'font-kerning': ['auto', 'normal', 'none'],
        'font-language-override': ['normal', '<string>'],
        'font-size': [
            '<absolute-size>', '<relative-size>', '<length>', '<percentage>'
        ],
        'font-size-adjust': ['none', '<number>'],
        'font-style': ['normal', 'italic', 'oblique'],
        'font-stretch': [
            'normal', 'semi-condensed', 'condensed', 'extra-condensed',
            'ultra-condensed', 'semi-expanded', 'expanded', 'extra-expanded',
            'ultra-expanded'
        ],
        'font-synthesis': ['none', 'weight', 'style'],
        'font-variant': ['normal', 'small-caps'],
        'font-variant-alternates': ['<font-variant-alternates>'],
        'font-variant-caps': [
            'normal', 'small-caps', 'all-small-caps', 'petite-caps',
            'all-petite-caps', 'unicase', 'titling-case'
        ],
        'font-variant-east-asian': [
            'normal', 'ruby', 'jis78', 'jis83', 'jis90', 'jis04', 'simplified',
            'traditional'
        ],
        'font-variant-ligatures': [
            'normal', 'none', 'common-ligatures', 'no-common-ligatures',
            'discretionary-ligatures', 'no-discretionary-ligatures',
            'historical-ligatures', 'no-historical-ligatures', 'contextual',
            'no-contextual'
        ],
        'font-variant-numeric': [
            'normal', 'ordinal', 'slashed-zero', 'lining-nums', 'oldstyle-nums',
            'proportional-nums', 'tabular-nums', 'diagonal-fractions',
            'stacked-fractions'
        ],
        'font-variant-position': ['normal', 'sub', 'super'],
        'font-weight': ['<absolute-weight>', '<relative-weight>'],
        'grid': [],
        'grid-area': [],
        'grid-auto-columns': ['auto', '<percentage>', '<length>'],
        'grid-auto-flow': ['row', 'column', 'dense'],
        'grid-auto-rows': ['auto', '<percentage>', '<length>'],
        'grid-column-gap': ['<length>', '<percentage>'],
        'grid-gap': ['<length>', '<percentage>'],
        'grid-row-gap': ['<length>', '<percentage>'],
        'grid-template-areas': [],
        'grid-template-columns': ['auto', '<grid>', '<percentage>', '<length>'],
        'grid-template-rows': ['auto', '<grid>', '<percentage>', '<length>'],
        'grid-column': ['<number>'],
        'grid-column-end': ['<number>'],
        'grid-column-start': ['<number>'],
        'grid-row': ['<number>'],
        'grid-row-end': ['<number>'],
        'grid-row-start': ['<number>'],
        'height': ['<length>', '<percentage>', 'auto', 'fit-content'],
        'hyphens': ['none', 'manual', 'auto'],
        'image-rendering': [
            'auto', 'optimizeSpeed', 'optimizeQuality', 'pixelated'
        ],
        'ime-mode': ['auto', 'normal', 'active', 'inactive', 'disabled'],
        'isolation': ['auto', 'isolation'],
        'justify-content | justify-items | justify-self': [
            'start', 'end', 'flex-start', 'flex-end', 'center', 'left', 'right',
            'safe start', 'safe end', 'safe flex-start', 'safe flex-end',
            'safe center', 'safe left', 'safe right', 'unsafe start',
            'unsafe end', 'unsafe flex-start', 'unsafe flex-end', 'unsafe center',
            'unsafe left', 'unsafe right', 'normal', 'baseline', 'first baseline',
            'last baseline', 'space-between', 'space-around', 'space-evenly',
            'stretch', 'legacy', 'lecacy center', 'legacy left', 'legacy right'
        ],
        'kerning': ['auto'],
        'left': ['<length>', '<percentage>', 'auto'],
        'letter-spacing': ['normal', '<length>'],
        'lighting-color': ['<color>'],
        'line-height': ['normal', '<number>', '<length>', '<percentage>'],
        'list-style': ['<list-style-type>', 'inside', 'outside', '<url>'],
        'list-style-image': ['<url>', 'none'],
        'list-style-position': ['inside', 'outside'],
        'list-style-type': ['<list-style-type>'],
        'margin': ['auto', '<margin-width>'],
        'margin-top | margin-right | margin-bottom | margin-left': [
            'auto', '<margin-width>'
        ],
        'marker-end | marker-start | marker-mid': ['<url>', 'none'],
        'marks': ['crop', 'cross', 'none'],
        'mask': ['<url>', 'none'],
        'mask-type': ['luminance', 'alpha'],
        'max-height': ['<length>', '<percentage>', 'fit-content', 'none'],
        'max-width': ['<length>', '<percentage>', 'fit-content', 'none'],
        'min-height': ['<length>', '<percentage>', 'fit-content'],
        'min-width': ['<length>', '<percentage>', 'fit-content'],
        'mix-blend-mode': ['<blend-mode>'],
        'object-fit': ['fill', 'contain', 'cover', 'none', 'scale-down'],
        'object-position': ['<position>'],
        'opacity': ['<number>'],
        'order': ['<integer>'],
        'orphans': ['<integer>'],
        'outline': [
            '<color>', '<border-style>', '<border-width>', '<length>'
        ],
        'outline-color': ['<color>', 'invert'],
        'outline-offset': ['<length>'],
        'outline-style': ['<border-style>'],
        'outline-width': ['<border-width>', '<length>'],
        'overflow | overflow-x | overflow-y': [
            'visible', 'hidden', 'scroll', 'auto'
        ],
        'overflow-wrap': ['normal', 'break-word'],
        'padding': ['auto', '<padding-width>'],
        'padding-top | padding-right | padding-bottom | padding-left': [
            'auto', '<padding-width>'
        ],
        'page-break-after': ['auto', 'always', 'avoid', 'left', 'right'],
        'page-break-before': ['auto', 'always', 'avoid', 'left', 'right'],
        'page-break-inside': ['avoid', 'auto'],
        'paint-order': ['normal', 'fill', 'stroke', 'markers'],
        'perspective': ['none'],
        'perspective-origin': ['<position>'],
        'pointer-events': [
            'auto', 'none', 'all', 'visiblePainted', 'visibleFill',
            'visibleStroke', 'visible', 'painted', 'fill', 'stroke'
        ],
        'position': ['static', 'relative', 'absolute', 'fixed', 'sticky'],
        'quotes': ['none', '<string>'],
        'resize': ['none', 'both', 'horizontal', 'vertical'],
        'right': ['<length>', '<percentage>', 'auto'],
        'scroll-behavior': ['auto', 'smooth'],
        'shape-image-threshold': ['<number>'],
        'shape-margin': ['<length>', '<percentage>'],
        'shape-outside': [
            'none', 'margin-box', 'content-box', 'border-box', 'padding-box',
            '<basic-shape>', '<url>'
        ],
        'shape-rendering': [
            'auto', 'optimizeSpeed', 'crispEdges', 'geometricPrecision'
        ],
        'size': [
            'a3', 'a4', 'a5', 'b4', 'b5', 'jis-b4', 'jis-b5', 'landscape',
            'ledger', 'legal', 'letter', 'portrait'
        ],
        'stop-color': ['<color>'],
        'stroke': ['<color>'],
        'stroke-dasharray': ['none'],
        'stroke-linecap': ['butt', 'round', 'square'],
        'stroke-linejoin': ['round', 'miter', 'bevel'],
        'system': ['<counter-symbols>'],
        'table-layout': ['auto', 'fixed'],
        'text-align': ['left', 'right', 'center', 'justify', 'justify-all'],
        'text-align-last': ['start', 'end', 'left', 'right', 'center', 'justify'],
        'text-anchor': ['start', 'middle', 'end'],
        'text-decoration': [
            'none', 'underline', 'overline', 'line-through', 'blink'
        ],
        'text-decoration-color': ['<color>'],
        'text-decoration-line': ['none', 'underline', 'overline', 'line-through'],
        'text-decoration-style': ['solid', 'double', 'dotted', 'dashed', 'wavy'],
        'text-indent': ['<length>', '<percentage>'],
        'text-orientation': ['mixed', 'upright', 'sideways', 'use-glyph-orientation'],
        'text-overflow': ['clip', 'ellipsis'],
        'text-rendering': [
            'auto', 'optimizeSpeed', 'optimizeLegibility', 'geometricPrecision'
        ],
        'text-shadow': ['none', '<color>'],
        'text-transform': ['capitalize', 'uppercase', 'lowercase', 'none'],
        'text-underline-position': ['auto', 'under', 'left', 'right'],
        'top': ['<length>', '<percentage>', 'auto'],
        'transform': [
            'none',
            ['matrix()', 'matrix(${1:1}, ${2:1}, ${3:1}, ${4:1}, ${5:2}, ${6:2})'],
            [
                'matrix3d()',
                'matrix3d('
                '${1:1}, ${2:1}, ${3:0}, ${4:0}, '
                '${5:1}, ${6:1}, ${7:0}, ${8:0}, '
                '${9:0}, ${10:0}, ${11:1}, ${12:0}, '
                '${13:2}, ${14:2}, ${15:0}, ${16:1}'
                ')'
            ],
            ['perspective()', 'perspective(${1:0})'],
            ['rotate()', 'rotate(${1:45deg})'],
            ['rotate3d()', 'rotate3d(${1:0}, ${2:0}, ${3:1}, ${4:45deg})'],
            ['rotateX()', 'rotateX(${1:45deg})'],
            ['rotateY()', 'rotateY(${1:45deg})'],
            ['rotateZ()', 'rotateZ(${1:45deg})'],
            ['scale()', 'scale(${1:1.0})'],
            ['scale3d()', 'scale3d(${1:1.0}, ${2:1.0}, ${3:1.0})'],
            ['scaleX()', 'scaleX(${1:1.0})'],
            ['scaleY()', 'scaleY(${1:1.0})'],
            ['scaleZ()', 'scaleZ(${1:1.0})'],
            ['skew()', 'skew(${1:10deg})'],
            ['skewX()', 'skewX(${1:10deg})'],
            ['skewY()', 'skewY(${1:10deg})'],
            ['translate()', 'translate(${1:10px})'],
            ['translate3d()', 'translate3d(${1:10px}, ${2:0px}, ${3:0px})'],
            ['translateX()', 'translateX(${1:10px})'],
            ['translateY()', 'translateY(${1:10px})'],
            ['translateZ()', 'translateZ(${1:10px})']
        ],
        'transform-origin': ['<position>'],
        'transform-style': ['preserve-3d', 'flat'],
        'transition': [],
        'transition-delay': ['<time>'],
        'transition-duration': ['<time>'],
        'transition-property': ['none', '<custom-ident>'],
        'transition-timing-function': ['<timing-function>'],
        'unicode-bidi': ['normal', 'embed', 'bidi-override'],
        'unicode-range': [],
        'user-select': ['auto', 'text', 'none', 'contain'],
        'vertical-align': [
            'baseline', 'sub', 'super', 'text-top', 'text-bottom', 'middle',
            'top', 'bottom', '<percentage>', '<length>'
        ],
        'visibility': ['visible', 'hidden', 'collapse'],
        'white-space': ['normal', 'pre', 'nowrap', 'pre-wrap', 'pre-line'],
        'widows': ['<integer>'],
        'width': ['<length>', '<percentage>', 'auto', 'fit-content'],
        'will-change': ['auto', 'contents', 'scroll-position', '<custom-ident>'],
        'word-break': ['normal', 'break-all', 'keep-all'],
        'word-spacing': ['normal', '<length>'],
        'word-wrap': ['normal', 'break-word'],
        'writing-mode': [
            'horizontal-tb', 'vertical-rl', 'vertical-lr', 'sideways-rl',
            'sideways-lr'
        ],
        'z-index': ['auto', '<integer>'],
    }

    props = {}

    for names, values in properties_dict.items():
        # Values that are allowed for all properties
        allowed_values = ['inherit', 'initial', 'unset', ['var()', 'var($1)']]

        # Determine which values are available for the current property name
        for value in values:
            if value[0] == '<' and value[-1] == '>':
                key = value[1:-1]
                if key in common_values:
                    allowed_values += common_values[key]
            else:
                allowed_values.append(value)

        for name in names.split(' | '):
            props[name] = allowed_values

    return props


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
    def func_args(self):
        return get_func_args()

    @cached_property
    def props(self):
        return get_properties()

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

        if match_selector(view, pt, "meta.property-value.css meta.function-call.arguments"):
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
        completions = [
            sublime.CompletionItem(
                trigger="!important",
                completion_format=sublime.COMPLETION_FORMAT_TEXT,
                kind=sublime.KIND_KEYWORD,
                details="override any other declaration"
            )
        ]
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

    def complete_function_argument(self, view: sublime.View, prefix, pt):
        func_name = ""
        nest_level = 1
        # Look for the beginning of the current function call's arguments list,
        # while ignoring any nested function call or group.
        for i in range(pt - 1, pt - 32 * 1024, -1):
            ch = view.substr(i)
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
                    func_name = view.substr(view.expand_by_class(
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
