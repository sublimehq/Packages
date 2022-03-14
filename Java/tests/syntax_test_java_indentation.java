// SYNTAX TEST reindent-unchanged "Packages/Java/Java.sublime-syntax"

import com.other.SecurityManager;


public class HelloWorld {

    private static int attr = 0;

    /**
     * This is my first java program.
     * This will print 'Hello World' as the output
     **/

    public static void main(String []args) {
        System.out.println("Hello World"); // ; "comment" ()
    }

    public void testIndentBrackets()
    {
        var foo = [
            [
                [
                    0, 1,
                    2, 3
                ],
                [0, 1, 2, 3],
                [
                    0, 1,
                    2, 3
                ]
            ]
        ];

        var foo = {
            {
                "key": "value"
            },
            { "key": "value" },
            {
                "key": "value"
            }
        }
    }

    public boolean testIfElseIndentationNoBraces(String[] v)
    {
        /**
         * comment
         */
        if (v.isNull() == TRUE) return

        if (v.isNull() == TRUE) return fun(v)

        if (v.isNull() == TRUE) return fun(v);

        if (v.isNull() == TRUE)
            return FALSE;

        if (v.isNull() == TRUE)
            return FALSE;
        else
        {
            if (v.endsWith("("))
                return FALSE;
            else if (v.endsWith(")"))
                return TRUE;
            else if (v.endsWith("\""))
                return TRUE;
            else if (v.endsWith("\\"))
                return TRUE;
            else if (v.endsWith('('))
                return FALSE;
            else if (v.endsWith(')'))
                return TRUE;
            else if (v.endsWith('\''))
                return TRUE;
            else if (v.endsWith('\\'))
                return TRUE;
            else
                return FALSE;

            if (v.endsWith("baz"))
                return FALSE;
            return TRUE;
        }
    }

    public boolean testIfElseIndentationNoBracesWithLineComments(String[] v)
    {
        /**
         * comment
         */

        // line comment
        if (v.isNull() == TRUE) return

        // line comment
        if (v.isNull() == TRUE) return fun(v)

        // line comment
        if (v.isNull() == TRUE) return fun(v);

        // line comment
        if (v.isNull() == TRUE)
            // line comment
            return FALSE;

        // line comment
        if (v.isNull() == TRUE)
            // line comment
            return FALSE;
        // line comment
        else
        // line comment
        {
            // line comment
            if (v.endsWith("("))
                // line comment
                return FALSE;
            // line comment
            else if (v.endsWith(")"))
                // line comment
                return TRUE;
            // line comment
            else if (v.endsWith("\""))
                // line comment
                return TRUE;
            // line comment
            else if (v.endsWith("\\"))
                // line comment
                return TRUE;
            // line comment
            else if (v.endsWith('('))
                // line comment
                return FALSE;
            // line comment
            else if (v.endsWith(')'))
                // line comment
                return TRUE;
            // line comment
            else if (v.endsWith('\''))
                // line comment
                return TRUE;
            // line comment
            else if (v.endsWith('\\'))
                // line comment
                return TRUE;
            // line comment
            else
                // line comment
                return FALSE;

            // line comment
            if (v.endsWith("baz"))
                // line comment
                return FALSE;
            // line comment
            return TRUE;
        }
    }

    public boolean testIfElseIndentationNoBracesButComments(String[] v)
    {
        if (v.isNull() == TRUE) return         /**/ // ; "comment" ()

        if (v.isNull() == TRUE) return fun(v)  /**/ // ; "comment" ()

        if (v.isNull() == TRUE) return fun(v); /**/ // ; "comment" ()

        if (v.isNull() == TRUE)                /**/ // ; "comment" ()
            return FALSE;                      /**/ // ; "comment" ()

        if (v.isNull() == TRUE)                /**/ // ; "comment" ()
            return FALSE;                      /**/ // ; "comment" ()
        else                                   /**/ // ; "comment" ()
        {                                      /**/ // ; "comment" ()
            if (v.endsWith("("))               /**/ // ; "comment" ()
                return FALSE;                  /**/ // ; "comment" ()
            else if (v.endsWith(")"))          /**/ // ; "comment" ()
                return TRUE;                   /**/ // ; "comment" ()
            else if (v.endsWith("\""))         /**/ // ; "comment" ()
                return TRUE;                   /**/ // ; "comment" ()
            else if (v.endsWith("\\"))         /**/ // ; "comment" ()
                return TRUE;                   /**/ // ; "comment" ()
            else if (v.endsWith('('))          /**/ // ; "comment" ()
                return FALSE;                  /**/ // ; "comment" ()
            else if (v.endsWith(')'))          /**/ // ; "comment" ()
                return TRUE;                   /**/ // ; "comment" ()
            else if (v.endsWith('\''))         /**/ // ; "comment" ()
                return TRUE;                   /**/ // ; "comment" ()
            else if (v.endsWith('\\'))         /**/ // ; "comment" ()
                return TRUE;                   /**/ // ; "comment" ()
            else                               /**/ // ; "comment" ()
                return FALSE;                  /**/ // ; "comment" ()
        }                                      /**/ // ; "comment" ()
    }

