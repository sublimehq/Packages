from .common import get_common_values


def get_func_args():
    common_values = get_common_values()
    func_args = {
        "abs": ["<calc>"],
        "asin": ["<calc>"],
        "atan": ["<calc>"],
        "atan2": ["<calc>"],
        "attr": ["<color>", "<type-or-unit>"],
        "blur": ["<calc>"],
        "brightness": ["<calc>"],
        "calc": [["attr()", "attr($1)"], "<calc>"],
        "circle": ["<calc>", "<shape-radius>", "at", "<position>"],
        "clamp": [["attr()", "attr($1)"], "<calc>"],
        "color-mix": ["<color>", "<color-interpolation-method>"],
        "conic-gradient": ["from", "at", "<position>", "<color>"],
        "cos": ["<calc>"],
        "contrast": [],
        "counter": ["<counter-style>"],
        "counters": ["<counter-style>"],
        "cross-fade": ["<image>", "<color>"],
        "cubic-bezier": ["<calc>"],
        "drop-shadow": ["<calc>", "<color>"],
        "element": [],
        "ellipse": ["<calc>", "<shape-radius>", "at", "<position>"],
        "env": [],
        "exp": ["<calc>"],
        "filter": ["<filter-function>", "<image>"],
        "fit-content": [],
        "grayscale": ["<calc>"],
        "hsl": ["<calc>"],
        "hsla": ["<calc>"],
        "hwb": ["<calc>", "none"],
        "hue-rotate": ["<calc>"],
        "hypot": ["<calc>"],
        "image": ["<image-tags>", "<url>", "<color>"],
        "image-set": [["type()", "type($1)"], "<url>", "<color>"],
        "inset": ["<calc>", "round"],
        "invert": ["<calc>"],
        "lab": ["<calc>", "none"],
        "lch": ["<calc>", "none"],
        "leader": ["<leader-type>"],
        "light-dark": ["<color>"],
        "linear-gradient": ["<side-or-corner>", "<color>", "to"],
        "log": ["<calc>"],
        "matrix": ["<calc>"],
        "matrix3d": ["<calc>"],
        "max": [["attr()", "attr($1)"], "<calc>"],
        "min": [["attr()", "attr($1)"], "<calc>"],
        "minmax": ["min-content", "max-content", "auto"],
        "mod": ["<calc>"],
        "oklab": ["<calc>", "none"],
        "oklch": ["<calc>", "none"],
        "opacity": ["<calc>"],
        "path": ["<fill-rule>"],
        "paint": [],
        "palette-mix": ["<calc>", "<color-interpolation-method>", "<font-palette>",],
        "perspective": ["<calc>"],
        "polygon": ["<calc>", "<fill-rule>"],
        "pow": ["<calc>"],
        "radial-gradient": ["<radial-gradient-syntax>"],
        "ray": ["<position>", "<ray-size>", "at", "contain"],
        "rect": ["<calc>", "auto", "round"],
        "rem": ["<calc>"],
        "repeat": ["<calc>", "auto-fill", "auto-fit"],
        "repeating-conic-gradient": ["from", "at", "<position>", "<color>"],
        "repeating-linear-gradient": ["<side-or-corner>", "<color>", "to"],
        "repeating-radial-gradient": ["<radial-gradient-syntax>"],
        "rgb": ["<calc>"],
        "rgba": ["<calc>"],
        "rotate": ["<calc>"],
        "rotate3d": ["<calc>"],
        "rotateX": ["<calc>"],
        "rotateY": ["<calc>"],
        "rotateZ": ["<calc>"],
        "round": ["<calc>", "nearest", "up", "down", "to-zero"],
        "saturate": ["<calc>"],
        "scale": ["<calc>"],
        "scale3d": ["<calc>"],
        "scaleX": ["<calc>"],
        "scaleY": ["<calc>"],
        "scaleZ": ["<calc>"],
        "scroll": ["<axis>", "<scroller>"],
        "skew": ["<calc>"],
        "skewX": ["<calc>"],
        "skewY": ["<calc>"],
        "sepia": ["<calc>"],
        "sign": ["<calc>"],
        "sin": ["<calc>"],
        "sqrt": ["<calc>"],
        "steps": ["<calc>", "end", "middle", "start"],
        "symbols":["<symbols-type>"],
        "tan": ["<calc>"],
        "target-counter": ["<url>", "<counter-style>"],
        "target-counters": ["<url>", "<counter-style>"],
        "target-text": ["<url>", "content", "before", "after", "first-letter"],
        "toggle": ["<calc>", "<color>"],
        "translate": ["<calc>"],
        "translate3d": ["<calc>"],
        "translateX": ["<calc>"],
        "translateY": ["<calc>"],
        "translateZ": ["<calc>"],
        "var": [],
        "xywh": ["<calc>", "auto", "round"],
    }

    completions = {}

    for func, args in func_args.items():
        # args that are allowed for all properties
        expanded_args = [["var()", "var($1)"]]

        # Determine which args are available for the current property name
        for arg in args:
            if arg[0] == "<" and arg[-1] == ">":
                key = arg[1:-1]
                if key in common_values:
                    expanded_args += common_values[key]
            else:
                expanded_args.append(arg)

        completions[func] = expanded_args

    return completions
