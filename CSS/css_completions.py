import re
import sublime
import sublime_plugin

KIND_CSS_PROPERTY = (sublime.KIND_ID_KEYWORD, "p", "property")
KIND_CSS_FUNCTION = (sublime.KIND_ID_FUNCTION, "f", "function")
KIND_CSS_CONSTANT = (sublime.KIND_ID_VARIABLE, "c", "constant")

# Prepare some common property values for when there is more than one way to
# specify a certain value type. The color value for example can be specified
# by `rgb()` or `hsl()` and so on. Example where `|` denotes the caret:
#
#     color: rg|   -->   color: rgb(|);
#
# This is also helpful when multiple properties share the same value types.
COMMON_VALUES = {
    'animation_direction': [
        'alternate', 'alternate-reverse', 'normal', 'reverse'
    ],
    'absolute_size': [
        'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'
    ],
    'absolute_weight': [
        '100', '200', '300', '400', '500', '600', '700', '800', '900'
    ],
    'basic_shape': ['inset($1)', 'circle($1)', 'ellipse($1)', 'polygon($1)'],
    'blend_mode': [
        'normal', 'multiply', 'screen', 'overlay', 'darken', 'lighten',
        'color-dodge', 'color-burn', 'hard-light', 'soft-light', 'difference',
        'exclusion', 'hue', 'saturation', 'color', 'luminosity'
    ],
    'border_style': [
        'none', 'hidden', 'dotted', 'dashed', 'solid', 'double',
        'groove', 'ridge', 'inset', 'outset'
    ],
    'border_width': ['thin', 'medium', 'thick'],
    'break_before_after': [
        'always', 'left', 'right', 'recto', 'verso', 'page', 'column', 'region'
    ],
    'break_inside': [
        'auto', 'avoid', 'avoid-page', 'avoid-column', 'avoid-region'
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
    'font_variant_alternates': [
        'normal', 'historical-forms', 'stylistic($1)', 'styleset($1)',
        'character-variant($1)', 'swash($1)', 'ornaments($1)', 'annotation($1)'
    ],
    'generic_name': [
        'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'
    ],
    'grid': [
        ['repeat()', 'repeat(${1:2}, ${2:1fr})'],
        ['minmax()', 'minmax(${1:100px}, ${2:1fr})'],
    ],
    'list_style_type': [
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
    'position': ['top', 'right', 'bottom', 'left', 'center'],
    'relative_size': ['larger', 'smaller'],
    'relative_weight': ['bolder', 'lighter'],
    'repeat_style': [
        'repeat', 'repeat-x', 'repeat-y', 'space', 'round', 'no-repeat'
    ],
    'string': ['\"$1\"'],
    'timing_function': [
        'ease',
        'ease-in',
        'ease-out',
        'ease-in-out',
        'linear',
        ['cubic-bezier()', 'cubic-bezier(${1:0.0}, ${2:0.0}, ${3:1.0}, ${4:1.0})'],
        'step-start',
        'step-end',
        ['steps()', 'steps(${1:2}, ${2:start})'],
    ],
    'uri': ['url($1)'],
}

PROPERTY_DICT = {
    'align-content': [
        'center', 'flex-end', 'flex-start', 'space-around', 'space-between',
        'stretch'
    ],
    'align-items': ['baseline', 'center', 'flex-end', 'flex-start', 'stretch'],
    'align-self': ['auto', 'baseline', 'center', 'flex-end', 'flex-start', 'stretch'],
    'alignment-baseline': [
        'baseline', 'middle', 'auto', 'before-edge', 'after-edge', 'central',
        'text-before-edge', 'text-after-edge', 'ideographic', 'alphabetic',
        'hanging', 'mathematical'
    ],
    'animation': [
        'none', '<timing_function>', 'infinite', '<animation_direction>',
        'forwards', 'backwards', 'both', 'running', 'paused'
    ],
    'animation-name': ['none', '<custom-ident>'],
    'animation-duration': ['<time>'],
    'animation-timing-function': ['<timing_function>'],
    'animation-delay': ['<time>'],
    'animation-iteration-count': ['infinite', '<number>'],
    'animation-direction': ['<animation_direction>'],
    'animation-fill-mode': ['none', 'forwards', 'backwards', 'both'],
    'animation-play-state': ['running', 'paused'],
    'backface-visibility': ['visible', 'hidden'],
    'background': [
        '<color>', '<uri>', 'repeat', 'repeat-x', 'repeat-y', 'no-repeat',
        'scroll', 'fixed', '<position>'
    ],
    'background-attachment': ['fixed', 'local', 'scroll'],
    'background-blend-mode': ['<blend_mode>'],
    'background-clip': ['border-box', 'padding-box', 'content-box'],
    'background-color': ['<color>'],
    'background-image': ['<uri>', 'none'],
    'background-origin': ['border-box', 'padding-box', 'content-box'],
    'background-position': ['<position>'],
    'background-repeat': ['<repeat_style>'],
    'background-size': ['auto', 'cover', 'contain', '<length>', '<percentage>'],
    'baseline-shift': ['baseline', 'sub', 'super'],
    'border': ['<border_width>', '<border_style>', '<color>'],
    'border-width': ['<border_width>'],
    'border-style': ['<border_style>'],
    'border-color': ['<color>'],
    'border-collapse': ['collapse', 'separate'],
    'border-radius': ['<length>', '<percentage>'],
    'border-spacing': ['<length>'],
    'border-image': [
        '<border-image-source>', '<border-image-slice>', '<border-image-width>',
        '<border-image-outset>', '<border-image-repeat>'
    ],
    'border-image-outset': ['<length>', '<number>'],
    'border-image-repeat': ['stretch', 'repeat', 'round', 'space'],
    'border-image-slice': ['fill', '<number>', '<percentage>'],
    'border-image-source': ['none', '<image>'],
    'border-image-width': ['<length>', '<percentage>', '<number>', 'auto'],
    'border-top | border-right | border-bottom | border-left': [
        '<border_width>', '<border_style>', '<color>'
    ],
    'border-top-color | border-right-color | border-bottom-color | border-left-color': ['<color>'],
    'border-top-left-radius | border-top-right-radius | border-bottom-right-radius | border-bottom-left-radius': [
        '<length>', '<percentage>'
    ],
    'border-top-style | border-right-style | border-bottom-style | border-left-style': ['<border_style>'],
    'border-top-width | border-right-width | border-bottom-width | border-left-width': ['<border_width>'],
    'bottom': ['<length>', '<percentage>', 'auto'],
    'box-decoration-break': ['slice', 'clone'],
    'box-shadow': ['none', 'inset', '<color>'],
    'box-sizing': ['content-box', 'border-box'],
    'break-after': ['<break_before_after>', '<break_inside>'],
    'break-before': ['<break_before_after>', '<break_inside>'],
    'break-inside': ['<break_inside>'],
    'caption-side': ['top', 'bottom'],
    'clear': ['none', 'left', 'right', 'both'],
    'clip': [
        ['rect()', 'rect(${1:0}, ${2:0}, ${3:0}, ${4:0})'],
        'auto'
    ],
    'clip-path': ['none', '<uri>', '<basic_shape>'],
    'clip-rule': ['nonzero', 'evenodd'],
    'color': ['<color>'],
    'color-interpolation': ['auto', 'sRGB', 'linearRGB'],
    'color-interpolation-filters': ['auto', 'sRGB', 'linearRGB'],
    'color-profile': ['auto', 'sRGB', '<uri>'],
    'color-rendering': ['auto', 'optimizeSpeed', 'optimizeQuality'],
    'columns': ['auto'],
    'column-count': ['auto', '<number>'],
    'column-fill': ['auto', 'balance'],
    'column-gap': ['normal', '<length>'],
    'column-rule': ['<border_width>', '<border_style>', '<color>'],
    'column-rule-color': ['<color>'],
    'column-rule-style': ['<border_style>'],
    'column-rule-width': ['<border_width>'],
    'column-span': ['none'],
    'column-width': ['auto', '<length>'],
    'content': [
        'none', 'normal', '<string>', '<uri>', 'attr($1)',
        'open-quote', 'close-quote', 'no-open-quote', 'no-close-quote',
        'counter($1)'
    ],
    'counter-increment': ['none', '<custom_ident>', '<integer>'],
    'counter-reset': ['none', '<custom_ident>', '<integer>'],
    'cursor': [
        '<uri>', 'auto', 'default', 'none', 'context-menu', 'help',
        'pointer', 'progress', 'wait', 'cell', 'crosshair', 'text',
        'vertical-text', 'alias', 'copy', 'move', 'no-drop', 'not-allowed',
        'e-resize', 'n-resize', 'ne-resize', 'nw-resize', 's-resize',
        'se-resize', 'sw-resize', 'w-resize', 'ew-resize', 'ns-resize',
        'nesw-resize', 'nwse-resize', 'col-resize', 'row-resize',
        'all-scroll', 'zoom-in', 'zoom-out'
    ],
    'direction': ['ltr', 'rtl'],
    'display': [
        'none', 'inline', 'block', 'contents', 'list-item', 'inline-block',
        'inline-table', 'table', 'table-cell', 'table-column',
        'table-column-group', 'table-footer-group', 'table-header-group',
        'table-row', 'table-row-group', 'table-caption', 'flex', 'inline-flex',
        'grid', 'inline-grid', 'ruby', 'ruby-base', 'ruby-text',
        'ruby-base-container', 'ruby-text-container', 'run-in'
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
        '<uri>',
        'blur(${1:5px})',
        'brightness(${1:1.0})',
        'contrast(${1:100%})',
        ['drop-shadow()', 'drop-shadow(${1:1px} ${2:1px})'],
        'grayscale(${1:50%})',
        'hue-rotate(${1:90deg})',
        'invert(${1:50%})',
        'opacity(${1:100%})',
        'saturate(${1:50%})',
        'sepia(${1:50%})'
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
        'normal', 'italic', 'oblique', 'normal', 'small-caps', 'normal', 'bold',
        '<absolute_weight>', '<relative_weight>', 'normal', '<generic_name>',
        'caption', 'icon', 'menu', 'message-box', 'small-caption', 'status-bar'
    ],
    'font-family': ['<generic_name>'],
    'font-feature-settings': ['normal', '<string>'],
    'font-kerning': ['auto', 'normal', 'none'],
    'font-language-override': ['normal', '<string>'],
    'font-size': [
        '<absolute_size>', '<relative_size>', '<length>', '<percentage>'
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
    'font-variant-alternates': ['<font_variant_alternates>'],
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
    'font-weight': ['normal', 'bold', '<absolute_weight>', '<relative_weight>'],
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
    'justify-content': [
        'start', 'end', 'flex-start', 'flex-end', 'center', 'left', 'right',
        'safe start', 'safe end', 'safe flex-start', 'safe flex-end',
        'safe center', 'safe left', 'safe right', 'unsafe start',
        'unsafe end', 'unsafe flex-start', 'unsafe flex-end', 'unsafe center',
        'unsafe left', 'unsafe right', 'normal', 'baseline', 'first baseline',
        'last baseline', 'space-between', 'space-around', 'space-evenly',
        'stretch'
    ],
    'kerning': ['auto'],
    'left': ['<length>', '<percentage>', 'auto'],
    'letter-spacing': ['normal', '<length>'],
    'lighting-color': ['<color>'],
    'line-height': ['normal', '<number>', '<length>', '<percentage>'],
    'list-style': ['<list_style_type>', 'inside', 'outside', '<uri>'],
    'list-style-image': ['<uri>', 'none'],
    'list-style-position': ['inside', 'outside'],
    'list-style-type': ['<list_style_type>'],
    'margin': ['auto', '<margin-width>'],
    'margin-top | margin-right | margin-bottom | margin-left': [
        'auto', '<margin-width>'
    ],
    'marker-end | marker-start | marker-mid': ['<uri>', 'none'],
    'marks': ['crop', 'cross', 'none'],
    'mask': ['<uri>', 'none'],
    'mask-type': ['luminance', 'alpha'],
    'max-height': ['<length>', '<percentage>', 'fit-content', 'none'],
    'max-width': ['<length>', '<percentage>', 'fit-content', 'none'],
    'min-height': ['<length>', '<percentage>', 'fit-content'],
    'min-width': ['<length>', '<percentage>', 'fit-content'],
    'mix-blend-mode': ['<blend_mode>'],
    'object-fit': ['fill', 'contain', 'cover', 'none', 'scale-down'],
    'object-position': ['<position>'],
    'opacity': ['<number>'],
    'order': ['<integer>'],
    'orphans': ['<integer>'],
    'outline': [
        '<color>', '<border_style>', '<border_width>', '<length>'
    ],
    'outline-color': ['<color>', 'invert'],
    'outline-offset': ['<length>'],
    'outline-style': ['<border_style>'],
    'outline-width': ['<border_width>', '<length>'],
    'overflow | overflow-x | overflow-y': ['visible', 'hidden', 'scroll', 'auto'],
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
        'auto', 'none', 'all', 'visiblePainted', 'visibleFill', 'visibleStroke',
        'visible', 'painted', 'fill', 'stroke'
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
        '<basic_shape>', '<uri>'
    ],
    'shape-rendering': ['auto', 'optimizeSpeed', 'crispEdges', 'geometricPrecision'],
    'size': [
        'a3', 'a4', 'a5', 'b4', 'b5', 'landscape', 'ledger', 'legal',
        'letter', 'portrait'
    ],
    'stop-color': ['<color>'],
    'stroke': ['<color>'],
    'stroke-dasharray': ['none'],
    'stroke-linecap': ['butt', 'round', 'square'],
    'stroke-linejoin': ['round', 'miter', 'bevel'],
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
        'perspective(${1:0})',
        'rotate(${1:45deg})',
        ['rotate3d()', 'rotate3d(${1:0}, ${2:0}, ${3:1}, ${4:45deg})'],
        'rotateX(${1:45deg})',
        'rotateY(${1:45deg})',
        'rotateZ(${1:45deg})',
        'scale(${1:1.0})',
        ['scale3d()', 'scale3d(${1:1.0}, ${2:1.0}, ${3:1.0})'],
        'scaleX(${1:1.0})',
        'scaleY(${1:1.0})',
        'scaleZ(${1:1.0})',
        'skew(${1:10deg})',
        'skewX(${1:10deg})',
        'skewY(${1:10deg})',
        'translate(${1:10px})',
        ['translate3d()', 'translate3d(${1:10px}, ${2:0px}, ${3:0px})'],
        'translateX(${1:10px})',
        'translateY(${1:10px})',
        'translateZ(${1:10px})',
        'none'
    ],
    'transform-origin': ['<position>'],
    'transform-style': ['preserve-3d', 'flat'],
    'transition': [],
    'transition-delay': ['<time>'],
    'transition-duration': ['<time>'],
    'transition-property': ['none', '<custom-ident>'],
    'transition-timing-function': ['<timing_function>'],
    'unicode-bidi': ['normal', 'embed', 'bidi-override'],
    'unicode-range': [],
    'user-select': ['auto', 'text', 'none', 'contain'],
    'vertical-align': [
        'baseline', 'sub', 'super', 'text-top', 'text-bottom', 'middle', 'top',
        'bottom', '<percentage>', '<length>'
    ],
    'visibility': ['visible', 'hidden', 'collapse'],
    'white-space': ['normal', 'pre', 'nowrap', 'pre-wrap', 'pre-line'],
    'widows': ['<integer>'],
    'width': ['<length>', '<percentage>', 'auto', 'fit-content'],
    'will-change': ['auto', 'contents', 'scroll-position', '<custom-ident>'],
    'word-break': ['normal', 'break-all', 'keep-all'],
    'word-spacing': ['normal', '<length>'],
    'word-wrap': ['normal', 'break-word'],
    'writing-mode': ['horizontal-tb', 'vertical-rl', 'vertical-lr', 'sideways-rl', 'sideways-lr'],
    'z-index': ['auto', '<integer>'],
}


def completion_sort_key(v):
    if isinstance(v, str):
        return v
    return v[0]


def parse_css_data():
    """
    Returns a dictionary containing values associated to their property names
    """
    props = {}
    for names, values in PROPERTY_DICT.items():
        # Determine which values are available for the current property name
        allowed_values = []
        for value in values:
            if value[0] == '<' and value[-1] == '>':
                key = value[1:-1]
                if key in COMMON_VALUES:
                    allowed_values += COMMON_VALUES[key]
            else:
                allowed_values.append(value)

        # Append values that are allowed for all properties
        allowed_values += ['all', 'inherit', 'initial', 'unset']

        for name in names.split(' | '):
            props[name] = sorted(allowed_values, key=completion_sort_key)

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
    selector_scope = (
        # match inside a CSS document and
        "source.css - meta.selector.css, "
        # match inside the style attribute of HTML tags, incl. just before
        # the quote that closes the attribute value
        "text.html meta.attribute-with-value.style.html "
        "string.quoted - punctuation.definition.string.begin.html"
    )
    props = None
    re_name = None
    re_value = None
    re_trigger = None

    def on_query_completions(self, view, prefix, locations):

        if sublime.load_settings('CSS.sublime-settings').get('disable_default_completions'):
            return None

        pt = locations[0]
        if not match_selector(view, pt, self.selector_scope):
            return None

        if not self.props:
            self.props = parse_css_data()
            self.re_name = re.compile(r"([a-zA-Z-]+)\s*:[^:;{}]*$")
            self.re_value = re.compile(r"^(?:\s*(:)|([ \t]*))([^:]*)([;}])")
            self.re_trigger = re.compile(r"\$(?:\d+|\{\d+\:([^}]+)\})")

        if match_selector(view, pt, "meta.property-value.css meta.function-call"):
            items = self.complete_function_argument(view, prefix, pt)
        elif match_selector(view, pt, "meta.property-value.css"):
            items = self.complete_property_value(view, prefix, pt)
        else:
            items = self.complete_property_name(view, prefix, pt)

        if items:
            return sublime.CompletionList(items, sublime.INHIBIT_WORD_COMPLETIONS)
        return None

    def complete_property_name(self, view, prefix, pt):
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

                if next_none_whitespace(view, pt) == ";":
                    suffix = ""
                else:
                    suffix = "$0;"

                for value in values:
                    if isinstance(value, str):
                        desc = self.re_trigger.sub(r"\1", value)
                        snippet = value
                    else:
                        desc, snippet = value

                    if "(" in snippet:
                        kind = KIND_CSS_FUNCTION
                    else:
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
