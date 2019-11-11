/* SYNTAX TEST "Packages/Objective-C/Objective-C.sublime-syntax" */

int main(){
    int a=5,b=0;
    while(a-->0)++b;
    /*     ^^ keyword.operator.arithmetic */
    /*       ^ keyword.operator.comparison */
    /*        ^ constant.numeric */
    /*          ^^ keyword.operator.arithmetic */
}

enum Foo { kFoo, kBar };
#define FOO Foo
enum FOO do_the_foo(void);
/*       ^ entity.name.function */
/*                  ^ storage.type */

#define APIC_CAPABILITY TheEnum
enum TheEnum { kFoo, kBar };
static enum APIC_CAPABILITY apic_capabilities(void) { return kFoo; };
/*                          ^ entity.name.function */
/*                                            ^ storage.type */

struct __declspec(dllimport) X {};
/*     ^ storage.modifier */
/*                           ^ entity.name.struct */

struct __declspec(dllimport) baz X {};
/*     ^ storage.modifier */
/*                           ^ entity.name.struct */

struct foo {
/*     ^ entity.name.struct */
    union {
/*  ^ storage.type */
        struct {
/*      ^ storage.type */
            int a;
/*          ^ storage.type */
            int b;
/*          ^ storage.type */
        }
    }
}

#define EXTTS_BUFSIZE (PTP_BUF_TIMESTAMPS /* comment block */ * sizeof(struct ptp_extts_event)) // comment line
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/*                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group */
/*                                                                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group meta.group */
/* <- keyword.control.import.define */
/*      ^ entity.name.constant.preprocessor */
/*                                        ^ comment.block */
/*                                                              ^ keyword.operator.word */
/*                                                                     ^ storage.type */
/*                                                                                              ^ comment.line */

#pragma foo(bar, \
"baz")
/*^^^^ meta.preprocessor */

#define MY_MACRO(a, b)
/*^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/*              ^^^^^^ meta.preprocessor.macro.parameters */
/*      ^^^^^^^^ entity.name.function.preprocessor */
/*                   ^ punctuation.section.group.end */

#define max(a, b, \
/*^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */ \
/*         ^^^^^^^^ meta.preprocessor.macro.parameters */ \
/* <- keyword.control.import.define */ \
/*      ^ entity.name.function.preprocessor */ \
/*         ^ punctuation.section.group.begin */ \
/*          ^ variable.parameter */ \
/*           ^ punctuation.separator */ \
/* */ \
/* <- comment.block */ \
 c)  ((a>b) ? (a>c?a:c) : (b>c?b:c))
 /* <- meta.preprocessor.macro meta.group variable.parameter */
  /* <- meta.preprocessor.macro meta.group punctuation.section.group.end */
 /*               ^ keyword.operator.ternary */
 /*                 ^ keyword.operator.ternary */

#define PACKED __attribute__((aligned(1),packed))
/*      ^ entity.name.constant */
/*             ^ storage.modifier */

int i;
/* <- storage.type */

// The following example ensures that comments at the end of preprocessor
// directives don't mess with context transitions
int func() {
/*  ^^^^^^^^ meta.function */
/*      ^^ meta.function.parameters */
/*         ^ meta.block punctuation.section.block.begin */
/*  ^ entity.name.function */
    #if( EXTAL == 40000 )       /* 40 MHz */
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.block */
/*  ^ keyword.control.import */
        #define PLL_RFD_PHI1    10      // PLL0_PH1 = 40MHz
/*      ^ keyword.control.import */
/*                              ^^ constant.numeric */
/*                                      ^ comment.line */
    #endif
/*  ^ keyword.control.import */
}
/* <- meta.function meta.block punctuation.section.block.end */
 /* <- - meta.function meta.block */

int f(int x, \
         /*  ^ punctuation.separator.continuation */
      int y);

#define CONST0 16 // Comment
#define CONST1 8
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

#if defined(VARIABLE) | // comment_line \
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor */ \
    defined(VAR2)