    public boolean testIfElseIndentationNoBracesButBlockCommentsPart1(String[] v)
    {
        /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ TRUE /*(*/ ) /*(*/ return /*(*/ // ; "comment" ()

        /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ TRUE /*(*/ ) /*(*/ return /*(*/ fun /*(*/ ( /*(*/ ) /*(*/ // ; "comment" ()

        /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ TRUE /*(*/ ) /*(*/ return /*(*/ fun /*(*/ ( /*(*/ ) /*(*/ ; // ; "comment" ()

        /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ TRUE /*(*/ ) /*(*/  // ; "comment" ()
            return FALSE; /*(*/  // ; "comment" ()

        /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ isNull( /*(*/ ) /*(*/ == /*(*/ TRUE /*(*/ ) /*(*/ // ; "comment" ()
            return FALSE; /*(*/ // ; "comment" ()
        else /*(*/ // ; "comment" ()
        { /*(*/ // ; "comment" ()
            /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ "(") /*(*/ ) /*(*/ // ; "comment" ()
                return FALSE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ ")") /*(*/ ) /*(*/ // ; "comment" ()
                return TRUE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ "\"") /*(*/ ) /*(*/ // ; "comment" ()
                return TRUE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ "\\") /*(*/ ) /*(*/ // ; "comment" ()
                return TRUE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ '(') /*(*/ ) /*(*/ // ; "comment" ()
                return FALSE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ ')') /*(*/ ) /*(*/ // ; "comment" ()
                return TRUE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ '\'') /*(*/ ) /*(*/ // ; "comment" ()
                return TRUE; /*(*/ // ; "comment" ()
            else /*(*/ if /*(*/ ( /*(*/ v /*(*/ . /*(*/ endsWith /*(*/ ( /*(*/ '\\') /*(*/ ) /*(*/ // ; "comment" ()
                return TRUE; /*(*/ // ; "comment" ()
            else /*(*/ // ; "comment" ()
                return FALSE; /*(*/ // ; "comment" ()
        } /*(*/ // ; "comment" ()
    }

    public boolean testIfElseIndentationNoBracesButBlockCommentsPart2(String[] v)
    {
        /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ TRUE /*)*/ ) /*)*/ return /*)*/ // ; "comment" ()

        /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ TRUE /*)*/ ) /*)*/ return /*)*/ fun /*)*/ ( /*)*/ ) /*)*/ // ; "comment" ()

        /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ TRUE /*)*/ ) /*)*/ return /*)*/ fun /*)*/ ( /*)*/ ) /*)*/ ; // ; "comment" ()

        /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ TRUE /*)*/ ) /*)*/ // ; "comment" ()
            return FALSE; /*)*/ // ; "comment" ()

        /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ isNull( /*)*/ ) /*)*/ == /*)*/ TRUE /*)*/ ) /*)*/ // ; "comment" ()
            return FALSE; /*)*/ // ; "comment" ()
        else /*)*/ // ; "comment" ()
        { /*)*/ // ; "comment" ()
            /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ "(") /*)*/ ) /*)*/ // ; "comment" ()
                return FALSE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ ")") /*)*/ ) /*)*/ // ; "comment" ()
                return TRUE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ "\"") /*)*/ ) /*)*/ // ; "comment" ()
                return TRUE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ "\\") /*)*/ ) /*)*/ // ; "comment" ()
                return TRUE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ '(') /*)*/ ) /*)*/ // ; "comment" ()
                return FALSE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ ')') /*)*/ ) /*)*/ // ; "comment" ()
                return TRUE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ '\'') /*)*/ ) /*)*/ // ; "comment" ()
                return TRUE; /*)*/ // ; "comment" ()
            else /*)*/ if /*)*/ ( /*)*/ v /*)*/ . /*)*/ endsWith /*)*/ ( /*)*/ '\\') /*)*/ ) /*)*/ // ; "comment" ()
                return TRUE; /*)*/ // ; "comment" ()
            else /*)*/ // ; "comment" ()
                return FALSE; /*)*/ // ; "comment" ()
        } /*)*/ // ; "comment" ()
    }

    public boolean testIfElseIndentationWithBraces(String[] v) {

        if (v.isNull() == TRUE) { return }

        if (v.isNull() == TRUE) { return fun(v) }

        if (v.isNull() == TRUE) { return fun(v); }

        if (v.isNull() == TRUE) {
            return FALSE;
        }

        if (v.isNull() == TRUE) {
            return FALSE;
        } else {
            if (v.endsWith("(")) {
                return FALSE;
            } else if (v.endsWith(")")) {
                return TRUE;
            } else if (v.endsWith("\"")) {
                return TRUE;
            } else if (v.endsWith("\\")) {
                return TRUE;
            } else if (v.endsWith('(')) {
                return FALSE;
            } else if (v.endsWith(')')) {
                return TRUE;
            } else if (v.endsWith('\'')) {
                return TRUE;
            } else if (v.endsWith('\\')) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        if (v.isNull() == TRUE)
        {
            return
        }
        if (v.isNull() == TRUE)
        {
            return FALSE
        }
        if (v.isNull() == TRUE)
        {
            return FALSE;
        }

        if (v.isNull() == TRUE)
        {
            return FALSE;
        }
        else
        {
            if (v.endsWith("("))
            {
                return FALSE;
            }
            else if (v.endsWith(")"))
            {
                return TRUE;
            }
            else if (v.endsWith("\""))
            {
                return TRUE;
            }
            else if (v.endsWith("\\"))
            {
                return TRUE;
            }
            else if (v.endsWith('('))
            {
                return FALSE;
            }
            else if (v.endsWith(')'))
            {
                return TRUE;
            }
            else if (v.endsWith('\''))
            {
                return TRUE;
            }
            else if (v.endsWith('\\'))
            {
                return TRUE;
            }
            else
            {
                return FALSE;
            }
        }
    }

    public boolean testIfElseIndentationWithBracesAndLineComments(String[] v) {

        // comment
        if (v.isNull() == TRUE) { return }

        // comment
        if (v.isNull() == TRUE) { return fun(v) }

        // comment
        if (v.isNull() == TRUE) { return fun(v); }

        // comment
        if (v.isNull() == TRUE) {
            // comment
            return FALSE;
        }

        // comment
        if (v.isNull() == TRUE) {
            // comment
            return FALSE;
        } else {
            // comment
            if (v.endsWith("(")) {
                // comment
                return FALSE;
            // comment
            } else if (v.endsWith(")")) {
                // comment
                return TRUE;
            // comment
            } else if (v.endsWith("\"")) {
                // comment
                return TRUE;
            // comment
            } else if (v.endsWith("\\")) {
                // comment
                return TRUE;
            // comment
            } else if (v.endsWith('(')) {
                // comment
                return FALSE;
            // comment
            } else if (v.endsWith(')')) {
                // comment
                return TRUE;
            // comment
            } else if (v.endsWith('\'')) {
                // comment
                return TRUE;
            // comment
            } else if (v.endsWith('\\')) {
                // comment
                return TRUE;
            // comment
            } else {
                // comment
                return FALSE;
            }
        }

        // comment
        if (v.isNull() == TRUE)
        {
            // comment
            return
        }
        // comment
        if (v.isNull() == TRUE)
        {
            // comment
            return FALSE
        }
        // comment
        if (v.isNull() == TRUE)
        {
            // comment
            return FALSE;
        }

        // comment
        if (v.isNull() == TRUE)
        {
            // comment
            return FALSE;
        }
        // comment
        else
        {
            // comment
            if (v.endsWith("("))
            {
                // comment
                return FALSE;
            }
            // comment
            else if (v.endsWith(")"))
            {
                // comment
                return TRUE;
            }
            // comment
            else if (v.endsWith("\""))
            {
                // comment
                return TRUE;
            }
            // comment
            else if (v.endsWith("\\"))
            {
                // comment
                return TRUE;
            }
            // comment
            else if (v.endsWith('('))
            {
                // comment
                return FALSE;
            }
            // comment
            else if (v.endsWith(')'))
            {
                // comment
                return TRUE;
            }
            // comment
            else if (v.endsWith('\''))
            {
                // comment
                return TRUE;
            }
            // comment
            else if (v.endsWith('\\'))
            {
                // comment
                return TRUE;
            }
            // comment
            else
            {
                // comment
                return FALSE;
            }
        }
    }

    public boolean testIfElseIndentationWithBracesAndComment(String[] v) {

        if (v.isNull() == TRUE) { return }            /**/ // ; "comment" ()

        if (v.isNull() == TRUE) { return fun(v) }     /**/ // ; "comment" ()

        if (v.isNull() == TRUE) { return fun(v); }    /**/ // ; "comment" ()

        if (v.isNull() == TRUE) {                     /**/ // ; "comment" ()
            return FALSE;                             /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()

        if (v.isNull() == TRUE) {                     /**/ // ; "comment" ()
            return FALSE;                             /**/ // ; "comment" ()
        } else {                                      /**/ // ; "comment" ()
            if (v.endsWith("(")) {                    /**/ // ; "comment" ()
                return FALSE;                         /**/ // ; "comment" ()
            } else if (v.endsWith(")")) {             /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            } else if (v.endsWith("\"")) {            /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            } else if (v.endsWith("\\")) {            /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            } else if (v.endsWith('(')) {             /**/ // ; "comment" ()
                return FALSE;                         /**/ // ; "comment" ()
            } else if (v.endsWith(')')) {             /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            } else if (v.endsWith('\'')) {            /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            } else if (v.endsWith('\\')) {            /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            } else {                                  /**/ // ; "comment" ()
                return FALSE;                         /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()

        if (v.isNull() == TRUE)                       /**/ // ; "comment" ()
        {                                             /**/ // ; "comment" ()
            return                                    /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()
        if (v.isNull() == TRUE)                       /**/ // ; "comment" ()
        {                                             /**/ // ; "comment" ()
            return FALSE                              /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()
        if (v.isNull() == TRUE)                       /**/ // ; "comment" ()
        {                                             /**/ // ; "comment" ()
            return FALSE;                             /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()

        if (v.isNull() == TRUE)                       /**/ // ; "comment" ()
        {                                             /**/ // ; "comment" ()
            return FALSE;                             /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()
        else                                          /**/ // ; "comment" ()
        {                                             /**/ // ; "comment" ()
            if (v.endsWith("("))                      /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return FALSE;                         /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith(")"))                 /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith("\""))                /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith("\\"))                /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith('('))                 /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return FALSE;                         /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith(')'))                 /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith('\''))                /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else if (v.endsWith('\\'))                /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return TRUE;                          /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
            else                                      /**/ // ; "comment" ()
            {                                         /**/ // ; "comment" ()
                return FALSE;                         /**/ // ; "comment" ()
            }                                         /**/ // ; "comment" ()
        }                                             /**/ // ; "comment" ()
    }

    public boolean testSwitchCaseIndentation(String[] s) {
        switch (s) {
        case
        case:
        case break
        case: break
        case "(": break
        case ")": break;
        case ":": break;
        case ";": break;
        case
            break;
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

    public boolean testSwitchCaseIndentationWithLineComments(String[] s) {
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

    public boolean testForIndentation(int v) {

        for (int i = 0; i < 10; i++)
            System.out.println("Row " + i);

        for (int i = 0; i < 10; i++) {
            System.out.println("Row " + i);
        }

        for (int i = 0; i < 10; i++)
        {
            System.out.println("Row " + i);
        }

        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++)
                System.out.println("Row " + i + " Col " + j);
        }

        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                System.out.println("Row " + i + " Col " + j);
            }
        }

        for (
            int i = 0;
            i < 10;
            i++) {
            int j = 0;
            int k = 0;
        }

        for (
            int i = 0;
            i < 10;
            i++)
        {
            int j = 0;
            int k = 0;
        }

        for (
            int i = 0;
            i < 10;
            i++
        ) {
            int j = 0;
            int k = 0;
        }
    }

    public boolean testWhileIndentationNoBraces(int v) {
        while () v++
        while () v++;
        while (()) v++
        while ((())) v++
        while ((())()) v++
        while ()
            v++
        while (v == '(')
            v++
        while (v == ')')
            v++
        while (v == '\'')
            v++
        while (v == '\\')
            v++
        while (v == "(")
            v++
        while (v == ")")
            v++
        while (v == "\"")
            v++
        while (v == "\\\"")
            v++
        while (v == foo( bar("") + "" ))
            v++
    }

    public boolean testWhileIndentationNoBracesButComments(int v) {
        while () v++                      // ; "comment" ()
        while () v++;                     // ; "comment" ()
        while (()) v++                    // ; "comment" ()
        while ((())) v++                  // ; "comment" ()
        while ((())()) v++                // ; "comment" ()
        while ()                          // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == '(')                  // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == ')')                  // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == '\'')                 // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == '\\')                 // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == "(")                  // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == ")")                  // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == "\"")                 // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == "\\\"")               // ; "comment" ()
            v++                           // ; "comment" ()
        while (v == foo( bar("") + "" ))  // ; "comment" ()
            v++                           // ; "comment" ()
        while () { } // a hack to make tests succeed
    }

    public boolean testWhileIndentationNoBracesButBlockCommentsPart1(int v) {
        while /*(*/ () v++ /*(*/ // ; "comment" ()
        while /*(*/ () v++; /*(*/ // ; "comment" ()
        while /*(*/ (()) v++ /*(*/ // ; "comment" ()
        while /*(*/ ((())) v++ /*(*/ // ; "comment" ()
        while /*(*/ ((()/*(*/)/*(*/()) v++ /*(*/ // ; "comment" ()
        while /*(*/ () /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ '(' /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ ')' /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ '\'' /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ '\\' /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ "(" /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ ")" /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ "\"" /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ "\\\"" /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ ( /*(*/ v /*(*/ == /*(*/ foo( /*(*/ bar( /*(*/ "/*(*/" /*(*/ ) /*(*/ + /*(*/ "" /*(*/ ) /*(*/ ) /*(*/ // ; "comment" ()
            v++ /*(*/ // ; "comment" ()
        while /*(*/ () { } // a hack to make tests succeed
    }

    public boolean testWhileIndentationNoBracesButBlockCommentsPart2(int v) {
        while /*)*/ () v++ /*)*/ // ; "comment" ()
        while /*)*/ () v++; /*)*/ // ; "comment" ()
        while /*)*/ (()) v++ /*)*/ // ; "comment" ()
        while /*)*/ ((())) v++ /*)*/ // ; "comment" ()
        while /*)*/ ((()/*)*/)/*)*/()) v++ /*)*/ // ; "comment" ()
        while /*)*/ () /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ '(' /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ ')' /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ '\'' /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ '\\' /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ "(" /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ ")" /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ "\"" /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ "\\\"" /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ ( /*)*/ v /*)*/ == /*)*/ foo( /*)*/ bar( /*)*/ "/*)*/" /*)*/ ) /*)*/ + /*)*/ "" /*)*/ ) /*)*/ ) /*)*/ // ; "comment" ()
            v++ /*)*/ // ; "comment" ()
        while /*)*/ () { } // a hack to make tests succeed
    }

    public boolean testWhileIndentationWithBraces(int v) {

        while () { v++ }
        while () { v++; }
        while (()) { v++ }
        while ((())) { v++ }
        while ((())()) { v++ }
        while () {
            v++
        }
        while (v == '(') {
            v++
        }
        while (v == ')') {
            v++
        }
        while (v == '\'') {
            v++
        }
        while (v == '\\') {
            v++
        }
        while (v == "(") {
            v++
        }
        while (v == ")") {
            v++
        }
        while (v == "\"") {
            v++
        }
        while (v == "\\\"") {
            v++
        }
        while (v == foo( bar("") + "" )) {
            v++
        }
        while ()
        {
            v++
        }
        while (v == '(')
        {
            v++
        }
        while (v == ')')
        {
            v++
        }
        while (v == '\'')
        {
            v++
        }
        while (v == '\\')
        {
            v++
        }
        while (v == "(")
        {
            v++
        }
        while (v == ")")
        {
            v++
        }
        while (v == "\"")
        {
            v++
        }
        while (v == "\\\"")
        {
            v++
        }
        while (v == foo( bar("") + "" ))
        {
            v++
        }
        while (
            v == foo( bar("") + "" )
        )
        {
            v++
            v++
        }
        while (
            v == foo( bar("") + "" ) ) {
            v++
            v++
        }
        while (
            v == foo( bar("") + "" )
        ) {
            v++
            v++
        }
    }

    public boolean testWhileIndentationWithBracesAndComments(int v) {

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

    public class NestedClass
    {
        private static int attr = 0;

        private int[][] array = {
            { 1, 2, 3 },
            { 4, 5, 6 }
        }

        public int getAttr() return this.attr;

        public void setAttr(int a)
        {
            this.attr = a;
        }
    }
}