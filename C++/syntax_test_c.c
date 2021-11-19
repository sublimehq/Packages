/* SYNTAX TEST "Packages/C++/C.sublime-syntax" */

int main(){
    int a=5,b=0;
    while(a-->0)++b;
    /*     ^^ keyword.operator.arithmetic */
    /*       ^ keyword.operator.comparison */
    /*        ^ meta.number constant.numeric.value */
    /*          ^^ keyword.operator.arithmetic */
}

enum Foo { kFoo, kBar };
#define FOO Foo
enum FOO do_the_foo(void);
/*       ^ entity.name.function */
/*                  ^ storage.type */

struct FOO do_the_foo(void);
/*         ^ entity.name.function */
/*                    ^ storage.type */

union FOO do_the_foo(void);
/*        ^ entity.name.function */
/*                   ^ storage.type */

#define APIC_CAPABILITY TheEnum
enum TheEnum { kFoo, kBar };
static enum APIC_CAPABILITY apic_capabilities(void) { return kFoo; };
/*                          ^ entity.name.function */
/*                                            ^ storage.type */

struct __declspec(dllimport) X {};
/*     ^ storage.modifier */
/*                           ^ entity.name.struct */

struct foo {
/*     ^ entity.name.struct */
    union {
/*  ^ keyword.declaration */
        struct {
/*      ^ keyword.declaration */
            int a;
/*          ^ storage.type */
            int b;
/*          ^ storage.type */
        }
    }
};

#define EXTTS_BUFSIZE (PTP_BUF_TIMESTAMPS /* comment block */ * sizeof(struct ptp_extts_event)) // comment line
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/*                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group */
/*                                                                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group meta.group */
/*                                                                     ^^^^^^ keyword.declaration.struct.c */
/*                                                                            ^ support.type */
/* <- keyword.control.import.define */
/*      ^ entity.name.constant.preprocessor */
/*                                        ^ comment.block */
/*                                                              ^ keyword.operator.word */
/*                                                                     ^ keyword.declaration */
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
/*  ^^^^^^ meta.function */
/*      ^^ meta.function.parameters */
/*         ^ meta.block punctuation.section.block.begin */
/*  ^ entity.name.function */
    #if( EXTAL == 40000 )       /* 40 MHz */
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.block */
/*  ^ keyword.control.import */
        #define PLL_RFD_PHI1    10      // PLL0_PH1 = 40MHz
/*      ^ keyword.control.import */
/*                              ^^ meta.number constant.numeric.value */
/*                                      ^ comment.line */
    #endif
/*  ^ keyword.control.import */

  print("// String");
/*^^^^^ meta.function-call.c variable.function.c */
/*      ^^^^^^^^^^^ string.quoted.double.c */
/*      ^ punctuation.definition.string.begin.c */
/*                ^ punctuation.definition.string.end.c */
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

bool still_C_code_here = true, foo = false;
/* <- storage.type */
/*   ^^^^^^^^^^^^^^^^^ entity.name.variable.indexed.c */
/*                     ^ keyword.operator.assignment.c */
/*                       ^ constant.language */
/*                                        ^ punctuation.terminator.c */
/*                           ^ punctuation.separator.c */
/*                             ^^^ entity.name.variable.indexed.c*/
/*                                 ^ keyword.operator.assignment.c */
/*                                   ^^^^^ constant.language.c */
/*                                        ^ punctuation.terminator.c */

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
/* <- constant.other.macro.c */
foo()
/* <- meta.function entity.name.function */
{
/* <- meta.function.c punctuation.section.block.begin.c */
   return LIB_SUCCESS;
}
/* <- meta.function.c punctuation.section.block.end.c */

LIB_RESULT bar()
/* <- constant.other.macro.c */
/*           ^ meta.function entity.name.function */
{
/* <- meta.function.c punctuation.section.block.begin.c */
    return LIB_SUCCESS;
}
/* <- meta.function.c punctuation.section.block.end.c */

THIS_IS_REALLY_JUST_A_MACRO_AND_NOT_A_RETURN_TYPE
/* <- constant.other.macro.c */

int main() {
/* <- storage.type */
    /* ^ meta.function entity.name.function */
    return 0;
}

void __sdhci_read_caps(struct sdhci_host *host, u16 *ver);
/* <- storage.type.c */
/*   ^^^^^^^^^^^^^^^^^ meta.function entity.name.function */

#if 0
#ifdef moo
/* <- - keyword.control */
#endif
/* <- - keyword.control */
#endif

#if 0
/*  ^ meta.number constant.numeric.value */
int disabled_func() {
/*  ^ comment.block */
}
#endif

#if 1
/*  ^ meta.number constant.numeric.value */
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
/*      ^ meta.number constant.numeric.value */
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
/* <- constant.other.macro.c */
FOO;
/* <- entity.name.variable.indexed.c */
foo
/* <- support.type */
; // fix highlighting
/* <- punctuation.terminator */
FOO()
/* <- meta.function-call.c constant.other.macro.c */
FOO();
/* <- meta.function-call.c constant.other.macro.c */
foo()
/* <- meta.function-call.c constant.other.macro.c */
; // fix highlighting
/* <- punctuation.terminator */

struct X
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    ENABLED("reason")
    /* <- meta.function-call.c constant.other.macro.c */
    int foo;
    /* <- storage.type */
/*      ^^^ entity.name.member.c */

    DISABLED("reason")
    /* <- meta.function-call.c constant.other.macro.c */
    float bar;
    /* <- storage.type */
/*        ^^^ entity.name.member.c */
/*           ^ punctuation.terminator.c */

    EXPORT(int) baz;
/*  ^^^^^^ meta.function-call.c constant.other.macro.c */
/*        ^^^^^ meta.function-call.parameters.c */
/*              ^^^ entity.name.member.c */
/*                 ^ punctuation.terminator.c */
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
 /* <- punctuation.terminator.c - meta.struct.body.c - meta.block.c*/

/**
    *
/*  ^ comment.block.c punctuation.definition.comment.c */

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
/* <- keyword.declaration.type.c */
/*      ^^^ storage.type.c */
/*          ^ entity.name.type */
/*               ^ punctuation.terminator.c */

typedef unsigned long long ull_t,
/* <- keyword.declaration.type.c */
/*      ^^^^^^^^ storage.type.c */
/*               ^^^^ storage.type.c */
/*                    ^^^^ storage.type.c */
/*                         ^^^^^ entity.name.type.typedef.c */
/*                              ^ punctuation.separator.c */
                           ull2_t,
/*                         ^^^^^^ entity.name.type.typedef.c */
/*                               ^ punctuation.separator.c */
                           *ullp_t;
/*                         ^ storage.modifier.c */
/*                          ^^^^^^ entity.name.type.typedef.c */
/*                                ^ punctuation.terminator.c */

typedef struct mystruct {
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^ entity.name.struct.c */
/*                      ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
  int a;
/*^^^ storage.type.c */
/*    ^ entity.name.member.c */
} mystruct;
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^^^ entity.name.type */
/*        ^ punctuation.terminator.c */

typedef struct another
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^ entity.name.struct.c */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
  int f;
/*^^^ storage.type.c */
/*    ^ entity.name.member.c */
} another_t, another2_t;
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^^^^ entity.name.type */
/*         ^ punctuation.separator.c */
/*           ^^^^^^^^^^ entity.name.type.typedef.c */
/*                     ^ punctuation.terminator.c */

typedef another_t another2_t;
/* <- keyword.declaration.type.c */
/*      ^^^^^^^^^ support.type.c */
/*                ^^^^^^^^^^ entity.name.type.typedef.c */
/*                          ^ punctuation.terminator.c */

typedef another_t *anotherp_t;
/* <- keyword.declaration.type.c */
/*      ^^^^^^^^^ support.type.c */
/*                ^ storage.modifier.c */
/*                 ^^^^^^^^^^ entity.name.type.typedef.c */
/*                           ^ punctuation.terminator.c */

typedef void (*xhci_get_quirks_t)(struct device *d, struct xhci_hcd *);
/* <- keyword.declaration.type.c */
/*      ^^^^ storage.type.c */
/*            ^ storage.modifier.c */
/*             ^^^^^^^^^^^^^^^^^ entity.name.type.c */
/*                                ^^^^^^ keyword.declaration.struct.c */
/*                                       ^^^^^^ support.type.c */
/*                                              ^ storage.modifier.c */
/*                                               ^ variable.parameter.c */
/*                                                ^ punctuation.separator */
/*                                                  ^^^^^^ keyword.declaration.struct.c */
/*                                                         ^^^^^^^^ support.type.c */
/*                                                                  ^ storage.modifier.c */

typedef struct Node* (*get_node_t)(struct device *d, struct xhci_hcd *);
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^^^^ support.type.c */
/*                 ^ storage.modifier.c */
/*                    ^ storage.modifier.c */
/*                     ^^^^^^^^^^ entity.name.type.c */
/*                                 ^^^^^^ keyword.declaration.struct.c */
/*                                        ^^^^^^ support.type.c */
/*                                               ^ storage.modifier.c */
/*                                                ^ variable.parameter.c */
/*                                                 ^ punctuation.separator */
/*                                                   ^^^^^^ keyword.declaration.struct.c */
/*                                                          ^^^^^^^^ support.type.c */
/*                                                                   ^ storage.modifier.c */


typedef struct Node Node;
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^^^^ support.type.c */
/*                  ^^^^ entity.name.type.typedef.c */
typedef struct Node* NodePtr;
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^^^^ support.type.c */
/*                 ^ storage.modifier.c */
/*                   ^^^^^^^ entity.name.type.typedef.c */

typedef struct {
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^ meta.struct.body.c punctuation.section.block.begin.c */
    int data1;
/*  ^^^ storage.type.c */
/*      ^^^^^ entity.name.member.indexed.c */
} newtype;
/* <- meta.struct.body.c punctuation.section.block.end.c */
/*^^^^^^^ entity.name.type.typedef.c */

typedef struct MyStruct {
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^^^^^^^^ entity.name.struct.c */
/*                      ^ meta.struct.body.c punctuation.section.block.begin.c */
    int data1;
/*  ^^^ storage.type.c */
/*      ^^^^^ entity.name.member.indexed.c */
} newtype;
/* <- meta.struct.body.c punctuation.section.block.end.c */
/*^^^^^^^ entity.name.type.typedef.c */

typedef char arrType[6];
/* <- keyword.declaration.type.c */
/*      ^^^^ storage.type.c */
/*           ^^^^^^^ entity.name.type */
/*                  ^ punctuation.section.brackets.begin.c */
/*                   ^ constant.numeric.value.c */
/*                    ^ punctuation.section.brackets.end.c */

typedef char arrType[NUMBER_OF_ELEMENTS];
/* <- keyword.declaration.type.c */
/*      ^^^^ storage.type.c */
/*           ^^^^^^^ entity.name.type.typedef.c */
/*                  ^ punctuation.section.brackets.begin.c */
/*                   ^^^^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                                     ^ punctuation.section.brackets.end.c */

typedef unsigned long ulong, *ulongptr;
/* <- keyword.declaration.type.c */
/*      ^^^^^^^^ storage.type.c */
/*               ^^^^ storage.type.c */
/*                    ^^^^^ entity.name.type.typedef.c */
/*                         ^ punctuation.separator.c */
/*                           ^ storage.modifier.c */
/*                            ^^^^^^^^ entity.name.type.typedef.c */

typedef enum state {DEAD,ALIVE} State;
/* <- keyword.declaration.type.c */
/*      ^^^^ keyword.declaration.enum.c */
/*           ^^^^^ entity.name.enum.c */
/*                  ^^^^ entity.name.constant.enum.c */
/*                      ^ punctuation.separator.c */
/*                       ^^^^^ entity.name.constant.enum.c */
/*                              ^^^^^ entity.name.type.typedef.c */
/*                                   ^ punctuation.terminator.c */