/*^^^^^^^^^^^^^^^ meta.preprocessor */
/*  ^ keyword.control */
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

FOOBAR
hello() {
    /* <- meta.function entity.name.function */
    return 0;
}

EFIAPI
UserStructCompare (
  /* <- meta.function entity.name.function */
  IN CONST VOID *UserStruct1,
  IN CONST VOID *UserStruct2
  )
{
  const USER_STRUCT *CmpStruct1;
  /* <- meta.block storage.modifier */

  CmpStruct1 = UserStruct1;
  return KeyCompare (&CmpStruct1->Key, UserStruct2);
  /* <- meta.block keyword.control */
  /*              ^ meta.block meta.function-call variable.function */
}

LIB_RESULT
foo()
/* <- meta.function entity.name.function */
{
   return LIB_SUCCESS;
}

LIB_RESULT bar()
/*           ^ meta.function entity.name.function */
{
    return LIB_SUCCESS;
}

THIS_IS_REALLY_JUST_A_MACRO_AND_NOT_A_RETURN_TYPE
/* <- meta.assumed-macro */

int main() {
/* <- storage.type */
    /* ^ meta.function entity.name.function */
    return 0;
}

#if 0
#ifdef moo
/* <- - keyword.control */
#endif
/* <- - keyword.control */
#endif

#if 0
/*  ^ constant.numeric */
int disabled_func() {
/*  ^ comment.block */
}
#endif

#if 1
/*  ^ constant.numeric */
int enabled_func() {}
/*  ^ entity.name.function */
#else
int disabled_func() {
/*  ^ comment.block */
}
#endif

#if 1
    int a = 1;
    #if 0
/*      ^ constant.numeric */
        int b = 2;
/*      ^ comment.block */
    #else
        int c = 3;
    #endif
#else
    int d = 4;
/*  ^ comment.block */
#endif


FOO
/* <- meta.assumed-macro */
FOO;
/* <- - meta.assumed-macro */
foo
/* <- - meta.assumed-macro */
; // fix highlighting
/* <- punctuation.terminator */
FOO()
/* <- meta.assumed-macro variable.function.assumed-macro */
FOO();
/* <- - meta.assumed-macro */
foo()
/* <- - meta.assumed-macro */
; // fix highlighting
/* <- punctuation.terminator */

struct X
{
    ENABLED("reason")
    /* <- meta.assumed-macro variable.function.assumed-macro */
    int foo;
    /* <- storage.type */

    DISABLED("reason")
    /* <- meta.assumed-macro variable.function.assumed-macro */
    float bar;
    /* <- storage.type */
};

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
/* <- meta.block punctuation.section.block.end */
 /* <- - meta.block */

/////////////////////////////////////////////
// Typedefs
/////////////////////////////////////////////

typedef int myint;
/* <- storage.type */
/*          ^ entity.name.type */

typedef struct mystruct {
/* <- storage.type */
/*             ^ - entity */
} mystruct;
/* ^ entity.name.type */

/////////////////////////////////////////////
// Data structures and return values
/////////////////////////////////////////////

struct point
/* ^ storage.type */
/*     ^ entity.name.struct */
{
    int x;
    int y;
}

struct point2 {
/* ^ storage.type */
/*     ^ entity.name.struct */
    int x;
    int y;
}

int main(void) {
/*  ^^^^ entity.name.function */
/*       ^^^^ storage.type */
}

struct point get_point() {}
/*           ^^^^^^^^^^^^^^ meta.function */
/*                    ^^ meta.function.parameters */
/*                       ^^ meta.block */
/*                       ^ punctuation.section.block.begin
/*                        ^ punctuation.section.block.end
/* ^ storage.type */
/*     ^ - entity.name.struct */
/*           ^ entity.name.function */

struct point **alloc_points();
/* ^ storage.type */
/*     ^ - entity.name.struct */
/*           ^^ keyword.operator */
/*             ^ entity.name.function */

