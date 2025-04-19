/* SYNTAX TEST "Packages/C++/C.sublime-syntax" */

// =Banner=
/*  ^^^^^^ comment.line.banner.c meta.toc-list.banner.line.c */

// = Banner =
/* ^^^^^^^^^^^ comment.line.banner.c */
/*^^^ - meta.toc-list  */
/*   ^^^^^^ meta.toc-list.banner.line.c */
/*         ^^^ - meta.toc-list  */

// Comment //
/* <- comment.line.double-slash.c punctuation.definition.comment.c */
 /* <- comment.line.double-slash.c punctuation.definition.comment.c */
/*^^^^^^^^^ comment.line.double-slash.c - punctuation */
 /*        ^^ comment.line.double-slash.c punctuation.definition.comment.c */

//! Comment
/* <- comment.line.documentation.c punctuation.definition.comment.c */
 /* <- comment.line.documentation.c punctuation.definition.comment.c */
  /* <- comment.line.documentation.c punctuation.definition.comment.c */
 /*^^^^^^^^^ comment.line.documentation.c - punctuation */

/// Comment ///
/* <- comment.line.documentation.c punctuation.definition.comment.c */
 /* <- comment.line.documentation.c punctuation.definition.comment.c */
  /* <- comment.line.documentation.c punctuation.definition.comment.c */
 /*^^^^^^^^^ comment.line.documentation.c - punctuation */
 /*         ^^^ comment.line.documentation.c punctuation.definition.comment.c */

//// Comment ////  
/* <- comment.line.double-slash.c punctuation.definition.comment.c */
 /* <- comment.line.double-slash.c punctuation.definition.comment.c */
/*^^ comment.line.double-slash.c punctuation.definition.comment.c */
/*  ^^^^^^^^^ comment.line.double-slash.c - punctuation */
 /*          ^^^^ comment.line.double-slash.c punctuation.definition.comment.c */
/*               ^^ comment.line.double-slash.c - punctuation */

/* =Banner= */
/* <- comment.block.banner.c punctuation.definition.comment.begin.c */
/*^^^^^^^^^^ comment.block.banner.c - punctuation */
/*  ^^^^^^ meta.toc-list.banner.block.c  */
/*          ^^ comment.block.banner.c punctuation.definition.comment.end.c */

/* = Banner = */
/* <- comment.block.banner.c punctuation.definition.comment.begin.c */
/*^^^^^^^^^^^^ comment.block.banner.c - punctuation */
/*^^^ - meta.toc-list  */
/*   ^^^^^^ meta.toc-list.banner.block.c  */
/*         ^^^^^ - meta.toc-list  */
/*            ^^ comment.block.banner.c punctuation.definition.comment.end.c */

   /*****/
/* ^^^^^^^ comment.block.empty.c punctuation.definition.comment.c */

   /**
/* ^^^ comment.block.documentation.c punctuation.definition.comment.begin.c */

   /***
/* ^^^^ comment.block.documentation.c punctuation.definition.comment.begin.c */

   /*!
/* ^^^ comment.block.documentation.c punctuation.definition.comment.begin.c */

   /*!****
/* ^^^ comment.block.documentation.c punctuation.definition.comment.begin.c */
/*    ^^^^^ comment.block.documentation.c - punctuation */

   /*!****/
/* ^^^ comment.block.documentation.c punctuation.definition.comment.begin.c */
/*    ^^^^^ comment.block.documentation.c punctuation.definition.comment.end.c */

   /*!
    * docstring
    **/
/*  ^^^ comment.block.documentation.c */

    */
/*  ^^ invalid.illegal.stray-comment-end.c */

    **/
/*  ^^^ invalid.illegal.stray-comment-end.c */

/*
 * Merge Conflict Marker Tests
 */

<<<<<<< HEAD
/* <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*     ^ meta.block.conflict.begin.diff - entity - punctuation */
/*      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff */
/*          ^ meta.block.conflict.begin.diff - entity - punctuation */

=======
/* <- meta.block.conflict.separator.diff punctuation.section.block.diff */
/*^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff */
/*     ^ meta.block.conflict.separator.diff - punctuation */

