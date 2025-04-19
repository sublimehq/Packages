/* SYNTAX TEST "Packages/C++/C++.sublime-syntax" */

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

Task<int> natural_numbers()
{
  int n = 0;
  while (true) {
    co_yield n;
    /*     ^ keyword.control */
    n++;
  }
}
Task<int> foo()
{
  co_return 42;
  /*      ^ keyword.control */
  /*         ^ meta.number */
}
Task<void> bar()
{
  co_await natural_numbers();
  /*     ^ keyword.control */
  /*                     ^ variable.function */
}

int main(){
    int a=5,b=0;
    while(a-->0)++b;
    /*     ^^ keyword.operator.arithmetic */
    /*       ^ keyword.operator.comparison */
    /*        ^ meta.number */
    /*          ^^ keyword.operator.arithmetic */
}

/////////////////////////////////////////////
// Preprocessor
/////////////////////////////////////////////

#ifndef IGUARD_
 /* <- keyword.control.import */
#define IGUARD_
 /* <- keyword.control.import.define */
struct foo* alloc_foo();
/* <- keyword.declaration */
       /* <- - entity.name.type */
            /* <- entity.name.function */
#endif
 /* <- keyword.control.import */

// The following example ensures that comments at the end of preprocessor
// directives don't mess with context transitions
int func() {
/*  ^ entity.name.function */
    #if( EXTAL == 40000 )       /* 40 MHz */
/*  ^ keyword.control.import */
        #define PLL_RFD_PHI1    10      // PLL0_PH1 = 40MHz
/*      ^ keyword.control.import */
/*                              ^^ meta.number */
/*                                      ^ comment.line */
    #endif
/*  ^ keyword.control.import */
}
/* <- meta.function meta.block punctuation.section.block.end */
 /* <- - meta.function meta.block */

int f(int x, \
         /*  ^ punctuation.separator.continuation */
      int y);

int g(int x = 5 \
         /*     ^ punctuation.separator.continuation */
      , int y);

#define MACRO_WITH_CURLY_BRACE {
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

#define MACRO_WITH_CURLY_BRACE_2 }
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.macro */
/* <- keyword.control.import.define */
/*      ^ entity.name.constant */

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

// This is a method/function with the return type on a separate line and so should not be a
// constructor.
FOOLIB_RESULT
some_namespace::some_function(int a_parameter, double another_parameter) {
  /* <- meta.function meta.toc-list.full-identifier */
  /*            ^ entity.name.function - entity.name.function.constructor */
  return FOOLIB_SUCCESS;
}

#pragma foo(bar, \
"baz", \
1)
/* <- meta.preprocessor */

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

#if 0
#ifdef moo
/* <- - keyword.control */
#endif
/* <- - keyword.control */
#endif

#if 0000000
/*  ^^^^^^^ meta.number constant.numeric.value
*/
#endif

#if 0090
/*  ^^^^ meta.number constant.numeric.value
*/
#endif

FOO()
/* <- meta.assumed-macro variable.function.assumed-macro */
FOO
/* <- meta.assumed-macro */

struct FOO1 FOO2 FOO3 Test {
  /*   ^ meta.struct meta.assumed-macro           */
  /*        ^ meta.struct meta.assumed-macro      */
  /*             ^ meta.struct meta.assumed-macro */
  Test();
  Test() noexcept;
  Test() final;
  Test() noexcept final;
  ~Test();
  ~Test() noexcept;
  ~Test() override noexcept;
  virtual ~Test();
  virtual ~Test() noexcept;
  virtual ~Test() override noexcept;
  DLL_API Test();
  /* <- meta.assumed-macro                   */
  /*      ^ meta.method.constructor          */
  DLL_API Test() noexcept;
  /* <- meta.assumed-macro                   */
  /*      ^ meta.method.constructor          */
  /*             ^ storage.modifier          */
  DLL_API Test() final;
  /* <- meta.assumed-macro                   */
  /*      ^ meta.method.constructor          */
  /*             ^ storage.modifier          */
  DLL_API Test() noexcept final;
  /* <- meta.assumed-macro                   */
  /*      ^ meta.method.constructor          */
  /*             ^ storage.modifier          */
  /*                      ^ storage.modifier */
  DLL_API ~Test();
  /* <- meta.assumed-macro                    */
  /*      ^ meta.method.destructor            */
  DLL_API ~Test() noexcept;
  /* <- meta.assumed-macro                    */
  /*      ^ meta.method.destructor            */
  /*              ^ storage.modifier          */
  DLL_API ~Test() override noexcept;
  /* <- meta.assumed-macro                    */
  /*      ^ meta.method.destructor            */
  /*              ^ storage.modifier          */
  /*                       ^ storage.modifier */
  DLL_API virtual ~Test();
  /* <- meta.assumed-macro                            */
  /*      ^ storage.modifier                          */
  /*              ^ meta.method.destructor            */
  DLL_API virtual ~Test() noexcept;
  /* <- meta.assumed-macro                            */
  /*      ^ storage.modifier                          */
  /*              ^ meta.method.destructor            */
  /*                      ^ storage.modifier          */
  DLL_API virtual ~Test() override noexcept;
  /* <- meta.assumed-macro                            */
  /*      ^ storage.modifier                          */
  /*              ^ meta.method.destructor            */
  /*                      ^ storage.modifier          */
  /*                               ^ storage.modifier */
}

struct X {
  X();
   /* <- meta.group */
  /*^ meta.group - meta.group meta.group */
};

#define DEPRECATED(msg) [[deprecated(msg)]]

struct Test {
    DEPRECATED("bla")
    /* <- meta.assumed-macro variable.function.assumed-macro */
    bool foo (bool run=true) {}
    /*   ^ entity.name.function */
};

namespace Test {
    DEPRECATED("bla")
    /* <- meta.assumed-macro variable.function.assumed-macro */
    bool foo (bool run=true) {}
    /*   ^ entity.name.function */
}

struct Test {
DEPRECATED("bla")
/* <- meta.assumed-macro variable.function.assumed-macro */
bool foo (bool run=true) {}
/*   ^ entity.name.function */
};

/////////////////////////////////////////////
// Strings
/////////////////////////////////////////////

char str1[] = "abc";
/*            ^ punctuation.definition.string.begin */
/*             ^ string.quoted.double */
/*                ^ punctuation.definition.string.end */

char8_t str2[] = u8"abc";
/*               ^ storage.type.string */
/*                 ^ punctuation.definition.string.begin */
/*                  ^ string.quoted.double */

char16_t str3[] = u"abc";
/*                ^ storage.type.string */
/*                 ^ punctuation.definition.string.begin */
/*                  ^ string.quoted.double */

char32_t str4[] = U"abc";
/*                ^ storage.type.string */
/*                 ^ punctuation.definition.string.begin */
/*                  ^ string.quoted.double */

wchar_t str5[] = L"abc";
/*               ^ storage.type.string */
/*                ^ punctuation.definition.string.begin */
/*                 ^ string.quoted.double */

char str6[] = "\a|\b|\e|\f|\n|\r|\t|\v|\'|\"|\?";
/*             ^^ constant.character.escape */
/*                ^^ constant.character.escape */
/*                   ^^ constant.character.escape */
/*                      ^^ constant.character.escape */
/*                         ^^ constant.character.escape */
/*                            ^^ constant.character.escape */
/*                               ^^ constant.character.escape */
/*                                  ^^ constant.character.escape */
/*                                     ^^ constant.character.escape */
/*                                        ^^ constant.character.escape */
/*                                           ^^ constant.character.escape */

char str7[] = "\0|\012";
/*             ^^ constant.character.escape */
/*                ^^^^ constant.character.escape */

char str8[] = "\x0a|\x41|\xA|\x000065";
/*             ^^^^ constant.character.escape */
/*                  ^^^^ constant.character.escape */
/*                       ^^^ constant.character.escape */
/*                           ^^^^^^^^ constant.character.escape */

char8_t str9[] = u8"\u0063";
/*                  ^^^^^^ constant.character.escape */

char16_t str10[] = u"\u0063";
/*                   ^^^^^^ constant.character.escape */

char32_t str11[] = U"\U00000063";
/*                   ^^^^^^^^^^ constant.character.escape */

char str12[] = "\q";
/*              ^^ invalid.illegal.unknown-escape */

scanf("%ms %as %*[, ]", &buf);
/*     ^^^ constant.other.placeholder */
/*         ^^^ constant.other.placeholder */
/*             ^^^^^^ constant.other.placeholder */

"foo % baz"
/*   ^ - invalid */

char rawStr1[] = R"("This is a raw string")";
/*               ^ storage.type.string */
/*                ^ punctuation.definition.string.begin */
/*                  ^ string.quoted.double */
/*                                        ^ punctuation.definition.string.end */

char rawStr2[] = R"A*!34( )" )A*!34";
/*               ^ storage.type.string */
/*                ^ punctuation.definition.string.begin */
/*                      ^ punctuation.definition.string.begin */
/*                        ^ string.quoted.double */
/*                           ^ punctuation.definition.string.end */
/*                                 ^ punctuation.definition.string.end */

