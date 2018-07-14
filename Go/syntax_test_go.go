// SYNTAX TEST "Go.sublime-syntax"


/*
NOTES

This file is not intended to pass compilation or `go vet`.

This file must not be formatted with `go fmt`.

You may have to disable Go-specific linters when working on this file.
*/


// # Comments

    // comment
//  ^^^^^^^^^^ comment.line.go

    /* comment */  // comment
//  ^^^^^^^^^^^^^ comment.block.go
//                 ^^^^^^^^^^ comment.line.go

    /*
//  ^^^^ comment.block.go
    comment
//  ^^^^^^^^ comment.block.go
    */
//  ^^ comment.block.go

    /* * */
//  ^^^^^^^ comment.block.go


// # Imports

    package main
//  ^^^^^^^ keyword.other.package.go
//         ^^^^^- keyword

    import "module"
//  ^^^^^^ keyword.other.import.go
//         ^^^^^ string.quoted.double.go

    import (ident "module")
//  ^^^^^^ keyword.other.import.go
//         ^ punctuation.section.parens.begin.go
//          ^^^^^ variable.other.go
//                ^ string.quoted.double.go punctuation.definition.string.begin.go
//                 ^^^^^^ string.quoted.double.go
//                       ^ string.quoted.double.go punctuation.definition.string.end.go
//                        ^ punctuation.section.parens.end.go

    import (
//  ^^^^^^ keyword.other.import.go
        ident "module"      // comment
//      ^^^^^ variable.other.go
//            ^ string.quoted.double.go punctuation.definition.string.begin.go
//             ^^^^^^ string.quoted.double.go
//                   ^ string.quoted.double.go punctuation.definition.string.end.go
//                          ^^^^^^^^^^^ comment.line.go
        ident "module"      // comment
//      ^^^^^ variable.other.go
//            ^ string.quoted.double.go punctuation.definition.string.begin.go
//             ^^^^^^ string.quoted.double.go
//                   ^ string.quoted.double.go punctuation.definition.string.end.go
//                          ^^^^^^^^^^^ comment.line.go
    )


// # Types

// Types are covered early because they're involved in most tests.
// Note: Go permits an arbitrary number of parens around a type.


// ## chan

    chan _
//  ^^^^ storage.type.go
//       ^- storage

    chan typ
//  ^^^^ storage.type.go
//       ^^^ storage.type.go

    chan typ ident
//  ^^^^ storage.type.go
//       ^^^ storage.type.go
//           ^^^^^ variable.other.go

    chan ((typ))
//  ^^^^ storage.type.go
//       ^^ punctuation.section.parens.begin.go
//         ^^^ storage.type.go
//            ^^ punctuation.section.parens.end.go

    chan ident.typ
//  ^^^^ storage.type.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^ storage.type.go

    chan ident.ident.typ
//  ^^^^ storage.type.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^^ variable.other.go
//                  ^ punctuation.accessor.dot.go
//                   ^^^ storage.type.go

    chan ((ident.ident.typ))
//  ^^^^ storage.type.go
//       ^^ punctuation.section.parens.begin.go
//         ^^^^^ variable.other.go
//              ^ punctuation.accessor.dot.go
//               ^^^^^ variable.other.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^ storage.type.go
//                        ^^ punctuation.section.parens.end.go

    <- chan ident.typ
//  ^^ keyword.operator.go
//     ^^^^ storage.type.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^ storage.type.go

    <- chan ident.ident.typ
//  ^^ keyword.operator.go
//     ^^^^ storage.type.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^ storage.type.go

    chan <- ident.typ
//  ^^^^ storage.type.go
//       ^^ keyword.operator.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^ storage.type.go

    chan <- ident.ident.typ
//  ^^^^ storage.type.go
//       ^^ keyword.operator.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^ storage.type.go

    chan
//  ^^^^ storage.type.go
    typ
//  ^^^ storage.type.go

    chan
//  ^^^^ storage.type.go
    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    <-
//  ^^ keyword.operator.go
    chan
//  ^^^^ storage.type.go
    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    chan
//  ^^^^ storage.type.go
    <-    /**/
//  ^^ keyword.operator.go
//        ^^^^ comment.block.go
    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    chan chan chan typ
//  ^^^^ storage.type.go
//       ^^^^ storage.type.go
//            ^^^^ storage.type.go
//                 ^^^ storage.type.go

    chan *chan **chan ***typ
//  ^^^^ storage.type.go
//       ^ keyword.operator.go
//        ^^^^ storage.type.go
//             ^^ keyword.operator.go
//               ^^^^ storage.type.go
//                    ^^^ keyword.operator.go
//                       ^^^ storage.type.go

    chan struct{}
//  ^^^^ storage.type.go
//       ^^^^^^ storage.type.go

    chan struct{} ident
//  ^^^^ storage.type.go
//       ^^^^^^ storage.type.go
//                ^^^^^ variable.other.go

    chan interface{}
//  ^^^^ storage.type.go
//       ^^^^^^^^^ storage.type.go

    chan interface{} ident
//  ^^^^ storage.type.go
//       ^^^^^^^^^ storage.type.go
//                   ^^^^^ variable.other.go

    chan func() func() typ
//  ^^^^ storage.type.go
//       ^^^^ storage.type.func.go
//              ^^^^ storage.type.func.go
//                     ^^^ storage.type.go

    chan func() func() typ ident
//  ^^^^ storage.type.go
//       ^^^^ storage.type.func.go
//              ^^^^ storage.type.func.go
//                     ^^^ storage.type.go
//                         ^^^^^ variable.other.go

    chan
//  ^^^^ storage.type.go
    func() typ
//  ^^^^ storage.type.func.go
//         ^^^ storage.type.go

    chan []typ
//  ^^^^ storage.type.go
//         ^^^ storage.type.go

    chan [][][]typ
//  ^^^^ storage.type.go
//             ^^^ storage.type.go

    chan map[typ]typ
//  ^^^^ storage.type.go
//       ^^^ storage.type.go
//           ^^^ storage.type.go
//               ^^^ storage.type.go


// ## func

// Note: a function type and the beginning of a non-method function declaration
// are parsed EXACTLY the same. Function types may contain parameter names.
// These tests wouldn't be valid Go code by themselves, but they are valid
// function types.

    func()
//  ^^^^ storage.type.func.go
//      ^ punctuation.section.parens.begin.go
//       ^ punctuation.section.parens.end.go

    func(typ, typ)
//  ^^^^ storage.type.func.go
//      ^ punctuation.section.parens.begin.go
//       ^^^ storage.type.go
//          ^ punctuation.separator.go
//            ^^^ storage.type.go
//               ^ punctuation.section.parens.end.go

    func(((typ)), ((typ)))
//         ^^^ storage.type.go
//                  ^^^ storage.type.go

    func(...typ)
//       ^^^ keyword.operator.variadic.go
//          ^^^ storage.type.go

    func()
//  ^^^^ storage.type.func.go
    ident
//  ^^^^^- storage
//  ^^^^^ variable.other.go

    func(true false) (nil iota)
//  ^^^^ storage.type.func.go
//       ^^^^ variable.parameter.go
//            ^^^^^ storage.type.go
//                    ^^^ variable.parameter.go
//                        ^^^^ storage.type.go

    func(param...typ)
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go

    func(param /**/ ... /**/ typ)
//  ^^^^ storage.type.func.go
//       ^^^^^ variable.parameter.go
//             ^^^^ comment.block.go
//                  ^^^ keyword.operator.variadic.go
//                      ^^^^ comment.block.go
//                           ^^^ storage.type.go

    func(param ((typ)), param ...typ)
//  ^^^^ storage.type.func.go
//       ^^^^^ variable.parameter.go
//               ^^^ storage.type.go
//                      ^^^^^ variable.parameter.go
//                            ^^^ keyword.operator.variadic.go
//                               ^^^ storage.type.go

    func(param, param ((typ)), param, param ...typ)