typedef   __u8    u_int8_t;
/* <- keyword.declaration.type.c */
/*        ^^^^ constant.other.macro.c */
/*                ^^^^^^^^ entity.name.type.typedef.c */
typedef   __s8    int8_t;
/* <- keyword.declaration.type.c */
/*        ^^^^ constant.other.macro.c */
/*                ^^^^^^ entity.name.type.typedef.c */

typedef unsigned long long __u64;
/* <- keyword.declaration.type.c */
/*      ^^^^^^^^ storage.type.c */
/*               ^^^^ storage.type.c */
/*                    ^^^^ storage.type.c */
/*                         ^^^^^ entity.name.type.typedef.c */
/*                              ^ punctuation.terminator.c */

__extension__ typedef unsigned long long __u64;
/* <- constant.other.macro.c */
/*            ^^^^^^^ storage.type.c */
/*                    ^^^^^^^^ storage.type.c */
/*                             ^^^^ storage.type.c */
/*                                  ^^^^ storage.type.c */
/*                                       ^^^^^ entity.name.type.typedef.c */
/*                                            ^ punctuation.terminator.c */

/////////////////////////////////////////////
// Parameter Declarations
/////////////////////////////////////////////

typedef void (*attrs_t)(
/* <- keyword.declaration.type.c */
/*      ^^^^ storage.type.c */
/*             ^^^^^^^ entity.name.type.c */
/*                     ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
  const __aligned(4) char __aligned(8) * __aligned(2) bob __aligned(2),
/*^^^^^ storage.modifier.c */
/*      ^^^^^^^^^^^^ meta.function-call */
/*                   ^^^^ storage.type.c */
/*                        ^^^^^^^^^^^^ meta.function-call */
/*                                     ^ storage.modifier.c */
/*                                       ^^^^^^^^^^^^ meta.function-call */
/*                                                    ^^^ variable.parameter.c */
/*                                                        ^^^^^^^^^^^^ meta.function-call */
/*                                                                    ^ punctuation.separator.c */

  __unused char foo,
/*^^^^^^^^ constant.other.macro.c */
/*         ^^^^ storage.type.c */
/*              ^^^ variable.parameter.c */
/*                 ^ punctuation.separator.c */
  volatile MACRO foo,
/*^^^^^^^^ storage.modifier.c */
/*         ^^^^^ constant.other.macro.c */
/*               ^^^ variable.parameter.c */
/*                  ^ punctuation.separator.c */
  MACRO int MACRO bar,
/*^^^^^ constant.other.macro.c */
/*      ^^^ storage.type.c */
/*          ^^^^^ constant.other.macro.c */
/*                ^^^ variable.parameter.c */
/*                   ^ punctuation.separator.c */
  FOO(BAR) bar,
/*^^^^^^^^ meta.function-call */
/*    ^^^ constant.other.macro.c */
/*         ^^^ variable.parameter.c */
/*            ^ punctuation.separator.c */
  const char foo __attribute__((unused)),
/*^^^^^ storage.modifier.c */
/*      ^^^^ storage.type.c */
/*           ^^^ - variable.parameter.c This is broken :( */
/*               ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                                      ^ punctuation.separator.c */
  __attribute__((unused)) char foo1,
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                        ^^^^ storage.type.c */
/*                             ^^^^ variable.parameter.c */
/*                                 ^ punctuation.separator.c */
  char __attribute__((unused)) foo2);
/*^^^^ storage.type.c */
/*     ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                             ^^^^ variable.parameter.c */
/*                                 ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */

void attrs(
/* <- storage.type.c */
/*   ^^^^^ entity.name.function.c */
  const __aligned(4) char __aligned(8) * __aligned(2) bob __aligned(2),
/*^^^^^ storage.modifier.c */
/*      ^^^^^^^^^^^^ meta.function-call */
/*                   ^^^^ storage.type.c */
/*                        ^^^^^^^^^^^^ meta.function-call */
/*                                     ^ storage.modifier.c */
/*                                       ^^^^^^^^^^^^ meta.function-call */
/*                                                    ^^^ variable.parameter.c */
/*                                                        ^^^^^^^^^^^^ meta.function-call */
/*                                                                    ^ punctuation.separator.c */

  __unused char foo,
/*^^^^^^^^ constant.other.macro.c */
/*         ^^^^ storage.type.c */
/*              ^^^ variable.parameter.c */
/*                 ^ punctuation.separator.c */
  volatile MACRO foo,
/*^^^^^^^^ storage.modifier.c */
/*         ^^^^^ constant.other.macro.c */
/*               ^^^ variable.parameter.c */
/*                  ^ punctuation.separator.c */
  MACRO int MACRO bar,
/*^^^^^ constant.other.macro.c */
/*      ^^^ storage.type.c */
/*          ^^^^^ constant.other.macro.c */
/*                ^^^ variable.parameter.c */
/*                   ^ punctuation.separator.c */
  FOO(BAR) bar,
/*^^^^^^^^ meta.function-call */
/*    ^^^ constant.other.macro.c */
/*         ^^^ variable.parameter.c */
/*            ^ punctuation.separator.c */
  const char foo __attribute__((unused)),
/*^^^^^ storage.modifier.c */
/*      ^^^^ storage.type.c */
/*           ^^^ - variable.parameter.c This is broken :( */
/*               ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                                      ^ punctuation.separator.c */
  __attribute__((unused)) char foo1,
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                        ^^^^ storage.type.c */
/*                             ^^^^ variable.parameter.c */
/*                                 ^ punctuation.separator.c */
  char __attribute__((unused)) foo2);
/*^^^^ storage.type.c */
/*     ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                             ^^^^ variable.parameter.c */
/*                                 ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */

void proto(int, char*, char, struct foobar);
/* <- storage.type.c */
/*   ^^^^^ entity.name.function.c */
/*         ^^^ storage.type.c */
/*            ^ punctuation.separator.c */
/*              ^^^^ storage.type.c */
/*                  ^ storage.modifier.c */
/*                   ^ punctuation.separator.c */
/*                     ^^^^ storage.type.c */
/*                         ^ punctuation.separator.c */
/*                           ^^^^^^ keyword.declaration.struct.c */
/*                                  ^^^^^^ support.type.c */
/*                                         ^ punctuation.terminator.c */

static string foo(__bar);
/*                ^^^^^ constant.other.macro.c */
static string foo(BAR);
/*                ^^^ constant.other.macro.c */
static string foo(FOO(1));
/*                ^^^^^^ meta.function-call */
static string foo(__align(1));
/*                ^^^^^^^^^^ meta.function-call */
static string foo(__attribute__((unused)));
/*                ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */

  __unused char foo;
/*^^^^^^^^ constant.other.macro.c */
/*         ^^^^ storage.type.c */
/*              ^^^ entity.name.variable.indexed.c */
/*                 ^ punctuation.terminator.c */
  volatile MACRO foo;
/*^^^^^^^^ storage.modifier.c */
/*         ^^^^^ constant.other.macro.c */
/*               ^^^ entity.name.variable.indexed.c */
/*                  ^ punctuation.terminator.c */
  MACRO int MACRO bar;
/*^^^^^ constant.other.macro.c */
/*      ^^^ storage.type.c */
/*          ^^^^^ constant.other.macro.c */
/*                ^^^ entity.name.variable.indexed.c */
/*                   ^ punctuation.terminator.c */

/////////////////////////////////////////////
// Data structures and return values
/////////////////////////////////////////////

struct point
/* ^ keyword.declaration.struct.c */
/*     ^ entity.name.struct */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int x;
    int y;
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

struct point2 {
/* ^ keyword.declaration.struct.c */
/*     ^ entity.name.struct */
/*            ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int x;
    int y;
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

int main(void) {
/*  ^^^^ entity.name.function */
/*       ^^^^ storage.type */
}

enum codes get_code() {}
/* <- keyword.declaration.enum.c */
/*     ^ support.type - entity.name.struct */
/*         ^^^^^^^^^  meta.function */
/*         ^ entity.name.function */
/*                 ^^ meta.function.parameters */
/*                    ^^ meta.function meta.block */
/*                    ^ punctuation.section.block.begin */
/*                     ^ punctuation.section.block.end */

union codes get_code() {}
/* <- keyword.declaration.union.c */
/*     ^ support.type - entity.name.struct */
/*          ^^^^^^^^^  meta.function */
/*          ^ entity.name.function */
/*                  ^^ meta.function.parameters */
/*                     ^^ meta.function meta.block */
/*                     ^ punctuation.section.block.begin */
/*                      ^ punctuation.section.block.end */

struct point get_point() {}
/* <- keyword.declaration.struct.c */
/*     ^ support.type - entity.name.struct */
/*           ^^^^^^^^^  meta.function */
/*           ^ entity.name.function */
/*                    ^^ meta.function.parameters */
/*                       ^^ meta.function meta.block */
/*                       ^ punctuation.section.block.begin */
/*                        ^ punctuation.section.block.end */

EXPORT_SYMBOL(get_point);
/* <- meta.function-call.c constant.other.macro.c*/
/*            ^^^^^^^^^ variable.other.indexed.c */

inline struct point **alloc_points();
/*     ^ keyword.declaration.struct.c */
/*            ^ support.type - entity.name.struct */
/*                  ^^ storage.modifier.c */
/*                    ^ entity.name.function */
/*                                ^^ meta.function.parameters.c meta.group.c */
/*                                ^ punctuation.section.group.begin.c */
/*                                 ^ punctuation.section.group.end.c */
/*                                  ^ punctuation.terminator.c */
EXPORT_SYMBOL(alloc_points);
/* <- meta.function-call.c constant.other.macro.c*/
/*            ^^^^^^^^^^^^ variable.other.indexed.c */

struct point* alloc_point();
/* <- keyword.declaration.struct.c */
/*     ^^^^^ meta.struct.c support.type.c */
/*          ^ storage.modifier.c */
/*                  ^ entity.name.function - variable.function */
/*                       ^^ meta.function.parameters.c meta.group.c */
/*                       ^ punctuation.section.group.begin.c */
/*                        ^ punctuation.section.group.end.c */
/*                         ^ punctuation.terminator.c */

struct point FOO_API *alloc_point3(), alloc_point2(), struct_var2;
/* <- keyword.declaration.struct.c */
/*     ^^^^^ meta.struct.c support.type.c */
/*                   ^ storage.modifier.c */
/*                     ^ entity.name.function - variable.function */
/*                                ^^ meta.function.parameters.c meta.group.c */
/*                                ^ punctuation.section.group.begin.c */
/*                                 ^ punctuation.section.group.end.c */
/*                                  ^ punctuation.separator */
/*                                    ^ entity.name.function - variable.function */
/*                                                    ^^^^^^^^^^^ entity.name.variable.indexed.c */

struct {
/* <- keyword.declaration.struct.c */
/*     ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
  int a;
/*^^^ storage.type.c */
/*    ^ entity.name.member.c */
} anon_s, *anon_b, anon_s_f(), anon_c = {
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^ entity.name.variable.indexed.c  */
/*         ^^^^^^ entity.name.variable.indexed.c  */
/*                 ^^^^^^^^ entity.name.function.c  */
/*                             ^^^^^^ entity.name.variable.indexed.c  */
/*                                    ^ keyword.operator.assignment.c */
  .a = 4
}, anon_d = {.a = 6}, anon_arr[] = {{.a = 1}, {.a = 2}}, anon_g;
 /* <- punctuation.separator */
/* ^^^^^^ entity.name.variable.indexed.c  */
/*        ^ keyword.operator.assignment.c */
/*                  ^ punctuation.separator */
/*                    ^^^^^^^^ entity.name.variable.indexed.c  */
/*                            ^^ meta.brackets.c */
/*                            ^ punctuation.section.brackets.begin.c */
/*                             ^ punctuation.section.brackets.end.c */
/*                               ^ keyword.operator.assignment.c */
/*                                                     ^ punctuation.separator */
/*                                                       ^^^^^^ entity.name.variable.indexed.c  */
/*                                                             ^ punctuation.terminator.c */