const char IncludeRegexPattern[] =
    R"(^[\t\ ]*#[\t\ ]*(import|include)[^"<]*(["<][^">]*[">]))";
/*  ^ storage.type.string */
/*   ^ punctuation.definition.string.begin */
/*         ^^ - invalid */
/*                 ^^ - invalid */
/*                                                            ^ punctuation.definition.string.end */

foo.f<5> /* foo */ ();

/////////////////////////////////////////////
// Storage Types
/////////////////////////////////////////////

void* ptr;
/* <- storage.type */

bool b;
/* <- storage.type */

char ch;
/* <- storage.type */

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

unsigned int ui;
/* <- storage.type */
/*       ^ storage.type */

signed long l;
/* <- storage.type */
/*     ^ storage.type */

short s;
/* <- storage.type */

auto a = 2;
/* <- storage.type */

decltype(s) dt;
/* <- keyword.declaration.type */
/*      ^ punctuation.section.group.begin */
/*        ^ punctuation.section.group.end */

float f;
/* <- storage.type */

double d;
/* <- storage.type */

typedef int my_int;
/* <- keyword.declaration.type */
/*          ^ entity.name.type */

typedef struct Books {
/*      ^^^^^^ keyword.declaration.struct */
/*             ^ - entity.name.type */
   char title[50];
   int book_id;
} Book;
/*^ entity.name.type */

typedef struct MyStructure {} MyStructure_t;
/* <- keyword.declaration.type.c++ */
/*      ^^^^^^ keyword.declaration.struct.type.c++ */
/*             ^^^^^^^^^^^ entity.name.struct.c++ */
/*                         ^ punctuation.section.block.begin.c++ */
/*                          ^ punctuation.section.block.end.c++ */
/*                            ^^^^^^^^^^^^^ entity.name.type.typedef.c++ */

using Alias = Foo;
/* <- keyword.control */
/*    ^^^^^ entity.name.type.using */

using Alias
  = NewLineFoo;
/*^ - entity.name */

template <typename T>
using TemplateAlias = Foo<T>;
/*    ^^^^^^^^^^^^^ entity.name.type.using */

using std::cout;
/* <- keyword.control */
/*    ^ - entity.name */

using std::
  cout;
/*^ - entity.name */

class MyClass : public SuperClass
{
    using This = MyClass;
/*  ^ keyword.control */
/*        ^^^^ entity.name.type.using */

    using MyInt
/*  ^ keyword.control */
        = int32_t;

    using SuperClass::SuperClass;
/*  ^ keyword.control */
/*        ^ - entity.name */
};

class MyClass : public CrtpClass<MyClass>
{
    using typename CrtpClass<MyClass>::PointerType;
/*  ^ keyword.control */
/*        ^ storage.modifier */
    using CrtpClass<
/*  ^ keyword.control */
        MyClass>::method;
};

typedef struct Books Book;
/*             ^ - entity.name.type.struct */
/*                   ^ entity.name.type.typedef */

template class MyStack<int, 6>;
/* <- keyword.declaration.template */
/*                    ^ punctuation.definition.generic */
/*                     ^ storage.type */
/*                          ^ meta.number */
/*                           ^ punctuation.definition.generic */

template<class typeId, int N> class tupleTmpl;
/* <- keyword.declaration.template */
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.template */
/*      ^ punctuation.definition.generic.begin */
/*       ^^^^^ keyword.declaration.c++ */
/*                      ^ storage.type */
/*                          ^ punctuation.definition.generic.end */

template<typename First = U<V>, typename... Rest> class tupleVariadic;
/* <- keyword.declaration.template */
/*      ^ punctuation.definition.generic.begin */
/*       ^^^^^^^^ keyword.declaration */
/*                         ^ punctuation.definition.generic.begin */
/*                           ^ punctuation.definition.generic.end */
/*                            ^ punctuation.separator */
/*                                      ^^^ keyword.operator.variadic */
/*                                              ^ punctuation.definition.generic.end */

template<typename T...> void SomeClass<T...>::function();
/*                                      ^^^ keyword.operator.variadic */
/*                                            ^^^^^^^^ entity.name.function */

template<typename Foo> inline struct Foo* baz()
/*                     ^^^^^^ storage.modifier */
/*                                   ^ - entity.name */
/*                                        ^^^ meta.function entity.name.function */
{}

template<typename A, typename B>
void classname<A, B>::methodName() {
/*   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*            ^ punctuation.definition.generic.begin */
/*                 ^ punctuation.definition.generic.end */
/*                  ^^ punctuation.accessor */
/*                    ^^^^^^^^^^ entity.name.function */
}

template<typename C>
void funcName<C>() {
/*   ^^^^^^^^^^^^^^^ meta.function */
/*   ^^^^^^^^ entity.name.function */
/*           ^ punctuation.definition.generic.begin */
/*             ^ punctuation.definition.generic.end */
}
bool A::operator<(const A& a) { return false; }
/* ^ storage.type */
/*   ^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*      ^^^^^^^^^ entity.name.function */
/*               ^ meta.function.parameters punctuation.section.group.begin */
template <class T> bool A<T>::operator<(const A& a) { return false; }
/*     ^ keyword.declaration.template */
/*       ^ punctuation.definition.generic.begin */
/*               ^ punctuation.definition.generic.end */
/*                      ^^^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*                            ^^^^^^^^^ entity.name.function */
/*                                     ^ meta.function.parameters meta.group punctuation.section.group.begin */
template <typename Foo>
SomeType<OtherType> A<Foo>::foobar(YetAnotherType&& asRValue) {}
/*                  ^^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*                          ^^^^^^ entity.name.function */
template <typename Foo> SomeType<OtherType> A<Foo>::foobar(YetAnotherType&& asRValue) {}
/*                                          ^^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*                                                  ^^^^^^ entity.name.function */

template <typename Foo> A<Foo>::A(YetAnotherType&& asRValue) {}
/*                      ^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*                              ^ entity.name.function */

template <typename Foo> A<Foo>::A(YetAnotherType&& asRValue) {}
/*                      ^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*                              ^ entity.name.function.constructor */

template <typename Foo> A<Foo>::~A(YetAnotherType&& asRValue) {}
/*                      ^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*                              ^ entity.name.function.destructor */

template <class T>
bool A<T>::operator   >    (const A& other) { return false; }
/*   ^^^^^^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*         ^^^^^^^^^^^^ entity.name.function */
template <class T>
bool A<T>::operator    ==    (const A& other) { return false; }
/*   ^^^^^^^^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*         ^^^^^^^^^^^^^^ entity.name.function */
template <class T>
bool A<T>::operator   <=>    (const A& other) { return false; }
/*   ^^^^^^^^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*         ^^^^^^^^^^^^^^ entity.name.function */

typedef std :: vector<std::vector<int> > Table;
/*          ^^ punctuation.accessor */
/*                   ^ punctuation.definition.generic.begin */
/*                               ^ punctuation.definition.generic.begin */
/*                                   ^ punctuation.definition.generic.end */
/*                                     ^ punctuation.definition.generic.end */

template <typename T = float, int a = 3, bool b = true>
                  /* ^ meta.template keyword.operator                               */
                  /*                ^ meta.template keyword.operator                */
                  /*                  ^ meta.template meta.number              */
                  /*                            ^ meta.template keyword.operator    */
                  /*                              ^ meta.template constant.language */
struct Foo
{

/* <- meta.struct - meta.template */

    void bar(int a = 3, bool b = true) {}
                /* ^ - meta.template keyword.operator                */
                /*   ^ - meta.template meta.number              */
                /*             ^ - meta.template keyword.operator    */
                /*               ^ - meta.template constant.language */
};

/* <- - meta.block - meta.struct - meta.template  */

template <std::size_t Count = 128>
/*           ^^ meta.template punctuation.accessor             */
/*                          ^ meta.template keyword.operator   */
/*                            ^ meta.template meta.number */
class fixed_array : private std::array<int, Count> {};

constexpr std::size_t f() { return 128; }
template <std::size_t Count = f()>
/*           ^^ meta.template punctuation.accessor                             */
/*                          ^ meta.template keyword.operator                   */
/*                            ^ meta.template variable.function                */
/*                             ^^ meta.template meta.function-call punctuation */
/*                               ^ meta.template punctuation                   */
class fixed_array : private std::array<int, Count> {};

template<class T> class A { /* ... */ };
template<class T, class U = T> class B { /* ... */ };
/*                        ^ meta.template keyword.operator */
/*                          ^ meta.template                */
/*                           ^ meta.template punctuation   */
/*                            ^ - meta.template            */
template <class ...Types> class C { /* ... */ };

// templates inside templates... it's templates all the way down
template<template<class> class P> class X { /* ... */ };
/*      ^ meta.template punctuation                              */
/*               ^ meta.template meta.template punctuation       */
/*                ^^^^^ meta.template meta.template keyword.declaration */
/*                     ^ meta.template meta.template punctuation */
/*                       ^^^^^ meta.template keyword.declaration */
/*                              ^ meta.template punctuation      */

X<A> xa; // OK
X<B> xb; // OK in C++14 after CWG 150
         // Error earlier: not an exact match
X<C> xc; // OK in C++14 after CWG 150

// template declarations spanning multiple lines
template
/* <- meta.template keyword.declaration.template */
<
/* <- meta.template punctuation.definition.generic.begin */
    class T,
    class U = T
>
class B
{
    /* ... */
};

// template declarations spanning multiple lines
template
<
/* <- meta.template punctuation.definition.generic.begin */
    std::size_t Count = f()
/*     ^^ meta.template punctuation.accessor                             */
/*                    ^ meta.template keyword.operator                   */
/*                      ^ meta.template variable.function                */
/*                       ^^ meta.template meta.function-call punctuation */
>
/* <- meta.template punctuation.definition.generic.end */
class fixed_array : private std::array<int, Count> {};

template <class T>
static bool decode(const Node& node, T& sequence) {
  if (!node.IsSequence())
    return false;
  sequence.clear();
  for (const auto& item : node) {
    sequence.push_back(item.template as<typename T::value_type>());
    /*                     ^ punctuation.accessor                           */
    /*                      ^ keyword.declaration.template - variable.other */
    /*                               ^ variable.function                    */
    /*                                 ^ punctuation                        */
    /*                                            ^^ punctuation.accessor   */
    /*                                                        ^ punctuation */
  }
  return true;
}

#include <functional>
template <class T> struct A {};
template <class T> struct B {};
struct C {};
A<B<C>> f(std::function<A<B<C>>()> g) {
    /*   ^ punctuation.section.group.begin */
    /*       ^^ punctuation.accessor */
    /*                 ^ punctuation.definition.generic.begin */
    /*                   ^ punctuation.definition.generic.begin */
    /*                     ^ punctuation.definition.generic.begin */
    /*                       ^^ punctuation.definition.generic.end */
    /*                         ^ punctuation.section.group.begin */
    /*                          ^ punctuation.section.group.end */
    /*                           ^ punctuation.definition.generic.end */
    /*                             ^ variable.parameter */
    /*                              ^ punctuation.section.group.end */
    /*                                ^ punctuation.section.block.begin */
    return g();
}
int main() {
    std::function<C()> foo1;
    /*          ^ - variable.function */
    std::function<B<C>()> foo2;
    /*          ^ - variable.function */
    auto f = [](std::function<A<B<C>>()> g) { return g(); };
    /*         ^ punctuation.section.group.begin */
    /*             ^^ punctuation.accessor */
    /*                       ^ punctuation.definition.generic.begin */
    /*                         ^ punctuation.definition.generic.begin */
    /*                           ^ punctuation.definition.generic.begin */
    /*                             ^^ punctuation.definition.generic.end */
    /*                               ^ punctuation.section.group.begin */
    /*                                ^ punctuation.section.group.end */
    /*                                 ^ punctuation.definition.generic.end */
    /*                                    ^ punctuation.section.group.end */
    /*                                      ^ punctuation.section.block.begin */
    /*                                                    ^ punctuation.section.block.end */
    return 0;
}
/* <- - invalid.illegal */

// Example from section 14.2/4 of
// http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2013/n3690.pdf
struct X
{
    template <std::size_t>
    X* alloc();

    template <std::size_t>
    static X* adjust();
};
template <class T>
void f(T* p)
{
    // Be optimistic: scope it as a template member function call anyway.
    T* p1 = p->alloc<200>(); // ill-formed: < means less than

    T* p2 = p->template alloc<200>(); // OK: < starts template argument list
    /*        ^ punctuation.accessor           */
    /*         ^ keyword.declaration.template - variable.other */
    /*                  ^ variable.function    */

    // Be optimistic: scope it as a template member function call anyway.
    T::adjust<100>(); // ill-formed: < means less than

    T::template adjust<100>(); // OK: < starts template argument list
    /* <- - variable.function                    */
    /*^ punctuation.accessor                     */
    /* ^ keyword.declaration.template - variable.other */
    /* ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call */
    /*          ^ variable.function              */
}

struct X
{
    void template(); // <-- not allowed to be a function!
    /*   ^ - entity.name.function */
};

void f()
{
    X x;
    x.template(); // <-- should not be scoped as variable.function!
    /* ^ - variable.function */

    x /**/ . /**/ foo <5> /**/ () /**/ ;
    /*^^^^ comment.block */
    /*     ^ punctuation.accessor */
    /*            ^^^ meta.method-call variable.function */
    /*               ^ meta.method-call - variable.function */
    /*                ^ meta.method-call punctuation.definition.generic.begin */
    /*                  ^ meta.method-call punctuation.definition.generic.end */
    /*                   ^ meta.method-call - punctuation - comment.block */
    /*                    ^^^^ meta.method-call comment.block */
    /*                        ^ meta.method-call - comment.block - punctuation */
    /*                         ^^ meta.method-call punctuation - comment.block */
    /*                           ^ - meta.method-call */
};

template<typename T> C<T> f(T t)
{
    return C<T> { g<X<T>>(t) };
    /*     ^ variable.function */
    /*          ^ punctuation.section.group.begin */
}

template<typename T> C<X<T>> f(T t)
{
    return C<X<T>> { g<X<T>>(t) };
    /*     ^ variable.function */
    /*             ^ punctuation.section.group.begin */
}

struct A { int foo; };
int main() {
    A a, b;
    a.foo = a.foo < 0 ? 1 : 2;
    /*            ^ - punctuation.definition.generic */
    a.operator<(b);
    /*^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^ variable.function.member */
    /*         ^^^ meta.group */
    a.operator>(b);
    /*^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^ variable.function.member */
    /*         ^^^ meta.group */
    a.operator<=(b);
    /*^^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^^ variable.function.member */
    /*          ^^^ meta.group */
    a.operator>=(b);
    /*^^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^^ variable.function.member */
    /*          ^^^ meta.group */
    a.operator==(b);
    /*^^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^^ variable.function.member */
    /*          ^^^ meta.group */
    a.operator!=(b);
    /*^^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^^ variable.function.member */
    /*          ^^^ meta.group */
    a.operator<=>(b);
    /*^^^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^^^ variable.function.member */
    /*           ^^^ meta.group */
    a.operator->();
    /*^^^^^^^^^^^^ meta.method-call */
    /*^^^^^^^^^^ variable.function.member */
    /*          ^^ meta.group */
}
/* <- - invalid.illegal */

template <typename T>
struct A<T, enable_if_t<std::is_arithmetic<T>::value && !is_std_char_type<T>::value>> {
    using x = conditional_t<sizeof(T) <= sizeof(long), long, long long>;
    /*                                ^^ keyword.operator.comparison */

    template<int>
    struct Y {
        constexpr int operator<=>(const Y&) { return 0; }
    };
    Y<Y<0>{} <=> Y<0>{}> y;
    /*       ^^^ keyword.operator.comparison */
};
/* <- - invalid.illegal */


/////////////////////////////////////////////
// Storage Modifiers
/////////////////////////////////////////////

alignas(16) char array[256];
/* <- storage.modifier */
/*     ^ punctuation.section.group.begin */
/*        ^ punctuation.section.group.end */

const int XYZ = 2;
/* <- storage.modifier */

constexpr int ABC = 3 + 5;
/* <- storage.modifier */

consteval int f() { return 42; }
/* <- storage.modifier */

constinit const int i = f();
/* <- storage.modifier */

thread_local int x;
/* <- storage.modifier */


/////////////////////////////////////////////
// Control Keywords
/////////////////////////////////////////////

static_assert(x >= 0);
/* <- keyword.operator */

noexcept(f());
/*       ^^^ meta.function-call */
/* <- keyword.operator */

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

try
/* <- keyword.control */
{
    throw std :: string("xyz");
    /* <- keyword.control.flow.throw */
    /*           ^^^^^^ variable.function */
    /*        ^^ punctuation.accessor */
}
catch (...)
/* <- keyword.control */
{
}

int* ptr = new int(2);
/*         ^ keyword.control */

delete ptr;
/* <- keyword.control */

return 123;
/* <- keyword.control.flow.return */


/////////////////////////////////////////////
// Operator Keywords
/////////////////////////////////////////////

int x = alignof(char);
/*      ^ keyword.operator.word */
/*             ^ punctuation.section.group.begin */
/*                  ^ punctuation.section.group.end */

int x = sizeof(char);
/*      ^ keyword.operator.word */
/*            ^ punctuation.section.group.begin */
/*                 ^ punctuation.section.group.end */


/////////////////////////////////////////////
// Cast Keywords
/////////////////////////////////////////////

const_cast<int>(2.0);
/* <- keyword.operator.word.cast */
/*        ^ punctuation.definition.generic.begin */
/*         ^ storage.type */
/*            ^ punctuation.definition.generic.end */

dynamic_cast<int>(2.0);
/* <- keyword.operator.word.cast */

reinterpret_cast<int>(2.0);
/* <- keyword.operator.word.cast */

static_cast<int>(2.0);
/* <- keyword.operator.word.cast */

auto var = *reinterpret_cast<std::vector<std::shared_ptr<AnyClass>>*>(v);
/*          ^ keyword.operator.word.cast */
/*                           ^ - variable.function */

/////////////////////////////////////////////
// Language Constants
/////////////////////////////////////////////

bool t = true;
/*       ^ constant.language */

bool f = false;
/*       ^ constant.language */

int* p = nullptr;
/*       ^ constant.language */

char ch[] = __func__;
/*          ^ constant.language */


/////////////////////////////////////////////
// Support Constants
/////////////////////////////////////////////

std::cout << __FILE__ << '\n';
/*           ^ support.constant */
/* ^^ punctuation.accessor */

std :: cout << __FUNCTION__ << '\n';
/*  ^^ punctuation.accessor */
/*             ^ support.constant */

std::cout << __LINE__ << '\n';
/*           ^ support.constant */


/////////////////////////////////////////////
// Numeric Constants
/////////////////////////////////////////////

dec1 = 1234567890;
/*     ^^^^^^^^^^ meta.number.integer.decimal constant.numeric.value */
/*               ^ punctuation.terminator - constant */

dec2 = 1'924'013;
/*     ^^^^^^^^^ meta.number.integer.decimal constant.numeric.value */
/*              ^ punctuation.terminator - constant */

dec3 = 124ul;
/*     ^^^^^ meta.number.integer.decimal.c++ */
/*     ^^^ constant.numeric.value.c++ */
/*        ^^ constant.numeric.suffix.c++ */
/*          ^ punctuation.terminator - constant */

dec4 = 9'204lu;
/*     ^^^^^^^ meta.number.integer.decimal.c++ */
/*     ^^^^^ constant.numeric.value.c++ */
/*          ^^ constant.numeric.suffix.c++ */
/*            ^ punctuation.terminator - constant */

dec5 = 2'354'202'076LL;
/*     ^^^^^^^^^^^^^^^ meta.number.integer.decimal.c++ */
/*     ^^^^^^^^^^^^^ constant.numeric.value.c++ */
/*                  ^^ constant.numeric.suffix.c++ */
/*                    ^ punctuation.terminator - constant */

oct1 = 0123_567;
/*     ^^^^^^^^ meta.number.integer.octal.c++ */
/*     ^ constant.numeric.base.c++ */
/*      ^^^ constant.numeric.value.c++ */
/*         ^^^^ constant.numeric.suffix.c++ */
/*             ^ punctuation.terminator - constant */

oct2 = 014'70;
/*     ^^^^^^ meta.number.integer.octal.c++ */
/*     ^ constant.numeric.base.c++ */
/*      ^^^^^ constant.numeric.value.c++ */
/*           ^ punctuation.terminator - constant */

hex1 = 0x1234567890ABCDEF;
/*     ^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c++ */
/*     ^^ constant.numeric.base.c++ */
/*       ^^^^^^^^^^^^^^^^ constant.numeric.value.c++ */
/*                       ^ punctuation.terminator - constant */

hex2 = 0X1234567890ABCDEF;
/*     ^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c++ */
/*     ^^ constant.numeric.base.c++ */
/*       ^^^^^^^^^^^^^^^^ constant.numeric.value.c++ */
/*                       ^ punctuation.terminator - constant */

hex3 = 0x1234567890abcdef;
/*     ^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c++ */
/*     ^^ constant.numeric.base.c++ */
/*       ^^^^^^^^^^^^^^^^ constant.numeric.value.c++ */
/*                       ^ punctuation.terminator - constant */

hex4 = 0xA7'45'8C'38;
/*     ^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c++ */
/*     ^^ constant.numeric.base.c++ */
/*       ^^^^^^^^^^^ constant.numeric.value.c++ */
/*                  ^ punctuation.terminator - constant */

hex5 = 0x0+0xFL+0xaull+0xallu+0xfu+0xf'12_4_uz;
/*     ^^^ meta.number.integer.hexadecimal.c++ */
/*     ^^ constant.numeric.base.c++ */
/*       ^ constant.numeric.value.c++ */
/*         ^^^^ meta.number.integer.hexadecimal.c++ */
/*         ^^ constant.numeric.base.c++ */
/*           ^ constant.numeric.value.c++ */
/*            ^ constant.numeric.suffix.c++ */
/*              ^^^^^^ meta.number.integer.hexadecimal.c++ */
/*              ^^ constant.numeric.base.c++ */
/*                ^ constant.numeric.value.c++ */
/*                 ^^^ constant.numeric.suffix.c++ */
/*                     ^^^^^^ meta.number.integer.hexadecimal.c++ */
/*                     ^^ constant.numeric.base.c++ */
/*                       ^ constant.numeric.value.c++ */
/*                        ^^^ constant.numeric.suffix.c++ */
/*                            ^^^^ meta.number.integer.hexadecimal.c++ */
/*                            ^^ constant.numeric.base.c++ */
/*                              ^ constant.numeric.value.c++ */
/*                               ^ constant.numeric.suffix.c++ */
/*                                 ^^^^^^^^^^ meta.number.integer.hexadecimal.c++ */
/*                                 ^^ constant.numeric.base.c++ */
/*                                   ^^^^ constant.numeric.value.c++ */
/*                                       ^^^^^ constant.numeric.suffix.c++ */
/*                                            ^ punctuation.terminator - constant */

hex2 = 0xc1.01AbFp-1+0x1.45c778p+7f;
/*     ^^^^^^^^^^^^^ meta.number.float.hexadecimal.c++ */
/*     ^^ constant.numeric.base.c++ */
/*       ^^^^^^^^^^^ constant.numeric.value.c++ */
/*         ^ punctuation.separator.decimal.c++ */
/*                  ^ keyword.operator.arithmetic - constant.c++ */
/*                   ^^^^^^^^^^^^^^ meta.number.float.hexadecimal.c++ */
/*                   ^^ constant.numeric.base.c++ */
/*                     ^^^^^^^^^^^ constant.numeric.value.c++ */
/*                      ^ punctuation.separator.decimal.c++ */
/*                                ^ constant.numeric.suffix.c++ */
/*                                 ^ punctuation.terminator - constant */

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
/*  ^^^ meta.number.float.decimal.c++ */
/*  ^^^ constant.numeric.value.c++ */
/*   ^ punctuation.separator.decimal.c++ */
/*     ^ keyword.operator.arithmetic.c */
/*      ^^^^^ meta.number.float.decimal.c++ */
/*      ^^^^^ constant.numeric.value.c++ */
/*       ^ punctuation.separator.decimal.c++ */
/*           ^ keyword.operator.arithmetic.c */
/*            ^^^^^^ meta.number.float.decimal.c++ */
/*            ^^^^^^ constant.numeric.value.c++ */
/*             ^ punctuation.separator.decimal.c++ */
/*                  ^ keyword.operator.arithmetic.c */
/*                   ^^^^ meta.number.float.decimal.c++ */
/*                   ^^^ constant.numeric.value.c++ */
/*                    ^ punctuation.separator.decimal.c++ */
/*                      ^ constant.numeric.suffix.c++ */
/*                       ^ keyword.operator.arithmetic.c */
/*                        ^^^^^^ meta.number.float.decimal.c++ */
/*                        ^^^^^ constant.numeric.value.c++ */
/*                         ^ punctuation.separator.decimal.c++ */
/*                             ^ constant.numeric.suffix.c++ */
/*                              ^ keyword.operator.arithmetic.c */
/*                               ^^^^^^^ meta.number.float.decimal.c++ */
/*                               ^^^^^^ constant.numeric.value.c++ */
/*                                ^ punctuation.separator.decimal.c++ */
/*                                     ^ constant.numeric.suffix.c++ */
/*                                      ^ keyword.operator.arithmetic.c */
/*                                       ^^^^ meta.number.float.decimal.c++ */
/*                                       ^^^ constant.numeric.value.c++ */
/*                                        ^ punctuation.separator.decimal.c++ */
/*                                          ^ constant.numeric.suffix.c++ */
/*                                           ^ keyword.operator.arithmetic.c */
/*                                            ^^^^^^ meta.number.float.decimal.c++ */
/*                                            ^^^^^ constant.numeric.value.c++ */
/*                                             ^ punctuation.separator.decimal.c++ */
/*                                                 ^ constant.numeric.suffix.c++ */
/*                                                  ^ keyword.operator.arithmetic.c */
/*                                                   ^^^^^^^ meta.number.float.decimal.c++ */
/*                                                   ^^^^^^ constant.numeric.value.c++ */
/*                                                    ^ punctuation.separator.decimal.c++ */
/*                                                         ^ constant.numeric.suffix.c++ */
/*                                                          ^ punctuation.terminator - constant */

f = 1.e1+1.e-1+1.e1f+1.e-1f+1.e1L+1.e-1L;
/*  ^^^^ meta.number.float.decimal.c++ */
/*  ^^^^ constant.numeric.value.c++ */
/*   ^ punctuation.separator.decimal.c++ */
/*      ^ keyword.operator.arithmetic.c */
/*       ^^^^^ meta.number.float.decimal.c++ */
/*       ^^^^^ constant.numeric.value.c++ */
/*        ^ punctuation.separator.decimal.c++ */
/*            ^ keyword.operator.arithmetic.c */
/*             ^^^^^ meta.number.float.decimal.c++ */
/*             ^^^^ constant.numeric.value.c++ */
/*              ^ punctuation.separator.decimal.c++ */
/*                 ^ constant.numeric.suffix.c++ */
/*                  ^ keyword.operator.arithmetic.c */
/*                   ^^^^^^ meta.number.float.decimal.c++ */
/*                   ^^^^^ constant.numeric.value.c++ */
/*                    ^ punctuation.separator.decimal.c++ */
/*                        ^ constant.numeric.suffix.c++ */
/*                         ^ keyword.operator.arithmetic.c */
/*                          ^^^^^ meta.number.float.decimal.c++ */
/*                          ^^^^ constant.numeric.value.c++ */
/*                           ^ punctuation.separator.decimal.c++ */
/*                              ^ constant.numeric.suffix.c++ */
/*                               ^ keyword.operator.arithmetic.c */
/*                                ^^^^^^ meta.number.float.decimal.c++ */
/*                                ^^^^^ constant.numeric.value.c++ */
/*                                 ^ punctuation.separator.decimal.c++ */
/*                                     ^ constant.numeric.suffix.c++ */
/*                                      ^ punctuation.terminator - constant */

f = 1.+1.f+1.L+1..;
/*  ^^ meta.number.float.decimal.c++ */
/*  ^^ constant.numeric.value.c++ */
/*   ^ punctuation.separator.decimal.c++ */
/*    ^ keyword.operator.arithmetic.c */
/*     ^^^ meta.number.float.decimal.c++ */
/*     ^^ constant.numeric.value.c++ */
/*      ^ punctuation.separator.decimal.c++ */
/*       ^ constant.numeric.suffix.c++ */
/*        ^ keyword.operator.arithmetic.c */
/*         ^^^ meta.number.float.decimal.c++ */
/*         ^^ constant.numeric.value.c++ */
/*          ^ punctuation.separator.decimal.c++ */
/*           ^ constant.numeric.suffix.c++ */
/*            ^ keyword.operator.arithmetic.c */
/*             ^ meta.number.integer.decimal.c++ */
/*             ^ constant.numeric.value.c++ */
/*              ^^ invalid.illegal.syntax.c */
/*                ^ punctuation.terminator - constant */

f = 1e1+1e1f+1e1L;
/*  ^^^ meta.number.float.decimal.c++ */
/*  ^^^ constant.numeric.value.c++ */
/*     ^ keyword.operator.arithmetic.c */
/*      ^^^^ meta.number.float.decimal.c++ */
/*      ^^^ constant.numeric.value.c++ */
/*         ^ constant.numeric.suffix.c++ */
/*          ^ keyword.operator.arithmetic.c */
/*           ^^^^ meta.number.float.decimal.c++ */
/*           ^^^ constant.numeric.value.c++ */
/*              ^ constant.numeric.suffix.c++ */
/*               ^ punctuation.terminator - constant */

f = .1+.1e1+.1e-1+.1f+.1e1f+.1e-1f+.1L+.1e1L+.1e-1L;
/*  ^^ meta.number.float.decimal.c++ */
/*  ^^ constant.numeric.value.c++ */
/*  ^ punctuation.separator.decimal.c++ */
/*    ^ keyword.operator.arithmetic.c */
/*     ^^^^ meta.number.float.decimal.c++ */
/*     ^ punctuation.separator.decimal.c++ */
/*     ^^^^ constant.numeric.value.c++ */
/*         ^ keyword.operator.arithmetic.c */
/*          ^^^^^ meta.number.float.decimal.c++ */
/*          ^ punctuation.separator.decimal.c++ */
/*          ^^^^^ constant.numeric.value.c++ */
/*               ^ keyword.operator.arithmetic.c */
/*                ^^^ meta.number.float.decimal.c++ */
/*                ^ punctuation.separator.decimal.c++ */
/*                ^^ constant.numeric.value.c++ */
/*                  ^ constant.numeric.suffix.c++ */
/*                   ^ keyword.operator.arithmetic.c */
/*                    ^^^^^ meta.number.float.decimal.c++ */
/*                    ^ punctuation.separator.decimal.c++ */
/*                    ^^^^ constant.numeric.value.c++ */
/*                        ^ constant.numeric.suffix.c++ */
/*                         ^ keyword.operator.arithmetic.c */
/*                          ^^^^^^ meta.number.float.decimal.c++ */
/*                          ^ punctuation.separator.decimal.c++ */
/*                          ^^^^^ constant.numeric.value.c++ */
/*                               ^ constant.numeric.suffix.c++ */
/*                                 ^^^ meta.number.float.decimal.c++ */
/*                                 ^ punctuation.separator.decimal.c++ */
/*                                 ^^ constant.numeric.value.c++ */
/*                                   ^ constant.numeric.suffix.c++ */
/*                                    ^ keyword.operator.arithmetic.c */
/*                                     ^^^^^ meta.number.float.decimal.c++ */
/*                                     ^ punctuation.separator.decimal.c++ */
/*                                     ^^^^ constant.numeric.value.c++ */
/*                                         ^ constant.numeric.suffix.c++ */
/*                                          ^ keyword.operator.arithmetic.c */
/*                                           ^^^^^^ meta.number.float.decimal.c++ */
/*                                           ^ punctuation.separator.decimal.c++ */
/*                                           ^^^^^ constant.numeric.value.c++ */
/*                                                ^ constant.numeric.suffix.c++ */
/*                                                 ^ punctuation.terminator - constant */

f = 1'843'290.245'123;
/*  ^^^^^^^^^^^^^^^^^ meta.number.float.decimal */
/*           ^ punctuation.separator.decimal */
/*                   ^ punctuation.terminator - constant */

f = 2'837e1'000;
/*  ^^^^^^^^^^^ meta.number.float.decimal */
/*             ^ punctuation.terminator - constant */

f = 23e-1'000;
/*  ^^^^^^^^^ meta.number.float.decimal */
/*           ^ punctuation.terminator - constant */

units0 = 1.0suff+1.suff*.0suff/{1suff}
/*       ^^^^^^^ meta.number.float.decimal */
/*          ^^^^ constant.numeric.suffix */
/*              ^ keyword.operator.arithmetic */
/*               ^^^^^^ meta.number.float.decimal */
/*                 ^^^^ constant.numeric.suffix */
/*                     ^ keyword.operator */
/*                      ^^^^^^ meta.number.float.decimal */
/*                        ^^^^ constant.numeric.suffix */
/*                            ^ keyword.operator.arithmetic */
/*                             ^ punctuation.section.block.begin */
/*                              ^^^^^ meta.number.integer.decimal */
/*                              ^ constant.numeric.value */
/*                               ^^^^ constant.numeric.suffix */
/*                                   ^ punctuation.section.block.end */

units1 = 134h + 123.45h;
/*       ^^^^ meta.number.integer.decimal */
/*          ^ constant.numeric.suffix */
/*           ^^^ - constant */
/*              ^^^^^^^ meta.number.float.decimal */
/*                 ^ punctuation.separator.decimal */
/*                    ^ constant.numeric.suffix */
/*                     ^ punctuation.terminator - constant */

units2 = 147min + 147.min;
/*       ^^^^^^ meta.number.integer.decimal */
/*          ^^^ constant.numeric.suffix */
/*             ^^^ - constant */
/*                ^^^^^^^ meta.number.float.decimal */
/*                   ^ punctuation.separator.decimal */
/*                    ^^^ constant.numeric.suffix */
/*                       ^ punctuation.terminator - constant */

units3 = 357s + 34.7s;
/*       ^^^^ meta.number.integer.decimal */
/*          ^ constant.numeric.suffix */
/*           ^^^ - constant */
/*              ^^^^^ meta.number.float.decimal */
/*                ^ punctuation.separator.decimal */
/*                  ^ constant.numeric.suffix */
/*                   ^ punctuation.terminator - constant */

units4 = 234_custom + 10e-1_custom;
/*       ^^^^^^^^^^ meta.number.integer.decimal */
/*       ^^^ constant.numeric.value */
/*          ^^^^^^^ constant.numeric.suffix */
/*                 ^^^ - constant */
/*                    ^^^^^^^^^^^^ meta.number.float.decimal */
/*                         ^^^^^^^ constant.numeric.suffix */
/*                                ^ punctuation.terminator - constant */

/////////////////////////////////////////////
// Functions
/////////////////////////////////////////////

// function prototype
void abcdWXYZ1234();
/*   ^^^^^^^^^^^^^^ meta.function */
/*   ^ entity.name.function */
/*               ^^ meta.function.parameters meta.group */
/*               ^ punctuation.section.group.begin */
/*                ^ punctuation.section.group.end */

// function definition
void abcdWXYZ1234()
/*   ^^^^^^^^^^^^^^ meta.function */
/*   ^ entity.name.function */
/*               ^^ meta.function.parameters meta.group */
/*               ^ punctuation.section.group.begin */
/*                ^ punctuation.section.group.end */
{
/* <- meta.function meta.block punctuation.section.block.begin */
}
/* <- meta.function meta.block punctuation.section.block.end */

struct foo **alloc_foo();
/*           ^^^^^^^^^^^ meta.function */
/*                    ^^ meta.function.parameters meta.group */
/*                    ^ punctuation.section.group.begin */
/*                     ^ punctuation.section.group.end */
/* ^ keyword.declaration */
/*     ^ - entity.name.struct */
/*         ^^ keyword.operator */
/*           ^ entity.name.function */

long func
/*   ^^^^ meta.function entity.name.function */
(int x, void *MYMACRO(y) ) {
/*^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.group */
/* <- meta.function.parameters meta.group punctuation.section.group.begin */
/*   ^ variable.parameter */
/*            ^ -entity.name.function */
/*            ^^^^^^^^^^ meta.function-call */
/*                   ^^^ meta.group meta.function-call meta.group */
/*                   ^ punctuation.section.group.begin */
/*                     ^ punctuation.section.group.end */
/*                       ^ punctuation.section.group.end */
    // Ensure < and > aren't parsed as a generic
    if (foo < bar && baz > bar ) {
/*          ^ keyword.operator.comparison */
/*                       ^ keyword.operator.comparison */

    label:
/*  ^ entity.name.label */
/*       ^ punctuation.separator */
        do {
            break;
        } while(true);

    }
    if (version.major == 10 && version.minor < 11)
/*                                           ^ keyword.operator.comparison */
    {

    }
}
/* <- meta.function meta.block punctuation.section.block.end */

MACRO1
RETURN_TYPE
/* <- - entity.name.function */
func_name() {
/* < entity.name.function */
}

MACRO1 void * MACRO2 myfuncname () {
/*     ^ storage.type */
/*          ^ keyword.operator */
/*                   ^ entity.name.function */

    struct Args {
/*  ^^^^^^ keyword.declaration.struct.type */
/*         ^ entity.name.struct */
        void* hello;
        void* foobar;
        Args()
/*      ^ entity.name.function.constructor */
        : hellp(nullptr),
/*      ^ punctuation.separator.initializer-list */
          foobar(nullptr)
        {
        }
    };

    struct Args args2;
/*  ^^^^^^ keyword.declaration */
/*         ^ - entity */

    class LocalFoo MYMACRO
/*  ^^^^^ keyword.declaration.class */
/*        ^ entity.name.class */
/*                 ^ - entity */
    {
        LocalFoo() {}
/*      ^ entity.name.function.constructor */
    }

    class LocalFoo test;
/*  ^^^^^ keyword.declaration.class */
/*        ^ - entity */

}

static const uint32_t * const MACRO funcname();
/* ^ storage.modifier */
/*     ^ storage.modifier */
/*           ^ support.type */
/*                    ^ keyword.operator */
/*                      ^ storage.modifier */
/*                                  ^ entity.name.function */

void FooBar :: baz(int a)
/*   ^^^^^^^^^^^^^^^^^^^^ meta.function */
/*   ^^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*             ^^^ entity.name.function */
/*          ^^ punctuation.accessor */
/*                ^^^^^^^ meta.function.parameters meta.group */
/*                ^ punctuation.section.group.begin */
/*                     ^ variable.parameter */
/*                      ^ punctuation.section.group.end */
{
}
/* A comment. */ void FooBar :: baz(int a)
/*                    ^^^^^^^^^^^^^^^^^^^^ meta.function */
/*                    ^^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*                              ^^^ entity.name.function */
/*                           ^^ punctuation.accessor */
/*                                 ^^^^^^^ meta.function.parameters meta.group */
/*                                 ^ punctuation.section.group.begin */
/*                                      ^ variable.parameter */
/*                                       ^ punctuation.section.group.end */
{
}
// prevent leading comment from function recognition
/**/ HRESULT A::b()
/*           ^ meta.function */
/*              ^ entity.name.function */
{
    return S_OK;
}
FooBar::FooBar(int a)
/*^^^^^^^^^^^^^^^^^^^ meta.function */
/*^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*      ^^^^^^ entity.name.function */
/*            ^^^^^^^ meta.function.parameters meta.group */
/*            ^ punctuation.section.group.begin */
/*             ^^^ storage.type */
/*                  ^ punctuation.section.group.end */
{
}

FooBar :: FooBar(int a) & =
/*^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*^^^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*        ^^^^^^ entity.name.function */
/*              ^^^^^^^ meta.function.parameters meta.group */
/*              ^ punctuation.section.group.begin */
/*               ^^^ storage.type */
/*                   ^ variable.parameter */
/*                    ^ punctuation.section.group.end */
/*                      ^ keyword.operator */
/*                        ^ keyword.operator.assignment */
default;
/*^^^^^ meta.function storage.modifier */

FooBar::~FooBar
/*^^^^^^^^^^^^^ meta.function meta.toc-list.full-identifier */
/*      ^^^^^^^ entity.name.function */
() { }
/* <- meta.function.parameters meta.group punctuation.section.group.begin */
 /* <- meta.function.parameters meta.group punctuation.section.group.end */
/*^^^^ meta.function */

ThisIsAReallyReallyLongClassNameThatRequiresWrappingCodeInTheMiddleOfAPath::
    ThisIsAReallyReallyLongClassNameThatRequiresWrappingCodeInTheMiddleOfAPath()
/* <- meta.function meta.toc-list.full-identifier */
    : var_name(nullptr) {
}

bool FooBar::operator==() {}
/*   ^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*   ^^^^^^^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*           ^^^^^^^^^^ entity.name.function */
/*                     ^^ meta.function.parameters meta.group */
/*                     ^ punctuation.section.group.begin */
/*                      ^ punctuation.section.group.end */
/*                        ^^ meta.block */
/*                        ^ punctuation.section.block.begin */
/*                         ^ punctuation.section.block.end */


myns::FooBar::~FooBar() { }
/*^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*^^^^^^^^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*                   ^^ meta.function.parameters meta.group */
/*                   ^ punctuation.section.group.begin */
/*                    ^ punctuation.section.group.end */
/*                      ^^^ meta.block */
/*                      ^ punctuation.section.block.begin */
/*                        ^ punctuation.section.block.end */
/*^^^^^^^^^^^^^^^^^^^ meta.toc-list.full-identifier */
/*            ^^^^^^^ entity.name.function */

    extern "C" void test_in_extern_c_block()
/*                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*                                        ^^ meta.function.parameters meta.group */
/*                                        ^ punctuation.section.group.begin */
/*                                         ^ punctuation.section.group.end */
/*                  ^ entity.name.function */
{
/* <- meta.function meta.block punctuation.section.block.begin */
}
/* <- meta.function meta.block punctuation.section.block.end */

#ifdef __cplusplus
extern "C" {
#endif

#if 0
void test_in_extern_c_block()
/*   ^ comment.block */
{
}
#else

/* temporary C++ preprocessor block */
#ifdef __cplusplus
/*                <- meta.preprocessor */
/*   <- keyword.control.import */
# ifndef _Bool
/*            <- meta.preprocessor */
/*      <- keyword.control.import */
   typedef bool _Bool;   /* semi-hackish: C++ has no _Bool; bool is builtin */
/* ^ keyword.declaration */
/*              ^ entity.name.type.typedef */
# endif
/*     <- meta.preprocessor */
/*     <- keyword.control.import */
#endif
/*    <- meta.preprocessor */
/*    <- keyword.control.import */

void test_in_extern_c_block()
/*   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*                         ^^ meta.function.parameters meta.group */
/*                         ^ punctuation.section.group.begin */
/*                          ^ punctuation.section.group.end */
/*   ^ entity.name.function */
{
/* <- meta.function meta.block punctuation.section.block.begin */
}
/* <- meta.function meta.block punctuation.section.block.end */
#endif

#ifdef __cplusplus
}
#endif
/* ^ - meta.extern-c */

gener<int> func_returning_generic(int a);
/*         ^ entity.name.function */

std::vector<std::uint8_t> func_returning_path_generic(int a);
/*         ^ punctuation.definition.generic */
/*                        ^ entity.name.function */

void f()
{
    static_assert(false, "oops");
    /* ^ keyword.operator.word */
}

long double operator "" _km (long double x);
/*          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*                          ^^^^^^^^^^^^^^^ meta.function.parameters */
/*          ^^^^^^^^^^^^^^^ entity.name.function */

/////////////////////////////////////////////
// Namespace
/////////////////////////////////////////////

namespace myNameSpace {}
/* <- keyword.control */
/*        ^ entity.name.namespace */

namespace new_name = current_name;
/* <- keyword.control */

using namespace NAME __attribute__((visibility ("hidden")));
/* <- keyword.control */
/*    ^ keyword.control */
/*                   ^ storage.modifier */
/*                                               ^ string */

void func() {
    using namespace NAME __attribute__((visibility ("hidden")));
/*  ^ keyword.control */
/*        ^ keyword.control */
/*                       ^ storage.modifier */
/*                                                   ^ string */
}

using namespace
/* <- keyword.control */
/*    ^ keyword.control */

using namespace myNameSpace;
/* <- keyword.control */
/*    ^ keyword.control */

namespace ns :: abc /* Neither this comment... */
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace */
/*        ^^^^^^^^^ entity.name.namespace */
/*           ^^ punctuation.accessor */
/*                  ^ comment.block */
// ...nor this comment is highlighted
/* <- comment.line */
{
/* <- meta.namespace meta.block punctuation.section.block.begin */
    void nsfunc() {
        /* ^ entity.name.function */
    }
}
/* <- meta.namespace meta.block punctuation.section.block.end */

namespace tl {
/*^^^^^^^^^^^^ meta.namespace */
/* ^ keyword.control */
    namespace {
/*  ^ keyword.control */
/*  ^^^^^^^^^^^ meta.namespace meta.namespace */
/*            ^ meta.block meta.block punctuation.section.block.begin */
        void nested_func(){}
/*           ^ entity.name.function */
    }
}

MACRONAME namespace ns3 {}
/*        ^ keyword.control */

extern "C++"
// ^ storage.modifier
//     ^^^^^ string.quoted.double
{
namespace std _GLIBCXX_VISIBILITY(default)
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace
// ^ keyword.control
//        ^ entity.name.namespace
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                               ^^^^^^^^^ meta.group
//                                ^ keyword.control
{}
}

#define MY_NAMESPACE_BEGIN namespace greatapp {
#define MY_NAMESPACE_END }
MY_NAMESPACE_BEGIN
class X {
private:
/* <- storage.modifier */
    int a;
protected:
/* <- storage.modifier */
    int b;
public:
/* <- storage.modifier */
    int c;
};
MY_NAMESPACE_END

MY_NAMESPACE_BEGIN int foo(); MY_NAMESPACE_END
/*                 ^ storage.type */
/*                     ^ meta.function entity.name.function */
/*                        ^^^ punctuation */

// Uncomment this some day
// MY_NAMESPACE_BEGIN class X : public std::true_type {}; MY_NAMESPACE_END

/////////////////////////////////////////////
// Classes, structs, unions and enums
/////////////////////////////////////////////

class BaseClass;
/*^^^^^^^^^^^^^ meta.class */
/*    ^ - meta.class meta.class */
/*    ^^^^^^^^^ entity.name.class.forward-decl */

class BaseClass // comment
/* <- keyword.declaration */
/*    ^ entity.name.class */
{
public :
/* <- storage.modifier */
    tupleTmpl<int,2> max(tupleGen<int,2> a, tupleGen<int,2> b);
/*                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method */
/*                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters meta.group */
/*                      ^ punctuation.section.group.begin */
/*                                       ^ variable.parameter */
/*                                        ^ punctuation.separator */
/*                                                          ^ variable.parameter */
/*                                                           ^ punctuation.section.group.end */
/*           ^ punctuation.definition.generic.begin */
/*            ^ storage.type */
/*                 ^ punctuation.definition.generic.end */
/*                               ^ punctuation.definition.generic.begin */
/*                                ^ storage.type */
/*                                     ^ punctuation.definition.generic.end */
protected:
/* <- storage.modifier */
private:
/* <- storage.modifier */

    static int a = 1 << 4;
    /* <- storage.modifier */
    /*               ^^ keyword.operator.arithmetic */

    static int x;
    /* <- storage.modifier */

    virtual void doSomething() const = 0;
    /*           ^^^^^^^^^^^^^^^^^^^^^^^ meta.method */
    /*           ^ - meta.method meta.method */
    /*                      ^^ meta.method.parameters meta.group */
    /*                      ^ punctuation.section.group.begin */
    /*                       ^ punctuation.section.group.end */
    /* <- storage.modifier */
    /*           ^ entity.name.function */
    /*                         ^ storage.modifier */
    /*                                 ^ meta.number */

    template<typename A>
    void func(){}
/*       ^^^^^^^^ meta.method */
/*           ^^ meta.method.parameters meta.group */
/*           ^ punctuation.section.group.begin */
/*            ^ punctuation.section.group.end */
/*             ^^ meta.block */
/*             ^ punctuation.section.block.begin */
/*              ^ punctuation.section.block.end */
/*       ^^^^ entity.name.function */

    template<typename A>
    void func<A>(){}
/*       ^^^^^^^^^^^ meta.method */
/*       ^^^^ entity.name.function */
/*           ^ punctuation.definition.generic.begin */
/*             ^ punctuation.definition.generic.end */
/*              ^^ meta.method.parameters meta.group */
/*              ^ punctuation.section.group.begin */
/*               ^ punctuation.section.group.end */
/*                ^^ meta.block */
/*                ^ punctuation.section.block.begin */
/*                 ^ punctuation.section.block.end */

    template<typename A>
    BaseClass(){}
/*  ^^^^^^^^^^^^^ meta.method */
/*  ^^^^^^^^^ meta.method.constructor */
/*  ^^^^^^^^^ entity.name.function */

    ~BaseClass() {}
/*  ^^^^^^^^^^^^^^^ meta.method */
/*  ^^^^^^^^^^ meta.method.destructor */
/*  ^^^^^^^^^^ entity.name.function */

    BaseClass operator [] ()
/*            ^^^^^^^^^^^^^^ meta.method */
/*                        ^^ meta.method.parameters */
/*            ^^^^^^^^^^^ entity.name.function */
    {}

    BaseClass operator=
/*            ^^^^^^^^^ meta.method */
/*            ^^^^^^^^^ entity.name.function */
    () {}
/*  ^^^^^ meta.method */
/*  ^^ meta.method.parameters */
/*     ^^ meta.block */
};

class DerivedClass : public ::BaseClass // Comment
/*                          ^ entity.other.inherited-class */
/*                                      ^ comment.line */
{
    ~DerivedClass() override;
    /* <- meta.method.destructor */
    /*^^^^^^^^^^^^^^^^^^^^^^ meta.method */
    /*^^^^^^^^^^^ meta.method.destructor */
    /*              ^ storage.modifier */
    virtual void doSomething() const override final;
    /*                         ^ storage.modifier */
    /*                               ^ storage.modifier */
    /*                                        ^ storage.modifier */
 protected:
/*^^^^^^^^ storage.modifier */
  DerivedClass() override
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.method */
/*^^^^^^^^^^^^ meta.method.constructor */
/*                ^ storage.modifier */
      : a(a),
/*    ^^^^^^^ meta.method.constructor.initializer-list */
        base_id_(BaseClass::None().ToInt()),
/*      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.constructor.initializer-list */
/*      ^ variable.other.readwrite.member */
/*                        ^ punctuation.accessor */
/*               ^^^^^^^^^^^^^^^^^ meta.function-call */
/*                          ^^^^ variable.function */
/*                                ^ punctuation - meta.method-call */
/*                                 ^^^^^^^ meta.method-call */
/*                                 ^^^^^ variable.function */
/*                                         ^ punctuation.separator */
        bounds_(NULL),
/*      ^^^^^^^^^^^^^^ meta.method.constructor.initializer-list */
        bit_field_(0) {
/*      ^^^^^^^^^^^^^^^ meta.method */
/*      ^^^^^^^^^^^^^ meta.method.constructor.initializer-list */
            char * a = "sprintf";
            char * b = sprintf("Testing %s", a);
/*                     ^^^^^^^^^ meta.function-call */
/*                     ^^^^^^^ support.function.C99 */

            base_id_->foobar(1, "foo");
/*                  ^^ punctuation.accessor - meta.method-call */
/*                    ^^^^^^^^^^^^^^^^ meta.method-call        */
/*                    ^^^^^^ variable.function                 */

            base_id_->~BaseClass();
/*                  ^^ punctuation.accessor - meta.method-call */
/*                    ^^^^^^^^^^^^ meta.method-call            */
/*                    ^^^^^^^^^^ variable.function             */
        }
/*      ^ meta.method meta.block punctuation.section.block.end */

/* <- - meta.class.constructor.initializer-list */

    typedef std::vector<int> qux;
/*                           ^^^ entity.name.type.typedef */
};


template<typename A>
class class1<A> : class2<A>
/*    ^^^^^^ entity.name.class */
/*          ^ punctuation.definition.generic */
/*            ^ punctuation.definition.generic */
/*                ^^^^^^ entity.other.inherited-class */
/*                      ^ punctuation.definition.generic */
/*                        ^ punctuation.definition.generic */
{}

class FooBar {
/*           ^ meta.class meta.block punctuation.section.block.begin */
    explicit FooBar(int a);
/*           ^^^^^^^^^^^^^ meta.method */
/*  ^^^^^^^^ storage.modifier */
/*           ^^^^^^ entity.name.function */
    FooBar() =default;
/*  ^^^^^^ entity.name.function */
/*           ^ keyword.operator.assignment */
/*            ^^^^^^^ storage.modifier */
    FooBar(void) =default;
/*  ^^^^^^ entity.name.function */
/*         ^^^^ storage.type */
/*               ^ keyword.operator.assignment */
/*                ^^^^^^^ storage.modifier */

    // If a constructor name is on a line without the opening (, it is not
    // highlighted as a method/constructor. This prevents a bunch of false
    // positives, including data types as they are being typed into a struct.
    FooBar
/*  ^ - entity.name.function */
    ();

    virtual ~FooBar();
/*          ^^^^^^^ entity.name.function */

#ifndef DEBUG
    ~FooBar();
/*  ^^^^^^^ entity.name.function */
#endif

    void insert () {}
/*       ^^^^^^ entity.name.function */

    explicit operator bool
/*                    ^^^^ entity.name.function */
    () {}

    FooBar::~FooBar();
/*  ^^^^^^^^^^^^^^^ entity.name.function */

    void FooBar::
    Baz() {
    /* <- entity.name.function */
    }

    auto f(int a) -> decltype(a.begin()) override final;
/*                ^^ punctuation.separator */
/*                             ^ punctuation.accessor */
/*                              ^^^^^ variable.function */
/*                                       ^ storage.modifier */
/*                                                ^ storage.modifier */

    auto g() -> std::vector<int> override final {
/*           ^^ punctuation.separator */
/*                 ^^ punctuation.accessor */
/*                          ^ storage.type */
/*                               ^ storage.modifier */
/*                                        ^ storage.modifier */
        this->g(1);
/*      ^ variable.language */
    }

private:
/*^^^^^ storage.modifier */

    VISIBILITY_MACRO
/*  ^ - entity.name.function */
    myns::subns::MyDataType
/*  ^ - entity.name.function */
    and_now_method_name();
/*  ^ entity.name.function */

    VISIBILITY_MACRO
/*  ^ - entity.name.function */
    std::shared_future<std::vector<myns::mysubns::MyDataType>>
/*  ^ - entity.name.function */
/*     ^^ punctuation.accessor */
/*                    ^ punctuation.definition.generic.begin */
/*                        ^^ punctuation.accessor */
/*                                ^ punctuation.definition.generic.begin */
/*                                     ^^ punctuation.accessor */
    and_now_method_name2();
/*  ^ entity.name.function */

    enum {
        FOO,
    /*  ^^^ entity.name.constant.c++ */
    /*     ^ punctuation.separator.c++ */
        BAR
    /*  ^^^ entity.name.constant.c++ */
    };

    enum
/*  ^^^^ meta.enum keyword.declaration */
    {
/*  ^ meta.enum punctuation.section.block.begin */
        A = 1,
/*      ^ entity.name.constant.c++ */
/*           ^ punctuation.separator.c++ */
        B = 20 / 5,
/*      ^ entity.name.constant.c++ */
/*                ^ punctuation.separator.c++ */
        C = FOO
/*      ^ entity.name.constant.c++ */
/*        ^ keyword.operator.assignment.c */
/*          ^^^^ - entity.name */
    }
/*  ^ meta.enum punctuation.section.block.end */
/*   ^ - meta.enum */

    friend int func(int a, int b);
/*  ^ storage.modifier */
/*         ^ storage.type */
/*             ^ - entity.name.function */
/*             ^ - meta.function-call */

    friend int func(int a, int b) {
/*  ^ storage.modifier */
/*         ^ storage.type */
/*             ^ entity.name.function */
/*             ^ - meta.function-call */
/*                                ^ meta.class meta.block meta.method meta.block punctuation.section.block.begin */
        int a = 1;
    }
/*  ^ meta.class meta.block meta.block punctuation.section.block.end */
/*   ^ - meta.class meta.block meta.block */

    friend class ::FooBar;
/*  ^ storage.modifier */
/*         ^ keyword.declaration
/*               ^^ punctuation.accessor */
/*                 ^ - entity */

    friend bool operator != (const X& lhs, const X& rhs) {
    /*          ^^^^^^^^^^^ entity.name.function */
        int a = 1;
    }
/*  ^ meta.class meta.block meta.block punctuation.section.block.end */
/*   ^ - meta.class meta.block meta.block */

    #if 0
    /*  ^ meta.number */
    int disabled_func() {
    /*  ^ comment.block */
    }
    #endif

    #if 1
    /*  ^ meta.number */
    int enabled_func() {}
    /*  ^ entity.name.function */
    #else
    int disabled_func() {
    /*  ^ comment.block */
    }
    #endif

    MACRO_NOT_CONSTRUCTOR(FooBar);
/*  ^ meta.function-call variable.function - entity.name.function */

    MACRO_NOT_CONSTRUCTOR2(FooBar,
/*  ^ meta.function-call variable.function - entity.name.function */
        FriendClass);
}
/* <- meta.class meta.block punctuation.section.block.end */
 /* <- - meta.class meta.block */

struct X {
    Y f() override noexcept final;
    /*^ entity.name.function */
    /*    ^ storage.modifier */
    /*             ^ storage.modifier */
    /*                      ^ storage.modifier */
    ::Y g() override noexcept final;
    /* <- punctuation.accessor */
    /*  ^ entity.name.function */
    /*      ^ storage.modifier */
    /*               ^ storage.modifier */
    /*                        ^ storage.modifier */
};

class X {
  public:
    ::Y g() override noexcept final;
    /* <- punctuation.accessor */
    /*  ^ entity.name.function */
    /*      ^ storage.modifier */
    /*               ^ storage.modifier */
    /*                        ^ storage.modifier */
};

union Y {
    ::Y g() override noexcept final;
    /* <- punctuation.accessor */
    /*  ^ entity.name.function */
    /*      ^ storage.modifier */
    /*               ^ storage.modifier */
    /*                        ^ storage.modifier */
};

class Child : public Parent {
    ::anotherClass Func() override;
    /* <- punctuation.accessor */
    /*             ^ entity.name.function */
    /*                    ^ storage.modifier */
}

class Adapter2 : public Abstraction, private Scenario {
/*                                 ^ punctuation.separator */
}

class Adapter : public Abstraction
    #if defined ASPECTO_MACRO
/*  ^^^ keyword.control.import  */
    , public Scenario
/*  ^ punctuation.separator */
/*    ^ storage.modifier */
/*           ^ entity.other.inherited-class */
    #endif
/*  ^^^^^^ keyword.control.import  */
{

}

struct Base {};
class Derived final : Base {};
/*             ^ storage.modifier */
struct Derived final : Base {};
/*             ^ storage.modifier */

/* C++11 "uniform initialization" in initializer lists */
class Foo {
public:
    Foo() : var1(1), var(2), var3{3}, var4(4) {}
                                 /* ^ meta.method.constructor.initializer-list   */
                                 /*   ^ - meta.function-call - variable.function */
private:
    int var1, var2, var3, var4;
};

class X {
    int a, b, i, j;
public:
    const int& r;
    X(int i)
      : r(a) // initializes X::r to refer to X::a
      /* ^ meta.method.constructor.initializer-list punctuation         */
      /*   ^ meta.method.constructor.initializer-list punctuation       */
      , b{i} // initializes X::b to the value of the parameter i
      /* ^ meta.method.constructor.initializer-list punctuation         */
      /*   ^ meta.method.constructor.initializer-list punctuation       */
      , i(i) // initializes X::i to the value of the parameter i
      /* ^ meta.method.constructor.initializer-list punctuation         */
      /*   ^ meta.method.constructor.initializer-list punctuation       */
      , j(this->i) // initializes X::j to the value of X::i
      /* ^ meta.method.constructor.initializer-list punctuation         */
      /*         ^ meta.method.constructor.initializer-list punctuation */
      , j
      /*^ variable */
      (this->i)
      /* <- meta.method.constructor.initializer-list punctuation */
    { }
/*  ^ punctuation - meta.method.constructor.initializer-list   */
/*    ^ punctuation - meta.method.constructor.initializer-list */
};

struct A {
  static_assert(0 < 1, "");
  /* ^ keyword.operator.word                    */
  /*            ^ meta.function-call            */
  /*              ^ keyword.operator.comparison */

  A();
/*^ meta.method.constructor entity.name.function.constructor */

  void f();
  /* ^ storage.type                       */
  /*   ^ meta.method entity.name.function */
  /*      ^ punctuation.terminator        */
};
/* <- punctuation.section.block.end - invalid.illegal */

struct bar {
/*^^^^^^^^^^ meta.struct */
/*^^^^ keyword.declaration */
/*     ^^^ entity.name.struct */
/*         ^ meta.block punctuation.section.block.begin */
    bar()
/*  ^^^^^ meta.method */
/*  ^^^ entity.name.function */
    {}
}
/* <- meta.struct meta.block punctuation.section.block.end */
 /* <- - meta.struct meta.block */

enum baz {
/*^^^^^^^^ meta.enum */
/* <- meta.enum keyword.declaration */
/*   ^^^ entity.name.enum */
/*       ^ meta.block punctuation.section.block.begin */
    FOO = 1,
/*  ^^^ entity.name.constant.c++ */
/*      ^ keyword.operator.assignment */
/*        ^ meta.number */
    BAR = 2,
    BAZ = 3,
#if 0
/*  ^ meta.number */
    QUX = 4,
/*  ^ comment.block */
#endif
}
/* <- meta.enum meta.block punctuation.section.block.end */
 /* <- - meta.enum meta.block */

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

enum class qux : std::uint8_t
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum */
/*^^^^^^^^ keyword.declaration */
/*         ^^^ entity.name.enum */
/*             ^ punctuation.separator */
/*               ^^^^^^^^^^^^ entity.other.inherited-class */
{
/* <- meta.block punctuation.section.block.begin */
    FOO = 1,
    BAR = 2,
/*  ^^^ entity.name.constant.c++ */
/*      ^ keyword.operator.assignment */
/*        ^ meta.number */
    BAZ = 3
}
/* <- meta.enum meta.block punctuation.section.block.end */
 /* <- - meta.enum meta.block */

typedef enum class funky
/*^^^^^ keyword.declaration */
/*                 ^^^^^ entity.name.enum */
{
    BAZ = 3
/*  ^^^ entity.name.constant.c++ */
/*      ^ keyword.operator.assignment */
/*        ^ meta.number */
} Funky;

typedef enum
/*^^^^^ keyword.declaration */
{
    FOO = 1,
    BAR = 2,
    BAZ = 3
/*  ^^^ entity.name.constant.c++ */
/*      ^ keyword.operator.assignment */
/*        ^ meta.number */
} Fun;

enum LineEnding : uint32_t;
/*^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum */
/*   ^^^^^^^^^^ entity.name.enum.forward-decl */
/*              ^ punctuation.separator */
/*                ^^^^^^^^ entity.other.inherited-class */
/*                        ^ - meta.enum */

union foobaz {
/* <- meta.union keyword.declaration */
/*    ^^^^^^ entity.name.union */
/*           ^ meta.block punctuation.section.block.begin */
}
/* <- meta.union meta.block punctuation.section.block.end */
 /* <- - meta.union meta.block */

// Class name that looks like a possible macro
class SP {}
/*    ^^ entity.name.class */

class MyClass MACRO MACRO2
/* ^ keyword.declaration */
/*    ^ entity.name.class */
/*            ^ - entity */
/*                  ^ - entity */
{}

// Class using macro to handle __declspec() on Windows
class SK_API SkBitmap {}
/*           ^ entity.name.class */
class __declspec(property(get=foo)) SkBitmap {}
/*               ^ storage.modifier */
/*                        ^ variable.parameter */
/*                                  ^ entity.name.class */
class __declspec(align(8)) SkBitmap {}
/*               ^ storage.modifier */
/*                     ^ meta.number */
/*                         ^ entity.name.class */
class __declspec(dllimport) SkBitmap {}
/*               ^ constant.other */
/*                          ^ entity.name.class */

// Make sure not to match macros that have "too few characters".
template <class T> class Sample {
 public:
  // The T here should not be consumed as a macro.
  T operator()  (const foo x) {
    /* <- entity.name.function */
    /*^^^^^^^^ entity.name.function */
    return T;
  }
  int operator == (const int x) {
    /*^^^^^^^^^^^ entity.name.function */
    return 0;
  }
  // The T here should not be consumed as a macro.
  T operator()(int a) {
    /* <- entity.name.function */
    /*^^^^^^^^ entity.name.function */
    return T;
  }
  // The T here should not be consumed as a macro.
  T operator[](int a)  {
    /* <- entity.name.function */
    /*^^^^^^^^ entity.name.function */
     return T;
  }
};

class Namespace::MyClass MACRO1 MACRO2 : public SuperClass
/*               ^^^^^^^ entity.name.class */
/*             ^^ punctuation.accessor */
/*                       ^ - entity.name */
{
};

struct Namespace::MyStruct
/*                ^^^^^^^^ entity.name.struct */
/*              ^^ punctuation.accessor */
{
};

union Namespace::MyUnion
/*               ^^^^^^^ entity.name.union */
/*             ^^ punctuation.accessor */
{
};

enum class Namespace::MyEnum
/*                    ^^^^^^ entity.name.enum */
/*                  ^^ punctuation.accessor */
{
    BAR = 1,
/*  ^^^ entity.name.constant.c++ */
};

class Namespace::
MyClass MACRO1
/* <- entity.name.class */
/*      ^ - entity.name */
{
};

struct Namespace::
MyStruct MACRO1
/* <- entity.name.struct */
/*       ^ - entity.name */
{
};

union Namespace::
MyUnion MACRO1
/* <- entity.name.union */
/*      ^ - entity.name */
{
};

enum class Namespace::
MyEnum MACRO1
/* <- entity.name.enum */
/*     ^ - entity.name */
{
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

int foo(int val, float val2[], bool val3 = false)
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function */
/*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.group */
/*     ^ punctuation.section.group.begin */
/*                                              ^ punctuation.section.group.end */
/*          ^^^ variable.parameter */
/*             ^ punctuation.separator */
/*                     ^^^^ variable.parameter */
/*                         ^^ meta.brackets */
/*                         ^ punctuation.section.brackets.begin */
/*                          ^ punctuation.section.brackets.end */
/*                           ^ punctuation.separator */
/*                             ^^^^ storage.type */
/*                                  ^^^^ variable.parameter */
/*                                       ^ keyword.operator.assignment */
/*                                         ^^^^^ constant.language */
{
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
/*  ^ meta.block meta.block punctuation.section.block.end */
/*   ^ - meta.block meta.block */

#ifndef DEBUG
    if (check_debug()) {
        val /= 2;
#endif
        val += 1;
#ifndef DEBUG
    }
/*  ^ meta.function meta.block meta.block punctuation.section.block.end */
/*   ^ - meta.block meta.block */
#endif

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
/*  ^ meta.block punctuation.section.block.end */
/*   ^ - meta.block meta.block */

    return -1;
}
/* <- meta.function punctuation.section.block.end */
 /* <- - meta.function */

#if 0
/*  ^ meta.number */
int disabled_func() {
/*  ^ comment.block */
}
#endif

#if 1
/*  ^ meta.number */
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
/*      ^ meta.number */
        int b = 2;
/*      ^ comment.block */
    #else
        int c = 3;
    #endif
#else
    int d = 4;
/*  ^ comment.block */
#endif

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
/*                  ^^^^^^ entity.name.function */
(int * a)
/* <- punctuation.section.group.begin */
/*   ^ keyword.operator */
/*      ^ punctuation.section.group.end */
{

}

void MyClass3::
foo() {
/* <- entity.name.function */
}

MyClass3::
~MyClass3() {
/* <- entity.name.function */
}

struct A
{
    #ifdef X
    static_assert(false, "asdf");
    /* ^ keyword.operator.word */
    #endif

    void f()
    {
        #ifdef X
        static_assert(false, "asdf");
        /* ^ keyword.operator.word */
        #endif
    }

    void f()
    {
        static_assert(false, "asdf");
        /* ^ keyword.operator.word */
    }
};

void f()
{
    static_assert(false, "asdf");
/* ^ meta.function meta.block */
/*  ^ keyword.operator.word   */
}

void f()
{
    #ifdef X
    static_assert(false, "asdf");
/* ^ meta.function meta.block */
/*  ^ keyword.operator.word   */
    #endif
}

Glib::ustring Node::_getDragTip(GdkEventMotion */*event*/);
/*                                              ^^^^^^^^^ comment */

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
/*^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^ meta.group */
/*        ^ punctuation.section.group.begin */
/*            ^ punctuation.section.group.end */
/*              ^ entity.name.function */

int* return_type_pointer_no_space(){}
/*   ^ entity.name.function */

int& return_type_ref_no_space(){}
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
// Paths/identifiers
/////////////////////////////////////////////

void sayHi()
{
    std::cout << "Hi!\n";
/*     ^ punctuation.accessor */
    Print<int>(3);
/*  ^ variable.function */
    func_call(foo
/*  ^ meta.function-call */
    );

    if (::std::foo()) {}
/*             ^^^ variable.function */
/*      ^^ punctuation.accessor */
/*           ^^ punctuation.accessor */

    foobaz<int>();
/*  ^^^^^^^^^^^^^ meta.function-call */
/*  ^^^^^^ variable.function */
/*        ^ punctuation.definition.generic.begin */
/*            ^ punctuation.definition.generic.end */
/*             ^^ meta.group */

    foobaz<>();
/*  ^^^^^^^^^^ meta.function-call */
/*  ^^^^^^ variable.function */
/*        ^ punctuation.definition.generic.begin */
/*         ^ punctuation.definition.generic.end */
/*          ^^ meta.group */

    foobaz<0>();
/*  ^^^^^^^^^^^ meta.function-call */
/*  ^^^^^^ variable.function */
/*        ^ punctuation.definition.generic.begin */
/*         ^ meta.number */
/*          ^ punctuation.definition.generic.end */
/*           ^^ meta.group */

    ::myns::foo<int>();
/*  ^^ punctuation.accessor.double-colon */
/*        ^^ punctuation.accessor.double-colon */
/*  ^^^^^^^^^^^^^^^^^^ meta.function-call */
/*          ^^^ variable.function */
/*              ^^^ storage.type */

    myns::FooClass{42};
/*      ^^ punctuation.accessor.double-colon */
/*  ^^^^^^^^^^^^^^^^^^ meta.function-call */
/*        ^^^^^^^^ variable.function */

    ::myns::BarClass<int>{};
/*  ^^ punctuation.accessor.double-colon */
/*        ^^ punctuation.accessor.double-colon */
/*  ^^^^^^^^^^^^^^^^^^^^^ meta.function-call */
/*          ^^^^^^^^ variable.function */
/*                   ^^^ storage.type */

    int a[5];
/*       ^^^ meta.brackets */
/*       ^ punctuation.section.brackets.begin */
/*         ^ punctuation.section.brackets.end */

    std::cout << ">> Hi!\n";
/*            ^^ keyword.operator.arithmetic.c */
}

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

/**
      *
/*    ^ comment.block.documentation.c punctuation.definition.comment.c */

/////////////////////////////////////////////
// Modules
/////////////////////////////////////////////

export module AA;
/* <- keyword.control.c++ */
/*     ^^^^^^ keyword.control.c++ */
/*            ^^ entity.name.module.c++ */
/*              ^ punctuation.terminator.c++ */

export  module  A.B;
/* <- keyword.control.c++ */
/*      ^^^^^^ keyword.control.c++ */
/*              ^^^ entity.name.module.c++ */

export module A.BB.C.D;
/* <- keyword.control.c++ */
/*     ^^^^^^ keyword.control.c++ */
/*            ^^^^^^^^ entity.name.module.c++ */

export   module   ABC:DE;
/* <- keyword.control.c++ */
/*       ^^^^^^ keyword.control.c++ */
/*                ^^^ entity.name.module.c++ */
/*                   ^  punctuation.accessor.c++ */
/*                    ^^ entity.name.partition.other */

module ABC;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^^^ entity.name.module.c++ */
/*        ^ punctuation.terminator.c++ */

module :private;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^  punctuation.accessor.c++ */
/*      ^^^^^^^ entity.name.partition.private */

import A;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^ entity.name.module.c++ */

import  :B;
/* <- meta.module.c++ keyword.control.c++ */
/*      ^  punctuation.accessor.c++ */
/*       ^ entity.name.partition.other */

import   "ABC";
/* <- meta.module.c++ keyword.control.c++ */
/*        ^^^ meta.module.import.c++ string.quoted.double.import.c++ */
/*       ^ punctuation.definition.string.begin.c++ */
/*           ^ punctuation.definition.string.end */
/*            ^ punctuation.terminator.c++ */

import   <ABC>;
/* <- meta.module.c++ keyword.control.c++ */
/*        ^^^ meta.module.import.c++ string.quoted.other.lt-gt.import.c++ */
/*       ^ punctuation.definition.string.begin */
/*           ^ punctuation.definition.string.end */
/*            ^ punctuation.terminator.c++ */

import "ABC/BCD.h";
/* <- meta.module.c++ keyword.control.c++ */
/*      ^^^^^^^^^ meta.module.import.c++ string.quoted.double.import.c++ */
/*     ^ punctuation.definition.string.begin.c++ */
/*               ^ punctuation.definition.string.end */
/*                ^ punctuation.terminator.c++ */

// Doesn't break grammar when missing semi-colon.
export module ABC:d
/* <- keyword.control.c++ */
/*     ^^^^^^ keyword.control.c++ */
/*            ^^^ entity.name.module.c++ */
/*               ^  punctuation.accessor.c++ */
/*                ^ entity.name.partition.other */

// Doesn't break grammar when missing semi-colon.
export import ABC:d
/* <- keyword.control.c++ */
/*     ^^^^^^ keyword.control.c++ */
/*            ^^^ entity.name.module.c++ */
/*               ^  punctuation.accessor.c++ */
/*                ^ entity.name.partition.other */

module .test.module;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^ invalid.illegal.unexpected-character.c++ */
/*      ^^^^^^^^^^^ entity.name.module.c++ */
/*                 ^ punctuation.terminator.c++ */

import .test.module;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^ invalid.illegal.unexpected-character.c++ */
/*      ^^^^^^^^^^^ entity.name.module.c++ */
/*                 ^ punctuation.terminator.c++ */

module test : part1:part2;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^^^^ entity.name.module.c++ */
/*          ^  punctuation.accessor.c++ */
/*            ^^^^^ entity.name.partition.other */
/*                 ^ invalid.illegal.unexpected-character.c++ */
/*                  ^^^^^ - entity.name.partition.other */
/*                       ^ punctuation.terminator.c++ */

module abc.def.:part1:part2;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^^^^^^^ entity.name.module.c++ */
/*            ^ invalid.illegal.unexpected-character.c++ */
/*             ^  punctuation.accessor.c++ */
/*              ^^^^^ entity.name.partition.other */
/*                   ^ invalid.illegal.unexpected-character.c++ */
/*                    ^^^^^ - entity.name.partition.other */
/*                         ^ punctuation.terminator.c++ */

module test.
/* <- meta.module.c++ keyword.control.c++ */
/*     ^^^^^ entity.name.module.c++ */
/*         ^ - invalid.illegal.unexpected-character.c++ */

module test. ;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^^^^ entity.name.module.c++ */
/*         ^^ invalid.illegal.unexpected-character.c++ */
/*           ^ punctuation.terminator.c++ */

import :part1:part2;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^  punctuation.accessor.c++ */
/*      ^^^^^ entity.name.partition.other */
/*           ^ invalid.illegal.unexpected-character.c++ */
/*            ^^^^^^ - entity.name.partition.other */
/*                 ^ punctuation.terminator.c++ */

module :private:test2;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^  punctuation.accessor.c++ */
/*      ^^^^^^^ entity.name.partition.private */
/*             ^ invalid.illegal.unexpected-character.c++ */
/*              ^^^^^^ - entity.name.partition.other */
/*                   ^ punctuation.terminator.c++ */

import .test.module; import ABD;
/* <- meta.module.c++ keyword.control.c++ */
/*     ^ invalid.illegal.unexpected-character.c++ */
/*      ^^^^^^^^^^^ source.c++ */
/*                 ^ punctuation.terminator.c++ */
/*                   ^^^^^^ meta.module.c++ keyword.control.c++ */
/*                          ^^^ entity.name.module.c++ */
/*                             ^ punctuation.terminator.c++ */

export module ABC:test1:test2; import DEF;
/* <- keyword.control.c++ */
/*     ^^^^^^ keyword.control.c++ */
/*            ^^^ entity.name.module.c++ */
/*               ^  punctuation.accessor.c++ */
/*                ^^^^^ entity.name.partition.other */
/*                     ^ invalid.illegal.unexpected-character.c++ */
/*                      ^^^^^^ - entity.name.partition.other */
/*                           ^ punctuation.terminator.c++ */
/*                             ^^^^^^ meta.module.c++ keyword.control.c++ */
/*                                    ^^^ entity.name.module.c++ */
/*                                       ^ punctuation.terminator.c++ */

export module ABC:test1:test2 import DEF;
/* <- keyword.control.c++ */
/*     ^^^^^^ keyword.control.c++ */
/*            ^^^ entity.name.module.c++ */
/*               ^  punctuation.accessor.c++ */
/*                ^^^^^ entity.name.partition.other */
/*                     ^ invalid.illegal.unexpected-character.c++ */
/*                      ^^^^^ - entity.name.partition.other */
/*                            ^^^^^^ meta.module.c++ keyword.control.c++ */
/*                                   ^^^ entity.name.module.c++ */
/*                                      ^ punctuation.terminator.c++ */

export {
/* <- keyword.control.c++ */
/*     ^ meta.block.c++ punctuation.section.block.begin.c++ */
    void test();
/*  ^^^^ meta.block.c++ storage.type.c */
/*       ^^^^ meta.block.c++ meta.function.c++ entity.name.function.c++ */
    void test2();
/*  ^^^^ meta.block.c++ storage.type.c */
/*       ^^^^^ meta.block.c++ meta.function.c++ entity.name.function.c++ */
}
/* <- meta.block.c++ punctuation.section.block.end.c++ */

export void test3();
/* <- keyword.control.c++ */
/*     ^^^^ storage.type.c */
/*          ^^^^^ meta.function.c++ entity.name.function.c++ */

export
/* <- keyword.control.c++ */
template <typename T>
/* <- meta.template.c++ keyword.declaration.template.c++ */
void test4()
{
    return;
}

/////////////////////////////////////////////
// Concepts
/////////////////////////////////////////////

template <typename T>
/* <- meta.template.c++ keyword.declaration.template.c++ */
concept has_foo = requires(T t) {
/* <- meta.concept.c++ keyword.declaration.concept.c++ */
/*      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concept.c++ */
/*      ^^^^^^^ meta.concept.c++ entity.name.concept.c++ */
/*                ^^^^^^^^^^^^^^^ meta.concept.c++ meta.constraint.c++ */
/*                        ^^^^^ meta.function.parameters.c++ */
/*                              ^ meta.function.c++  meta.block.c++ */
    t.foo();
/*  ^^^^^^^^ meta.concept.c++ meta.constraint.c++ meta.function.c++ meta.block.c++ */
} && std::move_constructible<T>;
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concept.c++ meta.constraint.c++ */

template <typename C>
/* <- meta.template.c++ keyword.declaration.template.c++ */
void foo() requires std::same_as<C, void>
/* <- storage.type.c */
/*   ^^^ meta.function.c++ entity.name.function.c++ */
/*         ^^^^^^^^ meta.function.c++ meta.constraint.c++ storage.modifier.c++ */
/*                    ^^^^^^^^^^^^^^^^^^^^^ meta.function.c++ meta.constraint.c++ */
{
    return;
}

template <typename C> requires std::same_as<C, void>
/* <- meta.template.c++ keyword.declaration.template.c++ */
/*                    ^^^^^^^^ meta.constraint.c++ storage.modifier.c++ */
/*                             ^^^^^^^^^^^^^^^^^^^^^ meta.constraint.c++ */
void bar()
/* <- storage.type.c */
/*   ^^^ meta.function.c++ entity.name.function.c++ */
{
    return;
}

#define GTY0
/*      ^^^^ meta.preprocessor.macro.c++ */
#define GTY1(A)
/*      ^^^^    entity.name.function.preprocessor */
/*          ^^^ meta.preprocessor.macro.parameters */
#define GTY2(A, B)
/*      ^^^^       entity.name.function.preprocessor */
/*          ^^^^^^ meta.preprocessor.macro.parameters */

struct GTY0 foo {
/*<- keyword.declaration.struct.type.c++ */
/*     ^^^^  meta.assumed-macro */
/*          ^^^ entity.name.struct.c++ */
};

struct GTY1(42) bar {
/*<- keyword.declaration.struct.type.c++ */
/*     ^^^^ meta.function-call.c++ */
/*          ^^ constant.numeric.value.c++ */
/*              ^^^ entity.name.struct.c++ */
};

enum GTY1("struct") baz {
/*<- keyword.declaration.enum.type.c++ */
/*   ^^^^ meta.function-call.c++ */
/*        ^^^^^^^^ string */
/*                  ^^^ entity.name.enum.c++ */
};

union GTY2("union struct", 42) bazz {
/*<- keyword.declaration.union.type.c++ */
/*    ^^^^ meta.function-call.c++ */
/*         ^^^^^^^^^^^^^^ string */
/*                         ^^ constant.numeric.value.c++ */
/*                             ^^^^ entity.name.union.c++ */
};

class GTY2("struct class", 42) bazzz {
/*<- keyword.declaration.class.c++ */
/*    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call */
/*                             ^^^^^ entity.name.class.c++ */
};
