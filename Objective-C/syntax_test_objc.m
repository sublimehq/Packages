/* SYNTAX TEST "Packages/Objective-C/Objective-C.sublime-syntax" */

#define EXTTS_BUFSIZE (PTP_BUF_TIMESTAMPS /* comment block */ * sizeof(struct ptp_extts_event)) // comment line
/* <- keyword.control.import.define */
/*      ^ entity.name.constant.preprocessor */
/*                                        ^ comment.block */
/*                                                              ^ keyword.operator.sizeof */
/*                                                                     ^ storage.type */
/*                                                                                              ^ comment.line */

#pragma foo(bar, \
"baz")
/*^^^^ meta.preprocessor */

#define MY_MACRO(a, b)
/*      ^^^^^^^^ entity.name.function.preprocessor */
/*                   ^ punctuation.definition.parameters */

#define max(a, b, \
/* <- keyword.control.import.define */ \
/*      ^ entity.name.function.preprocessor */ \
/*         ^ meta.preprocessor.params */ \
/*          ^ variable.parameter */ \
/* */ \
/* <- comment.block */ \
 c)  ((a>b) ? (a>c?a:c) : (b>c?b:c))
 /* <- variable.parameter */
 /*               ^ keyword.operator.ternary */
 /*                 ^ keyword.operator.ternary */

#define PACKED __attribute__((aligned(1),packed))
/*      ^ entity.name.constant */
/*             ^ storage.modifier */

int i;
/* <- storage.type */

#define CONST0 16 // Comment
#define CONST1 8
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

#if defined(VARIABLE) | // comment_line \
	defined(VAR2)
/*  ^ keyword.control */
/*          ^ meta.preprocessor */
# error This is a long error message that need to   \
/* <- keyword.control.import */ \
/*      ^ string.unquoted */ \
    be splitted into two lines to prevent large lines. // comment
#error "Eplicitly quoted string wrapped, \
    ensuring that the string quoting stops at some point \
    "
#warning This is a short warning
/* <- keyword.control.import */
#endif
 /* <- keyword.control.import */

#define MACRO_WITH_CURLY_BRACE {
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

#define MACRO_WITH_CURLY_BRACE_2 }
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

bool still_C_code_here = true;
/* <- storage.type */
/*                       ^ constant.language */


/////////////////////////////////////////////
// Preprocessor branches starting blocks
/////////////////////////////////////////////

#ifdef FOO
if (1) {
#elif BAR
if (2) {
# elif BAZ
if (3) {
# else
if (4) {
#endif
    int bar = 1;
}
/* <- meta.block punctuation.definition.block */
 /* <- - meta.block */


/////////////////////////////////////////////
// Test preprocessor branching and C blocks
/////////////////////////////////////////////

int foo(int val)
{
/* <- meta.function meta.block */
    myClass *result;
    result->kk = func(val);
/*        ^^ punctuation.accessor */
    if (result == 0) {
        return 0;
#if CROSS_SCOPE_MACRO
 /* <- keyword.control.import */
    } else if (result > 0) {
        return 1;
#endif
 /* <- keyword.control.import */
    }
/*  ^ meta.block meta.block punctuation.definition.block */
/*   ^ - meta.block meta.block */

#ifdef FOO
 /* <- keyword.control.import */
    int foobar
/*      ^^^^^^ - entity.name.function */
    ;

    if (val == -1) {
/*                 ^ meta.block meta.block punctuation.definition.block */
#else
 /* <- keyword.control.import */
    if (val == -2) {
/*                 ^ meta.block meta.block punctuation.definition.block */
#endif
 /* <- keyword.control.import */
        val += 1;
    }
/*  ^ meta.block meta.block punctuation.definition.block */
/*   ^ - meta.block meta.block */

    return -1;
}
/* <- meta.function punctuation.definition.block */
 /* <- - meta.function */


/////////////////////////////////////////////
// Matching various function definitions
/////////////////////////////////////////////

const int foo = 1;
/*        ^ - entity.name.function */
int a;
/*  ^ - entity.name.function */

int /* comment */ * myfunc
/* <- storage.type */
/*  ^ comment.block */
/*                ^ keyword.operator */
/*                  ^^^^^^ entity.name.function */
(int * a)
/* <- punctuation.definition.parameters */
/*   ^ keyword.operator */
/*      ^ punctuation.definition.parameters */
{

}

MACRO1 void * MACRO2 myfuncname () {
/*     ^ storage.type */
/*          ^ keyword.operator */
/*                   ^ entity.name.function */

    label:
/*  ^ entity.name.label */
/*       ^ punctuation.separator */
        do {
            break;
        } while(true);

    switch (a) {
        case 1: break;
/*            ^ punctuation.separator */
        case 100 - 10: break;
/*                   ^ punctuation.separator */
        default: break;
/*             ^ punctuation.separator */
    }

}

static const uint32_t * const MACRO funcname();
/* ^ storage.modifier */
/*     ^ storage.modifier */
/*           ^ support.type */
/*                    ^ keyword.operator */
/*                      ^ storage.modifier */
/*                                  ^ entity.name.function */

MACRO int
/*    ^ storage.type */
funcname2
/* ^ entity.name.function */
()
{

}

MACRO_CALL(int) macro_prefixed_func(){}
/* ^ meta.function-call */
/*        ^ punctuation.definition.parameters */
/*            ^ punctuation.definition.parameters */
/*              ^ entity.name.function */

int* return_type_pointer_no_space(){}
/*   ^ entity.name.function */

// Make sure there isn't an incorrect match here since this is not a valid
// function definition
int32
/* <- - entity.name.function */
() {}

/////////////////////////////////////////////
// Test function call in function parameters
/////////////////////////////////////////////

static string foo(bar() + ';');
/*            ^^^ entity.name.function */
/*                ^^^^^ meta.function-call */
/*                ^^^ variable.function */
/*                        ^^^ string */
/*                           ^ -string */

/////////////////////////////////////////////
// Invalid
/////////////////////////////////////////////
)
/* <- invalid.illegal.stray-bracket-end */
}
/* <- invalid.illegal.stray-bracket-end */


/////////////////////////////////////////////
// Objective-C Interface
/////////////////////////////////////////////

@interface Person : NSObject
/* <- storage.type punctuation.definition.storage.type */
/*^ storage.type */
@property (readonly) NSString *firstName;
/* <- keyword.other punctuation.definition.keyword */
/*^ keyword.other */
@property (readonly) NSString *lastName;
@end
/* <- storage.type punctuation.definition.storage.type */
/*^ storage.type */

NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K like %@",
/*^ support.class */
/*          ^ keyword.operator */
/*                       ^ meta.bracketed punctuation.section.scope.begin */
/*                                    ^ support.function.any-method */
/*                                                        ^^ string.quoted.double punctuation.definition.string.begin */
        attributeName, attributeValue];
/*                                   ^ meta.bracketed punctuation.section.scope.end */

@implementation Person
- (void)debugOutput:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2)
/*                                    ^ punctuation.separator */
/*                                      ^^^ punctuation.definition.variadic */
/*                                          ^ variable.function */
{}
@end

