// SYNTAX TEST reindent "Packages/JavaScript/JavaScript.sublime-syntax"

export default {
    default: 'value',
    case() {
        const map1 = {
            default: 'value'
        }
        const list1 = [
            default
        ]

        if (foo == true)
            return 1
        else if (bar == true)
            return 2
        else
            return 3

        switch (map1) {
        case null:
            return 0
        default:
            const map2 = {
                default: 'value'
            }
            const list2 = [
                default,
                () => {
                    switch (map2) {
                    default:
                        return 0
                    case null:
                        return 1
                    }
                }
            ]
        }
    }
}

/*
mapping definitions
*/

const maps = {
    case: "case",
    default: "default",
    switch: "switch",
    if: "if",
    elif: "elif",
    else: "else",
    function: "function",
    object: {
        "key": "value",
    },
    list1: [
        "switch",
        "case"
    ],
    list3: ["value1", "value2"]
};

/*
list definitions
*/

const list = [
    case,
    default,
    switch,
    if,
    elif,
    else,
    [
        case,
        default
    ],
    ["value1", "value2"]
]

/*
functions
*/

function name(arg1, arg2) {
    return 0
}

/*
if statements without braces
*/

if (foo == true)
    return 1
else if (bar == true)
    return 2
else
    return 3

/*
if statements with braces
*/

if (foo == true) {
    return 1
} else if (bar == true) {
    return 2
} else {
    return 3
}

/*
nested if statements
*/

if (foo == true) {
    if (foo == true)
        return 1
    else if (bar == true)
        return 2
    else
        return 3
} else if (bar == true) {
    if (foo == true) {
        return 1
    } else if (bar == true) {
        return 2
    } else {
        return 3
    }
} else {
    return 3
}

/*
switch case statements
*/

switch (variable) {
case 0:
    result = 0
    break
case 10:
    result = 1
    break
case 20: // comment
    result = 2
    break
case 30:
    {
        result = 4
        break
    }
default:
    result = -1
}