// SYNTAX TEST reindent-unchanged "Packages/JavaScript/JavaScript.sublime-syntax"

/*
 * Export definitions
 */

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
 * mapping definitions
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
 * list definitions
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

/**
 * This is my first JavaScript program.
 * This will print 'Hello World' as the output
 **/

function testIfElseIndentationNoBraces(v)
{
    /**
     * comment
     */
    if (v.isNull() == true) return fun(v);

    if (v.isNull() == true)
        return false;

    if (v.isNull() == true)
        return false;
    else
    {
        if (v.endsWith("("))
            return false;
        else if (v.endsWith(")"))
            return true;
        else if (v.endsWith("\""))
            return true;
        else if (v.endsWith("\\"))
            return true;
        else if (v.endsWith('('))
            return false;
        else if (v.endsWith(')'))
            return true;
        else if (v.endsWith('\''))
            return true;
        else if (v.endsWith('\\'))
            return true;
        else
            return false;

        if (v.endsWith("baz"))
            return false;
        return true;
    }
}

function testIfElseIndentationNoBracesWithLineComments(v)
{
    /**
     * comment
     */

    // line comment
    if (v.isNull() == true) return fun(v);

    // line comment
    if (v.isNull() == true)
        // line comment
        return false;

    // line comment
    if (v.isNull() == true)
        // line comment
        return false;
    // line comment
    else
    // line comment
    {
        // line comment
        if (v.endsWith("("))
            // line comment
            return false;
        // line comment
        else if (v.endsWith(")"))
            // line comment
            return true;
        // line comment
        else if (v.endsWith("\""))
            // line comment
            return true;
        // line comment
        else if (v.endsWith("\\"))
            // line comment
            return true;
        // line comment
        else if (v.endsWith('('))
            // line comment
            return false;
        // line comment
        else if (v.endsWith(')'))
            // line comment
            return true;
        // line comment
        else if (v.endsWith('\''))
            // line comment
            return true;
        // line comment
        else if (v.endsWith('\\'))
            // line comment
            return true;
        // line comment
        else
            // line comment
            return false;

        // line comment
        if (v.endsWith("baz"))
            // line comment
            return false;
        // line comment
        return true;
    }
}

function testIfElseIndentationNoBracesMultiLine(v)
{
    // line comment
    if (v.isNull() == true
        || v.endsWith(")"))
        // line comment
        return false;
    else if (v.isNull() == true
        || v.endsWith("("))
        return false;
    // line comment
    return true;
}

function testIfElseIndentationNoBracesButComments(v)
{
    if (v.isNull() == true) return fun(v); /**/ // ; "comment" ()

    if (v.isNull() == true)                /**/ // ; "comment" ()
        return false;                      /**/ // ; "comment" ()

    if (v.isNull() == true)                /**/ // ; "comment" ()
        return false;                      /**/ // ; "comment" ()
    else                                   /**/ // ; "comment" ()
    {                                      /**/ // ; "comment" ()
        if (v.endsWith("("))               /**/ // ; "comment" ()
            return false;                  /**/ // ; "comment" ()
        else if (v.endsWith(")"))          /**/ // ; "comment" ()
            return true;                   /**/ // ; "comment" ()
        else if (v.endsWith("\""))         /**/ // ; "comment" ()
            return true;                   /**/ // ; "comment" ()
        else if (v.endsWith("\\"))         /**/ // ; "comment" ()
            return true;                   /**/ // ; "comment" ()
        else if (v.endsWith('('))          /**/ // ; "comment" ()
            return false;                  /**/ // ; "comment" ()
        else if (v.endsWith(')'))          /**/ // ; "comment" ()
            return true;                   /**/ // ; "comment" ()
        else if (v.endsWith('\''))         /**/ // ; "comment" ()
            return true;                   /**/ // ; "comment" ()
        else if (v.endsWith('\\'))         /**/ // ; "comment" ()
            return true;                   /**/ // ; "comment" ()
        else                               /**/ // ; "comment" ()
            return false;                  /**/ // ; "comment" ()
    }                                      /**/ // ; "comment" ()
}