//  ^^^^ storage.type.func.go
//       ^^^^^ variable.parameter.go
//              ^^^^^ variable.parameter.go
//                      ^^^ storage.type.go
//                             ^^^^^ variable.parameter.go
//                                    ^^^^^ variable.parameter.go
//                                          ^^^ keyword.operator.variadic.go
//                                             ^^^ storage.type.go

    func(
        /**/
//      ^^^^ comment.block.go
        typ,
//      ^^^ storage.type.go
        ...typ,
//      ^^^ keyword.operator.variadic.go
//         ^^^ storage.type.go
        ((typ)),
//        ^^^ storage.type.go
    )

    func(
        /**/
//      ^^^^ comment.block.go
        param, param ((typ)),
//      ^^^^^ variable.parameter.go
//             ^^^^^ variable.parameter.go
//                     ^^^ storage.type.go
        /**/
//      ^^^^ comment.block.go
        param, param typ,
//      ^^^^^ variable.parameter.go
//             ^^^^^ variable.parameter.go
//                   ^^^ storage.type.go
    )

// Named, multiline, grouped parameters. We can't scope them perfectly. When
// scoping the first identifier, we don't know whether it's a name or a type. In
// this scenario, we default to unnamed parameters, because named groups and
// their type are nearly always written on the same line.
    func(
        param,
        param typ,
//            ^^^ storage.type.go
    )

    func(
        param, param []byte,
//      ^^^^^ variable.parameter.go
//             ^^^^^ variable.parameter.go
//                     ^^^^ storage.type.go
        param ...typ,
//      ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go
    )

    func(
        param, param (([]byte)),
//      ^^^^^ variable.parameter.go
//             ^^^^^ variable.parameter.go
//                       ^^^^ storage.type.go
        param typ,
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    )

    func(ident.Type)
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^ storage.type.go

    func(*ident.Type)
//       ^ keyword.operator.go
//        ^^^^^ variable.other.go
//             ^ punctuation.accessor.dot.go
//              ^^^^ storage.type.go

    func(...ident.Type)
//  ^^^^ storage.type.func.go
//       ^^^ keyword.operator.variadic.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^ storage.type.go

    func(...*ident.Type)
//  ^^^^ storage.type.func.go
//       ^^^ keyword.operator.variadic.go
//          ^ keyword.operator.go
//           ^^^^^ variable.other.go
//                ^ punctuation.accessor.dot.go
//                 ^^^^ storage.type.go

    func(
        param*ident.Type,
//      ^^^^^ variable.parameter.go
//           ^ keyword.operator.go
//            ^^^^^ variable.other.go
//                 ^ punctuation.accessor.dot.go
//                  ^^^^ storage.type.go
    )

    func(param...typ)
//  ^^^^ storage.type.func.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go

    func(param...ident.Type)
//  ^^^^ storage.type.func.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^^^ variable.other.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^^ storage.type.go

    func(param...*ident.Type)
//  ^^^^ storage.type.func.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^ keyword.operator.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^^ storage.type.go

    func(ident .
//       ^^^^^ variable.other.go
//             ^ punctuation.accessor.dot.go
    typ)
//  ^^^ storage.type.go

    func() typ
//         ^^^ storage.type.go

    func() ((typ))
//           ^^^ storage.type.go

    func() (param typ)
//          ^^^^^ variable.parameter.go
//                ^^^ storage.type.go

    func() (param ((typ)))
//          ^^^^^ variable.parameter.go
//                  ^^^ storage.type.go

    func(typ) (
//       ^^^ storage.type.go
        typ
//      ^^^ storage.type.go
    )

    func(typ) (
//       ^^^ storage.type.go
        param ((typ)),
//      ^^^^^ variable.parameter.go
//              ^^^ storage.type.go
        param typ,
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    )

// Deranged case
    func /**/ (
//  ^^^^ storage.type.func.go
//       ^^^^ comment.block.go
//            ^ punctuation.section.parens.begin.go
        /**/
//      ^^^^ comment.block.go
        param, /**/ param /**/ (([]typ)),
//      ^^^^^ variable.parameter.go
//           ^ punctuation.separator.go
//             ^^^^ comment.block.go
//                  ^^^^^ variable.parameter.go
//                        ^^^^ comment.block.go
//                             ^^ punctuation.section.parens.begin.go
//                               ^ punctuation.section.brackets.begin.go
//                                ^ punctuation.section.brackets.end.go
//                                 ^^^ storage.type.go
//                                    ^^ punctuation.section.parens.end.go
//                                      ^ punctuation.separator.go
        /**/
//      ^^^^ comment.block.go
        param /**/ * /**/ ident /**/ . /**/ Type,
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^ keyword.operator.go
//                   ^^^^ comment.block.go
//                        ^^^^^ variable.other.go
//                              ^^^^ comment.block.go
//                                   ^ punctuation.accessor.dot.go
//                                     ^^^^ comment.block.go
//                                          ^^^^ storage.type.go
//                                              ^ punctuation.separator.go
    ) /**/ (
//  ^ punctuation.section.parens.end.go
//    ^^^^ comment.block.go
//         ^ punctuation.section.parens.begin.go
        /**/
//      ^^^^ comment.block.go
        param, /**/ param /**/ (( /**/ []typ /**/ )),
//      ^^^^^ variable.parameter.go
//           ^ punctuation.separator.go
//             ^^^^ comment.block.go
//                  ^^^^^ variable.parameter.go
//                        ^^^^ comment.block.go
//                             ^^ punctuation.section.parens.begin.go
//                                ^^^^ comment.block.go
//                                     ^ punctuation.section.brackets.begin.go
//                                      ^ punctuation.section.brackets.end.go
//                                       ^^^ storage.type.go
//                                           ^^^^ comment.block.go
//                                                ^^ punctuation.section.parens.end.go
//                                                  ^ punctuation.separator.go
        /**/
//      ^^^^ comment.block.go
        param /**/ * /**/ ident /**/ . /**/ Type,
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^ keyword.operator.go
//                   ^^^^ comment.block.go
//                        ^^^^^ variable.other.go
//                              ^^^^ comment.block.go
//                                   ^ punctuation.accessor.dot.go
//                                     ^^^^ comment.block.go
//                                          ^^^^ storage.type.go
//                                              ^ punctuation.separator.go
    )
//  ^ punctuation.section.parens.end.go

    func() (
        param typ)
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go

    func() func() func() typ
//  ^^^^ storage.type.func.go
//         ^^^^ storage.type.func.go
//                ^^^^ storage.type.func.go
//                       ^^^ storage.type.go

    func() func() func() ((typ))
//                         ^^^ storage.type.go

// Deranged case
    func(param func(param func(param ...typ) func() typ) ...func(param typ))
//  ^^^^ storage.type.func.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^^ variable.parameter.go
//             ^^^^ storage.type.func.go
//                 ^ punctuation.section.parens.begin.go
//                  ^^^^^ variable.parameter.go
//                        ^^^^ storage.type.func.go
//                            ^ punctuation.section.parens.begin.go
//                             ^^^^^ variable.parameter.go
//                                   ^^^ keyword.operator.variadic.go
//                                      ^^^ storage.type.go
//                                         ^ punctuation.section.parens.end.go
//                                           ^^^^ storage.type.func.go
//                                               ^ punctuation.section.parens.begin.go
//                                                ^ punctuation.section.parens.end.go
//                                                  ^^^ storage.type.go
//                                                     ^ punctuation.section.parens.end.go
//                                                       ^^^ keyword.operator.variadic.go
//                                                          ^^^^ storage.type.func.go
//                                                              ^ punctuation.section.parens.begin.go
//                                                               ^^^^^ variable.parameter.go
//                                                                     ^^^ storage.type.go
//                                                                        ^^ punctuation.section.parens.end.go


// ## interface

    interface{}
