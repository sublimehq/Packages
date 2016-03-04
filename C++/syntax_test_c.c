/* SYNTAX TEST "C.sublime-syntax" */

#define EXTTS_BUFSIZE (PTP_BUF_TIMESTAMPS /* comment block */ * sizeof(struct ptp_extts_event)) // comment line
/* <- keyword.control.import.define */
/*      ^ entity.name.constant.preprocessor */
/*                                        ^ comment.block */
/*                                                              ^ keyword.operator.sizeof */
/*                                                                     ^ storage.type */
/*                                                                                              ^ comment.line */


#define max(a, b, \
/* <- keyword.control.import.define */ \
/*      ^ entity.name.function.preprocessor */ \
/*         ^ meta.preprocessor.params */ \
/*          ^ variable.parameter */ \
 c)  ((a>b) ? (a>c?a:c) : (b>c?b:c))
 /* <- variable.parameter */

#define PACKED __attribute__((aligned(1),packed))
/*      ^ entity.name.constant */
/*             ^ storage.modifier */

int i;
/* <- storage.type */

#define CONST0 16 // Comment
#define CONST1 8
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

#if defined(VARIABLE)
# error This is a long error message that need to   \
/* <- keyword.control.import */ \
/*      ^ string.unquoted */ \
    be splitted into two lines to prevent large lines. // comment
#warning This is a short warning
/* <- keyword.control.import */
#endif
 /* <- keyword.control.import.if */

bool still_C_code_here = true;
/* <- storage.type */
/*                       ^ constant.language */


/////////////////////////////////////////////
// Test Macro crossing block
/////////////////////////////////////////////

int foo(int val)
{
    int result
    result = func(val);
    if (result == 0) {
        return 0;
#if CROSS_SCOPE_MACRO
 /* <- keyword.control.import */
    } else if (result > 0) {
        return 1;
#endif
 /* <- keyword.control.import.if */
    }
    return -1;
}

/////////////////////////////////////////////
// Test function call in function parameters
/////////////////////////////////////////////

static string foo(bar() + ';');
/*            ^^^ entity.name.function */
/*                        ^^^ string */
/*                           ^ -string */