>>>>>>> master
/* <- meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*     ^ meta.block.conflict.end.diff - entity - punctuation */
/*      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff */
/*            ^ meta.block.conflict.end.diff - entity - punctuation */

int main(){
    int a=5,b=0;
    while(a-->0)++b;
    /*     ^^ keyword.operator.arithmetic */
    /*       ^ keyword.operator.comparison */
    /*        ^ meta.number constant.numeric.value */
    /*          ^^ keyword.operator.arithmetic */
}

enum Foo { kFoo, kBar };
/* <- keyword.declaration */
/*   ^ entity.name.enum */
/*         ^ entity.name.constant.c */
/*               ^ entity.name.constant.c */
#define FOO Foo
enum FOO do_the_foo(void);
/*       ^ entity.name.function */
/*                  ^ storage.type */

#define APIC_CAPABILITY TheEnum
enum TheEnum { kFoo, kBar };
static enum APIC_CAPABILITY apic_capabilities(void) { return kFoo; };
/*                          ^ entity.name.function */
/*                                            ^ storage.type */

enum { kFoo, kBar };
/* <- keyword.declaration */
/*     ^ entity.name.constant.c */
/*           ^ entity.name.constant.c */

enum { kFoo = FOO, kBar = BAR };
/* <- keyword.declaration */
/*     ^^^^ entity.name.constant.c */
/*          ^ keyword.operator.assignment.c */
/*            ^^^ - entity.name.constant */
/*               ^ punctuation.separator.c */
/*                 ^^^^ entity.name.constant.c */
/*                      ^ keyword.operator.assignment.c */
/*                        ^^^ - entity.name.constant */

enum {
    FOO,
/*  ^^^ entity.name.constant.c */
/*     ^ punctuation.separator.c */
    BAR
/*  ^^^ entity.name.constant.c */
};

typedef enum state { DEAD, ALIVE } State;
/* <- keyword.declaration
/*           ^ entity.name.enum */
/*                   ^ entity.name.constant.c */
/*                         ^ entity.name.constant.c */

struct __declspec(dllimport) X {};
/*     ^ storage.modifier */
/*                           ^ entity.name.struct */

struct __declspec(dllimport) baz X {};
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
}

#define EXTTS_BUFSIZE (PTP_BUF_TIMESTAMPS /* comment block */ * sizeof(struct ptp_extts_event)) // comment line
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/*                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group */
/*                                                                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group meta.group */
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

signed _BitInt(4) bi1 = 1wb;
/*     ^ keyword.declaration.type */
/*                       ^ constant.numeric.suffix */

unsigned _BitInt(4) bi2 = 1uwb;
/*       ^ keyword.declaration.type */
/*                         ^ constant.numeric.suffix */

_Atomic int ai1;
/* <- storage.modifier */

_Atomic(int) ai2;
/* <- storage.modifier */

_Alignas(int) int aa1;
/* <- keyword.declaration.type */

alignas(int) int aa2;
/* <- keyword.declaration.type */

thread_local int tl1;
/* <- storage.modifier */

_Thread_local int tl2;
/* <- storage.modifier */

typeof(i) dt;
/* <- keyword.declaration.type */
/*    ^ punctuation.section.group.begin */
/*      ^ punctuation.section.group.end */
__typeof(i) dt;
/* <- keyword.declaration.type */
/*      ^ punctuation.section.group.begin */
/*        ^ punctuation.section.group.end */
__typeof__(i) dt;
/* <- keyword.declaration.type */
/*        ^ punctuation.section.group.begin */
/*          ^ punctuation.section.group.end */
typeof_unqual(i) dt;
/* <- keyword.declaration.type */
/*           ^ punctuation.section.group.begin */
/*             ^ punctuation.section.group.end */

static_assert(alignof(int) == 4);
/*              ^ keyword.operator.word */

_Static_assert(_Alignof(int) == 4);
/*              ^ keyword.operator.word */

static_assert(sizeof(int) == 4);
/* <- keyword.operator.word */

_Static_assert(sizeof(int) == 4);
/* <- keyword.operator.word */