//  ^^^^^^^^^ storage.type.go
//           ^ meta.type.go punctuation.section.braces.begin.go
//            ^ meta.type.go punctuation.section.braces.end.go

    interface /**/ {
//  ^^^^^^^^^ storage.type.go
//            ^^^^ comment.block.go
//                 ^ meta.type.go punctuation.section.braces.begin.go

        Method()
//      ^^^^^^ meta.type.go entity.name.function.go

        Method /**/ ()
//      ^^^^^^ meta.type.go entity.name.function.go
//             ^^^^ meta.type.go comment.block.go

        Method(param typ) (param typ)
//      ^^^^^^ meta.type.go entity.name.function.go
//            ^ meta.type.go punctuation.section.parens.begin.go
//             ^^^^^ meta.type.go variable.parameter.go
//                   ^^^ meta.type.go storage.type.go
//                      ^ meta.type.go punctuation.section.parens.end.go
//                        ^ meta.type.go punctuation.section.parens.begin.go
//                         ^^^^^ meta.type.go variable.parameter.go
//                               ^^^ meta.type.go storage.type.go
//                                  ^ meta.type.go punctuation.section.parens.end.go

        Inherit
//      ^^^^^^^ meta.type.go entity.other.inherited-class.go

        *ident.Inherit
//      ^ meta.type.go keyword.operator.go
//       ^^^^^ meta.type.go variable.other.go
//            ^ meta.type.go punctuation.accessor.dot.go
//             ^^^^^^^ meta.type.go entity.other.inherited-class.go

        Method(
//      ^^^^^^ meta.type.go entity.name.function.go
            typ,
//          ^^^ meta.type.go storage.type.go
            typ,
//          ^^^ meta.type.go storage.type.go
        )

        ident.ident.Inherit
//      ^^^^^ meta.type.go variable.other.go
//           ^ meta.type.go punctuation.accessor.dot.go
//            ^^^^^ meta.type.go variable.other.go
//                 ^ meta.type.go punctuation.accessor.dot.go
//                  ^^^^^^^ meta.type.go entity.other.inherited-class.go

        ident /**/ .
//      ^^^^^ meta.type.go variable.other.go
//            ^^^^ meta.type.go comment.block.go
//                 ^ meta.type.go punctuation.accessor.dot.go
        ident /**/ .
//      ^^^^^ meta.type.go variable.other.go
//            ^^^^ meta.type.go comment.block.go
//                 ^ meta.type.go punctuation.accessor.dot.go
        Inherit
//      ^^^^^^^ meta.type.go entity.other.inherited-class.go
    }
//  ^ meta.type.go punctuation.section.braces.end.go

    interface
//  ^^^^^^^^^ storage.type.go
    {Method(param typ) typ; Inherit; Method(param typ) typ;}
//  ^ meta.type.go punctuation.section.braces.begin.go
//   ^^^^^^ meta.type.go entity.name.function.go
//         ^ meta.type.go punctuation.section.parens.begin.go
//          ^^^^^ meta.type.go variable.parameter.go
//                ^^^ meta.type.go storage.type.go
//                   ^ meta.type.go punctuation.section.parens.end.go
//                     ^^^ meta.type.go storage.type.go
//                        ^ meta.type.go punctuation.terminator.go
//                          ^^^^^^^ meta.type.go entity.other.inherited-class.go
//                                 ^ meta.type.go punctuation.terminator.go
//                                   ^^^^^^ meta.type.go entity.name.function.go
//                                         ^ meta.type.go punctuation.section.parens.begin.go
//                                          ^^^^^ meta.type.go variable.parameter.go
//                                                ^^^ meta.type.go storage.type.go
//                                                   ^ meta.type.go punctuation.section.parens.end.go
//                                                     ^^^ meta.type.go storage.type.go
//                                                        ^ meta.type.go punctuation.terminator.go
//                                                         ^ meta.type.go punctuation.section.braces.end.go


// ## map

    map[typ]typ
//  ^^^ storage.type.go
//     ^ punctuation.section.brackets.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.section.brackets.end.go
//          ^^^ storage.type.go

    map[typ]typ ident
//          ^^^ storage.type.go
//              ^^^^^- storage
//              ^^^^^ variable.other.go

    map[typ]
//  ^^^ storage.type.go
//      ^^^ storage.type.go
    ident
//  ^^^^^ variable.other.go

    map /**/ [/**/ typ /**/] /**/ typ
//  ^^^ storage.type.go
//      ^^^^ comment.block.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^ comment.block.go
//                 ^^^ storage.type.go
//                     ^^^^ comment.block.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^ comment.block.go
//                                ^^^ storage.type.go

    map /**/
//  ^^^ storage.type.go
//      ^^^^ comment.block.go
    /**/ [ /**/
//  ^^^^ comment.block.go
//       ^ punctuation.section.brackets.begin.go
//         ^^^^ comment.block.go
    /**/ typ /**/ ] /**/ typ
//  ^^^^ comment.block.go
//       ^^^ storage.type.go
//           ^^^^ comment.block.go
//                ^ punctuation.section.brackets.end.go
//                  ^^^^ comment.block.go
//                       ^^^ storage.type.go

    map[typ]map[typ]map[typ]map[typ]typ
//  ^^^ storage.type.go
//      ^^^ storage.type.go
//          ^^^ storage.type.go
//              ^^^ storage.type.go
//                  ^^^ storage.type.go
//                      ^^^ storage.type.go
//                          ^^^ storage.type.go
//                              ^^^ storage.type.go
//                                  ^^^ storage.type.go

    map[chan chan typ]chan chan typ ident
//  ^^^ storage.type.go
//      ^^^^ storage.type.go
//           ^^^^ storage.type.go
//                ^^^ storage.type.go
//                    ^^^^ storage.type.go
//                         ^^^^ storage.type.go
//                              ^^^ storage.type.go
//                                  ^^^^^ variable.other.go

    map[<- chan typ] chan <- typ
//  ^^^ storage.type.go
//      ^^ keyword.operator.go
//         ^^^^ storage.type.go
//              ^^^ storage.type.go
//                   ^^^^ storage.type.go
//                        ^^ keyword.operator.go
//                           ^^^ storage.type.go

    map[func(param typ) typ]func(param typ) typ
//  ^^^ storage.type.go
//      ^^^^ storage.type.func.go
//           ^^^^^ variable.parameter.go
//                 ^^^ storage.type.go
//                      ^^^ storage.type.go
//                          ^^^^ storage.type.func.go
//                               ^^^^^ variable.parameter.go
//                                     ^^^ storage.type.go
//                                          ^^^ storage.type.go

    map[map[typ]typ]map[typ]typ
//  ^^^ storage.type.go
//      ^^^ storage.type.go
//          ^^^ storage.type.go
//              ^^^ storage.type.go
//                  ^^^ storage.type.go
//                      ^^^ storage.type.go
//                          ^^^ storage.type.go

    map[struct{
//  ^^^ storage.type.go
//      ^^^^^^ storage.type.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
    }] struct {
//     ^^^^^^ storage.type.go
//             ^ meta.type.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
//               ^ meta.type.go
    }

    map[*typ]*typ
//  ^^^ storage.type.go
//      ^ keyword.operator.go
//       ^^^ storage.type.go
//           ^ keyword.operator.go
//            ^^^ storage.type.go

    map[ident.Type]ident.Type
//  ^^^ storage.type.go
//      ^^^^^ variable.other.go
//           ^ punctuation.accessor.dot.go
//            ^^^^ storage.type.go
//                 ^^^^^ variable.other.go
//                      ^ punctuation.accessor.dot.go
//                       ^^^^ storage.type.go

    map[*ident.Type]*ident.Type
//  ^^^ storage.type.go
//      ^ keyword.operator.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^ storage.type.go
//                  ^ keyword.operator.go
//                   ^^^^^ variable.other.go
//                        ^ punctuation.accessor.dot.go
//                         ^^^^ storage.type.go

    map[typ]ident /**/ . /**/
//          ^^^^^ variable.other.go
//                ^^^^ comment.block.go
//                     ^ punctuation.accessor.dot.go
//                       ^^^^ comment.block.go
            ident /**/ . /**/
//          ^^^^^ variable.other.go
//                ^^^^ comment.block.go
//                     ^ punctuation.accessor.dot.go
//                       ^^^^ comment.block.go
            typ
//          ^^^ storage.type.go

    map[[0]typ][0]typ
//  ^^^ storage.type.go
//       ^ constant.numeric.integer.go
//         ^^^ storage.type.go
//              ^ constant.numeric.integer.go
//                ^^^ storage.type.go

    map[/**/ [0] /**/ typ /**/ ] /**/ [0] /**/ typ