function testIfElseIndentationNoBracesButBlockCommentsPart1(v)
{
    /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ true /*(*/ ) /*(*/ return /*(*/ fun /*(*/ ( /*(*/ ) /*(*/ ; // ; "comment" ()

    /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ true /*(*/ ) /*(*/  // ; "comment" ()
        return false; /*(*/  // ; "comment" ()

    /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ true /*(*/ ) /*(*/ // ; "comment" ()
        return false; /*(*/ // ; "comment" ()
    else /*(*/ // ; "comment" ()
    { /*(*/ // ; "comment" ()
        /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ "(") /*(*/ ) /*(*/ // ; "comment" ()
            return false; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ ")") /*(*/ ) /*(*/ // ; "comment" ()
            return true; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ "\"") /*(*/ ) /*(*/ // ; "comment" ()
            return true; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ "\\") /*(*/ ) /*(*/ // ; "comment" ()
            return true; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ '(') /*(*/ ) /*(*/ // ; "comment" ()
            return false; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ ')') /*(*/ ) /*(*/ // ; "comment" ()
            return true; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ '\'') /*(*/ ) /*(*/ // ; "comment" ()
            return true; /*(*/ // ; "comment" ()
        else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ '\\') /*(*/ ) /*(*/ // ; "comment" ()
            return true; /*(*/ // ; "comment" ()
        else /*(*/ // ; "comment" ()
            return false; /*(*/ // ; "comment" ()
    } /*(*/ // ; "comment" ()
}

function testIfElseIndentationNoBracesButBlockCommentsPart2(v)
{
    /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ true /*)*/ ) /*)*/ return /*)*/ fun /*)*/ ( /*)*/ ) /*)*/ ; // ; "comment" ()

    /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ true /*)*/ ) /*)*/ // ; "comment" ()
        return false; /*)*/ // ; "comment" ()

    /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ true /*)*/ ) /*)*/ // ; "comment" ()
        return false; /*)*/ // ; "comment" ()
    else /*)*/ // ; "comment" ()
    { /*)*/ // ; "comment" ()
        /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ "(") /*)*/ ) /*)*/ // ; "comment" ()
            return false; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ ")") /*)*/ ) /*)*/ // ; "comment" ()
            return true; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ "\"") /*)*/ ) /*)*/ // ; "comment" ()
            return true; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ "\\") /*)*/ ) /*)*/ // ; "comment" ()
            return true; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ '(') /*)*/ ) /*)*/ // ; "comment" ()
            return false; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ ')') /*)*/ ) /*)*/ // ; "comment" ()
            return true; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ '\'') /*)*/ ) /*)*/ // ; "comment" ()
            return true; /*)*/ // ; "comment" ()
        else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ '\\') /*)*/ ) /*)*/ // ; "comment" ()
            return true; /*)*/ // ; "comment" ()
        else /*)*/ // ; "comment" ()
            return false; /*)*/ // ; "comment" ()
    } /*)*/ // ; "comment" ()
}