void build_default_prototype(Function *ret) {
    static typeof(*ret->params) params[4];
           /* <- keyword.declaration.type */
           /*    ^ punctuation.section.group.begin */
           /*                 ^ punctuation.section.group.end */
    static __typeof(*ret->params) params[4];
           /* <- keyword.declaration.type */
           /*      ^ punctuation.section.group.begin */
           /*                   ^ punctuation.section.group.end */
    static __typeof__(*ret->params) params[4];
           /* <- keyword.declaration.type */
           /*        ^ punctuation.section.group.begin */
           /*                     ^ punctuation.section.group.end */
    static typeof_unqual(*ret->params) params[4];
           /* <- keyword.declaration.type */
           /*           ^ punctuation.section.group.begin */
           /*                        ^ punctuation.section.group.end */
}

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
/*                              ^^ meta.number constant.numeric.value */
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
#error "Explicitly quoted string wrapped, \
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

_Decimal32 d32;
/* <- storage.type */

_Decimal64 d64;
/* <- storage.type */

_Decimal128 d128;
/* <- storage.type */

complex complex_t_var;
/* <- support.type.complex */

imaginary imaginary_t_var;
/* <- support.type.complex */

fenv_t fenv_t_var;
/* <- support.type.fenv */

fexcept_t fexcept_t_var;
/* <- support.type.fenv */

jmp_buf jmp_buf_var;
/* <- support.type.setjmp */

sig_atomic_t sig_atomic_t_var;
/* <- support.type.signal */

va_list va_list_var;
/* <- support.type.stdarg */

atomic_bool atomic_bool_var;
/* <- support.type.stdatomic */

atomic_char atomic_char_var;
/* <- support.type.stdatomic */

atomic_schar atomic_schar_var;
/* <- support.type.stdatomic */

atomic_uchar atomic_uchar_var;
/* <- support.type.stdatomic */

atomic_short atomic_short_var;
/* <- support.type.stdatomic */

atomic_ushort atomic_ushort_var;
/* <- support.type.stdatomic */

atomic_int atomic_int_var;
/* <- support.type.stdatomic */

atomic_uint atomic_uint_var;
/* <- support.type.stdatomic */

atomic_long atomic_long_var;
/* <- support.type.stdatomic */

atomic_ulong atomic_ulong_var;
/* <- support.type.stdatomic */

atomic_llong atomic_llong_var;
/* <- support.type.stdatomic */

atomic_ullong atomic_ullong_var;
/* <- support.type.stdatomic */

atomic_char8_t atomic_char8_t_var;
/* <- support.type.stdatomic */

atomic_char16_t atomic_char16_t_var;
/* <- support.type.stdatomic */

atomic_char32_t atomic_char32_t_var;
/* <- support.type.stdatomic */

atomic_wchar_t atomic_wchar_t_var;
/* <- support.type.stdatomic */

atomic_int_least8_t atomic_int_least8_t_var;
/* <- support.type.stdatomic */

atomic_uint_least8_t atomic_uint_least8_t_var;
/* <- support.type.stdatomic */

atomic_int_least16_t atomic_int_least16_t_var;
/* <- support.type.stdatomic */

atomic_uint_least16_t atomic_uint_least16_t_var;
/* <- support.type.stdatomic */

atomic_int_least32_t atomic_int_least32_t_var;
/* <- support.type.stdatomic */

atomic_uint_least32_t atomic_uint_least32_t_var;
/* <- support.type.stdatomic */

atomic_int_least64_t atomic_int_least64_t_var;
/* <- support.type.stdatomic */

atomic_uint_least64_t atomic_uint_least64_t_var;
/* <- support.type.stdatomic */

atomic_int_fast8_t atomic_int_fast8_t_var;
/* <- support.type.stdatomic */

atomic_uint_fast8_t atomic_uint_fast8_t_var;
/* <- support.type.stdatomic */

atomic_int_fast16_t atomic_int_fast16_t_var;
/* <- support.type.stdatomic */

atomic_uint_fast16_t atomic_uint_fast16_t_var;
/* <- support.type.stdatomic */

atomic_int_fast32_t atomic_int_fast32_t_var;
/* <- support.type.stdatomic */

atomic_uint_fast32_t atomic_uint_fast32_t_var;
/* <- support.type.stdatomic */

atomic_int_fast64_t atomic_int_fast64_t_var;
/* <- support.type.stdatomic */

