#!/usr/bin/env python
# coding: utf-8


from .common import get_common_values


def get_func_args():
    common_values = get_common_values()
    func_args = {
        "attr": ["<color>", "<type-or-unit>"],
        "blur": ["<calc>"],
        "brightness": ["<calc>"],
        "calc": [["attr()", "attr($1)"], "<calc>"],
        "circle": ["<calc>", "<shape-radius>", "at", "<position>"],
        "clamp": [["attr()", "attr($1)"], "<calc>"],
        "conic-gradient": ["from", "at", "<position>", "<color>"],
        "contrast": [],
        "counter": ["<counter-style>"],
        "counters": ["<counter-style>"],
        "cross-fade": ["<image>", "<color>"],
        "cubic-bezier": ["<calc>"],
        "drop-shadow": ["<calc>", "<color>"],
        "element": [],
        "ellipse": ["<calc>", "<shape-radius>", "at", "<position>"],
        "env": [],
        "filter": ["<filter-function>", "<image>"],
        "fit-content": [],
        "grayscale": ["<calc>"],
        "hsl": ["<calc>"],
        "hsla": ["<calc>"],
        "hue-rotate": ["<calc>"],
        "image": ["<image-tags>", "<url>", "<color>"],
        "image-set": [["type()", "type($1)"], "<url>", "<color>"],
        "inset": ["<calc>", "round"],
        "invert": ["<calc>"],
        "leader": ["<leader-type>"],
        "linear-gradient": ["<side-or-corner>", "<color>", "to"],
        "matrix": ["<calc>"],
        "matrix3d": ["<calc>"],
        "max": [["attr()", "attr($1)"], "<calc>"],
        "min": [["attr()", "attr($1)"], "<calc>"],
        "minmax": ["min-content", "max-content", "auto"],
        "opacity": ["<calc>"],
        "path": ["<fill-rule>"],
        "paint": [],
        "perspective": ["<calc>"],
        "polygon": ["<calc>", "<fill-rule>"],
        "radial-gradient": ["<ending-shape>", "<size>", "at", "<position>", "<color>"],
        "rect": ["<calc>", "auto"],
        "repeat": ["<calc>", "auto-fill", "auto-fit"],
        "repeating-conic-gradient": ["from", "at", "<position>", "<color>"],
        "repeating-linear-gradient": ["<side-or-corner>", "<color>", "to"],
        "repeating-radial-gradient": [
            "<ending-shape>",
            "<size>",
            "at",
            "<position>",
            "<color>",
        ],
        "rgb": ["<calc>"],
        "rgba": ["<calc>"],
        "rotate": ["<calc>"],
        "rotate3d": ["<calc>"],
        "rotateX": ["<calc>"],
        "rotateY": ["<calc>"],
        "rotateZ": ["<calc>"],
        "saturate": ["<calc>"],
        "scale": ["<calc>"],
        "scale3d": ["<calc>"],
        "scaleX": ["<calc>"],
        "scaleY": ["<calc>"],
        "scaleZ": ["<calc>"],
        "skew": ["<calc>"],
        "skewX": ["<calc>"],
        "skewY": ["<calc>"],
        "sepia": ["<calc>"],
        "steps": ["<calc>", "end", "middle", "start"],
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
