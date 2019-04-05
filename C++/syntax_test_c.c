/* SYNTAX TEST "Packages/C++/C.sublime-syntax" */

int main(){
    int a=5,b=0;
    while(a-->0)++b;
    /*     ^^ keyword.operator.arithmetic */
    /*       ^ keyword.operator.comparison */
    /*        ^ constant.numeric */
    /*          ^^ keyword.operator.arithmetic */
}

#define EXTTS_BUFSIZE (PTP_BUF_TIMESTAMPS /* comment block */ * sizeof(struct ptp_extts_event)) // comment line
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/*                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group */
/*                                                                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group meta.group */
/*                                                                     ^^^^^^ storage.type */
/*                                                                            ^ support.type */
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
/*  ^^^^^^ meta.function */
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

  print("// String");
/*^^^^^ meta.function-call.c variable.function.c */
/*      ^^^^^^^^^^^ string.quoted.double.c
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
/*   ^^^^^^^^^^^^^^^^^ variable.other.c */
/*                     ^ keyword.operator.assignment.c */
/*                       ^ constant.language */
/*                                        ^ punctuation.terminator.c */
/*                           ^ punctuation.separator.c */
/*                             ^^^ variable.other.c*/
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
/* <- support.type.c */
foo()
/* <- meta.function entity.name.function */
{
/* <- meta.function.c punctuation.section.block.begin.c */
   return LIB_SUCCESS;
}
/* <- meta.function.c punctuation.section.block.end.c */

LIB_RESULT bar()
/* <- support.type.c */
/*           ^ meta.function entity.name.function */
{
/* <- meta.function.c punctuation.section.block.begin.c */
    return LIB_SUCCESS;
}
/* <- meta.function.c punctuation.section.block.end.c */

THIS_IS_REALLY_JUST_A_MACRO_AND_NOT_A_RETURN_TYPE
/* <- support.type */

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
/* <- support.type */
FOO;
/* <- variable.other */
foo
/* <- support.type */
; // fix highlighting
/* <- punctuation.terminator */
FOO()
/* <- meta.function-call.c variable.function.c */
FOO();
/* <- meta.function-call.c variable.function.c */
foo()
/* <- meta.function-call.c variable.function.c */
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
/*      ^^^ storage.type.c */
/*          ^ entity.name.type */
/*               ^ punctuation.terminator.c */

typedef unsigned long long ull_t,
/* <- storage.type */
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
/* <- storage.type */
/*      ^^^^^^ storage.type.c */
/*             ^ entity.name.struct.c */
/*                      ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
  int a;
/*^^^ storage.type.c */
/*    ^ variable.other.c */
} mystruct;
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^^^ entity.name.type */
/*        ^ punctuation.terminator.c */

typedef struct another
/* <- storage.type */
/*      ^^^^^^ storage.type.c */
/*             ^ entity.name.struct.c */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
  int f;
/*^^^ storage.type.c */
/*    ^ variable.other.c */
} another_t, another2_t;
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^^^^ entity.name.type */
/*         ^ punctuation.separator.c */
/*           ^^^^^^^^^^ entity.name.type.typedef.c */
/*                     ^ punctuation.terminator.c */

typedef another_t another2_t;
/* <- storage.type */
/*      ^^^^^^^^^ support.type.c */
/*                ^^^^^^^^^^ entity.name.type.typedef.c */
/*                          ^ punctuation.terminator.c */

typedef another_t *anotherp_t;
/* <- storage.type */
/*      ^^^^^^^^^ support.type.c */
/*                ^ storage.modifier.c */
/*                 ^^^^^^^^^^ entity.name.type.typedef.c */
/*                           ^ punctuation.terminator.c */

typedef void (*xhci_get_quirks_t)(struct device *d, struct xhci_hcd *);
/*<- storage.type.c */
/*      ^^^^ storage.type.c */
/*            ^ storage.modifier.c */
/*             ^^^^^^^^^^^^^^^^^ entity.name.type.c */
/*                                ^^^^^^ storage.type.c */
/*                                       ^^^^^^ support.type.c */
/*                                              ^ storage.modifier.c */
/*                                               ^ variable.parameter.c */
/*                                                ^ punctuation.separator */
/*                                                  ^^^^^^ storage.type.c */
/*                                                         ^^^^^^^^ support.type.c */
/*                                                                  ^ storage.modifier.c */

typedef struct Node* (*get_node_t)(struct device *d, struct xhci_hcd *);
/*<- storage.type.c */
/*      ^^^^^^ storage.type.c */
/*             ^^^^ support.type.c */
/*                 ^ storage.modifier.c */
/*                    ^ storage.modifier.c */
/*                     ^^^^^^^^^^ entity.name.type.c */
/*                                 ^^^^^^ storage.type.c */
/*                                        ^^^^^^ support.type.c */
/*                                               ^ storage.modifier.c */
/*                                                ^ variable.parameter.c */
/*                                                 ^ punctuation.separator */
/*                                                   ^^^^^^ storage.type.c */
/*                                                          ^^^^^^^^ support.type.c */
/*                                                                   ^ storage.modifier.c */


typedef struct Node Node;
/*<- storage.type.c */
/*      ^^^^^^storage.type.c */
/*             ^^^^ support.type.c */
/*                  ^^^^ entity.name.type.typedef.c */
typedef struct Node* NodePtr;
/*<- storage.type.c */
/*      ^^^^^^storage.type.c */
/*             ^^^^ support.type.c */
/*                 ^ storage.modifier.c */
/*                   ^^^^^^^ entity.name.type.typedef.c */

typedef struct {
/*<- storage.type.c */
/*      ^^^^^^storage.type.c */
/*             ^ meta.struct.body.c punctuation.section.block.begin.c */
    int data1;
/*  ^^^ storage.type.c */
/*      ^^^^^ variable.other.c */
} newtype;
/* <- meta.struct.body.c punctuation.section.block.end.c */
/*^^^^^^^ entity.name.type.typedef.c */