int f_with_s(struct { int a; } *s);
/*<- storage.type.c */
/*  ^^^^^^^^ meta.function.c entity.name.function.c */
/*          ^ meta.function.parameters.c punctuation.section.group.begin.c */
/*           ^^^^^^ meta.struct.c keyword.declaration.struct.c */
/*                  ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
/*                    ^^^ storage.type.c */
/*                        ^ entity.name.member.c */
/*                           ^ meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*                             ^ storage.modifier.c */
/*                              ^ variable.parameter.c */
/*                               ^ punctuation.section.group.end.c */
/*                                ^ punctuation.terminator.c */

TRACE_EVENT(mmc_request_start,
/* <- meta.function-call.c constant.other.macro.c */
/*          ^^^^^^^^^^^^^^^^^ variable.other.indexed.c */
/*                           ^ punctuation.separator.c */
  TP_PROTO(struct mmc_host *host, struct mmc_request *mrq)
/*^^^^^^^^ constant.other.macro.c */
/*         ^^^^^^ keyword.declaration.struct.c */
/*                ^^^^^^^^ support.type.c */
/*                         ^ keyword.operator.c */
/*                          ^^^^ variable.other.c */
/*                              ^ punctuation.separator.c */
/*                                ^^^^^^ keyword.declaration.struct.c */
/*                                       ^^^^^^^^^^^ support.type.c */
/*                                                   ^ keyword.operator.c */
/*                                                    ^^^ variable.other.c */
);