atomic_uint_fast64_t atomic_uint_fast64_t_var;
/* <- support.type.stdatomic */

atomic_intptr_t atomic_intptr_t_var;
/* <- support.type.stdatomic */

atomic_uintptr_t atomic_uintptr_t_var;
/* <- support.type.stdatomic */

atomic_size_t atomic_size_t_var;
/* <- support.type.stdatomic */

atomic_ptrdiff_t atomic_ptrdiff_t_var;
/* <- support.type.stdatomic */

atomic_intmax_t atomic_intmax_t_var;
/* <- support.type.stdatomic */

atomic_uintmax_t atomic_uintmax_t_var;
/* <- support.type.stdatomic */

atomic_flag atomic_flag_var;
/* <- support.type.stdatomic */

memory_order memory_order_var;
/* <- support.type.stdatomic */

FILE *FILE_var;
/* <- support.type.stdio */

fpos_t fpos_t_var;
/* <- support.type.stdio */

div_t div_t_var;
/* <- support.type.stdlib */

ldiv_t ldiv_t_var;
/* <- support.type.stdlib */

lldiv_t lldiv_t_var;
/* <- support.type.stdlib */

imaxdiv_t imaxdiv_t_var;
/* <- support.type.stdlib */

size_t size_t_var;
/* <- support.type.stddef */

ptrdiff_t ptrdiff_t_var;
/* <- support.type.stddef */

max_align_t max_align_t_var;
/* <- support.type.stddef */

nullptr_t nullptr_t_var;
/* <- support.type.stddef */

wchar_t wchar_t_var;
/* <- support.type.wchar */

wint_t wint_t_var;
/* <- support.type.wchar */

wctrans_t wctrans_t_var;
/* <- support.type.wchar */

wctype_t wctype_t_var;
/* <- support.type.wchar */

mbstate_t mbstate_t_var;
/* <- support.type.uchar */

char8_t char8_t_var;
/* <- support.type.uchar */

char16_t char16_t_var;
/* <- support.type.uchar */

char32_t char32_t_var;
/* <- support.type.uchar */

time_t time_t_var;
/* <- support.type.time */

clock_t clock_t_var;
/* <- support.type.time */

thrd_t thrd_t_var;
/* <- support.type.threads */

thrd_start_t thrd_start_t_var;
/* <- support.type.threads */

mtx_t mtx_t_var;
/* <- support.type.threads */

cnd_t cnd_t_var;
/* <- support.type.threads */

tss_t tss_t_var;
/* <- support.type.threads */

tss_dtor_t tss_dtor_t_var;
/* <- support.type.threads */

once_flag once_flag_var;
/* <- support.type.threads */

void *null_pointer1 = NULL;
                    /* ^ constant.language.null */

void *null_pointer2 = nullptr;
                    /* ^ constant.language.null */

_Noreturn
/* <- storage.modifier */
void foo(void) { abort(); }

noreturn
/* <- storage.modifier */
void bar(void) { abort(); }

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
/* <- - keyword.control
    ^ meta.number constant.numeric.value
*/
#endif
/* <- - keyword.control */
#endif

#if 0
/*  ^ meta.number constant.numeric.value */
int disabled_func() {
/*  ^ comment.block */
}
#endif

#if 0000000
/*  ^^^^^^^ meta.number constant.numeric.value
*/
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

#if 0090
/*  ^^^^ meta.number constant.numeric.value
*/
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

/**
    *
/*  ^ comment.block.documentation.c punctuation.definition.comment.c */

/*
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
/* <- keyword.declaration */
/*          ^ entity.name.type */

typedef struct mystruct {
/* <- keyword.declaration */
/*      ^ keyword.declaration.struct.c */
/*             ^ entity.name.struct.c */
} mystruct;
/* ^ entity.name.type.typedef.c */

typedef struct MyStructure {} MyStructure_t;
/* <- keyword.declaration.type.c */
/*      ^^^^^^ keyword.declaration.struct.c */
/*             ^^^^^^^^^^^ entity.name.struct.c */
/*                         ^ punctuation.section.block.begin.c */
/*                          ^ punctuation.section.block.end.c */
/*                            ^^^^^^^^^^^^^ entity.name.type.typedef.c */