typedef struct MyStruct {
/*<- storage.type.c */
/*      ^^^^^^storage.type.c */
/*             ^^^^^^^^ entity.name.struct.c */
/*                      ^ meta.struct.body.c punctuation.section.block.begin.c */
    int data1;
/*  ^^^ storage.type.c */
/*      ^^^^^ variable.other.c */
} newtype;
/* <- meta.struct.body.c punctuation.section.block.end.c */
/*^^^^^^^ entity.name.type.typedef.c */

typedef char arrType[6];
/*<- storage.type.c */
/*      ^^^^ storage.type.c */
/*           ^^^^^^^ entity.name.type */
/*                  ^ storage.modifier */
/*                   ^ constant.numeric.c */
/*                    ^ storage.modifier */

typedef char arrType[NUMBER_OF_ELEMENTS];
/*<- storage.type.c */
/*      ^^^^ storage.type.c */
/*           ^^^^^^^ entity.name.type.typedef.c */
/*                  ^ storage.modifier */
/*                   ^^^^^^^^^^^^^^^^^^ support.constant.c */
/*                                     ^ storage.modifier */

typedef unsigned long ulong, *ulongptr;
/*<- storage.type.c */
/*      ^^^^^^^^ storage.type.c */
/*               ^^^^ storage.type.c */
/*                    ^^^^^ entity.name.type.typedef.c */
/*                         ^ punctuation.separator.c */
/*                           ^ storage.modifier.c */
/*                            ^^^^^^^^ entity.name.type.typedef.c */

typedef enum state {DEAD,ALIVE} State;
/*<- storage.type.c */
/*      ^^^^ storage.type.c */
/*           ^^^^^ entity.name.enum.c */
/*                  ^^^^ entity.name.constant.enum.c */
/*                      ^ punctuation.separator.c */
/*                       ^^^^^ entity.name.constant.enum.c */
/*                              ^^^^^ entity.name.type.typedef.c */
/*                                   ^ punctuation.terminator.c */

/////////////////////////////////////////////
// Data structures and return values
/////////////////////////////////////////////

struct point
/* ^ storage.type */
/*     ^ entity.name.struct */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int x;
    int y;
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

