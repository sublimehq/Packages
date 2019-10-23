// SYNTAX TEST "Go.sublime-syntax"

/*
NOTES

This file is not intended to pass compilation or `go vet`.

This file must not be formatted with `go fmt`.

You may have to disable Go-specific linters when working on this file.
*/


// # Comments

    //
// ^ -comment -punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^ comment.line.go

    // comment // comment
// ^ -comment -punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^^^^^^^^^^ comment.line.go
//             ^^ -punctuation

    /* comment // comment */  // comment
// ^ -comment -punctuation
//  ^^ punctuation.definition.comment.begin.go
//  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.go
//             ^^ -punctuation
//                        ^^ punctuation.definition.comment.end.go
//                          ^^ -comment -punctuation
//                            ^^ punctuation.definition.comment.go
//                            ^^^^^^^^^^^ comment.line.go

    /*
// ^ -comment
//  ^^^^ comment.block.go
    comment
//  ^^^^^^^^ comment.block.go
    */
//  ^^ comment.block.go
//    ^ -comment

    /* * */
// ^ -comment
//  ^^^^^^^ comment.block.go
//         ^ -comment

    /**
     *
//   ^ comment.block.go punctuation.definition.comment.go
    */

    //go
// ^ -comment -punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^ comment.line.go -meta.annotation

    //go:
// ^ -comment -meta -punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^ comment.line.go meta.annotation.go
//       ^ comment.line.go -meta.annotation

    //go:generate one two three
// ^ -comment -meta -punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.go meta.annotation.go
//                             ^ comment.line.go -meta.annotation


// # Imports

    package main
//  ^^^^^^^ keyword.other.package.go
//         ^^^^^ -keyword

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


// # Type Keywords and Syntax

/*
Type keywords are tested early because they're used in many other tests.

Note: Go permits an arbitrary number of parens around a type.

Note: built-ins are tested separately. Search for "# Built-in Types".
*/

// ## chan

    chan _
//  ^^^^ storage.type.keyword.chan.go
//       ^ variable.language.blank.go

    chan typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^^ storage.type.go

    chan typ ident
//  ^^^^ storage.type.keyword.chan.go
//       ^^^ storage.type.go
//           ^^^^^ variable.other.go

    chan ((typ))
//  ^^^^ storage.type.keyword.chan.go
//       ^^ punctuation.section.parens.begin.go
//         ^^^ storage.type.go
//            ^^ punctuation.section.parens.end.go

    chan ident.typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^ storage.type.go

    chan ident.ident.typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^^ variable.other.go
//                  ^ punctuation.accessor.dot.go
//                   ^^^ storage.type.go

    chan ((ident.ident.typ))
//  ^^^^ storage.type.keyword.chan.go
//       ^^ punctuation.section.parens.begin.go
//         ^^^^^ variable.other.go
//              ^ punctuation.accessor.dot.go
//               ^^^^^ variable.other.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^ storage.type.go
//                        ^^ punctuation.section.parens.end.go

    <- chan ident.typ
//  ^^ keyword.operator.go
//     ^^^^ storage.type.keyword.chan.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^ storage.type.go

    <- chan ident.ident.typ
//  ^^ keyword.operator.go
//     ^^^^ storage.type.keyword.chan.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^ storage.type.go

    chan <- ident.typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^ keyword.operator.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^ storage.type.go

    chan <- ident.ident.typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^ keyword.operator.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^ storage.type.go

    chan
//  ^^^^ storage.type.keyword.chan.go
    typ
//  ^^^ storage.type.go

    chan
//  ^^^^ storage.type.keyword.chan.go
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
//  ^^^^ storage.type.keyword.chan.go
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
//  ^^^^ storage.type.keyword.chan.go
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
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^ storage.type.keyword.chan.go
//            ^^^^ storage.type.keyword.chan.go
//                 ^^^ storage.type.go

    chan *chan **chan ***typ
//  ^^^^ storage.type.keyword.chan.go
//       ^ keyword.operator.go
//        ^^^^ storage.type.keyword.chan.go
//             ^^ keyword.operator.go
//               ^^^^ storage.type.keyword.chan.go
//                    ^^^ keyword.operator.go
//                       ^^^ storage.type.go

    chan struct{}
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^^^ storage.type.keyword.struct.go

    chan struct{} ident
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^^^ storage.type.keyword.struct.go
//                ^^^^^ variable.other.go

    chan interface{}
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^^^^^^ storage.type.keyword.interface.go

    chan interface{} ident
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^^^^^^ storage.type.keyword.interface.go
//                   ^^^^^ variable.other.go

    chan func() func() typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^ storage.type.keyword.function.go
//              ^^^^ storage.type.keyword.function.go
//                     ^^^ storage.type.go

    chan func() func() typ ident
//  ^^^^ storage.type.keyword.chan.go
//       ^^^^ storage.type.keyword.function.go
//              ^^^^ storage.type.keyword.function.go
//                     ^^^ storage.type.go
//                         ^^^^^ variable.other.go

    chan
//  ^^^^ storage.type.keyword.chan.go
    func() typ
//  ^^^^ storage.type.keyword.function.go
//         ^^^ storage.type.go

    chan []typ
//  ^^^^ storage.type.keyword.chan.go
//         ^^^ storage.type.go

    chan [][][]typ
//  ^^^^ storage.type.keyword.chan.go
//             ^^^ storage.type.go

    chan map[typ]typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^^ storage.type.keyword.map.go
//           ^^^ storage.type.go
//               ^^^ storage.type.go


// ## func

// Note: a function type and the beginning of a non-method function declaration
// are parsed EXACTLY the same. Function types may contain parameter names.
// These tests wouldn't be valid Go code by themselves, but they are valid
// function types.

    func()
//  ^^^^ storage.type.keyword.function.go
//      ^ punctuation.section.parens.begin.go
//       ^ punctuation.section.parens.end.go

    func(typ, typ)
//  ^^^^ storage.type.keyword.function.go
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
//  ^^^^ storage.type.keyword.function.go
    ident
//  ^^^^^ variable.other.go -storage

    func(true false) (nil iota)
//  ^^^^ storage.type.keyword.function.go
//       ^^^^ variable.parameter.go
//            ^^^^^ storage.type.go
//                    ^^^ variable.parameter.go
//                        ^^^^ storage.type.go

    func(param...typ)
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go

    func(param /**/ ... /**/ typ)
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ variable.parameter.go
//             ^^^^ comment.block.go
//                  ^^^ keyword.operator.variadic.go
//                      ^^^^ comment.block.go
//                           ^^^ storage.type.go

    func(param ((typ)), param ...typ)
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ variable.parameter.go
//               ^^^ storage.type.go
//                      ^^^^^ variable.parameter.go
//                            ^^^ keyword.operator.variadic.go
//                               ^^^ storage.type.go

    func(param, param ((typ)), param, param ...typ)