//  ^^^ storage.type.go
//      ^^^^ comment.block.go
//            ^ constant.numeric.integer.go
//               ^^^^ comment.block.go
//                    ^^^ storage.type.go
//                        ^^^^ comment.block.go
//                               ^^^^ comment.block.go
//                                     ^ constant.numeric.integer.go
//                                        ^^^^ comment.block.go
//                                             ^^^ storage.type.go


// ## struct

    struct{}
//  ^^^^^^ storage.type.go
//        ^ meta.type.go punctuation.section.braces.begin.go
//         ^ meta.type.go punctuation.section.braces.end.go

    struct {field typ}
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go

    struct {field typ;}
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go

    struct {true nil}
//  ^^^^^^ storage.type.go
//          ^^^^ meta.type.go variable.other.member.declaration.go
//               ^^^ meta.type.go storage.type.go

    struct {embed}
//          ^^^^^ meta.type.go entity.other.inherited-class.go

    struct {embed;}
//          ^^^^^ meta.type.go entity.other.inherited-class.go

    struct {embed; field typ; *embed; field typ;}
//  ^^^^^^ storage.type.go
//         ^ meta.type.go punctuation.section.braces.begin.go
//          ^^^^^ meta.type.go entity.other.inherited-class.go
//               ^ meta.type.go punctuation.terminator.go
//                 ^^^^^ meta.type.go variable.other.member.declaration.go
//                       ^^^ meta.type.go storage.type.go
//                          ^ meta.type.go punctuation.terminator.go
//                            ^ meta.type.go keyword.operator.go
//                             ^^^^^ meta.type.go entity.other.inherited-class.go
//                                  ^ meta.type.go punctuation.terminator.go
//                                    ^^^^^ meta.type.go variable.other.member.declaration.go
//                                          ^^^ meta.type.go storage.type.go
//                                             ^ meta.type.go punctuation.terminator.go
//                                              ^ meta.type.go punctuation.section.braces.end.go

    struct
//  ^^^^^^ storage.type.go
    /**/
//  ^^^^ comment.block.go
    {
//  ^ meta.type.go punctuation.section.braces.begin.go
        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
        *embed
//      ^ meta.type.go keyword.operator.go
//       ^^^^^ meta.type.go entity.other.inherited-class.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
        ident.embed
//      ^^^^^ meta.type.go variable.other.go
//           ^ meta.type.go punctuation.accessor.dot.go
//            ^^^^^ meta.type.go entity.other.inherited-class.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
        *ident.embed
//      ^ meta.type.go keyword.operator.go
//       ^^^^^ meta.type.go variable.other.go
//            ^ meta.type.go punctuation.accessor.dot.go
//             ^^^^^ meta.type.go entity.other.inherited-class.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
    }
//  ^ meta.type.go punctuation.section.braces.end.go

    struct {
        ** /**/ ident /**/ . /**/ ident /**/ . /**/ embed
//      ^^ meta.type.go keyword.operator.go
//         ^^^^ meta.type.go comment.block.go
//              ^^^^^ meta.type.go variable.other.go
//                    ^^^^ meta.type.go comment.block.go
//                         ^ meta.type.go punctuation.accessor.dot.go
//                           ^^^^ meta.type.go comment.block.go
//                                ^^^^^ meta.type.go variable.other.go
//                                      ^^^^ meta.type.go comment.block.go
//                                           ^ meta.type.go punctuation.accessor.dot.go
//                                             ^^^^ meta.type.go comment.block.go
//                                                  ^^^^^ meta.type.go entity.other.inherited-class.go

        ** ident /**/ . /**/
//      ^^ meta.type.go keyword.operator.go
//         ^^^^^ meta.type.go variable.other.go
//               ^^^^ meta.type.go comment.block.go
//                    ^ meta.type.go punctuation.accessor.dot.go
//                      ^^^^ meta.type.go comment.block.go
           ident /**/ . /**/
//         ^^^^^ meta.type.go variable.other.go
//               ^^^^ meta.type.go comment.block.go
//                    ^ meta.type.go punctuation.accessor.dot.go
//                      ^^^^ meta.type.go comment.block.go
           embed
//         ^^^^^ meta.type.go entity.other.inherited-class.go
    }

    struct {
        /**/ field /**/ typ /**/
//      ^^^^ meta.type.go comment.block.go
//           ^^^^^ meta.type.go variable.other.member.declaration.go
//                 ^^^^ meta.type.go comment.block.go
//                      ^^^ meta.type.go storage.type.go
//                          ^^^^ meta.type.go comment.block.go
        /**/ field /**/ typ /**/
//      ^^^^ meta.type.go comment.block.go
//           ^^^^^ meta.type.go variable.other.member.declaration.go
//                 ^^^^ meta.type.go comment.block.go
//                      ^^^ meta.type.go storage.type.go
//                          ^^^^ meta.type.go comment.block.go
    }

    struct {
        field, field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//           ^ meta.type.go punctuation.separator.go
//             ^^^^^ meta.type.go variable.other.member.declaration.go
//                   ^^^ meta.type.go storage.type.go
        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go
        field,
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//           ^ meta.type.go punctuation.separator.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
    }

    struct {
        field chan typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.go
//                 ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field <- chan typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^ meta.type.go keyword.operator.go
//               ^^^^ meta.type.go storage.type.go
//                    ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field chan <- typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.go
//                 ^^ meta.type.go keyword.operator.go
//                    ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field func(param typ) typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.func.go
//                ^ meta.type.go punctuation.section.parens.begin.go
//                 ^^^^^ meta.type.go variable.parameter.go
//                       ^^^ meta.type.go storage.type.go
//                          ^ meta.type.go punctuation.section.parens.end.go
//                            ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go


        field func(
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.func.go
            param typ
//          ^^^^^ meta.type.go variable.parameter.go
//                ^^^ meta.type.go storage.type.go
        ) (
            param typ
//          ^^^^^ meta.type.go variable.parameter.go
//                ^^^ meta.type.go storage.type.go
        )

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field map[
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
            typ
//          ^^^ meta.type.go storage.type.go
        ] typ
//      ^ meta.type.go punctuation.section.brackets.end.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field interface{
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^^^^^^ meta.type.go storage.type.go
            method()
//          ^^^^^^ meta.type.go meta.type.go entity.name.function.go
        }

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field struct{
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^^^ meta.type.go storage.type.go
            field typ
//          ^^^^^ meta.type.go meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go meta.type.go storage.type.go
        }

        field [0]typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^ meta.type.go punctuation.section.brackets.begin.go
//             ^ meta.type.go constant.numeric.integer.go
//              ^ meta.type.go punctuation.section.brackets.end.go
//               ^^^ meta.type.go storage.type.go
    }


// ## Array / Slice

    [0]typ
//  ^ punctuation.section.brackets.begin.go
//   ^ constant.numeric.integer.go
//    ^ punctuation.section.brackets.end.go
//     ^^^ storage.type.go

    [0x10]typ
//  ^ punctuation.section.brackets.begin.go
//   ^^^^ constant.numeric.hex.go
//       ^ punctuation.section.brackets.end.go
//        ^^^ storage.type.go

    [0]typ ident
//  ^ punctuation.section.brackets.begin.go
//   ^ constant.numeric.integer.go
//    ^ punctuation.section.brackets.end.go
//     ^^^ storage.type.go
//         ^^^^^ variable.other.go

    [...]typ
//   ^^^ keyword.operator.variadic.go
//       ^^^ storage.type.go

    [...]typ ident
//  ^ punctuation.section.brackets.begin.go
//   ^^^ keyword.operator.variadic.go
//      ^ punctuation.section.brackets.end.go
//       ^^^ storage.type.go
//           ^^^^^ variable.other.go

    []typ
//  ^ punctuation.section.brackets.begin.go
//   ^ punctuation.section.brackets.end.go
//    ^^^ storage.type.go

    [][][]typ ident
//  ^ punctuation.section.brackets.begin.go
//   ^ punctuation.section.brackets.end.go
//    ^ punctuation.section.brackets.begin.go
//     ^ punctuation.section.brackets.end.go
//      ^ punctuation.section.brackets.begin.go
//       ^ punctuation.section.brackets.end.go
//        ^^^ storage.type.go
//            ^^^^^ variable.other.go

    [/**/
//   ^^^^ comment.block.go
     /**/ 0 /**/ ] /**/ typ