struct point2 {
/* ^ storage.type */
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
/* <- storage.type */
/*     ^ support.type - entity.name.struct */
/*         ^^^^^^^^^  meta.function */
/*         ^ entity.name.function */
/*                 ^^ meta.function.parameters */
/*                    ^^ meta.function meta.block */
/*                    ^ punctuation.section.block.begin */
/*                     ^ punctuation.section.block.end */

union codes get_code() {}
/* <- storage.type */
/*     ^ support.type - entity.name.struct */
/*          ^^^^^^^^^  meta.function */
/*          ^ entity.name.function */
/*                  ^^ meta.function.parameters */
/*                     ^^ meta.function meta.block */
/*                     ^ punctuation.section.block.begin */
/*                      ^ punctuation.section.block.end */

struct point get_point() {}
/* <- storage.type */
/*     ^ support.type - entity.name.struct */
/*           ^^^^^^^^^  meta.function */
/*           ^ entity.name.function */
/*                    ^^ meta.function.parameters */
/*                       ^^ meta.function meta.block */
/*                       ^ punctuation.section.block.begin */
/*                        ^ punctuation.section.block.end */

EXPORT_SYMBOL(get_point);
/* <- meta.function-call.c variable.function.c*/
/*            ^^^^^^^^^ variable.other.c */

inline struct point **alloc_points();
/*     ^ storage.type */
/*            ^ support.type - entity.name.struct */
/*                  ^^ storage.modifier.c */
/*                    ^ entity.name.function */
/*                                ^^ meta.function.parameters.c meta.group.c */
/*                                ^ punctuation.section.group.begin.c */
/*                                 ^ punctuation.section.group.end.c */
/*                                  ^ punctuation.terminator.c */
EXPORT_SYMBOL(alloc_points);
/* <- meta.function-call.c variable.function.c*/
/*            ^^^^^^^^^^^^ variable.other.c */

struct point* alloc_point();
/* <- storage.type.c */
/*     ^^^^^ meta.struct.c support.type.c */
/*          ^ storage.modifier.c */
/*                  ^ entity.name.function - variable.function */
/*                       ^^ meta.function.parameters.c meta.group.c */
/*                       ^ punctuation.section.group.begin.c */
/*                        ^ punctuation.section.group.end.c */
/*                         ^ punctuation.terminator.c */

struct point FOO_API *alloc_point3(), alloc_point2(), struct_var2;
/* <- storage.type.c */
/*     ^^^^^ meta.struct.c support.type.c */
/*                   ^ storage.modifier.c */
/*                     ^ entity.name.function - variable.function */
/*                                ^^ meta.function.parameters.c meta.group.c */
/*                                ^ punctuation.section.group.begin.c */
/*                                 ^ punctuation.section.group.end.c */
/*                                  ^ punctuation.separator */
/*                                    ^ entity.name.function - variable.function */
/*                                                    ^^^^^^^^^^^ variable.other.c */

struct {
/* <- storage.type.c */
/*     ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
  int a;
/*^^^ storage.type.c */
/*    ^ variable.other.c */
} anon_s, *anon_b, anon_s_f(), anon_c = {
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^ variable.other.c  */
/*         ^^^^^^ variable.other.c  */
/*                 ^^^^^^^^ entity.name.function.c  */
/*                             ^^^^^^ variable.other.c  */
/*                                    ^ keyword.operator.assignment.c */
  .a = 4
}, anon_d = {.a = 6}, anon_arr[] = {{.a = 1}, {.a = 2}}, anon_g;
 /* <- punctuation.separator */
/* ^^^^^^ variable.other.c  */
/*        ^ keyword.operator.assignment.c */
/*                  ^ punctuation.separator */
/*                    ^^^^^^^^ variable.other.c  */
/*                            ^^ meta.brackets.c storage.modifier.c */
/*                               ^ keyword.operator.assignment.c */
/*                                                     ^ punctuation.separator */
/*                                                       ^^^^^^ variable.other.c  */
/*                                                             ^ punctuation.terminator.c */

int f_with_s(struct { int a; } *s);
/*<- storage.type.c */
/*  ^^^^^^^^ meta.function.c entity.name.function.c */
/*          ^ meta.function.parameters.c punctuation.section.group.begin.c */
/*           ^^^^^^ meta.struct.c storage.type.c */
/*                  ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
/*                    ^^^ storage.type.c */
/*                        ^ variable.other.c */
/*                           ^ meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*                             ^ storage.modifier.c */
/*                              ^ variable.parameter.c */
/*                               ^ punctuation.section.group.end.c */
/*                                ^ punctuation.terminator.c */

TRACE_EVENT(mmc_request_start,
/* <- meta.function-call.c variable.function.c */
/*          ^^^^^^^^^^^^^^^^^ variable.other.c */
/*                           ^ punctuation.separator.c */
  TP_PROTO(struct mmc_host *host, struct mmc_request *mrq)
/*^^^^^^^^ variable.function */
/*         ^^^^^^ storage.type.c */
/*                ^^^^^^^^ support.type.c */
/*                         ^ keyword.operator.c */
/*                          ^^^^ variable.other.c */
/*                              ^ punctuation.separator.c */
/*                                ^^^^^^ storage.type.c */
/*                                       ^^^^^^^^^^^ support.type.c */
/*                                                   ^ keyword.operator.c */
/*                                                    ^^^ variable.other.c */
);

TRACE_EVENT(802154_rdev_add_virtual_intf,
/* <-meta.function-call.c variable.function.c */
/*         ^ meta.function-call.c punctuation.section.group.begin.c */
/*          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.other.c */
/*                                      ^ punctuation.separator.c */
  TP_STRUCT__entry(
/*^^^^^^^^^^^^^^^^ meta.function-call.parameters.c meta.function-call.c variable.function.c */
/*                ^ meta.function-call.parameters.c meta.function-call.parameters.c meta.group.c punctuation.section.group.begin.c */
    WPAN_PHY_ENTRY
/*  ^^^^^^^^^^^^^^ support.constant.c */
    __string(vir_intf_name, name ? name : "<noname>")
/*  ^^^^^^^^ meta.function-call.c variable.function.c */
/*          ^ punctuation.section.group.begin.c */
/*           ^^^^^^^^^^^^^ variable.other.c */
/*                        ^ punctuation.separator.c */
/*                          ^^^^ variable.other.c */
/*                               ^ keyword.operator.ternary.c */
/*                                 ^^^^ variable.other.c */
/*                                      ^ keyword.operator.ternary.c */
/*                                        ^^^^^^^^^^ string.quoted.double.c */
/*                                                  ^ punctuation.section.group.end.c */
    __field(enum nl802154_iftype, type)
/*  ^^^^^^^ meta.function-call.c variable.function.c */
/*         ^ punctuation.section.group.begin.c */
/*          ^^^^ storage.type.c */
/*               ^^^^^^^^^^^^^^^ support.type.c */
/*                              ^ punctuation.separator.c */
/*                                ^^^^ variable.other.c */
/*                                    ^ punctuation.section.group.end.c */
    __field(__le64, extended_addr)
/*  ^^^^^^^ meta.function-call.c variable.function.c */
/*         ^ punctuation.section.group.begin.c */
/*          ^^^^^^ variable.other.c */
/*                ^ punctuation.separator.c */
/*                  ^^^^^^^^^^^^^ variable.other.c */
/*                               ^ punctuation.section.group.end.c */
  ),
/*^ meta.function-call.parameters.c meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
/* ^ punctuation.separator.c */
  TP_fast_assign(
/*^^^^^^^^^^^^^^ variable.function.c */
/*              ^ meta.function-call.parameters.c meta.function-call.parameters.c punctuation.section.group.begin.c */
    WPAN_PHY_ASSIGN;
/*  ^^^^^^^^^^^^^^^ support.constant.c */
    __assign_str(vir_intf_name, name ? name : "<noname>");
/*  ^^^^^^^^^^^^ meta.function-call.c variable.function.c */
/*              ^ meta.function-call.parameters.c punctuation.section.group.begin.c */
/*               ^^^^^^^^^^^^^ variable.other.c */
/*                            ^ punctuation.separator.c */
/*                              ^^^^ variable.other.c */
/*                                   ^ keyword.operator.ternary.c */
/*                                     ^^^^ variable.other.c */
/*                                          ^ keyword.operator.ternary.c */
/*                                            ^^^^^^^^^^ string.quoted.double.c */
/*                                                      ^ meta.function-call.parameters.c punctuation.section.group.end.c */
/*                                                       ^ punctuation.terminator.c */
    __entry->type = type;
/*  ^^^^^^^ variable.other.c */
/*         ^^ punctuation.accessor.c */
/*           ^^^^ variable.other.c */
/*                ^ keyword.operator.assignment.c */
/*                  ^^^^ variable.other.c */
/*                      ^ punctuation.terminator.c */
  ),
/*^ meta.function-call.parameters.c meta.function-call.parameters.c punctuation.section.group.end.c */
/* ^ punctuation.separator.c */
  TP_printk(WPAN_PHY_PR_FMT ", name: %s, type: %d, addr: 0x%llx",
/*^^^^^^^^^ meta.function-call.c variable.function.c */
/*         ^ meta.function-call.parameters.c meta.function-call.parameters.c punctuation.section.group.begin.c */
/*          ^^^^^^^^^^^^^^^ support.constant.c */
/*                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.c*/
/*                                                              ^ punctuation.separator.c */
      WPAN_PHY_PR_ARG, __get_str(vir_intf_name), __entry->type,
/*    ^^^^^^^^^^^^^^^ support.constant.c */
/*                   ^ punctuation.separator.c */
/*                     ^^^^^^^^^ meta.function-call.c variable.function.c */
/*                               ^^^^^^^^^^^^^ variable.other.c */
/*                                             ^ punctuation.separator.c */
/*                                               ^^^^^^^ variable.other.c */
/*                                                      ^^ punctuation.accessor.c */
/*                                                        ^^^^ variable.other.c */
/*                                                            ^ punctuation.separator.c */
      __le64_to_cpu(__entry->extended_addr))
/*    ^^^^^^^^^^^^^ meta.function-call.c variable.function.c */
/*                  ^^^^^^^ variable.other.c */
/*                         ^^ punctuation.accessor.c */
/*                           ^^^^^^^^^^^^^ variable.other.c */
/*                                        ^ meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
/*                                         ^ meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
);
/* <- meta.function-call.parameters.c meta.group.c punctuation.section.group.end.c */
 /* <- punctuation.terminator.c */

static inline u64 xhci_read_64(const struct xhci_hcd *xhci,
/*<- storage.modifier.c */
/*     ^^^^^^ storage.modifier.c */
/*                ^^^^^^^^^^^^ entity.name.function.c */
/*                            ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*                             ^^^^^ storage.modifier.c */
/*                                   ^^^^^^ storage.type.c */
/*                                          ^^^^^^^^ support.type.c */
/*                                                   ^ storage.modifier.c */
/*                                                    ^^^^ variable.parameter.c */
/*                                                        ^ punctuation.separator.c */
    __le64 __iomem *regs);
/*  ^^^^^^ support.type.c */
/*         ^^^^^^^ support.type.c */
/*                 ^ storage.modifier.c */
/*                  ^^^^ variable.parameter.c */
/*                      ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
/*                       ^ punctuation.terminator.c */

int main(void)
{
    struct UI_BoundingBox decorativeBox = {10, titleHeight-3, width-20, height-10};
/*  ^^^^^^ storage.type */
/*         ^ support.type - entity.name */
}

struct MACRO foo {
/*     ^ variable.annotation - entity.name - support.type*/
/*           ^ entity.name.struct */
}

struct UI_BoundingBox position;
/*     ^ support.type.c - entity.name */
/*                     ^ variable.other - entity.name */

struct UI_BoundingBox *position_p;
/*     ^ support.type.c - entity.name */
/*                     ^ variable.other - entity.name */

struct UI_BoundingBox * position_p1;
/*     ^ support.type.c - entity.name */
/*                      ^ variable.other - entity.name */

struct UI_BoundingBox **position_p2;
/*     ^ support.type.c - entity.name */
/*                      ^ variable.other - entity.name */

struct UI_BoundingBox ** position_p3;
/*     ^ support.type.c - entity.name */
/*                       ^ variable.other - entity.name */


struct UI_BoundingBox ** position_p4, position_p5, * position_p6;
/*     ^ support.type.c - entity.name */
/*                       ^ variable.other - entity.name */
/*                    ^^ storage.modifier.c */
/*                                  ^ punctuation.separator */
/*                                    ^ variable.other - entity.name */
/*                                               ^ punctuation.separator */
/*                                                 ^ storage.modifier.c */
/*                                                   ^ variable.other - entity.name */

// Partially-typed
struct foo
/*     ^ entity.name */

struct UI_MenuBoxData
/* <- storage.type */
/*     ^ entity.name.struct */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    struct UI_BoundingBox position;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^ variable.other.c - entity.name */
/*                                ^ punctuation.terminator.c */
    struct UI_BoundingBox *position_p;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                         ^ variable.other.c - entity.name */
/*                                   ^ punctuation.terminator.c */
    struct UI_BoundingBox * position_p1;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                          ^ variable.other.c - entity.name */
/*                                     ^ punctuation.terminator.c */
    struct UI_BoundingBox **position_p2;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^^ storage.modifier.c */
/*                          ^ variable.other.c - entity.name */
/*                                     ^ punctuation.terminator.c */
    struct UI_BoundingBox ** position_p3;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^^ storage.modifier.c */
/*                           ^ variable.other.c - entity.name */
/*                                      ^ punctuation.terminator.c */
    struct UI_BoundingBox* position_p4;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                       ^ storage.modifier.c */
/*                         ^ variable.other.c - entity.name */
/*                                    ^ punctuation.terminator.c */
    struct UI_BoundingBox** position_p5;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                       ^^ storage.modifier.c */
/*                          ^ variable.other.c - entity.name */
/*                                     ^ punctuation.terminator.c */
    struct UI_BoundingBox * * position_p5;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                          ^ storage.modifier.c */
/*                            ^ variable.other.c - entity.name */
/*                                       ^ punctuation.terminator.c */
    struct UI_BoundingBox *pos_1, *pos_1;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                        ^ storage.modifier.c */
/*                         ^ variable.other.c - entity.name */
/*                                ^ storage.modifier.c */
/*                                 ^ variable.other.c - entity.name */
/*                                      ^ punctuation.terminator.c */

    const volatile struct UI_BoundingBox *cv_p;
/*  ^^^^^ storage.modifier.c */
/*        ^^^^^^^^ storage.modifier.c */
/*                 ^^^^^^ storage.type */
/*                        ^ support.type.c - entity.name */
/*                                       ^ storage.modifier.c */
/*                                        ^ variable.other.c - entity.name */
/*                                            ^ punctuation.terminator.c */
    long resume_done[USB_MAXCHILDREN];
/*  ^^^^ storage.type.c */
/*       ^^^^^^^^^^^ variable.other.c */
/*                  ^^^^^^^^^^^^^^^^^ meta.brackets.c */
/*                  ^ punctuation.section.brackets.begin.c */
/*                   ^^^^^^^^^^^^^^^ support.constant.c */
/*                                  ^ punctuation.section.brackets.end.c */
/*                                   ^ punctuation.terminator.c */
    struct xhci_run_regs __iomem *run_regs;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                       ^ - entity.name */
/*                               ^ storage.modifier.c */
/*                                 ^ variable.other.c - entity.name */
/*                                        ^ punctuation.terminator.c */
    struct xhci_run_regs __attribute__((noderef)) *run_regs;
/*  ^^^^^^ storage.type */
/*         ^ support.type.c - entity.name */
/*                       ^ - entity.name */
/*                                                ^ storage.modifier.c */
/*                                                 ^ variable.other.c - entity.name */
/*                                                         ^ punctuation.terminator.c */
    struct __attribute__((noderef)) xhci_run_regs *run_regs;
/*  ^^^^^^ storage.type */
/*                                  ^ support.type.c - entity.name */
/*                                                ^ storage.modifier.c */
/*                                                 ^ - entity.name */
/*                                                         ^ punctuation.terminator.c */
    struct nested_t {
/*  ^^^^^^ storage.type */
/*         ^^^^^^^^ entity.name.struct.c */
/*                  ^ meta.struct.body.c meta.block.c meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
        int bar;
/*      ^^^ storage.type.c */
/*          ^^^ variable.other.c */
    } nested;
/*  ^ meta.struct.body.c meta.block.c meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*    ^^^^^^ variable.other.c */
/*          ^ punctuation.terminator.c */

#define CMD_RING_STATE_RUNNING         (1 << 0)
/* <- meta.preprocessor.macro.c keyword.control.import.define.c */
/*      ^ meta.preprocessor.macro.c entity.name.constant.preprocessor.c */

    enum UI_BoxCharType borderType;
/*  ^^^^ storage.type.c */
/*       ^^^^^^^^^^^^^^ support.type.c - entity.name */
/*                      ^ variable.other.c - entity.name */
/*                                ^ punctuation.terminator.c */
    unsigned int paddingX;
/*  ^^^^^^^^ storage.type.c */
/*           ^^^ storage.type.c */
/*               ^^^^^^^^ variable.other.c */
/*                       ^ punctuation.terminator.c */
    unsigned int paddingY;
/*  ^^^^^^^^ storage.type.c */
/*           ^^^ storage.type.c */
/*               ^^^^^^^^ variable.other.c */
/*                       ^ punctuation.terminator.c */
    struct UI_ScrollBoxText boxContents[];
/*  ^^^^^^ storage.type.c */
/*         ^^^^^^^^^^^^^^^^ support.type.c */
/*                          ^^^^^^^^^^^ variable.other.c */
/*                                     ^ storage.modifier.c */
/*                                       ^ punctuation.terminator.c */

    struct delayed_work monitor_work ____cacheline_aligned_in_smp;
/*  ^^^^^^ storage.type */
/*         ^^^^^^^^^^^^ support.type.c */
/*                      ^^^^^^^^^^^^ variable.other.c */
/*                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.type.c */
/*                                                               ^ punctuation.terminator.c */
    const struct efx_channel_type *
/*  ^^^^^storage.modifier.c */
/*        ^^^^^^ storage.type.c */
/*               ^^^^^^^^^^^^^^^^ support.type - entity.name */
/*                                ^ storage.modifier.c */
    extra_channel_type[EFX_MAX_EXTRA_CHANNELS];
/*  ^^^^^^^^^^^^^^^^^^ variable.other.c */
/*                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.c */
/*                     ^^^^^^^^^^^^^^^^^^^^^^ support.constant.c */
/*                    ^ punctuation.section.brackets.begin.c storage.modifier.c */
/*                                           ^ punctuation.section.brackets.end.c storage.modifier.c */

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
/* <- storage.type */
/*     ^ meta.attribute.c storage.modifier.c */
/*                             ^^^^^^^ entity.name.struct */
    int foo;
/*  ^^^ storage.type.c */
/*      ^^^ variable.other.c */
};

struct child_t child1;

struct __attribute__((packed)) child_t_line
/* <- storage.type */
/*     ^ meta.attribute.c storage.modifier.c */
/*                             ^^^^^^^ entity.name.struct */
{
    int foo;
/*  ^^^ storage.type.c */
/*      ^^^ variable.other.c */
};

struct __attribute__((packed))
/* <- storage.type */
/*     ^ meta.attribute.c storage.modifier.c */
{
/* <- meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int foo;
/*  ^^^ storage.type.c */
/*      ^^^ variable.other.c */
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

struct rproc_ops {
/* <- storage.type */
/*     ^ entity.name.struct */
/*               ^ meta.struct.body.c meta.block.c punctuation.section.block.begin.c */
    int (*start)(struct rproc *rproc);
/*  ^^^ storage.type.c */
/*        ^^^^^ variable.other.c */
/*               ^^^^^^ storage.type.c */
/*                      ^^^^^ support.type.c */
/*                             ^^^^^ variable.parameter.c */
    int (*start)(struct rproc *);
/*  ^^^ storage.type.c */
/*        ^^^^^ variable.other.c */
/*              ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*               ^^^^^^ storage.type.c */
/*                      ^^^^^ support.type.c */
/*                            ^ storage.modifier.c */
/*                             ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
    u32 (*start)(struct rproc *, struct rproc *);
/*  ^^^ support.type.c */
/*        ^^^^^ variable.other.c */
/*              ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c */
/*               ^^^^^^ storage.type.c */
/*                      ^^^^^ support.type.c */
/*                            ^ storage.modifier.c */
/*                             ^ punctuation.separator.c */
/*                               ^^^^^^ storage.type.c */
/*                                      ^^^^^ support.type.c */
/*                                            ^ storage.modifier.c */
/*                                             ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c */
    void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
/*  ^^^ storage.type.c */
/*           ^^^^^^^^ variable.other.c */
/*                     ^^^^^^ storage.type.c */
/*                            ^^^^^ support.type.c */
/*                                   ^^^^^ variable.parameter.c */
/*                                          ^^^ support.type */
/*                                              ^^ variable.parameter */
/*                                                  ^^^ storage.type */
/*                                                      ^^^ variable.parameter */
    struct resource_table *(*find_loaded_rsc_table)(
/*  ^^^^^^ storage.type.c */
/*         ^^^^^^^^^^^^^^ support.type.c */
/*                           ^^^^^^^^^^^^^^^^^^^^^ variable.other.c */
                struct rproc *rproc, const struct firmware *fw);
/*              ^^^^^^ storage.type.c */
/*                     ^^^^^ support.type.c */
/*                           ^ storage.modifier.c */
/*                            ^^^^^ variable.parameter.c */
/*                                 ^ punctuation.separator */
/*                                   ^^^^^ storage.modifier.c */
/*                                         ^^^^^^ storage.type.c */
/*                                                ^^^^^^^^ support.type.c */
/*                                                          ^^ variable.parameter.c */
};
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */

void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
/* <- storage.type.c */
/*       ^^^^^^^^ variable.other.c */
/*                 ^^^^^^ storage.type.c */
/*                        ^^^^^ support.type.c */
/*                              ^ storage.modifier.c */
/*                               ^^^^^ variable.parameter.c */
/*                                      ^^^ support.type.c */
/*                                          ^^ variable.parameter */
/*                                              ^^^ storage.type */
/*                                                  ^^^ variable.parameter */

struct resource_table *(*find_loaded_rsc_table)(
/* <- storage.type.c */
/*     ^^^^^^^^^^^^^^ support.type.c */
/*                       ^^^^^^^^^^^^^^^^^^^^^ variable.other.c */
            struct rproc *rproc, const struct firmware *fw);
/*          ^^^^^^ storage.type.c */
/*                 ^^^^^ support.type.c */
/*                       ^ storage.modifier.c */
/*                        ^^^^^ variable.parameter.c */
/*                             ^ punctuation.separator */
/*                               ^^^^^ storage.modifier.c */
/*                                     ^^^^^^ storage.type.c */
/*                                            ^^^^^^^^ support.type.c */
/*                                                     ^ storage.modifier.c */
/*                                                      ^^ variable.parameter.c */


void do_pci_scan_bridge(struct device *dev,
/*   ^^^^^^^^^^^^^^^^^^ meta.function.c entity.name.function.c */
/*                     ^ meta.function.parameters.c meta.group.c punctuation.section.group.begin.c - meta.function.c */
/*                      ^^^^^^ storage.type.c */
/*                             ^^^^^^ support.type.c */
/*                                    ^ storage.modifier.c */
/*                                     ^^^ variable.parameter.c */
/*                                        ^ punctuation.separator.c */
  void (*do_scan_bus)(int max_devfn));
/*^^^^ storage.type.c */
/*     ^ meta.function.parameters.c meta.group.c meta.group.c punctuation.section.group.begin.c */
/*      ^ storage.modifier.c */
/*       ^^^^^^^^^^^ variable.parameter.c */
/*                  ^ meta.function.parameters.c meta.group.c meta.group.c punctuation.section.group.end.c */
/*                   ^ meta.function.parameters.c meta.group.c meta.function.parameters.c meta.group.c punctuation.section.group.begin.c - meta.function.c */
/*                    ^^^ storage.type.c */
/*                        ^^^^^^^^^ variable.parameter.c */
/*                                 ^ meta.function.parameters.c meta.group.c meta.function.parameters.c meta.group.c punctuation.section.group.end.c - meta.function.c */
/*                                  ^ meta.function.parameters.c meta.group.c punctuation.section.group.end.c - meta.function.c */
/*                                   ^ punctuation.terminator.c - meta.function */

static const struct pci_driver my_driver __pci_driver __driver = {
/* <- storage.modifier.c */
/*     ^^^^^ storage.modifier.c */
/*           ^^^^^^ storage.type.c */
/*                  ^^^^^^^^^^ support.type.c */
/*                             ^^^^^^^^^ variable.other.c */
/*                                       ^^^^^^^^^^^^ support.type.c */
/*                                                    ^^^^^^^^ support.type.c */
  .ops      = &pci_my_device_ops,
  .vendor   = PCI_VENDOR_ID,
  .devices  = pci_device_ids,
};

static const struct spd_info {
/*           ^^^^^^ meta.struct.c storage.type.c */
/*                  ^^^^^^^^ entity.name.struct.c */
    size_t spd_len;
/*  ^^^^^^ support.type */
/*         ^^^^^^^ variable.other.c */
    size_t spd_part_len;
/*  ^^^^^^ support.type */
/*         ^^^^^^^ variable.other.c */
} spd_mem_info[] = {
/*^^^^^^^^^^^^  variable.other.c */
/*            ^^ meta.brackets.c storage.modifier.c */
    [SPD_INFO_DDR4] = {
        .spd_len = SPD_DDR4_LENGTH,
        .spd_part_len = SPD_DDR4_PART_LEN,
    },
    [SPD_INFO_DEFAULT] = {
        .spd_len = SPD_DEFAULT_LENGTH,
        .spd_part_len = SPD_DEFAULT_PART_LEN,
    },
};

void * const compat_sys_call_table[__NR_compat_syscalls] __aligned(4096) = {
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*     ^^^^^ storage.modifier.c */
/*           ^^^^^^^^^^^^^^^^^^^^^ variable.other.c */
/*                                ^ meta.brackets.c punctuation.section.brackets.begin.c storage.modifier.c */
/*                                                     ^ meta.brackets.c punctuation.section.brackets.end.c storage.modifier.c */
/*                                                       ^^^^^^^^^ meta.function-call.c variable.function.c */
/*                                                                ^^^^^^ meta.function-call.parameters.c */
/*                                                                 ^^^^ constant.numeric.c */
/*                                                                       ^ keyword.operator.assignment.c */
/*                                                                         ^ meta.block.c punctuation.section.block.begin.c */
  [0 ... __NR_compat_syscalls - 1] = sys_ni_syscall,
#include <asm/unistd32.h>
};
/* <- meta.block.c punctuation.section.block.end.c */
 /* <- punctuation.terminator.c */

pgd_t swapper_pg_dir[PTRS_PER_PGD] __aligned(PAGE_SIZE);
/* <- support.type.c */
/*    ^^^^^^^^^^^^^^ variable.other.c */
/*                  ^^^^^^^^^^^^^^ meta.brackets.c
/*                  ^ punctuation.section.brackets.begin.c storage.modifier.c */
/*                   ^^^^^^^^^^^^ support.constant.c */
/*                               ^ punctuation.section.brackets.end.c storage.modifier.c */
/*                                 ^^^^^^^^^ meta.function-call.c variable.function.c */
/*                                          ^^^^^^^^^^^ meta.function-call.parameters.c
/*                                          ^ meta.group.c punctuation.section.group.begin.c */
/*                                           ^^^^^^^^^ support.constant.c */
/*                                                    ^ meta.group.c punctuation.section.group.end.c */
/*                                                     ^ punctuation.terminator.c */

struct mac_tfm_ctx {
/* <- storage.type.c */
/*     ^^^^^^^^^^^ entity.name.struct.c */
/*                 ^ meta.block.c  punctuation.section.block.begin.c */
  struct crypto_aes_ctx key;
/*^^^^^^ storage.type.c */
/*       ^^^^^^^^^^^^^^ support.type.c */
/*                      ^^^ variable.other.c */
/*                         ^ punctuation.terminator.c */
  struct crypto_aes_ctx __aligned(8) key2;
/*^^^^^^ storage.type.c */
/*       ^^^^^^^^^^^^^^ support.type.c */
/*                      ^^^^^^^^^ meta.function-call.c variable.function.c */
/*                               ^^^ meta.function-call.parameters.c
/*                               ^ meta.group.c punctuation.section.group.begin.c */
/*                                ^ constant.numeric.c */
/*                                 ^ meta.group.c punctuation.section.group.end.c */
/*                                   ^^^^ variable.other.c */
/*                                       ^ punctuation.terminator.c */
  u8 __aligned(8) consts[];
/*^^ support.type.c */
/*   ^^^^^^^^^ meta.function-call.c variable.function.c */
/*            ^^^ meta.function-call.parameters.c
/*            ^ meta.group.c punctuation.section.group.begin.c */
/*             ^ constant.numeric.c */
/*              ^ meta.group.c punctuation.section.group.end.c */
/*                ^^^^^^ variable.other.c */
/*                      ^ meta.brackets.c punctuation.section.brackets.begin.c storage.modifier.c */
/*                       ^ meta.brackets.c punctuation.section.brackets.end.c storage.modifier.c */
/*                        ^ punctuation.terminator.c */
} __packed __aligned(4);
/* <- meta.struct.body.c meta.block.c punctuation.section.block.end.c */
/*^^^^^^^^ support.type.c */
/*         ^^^^^^^^^ meta.function-call.c variable.function.c */
/*                  ^^^ meta.function-call.parameters.c
/*                  ^ meta.group.c punctuation.section.group.begin.c */
/*                   ^ constant.numeric.c */
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
/*                                      ^ keyword.operator.c
/*                                       ^^^ variable.other.c */
    __safe
/*  ^^^^^^ support.type.c */
    SAFE
/*  ^^^^ support.type.c */
    __blah(bar)
/*  ^^^^^^ meta.function-call.c variable.function.c */
/*         ^^^ variable.other.c */
    __blah(bar, foo)
/*  ^^^^^^ meta.function-call.c variable.function.c */
/*        ^^^^^^^^^^ meta.function-call.parameters.c */
/*         ^^^ variable.other.c */
/*              ^^^ variable.other.c */
    __must_hold(&abc->lock)
/*  ^^^^^^^^^^^ meta.function-call.c */
/*             ^^^^^^^^^^^^ meta.function-call.parameters.c */
/*              ^ keyword.operator.c
/*               ^^^ variable.other.c */
/*                  ^^ punctuation.accessor.c */
/*                    ^^^^ variable.other.c */
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
/*                                 ^ variable.other.c */
/*                                  ^ punctuation.separator.c */
  *f,
/*^ storage.modifier.c */
/* ^ variable.other.c */
/*  ^ punctuation.separator.c */
  __attribute__((aligned(8))) * g,
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*^^^^^^^^^^^^^ storage.modifier.c */
/*                            ^ storage.modifier.c */
/*                              ^ variable.other.c */
/*                               ^ punctuation.separator.c */
  * __attribute__((aligned(8))) h;
/*^ storage.modifier.c */
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.c */
/*  ^^^^^^^^^^^^^ storage.modifier.c */
/*                              ^ variable.other.c */
/*                               ^ punctuation.terminator.c */

char *MACRO1 *e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^ support.type.c */
/*           ^ storage.modifier.c */
/*            ^ variable.other.c */
/*             ^ punctuation.separator.c */
  *f,
/*^ storage.modifier.c */
/* ^ variable.other.c */
/*  ^ punctuation.separator.c */
  MACRO1 * g,
/*^^^^^^ support.type.c */
/*       ^ storage.modifier.c */
/*         ^ variable.other.c */
/*          ^ punctuation.separator.c */
  * MACRO1 * h;
/*^ storage.modifier.c */
/*  ^^^^^^ support.type.c*/
/*         ^ storage.modifier.c */
/*           ^ variable.other.c */
/*            ^ punctuation.terminator.c */

char *MACRO1 e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^ support.type.c */
/*           ^ variable.other.c */
/*            ^ punctuation.separator.c */
  f,
/*^ variable.other.c */
/* ^ punctuation.separator.c */
  MACRO1 g,
/*^^^^^^ support.type.c */
/*       ^ variable.other.c */
/*        ^ punctuation.separator.c */
  * MACRO1 h;
/*^ storage.modifier.c */
/*  ^^^^^^ support.type.c*/
/*         ^ variable.other.c */
/*          ^ punctuation.terminator.c */

char *__aligned(8) *e,
/* <- storage.type.c */
/*   ^ storage.modifier.c */
/*    ^^^^^^^^^^^^ meta.function-call */
/*                 ^ storage.modifier.c */
/*                  ^ variable.other.c */
/*                   ^ punctuation.separator.c */
  *f,
/*^ storage.modifier.c */
/* ^ variable.other.c */
/*  ^ punctuation.separator.c */
  __aligned(8) * g,
/*^^^^^^^^^^^^ meta.function-call */
/*             ^ storage.modifier.c */
/*               ^ variable.other.c */
/*                ^ punctuation.separator.c */
  * __aligned(8) h;
/*^ storage.modifier.c */
/*  ^^^^^^^^^^^^ meta.function-call */
/*               ^ variable.other.c */
/*                ^ punctuation.terminator.c */

MACRO1 UPPER_VAR;
/* <- support.type.c */
/*     ^^^^^^^^^ variable.other.c */
/*              ^ punctuation.terminator.c */

__safe UPPER_VAR;
/* <- support.type.c */
/*     ^^^^^^^^^ variable.other.c */
/*              ^ punctuation.terminator.c */

TYPE(int) UPPER_VAR;
/* <- meta.function-call */
/*        ^^^^^^^^^ variable.other.c */
/*                 ^ punctuation.terminator.c */

static const struct print_field const err_flags[];
/*<- storage.modifier.c */
/*     ^^^^^ storage.modifier.c */
/*                              ^^^^^ storage.modifier.c */
/*                                    ^^^^^^^^^ variable.other.c */
/*                                             ^^ storage.modifier.c */
/*                                               ^ punctuation.terminator.c */

enum {
/* <- storage.type */
    ENUM_A,
/*  ^ entity.name.constant.enum.c */
/*        ^ punctuation.separator.c */
    ENUM_B = 6,
/*  ^ entity.name.constant.enum.c */
/*         ^ keyword.operator.assignment */
/*           ^ constant.numeric.c */
/*            ^ punctuation.separator.c */
#ifdef ENABLED_FEATURE
/* <- meta.preprocessor.c keyword.control.import.c */
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
/* <- meta.enum.c storage.type.c */
/*   ^^^^^^^^^ entity.name.enum.c */
  TYPEC_MUX_NONE = 0,
/*^^^^^^^^^^^^^^ entity.name.constant.enum.c */
/*               ^ keyword.operator.assignment.c */
/*                 ^ constant.numeric.c */
/*                  ^ punctuation.separator.c */
  TYPEC_MUX_USB  = MUX_USB_ENABLED,
/*^^^^^^^^^^^^^ entity.name.constant.enum.c */
/*               ^ keyword.operator.assignment.c */
/*                 ^^^^^^^^^^^^^^^ support.constant.c */
/*                                ^ punctuation.separator.c */
  TYPEC_MUX_DOCK = MUX_USB_ENABLED | MUX_DP_ENABLED,
/*^^^^^^^^^^^^^^ entity.name.constant.enum.c */
/*               ^ keyword.operator.assignment.c */
/*                 ^^^^^^^^^^^^^^^ support.constant.c */
/*                                 ^ keyword.operator */
/*                                   ^^^^^^^^^^^^^^ support.constant.c */
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
/*                         ^^ meta.brackets.c storage.modifier.c */
/*                         ^ punctuation.section.brackets.begin */
/*                          ^ punctuation.section.brackets.end */
/*                           ^^ meta.brackets.c storage.modifier.c */
/*                           ^ punctuation.section.brackets.begin */
/*                            ^ punctuation.section.brackets.end */
/*                             ^ punctuation.section.group.end */
{
/* <- meta.function meta.block */
    myClass *result;
    result->kk = func(val);
/*        ^^ punctuation.accessor */
    if (result != 0) {
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
/*      ^^^^^^ - entity.name.function */
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
/* <- support.type.c */
RETURN_TYPE
/* <- support.type.c */
func_name() {
/* < entity.name.function */
}

MACRO1 void MACRO2 * myfuncname ();
/* <- support.type.c */
/*     ^ storage.type.c */
/*          ^ support.type.c */
/*                 ^ storage.modifier.c */
/*                   ^^^^^^^^^^ meta.function.c entity.name.function.c */
/*                              ^^ meta.function.parameters.c*/
/*                                ^ punctuation.terminator.c */

MACRO1 void MACRO2 myfuncname (), MACRO2 foo(), UPPER_VAR, UPPERFN();
/* <- support.type.c */
/*     ^ storage.type.c */
/*          ^ support.type.c */
/*                 ^^^^^^^^^^ meta.function.c entity.name.function.c */
/*                            ^^ meta.group.c*/
/*                              ^ punctuation.separator.c */
/*                                ^^^^^^ support.type.c */
/*                                       ^^^ entity.name.function.c */
/*                                          ^^ meta.function.parameters.c
/*                                            ^ punctuation.separator.c */
/*                                              ^^^^^^^^^ variable.other.c */
/*                                                       ^ punctuation.separator.c */
/*                                                         ^^^^^^^ entity.name.function.c */
/*                                                                ^^ meta.function.parameters.c */
/*                                                                  ^ punctuation.terminator.c */

MACRO1 void * MACRO2 myfuncname () {
/* <- support.type.c */
/*     ^^^^ storage.type.c */
/*          ^ storage.modifier.c */
/*            ^^^^^^ support.type.c */
/*                   ^^^^^^^^^^ meta.function */
/*                              ^^ meta.function.parameters */
/*                                 ^ meta.block punctuation.section.block.begin
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
/*                    ^ storage.modifier.c */
/*                      ^ storage.modifier */
/*                            ^^^^^ support.type.c */
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
/* <- storage.type.c */
/* ^ storage.modifier.c */
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

dec1 = 1234567890;
/*     ^ constant.numeric */
/*              ^ constant.numeric */

dec2 = 1234567890f;
/*     ^ constant.numeric */
/*               ^ constant.numeric */

dec2 = 1234567890L;
/*     ^ constant.numeric */
/*               ^ constant.numeric */

dec2 = 1234567890ul;
/*     ^ constant.numeric */
/*                ^ constant.numeric */

dec4 = 1234567890Lu;
/*     ^ constant.numeric */
/*                ^ constant.numeric */

dec3 = 1234567890LLU;
/*     ^ constant.numeric */
/*                 ^ constant.numeric */

dec3 = 1234567890uLL;
/*     ^ constant.numeric */
/*                 ^ constant.numeric */


scanf("%ms %as %*[, ]", &buf);
/*     ^^^ constant.other.placeholder */
/*         ^^^ constant.other.placeholder */
/*             ^^^^^^ constant.other.placeholder */

"foo % baz"
/*   ^ - invalid */


/////////////////////////////////////////////
// Control Keywords
/////////////////////////////////////////////

int control_keywords()
{
  if (x < 5)
  /* <- keyword.control */
  {}
  else
  /* <- keyword.control */
  {}

  switch (x)
  /* <- keyword.control */
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

  do
  /* <- keyword.control */
  {
      if (y == 3)
          continue;
          /* <- keyword.control.flow.continue */
  } while (y < x);
  /*^ keyword.control */

  switch (a) {
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