//  ^^^^ storage.type.keyword.function.go
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
// scoping the first identifier, we don't know whether it's a name or a type.
// In this scenario, we default to unnamed parameters, because named groups
// and their type are nearly always written on the same line.
    func(
        param,
//      ^^^^^ storage.type.go
        param typ,
//      ^^^^^ storage.type.go
//            ^^^ storage.type.go
    )

    func(
        param, param []typ,
//      ^^^^^ variable.parameter.go
//             ^^^^^ variable.parameter.go
//                     ^^^ storage.type.go
        param ...typ,
//      ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go
    )

    func(
        param, param (([]typ)),
//      ^^^^^ variable.parameter.go
//             ^^^^^ variable.parameter.go
//                       ^^^ storage.type.go
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
//  ^^^^ storage.type.keyword.function.go
//       ^^^ keyword.operator.variadic.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^ storage.type.go

    func(...*ident.Type)
//  ^^^^ storage.type.keyword.function.go
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
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go

    func(param...ident.Type)
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^^^ variable.other.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^^ storage.type.go

    func(param...*ident.Type)
//  ^^^^ storage.type.keyword.function.go
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
//  ^^^^ storage.type.keyword.function.go
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
//  ^^^^ storage.type.keyword.function.go
//         ^^^^ storage.type.keyword.function.go
//                ^^^^ storage.type.keyword.function.go
//                       ^^^ storage.type.go

    func() func() func() ((typ))
//                         ^^^ storage.type.go

// Deranged case
    func(param func(param func(param ...typ) func() typ) ...func(param typ))
//  ^^^^ storage.type.keyword.function.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^^ variable.parameter.go
//             ^^^^ storage.type.keyword.function.go
//                 ^ punctuation.section.parens.begin.go
//                  ^^^^^ variable.parameter.go
//                        ^^^^ storage.type.keyword.function.go
//                            ^ punctuation.section.parens.begin.go
//                             ^^^^^ variable.parameter.go
//                                   ^^^ keyword.operator.variadic.go
//                                      ^^^ storage.type.go
//                                         ^ punctuation.section.parens.end.go
//                                           ^^^^ storage.type.keyword.function.go
//                                               ^ punctuation.section.parens.begin.go
//                                                ^ punctuation.section.parens.end.go
//                                                  ^^^ storage.type.go
//                                                     ^ punctuation.section.parens.end.go
//                                                       ^^^ keyword.operator.variadic.go
//                                                          ^^^^ storage.type.keyword.function.go
//                                                              ^ punctuation.section.parens.begin.go
//                                                               ^^^^^ variable.parameter.go
//                                                                     ^^^ storage.type.go
//                                                                        ^^ punctuation.section.parens.end.go


// ## interface

    interface{}
//  ^^^^^^^^^ storage.type.keyword.interface.go
//           ^ meta.type.go punctuation.section.braces.begin.go
//            ^ meta.type.go punctuation.section.braces.end.go

    interface /**/ {
//  ^^^^^^^^^ storage.type.keyword.interface.go
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

        Inherit // comment
//      ^^^^^^^ meta.type.go entity.other.inherited-class.go
//              ^^^^^^^^^^^ meta.type.go comment.line.go

        Inherit /* comment */
//      ^^^^^^^ meta.type.go entity.other.inherited-class.go
//              ^^^^^^^^^^^^^ meta.type.go comment.block.go

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
//  ^^^^^^^^^ storage.type.keyword.interface.go
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
//  ^^^ storage.type.keyword.map.go
//     ^ punctuation.section.brackets.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.section.brackets.end.go
//          ^^^ storage.type.go

    map[typ]typ ident
//  ^^^ storage.type.keyword.map.go
//     ^ punctuation.section.brackets.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.section.brackets.end.go
//          ^^^ storage.type.go
//              ^^^^^ variable.other.go -storage

    map[typ]
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.go
    ident
//  ^^^^^ variable.other.go

    map /**/ [/**/ typ /**/] /**/ typ
//  ^^^ storage.type.keyword.map.go
//      ^^^^ comment.block.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^ comment.block.go
//                 ^^^ storage.type.go
//                     ^^^^ comment.block.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^ comment.block.go
//                                ^^^ storage.type.go

    map /**/
//  ^^^ storage.type.keyword.map.go
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
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.go
//          ^^^ storage.type.keyword.map.go
//              ^^^ storage.type.go
//                  ^^^ storage.type.keyword.map.go
//                      ^^^ storage.type.go
//                          ^^^ storage.type.keyword.map.go
//                              ^^^ storage.type.go
//                                  ^^^ storage.type.go

    map[chan chan typ]chan chan typ ident
//  ^^^ storage.type.keyword.map.go
//      ^^^^ storage.type.keyword.chan.go
//           ^^^^ storage.type.keyword.chan.go
//                ^^^ storage.type.go
//                    ^^^^ storage.type.keyword.chan.go
//                         ^^^^ storage.type.keyword.chan.go
//                              ^^^ storage.type.go
//                                  ^^^^^ variable.other.go

    map[<- chan typ] chan <- typ
//  ^^^ storage.type.keyword.map.go
//      ^^ keyword.operator.go
//         ^^^^ storage.type.keyword.chan.go
//              ^^^ storage.type.go
//                   ^^^^ storage.type.keyword.chan.go
//                        ^^ keyword.operator.go
//                           ^^^ storage.type.go

    map[func(param typ) typ]func(param typ) typ
//  ^^^ storage.type.keyword.map.go
//      ^^^^ storage.type.keyword.function.go
//           ^^^^^ variable.parameter.go
//                 ^^^ storage.type.go
//                      ^^^ storage.type.go
//                          ^^^^ storage.type.keyword.function.go
//                               ^^^^^ variable.parameter.go
//                                     ^^^ storage.type.go
//                                          ^^^ storage.type.go

    map[map[typ]typ]map[typ]typ
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.keyword.map.go
//          ^^^ storage.type.go
//              ^^^ storage.type.go
//                  ^^^ storage.type.keyword.map.go
//                      ^^^ storage.type.go
//                          ^^^ storage.type.go

    map[struct{
//  ^^^ storage.type.keyword.map.go
//      ^^^^^^ storage.type.keyword.struct.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
    }] struct {
//     ^^^^^^ storage.type.keyword.struct.go
//             ^ meta.type.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
//               ^ meta.type.go
    }

    map[*typ]*typ
//  ^^^ storage.type.keyword.map.go
//      ^ keyword.operator.go
//       ^^^ storage.type.go
//           ^ keyword.operator.go
//            ^^^ storage.type.go

    map[ident.Type]ident.Type
//  ^^^ storage.type.keyword.map.go
//      ^^^^^ variable.other.go
//           ^ punctuation.accessor.dot.go
//            ^^^^ storage.type.go
//                 ^^^^^ variable.other.go
//                      ^ punctuation.accessor.dot.go
//                       ^^^^ storage.type.go

    map[*ident.Type]*ident.Type
//  ^^^ storage.type.keyword.map.go
//      ^ keyword.operator.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^ storage.type.go
//                  ^ keyword.operator.go
//                   ^^^^^ variable.other.go
//                        ^ punctuation.accessor.dot.go
//                         ^^^^ storage.type.go

    map[typ]ident /**/ . /**/
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.go
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
//  ^^^ storage.type.keyword.map.go
//       ^ constant.numeric.integer.go
//         ^^^ storage.type.go
//              ^ constant.numeric.integer.go
//                ^^^ storage.type.go

    map[/**/ [0] /**/ typ /**/ ] /**/ [0] /**/ typ
//  ^^^ storage.type.keyword.map.go
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
//  ^^^^^^ storage.type.keyword.struct.go
//        ^ meta.type.go punctuation.section.braces.begin.go
//         ^ meta.type.go punctuation.section.braces.end.go

    struct {field typ}
//  ^^^^^^ storage.type.keyword.struct.go
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go

    struct {field typ;}
//  ^^^^^^ storage.type.keyword.struct.go
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go

    struct {true nil}
//  ^^^^^^ storage.type.keyword.struct.go
//          ^^^^ meta.type.go variable.other.member.declaration.go
//               ^^^ meta.type.go storage.type.go

    struct {embed}
//  ^^^^^^ storage.type.keyword.struct.go
//          ^^^^^ meta.type.go entity.other.inherited-class.go

    struct {embed;}
//  ^^^^^^ storage.type.keyword.struct.go
//          ^^^^^ meta.type.go entity.other.inherited-class.go

    struct {embed; field typ; *embed; field typ;}
//  ^^^^^^ storage.type.keyword.struct.go
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

    struct {
//  ^^^^^^ storage.type.keyword.struct.go
        field typ `json:"field"`
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
//                ^^^^^^^^^^^^^^ meta.type.go string.quoted.other.go
        field /**/ typ /**/ `json:"field"`
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go comment.block.go
//                 ^^^ meta.type.go storage.type.go
//                     ^^^^ meta.type.go comment.block.go
//                          ^^^^^^^^^^^^^^ meta.type.go string.quoted.other.go
        typ       `json:"-"`
//      ^^^ meta.type.go entity.other.inherited-class.go
//                ^^^^^^^^^^ meta.type.go string.quoted.other.go
        typ /**/  `json:"-"`
//      ^^^ meta.type.go entity.other.inherited-class.go
//          ^^^^ meta.type.go comment.block.go
//                ^^^^^^^^^^ meta.type.go string.quoted.other.go
        typ
//      ^^^ meta.type.go entity.other.inherited-class.go

        typ // comment
//      ^^^ meta.type.go entity.other.inherited-class.go
//          ^^^^^^^^^^^ meta.type.go comment.line.go

        typ /* comment */
//      ^^^ meta.type.go entity.other.inherited-class.go
//          ^^^^^^^^^^^^^ meta.type.go comment.block.go
    }

    struct
//  ^^^^^^ storage.type.keyword.struct.go
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
//  ^^^^^^ storage.type.keyword.struct.go
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
//  ^^^^^^ storage.type.keyword.struct.go
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
//  ^^^^^^ storage.type.keyword.struct.go
        field chan typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.keyword.chan.go
//                 ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field <- chan typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^ meta.type.go keyword.operator.go
//               ^^^^ meta.type.go storage.type.keyword.chan.go
//                    ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field chan <- typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.keyword.chan.go
//                 ^^ meta.type.go keyword.operator.go
//                    ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field func(param typ) typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.keyword.function.go
//                ^ meta.type.go punctuation.section.parens.begin.go
//                 ^^^^^ meta.type.go variable.parameter.go
//                       ^^^ meta.type.go storage.type.go
//                          ^ meta.type.go punctuation.section.parens.end.go
//                            ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go


        field func(
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go storage.type.keyword.function.go
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
//            ^^^ meta.type.go storage.type.keyword.map.go
            typ
//          ^^^ meta.type.go storage.type.go
        ] typ
//      ^ meta.type.go punctuation.section.brackets.end.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field interface{
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^^^^^^ meta.type.go storage.type.keyword.interface.go
            method()
//          ^^^^^^ meta.type.go meta.type.go entity.name.function.go
        }

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field struct{
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^^^ meta.type.go storage.type.keyword.struct.go
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
//  ^^^^^ variable.other.go -storage

    [/**/
//   ^^^^ comment.block.go
     /**/] /**/ typ
//   ^^^^ comment.block.go
//         ^^^^ comment.block.go
//              ^^^ storage.type.go

    []
    ident
//  ^^^^^ variable.other.go -storage

    []func(
//    ^^^^ storage.type.keyword.function.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ ident
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go


// ## type

    type _ typ
//  ^^^^ storage.type.keyword.type.go
//       ^ variable.language.blank.go
//         ^^^ storage.type.go

    type Type typ
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//            ^^^ storage.type.go

    type
//  ^^^^ storage.type.keyword.type.go
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
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
    ident
//  ^^^^^ variable.other.go

    type Type; ident
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//           ^ punctuation.terminator.go
//             ^^^^^ variable.other.go

    type Type chan typ
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ storage.type.keyword.chan.go
//                 ^^^ storage.type.go

    type Type <- chan typ
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//            ^^ keyword.operator.go
//               ^^^^ storage.type.keyword.chan.go
//                    ^^^ storage.type.go

    type Type chan <- typ
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ storage.type.keyword.chan.go
//                 ^^ keyword.operator.go
//                    ^^^ storage.type.go

    type Type chan typ ident
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ storage.type.keyword.chan.go
//                 ^^^ storage.type.go
//                     ^^^^^ variable.other.go

    type Type func(
//            ^^^^ storage.type.keyword.function.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ ident
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go

    type Type map[typ]typ ident
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//            ^^^ storage.type.keyword.map.go
//                ^^^ storage.type.go
//                    ^^^ storage.type.go
//                        ^^^^^ variable.other.go

    type Type []typ ident
//  ^^^^ storage.type.keyword.type.go
//       ^^^^ entity.name.type.go
//              ^^^ storage.type.go
//                  ^^^^^ variable.other.go

    type Type interface {
//            ^^^^^^^^^ storage.type.keyword.interface.go
        Method()
//      ^^^^^^ meta.type.go entity.name.function.go
        Inherit
//      ^^^^^^^ meta.type.go entity.other.inherited-class.go
    } ident
//    ^^^^^ variable.other.go

    type Type struct {
//            ^^^^^^ storage.type.keyword.struct.go
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
//           ^^^^ storage.type.keyword.function.go
        )

        Type map
//      ^^^^ entity.name.type.go
//           ^^^ storage.type.keyword.map.go
        [typ]typ
//       ^^^ storage.type.go
//           ^^^ storage.type.go

        Type []typ
//      ^^^^ entity.name.type.go
//             ^^^ storage.type.go

        Type interface {
//      ^^^^ entity.name.type.go
//           ^^^^^^^^^ storage.type.keyword.interface.go
            Method()
//          ^^^^^^ meta.type.go entity.name.function.go
        }

        Type struct {
//      ^^^^ entity.name.type.go
//           ^^^^^^ storage.type.keyword.struct.go
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

    const _ = 10
//  ^^^^^ storage.type.keyword.const.go
//        ^ variable.language.blank.go
//          ^ keyword.operator.assignment.go
//            ^^ constant.numeric.integer.go

    /**/ const
//  ^^^^ comment.block.go
//       ^^^^^ storage.type.keyword.const.go
    /**/ ident /**/ typ /**/ = /**/ iota /**/
//  ^^^^ comment.block.go
//       ^^^^^ variable.other.constant.declaration.go
//             ^^^^ comment.block.go
//                  ^^^ storage.type.go
//                      ^^^^ comment.block.go
//                           ^ keyword.operator.assignment.go
//                             ^^^^ comment.block.go
//                                  ^^^^ constant.numeric.integer.go
//                                       ^^^^ comment.block.go

    const ident, ident = 10, 20
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
//               ^^^^^ variable.other.constant.declaration.go

    const ident, ident typ
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
//               ^^^^^ variable.other.constant.declaration.go
//                     ^^^ storage.type.go

    const ident,
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
          ident = 10, 20
//        ^^^^^ variable.other.constant.declaration.go

    const ident,
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
          ident typ
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go

    /**/ const
//  ^^^^ comment.block.go
//       ^^^^^ storage.type.keyword.const.go
    (
//  ^ punctuation.section.parens.begin.go
        /**/ ident /**/ typ /**/ = /**/ iota + iota /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.constant.declaration.go
//                 ^^^^ comment.block.go
//                      ^^^ storage.type.go
//                          ^^^^ comment.block.go
//                               ^ keyword.operator.assignment.go
//                                 ^^^^ comment.block.go
//                                      ^^^^ constant.numeric.integer.go
//                                           ^ keyword.operator.go
//                                             ^^^^ constant.numeric.integer.go
//                                                  ^^^^ comment.block.go

        /**/ ident /**/ = /**/ ident + 100 /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.constant.declaration.go
//                 ^^^^ comment.block.go
//                      ^ keyword.operator.assignment.go
//                        ^^^^ comment.block.go
//                             ^^^^^ variable.other.go
//                                   ^ keyword.operator.go
//                                     ^^^ constant.numeric.integer.go
//                                         ^^^^ comment.block.go

        /**/ ident /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.constant.declaration.go
//                 ^^^^ comment.block.go

        /**/ ident /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.constant.declaration.go
//                 ^^^^ comment.block.go

        ident,
//      ^^^^^ variable.other.constant.declaration.go
//           ^ punctuation.separator.go
        ident typ = 10, 20
//      ^^^^^ variable.other.constant.declaration.go
//            ^^^ storage.type.go
//                ^ keyword.operator.assignment.go
//                  ^^ constant.numeric.integer.go
//                    ^ punctuation.separator.go
//                      ^^ constant.numeric.integer.go

        ident,
//      ^^^^^ variable.other.constant.declaration.go
//           ^ punctuation.separator.go
        ident = ident, ident
//      ^^^^^ variable.other.constant.declaration.go
//            ^ keyword.operator.assignment.go
//              ^^^^^ variable.other.go
//                   ^ punctuation.separator.go
//                     ^^^^^ variable.other.go

        ident,
//      ^^^^^ variable.other.constant.declaration.go
//           ^ punctuation.separator.go
        ident
//      ^^^^^ variable.other.constant.declaration.go

// This verifies that we're not still trying to match a type after the preceding
// identifier.

        ident,
//      ^^^^^ variable.other.constant.declaration.go
//           ^ punctuation.separator.go
        ident
//      ^^^^^ variable.other.constant.declaration.go

        ident =
//      ^^^^^ variable.other.constant.declaration.go
//            ^ keyword.operator.assignment.go
        "blah"
//      ^^^^^^ string.quoted.double.go

        ident =
//      ^^^^^ variable.other.constant.declaration.go
//            ^ keyword.operator.assignment.go
        10
//      ^^ constant.numeric.integer.go

        ident =
//      ^^^^^ variable.other.constant.declaration.go
//            ^ keyword.operator.assignment.go
        iota + iota
//      ^^^^ constant.numeric.integer.go
//           ^ keyword.operator.go
//             ^^^^ constant.numeric.integer.go

        iota = iota
//      ^^^^ variable.other.constant.declaration.go
//           ^ keyword.operator.assignment.go
//             ^^^^ constant.numeric.integer.go
    )

    const ident typ = ident +
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go
//                  ^ keyword.operator.assignment.go
//                    ^^^^^ variable.other.go
//                          ^ keyword.operator.go
        ident +
//      ^^^^^ variable.other.go
//            ^ keyword.operator.go
        ident +
//      ^^^^^ variable.other.go
//            ^ keyword.operator.go
        ident
//      ^^^^^ variable.other.go

    const (
//  ^^^^^ storage.type.keyword.const.go
        ident typ = ident +
//      ^^^^^ variable.other.constant.declaration.go
//            ^^^ storage.type.go
//                ^ keyword.operator.assignment.go
//                  ^^^^^ variable.other.go
//                        ^ keyword.operator.go
            ident +
//          ^^^^^ variable.other.constant.declaration.go
//                ^ keyword.operator.go

// BUG: this is incorrectly scoped as a type. TODO consider detecting multiline
// expressions, or find another way of handling this properly.
            ident +

            ident
//          ^^^^^ variable.other.constant.declaration.go
    )

// iota is predefined only in constant declarations. It's not a reserved word.
    func _() {
        var iota = 0
//      ^^^ storage.type.keyword.var.go
//          ^^^^ variable.declaration.go
//               ^ keyword.operator.assignment.go
//                 ^ constant.numeric.integer.go
        var _ = iota
//      ^^^ storage.type.keyword.var.go
//          ^ variable.language.blank.go
//            ^ keyword.operator.assignment.go
//              ^^^^ variable.other.go -constant
    }

    var _ = log.Println
//  ^^^ storage.type.keyword.var.go
//      ^ variable.language.blank.go
//        ^ keyword.operator.assignment.go
//          ^^^ variable.other.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^^^ variable.other.member.go

    /**/ var
//  ^^^^ comment.block.go
//       ^^^ storage.type.keyword.var.go
    /**/ ident /**/ typ /**/ = /**/ 10 /**/
//  ^^^^ comment.block.go
//       ^^^^^ variable.declaration.go
//             ^^^^ comment.block.go
//                  ^^^ storage.type.go
//                      ^^^^ comment.block.go
//                           ^ keyword.operator.assignment.go
//                             ^^^^ comment.block.go
//                                  ^^ constant.numeric.integer.go
//                                     ^^^^ comment.block.go

    var ident, ident = 10, 20
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go
//           ^ punctuation.separator.go
//             ^^^^^ variable.declaration.go

    var ident, ident typ
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go
//           ^ punctuation.separator.go
//             ^^^^^ variable.declaration.go
//                   ^^^ storage.type.go

    var ident,
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go
//           ^ punctuation.separator.go
        ident = 10, 20
//      ^^^^^ variable.declaration.go

    var ident,
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go
//           ^ punctuation.separator.go
        ident typ
//      ^^^^^ variable.declaration.go
//            ^^^ storage.type.go

    /**/ var
//  ^^^^ comment.block.go
//       ^^^ storage.type.keyword.var.go
    (
//  ^ punctuation.section.parens.begin.go
        /**/ ident /**/ typ /**/ = /**/ ident /**/ + /**/ 20 /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.declaration.go
//                 ^^^^ comment.block.go
//                      ^^^ storage.type.go
//                          ^^^^ comment.block.go
//                               ^ keyword.operator.assignment.go
//                                 ^^^^ comment.block.go
//                                      ^^^^^ variable.other.go
//                                            ^^^^ comment.block.go
//                                                 ^ keyword.operator.go
//                                                   ^^^^ comment.block.go
//                                                        ^^ constant.numeric.integer.go
//                                                           ^^^^ comment.block.go

        /**/ ident /**/ = /**/ ident + 20 /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.declaration.go
//                 ^^^^ comment.block.go
//                      ^ keyword.operator.assignment.go
//                        ^^^^ comment.block.go
//                             ^^^^^ variable.other.go
//                                   ^ keyword.operator.go
//                                     ^^ constant.numeric.integer.go
//                                        ^^^^ comment.block.go

        ident,
//      ^^^^^ variable.declaration.go
//           ^ punctuation.separator.go
        ident typ = ident, ident
//      ^^^^^ variable.declaration.go
//            ^^^ storage.type.go
//                ^ keyword.operator.assignment.go
//                  ^^^^^ variable.other.go
//                       ^ punctuation.separator.go
//                         ^^^^^ variable.other.go
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
//     ^ punctuation.separator.decimal.go
//           ^^^ constant.numeric.float.go
//              ^ punctuation.separator.decimal.go
//               ^^^ constant.numeric.float.go
//                    ^^ invalid.deprecated.go
//                        ^^ invalid.deprecated.go

    -000.000; -123.456; -.0; -1.;
//  ^ keyword.operator.go
//   ^^^^^^^ constant.numeric.float.go
//      ^ punctuation.separator.decimal.go
//            ^ keyword.operator.go
//             ^^^^^^^ constant.numeric.float.go
//                ^ punctuation.separator.decimal.go
//                      ^ keyword.operator.go
//                       ^^ invalid.deprecated.go
//                           ^ keyword.operator.go
//                            ^^ invalid.deprecated.go

    0e+0; 0E+0; 0.0e+0; 0.0E+0; 123.456e+789;
//  ^^^^ constant.numeric.float.go
//   ^^ punctuation.separator.exponent.go
//        ^^^^ constant.numeric.float.go
//         ^^ punctuation.separator.exponent.go
//              ^^^^^^ constant.numeric.float.go
//                      ^^^^^^ constant.numeric.float.go
//                       ^ punctuation.separator.decimal.go
//                         ^^ punctuation.separator.exponent.go
//                           ^ constant.numeric.float.go
//                            ^ punctuation.terminator.go
//                              ^^^^^^^^^^^^ constant.numeric.float.go
//                                 ^ punctuation.separator.decimal.go
//                                     ^^ punctuation.separator.exponent.go

    0e-0; 0E-0; 0.0e-0; 0.0E-0; 123.456e-789;
//  ^^^^ constant.numeric.float.go
//   ^^ punctuation.separator.exponent.go
//        ^^^^ constant.numeric.float.go
//         ^^ punctuation.separator.exponent.go
//           ^ constant.numeric.float.go
//              ^^^^^^ constant.numeric.float.go
//               ^ punctuation.separator.decimal.go
//                 ^^ punctuation.separator.exponent.go
//                      ^^^^^^ constant.numeric.float.go
//                       ^ punctuation.separator.decimal.go
//                         ^^ punctuation.separator.exponent.go
//                              ^^^^^^^^^^^^ constant.numeric.float.go
//                                 ^ punctuation.separator.decimal.go
//                                     ^^ punctuation.separator.exponent.go

    0.e+0; .0e+0; 0.e-0; .0e-0;
//  ^^^^^ invalid.deprecated.go
//         ^^^^^ invalid.deprecated.go
//                ^^^^^ invalid.deprecated.go
//                       ^^^^^ invalid.deprecated.go

// ## Imaginary

    000i; 100i; -100i;
//  ^^^^ constant.numeric.imaginary.go
//     ^ storage.type.numeric.imaginary.go
//        ^^^^ constant.numeric.imaginary.go
//           ^ storage.type.numeric.imaginary.go
//              ^ keyword.operator.go
//               ^^^^ constant.numeric.imaginary.go
//                  ^ storage.type.numeric.imaginary.go

    123.456i; -123.456i;
//  ^^^^^^^^ constant.numeric.imaginary.go
//     ^ punctuation.separator.decimal.go
//         ^ storage.type.numeric.imaginary.go
//            ^ keyword.operator.go
//             ^^^^^^^^ constant.numeric.imaginary.go
//                ^ punctuation.separator.decimal.go
//                    ^ storage.type.numeric.imaginary.go

    1e+2i; 1e-2i; 1.2e+3i; 1.2e-3i; 1E+2i; 1E-2i; 1.2E+3i; 1.2E-3i;
//  ^^^^^ constant.numeric.imaginary.go
//   ^^ punctuation.separator.exponent.go
//      ^ storage.type.numeric.imaginary.go
//         ^^^^^ constant.numeric.imaginary.go
//          ^^ punctuation.separator.exponent.go
//             ^ storage.type.numeric.imaginary.go
//                ^^^^^^^ constant.numeric.imaginary.go
//                 ^ punctuation.separator.decimal.go
//                   ^^ punctuation.separator.exponent.go
//                      ^ storage.type.numeric.imaginary.go
//                         ^^^^^^^ constant.numeric.imaginary.go
//                          ^ punctuation.separator.decimal.go
//                            ^^ punctuation.separator.exponent.go
//                               ^ storage.type.numeric.imaginary.go
//                                  ^^^^^ constant.numeric.imaginary.go
//                                   ^^ punctuation.separator.exponent.go
//                                      ^ storage.type.numeric.imaginary.go
//                                         ^^^^^ constant.numeric.imaginary.go
//                                          ^^ punctuation.separator.exponent.go
//                                             ^ storage.type.numeric.imaginary.go
//                                                ^^^^^^^ constant.numeric.imaginary.go
//                                                 ^ punctuation.separator.decimal.go
//                                                   ^^ punctuation.separator.exponent.go
//                                                      ^ storage.type.numeric.imaginary.go
//                                                         ^^^^^^^ constant.numeric.imaginary.go
//                                                          ^ punctuation.separator.decimal.go
//                                                            ^^ punctuation.separator.exponent.go
//                                                               ^ storage.type.numeric.imaginary.go

    0.i; .0i; -0.i; -.0i;
//  ^^^ invalid.deprecated.go
//       ^^^ invalid.deprecated.go
//            ^ keyword.operator.go
//             ^^^ invalid.deprecated.go
//                  ^ keyword.operator.go
//                   ^^^ invalid.deprecated.go

    0.e+0i; .0e+0i; 0.e-0i; .0e-0i;
//  ^^^^^^ invalid.deprecated.go
//          ^^^^^^ invalid.deprecated.go
//                  ^^^^^^ invalid.deprecated.go
//                          ^^^^^^ invalid.deprecated.go

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
    "one %[1] two"
//  ^^^^^^^^^^^ string.quoted.double.go
//       ^^^^^^ constant.other.placeholder.go
    "one %[1]v two"
//  ^^^^^^^^^^^^ string.quoted.double.go
//       ^^^^^ constant.other.placeholder.go
    "one %[1]+v two"
//  ^^^^^^^^^^^^^ string.quoted.double.go
//       ^^^^^^ constant.other.placeholder.go
    "one %[1]1.2d two"
//  ^^^^^^^^^^^^^^^ string.quoted.double.go
//       ^^^^^^^^ constant.other.placeholder.go
    "%"
//  ^^^ string.quoted.double.go
//   ^ -constant.other.placeholder

    "one /* two */ three"
//  ^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.go -comment

    "_\n_"
//  ^^^^^^ string.quoted.double.go
//    ^^ string.quoted.double.go constant.character.escape.go
//   ^ -constant.character.escape
//      ^ -constant.character.escape

    "_\x00_"
//  ^^^^^^^^ string.quoted.double.go
//    ^^^^ string.quoted.double.go constant.character.escape.go
//   ^ -constant.character.escape
//        ^ -constant.character.escape

    "_\u0000_"
//  ^^^^^^^^^^ string.quoted.double.go
//    ^^^^^^ string.quoted.double.go constant.character.escape.go
//   ^ -constant.character.escape
//          ^ -constant.character.escape

    "_\U00000000_"
//  ^^^^^^^^^^^^^^ string.quoted.double.go
//    ^^^^^^^^^^ string.quoted.double.go constant.character.escape.go
//   ^ -constant.character.escape
//              constant.character.escape

    "_\000_"
//  ^^^^^^^^ string.quoted.double.go
//    ^^^^ string.quoted.double.go constant.character.escape.go
//   ^ -constant.character.escape
//        ^ -constant.character.escape

    `one two`
//  ^ punctuation.definition.string.begin.go
//  ^^^^^^^^^ string.quoted.other.go
//          ^ punctuation.definition.string.end.go
    `one \\ \n two`
//  ^^^^^^^^^^^^^^^ string.quoted.other.go -constant.character.escape
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
    `one %[1] two`
//  ^^^^^^^^^^^ string.quoted.other.go
//       ^^^^^^ constant.other.placeholder.go
    `one %[1]v two`
//  ^^^^^^^^^^^^ string.quoted.other.go
//       ^^^^^ constant.other.placeholder.go
    `one %[1]+v two`
//  ^^^^^^^^^^^^^ string.quoted.other.go
//       ^^^^^^ constant.other.placeholder.go
    `one %[1]1.2d two`
//  ^^^^^^^^^^^^^^^ string.quoted.other.go
//       ^^^^^^^^ constant.other.placeholder.go
    `%`
//  ^^^ string.quoted.other.go
//   ^ -constant.other.placeholder

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
//  ^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.go -comment


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

    ident.(chan typ)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//         ^^^^ storage.type.keyword.chan.go
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

    (*chan typ)(ident)
//   ^ keyword.operator.go
//    ^^^^ storage.type.keyword.chan.go
//         ^^^ storage.type.go
//              ^^^^^ variable.other.go

    map[typ]typ(ident)
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.go
//          ^^^ storage.type.go
//              ^^^^^ variable.other.go

    (map[typ]typ)(ident)
//   ^^^ storage.type.keyword.map.go
//       ^^^ storage.type.go
//           ^^^ storage.type.go
//                ^^^^^ variable.other.go

    []typ(ident)
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go

    ([]typ)(ident)
//     ^^^ storage.type.go
//          ^^^^^ variable.other.go


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
//  ^^^^ storage.type.keyword.function.go
//      ^ punctuation.section.parens.begin.go
//       ^ punctuation.section.parens.end.go
//         ^ meta.block.go punctuation.section.braces.begin.go
//          ^ meta.block.go punctuation.section.braces.end.go

    func ident() {}
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ entity.name.function.go
//            ^ punctuation.section.parens.begin.go
//             ^ punctuation.section.parens.end.go
//               ^ meta.block.go punctuation.section.braces.begin.go
//                ^ meta.block.go punctuation.section.braces.end.go

    func ident /**/ () {}
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ entity.name.function.go
//             ^^^^ comment.block.go

    func ident /* * */ () {}
//  ^^^^ storage.type.keyword.function.go
//       ^^^^^ entity.name.function.go
//             ^^^^^^^ comment.block.go

    func ident(
//  ^^^^ storage.type.keyword.function.go
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
//  ^^^^ storage.type.keyword.function.go
//       ^ meta.function.declaration.go punctuation.section.parens.begin.go
//        ^^^^ meta.function.declaration.go storage.type.go
//            ^ meta.function.declaration.go punctuation.section.parens.end.go
//              ^^^^^^ meta.function.declaration.go entity.name.function.go
//                    ^ punctuation.section.parens.begin.go
//                     ^ punctuation.section.parens.end.go

    func /**/
//  ^^^^ storage.type.keyword.function.go
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


// # Predeclared Constants

    true false nil
//  ^^^^ constant.language.go
//       ^^^^^ constant.language.go
//             ^^^ constant.language.go


// # Built-in Types

/*
These tests make sure that the treatment of built-ins is consistent with
non-built-ins and is purely additive.

Due to how they're combined in the syntax definition, we don't need to test
every type individually.
*/

    chan typ
//  ^^^^ storage.type.keyword.chan.go
//       ^^^ storage.type.go -support

    chan int
//  ^^^^ storage.type.keyword.chan.go
//       ^^^ storage.type.go support.type.builtin.go

    func(typ)
//  ^^^^ storage.type.keyword.function.go
//       ^^^ storage.type.go -support

    func(int)
//  ^^^^ storage.type.keyword.function.go
//       ^^^ storage.type.go support.type.builtin.go

    map[typ]typ
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.go -support
//          ^^^ storage.type.go -support

    map[int]int
//  ^^^ storage.type.keyword.map.go
//      ^^^ storage.type.go support.type.builtin.go
//          ^^^ storage.type.go support.type.builtin.go

    struct { ident typ; typ }
//  ^^^^^^ storage.type.keyword.struct.go
//           ^^^^^ meta.type.go variable.other.member.declaration.go
//                 ^^^ meta.type.go storage.type.go -support
//                      ^^^ meta.type.go entity.other.inherited-class.go -support

    struct { ident int; int }
//  ^^^^^^ storage.type.keyword.struct.go
//           ^^^^^ meta.type.go variable.other.member.declaration.go
//                 ^^^ meta.type.go storage.type.go support.type.builtin.go
//                      ^^^ meta.type.go entity.other.inherited-class.go support.type.builtin.go

    interface { typ }
//  ^^^^^^^^^ storage.type.keyword.interface.go
//              ^^^ meta.type.go entity.other.inherited-class.go -support

    interface { error }
//  ^^^^^^^^^ storage.type.keyword.interface.go
//              ^^^^^ meta.type.go entity.other.inherited-class.go support.type.builtin.go

    [...]typ
//   ^^^ keyword.operator.variadic.go
//       ^^^ storage.type.go -support

    [...]int
//   ^^^ keyword.operator.variadic.go
//       ^^^ storage.type.go support.type.builtin.go

    []typ
//    ^^^ storage.type.go -support

    []int
//    ^^^ storage.type.go support.type.builtin.go

    type _ typ
//  ^^^^ storage.type.keyword.type.go
//       ^ variable.language.blank.go
//         ^^^ storage.type.go -support

    type _ int
//  ^^^^ storage.type.keyword.type.go
//       ^ variable.language.blank.go
//         ^^^ storage.type.go support.type.builtin.go

    const ident typ
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go -support

    const ident int
//  ^^^^^ storage.type.keyword.const.go
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go support.type.builtin.go

    var ident typ
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go
//            ^^^ storage.type.go -support

    var ident int
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go
//            ^^^ storage.type.go support.type.builtin.go

    ident.(typ)
//  ^^^^^ variable.other.go
//         ^^^ storage.type.go -support

    ident.(int)
//  ^^^^^ variable.other.go
//         ^^^ storage.type.go support.type.builtin.go

    (typ)(ident)
//   ^^^ variable.function.go -support
//        ^^^^^ variable.other.go

    (int)(ident)
//   ^^^ variable.function.go support.type.builtin.go
//        ^^^^^ variable.other.go


// # Built-in Functions

// ## Special Functions

    make(typ)
//  ^^^^ variable.function.go support.function.builtin.go
//       ^^^ storage.type.go -support

    make(int)
//  ^^^^ variable.function.go support.function.builtin.go
//       ^^^ storage.type.go support.type.builtin.go

    make /**/ (
//  ^^^^ variable.function.go support.function.builtin.go
//       ^^^^ comment.block.go
        /**/ typ /**/,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go -support
//               ^^^^ comment.block.go
        ident,
//      ^^^^^ variable.other.go
        ident,
//      ^^^^^ variable.other.go
    )

    make /**/ (
//  ^^^^ variable.function.go support.function.builtin.go
//       ^^^^ comment.block.go
        /**/ int /**/,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go support.type.builtin.go
//               ^^^^ comment.block.go
        ident,
//      ^^^^^ variable.other.go
        ident,
//      ^^^^^ variable.other.go
    )

    make
//  ^^^^ variable.other.go -support

    var make
//  ^^^ storage.type.keyword.var.go
//      ^^^^ variable.declaration.go -support

    new(typ, ident)
//  ^^^ variable.function.go support.function.builtin.go
//      ^^^ storage.type.go -support
//           ^^^^^ variable.other.go

    new(int, ident)
//  ^^^ variable.function.go support.function.builtin.go
//      ^^^ storage.type.go support.type.builtin.go
//           ^^^^^ variable.other.go

    ((new))(typ, ident)
//    ^^^ variable.function.go support.function.builtin.go
//          ^^^ storage.type.go -support
//               ^^^^^ variable.other.go

    ((new))(int, ident)
//    ^^^ variable.function.go support.function.builtin.go
//          ^^^ storage.type.go support.type.builtin.go
//               ^^^^^ variable.other.go

    new /**/ (
//  ^^^ variable.function.go support.function.builtin.go
//      ^^^^ comment.block.go
        /**/ typ /**/ ,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go -support
//               ^^^^ comment.block.go
    )

    new /**/ (
//  ^^^ variable.function.go support.function.builtin.go
//      ^^^^ comment.block.go
        /**/ int /**/ ,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go support.type.builtin.go
//               ^^^^ comment.block.go
    )

    new
//  ^^^ variable.other.go -support

    var new
//  ^^^ storage.type.keyword.var.go
//      ^^^ variable.declaration.go -support

// ## Other Functions

/*
These tests make sure that the treatment of built-ins is consistent with
non-built-ins, is purely additive, and sufficiently limited.

Due to how they're combined in the syntax definition, we don't need to test
every function individually.
*/

    ident(ident)
//  ^^^^^ variable.function.go -support
//        ^^^^^ variable.other.go

    close(ident)
//  ^^^^^ variable.function.go support.function.builtin.go
//        ^^^^^ variable.other.go

    ((ident))(ident)
//    ^^^^^ variable.function.go -support
//            ^^^^^ variable.other.go

    ((close))(ident)
//    ^^^^^ variable.function.go support.function.builtin.go
//            ^^^^^ variable.other.go

    close
//  ^^^^^ variable.other.go -support

    var close
//  ^^^ storage.type.keyword.var.go
//      ^^^^^ variable.declaration.go -support


/*
Templates
*/
func template() {
    t := "\{{ foo }} bar }} {{baz} foo {{baz "
    //    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation
    t := "{{.Count}} items are made of {{.Material}}"
    //    ^^^^^^^^^^ meta.interpolation
    //    ^^ punctuation.section.interpolation.begin
    //      ^ punctuation.accessor.dot
    //       ^^^^^ variable.other.member
    //            ^^ punctuation.section.interpolation.end
    t := `{{.Count}} items are made of {{.Material}}`
    //    ^^^^^^^^^^ meta.interpolation
    //    ^^ punctuation.section.interpolation.begin
    //      ^ punctuation.accessor.dot
    //       ^^^^^ variable.other.member
    //            ^^ punctuation.section.interpolation.end
    t = "{{23 -}} < {{- 45}}"
    //   ^^^^^^^^ meta.interpolation
    //   ^^ punctuation.section.interpolation.begin
    //        ^ keyword.operator.template.right.trim
    //         ^^ punctuation.section.interpolation.end
    //                ^ keyword.operator.template.left.trim
    t = "{{/* a comment */}}"
    //     ^^ punctuation.definition.comment
    //                  ^^ punctuation.definition.comment
    //     ^^^^^^^^^^^^^^^ comment.block
    t = "{{if pipeline}} T1 {{else}}{{if pipeline}} T0 {{end}}{{end}}"
    //     ^^ keyword.control
    //                        ^^^^ keyword.control
    //                                ^^ keyword.control
    //                                                   ^^^ keyword.control
    //                                                          ^^^ keyword.control
    t = "{{range pipeline}} T1 {{else}} T0 {{end}}"
    //     ^^^^^ keyword.control
    //                           ^^^^ keyword.control
    //                                       ^^^ keyword.control
    t = "{{template "name" pipeline}}"
    //     ^^^^^^^^ keyword.control
    //              ^ punctuation.definition.string.begin
    //              ^^^^^^ string.quoted.double
    //                   ^ punctuation.definition.string.end
    t = "{{block "name" pipeline}} T1 {{end}}"
    //     ^^^^^ keyword.control
    //                                  ^^^ keyword.control
    t = "{{with pipeline}} T1 {{else}} T0 {{end}}"
    //     ^^^^ keyword.control
    //                          ^^^^ keyword.control
    //                                      ^^^ keyword.control
    t = "{{$piOver2}}"
    //     ^^^^^^^^ variable.other.template
    t = "{{.Field1.Field2}}"
    //     ^ punctuation.accessor.dot
    //      ^^^^^^ variable.other.member
    //            ^ punctuation.accessor.dot
    //             ^^^^^^ variable.other.member
    t = "{{$x.Field1.Field2}}"
    //     ^^ variable.other.template
    //       ^ punctuation.accessor.dot
    //        ^^^^^^ variable.other.member
    //              ^ punctuation.accessor.dot
    //               ^^^^^^ variable.other.member
    t = "{{$variable := pipeline}}"
    //     ^^^^^^^^^ variable.other.template
    //               ^^ keyword.operator.assignment
    t = "{{range $index, $element := pipeline}}"
    //     ^^^^^ keyword.control.
    //           ^^^^^^ variable.other.template
    //                   ^^^^^^^^ variable.other.template
    //                            ^^ keyword.operator.assignment
    t = "{{`"output"`}}"
    t = "{{printf "%q" "output"}}"
    //     ^^^^^^ support.function.builtin
    t = "{{"output" | printf "%q"}}"
    //              ^ keyword.operator.template
    //                ^^^^^^ support.function.builtin
    t = "{{printf "%q" (print "out" "put")}}"
    //     ^^^^^^ support.function.builtin
    //                  ^^^^^ support.function.builtin
    t = "{{"put" | printf "%s%s" "out" | printf "%q"}}"
    //           ^ keyword.operator.template
    //             ^^^^^^ support.function.builtin
    //                                 ^ keyword.operator.template
    //                                   ^^^^^^ support.function.builtin
    t = "{{"output" | printf "%s" | printf "%q"}}"
    //     ^^^^^^^^ string.quoted.double
    //              ^ keyword.operator.template
    //                ^^^^^^ support.function.builtin
    //                       ^^^^ string.quoted.double
    //                            ^ keyword.operator.template
    //                              ^^^^^^ support.function.builtin
    //                                     ^^^^ string.quoted.double
    t = "{{with "output"}}{{printf "%q" .}}{{end}}"
    //     ^^^^ keyword.control
    //                                  ^ variable.other.template
    t = "{{with $x := "output" | printf "%q"}}{{$x}}{{end}}"
    //          ^^ variable.other.template
    //             ^^ keyword.operator.assignment
    //                                          ^^ variable.other.template
    t = "{{with $x := "output"}}{{$x | printf "%q"}}{{end}}"
    //                            ^^ variable.other.template
    //                               ^ keyword.operator.template.pipe
    //                                 ^^^^^^ support.function.builtin
    t = "{{with $x := "output"}}{{$x = "new value"}}{{$x | printf "%q"}}{{end}}"
    //                            ^ meta.interpolation.go variable.other.template.go punctuation.definition.variable.go
    //                             ^ meta.interpolation.go variable.other.template.go
    //                               ^ meta.interpolation.go keyword.operator.assignment.go
    t = "{{slice x 1 2}}"
    //     ^^^^^ meta.interpolation.go variable.function.go support.function.builtin.go