//   ^^^^ comment.block.go
//        ^ constant.numeric.integer.go
//          ^^^^ comment.block.go
//                 ^^^^ comment.block.go
//                      ^^^ storage.type.go

    [0]
    ident
//  ^^^^^- storage
//  ^^^^^ variable.other.go

    [/**/
//   ^^^^ comment.block.go
     /**/] /**/ typ
//   ^^^^ comment.block.go
//         ^^^^ comment.block.go
//              ^^^ storage.type.go

    []
    ident
//  ^^^^^- storage
//  ^^^^^ variable.other.go

    []func(
//    ^^^^ storage.type.func.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ ident
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go


// # Type Definitions

    type Type typ
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//            ^^^ storage.type.go

    type
//  ^^^^ storage.type.go
    /**/
//  ^^^^ comment.block.go
    Type /**/ * /**/ * /**/ ident /**/ . /**/
//  ^^^^ entity.name.type.go
//       ^^^^ comment.block.go
//            ^ keyword.operator.go
//              ^^^^ comment.block.go
//                   ^ keyword.operator.go
//                     ^^^^ comment.block.go
//                          ^^^^^ variable.other.go
//                                ^^^^ comment.block.go
//                                     ^ punctuation.accessor.dot.go
//                                       ^^^^ comment.block.go
        /**/ ident /**/ . /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.go
//                 ^^^^ comment.block.go
//                      ^ punctuation.accessor.dot.go
//                        ^^^^ comment.block.go
        /**/ Type
//      ^^^^ comment.block.go
//           ^^^^ storage.type.go

    type Type
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
    ident
//  ^^^^^ variable.other.go

    type Type; ident
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//           ^ punctuation.terminator.go
//             ^^^^^ variable.other.go

    type Type chan typ
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ storage.type.go
//                 ^^^ storage.type.go

    type Type <- chan typ
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//            ^^ keyword.operator.go
//               ^^^^ storage.type.go
//                    ^^^ storage.type.go

    type Type chan <- typ
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ storage.type.go
//                 ^^ keyword.operator.go
//                    ^^^ storage.type.go

    type Type chan typ ident
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ storage.type.go
//                 ^^^ storage.type.go
//                     ^^^^^ variable.other.go

    type Type func(
//            ^^^^ storage.type.func.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ ident
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go

    type Type map[typ]typ ident
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//            ^^^ storage.type.go
//                ^^^ storage.type.go
//                    ^^^ storage.type.go
//                        ^^^^^ variable.other.go

    type Type []typ ident
//  ^^^^ storage.type.go
//       ^^^^ entity.name.type.go
//              ^^^ storage.type.go
//                  ^^^^^ variable.other.go

    type Type interface {
//            ^^^^^^^^^ storage.type.go
        Method()
//      ^^^^^^ meta.type.go entity.name.function.go
        Inherit
//      ^^^^^^^ meta.type.go entity.other.inherited-class.go
    } ident
//    ^^^^^ variable.other.go

    type Type struct {
//            ^^^^^^ storage.type.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
    } ident
//    ^^^^^ variable.other.go

    type (
        Type typ
//      ^^^^ entity.name.type.go
//           ^^^ storage.type.go

        Type typ;
//      ^^^^ entity.name.type.go
//           ^^^ storage.type.go
//              ^ punctuation.terminator.go

        Type typ;;; Type typ
//      ^^^^ entity.name.type.go
//           ^^^ storage.type.go
//              ^^^ punctuation.terminator.go
//                  ^^^^ entity.name.type.go
//                       ^^^ storage.type.go

        Type func(
//      ^^^^ entity.name.type.go
//           ^^^^ storage.type.func.go
        )

        Type map
//      ^^^^ entity.name.type.go
//           ^^^ storage.type.go
        [typ]typ
//       ^^^ storage.type.go
//           ^^^ storage.type.go

        Type []typ
//      ^^^^ entity.name.type.go
//             ^^^ storage.type.go

        Type interface {
//      ^^^^ entity.name.type.go
//           ^^^^^^^^^ storage.type.go
            Method()
//          ^^^^^^ meta.type.go entity.name.function.go
        }

        Type struct {
//      ^^^^ entity.name.type.go
//           ^^^^^^ storage.type.go
            field typ
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go
        }
    )


// # Constants and Vars

// Note: initialization expressions may span multiple lines, but the syntax
// currently doesn't support this due to implementation difficulties. This may
// cause identifiers in those expressions to be incorrectly scoped as constants
// or variables.

// Empty identifier is NOT scoped
    const _ = 10
//  ^^^^^ storage.modifier.const.go
//        ^- constant
//        ^- variable
//        ^- storage
//          ^ keyword.operator.assignment.go
//            ^^ constant.numeric.integer.go

    /**/ const
//  ^^^^ comment.block.go
//       ^^^^^ storage.modifier.const.go
    /**/ CONST0 /**/ int /**/ = /**/ iota /**/
//  ^^^^ comment.block.go
//       ^^^^^^ variable.other.constant.declaration.go
//              ^^^^ comment.block.go
//                   ^^^ storage.type.go
//                       ^^^^ comment.block.go
//                            ^ keyword.operator.assignment.go
//                              ^^^^ comment.block.go
//                                   ^^^^ constant.numeric.integer.go
//                                        ^^^^ comment.block.go

    /**/ const
//  ^^^^ comment.block.go
//       ^^^^^ storage.modifier.const.go
    (
//  ^ punctuation.section.parens.begin.go
        /**/ CONST1 /**/ int /**/ = /**/ iota + iota /**/
//      ^^^^ comment.block.go
//           ^^^^^^ variable.other.constant.declaration.go
//                  ^^^^ comment.block.go
//                       ^^^ storage.type.go
//                           ^^^^ comment.block.go
//                                ^ keyword.operator.assignment.go
//                                  ^^^^ comment.block.go
//                                       ^^^^ constant.numeric.integer.go
//                                            ^ keyword.operator.go
//                                              ^^^^ constant.numeric.integer.go
//                                                   ^^^^ comment.block.go

        /**/ CONST2 /**/ = /**/ CONST1 + 100 /**/
//      ^^^^ comment.block.go
//           ^^^^^^ variable.other.constant.declaration.go
//                  ^^^^ comment.block.go
//                       ^ keyword.operator.assignment.go
//                         ^^^^ comment.block.go
//                              ^^^^^^ variable.other.go
//                                     ^ keyword.operator.go
//                                       ^^^ constant.numeric.integer.go
//                                           ^^^^ comment.block.go

        /**/ CONST3 /**/
//      ^^^^ comment.block.go
//           ^^^^^^ variable.other.constant.declaration.go
//                  ^^^^ comment.block.go

        /**/ CONST4 /**/
//      ^^^^ comment.block.go
//           ^^^^^^ variable.other.constant.declaration.go
//                  ^^^^ comment.block.go

        CONST5,
//      ^^^^^^ variable.other.constant.declaration.go
//            ^ punctuation.separator.go
        CONST6 int = 10, 20
//      ^^^^^^ variable.other.constant.declaration.go
//             ^^^ storage.type.go
//                 ^ keyword.operator.assignment.go
//                   ^^ constant.numeric.integer.go
//                     ^ punctuation.separator.go
//                       ^^ constant.numeric.integer.go

        CONST7,
//      ^^^^^^ variable.other.constant.declaration.go
//            ^ punctuation.separator.go
        CONST8 = CONST5, CONST6
//      ^^^^^^ variable.other.constant.declaration.go
//             ^ keyword.operator.assignment.go
//               ^^^^^^ variable.other.go
//                     ^ punctuation.separator.go
//                       ^^^^^^ variable.other.go

        CONST9,
//      ^^^^^^ variable.other.constant.declaration.go
//            ^ punctuation.separator.go
        CONST10
//      ^^^^^^^ variable.other.constant.declaration.go

// This verifies that we're not still trying to match a type after the preceding
// identifier.

        CONST11,
//      ^^^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
        CONST12
//      ^^^^^^^ variable.other.constant.declaration.go

        CONST13 =
//      ^^^^^^^ variable.other.constant.declaration.go
//              ^ keyword.operator.assignment.go
        "blah"
//      ^^^^^^ string.quoted.double.go

        CONST14 =
//      ^^^^^^^ variable.other.constant.declaration.go
//              ^ keyword.operator.assignment.go
        10
//      ^^ constant.numeric.integer.go

        CONST15 =
//      ^^^^^^^ variable.other.constant.declaration.go
//              ^ keyword.operator.assignment.go
        iota + iota
//      ^^^^ constant.numeric.integer.go
//           ^ keyword.operator.go
//             ^^^^ constant.numeric.integer.go

        iota = iota
//      ^^^^ variable.other.constant.declaration.go
//           ^ keyword.operator.assignment.go
//             ^^^^ constant.numeric.integer.go
    )

// iota is predefined only in constant declarations. It's not a reserved word.
func _() {
    var iota = 0
//  ^^^ storage.modifier.var.go
//      ^^^^ variable.declaration.go
//           ^ keyword.operator.assignment.go
//             ^ constant.numeric.integer.go
    var _ = iota
//  ^^^ storage.modifier.var.go
//        ^ keyword.operator.assignment.go
//          ^^^^ variable.other.go
//          ^^^^- constant
}

    var _ = log.Println
//  ^^^ storage.modifier.var.go
//      ^- constant
//      ^- variable
//      ^- storage
//        ^ keyword.operator.assignment.go
//          ^^^ variable.other.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^^^ variable.other.member.go

    /**/ var
//  ^^^^ comment.block.go
//       ^^^ storage.modifier.var.go
    /**/ VAR0 /**/ int /**/ = /**/ 10 /**/
//  ^^^^ comment.block.go
//       ^^^^ variable.declaration.go
//            ^^^^ comment.block.go
//                 ^^^ storage.type.go
//                     ^^^^ comment.block.go
//                          ^ keyword.operator.assignment.go
//                            ^^^^ comment.block.go
//                                 ^^ constant.numeric.integer.go
//                                    ^^^^ comment.block.go

    /**/ var
//  ^^^^ comment.block.go
//       ^^^ storage.modifier.var.go
    (
//  ^ punctuation.section.parens.begin.go
        /**/ VAR1 /**/ int /**/ = /**/ VAR0 /**/ + /**/ 20 /**/
//      ^^^^ comment.block.go
//           ^^^^ variable.declaration.go
//                ^^^^ comment.block.go
//                     ^^^ storage.type.go
//                         ^^^^ comment.block.go
//                              ^ keyword.operator.assignment.go
//                                ^^^^ comment.block.go
//                                     ^^^^ variable.other.go
//                                          ^^^^ comment.block.go
//                                               ^ keyword.operator.go
//                                                 ^^^^ comment.block.go
//                                                      ^^ constant.numeric.integer.go
//                                                         ^^^^ comment.block.go

        /**/ VAR2 /**/ = /**/ VAR0 + 20 /**/
//      ^^^^ comment.block.go
//           ^^^^ variable.declaration.go
//                ^^^^ comment.block.go
//                     ^ keyword.operator.assignment.go
//                       ^^^^ comment.block.go
//                            ^^^^ variable.other.go
//                                 ^ keyword.operator.go
//                                   ^^ constant.numeric.integer.go
//                                      ^^^^ comment.block.go

        VAR3,
//      ^^^^ variable.declaration.go
//          ^ punctuation.separator.go
        VAR4 int = VAR1, VAR2
//      ^^^^ variable.declaration.go
//           ^^^ storage.type.go
//               ^ keyword.operator.assignment.go
//                 ^^^^ variable.other.go
//                     ^ punctuation.separator.go
//                       ^^^^ variable.other.go
    )
//  ^ punctuation.section.parens.end.go

// ## Short Variable Declaration

    ident := expr
//  ^^^^^ variable.declaration.go
//        ^^ keyword.operator.assignment.go
//           ^^^^ variable.other.go

    ident, ident := expr
//  ^^^^^ variable.declaration.go
//       ^ punctuation.separator.go
//         ^^^^^ variable.declaration.go
//               ^^ keyword.operator.assignment.go
//                  ^^^^ variable.other.go

    ident, ident :=
//  ^^^^^ variable.declaration.go
//       ^ punctuation.separator.go
//         ^^^^^ variable.declaration.go
//               ^^ keyword.operator.assignment.go
    expr
//  ^^^^ variable.other.go

    ident = expr
//  ^^^^^ variable.other.go
//        ^ keyword.operator.assignment.go
//          ^^^^ variable.other.go

// # Literals

// ## Integers

// ### Decimal

    0; 123456789; -0; -123456789;
//  ^ constant.numeric.integer.go
//     ^^^^^^^^^ constant.numeric.integer.go
//                ^ keyword.operator.go
//                 ^ constant.numeric.integer.go
//                    ^ keyword.operator.go
//                     ^^^^^^^^^ constant.numeric.integer.go

// ### Octal

    00; 01234567; -01234567;
//  ^^ constant.numeric.octal.go
//      ^^^^^^^^ constant.numeric.octal.go
//                ^ keyword.operator.go
//                 ^^^^^^^^ constant.numeric.octal.go

    08; 09;
//  ^^ invalid.illegal.go
//      ^^ invalid.illegal.go

// ### Hex

    0x0; 0x0123456789ABCDEFabcdef; -0x0123456789ABCDEFabcdef;
//  ^^^ constant.numeric.hex.go
//       ^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.hex.go
//                                 ^ keyword.operator.go
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.hex.go

// ## Floats

    000.000; 123.456; .0; 1.;
//  ^^^^^^^ constant.numeric.float.go
//           ^^^^^^^ constant.numeric.float.go
//                    ^^ invalid.deprecated.go
//                        ^^ invalid.deprecated.go

    -000.000; -123.456; -.0; -1.;
//  ^ keyword.operator.go
//   ^^^^^^^ constant.numeric.float.go
//            ^ keyword.operator.go
//             ^^^^^^^ constant.numeric.float.go
//                      ^ keyword.operator.go
//                       ^^ invalid.deprecated.go
//                           ^ keyword.operator.go
//                            ^^ invalid.deprecated.go

    0e+0; 0E+0; 0.0e+0; 0.0E+0; 123.456e+789;
//  ^^^^ constant.numeric.float.go
//        ^^^^ constant.numeric.float.go
//              ^^^^^^ constant.numeric.float.go
//                      ^^^^^^ constant.numeric.float.go
//                              ^^^^^^^^^^^^ constant.numeric.float.go

    0.e+0; .0e+0;
//  ^^^^^ invalid.deprecated.go
//         ^^^^^ invalid.deprecated.go

// ## Imaginary

    000i; 100i; -100i;
//  ^^^^ constant.numeric.imaginary.go
//        ^^^^ constant.numeric.imaginary.go
//              ^ keyword.operator.go
//               ^^^^ constant.numeric.imaginary.go

    123.456i; -123.456i;
//  ^^^^^^^^ constant.numeric.imaginary.go
//            ^ keyword.operator.go
//             ^^^^^^^^ constant.numeric.imaginary.go

    0.i; .0i; -0.i; -.0i;
//  ^^^ invalid.deprecated.go
//       ^^^ invalid.deprecated.go
//            ^ keyword.operator.go
//             ^^^ invalid.deprecated.go
//                  ^ keyword.operator.go
//                   ^^^ invalid.deprecated.go

// ## Runes

    ' '
//  ^^^ constant.character.go

    '0'
//  ^^^ constant.character.go

// Escapes:

    '\n'
//  ^^^^ constant.character.go
//   ^^ constant.character.go constant.character.escape.go

    '\x00'
//  ^^^^^^ constant.character.go
//   ^^^^ constant.character.go constant.character.escape.go

    '\u0000'
//  ^^^^^^^^ constant.character.go
//   ^^^^^^ constant.character.go constant.character.escape.go

    '\U00000000'
//  ^^^^^^^^^^^^ constant.character.go
//   ^^^^^^^^^^ constant.character.go constant.character.escape.go

    '\000'
//  ^^^^^^ constant.character.go
//   ^^^^ constant.character.go constant.character.escape.go

// ## Strings

    "one two"
//  ^ punctuation.definition.string.begin.go
//  ^^^^^^^^^ string.quoted.double.go
//          ^ punctuation.definition.string.end.go
    "one \\ \n two"
//  ^^^^^^^^^^^^^^^ string.quoted.double.go
//       ^^ constant.character.escape.go
    "one %% two"
//  ^^^^^^^^^^^^ string.quoted.double.go
//       ^^ constant.character.escape.go
    "one % two"
//  ^^^^^^^^^^^ string.quoted.double.go
//       ^^^ constant.other.placeholder.go
    "one %v two"
//  ^^^^^^^^^^^^ string.quoted.double.go
//       ^^ constant.other.placeholder.go
    "one %+v two"
//  ^^^^^^^^^^^^^ string.quoted.double.go
//       ^^^ constant.other.placeholder.go
    "one %1.2d two"
//  ^^^^^^^^^^^^^^^ string.quoted.double.go
//       ^^^^^ constant.other.placeholder.go
    "%"
//  ^^^ string.quoted.double.go
//   ^- constant.other.placeholder

    "one /* two */ three"
//  ^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.go
//  ^^^^^^^^^^^^^^^^^^^^^- comment

    `one two`
//  ^ punctuation.definition.string.begin.go
//  ^^^^^^^^^ string.quoted.other.go
//          ^ punctuation.definition.string.end.go
    `one \\ \n two`
//  ^^^^^^^^^^^^^^^ string.quoted.other.go
//  ^^^^^^^^^^^^^^^- constant.character.escape
    `one %% two`
//  ^^^^^^^^^^^^ string.quoted.other.go
//       ^^ constant.character.escape.go
    `one % two`
//  ^^^^^^^^^^^ string.quoted.other.go
//       ^^^ constant.other.placeholder.go
    `one %v two`
//  ^^^^^^^^^^^^ string.quoted.other.go
//       ^^ constant.other.placeholder.go
    `one %+v two`
//  ^^^^^^^^^^^^^ string.quoted.other.go
//       ^^^ constant.other.placeholder.go
    `one %1.2d two`
//  ^^^^^^^^^^^^^^^ string.quoted.other.go
//       ^^^^^ constant.other.placeholder.go
    `%`
//  ^^^ string.quoted.other.go
//   ^- constant.other.placeholder

    `
//  ^ string.quoted.other.go punctuation.definition.string.begin.go
    one
//  ^^^ string.quoted.other.go
    two
//  ^^^ string.quoted.other.go
    three
//  ^^^^^ string.quoted.other.go
    `
//  ^ string.quoted.other.go punctuation.definition.string.end.go

    `one /* two */ three`
//  ^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.go
//  ^^^^^^^^^^^^^^^^^^^^^- comment


// # Operators

    !=
//  ^^ keyword.operator.go
    !
//  ^ keyword.operator.go
    %=
//  ^^ keyword.operator.assignment.go
    %
//  ^ keyword.operator.go
    &&
//  ^^ keyword.operator.go
    &=
//  ^^ keyword.operator.assignment.go
    &^=
//  ^ keyword.operator.go
    &^
//  ^^ keyword.operator.go
    &
//  ^ keyword.operator.go
    *=
//  ^^ keyword.operator.assignment.go
    *
//  ^ keyword.operator.go
    ++
//  ^^ keyword.operator.go
    +=
//  ^^ keyword.operator.assignment.go
    +
//  ^ keyword.operator.go
    --
//  ^^ keyword.operator.assignment.go
    -=
//  ^^ keyword.operator.assignment.go
    -
//  ^ keyword.operator.go
    /=
//  ^^ keyword.operator.assignment.go
    /
//  ^ keyword.operator.go
    :=
//  ^^ keyword.operator.assignment.go
    <-
//  ^^ keyword.operator.go
    <
//  ^ keyword.operator.go
    <<=
//  ^^ keyword.operator.go
    <<
//  ^^ keyword.operator.go
    <=
//  ^ keyword.operator.go
    ==
//  ^^ keyword.operator.go
    =
//  ^ keyword.operator.assignment.go
    >=
//  ^^ keyword.operator.assignment.go
    >>=
//  ^^^ keyword.operator.assignment.go
    >>
//  ^^ keyword.operator.go
    >
//  ^ keyword.operator.go
    ^=
//  ^^ keyword.operator.assignment.go
    ^
//  ^ keyword.operator.go
    |=
//  ^^ keyword.operator.assignment.go
    ||
//  ^^ keyword.operator.go
    |
//  ^ keyword.operator.go


// # Punctuation

// Note: [] can denote array and slice types. It's covered in the type section.

    , ... : ; . () [] {}
//  ^ punctuation.separator.go
//    ^^^ keyword.operator.variadic.go
//        ^ punctuation.separator.go
//          ^ punctuation.terminator.go
//            ^ punctuation.accessor.dot.go
//              ^ punctuation.section.parens.begin.go
//               ^ punctuation.section.parens.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^ punctuation.section.brackets.end.go
//                    ^ meta.block.go punctuation.section.braces.begin.go
//                     ^ meta.block.go punctuation.section.braces.end.go

    {
//  ^ meta.block.go punctuation.section.braces.begin.go
        ident
//      ^^^^^ meta.block.go variable.other.go
    }
//  ^ meta.block.go punctuation.section.braces.end.go

// ## Selector

// ### Member

    ident.ident
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.other.member.go

    ident.ident.ident
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.other.member.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^ variable.other.member.go

    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    ident /**/ . /**/
//  ^^^^^ variable.other.member.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    ident
//  ^^^^^ variable.other.member.go

// ### Type Assertion

    ident.(ident)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//         ^^^^^ storage.type.go

    ident
//  ^^^^^ variable.other.go
    /**/./**/
//      ^ punctuation.accessor.dot.go
    (/* ident */ ident /* ident */ ident)
//   ^^^^^^^^^^^ comment.block.go
//               ^^^^^ storage.type.go
//                     ^^^^^^^^^^^ comment.block.go
//                                 ^^^^^ variable.other.go

    ident.(chan int)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//         ^^^^ storage.type.go
//              ^^^ storage.type.go

    ident.(***ident)
//         ^^^ keyword.operator.go
//            ^^^^^ storage.type.go

    ident.((***ident))
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^ punctuation.section.parens.begin.go
//          ^^^ keyword.operator.go
//             ^^^^^ storage.type.go
//                  ^^ punctuation.section.parens.end.go

    ident.ident.ident.(ident.ident)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.other.member.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^ variable.other.member.go
//                   ^ punctuation.accessor.dot.go
//                    ^ punctuation.section.parens.begin.go
//                     ^^^^^ variable.other.go
//                          ^ punctuation.accessor.dot.go
//                           ^^^^^ storage.type.go
//                                ^ punctuation.section.parens.end.go

    ((ident.ident.ident)).((ident.ident))
//  ^^ punctuation.section.parens.begin.go
//    ^^^^^ variable.other.go
//         ^ punctuation.accessor.dot.go
//          ^^^^^ variable.other.member.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.member.go
//                     ^^ punctuation.section.parens.end.go
//                       ^ punctuation.accessor.dot.go
//                        ^^ punctuation.section.parens.begin.go
//                          ^^^^^ variable.other.go
//                               ^ punctuation.accessor.dot.go
//                                ^^^^^ storage.type.go
//                                     ^^ punctuation.section.parens.end.go

// Note: at the time of writing, in Go 1, types can be nested only in modules.
// Doubly-nested types don't exist. This may change in the future. We still make
// sure that the syntax doesn't do something weird.

    ident.(ident.ident.ident)
//         ^^^^^ variable.other.go
//              ^ punctuation.accessor.dot.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^^^ storage.type.go

    ident.((ident.ident.ident))
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^^^ storage.type.go

// ## Parens

// Note: we can't syntactically disambiguate calls and casts.

    ident()
//  ^^^^ variable.function.go

    ident /**/ (
//  ^^^^ variable.function.go
    )

    ident.ident()
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.function.go

    ident
//  ^^^^^ variable.other.go
    /**/./**/
//      ^ punctuation.accessor.dot.go
    ident()
//  ^^^^^ variable.function.go

    ident.ident.ident(ident)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.other.member.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^ variable.function.go
//                   ^ punctuation.section.parens.begin.go
//                    ^^^^^ variable.other.go
//                         ^ punctuation.section.parens.end.go

    ident /**/ . /**/
//  ^^^^^ variable.other.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    ident /**/ . /**/
//  ^^^^^ variable.other.member.go
//        ^^^^ comment.block.go
//             ^ punctuation.accessor.dot.go
//               ^^^^ comment.block.go
    ident /**/ ((/**/ ident /**/))
//  ^^^^^ variable.function.go
//        ^^^^ comment.block.go
//             ^^ punctuation.section.parens.begin.go
//               ^^^^ comment.block.go
//                    ^^^^^ variable.other.go
//                          ^^^^ comment.block.go
//                              ^^ punctuation.section.parens.end.go

    (ident)
//   ^^^^^ variable.other.go

    (ident)(ident)
//   ^^^^^ variable.function.go
//          ^^^^^ variable.other.go

    ((ident))((ident))
//  ^^ punctuation.section.parens.begin.go
//    ^^^^^ variable.function.go
//         ^^ punctuation.section.parens.end.go
//           ^^ punctuation.section.parens.begin.go
//             ^^^^^ variable.other.go
//                  ^^ punctuation.section.parens.end.go

    ((
//  ^^ punctuation.section.parens.begin.go
        ident /**/ . /**/
//      ^^^^^ variable.other.go
//            ^^^^ comment.block.go
//                 ^ punctuation.accessor.dot.go
//                   ^^^^ comment.block.go
        ident /**/ . /**/
//      ^^^^^ variable.other.member.go
//            ^^^^ comment.block.go
//                 ^ punctuation.accessor.dot.go
//                   ^^^^ comment.block.go
        ident /**/ )) /**/ ((
//      ^^^^^ variable.function.go
//            ^^^^ comment.block.go
//                 ^^ punctuation.section.parens.end.go
//                    ^^^^ comment.block.go
//                         ^^ punctuation.section.parens.begin.go
        ident
//      ^^^^^ variable.other.go
    ))
//  ^^ punctuation.section.parens.end.go

    (*chan int)(ident)
//   ^ keyword.operator.go
//    ^^^^ storage.type.go
//         ^^^ storage.type.go
//              ^^^^^ variable.other.go

    map[typ]typ(ident)
//  ^^^ storage.type.go
//      ^^^ storage.type.go
//          ^^^ storage.type.go
//              ^^^^^ variable.other.go

    (map[typ]typ)(ident)
//   ^^^ storage.type.go
//       ^^^ storage.type.go
//           ^^^ storage.type.go
//                ^^^^^ variable.other.go

    []byte(ident)
//    ^^^^ storage.type.go
//         ^^^^^ variable.other.go

    ([]byte)(ident)
//     ^^^^ storage.type.go
//           ^^^^^ variable.other.go


// # Keywords

// Some keywords are covered elsewhere in the test.

    break
//  ^^^^^ keyword.control.go
    case
//  ^^^^ keyword.control.go
    continue
//  ^^^^^^^^ keyword.control.go
    default
//  ^^^^^^^ keyword.control.go
    defer
//  ^^^^^ keyword.control.go
    else
//  ^^^^ keyword.control.go
    fallthrough
//  ^^^^^^^^^^^ keyword.control.go
    for
//  ^^^ keyword.control.go
    go
//  ^^ keyword.control.go
    goto
//  ^^^^ keyword.control.go
    if
//  ^^ keyword.control.go
    range
//  ^^^^^ keyword.other.go
    return
//  ^^^^^^ keyword.control.go
    select
//  ^^^^^^ keyword.control.go
    switch
//  ^^^^^^ keyword.control.go

// ## func

// Note: function signatures are thoroughly tested in the section of this test
// file dedicated to types. The part after the function name (parameters and
// return signature) is EXACTLY the same for function declarations, method
// declarations, anonymous functions, and function types.

    func() {}
//  ^^^^ storage.type.func.go
//      ^ punctuation.section.parens.begin.go
//       ^ punctuation.section.parens.end.go
//         ^ meta.block.go punctuation.section.braces.begin.go
//          ^ meta.block.go punctuation.section.braces.end.go

    func ident() {}
//  ^^^^ storage.type.func.go
//       ^^^^^ entity.name.function.go
//            ^ punctuation.section.parens.begin.go
//             ^ punctuation.section.parens.end.go
//               ^ meta.block.go punctuation.section.braces.begin.go
//                ^ meta.block.go punctuation.section.braces.end.go

    func ident /**/ () {}
//  ^^^^ storage.type.func.go
//       ^^^^^ entity.name.function.go
//             ^^^^ comment.block.go

    func ident /* * */ () {}
//  ^^^^ storage.type.func.go
//       ^^^^^ entity.name.function.go
//             ^^^^^^^ comment.block.go

    func ident(
//  ^^^^ storage.type.func.go
//       ^^^^^ entity.name.function.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ {}
//    ^^^ storage.type.go

// Methods

    func (self Type) Method() {}
//       ^ meta.function.declaration.go punctuation.section.parens.begin.go
//        ^^^^ meta.function.declaration.go variable.parameter.go
//             ^^^^ meta.function.declaration.go storage.type.go
//                 ^ meta.function.declaration.go punctuation.section.parens.end.go
//                   ^^^^^^ meta.function.declaration.go entity.name.function.go
//                         ^ punctuation.section.parens.begin.go
//                          ^ punctuation.section.parens.end.go

    func (Type) Method() {}
//  ^^^^ storage.type.func.go
//       ^ meta.function.declaration.go punctuation.section.parens.begin.go
//        ^^^^ meta.function.declaration.go storage.type.go
//            ^ meta.function.declaration.go punctuation.section.parens.end.go
//              ^^^^^^ meta.function.declaration.go entity.name.function.go
//                    ^ punctuation.section.parens.begin.go
//                     ^ punctuation.section.parens.end.go

    func /**/
//  ^^^^ storage.type.func.go
//       ^^^^ comment.block.go
    ( /**/ self /**/ * /**/ ident /**/ . /**/ Type /**/ ) /**/ Method /**/ (
//  ^ meta.function.declaration.go punctuation.section.parens.begin.go
//    ^^^^ meta.function.declaration.go comment.block.go
//         ^^^^ meta.function.declaration.go variable.parameter.go
//              ^^^^ meta.function.declaration.go comment.block.go
//                   ^ meta.function.declaration.go keyword.operator.go
//                     ^^^^ meta.function.declaration.go comment.block.go
//                          ^^^^^ meta.function.declaration.go variable.other.go
//                                ^^^^ meta.function.declaration.go comment.block.go
//                                     ^ meta.function.declaration.go punctuation.accessor.dot.go
//                                       ^^^^ meta.function.declaration.go comment.block.go
//                                            ^^^^ meta.function.declaration.go storage.type.go
//                                                 ^^^^ meta.function.declaration.go comment.block.go
//                                                      ^ meta.function.declaration.go punctuation.section.parens.end.go
//                                                        ^^^^ meta.function.declaration.go comment.block.go
//                                                             ^^^^^^ meta.function.declaration.go entity.name.function.go
//                                                                    ^^^^ comment.block.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ {}
//    ^^^ storage.type.go
//        ^ meta.block.go punctuation.section.braces.begin.go
//         ^ meta.block.go punctuation.section.braces.end.go

// # Identifiers

    true false nil
//  ^^^^ constant.language.go
//       ^^^^^ constant.language.go
//             ^^^ constant.language.go

    new(typ)
//  ^^^ variable.function.go
//     ^ punctuation.section.parens.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.section.parens.end.go

    new /**/ (
//  ^^^ variable.function.go
//      ^^^^ comment.block.go
        /**/ typ /**/ ,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go
//               ^^^^ comment.block.go
    )

    make(typ)
//  ^^^^ variable.function.go
//      ^ punctuation.section.parens.begin.go
//       ^^^ storage.type.go
//          ^ punctuation.section.parens.end.go

    make /**/ (
//  ^^^^ variable.function.go
//       ^^^^ comment.block.go
        /**/ typ /**/,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go
//               ^^^^ comment.block.go
        ident,
//      ^^^^^ variable.other.go
        ident,
//      ^^^^^ variable.other.go
    )