/////////////////////////////////////////////
// Data structures and return values
/////////////////////////////////////////////

struct point
/* ^ keyword.declaration */
/*     ^ entity.name.struct */
{
    int x;
    int y;
}

struct point2 {
/* ^ keyword.declaration */
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
/* ^ keyword.declaration */
/*     ^ - entity.name.struct */
/*           ^ entity.name.function */

struct point **alloc_points();
/* ^ keyword.declaration */
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
/* <- keyword.declaration */
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

int bar(int, int const *, int const * const);
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.group */
/*     ^ punctuation.section.group.begin */
/*                                         ^ punctuation.section.group.end */
/*                                          ^ punctuation.terminator */
/*      ^^^ storage.type */
/*         ^ punctuation.separator */
/*           ^^^ storage.type */
/*               ^^^^^ storage.modifier */
/*                     ^ keyword.operator */
/*                      ^ punctuation.separator */
/*                        ^^^ storage.type */
/*                            ^^^^^ storage.modifier */
/*                                  ^ keyword.operator */
/*                                    ^^^^^ storage.modifier */

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
#elifdef BAR
 /* <- keyword.control.import */
    if (val == -2) {
/*                 ^ meta.block meta.block punctuation.section.block.begin */
#elifndef BAZ
 /* <- keyword.control.import */
    if (val == -3) {
/*                 ^ meta.block meta.block punctuation.section.block.begin */
#else
 /* <- keyword.control.import */
    if (val == -4) {
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
/*  ^ keyword.declaration */
/*         ^ entity.name.struct */
        void* hello;
        void* foobar;
    };

    struct Args args;
/*  ^ keyword.declaration */
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

static constexpr int bar = 1;
/*     ^ storage.modifier */

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

static const unsigned char image_png[] = {
#embed <image.png>
/* <- keyword.control.import.include */
};

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
/*     ^^^^^^^^^^ constant.numeric.value.c */
/*               ^ invalid.illegal.numeric.suffix.c */
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
/*     ^^^^^^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^ constant.numeric.value.c */
/*          ^^^^ invalid.illegal.numeric.suffix.c */
/*               ^^^ constant.numeric.value.c */
/*                  ^^^ invalid.illegal.numeric.suffix.c */
/*                     ^ punctuation.terminator - constant */

dec9 = 2'354'202'076LL;
/*     ^^^^^^^^^^^^^^^ meta.number.integer.decimal.c */
/*     ^^^^^^^^^^^^^ constant.numeric.value.c */
/*                  ^^ constant.numeric.suffix.c */
/*                    ^ punctuation.terminator - constant */

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

oct5 = 01284967Z0L;
/*     ^^^^^^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^ constant.numeric.value.c */
/*        ^^^^^^^^ invalid.illegal.numeric.suffix.c */
/*                ^ punctuation.terminator - constant */

oct6 = 014'70;
/*     ^^^^^^ meta.number.integer.octal.c */
/*     ^ constant.numeric.base.c */
/*      ^^^^^ constant.numeric.value.c */
/*           ^ punctuation.terminator - constant */

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
/*                                 ^^^^^^^ meta.number.integer.hexadecimal.c */
/*                                 ^^ constant.numeric.base.c */
/*                                   ^^^^^ constant.numeric.value.c */
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

hex3 = 0xA7'45'8C'38;
/*     ^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c */
/*     ^^ constant.numeric.base.c */
/*       ^^^^^^^^^^^ constant.numeric.value.c */
/*                  ^ punctuation.terminator - constant */

bin1 = 0b010110;
/*     ^^^^^^^^ meta.number.integer.binary */
/*     ^^ constant.numeric.base */
/*       ^^^^^^ constant.numeric.value */
/*             ^ punctuation.terminator - constant */

bin2 = 0B010010;
/*     ^^^^^^^^ meta.number.integer.binary */
/*     ^^ constant.numeric.base */
/*       ^^^^^^ constant.numeric.value */
/*             ^ punctuation.terminator - constant */

bin3 = 0b1001'1101'0010'1100;
/*     ^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary */
/*     ^^ constant.numeric.base */
/*       ^^^^^^^^^^^^^^^^^^^ constant.numeric.value */
/*                          ^ punctuation.terminator - constant */

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