function testIfElseIndentationWithBraces(v) {

    if (v.isNull() == true) { return fun(v); }

    if (v.isNull() == true) {
        return false;
    }

    if (v.isNull() == true) {
        return false;
    } else {
        if (v.endsWith("(")) {
            return false;
        } else if (v.endsWith(")")) {
            return true;
        } else if (v.endsWith("\"")) {
            return true;
        } else if (v.endsWith("\\")) {
            return true;
        } else if (v.endsWith('(')) {
            return false;
        } else if (v.endsWith(')')) {
            return true;
        } else if (v.endsWith('\'')) {
            return true;
        } else if (v.endsWith('\\')) {
            return true;
        } else {
            return false;
        }
    }

    if (v.isNull() == true)
    {
        return
    }
    if (v.isNull() == true)
    {
        return false
    }
    if (v.isNull() == true)
    {
        return false;
    }

    if (v.isNull() == true)
    {
        return false;
    }
    else
    {
        if (v.endsWith("("))
        {
            return false;
        }
        else if (v.endsWith(")"))
        {
            return true;
        }
        else if (v.endsWith("\""))
        {
            return true;
        }
        else if (v.endsWith("\\"))
        {
            return true;
        }
        else if (v.endsWith('('))
        {
            return false;
        }
        else if (v.endsWith(')'))
        {
            return true;
        }
        else if (v.endsWith('\''))
        {
            return true;
        }
        else if (v.endsWith('\\'))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}

function testIfElseIndentationWithBracesAndLineComments(v) {

    // comment
    if (v.isNull() == true) { return fun(v); }

    // comment
    if (v.isNull() == true) {
        // comment
        return false;
    }

    // comment
    if (v.isNull() == true) {
        // comment
        return false;
    } else {
        // comment
        if (v.endsWith("(")) {
            // comment
            return false;
        // comment
        } else if (v.endsWith(")")) {
            // comment
            return true;
        // comment
        } else if (v.endsWith("\"")) {
            // comment
            return true;
        // comment
        } else if (v.endsWith("\\")) {
            // comment
            return true;
        // comment
        } else if (v.endsWith('(')) {
            // comment
            return false;
        // comment
        } else if (v.endsWith(')')) {
            // comment
            return true;
        // comment
        } else if (v.endsWith('\'')) {
            // comment
            return true;
        // comment
        } else if (v.endsWith('\\')) {
            // comment
            return true;
        // comment
        } else {
            // comment
            return false;
        }
    }

    // comment
    if (v.isNull() == true)
    {
        // comment
        return
    }
    // comment
    if (v.isNull() == true)
    {
        // comment
        return false
    }
    // comment
    if (v.isNull() == true)
    {
        // comment
        return false;
    }

    // comment
    if (v.isNull() == true)
    {
        // comment
        return false;
    }
    // comment
    else
    {
        // comment
        if (v.endsWith("("))
        {
            // comment
            return false;
        }
        // comment
        else if (v.endsWith(")"))
        {
            // comment
            return true;
        }
        // comment
        else if (v.endsWith("\""))
        {
            // comment
            return true;
        }
        // comment
        else if (v.endsWith("\\"))
        {
            // comment
            return true;
        }
        // comment
        else if (v.endsWith('('))
        {
            // comment
            return false;
        }
        // comment
        else if (v.endsWith(')'))
        {
            // comment
            return true;
        }
        // comment
        else if (v.endsWith('\''))
        {
            // comment
            return true;
        }
        // comment
        else if (v.endsWith('\\'))
        {
            // comment
            return true;
        }
        // comment
        else
        {
            // comment
            return false;
        }
    }
}

function testIfElseIndentationWithBracesAndComment(v) {

    if (v.isNull() == true) { return }            /**/ // ; "comment" ()

    if (v.isNull() == true) { return fun(v) }     /**/ // ; "comment" ()

    if (v.isNull() == true) { return fun(v); }    /**/ // ; "comment" ()

    if (v.isNull() == true) {                     /**/ // ; "comment" ()
        return false;                             /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()

    if (v.isNull() == true) {                     /**/ // ; "comment" ()
        return false;                             /**/ // ; "comment" ()
    } else {                                      /**/ // ; "comment" ()
        if (v.endsWith("(")) {                    /**/ // ; "comment" ()
            return false;                         /**/ // ; "comment" ()
        } else if (v.endsWith(")")) {             /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        } else if (v.endsWith("\"")) {            /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        } else if (v.endsWith("\\")) {            /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        } else if (v.endsWith('(')) {             /**/ // ; "comment" ()
            return false;                         /**/ // ; "comment" ()
        } else if (v.endsWith(')')) {             /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        } else if (v.endsWith('\'')) {            /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        } else if (v.endsWith('\\')) {            /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        } else {                                  /**/ // ; "comment" ()
            return false;                         /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()

    if (v.isNull() == true)                       /**/ // ; "comment" ()
    {                                             /**/ // ; "comment" ()
        return                                    /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()
    if (v.isNull() == true)                       /**/ // ; "comment" ()
    {                                             /**/ // ; "comment" ()
        return false                              /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()
    if (v.isNull() == true)                       /**/ // ; "comment" ()
    {                                             /**/ // ; "comment" ()
        return false;                             /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()

    if (v.isNull() == true)                       /**/ // ; "comment" ()
    {                                             /**/ // ; "comment" ()
        return false;                             /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()
    else                                          /**/ // ; "comment" ()
    {                                             /**/ // ; "comment" ()
        if (v.endsWith("("))                      /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return false;                         /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith(")"))                 /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith("\""))                /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith("\\"))                /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith('('))                 /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return false;                         /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith(')'))                 /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith('\''))                /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else if (v.endsWith('\\'))                /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return true;                          /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
        else                                      /**/ // ; "comment" ()
        {                                         /**/ // ; "comment" ()
            return false;                         /**/ // ; "comment" ()
        }                                         /**/ // ; "comment" ()
    }                                             /**/ // ; "comment" ()
}

function testSwitchCaseIndentation(v) {
    switch (s) {
    case:
    case: break
    case "(": break
    case ")": break;
    case ":": break;
    case ";": break;
    case:
        break;
    case ":"
        break;
    case ':':
        break;
    case NestedIfStatement:
        if (s.endsWith() = '(')
            return;
        break;
    case NestedSwitchCase:
        switch (v) {
        case 0: break;
        case 2:
            break;
        }
        break;
    case NestedSwitchCaseBlock:
        {
            switch (v) {
            case 0: break;
            case 2:
                break;
            }
            break;
        }
    case NestedSwitchCaseBlock2:
        {
            switch (v) {
            case 0: break;
            case 2:
                break;
            }
        }
        break;
    default:
        break;
    }
}

function testSwitchCaseIndentationWithLineComments(v) {
    switch (s) {                 // comments
    case                         // comments
    case:                        // comments
    case break                   // comments
    case: break                  // comments
    case "(": break              // comments
    case ")": break;             // comments
    case ":": break;             // comments
    case ";": break;             // comments
    case                         // comments
        break;                   // comments
    case:                        // comments
        break;                   // comments
    case ":"                     // comments
        break;                   // comments
    case ':':                    // comments
        break;                   // comments
    case NestedIfStatement:      // comments
        if (s.endsWith() = '(')  // comments
            return;              // comments
        break;                   // comments
    case NestedSwitchCase:       // comments
        switch (v) {             // comments
        case 0: break;           // comments
        case 2:                  // comments
            break;               // comments
        }                        // comments
        break;                   // comments
    case NestedSwitchCaseBlock:  // comments
        {                        // comments
            switch (v) {         // comments
            case 0: break;       // comments
            case 2:              // comments
                break;           // comments
            }                    // comments
            break;               // comments
        }                        // comments
    case NestedSwitchCaseBlock2: // comments
        {                        // comments
            switch (v) {         // comments
            case 0: break;       // comments
            case 2:              // comments
                break;           // comments
            }                    // comments
        }                        // comments
        break;                   // comments
    default:                     // comments
        break;                   // comments
    }                            // comments
}                                // comments

function testForIndentation(v)  {

    for (let i = 0; i < 10; i++)
        System.out.println("Row " + i);

    for (let i = 0; i < 10; i++) {
        System.out.println("Row " + i);
    }

    for (let i = 0; i < 10; i++)
    {
        System.out.println("Row " + i);
    }

    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++)
            System.out.println("Row " + i + " Col " + j);
    }

    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++) {
            System.out.println("Row " + i + " Col " + j);
        }
    }

    for (
        let i = 0;
        i < 10;
        i++)
    {
        let j = 0;
        let k = 0;
    }
}