TRACE_EVENT(802154_rdev_add_virtual_intf,
/* <-meta.function-call.c constant.other.macro.c */
/*         ^ meta.function-call.parameters.c punctuation.section.group.begin.c */
/*          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - variable.other.c TODO: Figure this out */
/*                                      ^ punctuation.separator.c */
  TP_STRUCT__entry(
/*^^^^^^^^^^^^^^^^ meta.function-call.parameters.c meta.function-call.c variable.function.c */
/*                ^ meta.function-call.parameters.c meta.function-call.parameters.c meta.group.c punctuation.section.group.begin.c */
    WPAN_PHY_ENTRY
/*  ^^^^^^^^^^^^^^ constant.other.macro.c */
    __string(vir_intf_name, name ? name : "<noname>")
/*  ^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*          ^ punctuation.section.group.begin.c */
/*           ^^^^^^^^^^^^^ variable.other.indexed.c */
/*                        ^ punctuation.separator.c */
/*                          ^^^^ variable.other.c */
/*                               ^ keyword.operator.ternary.c */
/*                                 ^^^^ variable.other.c */
/*                                      ^ keyword.operator.ternary.c */
/*                                        ^^^^^^^^^^ string.quoted.double.c */
/*                                                  ^ punctuation.section.group.end.c */
    __field(enum nl802154_iftype, type)
/*  ^^^^^^^ meta.function-call.c constant.other.macro.c */
/*         ^ punctuation.section.group.begin.c */
/*          ^^^^ keyword.declaration.enum.c */
/*               ^^^^^^^^^^^^^^^ support.type.c */
/*                              ^ punctuation.separator.c */
/*                                ^^^^ variable.other.c */
/*                                    ^ punctuation.section.group.end.c */
    __field(__le64, extended_addr)
/*  ^^^^^^^ meta.function-call.c constant.other.macro.c */
/*         ^ punctuation.section.group.begin.c */
/*          ^^^^^^ variable.other.indexed.c */
/*                ^ punctuation.separator.c */
/*                  ^^^^^^^^^^^^^ variable.other.indexed.c */
/*                               ^ punctuation.section.group.end.c */
  ),
/*^ meta.function-call.parameters.c meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
/* ^ punctuation.separator.c */
  TP_fast_assign(
/*^^^^^^^^^^^^^^ variable.function.c */
/*              ^ meta.function-call.parameters.c meta.function-call.parameters.c punctuation.section.group.begin.c */
    WPAN_PHY_ASSIGN;
/*  ^^^^^^^^^^^^^^^ constant.other.macro.c */
    __assign_str(vir_intf_name, name ? name : "<noname>");
/*  ^^^^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*              ^ meta.function-call.parameters.c punctuation.section.group.begin.c */
/*               ^^^^^^^^^^^^^ variable.other.indexed.c */
/*                            ^ punctuation.separator.c */
/*                              ^^^^ variable.other.c */
/*                                   ^ keyword.operator.ternary.c */
/*                                     ^^^^ variable.other.c */
/*                                          ^ keyword.operator.ternary.c */
/*                                            ^^^^^^^^^^ string.quoted.double.c */
/*                                                      ^ meta.function-call.parameters.c punctuation.section.group.end.c */
/*                                                       ^ punctuation.terminator.c */
    __entry->type = type;
/*  ^^^^^^^ variable.other.indexed.c */
/*         ^^ punctuation.accessor.c */
/*           ^^^^ variable.other.member.c */
/*                ^ keyword.operator.assignment.c */
/*                  ^^^^ variable.other.c */
/*                      ^ punctuation.terminator.c */
  ),
/*^ meta.function-call.parameters.c meta.function-call.parameters.c punctuation.section.group.end.c */
/* ^ punctuation.separator.c */
  TP_printk(WPAN_PHY_PR_FMT ", name: %s, type: %d, addr: 0x%llx",
/*^^^^^^^^^ meta.function-call.c variable.function.c */
/*         ^ meta.function-call.parameters.c meta.function-call.parameters.c punctuation.section.group.begin.c */
/*          ^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.c*/
/*                                                              ^ punctuation.separator.c */
      WPAN_PHY_PR_ARG, __get_str(vir_intf_name), __entry->type,
/*    ^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                   ^ punctuation.separator.c */
/*                     ^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                               ^^^^^^^^^^^^^ variable.other.indexed.c */
/*                                             ^ punctuation.separator.c */
/*                                               ^^^^^^^ variable.other.indexed.c */
/*                                                      ^^ punctuation.accessor.c */
/*                                                        ^^^^ variable.other.member.c */
/*                                                            ^ punctuation.separator.c */
      __le64_to_cpu(__entry->extended_addr))
/*    ^^^^^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                  ^^^^^^^ variable.other.indexed.c */
/*                         ^^ punctuation.accessor.c */
/*                           ^^^^^^^^^^^^^ variable.other.member.indexed.c */
/*                                        ^ meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
/*                                         ^ meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
);
/* <- meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
 /* <- punctuation.terminator.c */

static DEFINE_SPINLOCK(my_lock);
/* <- storage.modifier.c */
/*     ^^^^^^^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                    ^^^^^^^^^ meta.function-call.parameters.c */
/*                     ^^^^^^^ variable.other.indexed.c */

MACRO_CALL_NO_SEMI(
/* <- meta.function-call.c constant.other.macro.c */
/*                ^ meta.function-call.parameters.c punctuation.section.group.begin.c */
  __with_complex_params(34)
/*^ meta.function-call.c constant.other.macro.c */
/*                     ^^^^ meta.function-call.parameters.c */
)
/* <- meta.function-call.parameters.c punctuation.section.group.end.c */

MACRO_CALL_NO_SEMI(
/* <- meta.function-call.c constant.other.macro.c */
/*                ^ meta.function-call.parameters.c punctuation.section.group.begin.c */
  __with_complex_params(34)
/*^ meta.function-call.c constant.other.macro.c */
/*                     ^^^^ meta.function-call.parameters.c */
)
/* <- meta.function-call.parameters.c punctuation.section.group.end.c */

SHOW(temp0, temp0)   /* a comment */
/* <- meta.function-call.c constant.other.macro.c */
/*   ^^^^ variable.other.indexed.c */
/*          ^^^^^ variable.other.indexed.c */
/*                   ^^^^^^^^^^^^^^^ comment.block.c */
SHOW(temp1, temp1)   /* a comment */
/* <- meta.function-call.c constant.other.macro.c */
/*   ^^^^ variable.other.indexed.c */
/*          ^^^^^ variable.other.indexed.c */
/*                   ^^^^^^^^^^^^^^^ comment.block.c */

static inline u64 xhci_read_64(const struct xhci_hcd *xhci,
/*<- storage.modifier.c */
/*     ^^^^^^ storage.modifier.c */
/*                ^^^^^^^^^^^^ entity.name.function.c */
/*                            ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*                             ^^^^^ storage.modifier.c */
/*                                   ^^^^^^ keyword.declaration.struct.c */
/*                                          ^^^^^^^^ support.type.c */
/*                                                   ^ storage.modifier.c */
/*                                                    ^^^^ variable.parameter.c */
/*                                                        ^ punctuation.separator.c */
    __le64 __iomem *regs);
/*  ^^^^^^ constant.other.macro.c */
/*         ^^^^^^^ constant.other.macro.c */
/*                 ^ storage.modifier.c */
/*                  ^^^^ variable.parameter.c */
/*                      ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
/*                       ^ punctuation.terminator.c */

int main(void)
{
    struct UI_BoundingBox decorativeBox = {10, titleHeight-3, width-20, height-10};
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type - entity.name */
}

struct MACRO foo {
/* <- keyword.declaration.struct.c */
/*     ^ constant.other.macro */
/*           ^ entity.name.struct */
}

struct UI_BoundingBox position;
/*     ^ support.type.c - entity.name */
/*                     ^ entity.name.variable.indexed.c */

struct UI_BoundingBox *position_p;
/*     ^ support.type.c - entity.name */
/*                     ^ entity.name.variable.indexed.c */

struct UI_BoundingBox * position_p1;
/*     ^ support.type.c - entity.name */
/*                      ^ entity.name.variable.indexed.c */

struct UI_BoundingBox **position_p2;
/*     ^ support.type.c - entity.name */
/*                      ^ entity.name.variable.indexed.c */

struct UI_BoundingBox ** position_p3;
/*     ^ support.type.c - entity.name */
/*                       ^ entity.name.variable.indexed.c */


struct UI_BoundingBox ** position_p4, position_p5, * position_p6;
/*     ^ support.type.c - entity.name */
/*                       ^ entity.name.variable.indexed.c */
/*                    ^^ storage.modifier.c */
/*                                  ^ punctuation.separator */
/*                                    ^ entity.name.variable.indexed.c */
/*                                               ^ punctuation.separator */
/*                                                 ^ storage.modifier.c */
/*                                                   ^ entity.name.variable.indexed.c */

// Partially-typed
struct foo
/*     ^ entity.name */

struct UI_MenuBoxData
/* <- keyword.declaration.struct.c */
/*     ^ entity.name.struct */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    struct UI_BoundingBox position;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^ entity.name.member.indexed.c */
/*                                ^ punctuation.terminator.c */
    struct UI_BoundingBox *position_p;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                         ^ entity.name.member.indexed.c */
/*                                   ^ punctuation.terminator.c */
    struct UI_BoundingBox * position_p1;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                          ^ entity.name.member.indexed.c */
/*                                     ^ punctuation.terminator.c */
    struct UI_BoundingBox **position_p2;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^^ storage.modifier.c */
/*                          ^ entity.name.member.indexed.c */
/*                                     ^ punctuation.terminator.c */
    struct UI_BoundingBox ** position_p3;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^^ storage.modifier.c */
/*                           ^ entity.name.member.indexed.c */
/*                                      ^ punctuation.terminator.c */
    struct UI_BoundingBox* position_p4;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                       ^ storage.modifier.c */
/*                         ^ entity.name.member.indexed.c */
/*                                    ^ punctuation.terminator.c */
    struct UI_BoundingBox** position_p5;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                       ^^ storage.modifier.c */
/*                          ^ entity.name.member.indexed.c */
/*                                     ^ punctuation.terminator.c */
    struct UI_BoundingBox * * position_p5;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                          ^ storage.modifier.c */
/*                            ^ entity.name.member.indexed.c */
/*                                       ^ punctuation.terminator.c */
    struct UI_BoundingBox *pos_1, *pos_1;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                         ^ entity.name.member.indexed.c */
/*                                ^ storage.modifier.c */
/*                                 ^ entity.name.member.indexed.c */
/*                                      ^ punctuation.terminator.c */

    const volatile struct UI_BoundingBox *cv_p;
/*  ^^^^^ storage.modifier.c */
/*        ^^^^^^^^ storage.modifier.c */
/*                 ^^^^^^ keyword.declaration.struct.c */
/*                        ^ support.type.c - entity.name */
/*                                       ^ storage.modifier.c */
/*                                        ^ entity.name.member.indexed.c */
/*                                            ^ punctuation.terminator.c */
    long resume_done[USB_MAXCHILDREN];
/*  ^^^^ storage.type.c */
/*       ^^^^^^^^^^^ entity.name.member.indexed.c */
/*                  ^^^^^^^^^^^^^^^^^ meta.brackets.c */
/*                  ^ punctuation.section.brackets.begin.c */
/*                   ^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                                  ^ punctuation.section.brackets.end.c */
/*                                   ^ punctuation.terminator.c */
    struct xhci_run_regs __iomem *run_regs;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                       ^ constant.other.macro.c */
/*                               ^ storage.modifier.c */
/*                                 ^ entity.name.member.indexed.c */
/*                                        ^ punctuation.terminator.c */
    struct xhci_run_regs __attribute__((noderef)) *run_regs;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity.name */
/*                       ^ - entity.name */
/*                                                ^ storage.modifier.c */
/*                                                 ^ entity.name.member.indexed.c */
/*                                                         ^ punctuation.terminator.c */
    struct __attribute__((noderef)) xhci_run_regs *run_regs;
/*  ^^^^^^ keyword.declaration.struct.c */
/*                                  ^ support.type.c - entity.name */
/*                                                ^ storage.modifier.c */
/*                                                 ^ entity.name.member.indexed.c */
/*                                                         ^ punctuation.terminator.c */
    struct nested_t {
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^^^^^^^^ entity.name.struct.c */
/*                  ^ meta.struct.body.c meta.block.c meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
        int bar;
/*      ^^^ storage.type.c */
/*          ^^^ entity.name.member.c */
    } nested;
/*  ^ meta.struct.body.c meta.block.c meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*    ^^^^^^ entity.name.member.indexed.c */
/*          ^ punctuation.terminator.c */

#define CMD_RING_STATE_RUNNING         (1 << 0)
/* <- meta.preprocessor.macro.c keyword.control.import.define.c */
/*      ^ meta.preprocessor.macro.c entity.name.constant.preprocessor.c */

    enum UI_BoxCharType borderType;
/*  ^^^^ keyword.declaration.enum.c */
/*       ^^^^^^^^^^^^^^ support.type.c - entity.name */
/*                      ^ entity.name.member.indexed.c */
/*                                ^ punctuation.terminator.c */
    unsigned int paddingX;
/*  ^^^^^^^^ storage.type.c */
/*           ^^^ storage.type.c */
/*               ^^^^^^^^ entity.name.member.indexed.c */
/*                       ^ punctuation.terminator.c */
    unsigned int paddingY;
/*  ^^^^^^^^ storage.type.c */
/*           ^^^ storage.type.c */
/*               ^^^^^^^^ entity.name.member.indexed.c */
/*                       ^ punctuation.terminator.c */
    struct UI_ScrollBoxText boxContents[];
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^^^^^^^^^^^^^^^^ support.type.c */
/*                          ^^^^^^^^^^^ entity.name.member.indexed.c */
/*                                     ^ punctuation.section.brackets.begin.c */
/*                                      ^ punctuation.section.brackets.end.c */
/*                                       ^ punctuation.terminator.c */

    struct delayed_work monitor_work ____cacheline_aligned_in_smp;
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^^^^^^^^^^^^ support.type.c */
/*                      ^^^^^^^^^^^^ entity.name.member.indexed.c */
/*                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                                                               ^ punctuation.terminator.c */
    const struct efx_channel_type *
/*  ^^^^^storage.modifier.c */
/*        ^^^^^^ keyword.declaration.struct.c */
/*               ^^^^^^^^^^^^^^^^ support.type - entity.name */
/*                                ^ storage.modifier.c */
    extra_channel_type[EFX_MAX_EXTRA_CHANNELS];
/*  ^^^^^^^^^^^^^^^^^^ entity.name.member.indexed.c */
/*                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.c */
/*                     ^^^^^^^^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                    ^ punctuation.section.brackets.begin.c */
/*                                           ^ punctuation.section.brackets.end.c */

#if 0
    struct UI_BoundingBox bb1;
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.preprocessor.if-branch.c */
#else
    struct UI_BoundingBox bb1;
#endif
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

#define CMD_RING_STATE_RUNNING         (1 << 0)
/* <- meta.preprocessor.macro.c keyword.control.import.define.c */
/*      ^ meta.preprocessor.macro.c entity.name.constant.preprocessor.c */

struct __attribute__((packed)) child_t {
/* <- keyword.declaration.struct.c */
/*     ^ meta.attribute.c storage.modifier.c */
/*                             ^^^^^^^ entity.name.struct */
    int foo;
/*  ^^^ storage.type.c */
/*      ^^^ entity.name.member.c */
};

struct child_t child1;

struct __attribute__((packed)) child_t_line
/* <- keyword.declaration.struct.c */
/*     ^ meta.attribute.c storage.modifier.c */
/*                             ^^^^^^^ entity.name.struct */
{
    int foo;
/*  ^^^ storage.type.c */
/*      ^^^ entity.name.member.c */
};

struct __attribute__((packed))
/* <- keyword.declaration.struct.c */
/*     ^ meta.attribute.c storage.modifier.c */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int foo;
/*  ^^^ storage.type.c */
/*      ^^^ entity.name.member.c */
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

struct rproc_ops {
/* <- keyword.declaration.struct.c */
/*     ^ entity.name.struct */
/*               ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int (*start)(struct rproc *rproc);
/*  ^^^ storage.type.c */
/*        ^^^^^ entity.name.member.indexed.c */
/*               ^^^^^^ keyword.declaration.struct.c */
/*                      ^^^^^ support.type.c */
/*                             ^^^^^ variable.parameter.c */
    int (*start)(struct rproc *);
/*  ^^^ storage.type.c */
/*        ^^^^^ entity.name.member.indexed.c */
/*              ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*               ^^^^^^ keyword.declaration.struct.c */
/*                      ^^^^^ support.type.c */
/*                            ^ storage.modifier.c */
/*                             ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
    u32 (*start)(struct rproc *, struct rproc *);
/*  ^^^ support.type.c */
/*        ^^^^^ entity.name.member.indexed.c */
/*              ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*               ^^^^^^ keyword.declaration.struct.c */
/*                      ^^^^^ support.type.c */
/*                            ^ storage.modifier.c */
/*                             ^ punctuation.separator.c */
/*                               ^^^^^^ keyword.declaration.struct.c */
/*                                      ^^^^^ support.type.c */
/*                                            ^ storage.modifier.c */
/*                                             ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
    void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
/*  ^^^ storage.type.c */
/*           ^^^^^^^^ entity.name.member.indexed.c */
/*                     ^^^^^^ keyword.declaration.struct.c */
/*                            ^^^^^ support.type.c */
/*                                   ^^^^^ variable.parameter.c */
/*                                          ^^^ support.type */
/*                                              ^^ variable.parameter */
/*                                                  ^^^ storage.type */
/*                                                      ^^^ variable.parameter */
    struct resource_table *(*find_loaded_rsc_table)(
/*  ^^^^^^ keyword.declaration.struct.c */
/*         ^^^^^^^^^^^^^^ support.type.c */
/*                           ^^^^^^^^^^^^^^^^^^^^^ entity.name.member.indexed.c */
                struct rproc *rproc, const struct firmware *fw);
/*              ^^^^^^ keyword.declaration.struct.c */
/*                     ^^^^^ support.type.c */
/*                           ^ storage.modifier.c */
/*                            ^^^^^ variable.parameter.c */
/*                                 ^ punctuation.separator */
/*                                   ^^^^^ storage.modifier.c */
/*                                         ^^^^^^ keyword.declaration.struct.c */
/*                                                ^^^^^^^^ support.type.c */
/*                                                          ^^ variable.parameter.c */
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
/* <- storage.type.c */
/*       ^^^^^^^^ entity.name.variable.indexed.c */
/*                 ^^^^^^ keyword.declaration.struct.c */
/*                        ^^^^^ support.type.c */
/*                              ^ storage.modifier.c */
/*                               ^^^^^ variable.parameter.c */
/*                                      ^^^ support.type.c */
/*                                          ^^ variable.parameter */
/*                                              ^^^ storage.type */
/*                                                  ^^^ variable.parameter */

struct resource_table *(*find_loaded_rsc_table)(
/* <- keyword.declaration.struct.c */
/*     ^^^^^^^^^^^^^^ support.type.c */
/*                       ^^^^^^^^^^^^^^^^^^^^^ entity.name.variable.indexed.c */
            struct rproc *rproc, const struct firmware *fw);
/*          ^^^^^^ keyword.declaration.struct.c */
/*                 ^^^^^ support.type.c */
/*                       ^ storage.modifier.c */
/*                        ^^^^^ variable.parameter.c */
/*                             ^ punctuation.separator */
/*                               ^^^^^ storage.modifier.c */
/*                                     ^^^^^^ keyword.declaration.struct.c */
/*                                            ^^^^^^^^ support.type.c */
/*                                                     ^ storage.modifier.c */
/*                                                      ^^ variable.parameter.c */


void do_pci_scan_bridge(struct device *dev,
/*   ^^^^^^^^^^^^^^^^^^ meta.function.c entity.name.function.c */
/*                     ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c - meta.function.c */
/*                      ^^^^^^ keyword.declaration.struct.c */
/*                             ^^^^^^ support.type.c */
/*                                    ^ storage.modifier.c */
/*                                     ^^^ variable.parameter.c */
/*                                        ^ punctuation.separator.c */
  void (*do_scan_bus)(int max_devfn));
/*^^^^ storage.type.c */
/*     ^ meta.function.parameters.c meta.group.c meta.group.c punctuation.section.group.begin.c */
/*      ^ storage.modifier.c */
/*       ^^^^^^^^^^^ variable.parameter.c */
/*                  ^ meta.function.parameters.c meta.group.c meta.group.c punctuation.section.parens.end.c */
/*                   ^ meta.function.parameters.c meta.group.c meta.function.parameters.c meta.group.c punctuation.section.group.begin.c - meta.function.c */
/*                    ^^^ storage.type.c */
/*                        ^^^^^^^^^ variable.parameter.c */
/*                                 ^ meta.function.parameters.c meta.group.c meta.function.parameters.c meta.group.c punctuation.section.group.end.c - meta.function.c */
/*                                  ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c - meta.function.c */
/*                                   ^ punctuation.terminator.c - meta.function */

extern int (*something)(const struct pci_dev *dev);
/* <- storage.modifier.c */
/*     ^^^ storage.type.c */
/*          ^ storage.modifier.c */
/*           ^^^^^^^^^ entity.name.variable.indexed.c */
/*                     ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*                      ^^^^^ storage.modifier.c */
/*                            ^^^^^^ keyword.declaration.struct.c */
/*                                   ^^^^^^^ support.type.c */
/*                                           ^ storage.modifier.c */
/*                                            ^^^ variable.parameter.c*/
/*                                               ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
/*                                                ^ punctuation.terminator.c */

/* We can't match this as a function */
static ssize_t function_with_params_on_newline
/* <- storage.modifier.c */
/*     ^^^^^^^ support.type.sys-types.c */
/*             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.type.c*/
    (struct device *dev,
/*  ^ meta.group.c punctuation.section.group.begin.c */
/*   ^^^^^^ keyword.declaration.struct.c */
/*          ^^^^^^ support.type.c */
/*                 ^ keyword.operator.c */
/*                  ^^^ variable.other.c */
/*                     ^ punctuation.separator.c */
     char *buf)
/*   ^^^^ storage.type.c */
/*        ^ keyword.operator.c */
/*         ^^^ variable.other.c */
/*            ^ punctuation.section.group.end.c */
{
/* <- meta.block.c punctuation.section.block.begin.c */
  return 0;
}
/* <- meta.block.c punctuation.section.block.end.c */


static const struct pci_driver my_driver __pci_driver __driver = {
/* <- storage.modifier.c */
/*     ^^^^^ storage.modifier.c */
/*           ^^^^^^ keyword.declaration.struct.c */
/*                  ^^^^^^^^^^ support.type.c */
/*                             ^^^^^^^^^ entity.name.variable.indexed.c */
/*                                       ^^^^^^^^^^^^ constant.other.macro.c */
/*                                                    ^^^^^^^^ constant.other.macro.c */
  .ops      = &pci_my_device_ops,
/*^ punctuation.accessor.c */
/* ^^^ variable.other.member.c */
/*          ^ keyword.operator.assignment.c */
/*            ^ keyword.operator.c */
/*             ^^^^^^^^^^^^^^^^^ variable.other.indexed.c */
/*                              ^ punctuation.separator.c */
  .vendor   = PCI_VENDOR_ID,
/*^ punctuation.accessor.c */
/* ^^^^^^ variable.other.member.indexed.c */
/*          ^ keyword.operator.assignment.c */
/*            ^^^^^^^^^^^^^ constant.other.macro.c */
/*                         ^ punctuation.separator.c */
  .devices  = pci_device_ids,
/*^ punctuation.accessor.c */
/* ^^^^^^^ variable.other.member.indexed.c */
/*          ^ keyword.operator.assignment.c */
/*            ^^^^^^^^^^^^^^ variable.other.indexed.c */
/*                          ^ punctuation.separator.c */
};

struct __ec_align4 ec_response_get_version {};
/* <- keyword.declaration.struct.c */
/*     ^^^^^^^^^^^ constant.other.macro.c */
/*                 ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.struct.c */
struct __align(4) ec_response_get_version {};
/* <- keyword.declaration.struct.c */
/*     ^^^^^^^ meta.function-call.c constant.other.macro.c */
/*            ^^^ meta.function-call.parameters.c  */
/*                ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.struct.c */

struct ALIGN4 ec_response_get_version {};
/* <- keyword.declaration.struct.c */
/*     ^^^^^^ constant.other.macro */
/*            ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.struct.c */

static const struct spd_info {
/*           ^^^^^^ meta.struct.c keyword.declaration.struct.c */
/*                  ^^^^^^^^ entity.name.struct.c */
    size_t spd_len;
/*  ^^^^^^ support.type */
/*         ^^^^^^^ entity.name.member.indexed.c */
    size_t spd_part_len;
/*  ^^^^^^ support.type */
/*         ^^^^^^^ entity.name.member.indexed.c */
} spd_mem_info[] = {
/*^^^^^^^^^^^^  entity.name.variable.indexed.c */
/*            ^^ meta.brackets.c */
/*            ^ punctuation.section.brackets.begin.c */
/*             ^ punctuation.section.brackets.end.c */
    [SPD_INFO_DDR4] = {
/*  ^ meta.brackets.c punctuation.section.brackets.begin.c */
/*   ^^^^^^^^^^^^^ constant.other.macro.c */
/*                ^ meta.brackets.c punctuation.section.brackets.end.c */
        .spd_len = SPD_DDR4_LENGTH,
/*                 ^^^^^^^^^^^^^^^ constant.other.macro.c */
        .spd_part_len = SPD_DDR4_PART_LEN,
/*                      ^^^^^^^^^^^^^^^^^ constant.other.macro.c */
    },
    [SPD_INFO_DEFAULT] = {
/*  ^ meta.brackets.c punctuation.section.brackets.begin.c */
/*   ^^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                   ^ meta.brackets.c punctuation.section.brackets.end.c */
        .spd_len = spd_default_length,
/*                 ^^^^^^^^^^^^^^^^^^ variable.other.indexed.c */
        .spd_part_len = spd_default_part_len,
/*                      ^^^^^^^^^^^^^^^^^^^^ variable.other.indexed.c */
    },
};

void * const compat_sys_call_table[__NR_compat_syscalls] __aligned(4096) = {
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*     ^^^^^ storage.modifier.c */
/*           ^^^^^^^^^^^^^^^^^^^^^ entity.name.variable.indexed.c */
/*                                ^ meta.brackets.c punctuation.section.brackets.begin.c */
/*                                                     ^ meta.brackets.c punctuation.section.brackets.end.c */
/*                                                       ^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                                                                ^^^^^^ meta.function-call.parameters.c */
/*                                                                 ^^^^ constant.numeric.value.c */
/*                                                                       ^ keyword.operator.assignment.c */
/*                                                                         ^ meta.block.c punctuation.section.block.begin.c */
  [0 ... __NR_compat_syscalls - 1] = sys_ni_syscall,
/*^ meta.brackets.c punctuation.section.brackets.begin.c */
/* ^ constant.numeric.value.c */
/*   ^^^ keyword.operator.variadic.c */
/*       ^^^^^^^^^^^^^^^^^^^^ variable.other.indexed.c */
/*                            ^ keyword.operator.arithmetic.c */
/*                              ^ constant.numeric.value.c */
/*                               ^ meta.brackets.c punctuation.section.brackets.end.c */
/*                                 ^ keyword.operator.assignment.c */
/*                                   ^^^^^^^^^^^^^^ variable.other.indexed.c */
/*                                                 ^ punctuation.separator.c */
#include <asm/unistd32.h>
};
/* <- meta.block.c punctuation.section.block.end.c */
 /* <- punctuation.terminator.c */

pgd_t swapper_pg_dir[PTRS_PER_PGD] __aligned(PAGE_SIZE);
/* <- support.type.c */
/*    ^^^^^^^^^^^^^^ entity.name.variable.indexed.c */
/*                  ^^^^^^^^^^^^^^ meta.brackets.c */
/*                  ^ punctuation.section.brackets.begin.c */
/*                   ^^^^^^^^^^^^ constant.other.macro.c */
/*                               ^ punctuation.section.brackets.end.c */
/*                                 ^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                                          ^^^^^^^^^^^ meta.function-call.parameters.c */
/*                                          ^ meta.group.c punctuation.section.group.begin.c */
/*                                           ^^^^^^^^^ constant.other.macro.c */
/*                                                    ^ meta.group.c punctuation.section.group.end.c */
/*                                                     ^ punctuation.terminator.c */

struct mac_tfm_ctx {
/* <- keyword.declaration.struct.c */
/*     ^^^^^^^^^^^ entity.name.struct.c */
/*                 ^ meta.block.c  punctuation.section.block.begin.c */
  struct crypto_aes_ctx key;
/*^^^^^^ keyword.declaration.struct.c */
/*       ^^^^^^^^^^^^^^ support.type.c */
/*                      ^^^ entity.name.member.c */
/*                         ^ punctuation.terminator.c */
  struct crypto_aes_ctx __aligned(8) key2;
/*^^^^^^ keyword.declaration.struct.c */
/*       ^^^^^^^^^^^^^^ support.type.c */
/*                      ^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                               ^^^ meta.function-call.parameters.c */
/*                               ^ meta.group.c punctuation.section.group.begin.c */
/*                                ^ constant.numeric.value.c */
/*                                 ^ meta.group.c punctuation.section.group.end.c */
/*                                   ^^^^ entity.name.member.indexed.c */
/*                                       ^ punctuation.terminator.c */
  u8 __aligned(8) consts[];
/*^^ support.type.c */
/*   ^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*            ^^^ meta.function-call.parameters.c */
/*            ^ meta.group.c punctuation.section.group.begin.c */
/*             ^ constant.numeric.value.c */
/*              ^ meta.group.c punctuation.section.group.end.c */
/*                ^^^^^^ entity.name.member.indexed.c */
/*                      ^ meta.brackets.c punctuation.section.brackets.begin.c */
/*                       ^ meta.brackets.c punctuation.section.brackets.end.c */
/*                        ^ punctuation.terminator.c */
} __packed __aligned(4);
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^^^ constant.other.macro.c */
/*         ^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*                  ^^^ meta.function-call.parameters.c */
/*                  ^ meta.group.c punctuation.section.group.begin.c */
/*                   ^ constant.numeric.value.c */
/*                    ^ meta.group.c punctuation.section.group.end.c */
/*                     ^ punctuation.terminator.c */

void __attributes(int *bar) __must_hold(&foo)
/* <- storage.type.c */
/*   ^^^^^^^^^^^^ entity.name.function.c */
/*                ^^^ storage.type.c */
/*                    ^ storage.modifier.c */
/*                     ^^^ variable.parameter.c */
/*                          ^^^^^^^^^^^ meta.function-call.c */
/*                                     ^^^^^^ meta.function-call.parameters.c */
/*                                      ^ keyword.operator.c */
/*                                       ^^^ variable.other.c */
    __safe
/*  ^^^^^^ constant.other.macro.c */
    SAFE
/*  ^^^^ constant.other.macro.c */
    __blah(bar)
/*  ^^^^^^ meta.function-call.c constant.other.macro.c */
/*         ^^^ variable.other.c */
    __blah(bar, foo)
/*  ^^^^^^ meta.function-call.c constant.other.macro.c */
/*        ^^^^^^^^^^ meta.function-call.parameters.c */
/*         ^^^ variable.other.c */
/*              ^^^ variable.other.c */
    __must_hold(&abc->lock)
/*  ^^^^^^^^^^^ meta.function-call.c constant.other.macro.c */
/*             ^^^^^^^^^^^^ meta.function-call.parameters.c */
/*              ^ keyword.operator.c */
/*               ^^^ variable.other.c */
/*                  ^^ punctuation.accessor.c */
/*                    ^^^^ variable.other.member.c */
    {}
/*  ^^ meta.function.c meta.block.c */


void f_attributes(int *bar) __attribute__((context(&foo,1,1))) {}
/* <- storage.type.c */
/*   ^^^^^^^^^^^^ entity.name.function.c */
/*                ^^^ storage.type.c */
/*                    ^ storage.modifier.c */
/*                     ^^^ variable.parameter.c */
/*                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                          ^^^^^^^^^^^^^ storage.modifier.c */
/*                                                             ^^ meta.function.c meta.block.c */

char *__attribute__((aligned(8))) *e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*    ^^^^^^^^^^^^^ storage.modifier.c */
/*                                ^ storage.modifier.c */
/*                                 ^ entity.name.variable.indexed.c */
/*                                  ^ punctuation.separator.c */
  *f,
/*^ storage.modifier.c */
/* ^ entity.name.variable.indexed.c */
/*  ^ punctuation.separator.c */
  __attribute__((aligned(8))) * g,
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*^^^^^^^^^^^^^ storage.modifier.c */
/*                            ^ storage.modifier.c */
/*                              ^ entity.name.variable.indexed.c */
/*                               ^ punctuation.separator.c */
  * __attribute__((aligned(8))) h;
/*^ storage.modifier.c */
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*  ^^^^^^^^^^^^^ storage.modifier.c */
/*                              ^ entity.name.variable.indexed.c */
/*                               ^ punctuation.terminator.c */

char *MACRO1 *e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^ constant.other.macro.c */
/*           ^ storage.modifier.c */
/*            ^ entity.name.variable.indexed.c */
/*             ^ punctuation.separator.c */
  *f,
/*^ storage.modifier.c */
/* ^ entity.name.variable.indexed.c */
/*  ^ punctuation.separator.c */
  MACRO1 * g,
/*^^^^^^ constant.other.macro.c */
/*       ^ storage.modifier.c */
/*         ^ entity.name.variable.indexed.c */
/*          ^ punctuation.separator.c */
  * MACRO1 * h;
/*^ storage.modifier.c */
/*  ^^^^^^ constant.other.macro.c */
/*         ^ storage.modifier.c */
/*           ^ entity.name.variable.indexed.c */
/*            ^ punctuation.terminator.c */

char *MACRO1 e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^ constant.other.macro.c */
/*           ^ entity.name.variable.indexed.c */
/*            ^ punctuation.separator.c */
  f,
/*^ entity.name.variable.indexed.c */
/* ^ punctuation.separator.c */
  MACRO1 g,
/*^^^^^^ constant.other.macro.c */
/*       ^ entity.name.variable.indexed.c */
/*        ^ punctuation.separator.c */
  * MACRO1 h;
/*^ storage.modifier.c */
/*  ^^^^^^ constant.other.macro.c */
/*         ^ entity.name.variable.indexed.c */
/*          ^ punctuation.terminator.c */

char *__aligned(8) *e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^^^^^^^ meta.function-call */
/*                 ^ storage.modifier.c */
/*                  ^ entity.name.variable.indexed.c */
/*                   ^ punctuation.separator.c */
  *f,
/*^ storage.modifier.c */
/* ^ entity.name.variable.indexed.c */
/*  ^ punctuation.separator.c */
  __aligned(8) * g,
/*^^^^^^^^^^^^ meta.function-call */
/*             ^ storage.modifier.c */
/*               ^ entity.name.variable.indexed.c */
/*                ^ punctuation.separator.c */
  * __aligned(8) h,
/*^ storage.modifier.c */
/*  ^^^^^^^^^^^^ meta.function-call */
/*               ^ entity.name.variable.indexed.c */
/*                ^ punctuation.separator.c */

  __aligned(sizeof(int)) * i,
/*^^^^^^^^^^^^^^^^^^^^^^ meta.function-call */
/*                       ^ storage.modifier.c */
/*                         ^ entity.name.variable.indexed.c */
/*                          ^ punctuation.separator.c */
  __aligned(sizeof(void *)) * j,
/*^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call */
/*                          ^ storage.modifier.c */
/*                            ^ entity.name.variable.indexed.c */
/*                             ^ punctuation.separator.c */
  __aligned(0x8) * k;
/*^^^^^^^^^^^^^^ meta.function-call */
/*               ^ storage.modifier.c */
/*                 ^ entity.name.variable.indexed.c */
/*                  ^ punctuation.terminator.c */

MACRO1 UPPER_VAR;
/* <- constant.other.macro.c */
/*     ^^^^^^^^^ entity.name.variable.indexed.c */
/*              ^ punctuation.terminator.c */

__safe UPPER_VAR;
/* <- constant.other.macro.c */
/*     ^^^^^^^^^ entity.name.variable.indexed.c */
/*              ^ punctuation.terminator.c */

TYPE(int) UPPER_VAR;
/* <- meta.function-call */
/*        ^^^^^^^^^ entity.name.variable.indexed.c */
/*                 ^ punctuation.terminator.c */

void __printf(1)
/* <- storage.type.c */
/*   ^^^^^^^^ meta.function-call.c constant.other.macro.c  */
/*            ^ constant.numeric.value.c */
/*           ^^^ meta.function-call.parameters.c */
__printf(1,)
/* ^^^^^ meta.function-call.c constant.other.macro.c */
/*      ^^^^ meta.function-call.parameters.c */
/*      ^ punctuation.section.group.begin.c */
/*       ^ constant.numeric.value.c */
/*        ^ punctuation.separator.c */
/*         ^ punctuation.section.group.end.c */
__printf(1, )
/* ^^^^^ meta.function-call.c constant.other.macro.c */
/*      ^^^^^ meta.function-call.parameters.c */
/*      ^ punctuation.section.group.begin.c */
/*       ^ constant.numeric.value.c */
/*        ^ punctuation.separator.c */
/*          ^ punctuation.section.group.end.c */
__printf(1, 2)
/* ^^^^^ meta.function-call.c constant.other.macro.c */
/*      ^^^^^^ meta.function-call.parameters.c */
/*      ^ punctuation.section.group.begin.c */
/*       ^ constant.numeric.value.c */
/*        ^ punctuation.separator.c */
/*          ^ constant.numeric.value.c */
/*           ^ punctuation.section.group.end.c */
__printf(1, 2, 3)
/* ^^^^^ meta.function-call.c constant.other.macro.c */
/*      ^^^^^^^^^ meta.function-call.parameters.c */
/*      ^ punctuation.section.group.begin.c */
/*       ^ constant.numeric.value.c */
/*        ^ punctuation.separator.c */
/*          ^ constant.numeric.value.c */
/*           ^ punctuation.separator.c */
/*             ^ constant.numeric.value.c */
/*              ^ punctuation.section.group.end.c */
__printf(0x1, 0xA, sizeof(int))
/* ^^^^^ meta.function-call.c constant.other.macro.c */
/*      ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.parameters.c */
/*      ^ punctuation.section.group.begin.c */
/*       ^^ constant.numeric.base.c */
/*         ^ constant.numeric.value.c */
/*          ^ punctuation.separator.c */
/*            ^^ constant.numeric.base.c */
/*              ^ constant.numeric.value.c */
/*               ^ punctuation.separator.c */
/*                 ^^^^^^ keyword.operator */
/*                        ^^^ storage.type.c */
/*                            ^ punctuation.section.group.end.c */
__i915_printk(void);
/* <- entity.name.function.c */
/*            ^^^^ storage.type.c */
/*                 ^ punctuation.terminator.c */

static const struct print_field const err_flags[];
/*<- storage.modifier.c */
/*     ^^^^^ storage.modifier.c */
/*                              ^^^^^ storage.modifier.c */
/*                                    ^^^^^^^^^ entity.name.variable.indexed.c */
/*                                             ^ punctuation.section.brackets.begin.c */
/*                                              ^ punctuation.section.brackets.end.c */
/*                                               ^ punctuation.terminator.c */

enum {
/* <- keyword.declaration.enum.c */
    ENUM_A,
/*  ^ entity.name.constant.enum.c */
/*        ^ punctuation.separator.c */
    ENUM_B = 6,
/*  ^ entity.name.constant.enum.c */
/*         ^ keyword.operator.assignment */
/*           ^ constant.numeric.value.c */
/*            ^ punctuation.separator.c */
#ifdef ENABLED_FEATURE
/* <- meta.preprocessor.c keyword.control.import.c */
/*     ^^^^^^^^^^^^^^^ constant.other.macro.c */
    ENUM_ENABLED,
/*  ^^^^^^^^^^^^ entity.name.constant.enum.c */
#else
/* <- meta.preprocessor.c keyword.control.import.c */
    ENUM_DISABLED,
/*  ^^^^^^^^^^^^^ entity.name.constant.enum.c */
#endif
/* <- meta.preprocessor.c keyword.control.import.c */

#if 0
/* <- meta.preprocessor.c keyword.control.import.c */
    ENUM_FIELD_DISABLED
/*  ^^^^^^^^^^^^^^^^^^^ entity.name.constant.enum.c */
#endif
/* <- meta.preprocessor.c keyword.control.import.c */

    ENUM_C
/*  ^ entity.name.constant.enum.c */
};

enum typec_mux {
/* <- meta.enum.c keyword.declaration.enum.c */
/*   ^^^^^^^^^ entity.name.enum.c */
  TYPEC_MUX_NONE = 0,
/*^^^^^^^^^^^^^^ entity.name.constant.enum.c */
/*               ^ keyword.operator.assignment.c */
/*                 ^ constant.numeric.value.c */
/*                  ^ punctuation.separator.c */
  TYPEC_MUX_USB  = MUX_USB_ENABLED,
/*^^^^^^^^^^^^^ entity.name.constant.enum.c */
/*               ^ keyword.operator.assignment.c */
/*                 ^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                                ^ punctuation.separator.c */
  TYPEC_MUX_DOCK = MUX_USB_ENABLED | MUX_DP_ENABLED,
/*^^^^^^^^^^^^^^ entity.name.constant.enum.c */
/*               ^ keyword.operator.assignment.c */
/*                 ^^^^^^^^^^^^^^^ constant.other.macro.c */
/*                                 ^ keyword.operator */
/*                                   ^^^^^^^^^^^^^^ constant.other.macro.c */
};
/* <-meta.enum.c meta.block.c punctuation.section.block.end.c */
 /* <- punctuation.terminator.c */

/////////////////////////////////////////////
// Test preprocessor branching and C blocks
/////////////////////////////////////////////

int foo(int val, float val2[][])
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.group */
/*     ^ punctuation.section.group.begin */
/*          ^^^ variable.parameter */
/*             ^ punctuation.separator */
/*                     ^^^^ variable.parameter */
/*                         ^^ meta.brackets.c */
/*                         ^ punctuation.section.brackets.begin */
/*                          ^ punctuation.section.brackets.end */
/*                           ^^ meta.brackets.c */
/*                           ^ punctuation.section.brackets.begin */
/*                            ^ punctuation.section.brackets.end */
/*                             ^ punctuation.section.group.end */
{
/* <- meta.function meta.block */
    myClass *result;
/*           ^^^^^^ variable.other.indexed.c */
    result->kk = func(val);
/*        ^^ punctuation.accessor */
/*  ^^^^^^ variable.other.indexed.c */
/*          ^^ variable.other.member.c */
/*                    ^^^ variable.other.c */
    if (result != 0) {
/*      ^^^^^^ variable.other.indexed.c */
/*             ^^ keyword.operator.comparison.c */
        return 0;
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
/*      ^^^^^^ variable.other.indexed.c */
    ;

    if (val == -1) {
/*  ^^ keyword.control */
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
/*      ^^^ variable.other.c */
        lptm
/*      ^^^^ variable.other.c */
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
/*                ^ storage.modifier.c */
/*                  ^^^^^^ meta.function entity.name.function */
(int * a)
/*^^^^^^^ meta.function.parameters meta.group */
/* <- punctuation.section.group.begin */
/*   ^ storage.modifier */
/*     ^ variable.parameter */
/*      ^ punctuation.section.group.end */
{
/* <- meta.function meta.block punctuation.section.block.begin */
}

MACRO1
/* <- constant.other.macro.c */
RETURN_TYPE
/* <- constant.other.macro.c */
func_name() {
/* < entity.name.function */
}

MACRO1 void MACRO2 * myfuncname ();
/* <- constant.other.macro.c */
/*     ^ storage.type.c */
/*          ^ constant.other.macro.c */
/*                 ^ storage.modifier.c */
/*                   ^^^^^^^^^^ meta.function.c entity.name.function.c */
/*                              ^^ meta.function.parameters.c*/
/*                                ^ punctuation.terminator.c */

MACRO1 void MACRO2 myfuncname (), MACRO2 foo(), UPPER_VAR, UPPERFN();
/* <- constant.other.macro.c */
/*     ^ storage.type.c */
/*          ^ constant.other.macro.c */
/*                 ^^^^^^^^^^ meta.function.c entity.name.function.c */
/*                            ^^ meta.group.c*/
/*                              ^ punctuation.separator.c */
/*                                ^^^^^^ constant.other.macro.c */
/*                                       ^^^ entity.name.function.c */
/*                                          ^^ meta.function.parameters.c */
/*                                            ^ punctuation.separator.c */
/*                                              ^^^^^^^^^ entity.name.variable.indexed.c */
/*                                                       ^ punctuation.separator.c */
/*                                                         ^^^^^^^ entity.name.function.c */
/*                                                                ^^ meta.function.parameters.c */
/*                                                                  ^ punctuation.terminator.c */

void func(int pack __attribute__((unused)),
/* <- storage.type.c */
/*   ^^^^ meta.function.c entity.name.function.c */
/*       ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*        ^^^ storage.type.c */
/*            ^^^^ - variable.parameter.c - This is wrong */
/*                 ^^^^^^^^^^^^^ storage.modifier.c */
/*                 ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                                        ^ punctuation.separator.c */
  struct usbip_usb_interface *udev
/*^^^^^^ keyword.declaration.struct.c */
/*       ^^^^^^^^^^^^^^^^^^^ support.type.c */
/*                           ^ storage.modifier.c */
/*                            ^^^^ variable.parameter.c */
  __attribute__((unused)));
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*                       ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
/*                        ^ punctuation.terminator.c */

MACRO1 void * MACRO2 myfuncname () {
/* <- constant.other.macro.c */
/*     ^^^^ storage.type.c */
/*          ^ storage.modifier.c */
/*            ^^^^^^ constant.other.macro */
/*                   ^^^^^^^^^^ meta.function */
/*                              ^^ meta.function.parameters */
/*                                 ^ meta.block punctuation.section.block.begin */
/*     ^ storage.type */
/*          ^ storage.modifier */
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

    struct Args {
/*  ^ keyword.declaration.struct.c */
/*         ^ entity.name.struct */
        void* hello;
/*            ^^^^^ entity.name.member.indexed.c */
        void* foobar;
/*            ^^^^^^ entity.name.member.indexed.c */
    };

    struct Args args;
/*  ^ keyword.declaration.struct.c */
/*         ^ support.type.c - entity */
/*              ^^^^ variable.other.c */
}

static const uint32_t * const MACRO funcname();
/*                                  ^^^^^^^^^^ meta.function */
/*                                          ^^ meta.function.parameters */
/* ^ storage.modifier */
/*     ^ storage.modifier */
/*           ^ support.type */
/*                    ^ storage.modifier.c */
/*                      ^ storage.modifier */
/*                            ^^^^^ constant.other.macro */
/*                                  ^ entity.name.function */

MACRO int
/*    ^ storage.type */
funcname2
/* ^ support.type.c */
()
{
    int a[5];
/*       ^^^ meta.brackets */
/*       ^ punctuation.section.brackets.begin */
/*         ^ punctuation.section.brackets.end */
}

MACRO_CALL(int) foo;
/*^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^ meta.group */
/*              ^^^ entity.name.variable.indexed.c */
/*                 ^ punctuation.terminator.c */
MACRO_CALL(int) ALIGNED(8) foo;
/*^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^ meta.function-call.parameters.c */
/*              ^^^^^^^^^^ meta.function-call */
/*                     ^^^ meta.function-call.parameters.c */
/*                         ^^^ entity.name.variable.indexed.c */
/*                            ^ punctuation.terminator.c */

MACRO_CALL(int) ALIGNED(8) macro_prefixed_func(){}
/*^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^ meta.function-call.parameters.c */
/*              ^^^^^^^^^^ meta.function-call */
/*                     ^^^ meta.function-call.parameters.c */
/*                         ^ entity.name.function */


MACRO_CALL(int) macro_prefixed_func(){}
/*^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^ meta.function-call.parameters.c */
/*        ^ punctuation.section.group.begin */
/*            ^ punctuation.section.group.end */
/*              ^ entity.name.function */

extern NCURSES_EXPORT(int) use_default_colors (void);
/* <- storage.modifier.c */
/*     ^^^^^^^^^^^^^^ meta.function-call.c */
/*                   ^^^^^ meta.function-call.parameters.c */
/*                         ^^^^^^^^^^^^^^^^^^ meta.function.c */
/*                                            ^^^^^^ meta.function.parameters.c */
/*                                                  ^ punctuation.terminator.c */

extern NCURSES_EXPORT(const char *) curses_version (void);
/* <- storage.modifier.c */
/*     ^^^^^^^^^^^^^^ meta.function-call.c */
/*                   ^^^^^^^^^^^^^^ meta.function-call.parameters.c */
/*                                  ^^^^^^^^^^^^^^ meta.function.c */
/*                                                 ^^^^^^ meta.function.parameters.c */
/*                                                       ^ punctuation.terminator.c */

extern NCURSES_EXPORT_VAR(int) COLORS;
/* <- storage.modifier.c */
/*     ^^^^^^^^^^^^^^^^^ meta.function-call.c */
/*                       ^^^^^ meta.function-call.parameters.c */
/*                             ^^^^^^ entity.name.variable.indexed.c */

int* return_type_pointer_no_space(){}
/* <- storage.type.c */
/* ^ storage.modifier.c */
/*   ^ entity.name.function */

// Make sure there isn't an incorrect match here since this is not a valid
// function definition
int32
/* <- - entity.name.function */
() {}

_declspec(deprecated("bla")) void func2(int) {}
/* <- meta.function-call constant.other.macro.c               */
/*                           ^^^^ storage.type.c */
/*                                ^ entity.name.function      */
/*                                      ^^^ storage.type.c */
__declspec(deprecated("bla")) void func2(int) {}
/* <- storage.modifier - variable.function                    */
/*         ^ storage.modifier - variable.function             */
/*                    ^ string.quoted.double punctuation      */
/*                     ^ string.quoted.double - punctuation   */
/*                       ^ string.quoted.double - punctuation */
/*                        ^ string.quoted.double punctuation  */
/*                         ^^ punctuation - invalid           */
/*                                 ^ entity.name.function     */
/*                                       ^^^ storage.type.c */
__notdeclspec(deprecated("bla")) void func2(int) {}
/* <- meta.function-call constant.other.macro.c               */
/*                               ^^^^ storage.type.c */
/*                                    ^ entity.name.function  */
/*                                          ^^^ storage.type.c */

func_call(foo
/*^^^^^^^^^^^ meta.function-call */
/*       ^^^^ meta.group */
/*        ^^^ variable.other.c */
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
// Includes
/////////////////////////////////////////////

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
/*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.macro.c */
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
/*     ^ meta.number.integer.decimal.c constant.numeric.value.c */
/*      ^ punctuation.terminator - constant */
dec1 = 1234567890;
/*     ^^^^^^^^^^ meta.number.integer.decimal.c constant.numeric.value.c */
/*               ^ punctuation.terminator - constant */

dec2 = 1234567890f;
/*     ^^^^^^^^^^^ meta.number.float.decimal.c */
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^ constant.numeric.suffix.c */
/*                ^ punctuation.terminator - constant */

dec3 = 1234567890L;
/*     ^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^ constant.numeric.suffix.c */
/*                ^ punctuation.terminator - constant */

dec4 = 1234567890ul;
/*     ^^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^^ constant.numeric.suffix.c */
/*                 ^ punctuation.terminator - constant */

dec5 = 1234567890Lu;
/*     ^^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^^ constant.numeric.suffix.c */
/*                 ^ punctuation.terminator - constant */

dec6 = 1234567890LLU;
/*     ^^^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^^^ constant.numeric.suffix.c */
/*                  ^ punctuation.terminator - constant */

dec7 = 1234567890uLL;
/*     ^^^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^^^ constant.numeric.suffix.c */
/*                  ^ punctuation.terminator - constant */

dec8 = 1'234_567'890s0f;
/*     ^ meta.number.integer.decimal.c constant.numeric.value.c */
/*      ^^^^^^^^^ string.quoted.single */
/*               ^^^^^^ meta.number.integer.decimal.c */
/*               ^^^ constant.numeric.value.c */
/*                  ^^^ invalid.illegal.numeric.suffix.c */
/*                     ^ punctuation.terminator - constant */

oct1 = 01234567;
/*     ^^^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^^^^^^ constant.numeric.value.c */
/*             ^ punctuation.terminator - constant */

oct2 = 01234567L;
/*     ^^^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^^^^^^ constant.numeric.value.c */
/*             ^ constant.numeric.suffix.c */
/*              ^ punctuation.terminator - constant */

oct3 = 01234567LL;
/*     ^^^^^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^^^^^^ constant.numeric.value.c */
/*             ^^ constant.numeric.suffix.c */
/*               ^ punctuation.terminator - constant */

oct4 = 01234567ulL;
/*     ^^^^^^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^^^^^^ constant.numeric.value.c */
/*             ^^^ constant.numeric.suffix.c */
/*                ^ punctuation.terminator - constant */

oct2 = 01284967Z0L;
/*     ^^^^^^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^ constant.numeric.value.c */
/*        ^^^^^^^^ invalid.illegal.numeric.suffix.c */
/*                ^ punctuation.terminator - constant */

hex1 = 0x0+0xFL+0xaull+0xallu+0xfu+0x'f'12_4uz;
/*     ^^^ meta.number.integer.hexadecimal.c */
/*     ^^ constant.numeric.base.c */
/*       ^ constant.numeric.value.c */
/*         ^^^^ meta.number.integer.hexadecimal.c */
/*         ^^ constant.numeric.base.c */
/*           ^ constant.numeric.value.c */
/*            ^ constant.numeric.suffix.c */
/*              ^^^^^^ meta.number.integer.hexadecimal.c */
/*              ^^ constant.numeric.base.c */
/*                ^ constant.numeric.value.c */
/*                 ^^^ constant.numeric.suffix.c */
/*                     ^^^^^^ meta.number.integer.hexadecimal.c */
/*                     ^^ constant.numeric.base.c */
/*                       ^ constant.numeric.value.c */
/*                        ^^^ constant.numeric.suffix.c */
/*                            ^^^^ meta.number.integer.hexadecimal.c */
/*                            ^^ constant.numeric.base.c */
/*                              ^ constant.numeric.value.c */
/*                               ^ constant.numeric.suffix.c */
/*                                 ^^ meta.number.integer.hexadecimal.c */
/*                                 ^^ constant.numeric.base.c */
/*                                   ^^^ string.quoted.single.c */
/*                                      ^^^^^^ meta.number.integer.decimal.c */
/*                                      ^^ constant.numeric.value.c */
/*                                        ^^^^ invalid.illegal.numeric.suffix.c */
/*                                            ^ punctuation.terminator - constant */

hex2 = 0xc1.01AbFp-1+0x1.45c778p+7f;
/*     ^^^^^^^^^^^^^ meta.number.float.hexadecimal.c */
/*     ^^ constant.numeric.base.c */
/*       ^^^^^^^^^^^ constant.numeric.value.c */
/*         ^ punctuation.separator.decimal.c */
/*                  ^ keyword.operator.arithmetic - constant.c */
/*                   ^^^^^^^^^^^^^^ meta.number.float.hexadecimal.c */
/*                   ^^ constant.numeric.base.c */
/*                     ^^^^^^^^^^^ constant.numeric.value.c */
/*                      ^ punctuation.separator.decimal.c */
/*                                ^ constant.numeric.suffix.c */
/*                                 ^ punctuation.terminator - constant */

f = 1.1+1.1e1+1.1e-1+1.1f+1.1e1f+1.1e-1f+1.1L+1.1e1L+1.1e-1L;
/*  ^^^ meta.number.float.decimal.c */
/*  ^^^ constant.numeric.value.c */
/*   ^ punctuation.separator.decimal.c */
/*     ^ keyword.operator.arithmetic.c */
/*      ^^^^^ meta.number.float.decimal.c */
/*      ^^^^^ constant.numeric.value.c */
/*       ^ punctuation.separator.decimal.c */
/*           ^ keyword.operator.arithmetic.c */
/*            ^^^^^^ meta.number.float.decimal.c */
/*            ^^^^^^ constant.numeric.value.c */
/*             ^ punctuation.separator.decimal.c */
/*                  ^ keyword.operator.arithmetic.c */
/*                   ^^^^ meta.number.float.decimal.c */
/*                   ^^^ constant.numeric.value.c */
/*                    ^ punctuation.separator.decimal.c */
/*                      ^ constant.numeric.suffix.c */
/*                       ^ keyword.operator.arithmetic.c */
/*                        ^^^^^^ meta.number.float.decimal.c */
/*                        ^^^^^ constant.numeric.value.c */
/*                         ^ punctuation.separator.decimal.c */
/*                             ^ constant.numeric.suffix.c */
/*                              ^ keyword.operator.arithmetic.c */
/*                               ^^^^^^^ meta.number.float.decimal.c */
/*                               ^^^^^^ constant.numeric.value.c */
/*                                ^ punctuation.separator.decimal.c */
/*                                     ^ constant.numeric.suffix.c */
/*                                      ^ keyword.operator.arithmetic.c */
/*                                       ^^^^ meta.number.float.decimal.c */
/*                                       ^^^ constant.numeric.value.c */
/*                                        ^ punctuation.separator.decimal.c */
/*                                          ^ constant.numeric.suffix.c */
/*                                           ^ keyword.operator.arithmetic.c */
/*                                            ^^^^^^ meta.number.float.decimal.c */
/*                                            ^^^^^ constant.numeric.value.c */
/*                                             ^ punctuation.separator.decimal.c */
/*                                                 ^ constant.numeric.suffix.c */
/*                                                  ^ keyword.operator.arithmetic.c */
/*                                                   ^^^^^^^ meta.number.float.decimal.c */
/*                                                   ^^^^^^ constant.numeric.value.c */
/*                                                    ^ punctuation.separator.decimal.c */
/*                                                         ^ constant.numeric.suffix.c */
/*                                                          ^ punctuation.terminator - constant */

f = 1.e1+1.e-1+1.e1f+1.e-1f+1.e1L+1.e-1L;
/*  ^^^^ meta.number.float.decimal.c */
/*  ^^^^ constant.numeric.value.c */
/*   ^ punctuation.separator.decimal.c */
/*      ^ keyword.operator.arithmetic.c */
/*       ^^^^^ meta.number.float.decimal.c */
/*       ^^^^^ constant.numeric.value.c */
/*        ^ punctuation.separator.decimal.c */
/*            ^ keyword.operator.arithmetic.c */
/*             ^^^^^ meta.number.float.decimal.c */
/*             ^^^^ constant.numeric.value.c */
/*              ^ punctuation.separator.decimal.c */
/*                 ^ constant.numeric.suffix.c */
/*                  ^ keyword.operator.arithmetic.c */
/*                   ^^^^^^ meta.number.float.decimal.c */
/*                   ^^^^^ constant.numeric.value.c */
/*                    ^ punctuation.separator.decimal.c */
/*                        ^ constant.numeric.suffix.c */
/*                         ^ keyword.operator.arithmetic.c */
/*                          ^^^^^ meta.number.float.decimal.c */
/*                          ^^^^ constant.numeric.value.c */
/*                           ^ punctuation.separator.decimal.c */
/*                              ^ constant.numeric.suffix.c */
/*                               ^ keyword.operator.arithmetic.c */
/*                                ^^^^^^ meta.number.float.decimal.c */
/*                                ^^^^^ constant.numeric.value.c */
/*                                 ^ punctuation.separator.decimal.c */
/*                                     ^ constant.numeric.suffix.c */
/*                                      ^ punctuation.terminator - constant */

f = 1.+1.f+1.L+1..;
/*  ^^ meta.number.float.decimal.c */
/*  ^^ constant.numeric.value.c */
/*   ^ punctuation.separator.decimal.c */
/*    ^ keyword.operator.arithmetic.c */
/*     ^^^ meta.number.float.decimal.c */
/*     ^^ constant.numeric.value.c */
/*      ^ punctuation.separator.decimal.c */
/*       ^ constant.numeric.suffix.c */
/*        ^ keyword.operator.arithmetic.c */
/*         ^^^ meta.number.float.decimal.c */
/*         ^^ constant.numeric.value.c */
/*          ^ punctuation.separator.decimal.c */
/*           ^ constant.numeric.suffix.c */
/*            ^ keyword.operator.arithmetic.c */
/*             ^ meta.number.integer.decimal.c */
/*             ^ constant.numeric.value.c */
/*              ^^ invalid.illegal.syntax.c */
/*                ^ punctuation.terminator - constant */

f = 1e1+1e1f+1e1L;
/*  ^^^ meta.number.float.decimal.c */
/*  ^^^ constant.numeric.value.c */
/*     ^ keyword.operator.arithmetic.c */
/*      ^^^^ meta.number.float.decimal.c */
/*      ^^^ constant.numeric.value.c */
/*         ^ constant.numeric.suffix.c */
/*          ^ keyword.operator.arithmetic.c */
/*           ^^^^ meta.number.float.decimal.c */
/*           ^^^ constant.numeric.value.c */
/*              ^ constant.numeric.suffix.c */
/*               ^ punctuation.terminator - constant */

f = .1+.1e1+.1e-1+.1f+.1e1f+.1e-1f+.1L+.1e1L+.1e-1L;
/*  ^^ meta.number.float.decimal.c */
/*  ^^ constant.numeric.value.c */
/*  ^ punctuation.separator.decimal.c */
/*    ^ keyword.operator.arithmetic.c */
/*     ^^^^ meta.number.float.decimal.c */
/*     ^ punctuation.separator.decimal.c */
/*     ^^^^ constant.numeric.value.c */
/*         ^ keyword.operator.arithmetic.c */
/*          ^^^^^ meta.number.float.decimal.c */
/*          ^ punctuation.separator.decimal.c */
/*          ^^^^^ constant.numeric.value.c */
/*               ^ keyword.operator.arithmetic.c */
/*                ^^^ meta.number.float.decimal.c */
/*                ^ punctuation.separator.decimal.c */
/*                ^^ constant.numeric.value.c */
/*                  ^ constant.numeric.suffix.c */
/*                   ^ keyword.operator.arithmetic.c */
/*                    ^^^^^ meta.number.float.decimal.c */
/*                    ^ punctuation.separator.decimal.c */
/*                    ^^^^ constant.numeric.value.c */
/*                        ^ constant.numeric.suffix.c */
/*                         ^ keyword.operator.arithmetic.c */
/*                          ^^^^^^ meta.number.float.decimal.c */
/*                          ^ punctuation.separator.decimal.c */
/*                          ^^^^^ constant.numeric.value.c */
/*                               ^ constant.numeric.suffix.c */
/*                                 ^^^ meta.number.float.decimal.c */
/*                                 ^ punctuation.separator.decimal.c */
/*                                 ^^ constant.numeric.value.c */
/*                                   ^ constant.numeric.suffix.c */
/*                                    ^ keyword.operator.arithmetic.c */
/*                                     ^^^^^ meta.number.float.decimal.c */
/*                                     ^ punctuation.separator.decimal.c */
/*                                     ^^^^ constant.numeric.value.c */
/*                                         ^ constant.numeric.suffix.c */
/*                                          ^ keyword.operator.arithmetic.c */
/*                                           ^^^^^^ meta.number.float.decimal.c */
/*                                           ^ punctuation.separator.decimal.c */
/*                                           ^^^^^ constant.numeric.value.c */
/*                                                ^ constant.numeric.suffix.c */
/*                                                 ^ punctuation.terminator - constant */

units0 = 1.0suff+1.suff*.0suff/{1suff}
/*       ^^^^^^^ meta.number.float.decimal */
/*          ^^^^ invalid.illegal.numeric.suffix */
/*              ^ keyword.operator.arithmetic */
/*               ^^^^^^ meta.number.float.decimal */
/*                 ^^^^ invalid.illegal.numeric.suffix */
/*                     ^ keyword.operator */
/*                      ^^^^^^ meta.number.float.decimal */
/*                        ^^^^ invalid.illegal.numeric.suffix */
/*                            ^ keyword.operator.arithmetic */
/*                             ^ punctuation.section.block.begin */
/*                              ^^^^^ meta.number.integer.decimal */
/*                              ^ constant.numeric.value */
/*                               ^^^^ invalid.illegal.numeric.suffix */
/*                                   ^ punctuation.section.block.end */

units1 = 134h + 123.45h;
/*       ^^^^ meta.number.integer.decimal */
/*          ^ invalid.illegal.numeric.suffix */
/*           ^^^ - constant */
/*              ^^^^^^^ meta.number.float.decimal */
/*                 ^ punctuation.separator.decimal */
/*                    ^ invalid.illegal.numeric.suffix */
/*                     ^ punctuation.terminator - constant */

units2 = 147min + 147.min;
/*       ^^^^^^ meta.number.integer.decimal */
/*          ^^^ invalid.illegal.numeric.suffix */
/*             ^^^ - constant */
/*                ^^^^^^^ meta.number.float.decimal */
/*                   ^ punctuation.separator.decimal */
/*                    ^^^ invalid.illegal.numeric.suffix */
/*                       ^ punctuation.terminator - constant */

units3 = 357s + 34.7s;
/*       ^^^^ meta.number.integer.decimal */
/*          ^ invalid.illegal.numeric.suffix */
/*           ^^^ - constant */
/*              ^^^^^ meta.number.float.decimal */
/*                ^ punctuation.separator.decimal */
/*                  ^ invalid.illegal.numeric.suffix */
/*                   ^ punctuation.terminator - constant */

units4 = 234_custom + 10e-1_custom;
/*       ^^^^^^^^^^ meta.number.integer.decimal */
/*       ^^^ constant.numeric.value */
/*          ^^^^^^^ invalid.illegal.numeric.suffix */
/*                 ^^^ - constant */
/*                    ^^^^^^^^^^^^ meta.number.float.decimal */
/*                         ^^^^^^^ invalid.illegal.numeric.suffix */
/*                                ^ punctuation.terminator - constant */

scanf("%ms %as %*[, ]", &buf);
/*     ^^^ constant.other.placeholder */
/*         ^^^ constant.other.placeholder */
/*             ^^^^^^ constant.other.placeholder */
/*                      ^ keyword.operator.c */
/*                       ^^^ variable.other.c */

"foo % baz"
/*   ^ - invalid */


/////////////////////////////////////////////
// Control Keywords
/////////////////////////////////////////////

int control_keywords()
{
  if (x < 5)
  /* <- keyword.control */
/*    ^ variable.other.c */
  {}
  else
  /* <- keyword.control */
  {}

  switch (x)
  /* <- keyword.control */
/*        ^ variable.other.c */
  {
  case 1:
  /* <- keyword.control */
      break;
      /* <- keyword.control.flow.break */
  default:
  /* <- keyword.control */
      break;
      /* <- keyword.control.flow.break */
  }
  int8_t foo;
/*^^^^^^ support.type.stdint.c */
/*       ^^^ variable.other.c */
  const int8_t foo;
/*      ^^^^^^ support.type.stdint.c */
/*             ^^^ variable.other.c */
  int my_var;
/*    ^^^^^^ variable.other.indexed.c */
  foo->bar.baz->hello("World");
/*^^^ variable.other.c */
/*   ^^ punctuation.accessor.c */
/*     ^^^ variable.other.member.c */
/*        ^ punctuation.accessor.c */
/*         ^^^ variable.other.member.c */
/*            ^^ punctuation.accessor.c */
/*              ^^^^^ meta.function-call.c variable.function.c */
/*                   ^^^^^^^^^ meta.function-call.parameters.c */
/*                            ^ punctuation.terminator.c */

  foo->indexed.something = 4;
/*^^^ variable.other.c */
/*   ^^ punctuation.accessor.c */
/*     ^^^^^^^ variable.other.member.indexed.c */
/*            ^ punctuation.accessor.c */
/*             ^^^^^^^^^ variable.other.member.indexed.c */
/*                       ^ keyword.operator.assignment.c */
/*                         ^ constant.numeric.value.c */
/*                          ^ punctuation.terminator.c */
  do
  /* <- keyword.control */
  {
      if (y == 3)
/*        ^ variable.other.c */
          continue;
          /* <- keyword.control.flow.continue */
  } while (y < x);
  /*^ keyword.control */
/*         ^ variable.other.c */
/*             ^ variable.other.c */

  switch (a) {
/*        ^ variable.other.c */
      case 1: break;
  /*        ^ punctuation.separator */
      case 100 - 10: break;
  /*               ^ punctuation.separator */
      default: break;
  /*         ^ punctuation.separator */
  }

  goto label;
  /* <- keyword.control.flow.goto */

label:

  return 123;
  /* <- keyword.control.flow.return */
}