struct point* alloc_point();
/*                  ^ entity.name.function - variable.function */

struct point FOO_API *alloc_point3();
/*                     ^ entity.name.function - variable.function */


int main(void)
{
    struct UI_BoundingBox decorativeBox = {10, titleHeight-3, width-20, height-10};
/*         ^ - entity.name */
/*                        ^ - entity.name */
}

struct foo MACRO {
/*     ^ entity.name.struct */
/*         ^ - entity.name */
}

// Partially-typed
struct foo
/*     ^ entity.name */

struct UI_MenuBoxData
/* <- storage.type */
/*     ^ entity.name.struct */
{
    struct UI_BoundingBox position;
/*         ^ - entity.name */
/*                        ^ - entity.name */
    enum UI_BoxCharType borderType;
/*       ^ - entity.name */
/*                      ^ - entity.name */
    unsigned int paddingX;
    unsigned int paddingY;
    struct UI_ScrollBoxText boxContents[];
/*         ^ - entity.name */
/*                          ^ - entity.name */
};

/////////////////////////////////////////////
// Test preprocessor branching and C blocks
/////////////////////////////////////////////

int foo(int val, float val2[])
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*     ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.group */
/*     ^ punctuation.section.group.begin */
/*                           ^ punctuation.section.group.end */
/*          ^^^ variable.parameter */
/*             ^ punctuation.separator */
/*                     ^^^^ variable.parameter */
/*                         ^^ meta.brackets */
/*                         ^ punctuation.section.brackets.begin */
/*                          ^ punctuation.section.brackets.end */
{
/* <- meta.function meta.block */
    myClass *result;
    result->kk = func(val);
/*        ^^ punctuation.accessor */
    if (result == 0) {
        return 0;
/*      ^^^^^^ keyword.control.flow.return */
#if CROSS_SCOPE_MACRO
 /* <- keyword.control.import */
    } else if (result > 0) {
        return 1;
#endif
 /* <- keyword.control.import */
    }
/*  ^ meta.block meta.block punctuation.section.block.end */
/*   ^ - meta.block meta.block */

#ifdef FOO
 /* <- keyword.control.import */
    int foobar
/*      ^^^^^^ - entity.name.function */
    ;

    if (val == -1) {
/*                 ^ meta.block meta.block punctuation.section.block.begin */
#else
 /* <- keyword.control.import */
    if (val == -2) {
/*                 ^ meta.block meta.block punctuation.section.block.begin */
#endif
 /* <- keyword.control.import */
        val += 1;
    }
/*  ^ meta.block meta.block punctuation.section.block.end */
/*   ^ - meta.block meta.block */

    return -1;
}
/* <- meta.function punctuation.section.block.end */
 /* <- - meta.function */

BOOL
GetTextMetrics(
    HDC hdc,
    LPTEXTMETRIC lptm
    )
{
#ifdef UNICODE
/* <- keyword.control.import */
    return GetTextMetricsW(
/*         ^ variable.function */
#else
/* <- keyword.control.import */
    return GetTextMetricsA(
/*         ^ variable.function */
#endif
/* <- keyword.control.import */
        hdc,
        lptm
        );
/*      ^ meta.function-call */
/*       ^ - meta.function-call */
}
 /* <- - meta.function */
 /* <- - meta.block */

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
/*                  ^^^^^^ meta.function entity.name.function */
(int * a)
/*^^^^^^^ meta.function.parameters meta.group */
/* <- punctuation.section.group.begin */
/*   ^ keyword.operator */
/*     ^ variable.parameter */
/*      ^ punctuation.section.group.end */
{
/* <- meta.function meta.block punctuation.section.block.begin */
}

MACRO1
RETURN_TYPE
/* <- - entity.name.function */
func_name() {
/* < entity.name.function */
}

MACRO1 void * MACRO2 myfuncname () {
/*                   ^^^^^^^^^^^^^^^ meta.function */
/*                              ^^ meta.function.parameters */
/*                                 ^ meta.block punctuation.section.block.begin
/*     ^ storage.type */
/*          ^ keyword.operator */
/*                   ^ entity.name.function */

    label:
/*  ^ entity.name.label */
/*       ^ punctuation.separator */
        do {
            break;
/*          ^^^^^ keyword.control.flow.break */
        } while(true);

    switch (a) {
        case 1: break;
/*            ^ punctuation.separator */
        case 100 - 10: break;
/*                   ^ punctuation.separator */
        default: break;
/*             ^ punctuation.separator */
    }

    struct Args {
/*  ^ storage.type */
/*         ^ entity.name.struct */
        void* hello;
        void* foobar;
    };

    struct Args args;
/*  ^ storage.type */
/*         ^ - entity */

}

static const uint32_t * const MACRO funcname();
/*                                  ^^^^^^^^^^ meta.function */
/*                                          ^^ meta.function.parameters */
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
    int a[5];
/*       ^^^ meta.brackets */
/*       ^ punctuation.section.brackets.begin */
/*         ^ punctuation.section.brackets.end */
}

MACRO_CALL(int) macro_prefixed_func(){}
/*^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^ meta.group */
/*        ^ punctuation.section.group.begin */
/*            ^ punctuation.section.group.end */
/*              ^ entity.name.function */

int* return_type_pointer_no_space(){}
/*   ^ entity.name.function */

// Make sure there isn't an incorrect match here since this is not a valid
// function definition
int32
/* <- - entity.name.function */
() {}

_declspec(deprecated("bla")) void func2(int) {}
/* <- meta.function-call variable.function                    */
/*                                ^ entity.name.function      */
__declspec(deprecated("bla")) void func2(int) {}
/* <- storage.modifier - variable.function                    */
/*         ^ storage.modifier - variable.function             */
/*                    ^ string.quoted.double punctuation      */
/*                     ^ string.quoted.double - punctuation   */
/*                       ^ string.quoted.double - punctuation */
/*                        ^ string.quoted.double punctuation  */
/*                         ^^ punctuation - invalid           */
/*                                 ^ entity.name.function     */
__notdeclspec(deprecated("bla")) void func2(int) {}
/* <- meta.function-call variable.function                    */
/*                                    ^ entity.name.function  */

/////////////////////////////////////////////
// Test function call in function parameters
/////////////////////////////////////////////

static string foo(bar() + ';');
/*            ^^^^^^^^^^^^^^^^ meta.function */
/*               ^^^^^^^^^^^^^ meta.function.parameters */
/*            ^^^ entity.name.function */
/*                ^^^^^ meta.function-call */
/*                ^^^ variable.function */
/*                        ^^^ string */
/*                           ^ -string */

func_call(foo
/*^^^^^^^^^^^ meta.function-call */
/*       ^^^^ meta.group */
/*       ^ punctuation.section.group.begin */
);
/* <- meta.function-call meta.group punctuation.section.group.end */

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
@property (readonly, nullable, class) NSString *lastName;
/* <- keyword.other punctuation.definition.keyword                  */
/*         ^ keyword.other.property.attribute                       */
/*                 ^ punctuation.separator.objc                     */
/*                   ^ keyword.other.property.attribute             */
/*                           ^ punctuation.separator.objc           */
/*                             ^ keyword.other.property.attribute.  */
/*                                  ^ punctuation.section.scope.end */
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
/*                                      ^^^ keyword.operator.variadic */
/*                                          ^ variable.function */
{}
@end


/////////////////////////////////////////////
// Includes
/////////////////////////////////////////////

#import <Cocoa/Cocoa.h>
/* <- meta.preprocessor.import keyword.control.import.import */

#include <uchar.h>
/* <- meta.preprocessor.include keyword.control.import.include */

#include "foobar.h"
/* <- keyword.control.import.include */
/*       ^ punctuation.definition.string.begin */
/*        ^^^^^^^^ string.quoted.double.include */
/*                ^ punctuation.definition.string.end */

#include <cstdlib>
/* <- keyword.control.import.include */
/*       ^ punctuation.definition.string.begin */
/*        ^^^^^^^ string.quoted.other.lt-gt.include */
/*               ^ punctuation.definition.string.end */

#ifdef _GLIBCXX_INCLUDE_NEXT_C_HEADERS
#include_next <math.h>
/* <- keyword.control.import.include */
/*            ^ punctuation.definition.string.begin */
/*             ^^^^^^ string.quoted.other.lt-gt.include */
/*                   ^ punctuation.definition.string.end */
#endif

#include<iostream>
/* <- keyword.control.import.include */
/*      ^ punctuation.definition.string.begin */
/*       ^^^^^^^^ string.quoted.other.lt-gt.include */
/*               ^ punctuation.definition.string.end */

/////////////////////////////////////////////
// Numeric Constants
/////////////////////////////////////////////

dec0 = 0;
/*     ^ constant.numeric.integer.decimal */

dec1 = 1234567890;
/*     ^^^^^^^^^^ constant.numeric.integer.decimal */

dec2 = 1234567890f;
/*     ^^^^^^^^^^^ constant.numeric.float.decimal */
/*               ^ storage.type.numeric */

dec3 = 1234567890L;
/*     ^^^^^^^^^^^ constant.numeric.integer.decimal */
/*               ^ storage.type.numeric */

dec4 = 1234567890ul;
/*     ^^^^^^^^^^^^ constant.numeric.integer.decimal */
/*               ^^ storage.type.numeric */

dec5 = 1234567890Lu;
/*     ^^^^^^^^^^^^ constant.numeric.integer.decimal */
/*               ^^ storage.type.numeric */

dec6 = 1234567890LLU;
/*     ^^^^^^^^^^^^^ constant.numeric.integer.decimal */
/*               ^^^ storage.type.numeric */

dec7 = 1234567890uLL;
/*     ^^^^^^^^^^^^^ constant.numeric.integer.decimal */
/*               ^^^ storage.type.numeric */

dec8 = 1'234_567'890s0f;
/*     ^ constant.numeric.integer.decimal */
/*      ^^^^^^^^^ string.quoted.single */
/*               ^^^^^^ constant.numeric.integer.decimal */
/*                  ^^^ invalid.illegal.numeric.suffix */
/*                     ^ punctuation.terminator - constant */

oct1 = 01234567;
/*     ^^^^^^^^ constant.numeric.integer.octal */
/*     ^ punctuation.definition.numeric.base */

oct2 = 01234567L;
/*     ^^^^^^^^ constant.numeric.integer.octal */
/*     ^ punctuation.definition.numeric.base */
/*             ^ storage.type.numeric */

oct3 = 01234567LL;
/*     ^^^^^^^^^^ constant.numeric.integer.octal */
/*     ^ punctuation.definition.numeric.base */
/*             ^^ storage.type.numeric */

oct4 = 01234567ulL;
/*     ^^^^^^^^^^^ constant.numeric.integer.octal */
/*     ^ punctuation.definition.numeric.base */
/*             ^^^ storage.type.numeric */

oct2 = 01284967Z0L;
/*     ^^^^^^^^^^^ constant.numeric.integer.octal */
/*     ^ punctuation.definition.numeric.base */
/*        ^ invalid.illegal.numeric.digit */
/*          ^ invalid.illegal.numeric.digit */
/*             ^^^ invalid.illegal.numeric.suffix */

hex1 = 0x0+0xFL+0xaull+0xallu+0xfu+0x'f'12_4uz;
/*     ^^^ constant.numeric.integer.hexadecimal */
/*     ^^ punctuation.definition.numeric.base */
/*         ^^^^ constant.numeric.integer.hexadecimal */
/*         ^^ punctuation.definition.numeric.base */
/*            ^ storage.type.numeric */
/*              ^^^^^^ constant.numeric.integer.hexadecimal */
/*              ^^ punctuation.definition.numeric.base */
/*                 ^^^ storage.type.numeric */
/*                     ^^^^^^ constant.numeric.integer.hexadecimal */
/*                     ^^ punctuation.definition.numeric.base */
/*                        ^^^ storage.type.numeric */
/*                            ^^^^ constant.numeric.integer.hexadecimal */
/*                            ^^ punctuation.definition.numeric.base */
/*                               ^ storage.type.numeric */
/*                                 ^^ constant.numeric.integer.hexadecimal */
/*                                 ^^ punctuation.definition.numeric.base */
/*                                   ^^^ string.quoted.single */
/*                                      ^^^^^^ constant.numeric.integer.decimal */
/*                                        ^^^^ invalid.illegal.numeric.suffix */
/*                                            ^ punctuation.terminator - constant */

hex2 = 0xc1.01AbFp-1;
/*     ^^^^^^^^^^^^^ constant.numeric.float.hexadecimal */
/*     ^^ punctuation.definition.numeric.base */
/*         ^ punctuation.separator.decimal */
/*                  ^ punctuation.terminator - constant */

f = 1.1+1.1e1+1.1e-1+1.1f+1.1e1f+1.1e-1f+1.1L+1.1e1L+1.1e-1L;
/*  ^^^ constant.numeric.float.decimal */
/*   ^ punctuation.separator.decimal */
/*     ^ keyword.operator.arithmetic */
/*      ^^^^^ constant.numeric.float.decimal */
/*       ^ punctuation.separator.decimal */
/*           ^ keyword.operator.arithmetic */
/*            ^^^^^^ constant.numeric.float.decimal */
/*             ^ punctuation.separator.decimal */
/*                  ^ keyword.operator.arithmetic */
/*                   ^^^^ constant.numeric.float.decimal */
/*                    ^ punctuation.separator.decimal */
/*                      ^ storage.type.numeric */
/*                       ^ keyword.operator.arithmetic */
/*                        ^^^^^^ constant.numeric.float.decimal */
/*                         ^ punctuation.separator.decimal */
/*                             ^ storage.type.numeric */
/*                              ^ keyword.operator.arithmetic */
/*                               ^^^^^^^ constant.numeric.float.decimal */
/*                                ^ punctuation.separator.decimal */
/*                                     ^ storage.type.numeric */
/*                                      ^ keyword.operator.arithmetic */
/*                                       ^^^^ constant.numeric.float.decimal */
/*                                        ^ punctuation.separator.decimal */
/*                                          ^ storage.type.numeric */
/*                                           ^ keyword.operator.arithmetic */
/*                                            ^^^^^^ constant.numeric.float.decimal */
/*                                             ^ punctuation.separator.decimal */
/*                                                 ^ storage.type.numeric */
/*                                                  ^ keyword.operator.arithmetic */
/*                                                   ^^^^^^^ constant.numeric.float.decimal */
/*                                                    ^ punctuation.separator.decimal */
/*                                                         ^ storage.type.numeric */
/*                                                          ^ punctuation.terminator.objc */

f = 1.e1+1.e-1+1.e1f+1.e-1f+1.e1L+1.e-1L;
/*  ^^^^ constant.numeric.float.decimal */
/*   ^ punctuation.separator.decimal */
/*      ^ keyword.operator.arithmetic */
/*       ^^^^^ constant.numeric.float.decimal */
/*        ^ punctuation.separator.decimal */
/*            ^ keyword.operator.arithmetic */
/*             ^^^^^ constant.numeric.float.decimal */
/*              ^ punctuation.separator.decimal */
/*                 ^ storage.type.numeric */
/*                  ^ keyword.operator.arithmetic */
/*                   ^^^^^^ constant.numeric.float.decimal */
/*                    ^ punctuation.separator.decimal */
/*                        ^ storage.type.numeric */
/*                         ^ keyword.operator.arithmetic */
/*                          ^^^^^ constant.numeric.float.decimal */
/*                           ^ punctuation.separator.decimal */
/*                              ^ storage.type.numeric */
/*                               ^ keyword.operator.arithmetic */
/*                                ^^^^^^ constant.numeric.float.decimal */
/*                                 ^ punctuation.separator.decimal */
/*                                     ^ storage.type.numeric */
/*                                      ^ punctuation.terminator.objc */

f = 1.+1.f+1.L+1..;
/*  ^^ constant.numeric.float.decimal */
/*   ^ punctuation.separator.decimal */
/*    ^ keyword.operator.arithmetic */
/*     ^^^ constant.numeric.float.decimal */
/*      ^ punctuation.separator.decimal */
/*       ^ storage.type.numeric */
/*        ^ keyword.operator.arithmetic */
/*         ^^^ constant.numeric.float.decimal */
/*          ^ punctuation.separator.decimal */
/*           ^ storage.type.numeric */
/*            ^ keyword.operator.arithmetic */
/*             ^ constant.numeric.integer.decimal */
/*              ^^ invalid.illegal.syntax */
/*                ^ punctuation.terminator.objc */

f = 1e1+1e1f+1e1L;
/*  ^^^ constant.numeric.float.decimal */
/*     ^ keyword.operator.arithmetic */
/*      ^^^^ constant.numeric.float.decimal */
/*         ^ storage.type.numeric */
/*          ^ keyword.operator.arithmetic */
/*           ^^^^ constant.numeric.float.decimal */
/*              ^ storage.type.numeric */
/*               ^ punctuation.terminator.objc */

f = .1+.1e1+.1e-1+.1f+.1e1f+.1e-1f+.1L+.1e1L+.1e-1L;
/*  ^^ constant.numeric.float.decimal */
/*  ^ punctuation.separator.decimal */
/*    ^ keyword.operator.arithmetic */
/*     ^^^^ constant.numeric.float.decimal */
/*     ^ punctuation.separator.decimal */
/*         ^ keyword.operator.arithmetic */
/*          ^^^^^ constant.numeric.float.decimal */
/*          ^ punctuation.separator.decimal */
/*               ^ keyword.operator.arithmetic */
/*                ^^^ constant.numeric.float.decimal */
/*                ^ punctuation.separator.decimal */
/*                  ^ storage.type.numeric */
/*                   ^ keyword.operator.arithmetic */
/*                    ^^^^^ constant.numeric.float.decimal */
/*                    ^ punctuation.separator.decimal */
/*                        ^ storage.type.numeric */
/*                         ^ keyword.operator.arithmetic */
/*                          ^^^^^^ constant.numeric.float.decimal */
/*                          ^ punctuation.separator.decimal */
/*                               ^ storage.type.numeric */
/*                                 ^^^ constant.numeric.float.decimal */
/*                                 ^ punctuation.separator.decimal */
/*                                   ^ storage.type.numeric */
/*                                    ^ keyword.operator.arithmetic */
/*                                     ^^^^^ constant.numeric.float.decimal */
/*                                     ^ punctuation.separator.decimal */
/*                                         ^ storage.type.numeric */
/*                                          ^ keyword.operator.arithmetic */
/*                                           ^^^^^^ constant.numeric.float.decimal */
/*                                           ^ punctuation.separator.decimal */
/*                                                ^ storage.type.numeric */
/*                                                 ^ punctuation.terminator.objc */

/////////////////////////////////////////////
// Objective-C specific format specifiers
/////////////////////////////////////////////

print ("%@", @"String")
/*      ^ - invalid */

NSLog (@"%@", @"String")
/*       ^ constant.other.placeholder.objc */


scanf("%ms %as %*[, ]", &buf);
/*     ^^^ constant.other.placeholder */
/*         ^^^ constant.other.placeholder */
/*             ^^^^^^ constant.other.placeholder */

"foo % baz"
/*   ^ - invalid */