function testWhileIndentationNoBraces(v)  {
    while () v++;
    while (()) v++;
    while ((())) v++;
    while ((())()) v++;
    while ()
        v++;
    while (v == '(')
        v++;
    while (v == ')')
        v++;
    while (v == '\'')
        v++;
    while (v == '\\')
        v++;
    while (v == "(")
        v++;
    while (v == ")")
        v++;
    while (v == "\"")
        v++;
    while (v == "\\\"")
        v++;
    while (v == foo( bar("") + "" ))
        v++;
}

function testWhileIndentationNoBracesButComments(v)  {
    while () v++;                     // ; "comment" ()
    while (()) v++;                   // ; "comment" ()
    while ((())) v++;                 // ; "comment" ()
    while ((())()) v++;               // ; "comment" ()
    while ()                          // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == '(')                  // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == ')')                  // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == '\'')                 // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == '\\')                 // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == "(")                  // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == ")")                  // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == "\"")                 // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == "\\\"")               // ; "comment" ()
        v++;                          // ; "comment" ()
    while (v == foo( bar("") + "" ))  // ; "comment" ()
        v++;                          // ; "comment" ()
    while () { } // a hack to make tests succeed
}

function testWhileIndentationNoBracesButBlockCommentsPart1(v)  {
    while /*(*/ () v++; /*(*/ // ; "comment" ()
    while /*(*/ (()) v++; /*(*/ // ; "comment" ()
    while /*(*/ ((())) v++; /*(*/ // ; "comment" ()
    while /*(*/ ((()/*(*/)/*(*/()) v++; /*(*/ // ; "comment" ()
    while /*(*/ () /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ '(' /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ ')' /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ '\'' /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ '\\' /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ "(" /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ ")" /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ "\"" /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ "\\\"" /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ ( /*(*/ v /*(*/ == /*(*/ foo( /*(*/ bar( /*(*/ "/*(*/" /*(*/ ) /*(*/ + /*(*/ "" /*(*/ ) /*(*/ ) /*(*/ // ; "comment" ()
        v++; /*(*/ // ; "comment" ()
    while /*(*/ () { } // a hack to make tests succeed
}

