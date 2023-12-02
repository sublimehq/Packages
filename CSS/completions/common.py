def get_common_values():
    common_values = {
        "animation-direction": ["alternate", "alternate-reverse", "normal", "reverse"],
        "absolute-size": [
            "xx-small",
            "x-small",
            "small",
            "medium",
            "large",
            "x-large",
            "xx-large",
        ],
        "absolute-weight": [
            "100",
            "200",
            "300",
            "400",
            "500",
            "600",
            "700",
            "800",
            "900",
            "normal",
            "bold",
        ],
        "axis": ["block", "inline", "vertical", "horizontal"],
        "baseline-position": ["firstbaseline", "lastbaseline", "baseline"],
        "basic-shape": [
            ["circle()", "circle($1)"],
            ["ellipse()", "ellipse($1)"],
            ["inset()", "inset($1)"],
            ["polygon()", "polygon($1)"],
        ],
        "blend-mode": [
            "normal",
            "multiply",
            "screen",
            "overlay",
            "darken",
            "lighten",
            "color-dodge",
            "color-burn",
            "hard-light",
            "soft-light",
            "difference",
            "exclusion",
            "hue",
            "saturation",
            "color",
            "luminosity",
        ],
        "border-style": [
            "none",
            "hidden",
            "dotted",
            "dashed",
            "solid",
            "double",
            "groove",
            "ridge",
            "inset",
            "outset",
        ],
        "border-width": ["thin", "medium", "thick"],
        "break-before-after": [
            "always",
            "left",
            "right",
            "recto",
            "verso",
            "page",
            "column",
            "region",
        ],
        "break-inside": ["auto", "avoid", "avoid-page", "avoid-column", "avoid-region"],
        "calc": [
            ["acos()", "acos($1)"],
            ["asin()", "asin($1)"],
            ["atan()", "atan($1)"],
            ["atan2()", "atan2($1)"],
            ["calc()", "calc($1)"],
            ["clamp()", "clamp(${1:0}, ${2:0}, ${3:0})"],
            ["cos()", "cos($1)"],
            ["exp()", "exp($1)"],
            ["hypot()", "hypot($1)"],
            ["log()", "log($1)"],
            ["max()", "max(${1:0}, ${2:0})"],
            ["min()", "min(${1:0}, ${2:0})"],
            ["mod()", "mod(${1:0}, ${2:0})"],
            ["pow()", "pow(${1:0}, ${2:0})"],
            ["rem()", "rem(${1:0}, ${2:0})"],
            ["round()", "round(${1:0}, ${2:0}, ${3:0})"],
            ["sign()", "sign($1)"],
            ["sin()", "sin($1)"],
            ["sqrt()", "sqrt($1)"],
            ["tan()", "tan($1)"],
        ],
        "caret-color": ["auto", "<color>"],
        "caret-shape": ["auto", "bar", "block", "underscore"],
        "color": [
            "currentColor",
            "transparent",
            ["rgb()", "rgb(${1:0}, ${2:0}, ${3:0}${4: / ${5:1.0}})"],
            ["rgba()", "rgba(${1:0}, ${2:0}, ${3:0}, ${4:1.0})"],
            ["hsl()", "hsl(${1:0}, ${2:100%}, ${3:50%}${4: / ${5:1.0}})"],
            ["hsla()", "hsla(${1:0}, ${2:100%}, ${3:50%}, ${4:1.0})"],
            ["hwb()", "hwb(${1:0}, ${2:100%}, ${3:50%}${4: / ${5:1.0}})"],
            ["lab()", "lab(${1:0%}, ${2:0}, ${3:0}${4: / ${5:1.0}})"],
            ["lch()", "lch(${1:0%}, ${2:0.0}, ${3:0.0}${4: / ${5:1.0}})"],
            ["oklab()", "oklab(${1:0%}, ${2:0}, ${3:0}${4: / ${5:1.0}})"],
            ["oklch()", "oklch(${1:0%}, ${2:0.0}, ${3:0.0}${4: / ${5:1.0}})"],
            # Named colors
            "aliceblue",
            "antiquewhite",
            "aqua",
            "aquamarine",
            "azure",
            "beige",
            "bisque",
            "black",
            "blanchedalmond",
            "blue",
            "blueviolet",
            "brown",
            "burlywood",
            "cadetblue",
            "chartreuse",
            "chocolate",
            "coral",
            "cornflowerblue",
            "cornsilk",
            "crimson",
            "cyan",
            "darkblue",
            "darkcyan",
            "darkgoldenrod",
            "darkgray",
            "darkgrey",
            "darkgreen",
            "darkkhaki",
            "darkmagenta",
            "darkolivegreen",
            "darkorange",
            "darkorchid",
            "darkred",
            "darksalmon",
            "darkseagreen",
            "darkslateblue",
            "darkslategray",
            "darkslategrey",
            "darkturquoise",
            "darkviolet",
            "deeppink",
            "deepskyblue",
            "dimgray",
            "dimgrey",
            "dodgerblue",
            "firebrick",
            "floralwhite",
            "forestgreen",
            "fuchsia",
            "gainsboro",
            "ghostwhite",
            "gold",
            "goldenrod",
            "gray",
            "grey",
            "green",
            "greenyellow",
            "honeydew",
            "hotpink",
            "indianred",
            "indigo",
            "ivory",
            "khaki",
            "lavender",
            "lavenderblush",
            "lawngreen",
            "lemonchiffon",
            "lightblue",
            "lightcoral",
            "lightcyan",
            "lightgoldenrodyellow",
            "lightgray",
            "lightgrey",
            "lightgreen",
            "lightpink",
            "lightsalmon",
            "lightseagreen",
            "lightskyblue",
            "lightslategray",
            "lightslategrey",
            "lightsteelblue",
            "lightyellow",
            "lime",
            "limegreen",
            "linen",
            "magenta",
            "maroon",
            "mediumaquamarine",
            "mediumblue",
            "mediumorchid",
            "mediumpurple",
            "mediumseagreen",
            "mediumslateblue",
            "mediumspringgreen",
            "mediumturquoise",
            "mediumvioletred",
            "midnightblue",
            "mintcream",
            "mistyrose",
            "moccasin",
            "navajowhite",
            "navy",
            "oldlace",
            "olive",
            "olivedrab",
            "orange",
            "orangered",
            "orchid",
            "palegoldenrod",
            "palegreen",
            "paleturquoise",
            "palevioletred",
            "papayawhip",
            "peachpuff",
            "peru",
            "pink",
            "plum",
            "powderblue",
            "purple",
            "rebeccapurple",
            "red",
            "rosybrown",
            "royalblue",
            "saddlebrown",
            "salmon",
            "sandybrown",
            "seagreen",
            "seashell",
            "sienna",
            "silver",
            "skyblue",
            "slateblue",
            "slategray",
            "slategrey",
            "snow",
            "springgreen",
            "steelblue",
            "tan",
            "teal",
            "thistle",
            "tomato",
            "turquoise",
            "violet",
            "wheat",
            "white",
            "whitesmoke",
            "yellow",
            "yellowgreen",
        ],
        "container-type": ["normal", "size", "inline-size"],
        "content-distribution": ["space-between", "space-around", "space-evenly", "stretch"],
        "content-position": ["center", "start", "end", "flex-start", "flex-end"],
        "counter-style": [["symbols()", "symbols($1)"]],
        "counter-symbols": [
            "cyclic",
            "numeric",
            "alphabetic",
            "symbolic",
            "additive",
            "fixed",
        ],
        "ending-shape": ["circle", "ellipse"],
        "fill-rule": ["nonzero", "evenodd"],
        "filter-function": [
            ["blur()", "blur($1)"],
            ["brightness()", "brightness($1)"],
            ["contrast()", "contrast($1)"],
            ["drop-shadow()", "drop-shadow($1)"],
            ["grayscale()", "grayscale($1)"],
            ["hue-rotate()", "hue-rotate($1)"],
            ["invert()", "invert($1)"],
            ["opacity()", "opacity($1)"],
            ["saturate()", "saturate($1)"],
            ["sepia()", "sepia($1)"],
        ],
        "font-variant-alternates": [
            "normal",
            "historical-forms",
            ["stylistic()", "stylistic($1)"],
            ["styleset()", "styleset($1)"],
            ["character-variant()", "character-variant($1)"],
            ["swash()", "swash($1)"],
            ["ornaments()", "ornaments($1)"],
            ["annotation()", "annotation($1)"],
        ],
        "generic-font-name": ["serif", "sans-serif", "cursive", "fantasy", "monospace"],
        "gradient": [
            ["conic-gradient()", "conic-gradient($1)"],
            ["linear-gradient()", "linear-gradient($1)"],
            ["radial-gradient()", "radial-gradient($1)"],
            ["repeating-conic-gradient()", "repeating-conic-gradient($1)"],
            ["repeating-linear-gradient()", "repeating-linear-gradient($1)"],
            ["repeating-radial-gradient()", "repeating-radial-gradient($1)"],
        ],
        "grid": [
            ["repeat()", "repeat(${1:2}, ${2:1fr})"],
            ["minmax()", "minmax(${1:100px}, ${2:1fr})"],
        ],
        "image": [
            "<url>",
            ["image()", "image($1)"],
            ["image-set()", "image-set($1)"],
            ["element()", "element($1)"],
            ["paint()", "paint($1)"],
            ["cross-fade()", "cross-fade($1)"],
            ["linear-gradient()", "linear-gradient($1)"],
            ["repeating-linear-gradient()", "repeating-linear-gradient($1)"],
            ["radial-gradient()", "radial-gradient($1)"],
            ["repeating-radial-gradient()", "repeating-radial-gradient($1)"],
            ["conic-gradient()", "conic-gradient($1)"],
        ],
        "image-tags": ["ltr", "rtl"],
        "line-style": [
            "none",
            "hidden",
            "dotted",
            "dashed",
            "solid",
            "double",
            "groove",
            "ridge",
            "inset",
            "outset",
        ],
        "leader-type": ["dotted", "solid", "space"],
        "list-style-type": [
            "none",
            "inline",
            "disc",
            "circle",
            "square",
            "decimal",
            "decimal-leading-zero",
            "arabic-indic",
            "binary",
            "bengali",
            "cambodian",
            "khmer",
            "devanagari",
            "gujarati",
            "gurmukhi",
            "kannada",
            "lower-hexadecimal",
            "lao",
            "malayalam",
            "mongolian",
            "myanmar",
            "octal",
            "oriya",
            "persian",
            "urdu",
            "telugu",
            "tibetan",
            "thai",
            "upper-hexadecimal",
            "lower-roman",
            "upper-roman",
            "lower-greek",
            "lower-alpha",
            "lower-latin",
            "upper-alpha",
            "upper-latin",
            "afar",
            "ethiopic-halehame-aa-et",
            "ethiopic-halehame-aa-er",
            "amharic",
            "ethiopic-halehame-am-et",
            "amharic-abegede",
            "ethiopic-abegede-am-et",
            "cjk-earthly-branch",
            "cjk-heavenly-stem",
            "ethiopic",
            "ethiopic-halehame-gez",
            "ethiopic-abegede",
            "ethiopic-abegede-gez",
            "hangul-consonant",
            "hangul",
            "lower-norwegian",
            "oromo",
            "ethiopic-halehame-om-et",
            "sidama",
            "ethiopic-halehame-sid-et",
            "somali",
            "ethiopic-halehame-so-et",
            "tigre",
            "ethiopic-halehame-tig",
            "tigrinya-er",
            "ethiopic-halehame-ti-er",
            "tigrinya-er-abegede",
            "ethiopic-abegede-ti-er",
            "tigrinya-et",
            "ethiopic-halehame-ti-et",
            "tigrinya-et-abegede",
            "ethiopic-abegede-ti-et",
            "upper-greek",
            "upper-norwegian",
            "asterisks",
            "footnotes",
            "hebrew",
            "armenian",
            "lower-armenian",
            "upper-armenian",
            "georgian",
            "cjk-ideographic",
            "hiragana",
            "katakana",
            "hiragana-iroha",
            "katakana-iroha",
        ],
        "overflow-position": ["unsafe", "safe"],
        "position": ["<side-or-corner>", "center"],
        "relative-size": ["larger", "smaller"],
        "relative-weight": ["bolder", "lighter"],
        "repeat-style": [
            "repeat",
            "repeat-x",
            "repeat-y",
            "space",
            "round",
            "no-repeat",
        ],
        "scroller": ["root", "nearest"],
        "self-position": [
            "center",
            "start",
            "end",
            "self-start",
            "self-end",
            "flex-start",
            "flex-end",
        ],
        "shape-radius": ["closest-side", "farthest-side"],
        "side-or-corner": ["left", "right", "top", "bottom"],
        "timing-function": [
            "linear",
            "ease",
            "ease-in",
            "ease-out",
            "ease-in-out",
            "step-start",
            "step-end",
            ["cubic-bezier()", "cubic-bezier(${1:0.0}, ${2:0.0}, ${3:1.0}, ${4:1.0})"],
            ["steps()", "steps(${1:2}, ${2:start})"],
        ],
        "type-or-unit": [
            "string",
            "color",
            "url",
            "integer",
            "number",
            "length",
            "angle",
            "time",
            "frequency",
            "cap",
            "ch",
            "em",
            "ex",
            "ic",
            "lh",
            "rlh",
            "rem",
            "vb",
            "vi",
            "vw",
            "vh",
            "vmin",
            "vmax",
            "mm",
            "Q",
            "cm",
            "in",
            "pt",
            "pc",
            "px",
            "deg",
            "grad",
            "rad",
            "turn",
            "ms",
            "s",
            "Hz",
            "kHz",
            "%",
        ],
        "url": [["url()", "url($1)"]],
    }

    resolved_values = {}

    def resolve(vals):
        vals_resolved = []
        for val in vals:
            if val[0] == "<" and val[-1] == ">":
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