function testWhileIndentationNoBracesButBlockCommentsPart2(v)  {
    while /*)*/ () v++; /*)*/ // ; "comment" ()
    while /*)*/ (()) v++; /*)*/ // ; "comment" ()
    while /*)*/ ((())) v++; /*)*/ // ; "comment" ()
    while /*)*/ ((()/*)*/)/*)*/()) v++; /*)*/ // ; "comment" ()
    while /*)*/ () /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ '(' /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ ')' /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ '\'' /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ '\\' /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ "(" /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ ")" /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ "\"" /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ "\\\"" /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ ( /*)*/ v /*)*/ == /*)*/ foo( /*)*/ bar( /*)*/ "/*)*/" /*)*/ ) /*)*/ + /*)*/ "" /*)*/ ) /*)*/ ) /*)*/ // ; "comment" ()
        v++; /*)*/ // ; "comment" ()
    while /*)*/ () { } // a hack to make tests succeed
}

function testWhileIndentationWithBraces(v)  {

    while () { v++; }
    while (()) { v++; }
    while ((())) { v++; }
    while ((())()) { v++; }
    while () {
        v++;
    }
    while (v == '(') {
        v++;
    }
    while (v == ')') {
        v++;
    }
    while (v == '\'') {
        v++;
    }
    while (v == '\\') {
        v++;
    }
    while (v == "(") {
        v++;
    }
    while (v == ")") {
        v++;
    }
    while (v == "\"") {
        v++;
    }
    while (v == "\\\"") {
        v++;
    }
    while (v == foo( bar("") + "" )) {
        v++;
    }
    while ()
    {
        v++;
    }
    while (v == '(')
    {
        v++;
    }
    while (v == ')')
    {
        v++;
    }
    while (v == '\'')
    {
        v++;
    }
    while (v == '\\')
    {
        v++;
    }
    while (v == "(")
    {
        v++;
    }
    while (v == ")")
    {
        v++;
    }
    while (v == "\"")
    {
        v++;
    }
    while (v == "\\\"")
    {
        v++;
    }
    while (v == foo( bar("") + "" ))
    {
        v++;
    }
    while (
        v == foo( bar("") + "" )
        )
    {
        v++;
        v++;
    }
}

function testWhileIndentationWithBracesAndComments(v)  {

    while () { v++ }                    // ;  "comments" ()
    while () { v++; }                   // ;  "comments" ()
    while (()) { v++ }                  // ;  "comments" ()
    while ((())) { v++ }                // ;  "comments" ()
    while ((())()) { v++ }              // ;  "comments" ()
    while () {                          // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == '(') {                  // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == ')') {                  // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == '\'') {                 // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == '\\') {                 // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == "(") {                  // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == ")") {                  // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == "\"") {                 // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == "\\\"") {               // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == foo( bar("") + "" )) {  // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while ()                            // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == '(')                    // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == ')')                    // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == '\'')                   // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == '\\')                   // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == "(")                    // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == ")")                    // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == "\"")                   // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == "\\\"")                 // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (v == foo( bar("") + "" ))    // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (                             // ;  "comments" ()
        v == foo( bar("") + "" )        // ;  "comments" ()
        )                               // ;  "comments" ()
    {                                   // ;  "comments" ()
        v++                             // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (                             // ;  "comments" ()
        v == foo( bar("") + "" ) ) {    // ;  "comments" ()
        v++                             // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
    while (                             // ;  "comments" ()
        v == foo( bar("") + "" )        // ;  "comments" ()
        ) {                             // ;  "comments" ()
        v++                             // ;  "comments" ()
        v++                             // ;  "comments" ()
    }                                   // ;  "comments" ()
}

/*
 * CSS Templates
 */

var style = css`tr{color:red}`;

var style = css`
    tr, p {
        background: red solid;
    }
`;

/*
 * HTML Templates
 */

var html = html`<p>${content}</p>`;

var html = html`
    <head>
        <script type="text/javascript">
            var ${name} = "Value ${interpol}"
        </script>

        <script type="text/json">
            {
                "simple": "val${ue}",
                "list": [
                    "value1",
                    "value2"
                ],
                "object": {
                    "simple": "val${ue}",
                    "list": [
                        "value1",
                        "value2"
                    ]
                }
            }
        </script>
    </head>
    <body>
        <div style="width: ${width}%" class="${class_name}" onclick="${click}">
            <p>${content}</p>
        </div>
    </body>
`;

/*
 * JavaScript Templates
 */

var script = js`console.log(${string})`;

var script = js`
    var ${name} = "Value ${interpol}"

    function foo (arg1, arg2) {
        return 0;
    }
`

/*
 * JSON Templates
 */

var json = json`{"key": "value"}`;

var json = json`
    {
        "simple": "val${ue}",
        "list": [
            "value1",
            "value2"
        ],
        "object": {
            "simple": "val${ue}",
            "list": [
                "value1",
                "value2"
            ]
        }
    }
`

/*
 * Other Templates
 */

var other = other`template ${string}`;

var other = other`
    # Heading

    My ${paragraph}!
`

/*
 * Plain String Templates
 */

`single line template string`

`
    multi line template strings
    ignore normal JavaScript indentation rules

    switch (${var}) {
        case "foo":
        break;
                case "bar":
                    break;
    case "baz":
        break;
    }
`

function print(var) {
    return `
        switch (${var}) {
            case "foo":
            break;
                    case "bar":
                        break;
        case "baz":
            break;
        }
    `;
}