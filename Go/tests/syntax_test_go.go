// SYNTAX TEST "Go.sublime-syntax"

/*
NOTES

This file is not intended to pass compilation or `go vet`.

This file must not be formatted with `go fmt`.

You may have to disable Go-specific linters when working on this file.
*/

/* # Comments */

    //
// ^ - comment - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^ comment.line.double-slash.go

    // comment // comment
// ^ - comment - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.go
//             ^^ - punctuation

    /* comment // comment */  // comment
// ^ - comment - punctuation
//  ^^ punctuation.definition.comment.begin.go
//  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.go
//             ^^ - punctuation
//                        ^^ punctuation.definition.comment.end.go
//                          ^^ - comment - punctuation
//                            ^^ punctuation.definition.comment.go
//                            ^^^^^^^^^^^ comment.line.double-slash.go

    /*
// ^ - comment
//  ^^ comment.block.go punctuation.definition.comment.begin.go
//    ^^ comment.block.go - punctuation
//  ^^^^ comment.block.go
    comment
//  ^^^^^^^^ comment.block.go
    */
//^^ comment.block.go - punctuation
//  ^^ comment.block.go punctuation.definition.comment.end.go
//    ^ - comment

    /* * */
// ^ - comment
//  ^^^^^^^ comment.block.go
//  ^^ punctuation.definition.comment.begin.go
//    ^^^ - punctuation.definition.comment.go
//       ^^ punctuation.definition.comment.end.go
//         ^ - comment

    /*
    *
//  ^ - punctuation.definition.comment.go

        *
//      ^ - punctuation.definition.comment.go

     *
//   ^ punctuation.definition.comment.go
    */

    //go
// ^ - comment - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^ comment.line.double-slash.go - meta.annotation

    //go:
// ^ - comment - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^ comment.line.double-slash.go - meta.annotation

    //go:generate one two three
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^ meta.keyword.annotation.go
//       ^^^^^^^^ meta.variable.function.go
//                ^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                             ^ comment.line.double-slash.go - meta.annotation

    //go-sumtype:decl MySumType
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^^^^^^^^^ meta.keyword.annotation.go
//               ^^^^ meta.variable.function.go
//                    ^^^^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                             ^ comment.line.double-slash.go - meta.annotation

    //lint:ignore U1000 Reason.
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^^^ meta.keyword.annotation.go
//         ^^^^^^ meta.variable.function.go
//                ^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                             ^ comment.line.double-slash.go - meta.annotation

    //lint:file-ignore Reason.
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^^^ meta.keyword.annotation.go
//         ^^^^^^^^^^^ meta.variable.function.go
//                     ^^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                            ^ comment.line.double-slash.go - meta.annotation

    //line :10
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^^^ meta.variable.function.go
//         ^^^ comment.line.double-slash.go meta.annotation.parameters.go
//            ^ comment.line.double-slash.go - meta.annotation

    //line file.rl:10
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^^^ meta.variable.function.go
//         ^^^^^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                   ^ comment.line.double-slash.go - meta.annotation

    //line file.rl:100:10
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^ comment.line.double-slash.go meta.annotation.go
//    ^^^^ meta.variable.function.go
//         ^^^^^^^^^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                       ^ comment.line.double-slash.go - meta.annotation

    /*line :10*/
// ^ - comment
//  ^^^^^^ comment.block.go meta.annotation.go
//    ^^^^ meta.variable.function.go
//         ^^^ comment.block.go meta.annotation.parameters.go
//            ^^ comment.block.go punctuation.definition.comment.end.go
//              ^ - comment.block.go - meta.annotation

    /*line file.rl:10*/
// ^ - comment
//  ^^^^^^ comment.block.go meta.annotation.go
//  ^^ punctuation.definition.comment.begin.go
//    ^^^^ meta.variable.function.go
//         ^^^^^^^^^^ comment.block.go meta.annotation.parameters.go
//                   ^^ comment.block.go punctuation.definition.comment.end.go
//                     ^ - comment.block.go - meta.annotation

    /*line file.rl:100:10*/
// ^ - comment
//  ^^^^^^ comment.block.go meta.annotation.go
//  ^^ punctuation.definition.comment.begin.go
//    ^^^^ meta.variable.function.go
//         ^^^^^^^^^^^^^^ comment.block.go meta.annotation.parameters.go
//                       ^^ comment.block.go punctuation.definition.comment.end.go
//                         ^ - comment.block.go - meta.annotation

    /*line :10 */
// ^ - comment
//  ^^^^^^^^^^^^^ comment.block.go - meta.annotation
//  ^^ punctuation.definition.comment.begin.go
//             ^^ punctuation.definition.comment.end.go
//               ^ - comment

    /*line file.rl:10 */
// ^ - comment
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.go - meta.annotation
//                      ^ - comment

    /*line file.rl:100:10 */
// ^ - comment
//  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.go - meta.annotation
//                          ^ - comment

    //export myfunc
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^ comment.line.double-slash.go meta.annotation.go
//           ^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                 ^ comment.line.double-slash.go - meta.annotation

    //extern myfunc
// ^ - comment - meta - punctuation
//  ^^ punctuation.definition.comment.go
//  ^^^^^^^^ comment.line.double-slash.go meta.annotation.go
//           ^^^^^^ comment.line.double-slash.go meta.annotation.parameters.go
//                 ^ comment.line.double-slash.go - meta.annotation

/*
 * Merge Conflict Marker Tests
 */

<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation

/* # Imports */

    package main
//  ^^^^^^^ keyword.declaration.namespace.go
//         ^ - keyword - storage
//          ^^^^ entity.name.namespace.go

    import "module"
//  ^^^^^^ keyword.other.import.go
//         ^^^^^ meta.string.go string.quoted.double.go

    import (ident "module")
//  ^^^^^^ keyword.other.import.go
//         ^ punctuation.section.parens.begin.go
//          ^^^^^ variable.other.go
//                ^ meta.string.go string.quoted.double.go punctuation.definition.string.begin.go
//                 ^^^^^^ meta.string.go string.quoted.double.go
//                       ^ meta.string.go string.quoted.double.go punctuation.definition.string.end.go
//                        ^ punctuation.section.parens.end.go

    import (
//  ^^^^^^ keyword.other.import.go
        ident "module"      // comment
//      ^^^^^ variable.other.go
//            ^ meta.string.go string.quoted.double.go punctuation.definition.string.begin.go
//             ^^^^^^ meta.string.go string.quoted.double.go
//                   ^ meta.string.go string.quoted.double.go punctuation.definition.string.end.go
//                          ^^^^^^^^^^^ comment.line.double-slash.go
        ident "module"      // comment
//      ^^^^^ variable.other.go
//            ^ meta.string.go string.quoted.double.go punctuation.definition.string.begin.go
//             ^^^^^^ meta.string.go string.quoted.double.go
//                   ^ meta.string.go string.quoted.double.go punctuation.definition.string.end.go
//                          ^^^^^^^^^^^ comment.line.double-slash.go
    )


/* # Type Keywords and Syntax */

/*
Type keywords are tested early because they're used in many other tests.

Note: Go permits an arbitrary number of parens around a type.

Note: built-ins are tested separately. Search for "# Built-in Types".
*/

/* ## chan */

    chan _
//  ^^^^ keyword.declaration.chan.go
//       ^ variable.language.anonymous.go

    chan typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^ storage.type.go

    chan typ ident
//  ^^^^ keyword.declaration.chan.go
//       ^^^ storage.type.go
//           ^^^^^ variable.other.go

    chan ((typ))
//  ^^^^ keyword.declaration.chan.go
//       ^^ punctuation.section.parens.begin.go
//         ^^^ storage.type.go
//            ^^ punctuation.section.parens.end.go

    chan ident.typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^ storage.type.go

    chan ident.ident.typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^^ variable.other.go
//                  ^ punctuation.accessor.dot.go
//                   ^^^ storage.type.go

    chan ((ident.ident.typ))
//  ^^^^ keyword.declaration.chan.go
//       ^^ punctuation.section.parens.begin.go
//         ^^^^^ variable.other.go
//              ^ punctuation.accessor.dot.go
//               ^^^^^ variable.other.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^ storage.type.go
//                        ^^ punctuation.section.parens.end.go

    <- chan ident.typ
//  ^^ keyword.operator.assignment.go
//     ^^^^ keyword.declaration.chan.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^ storage.type.go

    <- chan ident.ident.typ
//  ^^ keyword.operator.assignment.go
//     ^^^^ keyword.declaration.chan.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^ storage.type.go

    chan <- ident.typ
//  ^^^^ keyword.declaration.chan.go
//       ^^ keyword.operator.assignment.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^ storage.type.go

    chan <- ident.ident.typ
//  ^^^^ keyword.declaration.chan.go
//       ^^ keyword.operator.assignment.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ variable.other.go
//                     ^ punctuation.accessor.dot.go
//                      ^^^ storage.type.go

    chan
//  ^^^^ keyword.declaration.chan.go
    typ
//  ^^^ storage.type.go

    chan
//  ^^^^ keyword.declaration.chan.go
    ident . /**/
//  ^^^^^ variable.other.go
//        ^ punctuation.accessor.dot.go
//          ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    <-
//  ^^ keyword.operator.assignment.go
    chan
//  ^^^^ keyword.declaration.chan.go
    ident . /**/
//  ^^^^^ variable.other.go
//        ^ punctuation.accessor.dot.go
//          ^^^^ comment.block.go
    ident . /**/
//  ^^^^^ variable.other.go
//        ^ punctuation.accessor.dot.go
//          ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    chan
//  ^^^^ keyword.declaration.chan.go
    <-    /**/
//  ^^ keyword.operator.assignment.go
//        ^^^^ comment.block.go
    ident . /**/
//  ^^^^^ variable.other.go
//        ^ punctuation.accessor.dot.go
//          ^^^^ comment.block.go
    ident . /**/
//  ^^^^^ variable.other.go
//        ^ punctuation.accessor.dot.go
//          ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    chan chan chan typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^^ keyword.declaration.chan.go
//            ^^^^ keyword.declaration.chan.go
//                 ^^^ storage.type.go

    chan *chan **chan ***typ
//  ^^^^ keyword.declaration.chan.go
//       ^ keyword.operator.go
//        ^^^^ keyword.declaration.chan.go
//             ^^ keyword.operator.go
//               ^^^^ keyword.declaration.chan.go
//                    ^^^ keyword.operator.go
//                       ^^^ storage.type.go

    chan struct{}
//  ^^^^ keyword.declaration.chan.go
//       ^^^^^^ keyword.declaration.struct.go

    chan struct{} ident
//  ^^^^ keyword.declaration.chan.go
//       ^^^^^^ keyword.declaration.struct.go
//                ^^^^^ variable.other.go

    chan interface{}
//  ^^^^ keyword.declaration.chan.go
//       ^^^^^^^^^ keyword.declaration.interface.go

    chan interface{} ident
//  ^^^^ keyword.declaration.chan.go
//       ^^^^^^^^^ keyword.declaration.interface.go
//                   ^^^^^ variable.other.go

    chan func() func() typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^^ keyword.declaration.function.go
//              ^^^^ keyword.declaration.function.go
//                     ^^^ storage.type.go

    chan func() func() typ ident
//  ^^^^ keyword.declaration.chan.go
//       ^^^^ keyword.declaration.function.go
//              ^^^^ keyword.declaration.function.go
//                     ^^^ storage.type.go
//                         ^^^^^ variable.other.go

    chan
//  ^^^^ keyword.declaration.chan.go
    func() typ
//  ^^^^ keyword.declaration.function.go
//         ^^^ storage.type.go

    chan []typ
//  ^^^^ keyword.declaration.chan.go
//         ^^^ storage.type.go

    chan [][][]typ
//  ^^^^ keyword.declaration.chan.go
//             ^^^ storage.type.go

    chan map[typ]typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^ keyword.declaration.map.go
//           ^^^ storage.type.go
//               ^^^ storage.type.go


/* ## func */

// Note: a function type and the beginning of a non-method function declaration
// are parsed EXACTLY the same. Function types may contain parameter names.
// These tests wouldn't be valid Go code by themselves, but they are valid
// function types.

    func()
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.parens.begin.go
//       ^ punctuation.section.parens.end.go

    func(typ, typ)
//  ^^^^ keyword.declaration.function.go
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
//  ^^^^ keyword.declaration.function.go
    ident
//  ^^^^^ variable.other.go - storage

    func(true false) (nil iota)
//  ^^^^ keyword.declaration.function.go
//       ^^^^ variable.parameter.go
//            ^^^^^ storage.type.go
//                    ^^^ variable.parameter.go
//                        ^^^^ storage.type.go

    func(param...typ)
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go

    func(param /**/ ... /**/ typ)
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ variable.parameter.go
//             ^^^^ comment.block.go
//                  ^^^ keyword.operator.variadic.go
//                      ^^^^ comment.block.go
//                           ^^^ storage.type.go

    func(param ((typ)), param ...typ)
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ variable.parameter.go
//               ^^^ storage.type.go
//                      ^^^^^ variable.parameter.go
//                            ^^^ keyword.operator.variadic.go
//                               ^^^ storage.type.go

    func(param, param ((typ)), param, param ...typ)
//  ^^^^ keyword.declaration.function.go
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
//  ^^^^ keyword.declaration.function.go
//       ^^^ keyword.operator.variadic.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^ storage.type.go

    func(...*ident.Type)
//  ^^^^ keyword.declaration.function.go
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
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^ storage.type.go

    func(param...ident.Type)
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ variable.parameter.go
//            ^^^ keyword.operator.variadic.go
//               ^^^^^ variable.other.go
//                    ^ punctuation.accessor.dot.go
//                     ^^^^ storage.type.go

    func(param...*ident.Type)
//  ^^^^ keyword.declaration.function.go
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
//  ^^^^ keyword.declaration.function.go
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
        param /**/ * /**/ ident . /**/ Type,
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^ keyword.operator.go
//                   ^^^^ comment.block.go
//                        ^^^^^ variable.other.go
//                              ^ punctuation.accessor.dot.go
//                                ^^^^ comment.block.go
//                                     ^^^^ storage.type.go
//                                         ^ punctuation.separator.go
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
        param /**/ * /**/ ident . /**/ Type,
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^ keyword.operator.go
//                   ^^^^ comment.block.go
//                        ^^^^^ variable.other.go
//                              ^ punctuation.accessor.dot.go
//                                ^^^^ comment.block.go
//                                     ^^^^ storage.type.go
//                                         ^ punctuation.separator.go
    )
//  ^ punctuation.section.parens.end.go

    func() (
        param typ)
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go

    func() func() func() typ
//  ^^^^ keyword.declaration.function.go
//         ^^^^ keyword.declaration.function.go
//                ^^^^ keyword.declaration.function.go
//                       ^^^ storage.type.go

    func() func() func() ((typ))
//                         ^^^ storage.type.go

// Deranged case
    func(param func(param func(param ...typ) func() typ) ...func(param typ))
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^^ variable.parameter.go
//             ^^^^ keyword.declaration.function.go
//                 ^ punctuation.section.parens.begin.go
//                  ^^^^^ variable.parameter.go
//                        ^^^^ keyword.declaration.function.go
//                            ^ punctuation.section.parens.begin.go
//                             ^^^^^ variable.parameter.go
//                                   ^^^ keyword.operator.variadic.go
//                                      ^^^ storage.type.go
//                                         ^ punctuation.section.parens.end.go
//                                           ^^^^ keyword.declaration.function.go
//                                               ^ punctuation.section.parens.begin.go
//                                                ^ punctuation.section.parens.end.go
//                                                  ^^^ storage.type.go
//                                                     ^ punctuation.section.parens.end.go
//                                                       ^^^ keyword.operator.variadic.go
//                                                          ^^^^ keyword.declaration.function.go
//                                                              ^ punctuation.section.parens.begin.go
//                                                               ^^^^^ variable.parameter.go
//                                                                     ^^^ storage.type.go
//                                                                        ^^ punctuation.section.parens.end.go

    /*
    Support for unions. At the time of writing, type unions are not permitted
    in this position. The Go parser considers this a syntax error. However,
    it's better to future-proof our syntax implementation by allowing unions
    in any type position.
    */
    func /**/ (param /**/ ... /**/ typ | ~typ | *typ)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ comment.block.go
//       ^^ punctuation.definition.comment.begin.go
//             ^^^^^ variable.parameter.go
//                   ^^^^ comment.block.go
//                        ^^^ keyword.operator.variadic.go
//                            ^^^^ comment.block.go
//                                 ^^^ storage.type.go
//                                     ^ keyword.operator.go
//                                       ^ keyword.operator.go
//                                        ^^^ storage.type.go
//                                            ^ keyword.operator.go
//                                              ^ keyword.operator.go
//                                               ^^^ storage.type.go
//                                                  ^ punctuation.section.parens.end.go

/* ### Generic functions: anonymous */

/*
At the time of writing, Go doesn't support anonymous generic functions.
The Go parser understands them and rejects them. We may support them
by accident, but if necessary, such support could be sacrificed.
*/

    func[TypeParam Type[TypeArg]] (param Type[TypeArg]) Type {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.brackets.begin.go
//       ^^^^^^^^^ variable.parameter.type.go
//                 ^^^^ storage.type.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^^^^^ variable.other.type.go
//                             ^^ punctuation.section.brackets.end.go
//                                ^ punctuation.section.parens.begin.go
//                                 ^^^^^ variable.parameter.go
//                                       ^^^^ storage.type.go
//                                           ^ punctuation.section.brackets.begin.go
//                                            ^^^^^^^ variable.other.type.go
//                                                   ^ punctuation.section.brackets.end.go
//                                                    ^ punctuation.section.parens.end.go
//                                                      ^^^^ storage.type.go
//                                                           ^^ meta.block.go
//                                                           ^ punctuation.section.braces.begin.go
//                                                            ^ punctuation.section.braces.end.go

    func[TypeParam Type[TypeArg]] (param Type[TypeArg]) Type[TypeArg] {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.brackets.begin.go
//       ^^^^^^^^^ variable.parameter.type.go
//                 ^^^^ storage.type.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^^^^^ variable.other.type.go
//                             ^^ punctuation.section.brackets.end.go
//                                ^ punctuation.section.parens.begin.go
//                                 ^^^^^ variable.parameter.go
//                                       ^^^^ storage.type.go
//                                           ^ punctuation.section.brackets.begin.go
//                                            ^^^^^^^ variable.other.type.go
//                                                   ^ punctuation.section.brackets.end.go
//                                                    ^ punctuation.section.parens.end.go
//                                                      ^^^^ storage.type.go
//                                                          ^ punctuation.section.brackets.begin.go
//                                                           ^^^^^^^ variable.other.type.go
//                                                                  ^ punctuation.section.brackets.end.go
//                                                                    ^^ meta.block.go
//                                                                    ^ punctuation.section.braces.begin.go
//                                                                     ^ punctuation.section.braces.end.go

    func(param Type[TypeArg]) (param Type[TypeArg]) {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^^ variable.parameter.go
//             ^^^^ storage.type.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^^^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.section.parens.end.go
//                            ^ punctuation.section.parens.begin.go
//                             ^^^^^ variable.parameter.go
//                                   ^^^^ storage.type.go
//                                       ^ punctuation.section.brackets.begin.go
//                                        ^^^^^^^ variable.other.type.go
//                                               ^ punctuation.section.brackets.end.go
//                                                ^ punctuation.section.parens.end.go
//                                                  ^^ meta.block.go
//                                                  ^ punctuation.section.braces.begin.go
//                                                   ^ punctuation.section.braces.end.go

    func[TypeParam Type[TypeArg]] (param Type[TypeArg]) (param Type[TypeArg]) {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.brackets.begin.go
//       ^^^^^^^^^ variable.parameter.type.go
//                 ^^^^ storage.type.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^^^^^ variable.other.type.go
//                             ^^ punctuation.section.brackets.end.go
//                                ^ punctuation.section.parens.begin.go
//                                 ^^^^^ variable.parameter.go
//                                       ^^^^ storage.type.go
//                                           ^ punctuation.section.brackets.begin.go
//                                            ^^^^^^^ variable.other.type.go
//                                                   ^ punctuation.section.brackets.end.go
//                                                    ^ punctuation.section.parens.end.go
//                                                      ^ punctuation.section.parens.begin.go
//                                                       ^^^^^ variable.parameter.go
//                                                             ^^^^ storage.type.go
//                                                                 ^ punctuation.section.brackets.begin.go
//                                                                  ^^^^^^^ variable.other.type.go
//                                                                         ^ punctuation.section.brackets.end.go
//                                                                          ^ punctuation.section.parens.end.go
//                                                                            ^^ meta.block.go
//                                                                            ^ punctuation.section.braces.begin.go
//                                                                             ^ punctuation.section.braces.end.go

/* ### Generic functions: named */

    func Func(param Type[TypeArg]) Type
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//           ^ punctuation.section.parens.begin.go
//            ^^^^^ variable.parameter.go
//                  ^^^^ storage.type.go
//                      ^ punctuation.section.brackets.begin.go
//                       ^^^^^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.section.parens.end.go
//                                 ^^^^ storage.type.go

    func Func[TypeParam Type[TypeArg]] (param Type[TypeArg]) Type
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^^^^^^ variable.parameter.type.go
//                      ^^^^ storage.type.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^^^^^ variable.other.type.go
//                                  ^^ punctuation.section.brackets.end.go
//                                     ^ punctuation.section.parens.begin.go
//                                      ^^^^^ variable.parameter.go
//                                            ^^^^ storage.type.go
//                                                ^ punctuation.section.brackets.begin.go
//                                                 ^^^^^^^ variable.other.type.go
//                                                        ^ punctuation.section.brackets.end.go
//                                                         ^ punctuation.section.parens.end.go
//                                                           ^^^^ storage.type.go

    func Func(param Type[TypeArg]) Type[TypeArg]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//           ^ punctuation.section.parens.begin.go
//            ^^^^^ variable.parameter.go
//                  ^^^^ storage.type.go
//                      ^ punctuation.section.brackets.begin.go
//                       ^^^^^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.section.parens.end.go
//                                 ^^^^ storage.type.go
//                                     ^ punctuation.section.brackets.begin.go
//                                      ^^^^^^^ variable.other.type.go
//                                             ^ punctuation.section.brackets.end.go

    func Func[TypeParam Type[TypeArg]] (param Type[TypeArg]) Type[TypeArg]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^^^^^^ variable.parameter.type.go
//                      ^^^^ storage.type.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^^^^^ variable.other.type.go
//                                  ^^ punctuation.section.brackets.end.go
//                                     ^ punctuation.section.parens.begin.go
//                                      ^^^^^ variable.parameter.go
//                                            ^^^^ storage.type.go
//                                                ^ punctuation.section.brackets.begin.go
//                                                 ^^^^^^^ variable.other.type.go
//                                                        ^ punctuation.section.brackets.end.go
//                                                         ^ punctuation.section.parens.end.go
//                                                           ^^^^ storage.type.go
//                                                               ^ punctuation.section.brackets.begin.go
//                                                                ^^^^^^^ variable.other.type.go
//                                                                       ^ punctuation.section.brackets.end.go

    func Func(param Type[TypeArg]) (param Type[TypeArg])
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//           ^ punctuation.section.parens.begin.go
//            ^^^^^ variable.parameter.go
//                  ^^^^ storage.type.go
//                      ^ punctuation.section.brackets.begin.go
//                       ^^^^^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.section.parens.end.go
//                                 ^ punctuation.section.parens.begin.go
//                                  ^^^^^ variable.parameter.go
//                                        ^^^^ storage.type.go
//                                            ^ punctuation.section.brackets.begin.go
//                                             ^^^^^^^ variable.other.type.go
//                                                    ^ punctuation.section.brackets.end.go
//                                                     ^ punctuation.section.parens.end.go

    func Func[TypeParam Type[TypeArg]] (param Type[TypeArg]) (param Type[TypeArg]) {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^^^^^^ variable.parameter.type.go
//                      ^^^^ storage.type.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^^^^^ variable.other.type.go
//                                  ^^ punctuation.section.brackets.end.go
//                                     ^ punctuation.section.parens.begin.go
//                                      ^^^^^ variable.parameter.go
//                                            ^^^^ storage.type.go
//                                                ^ punctuation.section.brackets.begin.go
//                                                 ^^^^^^^ variable.other.type.go
//                                                        ^ punctuation.section.brackets.end.go
//                                                         ^ punctuation.section.parens.end.go
//                                                           ^ punctuation.section.parens.begin.go
//                                                            ^^^^^ variable.parameter.go
//                                                                  ^^^^ storage.type.go
//                                                                      ^ punctuation.section.brackets.begin.go
//                                                                       ^^^^^^^ variable.other.type.go
//                                                                              ^ punctuation.section.brackets.end.go
//                                                                               ^ punctuation.section.parens.end.go
//                                                                                 ^^ meta.block.go
//                                                                                 ^ punctuation.section.braces.begin.go
//                                                                                  ^ punctuation.section.braces.end.go

    func Func /**/ [
//  ^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^ entity.name.function.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
        ident /**/ ident . /**/ Ident [/**/ ident . /**/ Ident /**/],
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^^^^^ variable.parameter.type.go
//            ^^^^ comment.block.go
//                 ^^^^^ variable.other.go
//                       ^ punctuation.accessor.dot.go
//                         ^^^^ comment.block.go
//                              ^^^^^ storage.type.go
//                                    ^ punctuation.section.brackets.begin.go
//                                     ^^^^ comment.block.go
//                                          ^^^^^ variable.other.type.go
//                                                ^ punctuation.accessor.dot.go
//                                                  ^^^^ comment.block.go
//                                                       ^^^^^ variable.other.member.go
//                                                             ^^^^ comment.block.go
//                                                                 ^ punctuation.section.brackets.end.go
//                                                                  ^ punctuation.separator.go
        ident /**/ ident . /**/ Ident [/**/ ident . /**/ Ident /**/],
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^^^^^ variable.parameter.type.go
//            ^^^^ comment.block.go
//                 ^^^^^ variable.other.go
//                       ^ punctuation.accessor.dot.go
//                         ^^^^ comment.block.go
//                              ^^^^^ storage.type.go
//                                    ^ punctuation.section.brackets.begin.go
//                                     ^^^^ comment.block.go
//                                          ^^^^^ variable.other.type.go
//                                                ^ punctuation.accessor.dot.go
//                                                  ^^^^ comment.block.go
//                                                       ^^^^^ variable.other.member.go
//                                                             ^^^^ comment.block.go
//                                                                 ^ punctuation.section.brackets.end.go
//                                                                  ^ punctuation.separator.go
    ] (
//^^^^^ meta.function.declaration.go
//  ^ punctuation.section.brackets.end.go
//    ^ punctuation.section.parens.begin.go
        ident /**/ ident . /**/ Ident [/**/ ident . /**/ Ident /**/],
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^^^^^ variable.other.go
//                       ^ punctuation.accessor.dot.go
//                         ^^^^ comment.block.go
//                              ^^^^^ storage.type.go
//                                    ^ punctuation.section.brackets.begin.go
//                                     ^^^^ comment.block.go
//                                          ^^^^^ variable.other.type.go
//                                                ^ punctuation.accessor.dot.go
//                                                  ^^^^ comment.block.go
//                                                       ^^^^^ variable.other.member.go
//                                                             ^^^^ comment.block.go
//                                                                 ^ punctuation.section.brackets.end.go
//                                                                  ^ punctuation.separator.go
        ident /**/ ident . /**/ Ident [/**/ ident . /**/ Ident /**/],
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^^^^^ variable.other.go
//                       ^ punctuation.accessor.dot.go
//                         ^^^^ comment.block.go
//                              ^^^^^ storage.type.go
//                                    ^ punctuation.section.brackets.begin.go
//                                     ^^^^ comment.block.go
//                                          ^^^^^ variable.other.type.go
//                                                ^ punctuation.accessor.dot.go
//                                                  ^^^^ comment.block.go
//                                                       ^^^^^ variable.other.member.go
//                                                             ^^^^ comment.block.go
//                                                                 ^ punctuation.section.brackets.end.go
//                                                                  ^ punctuation.separator.go
    ) (
//^^^^^ meta.function.declaration.go
//  ^ punctuation.section.parens.end.go
//    ^ punctuation.section.parens.begin.go
        ident /**/ ident . /**/ Ident [/**/ ident . /**/ Ident /**/],
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^^^^^ variable.other.go
//                       ^ punctuation.accessor.dot.go
//                         ^^^^ comment.block.go
//                              ^^^^^ storage.type.go
//                                    ^ punctuation.section.brackets.begin.go
//                                     ^^^^ comment.block.go
//                                          ^^^^^ variable.other.type.go
//                                                ^ punctuation.accessor.dot.go
//                                                  ^^^^ comment.block.go
//                                                       ^^^^^ variable.other.member.go
//                                                             ^^^^ comment.block.go
//                                                                 ^ punctuation.section.brackets.end.go
//                                                                  ^ punctuation.separator.go
        ident /**/ ident . /**/ Ident [/**/ ident . /**/ Ident /**/],
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^^^^^ variable.parameter.go
//            ^^^^ comment.block.go
//                 ^^^^^ variable.other.go
//                       ^ punctuation.accessor.dot.go
//                         ^^^^ comment.block.go
//                              ^^^^^ storage.type.go
//                                    ^ punctuation.section.brackets.begin.go
//                                     ^^^^ comment.block.go
//                                          ^^^^^ variable.other.type.go
//                                                ^ punctuation.accessor.dot.go
//                                                  ^^^^ comment.block.go
//                                                       ^^^^^ variable.other.member.go
//                                                             ^^^^ comment.block.go
//                                                                 ^ punctuation.section.brackets.end.go
//                                                                  ^ punctuation.separator.go
    )
//^^^ meta.function.declaration.go
//  ^ punctuation.section.parens.end.go

/* ### Generic functions: methods */

    func(param Type[TypeArg]) Func(param Type[TypeArg]) Type
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^^ variable.parameter.go
//             ^^^^ storage.type.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^^^^^ variable.parameter.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.section.parens.end.go
//                            ^^^^ entity.name.function.go
//                                ^ punctuation.section.parens.begin.go
//                                 ^^^^^ variable.parameter.go
//                                       ^^^^ storage.type.go
//                                           ^ punctuation.section.brackets.begin.go
//                                            ^^^^^^^ variable.other.type.go
//                                                   ^ punctuation.section.brackets.end.go
//                                                    ^ punctuation.section.parens.end.go
//                                                      ^^^^ storage.type.go
//                                                          ^ - meta.function.declaration.go

    func(ident ident[ident, ident]) ident(ident ident[ident, ident]) (ident ident[ident, ident])
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^^ variable.parameter.go
//             ^^^^^ storage.type.go
//                  ^ punctuation.section.brackets.begin.go
//                   ^^^^^ variable.parameter.type.go
//                        ^ punctuation.separator.go
//                          ^^^^^ variable.parameter.type.go
//                               ^ punctuation.section.brackets.end.go
//                                ^ punctuation.section.parens.end.go
//                                  ^^^^^ entity.name.function.go
//                                       ^ punctuation.section.parens.begin.go
//                                        ^^^^^ variable.parameter.go
//                                              ^^^^^ storage.type.go
//                                                   ^ punctuation.section.brackets.begin.go
//                                                    ^^^^^ variable.other.type.go
//                                                         ^ punctuation.separator.go
//                                                           ^^^^^ variable.other.type.go
//                                                                ^ punctuation.section.brackets.end.go
//                                                                 ^ punctuation.section.parens.end.go
//                                                                   ^ punctuation.section.parens.begin.go
//                                                                    ^^^^^ variable.parameter.go
//                                                                          ^^^^^ storage.type.go
//                                                                               ^ punctuation.section.brackets.begin.go
//                                                                                ^^^^^ variable.other.type.go
//                                                                                     ^ punctuation.separator.go
//                                                                                       ^^^^^ variable.other.type.go
//                                                                                            ^ punctuation.section.brackets.end.go
//                                                                                             ^ punctuation.section.parens.end.go
//                                                                                              ^ - meta.function.declaration.go

/* ## interface */

    interface{}
//  ^^^^^^^^^ keyword.declaration.interface.go
//           ^ meta.type.go punctuation.section.braces.begin.go
//            ^ meta.type.go punctuation.section.braces.end.go

    interface /**/ {
//  ^^^^^^^^^ keyword.declaration.interface.go
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

        Method(Type[TypeArg])
//      ^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^^ entity.name.function.go
//            ^ punctuation.section.parens.begin.go
//             ^^^^ storage.type.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^^^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.section.parens.end.go

        Inherit
//      ^^^^^^^ meta.type.go storage.type.go

        *ident.Inherit
//      ^ meta.type.go keyword.operator.go
//       ^^^^^ meta.type.go variable.other.go
//            ^ meta.type.go punctuation.accessor.dot.go
//             ^^^^^^^ meta.type.go storage.type.go

        Inherit // comment
//      ^^^^^^^ meta.type.go storage.type.go
//              ^^^^^^^^^^^ meta.type.go comment.line.double-slash.go

        Inherit /* comment */
//      ^^^^^^^ meta.type.go storage.type.go
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
//                  ^^^^^^^ meta.type.go storage.type.go

        ident .
//      ^^^^^ meta.type.go variable.other.go
//            ^ meta.type.go punctuation.accessor.dot.go
        ident .
//      ^^^^^ meta.type.go variable.other.go
//            ^ meta.type.go punctuation.accessor.dot.go
        Inherit
//      ^^^^^^^ meta.type.go storage.type.go
    }
//  ^ meta.type.go punctuation.section.braces.end.go

    interface
//  ^^^^^^^^^ keyword.declaration.interface.go
    {Method(param typ) typ; Inherit; Method(param typ) typ;}
//  ^ meta.type.go punctuation.section.braces.begin.go
//   ^^^^^^ meta.type.go entity.name.function.go
//         ^ meta.type.go punctuation.section.parens.begin.go
//          ^^^^^ meta.type.go variable.parameter.go
//                ^^^ meta.type.go storage.type.go
//                   ^ meta.type.go punctuation.section.parens.end.go
//                     ^^^ meta.type.go storage.type.go
//                        ^ meta.type.go punctuation.terminator.go
//                          ^^^^^^^ meta.type.go storage.type.go
//                                 ^ meta.type.go punctuation.terminator.go
//                                   ^^^^^^ meta.type.go entity.name.function.go
//                                         ^ meta.type.go punctuation.section.parens.begin.go
//                                          ^^^^^ meta.type.go variable.parameter.go
//                                                ^^^ meta.type.go storage.type.go
//                                                   ^ meta.type.go punctuation.section.parens.end.go
//                                                     ^^^ meta.type.go storage.type.go
//                                                        ^ meta.type.go punctuation.terminator.go
//                                                         ^ meta.type.go punctuation.section.braces.end.go

    interface{~ident}
//  ^^^^^^^^^ keyword.declaration.interface.go
//           ^^^^^^^^ meta.type.go
//           ^ punctuation.section.braces.begin.go
//            ^ keyword.operator.go
//             ^^^^^ storage.type.go
//                  ^ punctuation.section.braces.end.go

    interface{one|two|three}
//  ^^^^^^^^^ keyword.declaration.interface.go
//           ^^^^^^^^^^^^^^^ meta.type.go
//           ^ punctuation.section.braces.begin.go
//            ^^^ storage.type.go
//               ^ keyword.operator.go
//                ^^^ storage.type.go
//                   ^ keyword.operator.go
//                    ^^^^^ storage.type.go
//                         ^ punctuation.section.braces.end.go

    interface{~one|~two|~three}
//  ^^^^^^^^^ keyword.declaration.interface.go
//           ^^^^^^^^^^^^^^^^^^ meta.type.go
//           ^ punctuation.section.braces.begin.go
//            ^ keyword.operator.go
//             ^^^ storage.type.go
//                ^ keyword.operator.go
//                 ^ keyword.operator.go
//                  ^^^ storage.type.go
//                     ^ keyword.operator.go
//                      ^ keyword.operator.go
//                       ^^^^^ storage.type.go
//                            ^ punctuation.section.braces.end.go

    interface{
        one |
//      ^^^ storage.type.go
//          ^ keyword.operator.go
        // comment
//      ^^^^^^^^^^ comment.line.double-slash.go
//      ^^ punctuation.definition.comment.go
        two
//      ^^^ storage.type.go
    }

/* ## map */

    map[typ]typ
//  ^^^ keyword.declaration.map.go
//     ^ punctuation.section.brackets.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.section.brackets.end.go
//          ^^^ storage.type.go

    map[typ]typ ident
//  ^^^ keyword.declaration.map.go
//     ^ punctuation.section.brackets.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.section.brackets.end.go
//          ^^^ storage.type.go
//              ^^^^^ variable.other.go - storage

    map /**/ [/**/ typ /**/] /**/ typ
//  ^^^ keyword.declaration.map.go
//      ^^^^ comment.block.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^ comment.block.go
//                 ^^^ storage.type.go
//                     ^^^^ comment.block.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^ comment.block.go
//                                ^^^ storage.type.go

    map
//  ^^^ keyword.declaration.map.go
    /**/
//  ^^^^ comment.block.go
    [
//  ^ punctuation.section.brackets.begin.go
        /**/
//      ^^^^ comment.block.go
        typ
//      ^^^ storage.type.go
        /**/
//      ^^^^ comment.block.go
    ]
    /**/
//  ^^^^ comment.block.go
    typ
//  ^^^ storage.type.go

    map[typ]map[typ]map[typ]map[typ]typ
//  ^^^ keyword.declaration.map.go
//      ^^^ storage.type.go
//          ^^^ keyword.declaration.map.go
//              ^^^ storage.type.go
//                  ^^^ keyword.declaration.map.go
//                      ^^^ storage.type.go
//                          ^^^ keyword.declaration.map.go
//                              ^^^ storage.type.go
//                                  ^^^ storage.type.go

    map[chan chan typ]chan chan typ ident
//  ^^^ keyword.declaration.map.go
//      ^^^^ keyword.declaration.chan.go
//           ^^^^ keyword.declaration.chan.go
//                ^^^ storage.type.go
//                    ^^^^ keyword.declaration.chan.go
//                         ^^^^ keyword.declaration.chan.go
//                              ^^^ storage.type.go
//                                  ^^^^^ variable.other.go

    map[<- chan typ] chan <- typ
//  ^^^ keyword.declaration.map.go
//      ^^ keyword.operator.assignment.go
//         ^^^^ keyword.declaration.chan.go
//              ^^^ storage.type.go
//                   ^^^^ keyword.declaration.chan.go
//                        ^^ keyword.operator.assignment.go
//                           ^^^ storage.type.go

    map[func(param typ) typ]func(param typ) typ
//  ^^^ keyword.declaration.map.go
//      ^^^^ keyword.declaration.function.go
//           ^^^^^ variable.parameter.go
//                 ^^^ storage.type.go
//                      ^^^ storage.type.go
//                          ^^^^ keyword.declaration.function.go
//                               ^^^^^ variable.parameter.go
//                                     ^^^ storage.type.go
//                                          ^^^ storage.type.go

    map[map[typ]typ]map[typ]typ
//  ^^^ keyword.declaration.map.go
//      ^^^ keyword.declaration.map.go
//          ^^^ storage.type.go
//              ^^^ storage.type.go
//                  ^^^ keyword.declaration.map.go
//                      ^^^ storage.type.go
//                          ^^^ storage.type.go

    map[struct{
//  ^^^ keyword.declaration.map.go
//      ^^^^^^ keyword.declaration.struct.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
    }] struct {
//     ^^^^^^ keyword.declaration.struct.go
//             ^ meta.type.go
        field typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
//               ^ meta.type.go
    }

    map[*typ]*typ
//  ^^^ keyword.declaration.map.go
//      ^ keyword.operator.go
//       ^^^ storage.type.go
//           ^ keyword.operator.go
//            ^^^ storage.type.go

    map[ident.Type]ident.Type
//  ^^^ keyword.declaration.map.go
//      ^^^^^ variable.other.go
//           ^ punctuation.accessor.dot.go
//            ^^^^ storage.type.go
//                 ^^^^^ variable.other.go
//                      ^ punctuation.accessor.dot.go
//                       ^^^^ storage.type.go

    map[*ident.Type]*ident.Type
//  ^^^ keyword.declaration.map.go
//      ^ keyword.operator.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^ storage.type.go
//                  ^ keyword.operator.go
//                   ^^^^^ variable.other.go
//                        ^ punctuation.accessor.dot.go
//                         ^^^^ storage.type.go

    map[typ]ident . /**/
//  ^^^ keyword.declaration.map.go
//      ^^^ storage.type.go
//          ^^^^^ variable.other.go
//                ^ punctuation.accessor.dot.go
//                  ^^^^ comment.block.go
            ident . /**/
//          ^^^^^ variable.other.go
//                ^ punctuation.accessor.dot.go
//                  ^^^^ comment.block.go
            typ
//          ^^^ storage.type.go

    map[[0]typ][0]typ
//  ^^^ keyword.declaration.map.go
//       ^ meta.number.integer.decimal.go constant.numeric.value.go
//         ^^^ storage.type.go
//              ^ meta.number.integer.decimal.go constant.numeric.value.go
//                ^^^ storage.type.go

    map[/**/ [0] /**/ typ /**/ ] /**/ [0] /**/ typ
//  ^^^ keyword.declaration.map.go
//      ^^^^ comment.block.go
//            ^ meta.number.integer.decimal.go constant.numeric.value.go
//               ^^^^ comment.block.go
//                    ^^^ storage.type.go
//                        ^^^^ comment.block.go
//                               ^^^^ comment.block.go
//                                     ^ meta.number.integer.decimal.go constant.numeric.value.go
//                                        ^^^^ comment.block.go
//                                             ^^^ storage.type.go


/* ## struct */

    struct{}
//  ^^^^^^ keyword.declaration.struct.go
//        ^ meta.type.go punctuation.section.braces.begin.go
//         ^ meta.type.go punctuation.section.braces.end.go

    struct {field typ}
//  ^^^^^^ keyword.declaration.struct.go
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go

    struct {field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go

    struct {true nil}
//  ^^^^^^ keyword.declaration.struct.go
//          ^^^^ meta.type.go variable.other.member.declaration.go
//               ^^^ meta.type.go storage.type.go

    struct {embed}
//  ^^^^^^ keyword.declaration.struct.go
//          ^^^^^ meta.type.go entity.other.inherited-class.go

    struct {embed;}
//  ^^^^^^ keyword.declaration.struct.go
//          ^^^^^ meta.type.go entity.other.inherited-class.go

    struct {embed; field typ; *embed; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
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
//  ^^^^^^ keyword.declaration.struct.go
        field typ `json:"field,omitempty" xml:"name"`
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^ meta.type.go storage.type.go
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation - meta.annotation meta.annotation
//                ^ punctuation.definition.annotation.begin
//                 ^^^^ meta.annotation.identifier variable.annotation
//                     ^ punctuation.separator.key-value
//                      ^^^^^^^^^^^^^^^^^ meta.annotation.parameters
//                      ^^^^^^^^^^^^^^^^^ string.quoted.double
//                      ^ punctuation.definition.string.begin
//                            ^ punctuation.separator.sequence
//                                      ^ punctuation.definition.string.end
//                                        ^^^ meta.annotation.identifier variable.annotation
//                                           ^ punctuation.separator.key-value
//                                            ^^^^^^ meta.annotation.parameters string.quoted.double
//                                            ^ punctuation.definition.string.begin
//                                                 ^ punctuation.definition.string.end
//                                                  ^ punctuation.definition.annotation.end
        field /**/ typ /**/ `json:"field"`
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go comment.block.go
//                 ^^^ meta.type.go storage.type.go
//                     ^^^^ meta.type.go comment.block.go
//                          ^^^^^^^^^^^^^^ meta.type.go meta.annotation - meta.annotation meta.annotation
        typ       `json:"-"`
//      ^^^ meta.type.go entity.other.inherited-class.go
//                ^^^^^^^^^^ meta.type.go meta.annotation
        typ /**/  `json:"-"`
//      ^^^ meta.type.go entity.other.inherited-class.go
//          ^^^^ meta.type.go comment.block.go
//                ^^^^^^^^^^ meta.type.go meta.annotation
        typ
//      ^^^ meta.type.go entity.other.inherited-class.go

        typ // comment
//      ^^^ meta.type.go entity.other.inherited-class.go
//          ^^^^^^^^^^^ meta.type.go comment.line.double-slash.go

        typ /* comment */
//      ^^^ meta.type.go entity.other.inherited-class.go
//          ^^^^^^^^^^^^^ meta.type.go comment.block.go
    }

    struct
//  ^^^^^^ keyword.declaration.struct.go
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
        ** /**/ ident . /**/ ident . /**/ embed
//      ^^ meta.type.go keyword.operator.go
//         ^^^^ meta.type.go comment.block.go
//              ^^^^^ meta.type.go variable.other.go
//                    ^ meta.type.go punctuation.accessor.dot.go
//                      ^^^^ meta.type.go comment.block.go
//                           ^^^^^ meta.type.go variable.other.go
//                                 ^ meta.type.go punctuation.accessor.dot.go
//                                   ^^^^ meta.type.go comment.block.go
//                                        ^^^^^ meta.type.go entity.other.inherited-class.go

        ** ident . /**/
//      ^^ meta.type.go keyword.operator.go
//         ^^^^^ meta.type.go variable.other.go
//               ^ meta.type.go punctuation.accessor.dot.go
//                 ^^^^ meta.type.go comment.block.go
           ident . /**/
//         ^^^^^ meta.type.go variable.other.go
//               ^ meta.type.go punctuation.accessor.dot.go
//                 ^^^^ meta.type.go comment.block.go
           embed
//         ^^^^^ meta.type.go entity.other.inherited-class.go
    }

    struct {
//  ^^^^^^ keyword.declaration.struct.go
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
//  ^^^^^^ keyword.declaration.struct.go
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
//  ^^^^^^ keyword.declaration.struct.go
        field chan typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go keyword.declaration.chan.go
//                 ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field <- chan typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^ meta.type.go keyword.operator.assignment.go
//               ^^^^ meta.type.go keyword.declaration.chan.go
//                    ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field chan <- typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go keyword.declaration.chan.go
//                 ^^ meta.type.go keyword.operator.assignment.go
//                    ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field func(param typ) typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go keyword.declaration.function.go
//                ^ meta.type.go punctuation.section.parens.begin.go
//                 ^^^^^ meta.type.go variable.parameter.go
//                       ^^^ meta.type.go storage.type.go
//                          ^ meta.type.go punctuation.section.parens.end.go
//                            ^^^ meta.type.go storage.type.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go


        field func(
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^ meta.type.go keyword.declaration.function.go
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
//            ^^^ meta.type.go keyword.declaration.map.go
            typ
//          ^^^ meta.type.go storage.type.go
        ] typ
//      ^ meta.type.go punctuation.section.brackets.end.go

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field interface{
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^^^^^^ meta.type.go keyword.declaration.interface.go
            method()
//          ^^^^^^ meta.type.go meta.type.go entity.name.function.go
        }

        embed
//      ^^^^^ meta.type.go entity.other.inherited-class.go

        field struct{
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^^^^^^ meta.type.go keyword.declaration.struct.go
            field typ
//          ^^^^^ meta.type.go meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go meta.type.go storage.type.go
        }

        field [0]typ
//      ^^^^^ meta.type.go variable.other.member.declaration.go
//            ^ meta.type.go punctuation.section.brackets.begin.go
//             ^ meta.type.go meta.number.integer.decimal.go constant.numeric.value.go
//              ^ meta.type.go punctuation.section.brackets.end.go
//               ^^^ meta.type.go storage.type.go
    }

/* ### Embedded parametrized types */

    struct{ embed[typ] }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^ punctuation.section.braces.end.go

    struct{ embed[typ]; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                    ^ punctuation.terminator.go
//                      ^ punctuation.section.braces.end.go

    struct{ embed[typ] `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^^^^^ meta.annotation
//                     ^ punctuation.definition.annotation.begin.go
//                         ^ punctuation.definition.annotation.end.go
//                           ^ punctuation.section.braces.end.go

    struct{ embed[typ] `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^^^^^ meta.annotation
//                     ^ punctuation.definition.annotation.begin.go
//                         ^ punctuation.definition.annotation.end.go
//                          ^ punctuation.terminator.go
//                            ^ punctuation.section.braces.end.go

    struct{ embed[typ]; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                    ^ punctuation.terminator.go
//                      ^^^^^ variable.other.member.declaration.go
//                            ^^^ storage.type.go
//                                ^ punctuation.section.braces.end.go

    struct{ embed[typ]; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                    ^ punctuation.terminator.go
//                      ^^^^^ variable.other.member.declaration.go
//                            ^^^ storage.type.go
//                               ^ punctuation.terminator.go
//                                ^ punctuation.section.braces.end.go

    struct{ embed[typ]; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                    ^ punctuation.terminator.go
//                      ^^^^^ variable.other.member.declaration.go
//                            ^^^ storage.type.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                      ^ punctuation.section.braces.end.go

    struct{ embed[typ]; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                    ^ punctuation.terminator.go
//                      ^^^^^ variable.other.member.declaration.go
//                            ^^^ storage.type.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                     ^ punctuation.terminator.go
//                                       ^ punctuation.section.braces.end.go

    struct{ embed[typ] `tag`; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^^^^^ meta.annotation
//                     ^ punctuation.definition.annotation.begin.go
//                         ^ punctuation.definition.annotation.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                      ^ punctuation.section.braces.end.go

    struct{ embed[typ] `tag`; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^^^^^ meta.annotation
//                     ^ punctuation.definition.annotation.begin.go
//                         ^ punctuation.definition.annotation.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                     ^ punctuation.terminator.go
//                                      ^ punctuation.section.braces.end.go

    struct{ embed[typ] `tag`; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^^^^^ meta.annotation
//                     ^ punctuation.definition.annotation.begin.go
//                         ^ punctuation.definition.annotation.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                            ^ punctuation.section.braces.end.go

    struct{ embed[typ] `tag`; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ entity.other.inherited-class.go
//               ^ punctuation.section.brackets.begin.go
//                ^^^ variable.other.type.go
//                   ^ punctuation.section.brackets.end.go
//                     ^^^^^ meta.annotation
//                     ^ punctuation.definition.annotation.begin.go
//                         ^ punctuation.definition.annotation.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ]; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.terminator.go
//                            ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ meta.annotation
//                           ^ punctuation.definition.annotation.begin.go
//                               ^ punctuation.definition.annotation.end.go
//                                 ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ meta.annotation
//                           ^ punctuation.definition.annotation.begin.go
//                               ^ punctuation.definition.annotation.end.go
//                                ^ punctuation.terminator.go
//                                  ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ]; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                      ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ]; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                     ^ punctuation.terminator.go
//                                      ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ]; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                            ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ]; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.terminator.go
//                            ^^^^^ variable.other.member.declaration.go
//                                  ^^^ storage.type.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] `tag`; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ meta.annotation
//                           ^ punctuation.definition.annotation.begin.go
//                               ^ punctuation.definition.annotation.end.go
//                                ^ punctuation.terminator.go
//                                  ^^^^^ variable.other.member.declaration.go
//                                        ^^^ storage.type.go
//                                            ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] `tag`; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ meta.annotation
//                           ^ punctuation.definition.annotation.begin.go
//                               ^ punctuation.definition.annotation.end.go
//                                ^ punctuation.terminator.go
//                                  ^^^^^ variable.other.member.declaration.go
//                                        ^^^ storage.type.go
//                                           ^ punctuation.terminator.go
//                                            ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] `tag`; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ meta.annotation
//                           ^ punctuation.definition.annotation.begin.go
//                               ^ punctuation.definition.annotation.end.go
//                                ^ punctuation.terminator.go
//                                  ^^^^^ variable.other.member.declaration.go
//                                        ^^^ storage.type.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                  ^ punctuation.section.braces.end.go

    struct{ ident.embed[typ] `tag`; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ entity.other.inherited-class.go
//                     ^ punctuation.section.brackets.begin.go
//                      ^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ meta.annotation
//                           ^ punctuation.definition.annotation.begin.go
//                               ^ punctuation.definition.annotation.end.go
//                                ^ punctuation.terminator.go
//                                  ^^^^^ variable.other.member.declaration.go
//                                        ^^^ storage.type.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.terminator.go
//                                                   ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ]; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.terminator.go
//                                 ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                      ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                     ^ punctuation.terminator.go
//                                       ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ]; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.terminator.go
//                                 ^^^^^ variable.other.member.declaration.go
//                                       ^^^ storage.type.go
//                                           ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ]; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.terminator.go
//                                 ^^^^^ variable.other.member.declaration.go
//                                       ^^^ storage.type.go
//                                          ^ punctuation.terminator.go
//                                           ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ]; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.terminator.go
//                                 ^^^^^ variable.other.member.declaration.go
//                                       ^^^ storage.type.go
//                                           ^^^^^ meta.annotation
//                                           ^ punctuation.definition.annotation.begin.go
//                                               ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ]; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.terminator.go
//                                 ^^^^^ variable.other.member.declaration.go
//                                       ^^^ storage.type.go
//                                           ^^^^^ meta.annotation
//                                           ^ punctuation.definition.annotation.begin.go
//                                               ^ punctuation.definition.annotation.end.go
//                                                ^ punctuation.terminator.go
//                                                  ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] `tag`; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                 ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] `tag`; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                 ^^^ meta.annotation.identifier variable.annotation
//                                    ^ punctuation.definition.annotation.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                ^ punctuation.terminator.go
//                                                 ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] `tag`; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                 ^^^^^ meta.annotation
//                                                 ^ punctuation.definition.annotation.begin.go
//                                                     ^ punctuation.definition.annotation.end.go
//                                                       ^ punctuation.section.braces.end.go

    struct{ field typ; embed[typ] `tag`; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                   ^ punctuation.terminator.go
//                     ^^^^^ entity.other.inherited-class.go
//                          ^ punctuation.section.brackets.begin.go
//                           ^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ meta.annotation
//                                ^ punctuation.definition.annotation.begin.go
//                                    ^ punctuation.definition.annotation.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                 ^^^^^ meta.annotation
//                                                 ^ punctuation.definition.annotation.begin.go
//                                                     ^ punctuation.definition.annotation.end.go
//                                                      ^ punctuation.terminator.go
//                                                        ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ]; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                     ^ punctuation.terminator.go
//                                       ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                            ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ]; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                 ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ]; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                ^ punctuation.terminator.go
//                                                 ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ]; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                 ^^^^^ meta.annotation
//                                                 ^ punctuation.definition.annotation.begin.go
//                                                     ^ punctuation.definition.annotation.end.go
//                                                       ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ]; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                     ^ punctuation.terminator.go
//                                       ^^^^^ variable.other.member.declaration.go
//                                             ^^^ storage.type.go
//                                                 ^^^^^ meta.annotation
//                                                 ^ punctuation.definition.annotation.begin.go
//                                                     ^ punctuation.definition.annotation.end.go
//                                                      ^ punctuation.terminator.go
//                                                        ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] `tag`; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                       ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] `tag`; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                      ^ punctuation.terminator.go
//                                                       ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] `tag`; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                       ^^^^^ meta.annotation
//                                                       ^ punctuation.definition.annotation.begin.go
//                                                           ^ punctuation.definition.annotation.end.go
//                                                             ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; embed[typ] `tag`; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ entity.other.inherited-class.go
//                                ^ punctuation.section.brackets.begin.go
//                                 ^^^ variable.other.type.go
//                                    ^ punctuation.section.brackets.end.go
//                                      ^^^^^ meta.annotation
//                                      ^ punctuation.definition.annotation.begin.go
//                                          ^ punctuation.definition.annotation.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                       ^^^^^ meta.annotation
//                                                       ^ punctuation.definition.annotation.begin.go
//                                                           ^ punctuation.definition.annotation.end.go
//                                                            ^ punctuation.terminator.go
//                                                              ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ]; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                           ^ punctuation.terminator.go
//                                             ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                  ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.terminator.go
//                                                   ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ]; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                       ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ]; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                      ^ punctuation.terminator.go
//                                                       ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ]; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                       ^^^^^ meta.annotation
//                                                       ^ punctuation.definition.annotation.begin.go
//                                                           ^ punctuation.definition.annotation.end.go
//                                                             ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ]; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                           ^ punctuation.terminator.go
//                                             ^^^^^ variable.other.member.declaration.go
//                                                   ^^^ storage.type.go
//                                                       ^^^^^ meta.annotation
//                                                       ^ punctuation.definition.annotation.begin.go
//                                                           ^ punctuation.definition.annotation.end.go
//                                                            ^ punctuation.terminator.go
//                                                              ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] `tag`; field typ }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.terminator.go
//                                                   ^^^^^ variable.other.member.declaration.go
//                                                         ^^^ storage.type.go
//                                                             ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] `tag`; field typ;}
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.terminator.go
//                                                   ^^^^^ variable.other.member.declaration.go
//                                                         ^^^ storage.type.go
//                                                            ^ punctuation.terminator.go
//                                                             ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] `tag`; field typ `tag` }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.terminator.go
//                                                   ^^^^^ variable.other.member.declaration.go
//                                                         ^^^ storage.type.go
//                                                             ^^^^^ meta.annotation
//                                                             ^ punctuation.definition.annotation.begin.go
//                                                                 ^ punctuation.definition.annotation.end.go
//                                                                   ^ punctuation.section.braces.end.go

    struct{ field typ `tag`; ident.embed[typ] `tag`; field typ `tag`; }
//  ^^^^^^ keyword.declaration.struct.go
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//        ^ punctuation.section.braces.begin.go
//          ^^^^^ variable.other.member.declaration.go
//                ^^^ storage.type.go
//                    ^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
//                         ^ punctuation.terminator.go
//                           ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                 ^^^^^ entity.other.inherited-class.go
//                                      ^ punctuation.section.brackets.begin.go
//                                       ^^^ variable.other.type.go
//                                          ^ punctuation.section.brackets.end.go
//                                            ^^^^^ meta.annotation
//                                            ^ punctuation.definition.annotation.begin.go
//                                                ^ punctuation.definition.annotation.end.go
//                                                 ^ punctuation.terminator.go
//                                                   ^^^^^ variable.other.member.declaration.go
//                                                         ^^^ storage.type.go
//                                                             ^^^^^ meta.annotation
//                                                             ^ punctuation.definition.annotation.begin.go
//                                                                 ^ punctuation.definition.annotation.end.go
//                                                                  ^ punctuation.terminator.go
//                                                                    ^ punctuation.section.braces.end.go

    struct {
//  ^^^^^^ keyword.declaration.struct.go
//         ^ meta.type.go punctuation.section.braces.begin.go
        embed[typ]
//^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^ variable.other.type.go
//               ^ punctuation.section.brackets.end.go
        embed[typ, typ]
//^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^ variable.other.type.go
//               ^ punctuation.separator.go
//                 ^^^ variable.other.type.go
//                    ^ punctuation.section.brackets.end.go
        embed[typ] ``
//^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^ variable.other.type.go
//               ^ punctuation.section.brackets.end.go
//                 ^^ meta.annotation
//                 ^ punctuation.definition.annotation.begin.go
//                  ^ punctuation.definition.annotation.end.go
        embed /**/ [typ]
//^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
        embed /**/ [typ] ``
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
//                       ^^ meta.annotation
//                       ^ punctuation.definition.annotation.begin.go
//                        ^ punctuation.definition.annotation.end.go
        embed /**/ [typ] /**/
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
//                       ^^^^ comment.block.go
//                       ^^ punctuation.definition.comment.begin.go
//                         ^^ punctuation.definition.comment.end.go
        embed /**/ [typ] /**/ ``
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
//                       ^^^^ comment.block.go
//                       ^^ punctuation.definition.comment.begin.go
//                         ^^ punctuation.definition.comment.end.go
//                            ^^ meta.annotation
//                            ^ punctuation.definition.annotation.begin.go
//                             ^ punctuation.definition.annotation.end.go
        embed /**/ [typ] ; field typ
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
//                       ^ punctuation.terminator.go
//                         ^^^^^ variable.other.member.declaration.go
//                               ^^^ storage.type.go
        embed /**/ [typ] /**/; field typ
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
//                       ^^^^ comment.block.go
//                       ^^ punctuation.definition.comment.begin.go
//                         ^^ punctuation.definition.comment.end.go
//                           ^ punctuation.terminator.go
//                             ^^^^^ variable.other.member.declaration.go
//                                   ^^^ storage.type.go
        embed /**/ [typ] /**/ ``; field typ
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ entity.other.inherited-class.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^ variable.other.type.go
//                     ^ punctuation.section.brackets.end.go
//                       ^^^^ comment.block.go
//                       ^^ punctuation.definition.comment.begin.go
//                         ^^ punctuation.definition.comment.end.go
//                            ^^ meta.annotation
//                            ^ punctuation.definition.annotation.begin.go
//                             ^ punctuation.definition.annotation.end.go
//                              ^ punctuation.terminator.go
//                                ^^^^^ variable.other.member.declaration.go
//                                      ^^^ storage.type.go
        field /**/ [] /**/ typ
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ variable.other.member.declaration.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^ punctuation.section.brackets.end.go
//                    ^^^^ comment.block.go
//                    ^^ punctuation.definition.comment.begin.go
//                      ^^ punctuation.definition.comment.end.go
//                         ^^^ storage.type.go
        field /**/ [size] /**/ typ
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ variable.other.member.declaration.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^^ variable.other.go
//                      ^ punctuation.section.brackets.end.go
//                        ^^^^ comment.block.go
//                        ^^ punctuation.definition.comment.begin.go
//                          ^^ punctuation.definition.comment.end.go
//                             ^^^ storage.type.go
        field /**/ [size] /**/ typ `tag`
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^^^^^ variable.other.member.declaration.go
//            ^^^^ comment.block.go
//            ^^ punctuation.definition.comment.begin.go
//              ^^ punctuation.definition.comment.end.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^^ variable.other.go
//                      ^ punctuation.section.brackets.end.go
//                        ^^^^ comment.block.go
//                        ^^ punctuation.definition.comment.begin.go
//                          ^^ punctuation.definition.comment.end.go
//                             ^^^ storage.type.go
//                                 ^^^^^ meta.annotation
//                                 ^ punctuation.definition.annotation.begin.go
//                                     ^ punctuation.definition.annotation.end.go
    }
//^^^ meta.type.go
//  ^ punctuation.section.braces.end.go

    struct {_}
//  ^^^^^^ keyword.declaration.struct.go
//         ^^^ meta.type.go
//         ^ punctuation.section.braces.begin.go
//          ^ variable.language.anonymous.go
//           ^ punctuation.section.braces.end.go

    struct {
        _[typ]
//^^^^^^^^^^^^ meta.type.go
//      ^ variable.language.anonymous.go
//       ^ punctuation.section.brackets.begin.go
//        ^^^ variable.other.type.go
//           ^ punctuation.section.brackets.end.go
    }

    struct {
        *ident.embed[typ]
//^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//      ^ keyword.operator.go
//       ^^^^^ variable.other.go
//            ^ punctuation.accessor.dot.go
//             ^^^^^ entity.other.inherited-class.go
//                  ^ punctuation.section.brackets.begin.go
//                   ^^^ variable.other.type.go
//                      ^ punctuation.section.brackets.end.go
    }

    /*
    Known defect. This should be scoped as an embedded type.
    The current implementation incorrectly scopes this as a field.
    TODO improve.
    */
    struct {
        embed[struct{
        }]
    }

/* ## Array / Slice */

    [0]typ
//  ^ punctuation.section.brackets.begin.go
//   ^ meta.number.integer.decimal.go constant.numeric.value.go
//    ^ punctuation.section.brackets.end.go
//     ^^^ storage.type.go

    [0x10]typ
//  ^ punctuation.section.brackets.begin.go
//   ^^^^ meta.number.integer.hexadecimal.go
//   ^^ constant.numeric.base.go
//     ^^ constant.numeric.value.go
//       ^ punctuation.section.brackets.end.go
//        ^^^ storage.type.go

    [0]typ ident
//  ^ punctuation.section.brackets.begin.go
//   ^ meta.number.integer.decimal.go constant.numeric.value.go
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
//        ^ meta.number.integer.decimal.go constant.numeric.value.go
//          ^^^^ comment.block.go
//                 ^^^^ comment.block.go
//                      ^^^ storage.type.go

    [0]
    ident
//  ^^^^^ variable.other.go - storage

    [/**/
//   ^^^^ comment.block.go
     /**/] /**/ typ
//   ^^^^ comment.block.go
//         ^^^^ comment.block.go
//              ^^^ storage.type.go

    []
    ident
//  ^^^^^ variable.other.go - storage

    []func(
//    ^^^^ keyword.declaration.function.go
        param typ,
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
//               ^ punctuation.separator.go
        param [][][]typ
//      ^^^^^ variable.parameter.go
//            ^ punctuation.section.brackets.begin.go
//             ^ punctuation.section.brackets.end.go
//              ^ punctuation.section.brackets.begin.go
//               ^ punctuation.section.brackets.end.go
//                ^ punctuation.section.brackets.begin.go
//                 ^ punctuation.section.brackets.end.go
//                  ^^^ storage.type.go
    ) typ ident
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go


/* ## type */

    type _ typ
//  ^^^^ keyword.declaration.type.go
//       ^ variable.language.anonymous.go
//         ^^^ storage.type.go

    type Type typ
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^^^ storage.type.go

    type
//  ^^^^ keyword.declaration.type.go
    /**/
//  ^^^^ comment.block.go
    Type /**/ * /**/ * /**/ ident . /**/
//  ^^^^ entity.name.type.go
//       ^^^^ comment.block.go
//            ^ keyword.operator.go
//              ^^^^ comment.block.go
//                   ^ keyword.operator.go
//                     ^^^^ comment.block.go
//                          ^^^^^ variable.other.go
//                                ^ punctuation.accessor.dot.go
//                                  ^^^^ comment.block.go
        /**/ ident . /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.go
//                 ^ punctuation.accessor.dot.go
//                   ^^^^ comment.block.go
        /**/ Type
//      ^^^^ comment.block.go
//           ^^^^ storage.type.go

    type Type
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
    ident
//  ^^^^^ variable.other.go

    type Type; ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//           ^ punctuation.terminator.go
//             ^^^^^ variable.other.go

    type Type chan typ
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ keyword.declaration.chan.go
//                 ^^^ storage.type.go

    type Type <- chan typ
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^^ keyword.operator.assignment.go
//               ^^^^ keyword.declaration.chan.go
//                    ^^^ storage.type.go

    type Type chan <- typ
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ keyword.declaration.chan.go
//                 ^^ keyword.operator.assignment.go
//                    ^^^ storage.type.go

    type Type chan typ ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^^^^ keyword.declaration.chan.go
//                 ^^^ storage.type.go
//                     ^^^^^ variable.other.go

    type Type func(
//            ^^^^ keyword.declaration.function.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ ident
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go

    type Type map[typ]typ ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^^^ keyword.declaration.map.go
//                ^^^ storage.type.go
//                    ^^^ storage.type.go
//                        ^^^^^ variable.other.go

    type Type []typ ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//              ^^^ storage.type.go
//                  ^^^^^ variable.other.go

    type Type interface {
//            ^^^^^^^^^ keyword.declaration.interface.go
        Method()
//      ^^^^^^ meta.type.go entity.name.function.go
        Inherit
//      ^^^^^^^ meta.type.go storage.type.go
    } ident
//    ^^^^^ variable.other.go

    type Type struct {
//            ^^^^^^ keyword.declaration.struct.go
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
//           ^^^^ keyword.declaration.function.go
        )

        Type map
//      ^^^^ entity.name.type.go
//           ^^^ keyword.declaration.map.go
        [typ]typ
//       ^^^ storage.type.go
//           ^^^ storage.type.go

        Type []typ
//      ^^^^ entity.name.type.go
//             ^^^ storage.type.go

        Type interface {
//      ^^^^ entity.name.type.go
//           ^^^^^^^^^ keyword.declaration.interface.go
            Method()
//          ^^^^^^ meta.type.go entity.name.function.go
        }

        Type struct {
//      ^^^^ entity.name.type.go
//           ^^^^^^ keyword.declaration.struct.go
            field typ
//          ^^^^^ meta.type.go variable.other.member.declaration.go
//                ^^^ meta.type.go storage.type.go
        }
    )

    /*
    Support for unions.

    At the time of writing, unions are allowed only in interfaces (called
    "general" interfaces as opposed to "basic" interfaces which contain only
    methods), and in constraints for type parameters, where a union is
    considered a shorthand for a general interface. Unions in RHS of type
    definitions are not yet allowed. However, for us, it's easier to support
    unions in all type contexts.
    */
    type Ident Ident | ~Ident | *Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^^^^^ storage.type.go
//                   ^ keyword.operator.go
//                     ^ keyword.operator.go
//                      ^^^^^ storage.type.go
//                            ^ keyword.operator.go
//                              ^ keyword.operator.go
//                               ^^^^^ storage.type.go

    type Ident = Ident | ~Ident | *Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ keyword.operator.assignment.go
//               ^^^^^ storage.type.go
//                     ^ keyword.operator.go
//                       ^ keyword.operator.go
//                        ^^^^^ storage.type.go
//                              ^ keyword.operator.go
//                                ^ keyword.operator.go
//                                 ^^^^^ storage.type.go

    /*
    Sanity check. This looks similar to a parametrized type, but in fact defines
    an array type.
    */
    type Type[ident] ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//           ^ punctuation.section.brackets.begin.go
//            ^^^^^ variable.other.go
//                 ^ punctuation.section.brackets.end.go
//                   ^^^^^ storage.type.go

    // Same as above. This is NOT a parametrized type.
    type Type[_] ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//           ^ punctuation.section.brackets.begin.go
//            ^ variable.language.anonymous.go
//             ^ punctuation.section.brackets.end.go
//               ^^^^^ storage.type.go

    /*
    Parsing ambiguity. Can be interpreted as:

        * Parametrized typedef of "C" where "A" is a type parameter and "*B" is
          a type constraint.

        * Non-parametrized typedef of array of "C" where "A * B" is a constant
          expression that defines array size.

    For backwards compatibility, Go resolves such ambiguities in favor of
    constant expressions and arrays, rather than type parameter lists.
    We must match this behavior.
    */
    type Type [A * B] C
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^ punctuation.section.brackets.begin.go
//             ^ variable.other.go
//               ^ keyword.operator.go
//                 ^ variable.other.go
//                  ^ punctuation.section.brackets.end.go
//                    ^ storage.type.go

    /*
    Known issue.

    This type parameter list is disambiguated from a fixed-size array definition
    by the trailing comma. This is part of the official documentation and is
    specifically supported by the Go parser and `gofmt`.

    Our current implementation doesn't support this case.
    TODO consider fixing.
    */
    type Type [A * B,] C
//  ^^^^ keyword.declaration.type.go
//       ^^^^ entity.name.type.go
//            ^ punctuation.section.brackets.begin.go
//               ^ keyword.operator.go
//                  ^ punctuation.separator.go
//                   ^ punctuation.section.brackets.end.go
//                     ^ storage.type.go

    type Ident [Ident Ident] Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^^^^^ storage.type.go
//                         ^ punctuation.section.brackets.end.go
//                           ^^^^^ storage.type.go

    type Ident [Ident, Ident Ident] ident.Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                   ^ punctuation.separator.go
//                     ^^^^^ variable.parameter.type.go
//                           ^^^^^ storage.type.go
//                                ^ punctuation.section.brackets.end.go
//                                  ^^^^^ variable.other.go
//                                       ^ punctuation.accessor.dot.go
//                                        ^^^^^ storage.type.go

    type (
        Ident [Ident Ident] Ident
//      ^^^^^ entity.name.type.go
//            ^ punctuation.section.brackets.begin.go
//             ^^^^^ variable.parameter.type.go
//                   ^^^^^ storage.type.go
//                        ^ punctuation.section.brackets.end.go
//                          ^^^^^ storage.type.go

        Ident [Ident ident.Ident] ident.Ident
//      ^^^^^ entity.name.type.go
//            ^ punctuation.section.brackets.begin.go
//             ^^^^^ variable.parameter.type.go
//                   ^^^^^ variable.other.go
//                        ^ punctuation.accessor.dot.go
//                         ^^^^^ storage.type.go
//                              ^ punctuation.section.brackets.end.go
//                                ^^^^^ variable.other.go
//                                     ^ punctuation.accessor.dot.go
//                                      ^^^^^ storage.type.go
    )

    type Ident [
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
        Ident Ident,
//      ^^^^^ variable.parameter.type.go
//            ^^^^^ storage.type.go
//                 ^ punctuation.separator.go
    ] Ident
//  ^ punctuation.section.brackets.end.go
//    ^^^^^ storage.type.go

    type Ident [
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
        Ident ident.Ident,
//      ^^^^^ variable.parameter.type.go
//            ^^^^^ variable.other.go
//                 ^ punctuation.accessor.dot.go
//                  ^^^^^ storage.type.go
//                       ^ punctuation.separator.go
    ] ident.Ident
//  ^ punctuation.section.brackets.end.go
//    ^^^^^ variable.other.go
//         ^ punctuation.accessor.dot.go
//          ^^^^^ storage.type.go

    type Ident [
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
        Ident,
//      ^^^^^ variable.parameter.type.go
//           ^ punctuation.separator.go
        Ident ident.Ident,
//      ^^^^^ variable.parameter.type.go
//            ^^^^^ variable.other.go
//                 ^ punctuation.accessor.dot.go
//                  ^^^^^ storage.type.go
    ] ident.Ident
//  ^ punctuation.section.brackets.end.go
//    ^^^^^ variable.other.go
//         ^ punctuation.accessor.dot.go
//          ^^^^^ storage.type.go

    type Ident [
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
        Ident, Ident ident.Ident,
//      ^^^^^ variable.parameter.type.go
//           ^ punctuation.separator.go
//             ^^^^^ variable.parameter.type.go
//                   ^^^^^ variable.other.go
//                        ^ punctuation.accessor.dot.go
//                         ^^^^^ storage.type.go
//                              ^ punctuation.separator.go
    ] ident.Ident
//  ^ punctuation.section.brackets.end.go
//    ^^^^^ variable.other.go
//         ^ punctuation.accessor.dot.go
//          ^^^^^ storage.type.go

    type Ident [Ident ~Ident] Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^ keyword.operator.go
//                     ^^^^^ storage.type.go
//                          ^ punctuation.section.brackets.end.go
//                            ^^^^^ storage.type.go

    type Ident [Ident ~ident.Ident] ident.Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^ keyword.operator.go
//                     ^^^^^ variable.other.go
//                          ^ punctuation.accessor.dot.go
//                           ^^^^^ storage.type.go
//                                ^ punctuation.section.brackets.end.go
//                                  ^^^^^ variable.other.go
//                                       ^ punctuation.accessor.dot.go
//                                        ^^^^^ storage.type.go

    type Ident [
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
        Ident ~ident.Ident,
//      ^^^^^ variable.parameter.type.go
//            ^ keyword.operator.go
//             ^^^^^ variable.other.go
//                  ^ punctuation.accessor.dot.go
//                   ^^^^^ storage.type.go
//                        ^ punctuation.separator.go
    ] ident.Ident
//  ^ punctuation.section.brackets.end.go
//    ^^^^^ variable.other.go
//         ^ punctuation.accessor.dot.go
//          ^^^^^ storage.type.go

    type Ident [Ident []ident.Ident] ident.Ident

    type Ident [Ident [ident.Ident] ident.Ident] ident.Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^ punctuation.section.brackets.begin.go
//                     ^^^^^ variable.other.go
//                          ^ punctuation.accessor.dot.go
//                           ^^^^^ variable.other.member.go
//                                ^ punctuation.section.brackets.end.go
//                                  ^^^^^ variable.other.go
//                                       ^ punctuation.accessor.dot.go
//                                        ^^^^^ storage.type.go
//                                             ^ punctuation.section.brackets.end.go
//                                               ^^^^^ variable.other.go
//                                                    ^ punctuation.accessor.dot.go
//                                                     ^^^^^ storage.type.go

    type Ident [Ident struct{}] ident.Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^^^^^^ keyword.declaration.struct.go
//                          ^^ meta.type.go
//                          ^ punctuation.section.braces.begin.go
//                           ^ punctuation.section.braces.end.go
//                            ^ punctuation.section.brackets.end.go
//                              ^^^^^ variable.other.go
//                                   ^ punctuation.accessor.dot.go
//                                    ^^^^^ storage.type.go

    type Ident [Ident interface{}] ident.Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^^^^^^^^^^^ meta.type.go
//                    ^^^^^^^^^ keyword.declaration.interface.go
//                             ^ punctuation.section.braces.begin.go
//                              ^ punctuation.section.braces.end.go
//                               ^ punctuation.section.brackets.end.go
//                                 ^^^^^ variable.other.go
//                                      ^ punctuation.accessor.dot.go
//                                       ^^^^^ storage.type.go

    type Ident [Ident map[ident.Ident]ident.Ident] ident.Ident
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
//              ^^^^^ variable.parameter.type.go
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//                    ^^^ keyword.declaration.map.go
//                       ^ punctuation.section.brackets.begin.go
//                        ^^^^^ variable.other.go
//                             ^ punctuation.accessor.dot.go
//                              ^^^^^ storage.type.go
//                                   ^ punctuation.section.brackets.end.go
//                                    ^^^^^ variable.other.go
//                                         ^ punctuation.accessor.dot.go
//                                          ^^^^^ storage.type.go
//                                               ^ punctuation.section.brackets.end.go
//                                                 ^^^^^ variable.other.go
//                                                      ^ punctuation.accessor.dot.go
//                                                       ^^^^^ storage.type.go

    type Ident [
//  ^^^^ keyword.declaration.type.go
//       ^^^^^ entity.name.type.go
//             ^ punctuation.section.brackets.begin.go
        Ident ident.Ident,
//      ^^^^^ variable.parameter.type.go
//            ^^^^^ variable.other.go
//                 ^ punctuation.accessor.dot.go
//                  ^^^^^ storage.type.go
//                       ^ punctuation.separator.go
        Ident interface{
//      ^^^^^ variable.parameter.type.go
//            ^^^^^^^^^^ meta.type.go
//            ^^^^^^^^^ keyword.declaration.interface.go
//                     ^ punctuation.section.braces.begin.go
            ident.Ident
//^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//          ^^^^^ variable.other.go
//               ^ punctuation.accessor.dot.go
//                ^^^^^ storage.type.go
            Method() ident.Ident
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.go
//          ^^^^^^ entity.name.function.go
//                ^ punctuation.section.parens.begin.go
//                 ^ punctuation.section.parens.end.go
//                   ^^^^^ variable.other.go
//                        ^ punctuation.accessor.dot.go
//                         ^^^^^ storage.type.go
        },
//^^^^^^^ meta.type.go
//      ^ punctuation.section.braces.end.go
//       ^ punctuation.separator.go
    ] [Ident * Ident] ident.Ident
//  ^ punctuation.section.brackets.end.go
//    ^ punctuation.section.brackets.begin.go
//     ^^^^^ variable.other.go
//           ^ keyword.operator.go
//             ^^^^^ variable.other.go
//                  ^ punctuation.section.brackets.end.go
//                    ^^^^^ variable.other.go
//                         ^ punctuation.accessor.dot.go
//                          ^^^^^ storage.type.go


/* # Constants and Vars */

// Note: initialization expressions may span multiple lines, but the syntax
// currently doesn't support this due to implementation difficulties. This may
// cause identifiers in those expressions to be incorrectly scoped as constants
// or variables.

    const _ = 10
//  ^^^^^ keyword.declaration.const.go
//        ^ variable.language.anonymous.go
//          ^ keyword.operator.assignment.go
//            ^^ meta.number.integer.decimal.go constant.numeric.value.go

    /**/ const
//  ^^^^ comment.block.go
//       ^^^^^ keyword.declaration.const.go
    /**/ ident /**/ typ /**/ = /**/ iota /**/
//  ^^^^ comment.block.go
//       ^^^^^ variable.other.constant.declaration.go
//             ^^^^ comment.block.go
//                  ^^^ storage.type.go
//                      ^^^^ comment.block.go
//                           ^ keyword.operator.assignment.go
//                             ^^^^ comment.block.go
//                                  ^^^^ constant.language.go
//                                       ^^^^ comment.block.go

    const ident, ident = 10, 20
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
//               ^^^^^ variable.other.constant.declaration.go

    const ident, ident typ
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
//               ^^^^^ variable.other.constant.declaration.go
//                     ^^^ storage.type.go

    const ident,
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
          ident = 10, 20
//        ^^^^^ variable.other.constant.declaration.go

    const ident,
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//             ^ punctuation.separator.go
          ident typ
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go

    /**/ const
//  ^^^^ comment.block.go
//       ^^^^^ keyword.declaration.const.go
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
//                                      ^^^^ constant.language.go
//                                           ^ keyword.operator.arithmetic.go
//                                             ^^^^ constant.language.go
//                                                  ^^^^ comment.block.go

        /**/ ident /**/ = /**/ ident + 100 /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.constant.declaration.go
//                 ^^^^ comment.block.go
//                      ^ keyword.operator.assignment.go
//                        ^^^^ comment.block.go
//                             ^^^^^ variable.other.go
//                                   ^ keyword.operator.arithmetic.go
//                                     ^^^ meta.number.integer.decimal.go constant.numeric.value.go
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
//                  ^^ meta.number.integer.decimal.go constant.numeric.value.go
//                    ^ punctuation.separator.go
//                      ^^ meta.number.integer.decimal.go constant.numeric.value.go

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
//      ^^^^^^ meta.string.go string.quoted.double.go

        ident =
//      ^^^^^ variable.other.constant.declaration.go
//            ^ keyword.operator.assignment.go
        10
//      ^^ meta.number.integer.decimal.go constant.numeric.value.go

        ident =
//      ^^^^^ variable.other.constant.declaration.go
//            ^ keyword.operator.assignment.go
        iota + iota
//      ^^^^ constant.language.go
//           ^ keyword.operator.arithmetic.go
//             ^^^^ constant.language.go

        iota = iota
//      ^^^^ variable.other.constant.declaration.go
//           ^ keyword.operator.assignment.go
//             ^^^^ constant.language.go
    )

    const ident typ = ident +
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go
//                  ^ keyword.operator.assignment.go
//                    ^^^^^ variable.other.go
//                          ^ keyword.operator.arithmetic.go
        ident +
//      ^^^^^ variable.other.go
//            ^ keyword.operator.arithmetic.go
        ident +
//      ^^^^^ variable.other.go
//            ^ keyword.operator.arithmetic.go
        ident
//      ^^^^^ variable.other.go

    const (
//  ^^^^^ keyword.declaration.const.go
        ident typ = ident +
//      ^^^^^ variable.other.constant.declaration.go
//            ^^^ storage.type.go
//                ^ keyword.operator.assignment.go
//                  ^^^^^ variable.other.go
//                        ^ keyword.operator.arithmetic.go
            ident +
//          ^^^^^ variable.other.constant.declaration.go
//                ^ keyword.operator.arithmetic.go

// BUG: this is incorrectly scoped as a type. TODO consider detecting multiline
// expressions, or find another way of handling this properly.
            ident +

            ident
//          ^^^^^ variable.other.constant.declaration.go
    )

// iota is predefined only in constant declarations. It's not a reserved word.
    func _() {
        var iota = 0
//      ^^^ keyword.declaration.var.go
//          ^^^^ variable.other.readwrite.declaration.go
//               ^ keyword.operator.assignment.go
//                 ^ meta.number.integer.decimal.go constant.numeric.value.go
        var _ = iota
//      ^^^ keyword.declaration.var.go
//          ^ variable.language.anonymous.go
//            ^ keyword.operator.assignment.go
//              ^^^^ variable.other.go - constant
    }

    var _ = log.Println
//  ^^^ keyword.declaration.var.go
//      ^ variable.language.anonymous.go
//        ^ keyword.operator.assignment.go
//          ^^^ variable.other.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^^^ variable.other.member.go

    /**/ var
//  ^^^^ comment.block.go
//       ^^^ keyword.declaration.var.go
    /**/ ident /**/ typ /**/ = /**/ 10 /**/
//  ^^^^ comment.block.go
//       ^^^^^ variable.other.readwrite.declaration.go
//             ^^^^ comment.block.go
//                  ^^^ storage.type.go
//                      ^^^^ comment.block.go
//                           ^ keyword.operator.assignment.go
//                             ^^^^ comment.block.go
//                                  ^^ meta.number.integer.decimal.go constant.numeric.value.go
//                                     ^^^^ comment.block.go

    var ident, ident = 10, 20
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go
//           ^ punctuation.separator.go
//             ^^^^^ variable.other.readwrite.declaration.go

    var ident, ident typ
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go
//           ^ punctuation.separator.go
//             ^^^^^ variable.other.readwrite.declaration.go
//                   ^^^ storage.type.go

    var ident,
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go
//           ^ punctuation.separator.go
        ident = 10, 20
//      ^^^^^ variable.other.readwrite.declaration.go

    var ident,
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go
//           ^ punctuation.separator.go
        ident typ
//      ^^^^^ variable.other.readwrite.declaration.go
//            ^^^ storage.type.go

    /**/ var
//  ^^^^ comment.block.go
//       ^^^ keyword.declaration.var.go
    (
//  ^ punctuation.section.parens.begin.go
        /**/ ident /**/ typ /**/ = /**/ ident /**/ + /**/ 20 /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.readwrite.declaration.go
//                 ^^^^ comment.block.go
//                      ^^^ storage.type.go
//                          ^^^^ comment.block.go
//                               ^ keyword.operator.assignment.go
//                                 ^^^^ comment.block.go
//                                      ^^^^^ variable.other.go
//                                            ^^^^ comment.block.go
//                                                 ^ keyword.operator.arithmetic.go
//                                                   ^^^^ comment.block.go
//                                                        ^^ meta.number.integer.decimal.go constant.numeric.value.go
//                                                           ^^^^ comment.block.go

        /**/ ident /**/ = /**/ ident + 20 /**/
//      ^^^^ comment.block.go
//           ^^^^^ variable.other.readwrite.declaration.go
//                 ^^^^ comment.block.go
//                      ^ keyword.operator.assignment.go
//                        ^^^^ comment.block.go
//                             ^^^^^ variable.other.go
//                                   ^ keyword.operator.arithmetic.go
//                                     ^^ meta.number.integer.decimal.go constant.numeric.value.go
//                                        ^^^^ comment.block.go

        ident,
//      ^^^^^ variable.other.readwrite.declaration.go
//           ^ punctuation.separator.go
        ident typ = ident, ident
//      ^^^^^ variable.other.readwrite.declaration.go
//            ^^^ storage.type.go
//                ^ keyword.operator.assignment.go
//                  ^^^^^ variable.other.go
//                       ^ punctuation.separator.go
//                         ^^^^^ variable.other.go
    )
//  ^ punctuation.section.parens.end.go

/* ## Short Variable Declaration */

    ident := expr
//  ^^^^^ variable.other.readwrite.declaration.go
//        ^^ keyword.operator.assignment.go
//           ^^^^ variable.other.go

    ident, ident := expr
//  ^^^^^ variable.other.readwrite.declaration.go
//       ^ punctuation.separator.go
//         ^^^^^ variable.other.readwrite.declaration.go
//               ^^ keyword.operator.assignment.go
//                  ^^^^ variable.other.go

    ident, ident :=
//  ^^^^^ variable.other.readwrite.declaration.go
//       ^ punctuation.separator.go
//         ^^^^^ variable.other.readwrite.declaration.go
//               ^^ keyword.operator.assignment.go
    expr
//  ^^^^ variable.other.go

    ident = expr
//  ^^^^^ variable.other.go
//        ^ keyword.operator.assignment.go
//          ^^^^ variable.other.go

/* # Literals */

/* ## Integers */

/* ### Decimal */

    0; 123456789; -0; -123456789; 1777_000_000;
//  ^ meta.number.integer.decimal.go constant.numeric.value.go
//     ^^^^^^^^^ meta.number.integer.decimal.go constant.numeric.value.go
//                ^ keyword.operator.arithmetic.go
//                 ^ meta.number.integer.decimal.go constant.numeric.value.go
//                    ^ keyword.operator.arithmetic.go
//                     ^^^^^^^^^ meta.number.integer.decimal.go constant.numeric.value.go
//                                ^^^^^^^^^^^^ meta.number.integer.decimal.go constant.numeric.value.go

/* ### Octal */

    00; 01234567; -01234567; 0_0; 012_45;
//  ^ meta.number.integer.octal.go constant.numeric.base.go
//   ^ meta.number.integer.octal.go constant.numeric.value.go
//      ^ meta.number.integer.octal.go constant.numeric.base.go
//       ^^^^^^^ meta.number.integer.octal.go constant.numeric.value.go
//                ^ keyword.operator.arithmetic.go
//                 ^ meta.number.integer.octal.go constant.numeric.base.go
//                  ^^^^^^^ meta.number.integer.octal.go constant.numeric.value.go
//                           ^ meta.number.integer.octal.go constant.numeric.base.go
//                            ^^ meta.number.integer.octal.go constant.numeric.value.go
//                                ^ meta.number.integer.octal.go constant.numeric.base.go
//                                 ^^^^^ meta.number.integer.octal.go constant.numeric.value.go

    08; 09;
//  ^^ invalid.illegal.go
//      ^^ invalid.illegal.go

    0o660; 0O061; -0o02; 0o_660; 0O0_6_1;
//  ^^ meta.number.integer.octal.go constant.numeric.base.go
//    ^^^ meta.number.integer.octal.go constant.numeric.value.go
//         ^^ meta.number.integer.octal.go constant.numeric.base.go
//           ^^^ meta.number.integer.octal.go constant.numeric.value.go
//                ^ keyword.operator.arithmetic.go
//                 ^^ meta.number.integer.octal.go constant.numeric.base.go
//                   ^^ meta.number.integer.octal.go constant.numeric.value.go
//                       ^^ meta.number.integer.octal.go constant.numeric.base.go
//                         ^^^^ meta.number.integer.octal.go constant.numeric.value.go
//                               ^^ meta.number.integer.octal.go constant.numeric.base.go
//                                 ^^^^^ meta.number.integer.octal.go constant.numeric.value.go

/* ### Hex */

    0x0; 0x0123456789ABCDEFabcdef; -0x0123456789ABCDEFabcdef;
//  ^^ meta.number.integer.hexadecimal.go constant.numeric.base.go
//    ^ meta.number.integer.hexadecimal.go constant.numeric.value.go
//       ^^ meta.number.integer.hexadecimal.go constant.numeric.base.go
//         ^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.go constant.numeric.value.go
//                                 ^ keyword.operator.arithmetic.go
//                                  ^^ meta.number.integer.hexadecimal.go constant.numeric.base.go
//                                    ^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.go constant.numeric.value.go

    0x_0; 0x012_3456_7_8_9ABCDEFabcd_ef;
//  ^^ meta.number.integer.hexadecimal.go constant.numeric.base.go
//    ^^ meta.number.integer.hexadecimal.go constant.numeric.value.go
//        ^^ meta.number.integer.hexadecimal.go constant.numeric.base.go
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.go constant.numeric.value.go

/* ### Binary */

    0b1011; 0B00001; -0b1; 0b_1; 0B1_0;
//  ^^ meta.number.integer.binary.go constant.numeric.base.go
//    ^^^^ meta.number.integer.binary.go constant.numeric.value.go
//          ^^ meta.number.integer.binary.go constant.numeric.base.go
//            ^^^^^ meta.number.integer.binary.go constant.numeric.value.go
//                   ^ keyword.operator.arithmetic.go
//                    ^^ meta.number.integer.binary.go constant.numeric.base.go
//                      ^ meta.number.integer.binary.go constant.numeric.value.go
//                         ^^ meta.number.integer.binary.go constant.numeric.base.go
//                           ^^ meta.number.integer.binary.go constant.numeric.value.go
//                               ^^ meta.number.integer.binary.go constant.numeric.base.go
//                                 ^^^ meta.number.integer.binary.go constant.numeric.value.go

/* ## Floats */

    000.000; 123.456; .0; 1.;
//  ^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//     ^ punctuation.separator.decimal.go
//           ^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//              ^ punctuation.separator.decimal.go
//                    ^^ meta.number.float.decimal.go constant.numeric.value.go
//                    ^ punctuation.separator.decimal.go
//                        ^^ meta.number.float.decimal.go constant.numeric.value.go
//                         ^ punctuation.separator.decimal.go

    0_1.0_1; 1_23.4_6;
//  ^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//     ^ punctuation.separator.decimal.go
//           ^^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//               ^ punctuation.separator.decimal.go

    -000.000; -123.456; -.0; -1. -1.. ;
//  ^ keyword.operator.arithmetic.go
//   ^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//      ^ punctuation.separator.decimal.go
//            ^ keyword.operator.arithmetic.go
//             ^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                ^ punctuation.separator.decimal.go
//                      ^ keyword.operator.arithmetic.go
//                       ^^ meta.number.float.decimal.go constant.numeric.value.go
//                       ^ punctuation.separator.decimal.go
//                           ^ keyword.operator.arithmetic.go
//                            ^^ meta.number.float.decimal.go constant.numeric.value.go
//                             ^ punctuation.separator.decimal.go
//                               ^ keyword.operator.arithmetic.go
//                                ^^ meta.number.float.decimal.go constant.numeric.value.go
//                                 ^ punctuation.separator.decimal.go
//                                  ^ punctuation.accessor.dot.go - meta.number

    0e+0; 0E+0; 0.0e+0; 0.0E+0; 123.456e+789;
//  ^^^^ meta.number.float.decimal.go constant.numeric.value.go
//        ^^^^ meta.number.float.decimal.go constant.numeric.value.go
//              ^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//               ^ punctuation.separator.decimal.go
//                      ^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                       ^ punctuation.separator.decimal.go
//                              ^^^^^^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                                 ^ punctuation.separator.decimal.go

    1_2e+0; 1E+0_1; 0.1_2e2; 1_23.4_56e+78_9;
//  ^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//          ^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                  ^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                   ^ punctuation.separator.decimal.go
//                           ^^^^^^^^^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                               ^ punctuation.separator.decimal.go

    0e-0; 0E-0; 0.0e-0; 0.0E-0; 123.456e-789;
//  ^^^^ meta.number.float.decimal.go constant.numeric.value.go
//        ^^^^ meta.number.float.decimal.go constant.numeric.value.go
//              ^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//               ^ punctuation.separator.decimal.go
//                      ^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                       ^ punctuation.separator.decimal.go
//                              ^^^^^^^^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                                 ^ punctuation.separator.decimal.go

    0.e+0; .0e+0; 0.e-0; .0e-0;
//  ^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//   ^ punctuation.separator.decimal.go
//         ^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//         ^ punctuation.separator.decimal.go
//                ^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                 ^ punctuation.separator.decimal.go
//                       ^^^^^ meta.number.float.decimal.go constant.numeric.value.go
//                       ^ punctuation.separator.decimal.go

    0x1p-2; 0X1P+2; 0x1p2;
//  ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//    ^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//          ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//            ^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//                  ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//                    ^^^ meta.number.float.hexadecimal.go constant.numeric.value.go

    0x_1p-2; 0X1_1P+2; 0x_1p2_1;
//  ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//    ^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//           ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//             ^^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//                     ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//                       ^^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go

    0x1.0P-1021; 0X1.0p-1021;
//  ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//    ^^^^^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//     ^ punctuation.separator.decimal.go
//               ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//                 ^^^^^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//                  ^ punctuation.separator.decimal.go

    0x_1_1.0_7P-1_021;
//  ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//    ^^^^^^^^^^^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//        ^ punctuation.separator.decimal.go

    0x2.p10; 0x1.Fp+0; 0X.8p-0;
//  ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//    ^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//     ^ punctuation.separator.decimal.go
//           ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//             ^^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//              ^ punctuation.separator.decimal.go
//                     ^^ meta.number.float.hexadecimal.go constant.numeric.base.go
//                       ^^^^^ meta.number.float.hexadecimal.go constant.numeric.value.go
//                       ^ punctuation.separator.decimal.go

/* ## Imaginary */

    000i; 100i; -100i; 1_1i;
//  ^^^^ meta.number.imaginary.decimal.go
//  ^^^ constant.numeric.value.go
//     ^ constant.numeric.suffix.go
//        ^^^^ meta.number.imaginary.decimal.go
//        ^^^ constant.numeric.value.go
//           ^ constant.numeric.suffix.go
//              ^ keyword.operator.arithmetic.go
//               ^^^^ meta.number.imaginary.decimal.go
//               ^^^ constant.numeric.value.go
//                  ^ constant.numeric.suffix.go
//                     ^^^^ meta.number.imaginary.decimal.go
//                     ^^^ constant.numeric.value.go
//                        ^ constant.numeric.suffix.go

    123.456i; -123.456i; 1_23.45_6i;
//  ^^^^^^^^ meta.number.imaginary.decimal.go
//  ^^^^^^^ constant.numeric.value.go
//     ^ punctuation.separator.decimal.go
//         ^ constant.numeric.suffix.go
//            ^ keyword.operator.arithmetic.go
//             ^^^^^^^^ meta.number.imaginary.decimal.go
//             ^^^^^^^ constant.numeric.value.go
//                ^ punctuation.separator.decimal.go
//                    ^ constant.numeric.suffix.go
//                       ^^^^^^^^^^ meta.number.imaginary.decimal.go
//                       ^^^^^^^^^ constant.numeric.value.go
//                           ^ punctuation.separator.decimal.go
//                                ^ constant.numeric.suffix.go

    1e+2i; 1e-2i; 1.2e+3i; 1.2e-3i; 1E+2i; 1E-2i; 1.2E+3i; 1.2E-3i;
//  ^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//      ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//       ^ punctuation.terminator.go
//         ^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//             ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//              ^ punctuation.terminator.go
//                ^^^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                 ^ punctuation.separator.decimal.go
//                      ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                       ^ punctuation.terminator.go
//                         ^^^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                          ^ punctuation.separator.decimal.go
//                               ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                                ^ punctuation.terminator.go
//                                  ^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                                      ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                                       ^ punctuation.terminator.go
//                                         ^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                                             ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                                              ^ punctuation.terminator.go
//                                                ^^^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                                                 ^ punctuation.separator.decimal.go
//                                                      ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                                                       ^ punctuation.terminator.go
//                                                         ^^^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                                                          ^ punctuation.separator.decimal.go
//                                                               ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                                                                ^ punctuation.terminator.go

        1_1e+2_1i; 1.2_1E-3_5i;
//      ^^^^^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//              ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go
//                 ^^^^^^^^^^ meta.number.imaginary.decimal.go constant.numeric.value.go
//                  ^ punctuation.separator.decimal.go
//                           ^ meta.number.imaginary.decimal.go constant.numeric.suffix.go

    0o6i; 0O35i; 0o_6i; 0O3_5i;
//  ^^ meta.number.imaginary.octal.go constant.numeric.base.go
//    ^ meta.number.imaginary.octal.go constant.numeric.value.go
//     ^ meta.number.imaginary.octal.go constant.numeric.suffix.go
//        ^^ meta.number.imaginary.octal.go constant.numeric.base.go
//          ^^ meta.number.imaginary.octal.go constant.numeric.value.go
//            ^ meta.number.imaginary.octal.go constant.numeric.suffix.go
//               ^^ meta.number.imaginary.octal.go constant.numeric.base.go
//                 ^^ meta.number.imaginary.octal.go constant.numeric.value.go
//                   ^ meta.number.imaginary.octal.go constant.numeric.suffix.go
//                      ^^ meta.number.imaginary.octal.go constant.numeric.base.go
//                        ^^^ meta.number.imaginary.octal.go constant.numeric.value.go
//                           ^ meta.number.imaginary.octal.go constant.numeric.suffix.go

    0x0i; 0x0123456789ABCDEFabcdefi; 0x_012_CD_Efi;
//  ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//    ^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//     ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go
//        ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//          ^^^^^^^^^^^^^^^^^^^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//                                ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go
//                                   ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//                                     ^^^^^^^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//                                               ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go

    0b1011i; 0B00001i; 0b_1011i; 0B000_01i;
//  ^^ meta.number.imaginary.binary.go constant.numeric.base.go
//    ^^^^ meta.number.imaginary.binary.go constant.numeric.value.go
//        ^ meta.number.imaginary.binary.go constant.numeric.suffix.go
//           ^^ meta.number.imaginary.binary.go constant.numeric.base.go
//             ^^^^^ meta.number.imaginary.binary.go constant.numeric.value.go
//                  ^ meta.number.imaginary.binary.go constant.numeric.suffix.go
//                     ^^ meta.number.imaginary.binary.go constant.numeric.base.go
//                       ^^^^^ meta.number.imaginary.binary.go constant.numeric.value.go
//                            ^ meta.number.imaginary.binary.go constant.numeric.suffix.go
//                               ^^ meta.number.imaginary.binary.go constant.numeric.base.go
//                                 ^^^^^^ meta.number.imaginary.binary.go constant.numeric.value.go
//                                       ^ meta.number.imaginary.binary.go constant.numeric.suffix.go

    0x1p-2i; 0x1.0P-1021i; 0x1.Fp+0i;
//  ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//    ^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//        ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go
//           ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//             ^^^^^^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//              ^ punctuation.separator.decimal.go
//                      ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go
//                         ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//                           ^^^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//                            ^ punctuation.separator.decimal.go
//                                 ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go

    0x_1p-2i; 0x1_4.0_5P-102_1i;
//  ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//    ^^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//         ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go
//            ^^ meta.number.imaginary.hexadecimal.go constant.numeric.base.go
//              ^^^^^^^^^^^^^^ meta.number.imaginary.hexadecimal.go constant.numeric.value.go
//                 ^ punctuation.separator.decimal.go
//                            ^ meta.number.imaginary.hexadecimal.go constant.numeric.suffix.go

/* ## Runes */

    ' '
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^ constant.character.literal.go
//    ^ punctuation.definition.string.end.go - constant

    '0'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^ constant.character.literal.go
//    ^ punctuation.definition.string.end.go - constant

// Escapes:

    '\a'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\b'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\f'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\n'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\r'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\t'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\v'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\\'
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\'' // valid only in rune literals
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ constant.character.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\"' // valid only in string literals
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ invalid.illegal.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\c' // unrecognized char is illegal in rune literals
//  ^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^ invalid.illegal.escape.go
//     ^ punctuation.definition.string.end.go - constant

    '\x00'
//  ^^^^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^^^ constant.character.escape.hex.go
//       ^ punctuation.definition.string.end.go - constant

    '\u0000'
//  ^^^^^^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^^^^^ constant.character.escape.unicode.16bit.go
//         ^ punctuation.definition.string.end.go - constant

    '\U00000000'
//  ^^^^^^^^^^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^^^^^^^^^ constant.character.escape.unicode.32bit.go
//             ^ punctuation.definition.string.end.go - constant

    '\000'
//  ^^^^^^ meta.string.go string.quoted.single.go
//  ^ punctuation.definition.string.begin.go - constant
//   ^^^^ constant.character.escape.octal.go
//       ^ punctuation.definition.string.end.go - constant

/* ## Strings */

    "one two"
//  ^ punctuation.definition.string.begin.go
//  ^^^^^^^^^ meta.string.go string.quoted.double.go
//          ^ punctuation.definition.string.end.go

    "one \\ \n two"
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^ constant.character.escape.go

    "one %% two"
//  ^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^ constant.character.escape.go

    "one % two"
//  ^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^ constant.other.placeholder.go

    "one %v two"
//  ^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^ constant.other.placeholder.go

    "one %#v two"
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^ constant.other.placeholder.go

    "one %+v two"
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^ constant.other.placeholder.go

    "one %-v two"
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^ constant.other.placeholder.go

    "one %0v two"
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^ constant.other.placeholder.go

    "one %.2d two"
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^ constant.other.placeholder.go

    "one %1.2d two"
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^ constant.other.placeholder.go

    "one %[1] two"
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^ - constant.other.placeholder.go

    "one %[1]v two"
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^ constant.other.placeholder.go

    "one %[1]+v two"
//  ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^^ - constant.other.placeholder

    "one %+[1]v two"
//  ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^^ constant.other.placeholder.go

    "one %[1]1.2d two"
//  ^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^^^^ - constant.other.placeholder

    "one %1.2[1]d two"
//  ^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^^^^ constant.other.placeholder.go

    "foo %*f bar"
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^ constant.other.placeholder.go

    "foo %.*f bar"
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^ constant.other.placeholder.go

    "foo %*.*f bar"
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//       ^^^^^ constant.other.placeholder.go

    "%[3]*.[2]*[1]f"
//  ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//   ^^^^^^^^^^^^^^ constant.other.placeholder.go

    "%d %d %#[1]x %#x %w"
//  ^^^^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//   ^^ constant.other.placeholder.go
//      ^^ constant.other.placeholder.go
//         ^^^^^^ constant.other.placeholder.go
//                ^^^ constant.other.placeholder.go
//                    ^^ constant.other.placeholder.go

    "%"
//  ^^^ meta.string.go string.quoted.double.go
//   ^ - constant.other.placeholder

    "one /* two */ three"
//  ^^^^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go - comment

    "_\n_"
//  ^^^^^^ meta.string.go string.quoted.double.go
//   ^ - constant.character.escape
//    ^^ constant.character.escape.go
//      ^ - constant.character.escape

    "_\x00_"
//  ^^^^^^^^ meta.string.go string.quoted.double.go
//   ^ - constant.character.escape
//    ^^^^ constant.character.escape.hex.go
//        ^ - constant.character.escape

    "_\u0000_"
//  ^^^^^^^^^^ meta.string.go string.quoted.double.go
//   ^ - constant.character.escape
//    ^^^^^^ constant.character.escape.unicode.16bit.go
//          ^ - constant.character.escape

    "_\U00000000_"
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go
//   ^ - constant.character.escape
//    ^^^^^^^^^^ constant.character.escape.unicode.32bit.go
//              constant.character.escape

    "_\000_"
//  ^^^^^^^^ meta.string.go string.quoted.double.go
//   ^ - constant.character.escape
//    ^^^^ constant.character.escape.octal.go
//        ^ - constant.character.escape

    `one two`
//  ^ punctuation.definition.string.begin.go
//  ^^^^^^^^^ string.quoted.backtick.go
//          ^ punctuation.definition.string.end.go

    `one \\ \n two`
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go - constant.character.escape

    `one %% two`
//  ^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^ constant.character.escape.go

    `one % two`
//  ^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^ constant.other.placeholder.go

    `one %v two`
//  ^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^ constant.other.placeholder.go

    `one %#v two`
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^ constant.other.placeholder.go

    `one %+v two`
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^ constant.other.placeholder.go

    `one %-v two`
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^ constant.other.placeholder.go

    `one %0v two`
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^ constant.other.placeholder.go

    `one %.2d two`
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^ constant.other.placeholder.go

    `one %1.2d two`
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^ constant.other.placeholder.go

    `one %[1] two`
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^ - constant.other.placeholder.go

    `one %[1]v two`
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^ constant.other.placeholder.go

    `one %[1]+v two`
//  ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^^ - constant.other.placeholder

    `one %+[1]v two`
//  ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^^ constant.other.placeholder.go

    `one %[1]1.2d two`
//  ^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^^^^ - constant.other.placeholder

    `one %1.2[1]d two`
//  ^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^^^^ constant.other.placeholder.go

    `foo %*f bar`
//  ^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^ constant.other.placeholder.go

    `foo %.*f bar`
//  ^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^ constant.other.placeholder.go

    `foo %*.*f bar`
//  ^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//       ^^^^^ constant.other.placeholder.go

    `%[3]*.[2]*[1]f`
//  ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//   ^^^^^^^^^^^^^^ constant.other.placeholder.go

    `%d %d %#[1]x %#x %w`
//  ^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go
//   ^^ constant.other.placeholder.go
//      ^^ constant.other.placeholder.go
//         ^^^^^^ constant.other.placeholder.go
//                ^^^ constant.other.placeholder.go
//                    ^^ constant.other.placeholder.go

    `%`
//  ^^^ meta.string.go string.quoted.backtick.go
//   ^ - constant.other.placeholder

    `
//  ^ string.quoted.backtick.go punctuation.definition.string.begin.go
    one
//  ^^^ string.quoted.backtick.go
    two
//  ^^^ string.quoted.backtick.go
    three
//  ^^^^^ string.quoted.backtick.go
    `
//  ^ string.quoted.backtick.go punctuation.definition.string.end.go

    `one /* two */ three`
//  ^^^^^^^^^^^^^^^^^^^^^ string.quoted.backtick.go - comment


/* # Operators */

    !=
//  ^^ keyword.operator.comparison.go
    !
//  ^ keyword.operator.logical.go
    %=
//  ^^ keyword.operator.assignment.augmented.go
    %
//  ^ keyword.operator.arithmetic.go
    &&
//  ^^ keyword.operator.logical.go
    &=
//  ^^ keyword.operator.assignment.augmented.go
    &^=
//  ^^^ keyword.operator.assignment.augmented.go
    &^
//  ^^ keyword.operator.bitwise.go
    &
//  ^ keyword.operator.go
    *=
//  ^^ keyword.operator.assignment.augmented.go
    *
//  ^ keyword.operator.go
    ++
//  ^^ keyword.operator.assignment.augmented.go
    +=
//  ^^ keyword.operator.assignment.augmented.go
    +
//  ^ keyword.operator.arithmetic.go
    --
//  ^^ keyword.operator.assignment.augmented.go
    -=
//  ^^ keyword.operator.assignment.augmented.go
    -
//  ^ keyword.operator.arithmetic.go
    /=
//  ^^ keyword.operator.assignment.augmented.go
    /
//  ^ keyword.operator.arithmetic.go
    :=
//  ^^ keyword.operator.assignment.go
    <-
//  ^^ keyword.operator.assignment.go
    <
//  ^ keyword.operator.comparison.go
    <<=
//  ^^^ keyword.operator.assignment.augmented.go
    <<
//  ^^ keyword.operator.bitwise.go
    <=
//  ^^ keyword.operator.comparison.go
    ==
//  ^^ keyword.operator.comparison.go
    =
//  ^ keyword.operator.assignment.go
    >=
//  ^^ keyword.operator.comparison.go
    >>=
//  ^^^ keyword.operator.assignment.augmented.go
    >>
//  ^^ keyword.operator.bitwise.go
    >
//  ^ keyword.operator.comparison.go
    ^=
//  ^^ keyword.operator.assignment.augmented.go
    ^
//  ^ keyword.operator.bitwise.go
    |=
//  ^^ keyword.operator.assignment.augmented.go
    ||
//  ^^ keyword.operator.logical.go
    |
//  ^ keyword.operator.bitwise.go
    ~
//  ^ keyword.operator.go


/* # Punctuation */

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

/* ## Selector */

/* ### Member */

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

/* ### Type Assertion */

    ident.(ident)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//         ^^^^^ storage.type.go

    ident
//  ^^^^^ variable.other.go
    /**/./**/
//      ^ punctuation.accessor.dot.go
    (/* ident */ ident /* ident */)
//   ^^^^^^^^^^^ comment.block.go
//               ^^^^^ storage.type.go
//                     ^^^^^^^^^^^ comment.block.go

    ident.(chan typ)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//         ^^^^ keyword.declaration.chan.go
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

/* ## Parens */

// Note: we can't syntactically disambiguate calls and type conversions.

    ident()
//  ^^^^ variable.function.go

    ident /**/ (
//  ^^^^ variable.function.go
    )

    ident[Type[TypeArg]]()
//  ^^^^^ variable.function.go
//       ^ punctuation.section.brackets.begin.go
//        ^^^^ variable.other.type.go
//            ^ punctuation.section.brackets.begin.go
//             ^^^^^^^ variable.other.go
//                    ^^ punctuation.section.brackets.end.go
//                      ^ punctuation.section.parens.begin.go
//                       ^ punctuation.section.parens.end.go

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

    ident.ident.ident[Type, Type](ident)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.other.member.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^ variable.function.go
//                   ^ punctuation.section.brackets.begin.go
//                    ^^^^ variable.other.type.go
//                        ^ punctuation.separator.go
//                          ^^^^ variable.other.type.go
//                              ^ punctuation.section.brackets.end.go
//                               ^ punctuation.section.parens.begin.go
//                                ^^^^^ variable.other.go
//                                     ^ punctuation.section.parens.end.go

    ident.ident.ident[Type[TypeArg]](ident)
//  ^^^^^ variable.other.go
//       ^ punctuation.accessor.dot.go
//        ^^^^^ variable.other.member.go
//             ^ punctuation.accessor.dot.go
//              ^^^^^ variable.function.go
//                   ^ punctuation.section.brackets.begin.go
//                    ^^^^ variable.other.type.go
//                        ^ punctuation.section.brackets.begin.go
//                         ^^^^^^^ variable.other.go
//                                ^^ punctuation.section.brackets.end.go
//                                  ^ punctuation.section.parens.begin.go
//                                   ^^^^^ variable.other.go
//                                        ^ punctuation.section.parens.end.go

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
//      ^^^^^ variable.other.member.go
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
//    ^^^^ keyword.declaration.chan.go
//         ^^^ storage.type.go
//              ^^^^^ variable.other.go

    map[typ]typ(ident)
//  ^^^ keyword.declaration.map.go
//      ^^^ storage.type.go
//          ^^^ storage.type.go
//              ^^^^^ variable.other.go

    (map[typ]typ)(ident)
//   ^^^ keyword.declaration.map.go
//       ^^^ storage.type.go
//           ^^^ storage.type.go
//                ^^^^^ variable.other.go

    []typ(ident)
//    ^^^ storage.type.go
//        ^^^^^ variable.other.go

    ([]typ)(ident)
//     ^^^ storage.type.go
//          ^^^^^ variable.other.go

    ident[]()
//  ^^^^^ variable.function.go
//       ^ punctuation.section.brackets.begin.go
//        ^ punctuation.section.brackets.end.go
//         ^ punctuation.section.parens.begin.go
//          ^ punctuation.section.parens.end.go

    ident[typ]()
//  ^^^^^ variable.function.go
//       ^ punctuation.section.brackets.begin.go
//        ^^^ variable.other.type.go
//           ^ punctuation.section.brackets.end.go
//            ^ punctuation.section.parens.begin.go
//             ^ punctuation.section.parens.end.go

    ident[typ, typ]()
//  ^^^^^ variable.function.go
//       ^ punctuation.section.brackets.begin.go
//        ^^^ variable.other.type.go
//           ^ punctuation.separator.go
//             ^^^ variable.other.type.go
//                ^ punctuation.section.brackets.end.go
//                 ^ punctuation.section.parens.begin.go
//                  ^ punctuation.section.parens.end.go


/* # Keywords */

// Some keywords are covered elsewhere in the test.

    break
//  ^^^^^ keyword.control.flow.break.go
    case
//  ^^^^ keyword.control.conditional.case.go
    continue
//  ^^^^^^^^ keyword.control.flow.continue.go
    default
//  ^^^^^^^ keyword.control.conditional.default.go
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
//  ^^^^ keyword.control.flow.goto.go
    if
//  ^^ keyword.control.conditional.if.go
    range
//  ^^^^^ keyword.other.go
    return
//  ^^^^^^ keyword.control.go
    select
//  ^^^^^^ keyword.control.go
    switch
//  ^^^^^^ keyword.control.conditional.switch.go

/* ## func */

// Note: function signatures are thoroughly tested in the section of this test
// file dedicated to types. The part after the function name (parameters and
// return signature) is EXACTLY the same for function declarations, method
// declarations, anonymous functions, and function types.

    func() {}
//  ^^^^ keyword.declaration.function.go
//      ^ punctuation.section.parens.begin.go
//       ^ punctuation.section.parens.end.go
//         ^ meta.block.go punctuation.section.braces.begin.go
//          ^ meta.block.go punctuation.section.braces.end.go

    func ident() {}
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ entity.name.function.go
//            ^ punctuation.section.parens.begin.go
//             ^ punctuation.section.parens.end.go
//               ^ meta.block.go punctuation.section.braces.begin.go
//                ^ meta.block.go punctuation.section.braces.end.go

    func ident /**/ () {}
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ entity.name.function.go
//             ^^^^ comment.block.go

    func ident /* * */ () {}
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ entity.name.function.go
//             ^^^^^^^ comment.block.go

    func ident(
//  ^^^^ keyword.declaration.function.go
//       ^^^^^ entity.name.function.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ {}
//    ^^^ storage.type.go

    func FuncName(param [][]Type) {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//  ^^^^ keyword.declaration.function.go
//       ^^^^^^^^ entity.name.function.go
//               ^ punctuation.section.parens.begin.go
//                ^^^^^ variable.parameter.go
//                      ^ punctuation.section.brackets.begin.go
//                       ^ punctuation.section.brackets.end.go
//                        ^ punctuation.section.brackets.begin.go
//                         ^ punctuation.section.brackets.end.go
//                          ^^^^ storage.type.go
//                              ^ punctuation.section.parens.end.go

/* ### Methods */

    func (self Type) Method() {}
//       ^ meta.function.declaration.go punctuation.section.parens.begin.go
//        ^^^^ meta.function.declaration.go variable.parameter.go
//             ^^^^ meta.function.declaration.go storage.type.go
//                 ^ meta.function.declaration.go punctuation.section.parens.end.go
//                   ^^^^^^ meta.function.declaration.go entity.name.function.go
//                         ^ punctuation.section.parens.begin.go
//                          ^ punctuation.section.parens.end.go

    func (Type) Method() {}
//  ^^^^ keyword.declaration.function.go
//       ^ meta.function.declaration.go punctuation.section.parens.begin.go
//        ^^^^ meta.function.declaration.go storage.type.go
//            ^ meta.function.declaration.go punctuation.section.parens.end.go
//              ^^^^^^ meta.function.declaration.go entity.name.function.go
//                    ^ punctuation.section.parens.begin.go
//                     ^ punctuation.section.parens.end.go

    func(Type, Type[TypeArg])
//  ^^^^ keyword.declaration.function.go
//      ^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.go
//      ^ punctuation.section.parens.begin.go
//       ^^^^ storage.type.go
//           ^ punctuation.separator.go
//             ^^^^ storage.type.go
//                 ^ punctuation.section.brackets.begin.go
//                  ^^^^^^^ variable.other.type.go
//                         ^ punctuation.section.brackets.end.go
//                          ^ punctuation.section.parens.end.go

    func /**/
//  ^^^^ keyword.declaration.function.go
//       ^^^^ comment.block.go
    ( /**/ self /**/ * /**/ ident . /**/ Type /**/ ) /**/ Method /**/ (
//  ^ meta.function.declaration.go punctuation.section.parens.begin.go
//    ^^^^ meta.function.declaration.go comment.block.go
//         ^^^^ meta.function.declaration.go variable.parameter.go
//              ^^^^ meta.function.declaration.go comment.block.go
//                   ^ meta.function.declaration.go keyword.operator.go
//                     ^^^^ meta.function.declaration.go comment.block.go
//                          ^^^^^ meta.function.declaration.go variable.other.go
//                                ^ meta.function.declaration.go punctuation.accessor.dot.go
//                                  ^^^^ meta.function.declaration.go comment.block.go
//                                       ^^^^ meta.function.declaration.go storage.type.go
//                                            ^^^^ meta.function.declaration.go comment.block.go
//                                                 ^ meta.function.declaration.go punctuation.section.parens.end.go
//                                                   ^^^^ meta.function.declaration.go comment.block.go
//                                                        ^^^^^^ meta.function.declaration.go entity.name.function.go
//                                                               ^^^^ comment.block.go
        param typ
//      ^^^^^ variable.parameter.go
//            ^^^ storage.type.go
    ) typ {}
//    ^^^ storage.type.go
//        ^ meta.block.go punctuation.section.braces.begin.go
//         ^ meta.block.go punctuation.section.braces.end.go


/* # Predeclared Constants */

    true false nil
//  ^^^^ constant.language.boolean.true.go
//       ^^^^^ constant.language.boolean.false.go
//             ^^^ constant.language.null.go


/* # Built-in Types */

/*
These tests make sure that the treatment of built-ins is consistent with
non-built-ins and is purely additive.

Due to how they're combined in the syntax definition, we don't need to test
every type individually.
*/

    chan typ
//  ^^^^ keyword.declaration.chan.go
//       ^^^ storage.type.go - support

    chan int
//  ^^^^ keyword.declaration.chan.go
//       ^^^ storage.type.go support.type.builtin.go

    func(typ)
//  ^^^^ keyword.declaration.function.go
//       ^^^ storage.type.go - support

    func(int)
//  ^^^^ keyword.declaration.function.go
//       ^^^ storage.type.go support.type.builtin.go

    map[typ]typ
//  ^^^ keyword.declaration.map.go
//      ^^^ storage.type.go - support
//          ^^^ storage.type.go - support

    map[int]int
//  ^^^ keyword.declaration.map.go
//      ^^^ storage.type.go support.type.builtin.go
//          ^^^ storage.type.go support.type.builtin.go

    struct { ident typ; typ }
//  ^^^^^^ keyword.declaration.struct.go
//           ^^^^^ meta.type.go variable.other.member.declaration.go
//                 ^^^ meta.type.go storage.type.go - support
//                      ^^^ meta.type.go entity.other.inherited-class.go - support

    struct { ident int; int }
//  ^^^^^^ keyword.declaration.struct.go
//           ^^^^^ meta.type.go variable.other.member.declaration.go
//                 ^^^ meta.type.go storage.type.go support.type.builtin.go
//                      ^^^ meta.type.go entity.other.inherited-class.go support.type.builtin.go

    interface { typ }
//  ^^^^^^^^^ keyword.declaration.interface.go
//              ^^^ meta.type.go storage.type.go - support

    interface { error }
//  ^^^^^^^^^ keyword.declaration.interface.go
//              ^^^^^ meta.type.go storage.type.go support.type.builtin.go

    [...]typ
//   ^^^ keyword.operator.variadic.go
//       ^^^ storage.type.go - support

    [...]int
//   ^^^ keyword.operator.variadic.go
//       ^^^ storage.type.go support.type.builtin.go

    []typ
//    ^^^ storage.type.go - support

    []int
//    ^^^ storage.type.go support.type.builtin.go

    type _ typ
//  ^^^^ keyword.declaration.type.go
//       ^ variable.language.anonymous.go
//         ^^^ storage.type.go - support

    type _ int
//  ^^^^ keyword.declaration.type.go
//       ^ variable.language.anonymous.go
//         ^^^ storage.type.go support.type.builtin.go

    const ident typ
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go - support

    const ident int
//  ^^^^^ keyword.declaration.const.go
//        ^^^^^ variable.other.constant.declaration.go
//              ^^^ storage.type.go support.type.builtin.go

    var ident typ
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go
//            ^^^ storage.type.go - support

    var ident int
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go
//            ^^^ storage.type.go support.type.builtin.go

    ident.(typ)
//  ^^^^^ variable.other.go
//         ^^^ storage.type.go - support

    ident.(int)
//  ^^^^^ variable.other.go
//         ^^^ storage.type.go support.type.builtin.go

    (typ)(ident)
//   ^^^ variable.function.go - support
//        ^^^^^ variable.other.go

    (int)(ident)
//   ^^^ variable.function.go support.type.builtin.go
//        ^^^^^ variable.other.go


/* # Built-in Functions */

/* ## Special Functions */

    make(typ)
//  ^^^^ variable.function.go support.function.builtin.go
//      ^ punctuation.section.parens.begin.go
//       ^^^ storage.type.go - support
//          ^ punctuation.section.parens.end.go

    make(int)
//  ^^^^ variable.function.go support.function.builtin.go
//      ^ punctuation.section.parens.begin.go
//       ^^^ storage.type.go support.type.builtin.go
//          ^ punctuation.section.parens.end.go

    make /**/ (
//  ^^^^ variable.function.go support.function.builtin.go
//       ^^^^ comment.block.go
//            ^ punctuation.section.parens.begin.go
        /**/ typ /**/,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go - support
//               ^^^^ comment.block.go
//                   ^ punctuation.separator.go
        ident,
//      ^^^^^ variable.other.go
//           ^ punctuation.separator.go
        ident,
//      ^^^^^ variable.other.go
//           ^ punctuation.separator.go
    )
//  ^ punctuation.section.parens.end.go

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
//  ^^^^ variable.other.go - support

    var make
//  ^^^ keyword.declaration.var.go
//      ^^^^ variable.other.readwrite.declaration.go - support

    new(typ, ident)
//  ^^^ variable.function.go support.function.builtin.go
//     ^ punctuation.section.parens.begin.go
//      ^^^ storage.type.go
//         ^ punctuation.separator.go
//           ^^^^^ variable.other.go
//                ^ punctuation.section.parens.end.go

    new(int, ident)
//  ^^^ variable.function.go support.function.builtin.go
//      ^^^ storage.type.go support.type.builtin.go
//           ^^^^^ variable.other.go

    new /**/ (
//  ^^^ variable.function.go support.function.builtin.go
//      ^^^^ comment.block.go
        /**/ typ /**/ ,
//      ^^^^ comment.block.go
//           ^^^ storage.type.go - support
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
//  ^^^ variable.other.go - support

    var new
//  ^^^ keyword.declaration.var.go
//      ^^^ variable.other.readwrite.declaration.go - support

/* ## Other Functions */

/*
These tests make sure that the treatment of built-ins is consistent with
non-built-ins, is purely additive, and sufficiently limited.

Due to how they're combined in the syntax definition, we don't need to test
every function individually.
*/

    ident(ident)
//  ^^^^^ variable.function.go - support
//        ^^^^^ variable.other.go

    close(ident)
//  ^^^^^ variable.function.go support.function.builtin.go
//        ^^^^^ variable.other.go

    ((ident))(ident)
//    ^^^^^ variable.function.go - support
//            ^^^^^ variable.other.go

    ((close))(ident)
//    ^^^^^ variable.function.go support.function.builtin.go
//            ^^^^^ variable.other.go

    close
//  ^^^^^ variable.other.go - support

    var close
//  ^^^ keyword.declaration.var.go
//      ^^^^^ variable.other.readwrite.declaration.go - support


/*
Templates
*/
func template() {
    t := "\{{ foo }} bar }} {{baz} foo {{baz "
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go - meta.interpolation
    t := "{{.Count}} items are made of {{.Material}}"
    //   ^ meta.string.go string.quoted.double.go - meta.interpolation
    //    ^^^^^^^^^^ meta.string.go meta.interpolation.go - string
    //              ^^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.double.go - meta.interpolation
    //                                 ^^^^^^^^^^^^^ meta.string.go meta.interpolation.go - string
    //                                              ^ meta.string.go string.quoted.double.go - meta.interpolation
    //    ^^ punctuation.section.interpolation.begin.go
    //      ^ punctuation.accessor.dot
    //       ^^^^^ variable.other.member.go
    //            ^^ punctuation.section.interpolation.end.go
    //                                 ^^ punctuation.section.interpolation.begin.go
    //                                   ^ punctuation.accessor.dot.go
    //                                    ^^^^^^^^ variable.other.member.go
    //                                            ^^ punctuation.section.interpolation.end.go
    t := `{{.Count}} items are made of {{.Material}}`
    //   ^ meta.string.go string.quoted.backtick.go - meta.interpolation
    //    ^^^^^^^^^^ meta.string.go meta.interpolation.go - string
    //              ^^^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go - meta.interpolation
    //                                 ^^^^^^^^^^^^^ meta.string.go meta.interpolation.go - string
    //                                              ^ meta.string.go string.quoted.backtick.go - meta.interpolation
    //    ^^ punctuation.section.interpolation.begin.go
    //      ^ punctuation.accessor.dot
    //       ^^^^^ variable.other.member.go
    //            ^^ punctuation.section.interpolation.end.go
    //                                 ^^ punctuation.section.interpolation.begin.go
    //                                   ^ punctuation.accessor.dot.go
    //                                    ^^^^^^^^ variable.other.member.go
    //                                            ^^ punctuation.section.interpolation.end.go
    t = "{{23 -}} < {{- 45}}"
    //   ^^^^^^^^ meta.interpolation
    //   ^^ punctuation.section.interpolation.begin
    //     ^^ constant.numeric
    //        ^ keyword.operator.template.trim.right.go
    //         ^^ punctuation.section.interpolation.end
    //                  ^^ constant.numeric
    //                ^ keyword.operator.template.trim.left.go
    t = "{{23- }} < {{ -45}}"
    //   ^^^^^^^^ meta.interpolation
    //   ^^ punctuation.section.interpolation.begin
    //     ^^ constant.numeric
    //       ^ - keyword.operator.template.trim
    //         ^^ punctuation.section.interpolation.end
    //                 ^ - keyword.operator.template.trim
    //                  ^^ constant.numeric
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
    //                 ^ punctuation.separator
    //                   ^^^^^^^^ variable.other.template
    //                            ^^ keyword.operator.assignment
    t = "{{`"output"`}}"
    t = "{{printf "%q" "output"}}"
    //     ^^^^^^ support.function.builtin
    t = "{{"output" | printf "%q"}}"
    //              ^ keyword.operator.assignment.pipe
    //                ^^^^^^ support.function.builtin
    t = "{{printf "%q" (print "out" "put")}}"
    //     ^^^^^^ support.function.builtin
    //                  ^^^^^ support.function.builtin
    t = "{{"put" | printf "%s%s" "out" | printf "%q"}}"
    //           ^ keyword.operator.assignment.pipe
    //             ^^^^^^ support.function.builtin
    //                                 ^ keyword.operator.assignment.pipe
    //                                   ^^^^^^ support.function.builtin
    t = "{{"output" | printf "%s" | printf "%q"}}"
    //     ^^^^^^^^ string.quoted.double
    //              ^ keyword.operator.assignment.pipe
    //                ^^^^^^ support.function.builtin
    //                       ^^^^ string.quoted.double
    //                            ^ keyword.operator.assignment.pipe
    //                              ^^^^^^ support.function.builtin
    //                                     ^^^^ string.quoted.double
    t = "{{with "output"}}{{printf "%q" .}}{{end}}"
    //     ^^^^ keyword.control
    //                                  ^ variable.language.template.go
    t = "{{with $x := "output" | printf "%q"}}{{$x}}{{end}}"
    //          ^^ variable.other.template
    //             ^^ keyword.operator.assignment
    //                                          ^^ variable.other.template
    t = "{{with $x := "output"}}{{$x | printf "%q"}}{{end}}"
    //                            ^^ variable.other.template
    //                               ^ keyword.operator.assignment.pipe
    //                                 ^^^^^^ support.function.builtin
    t = "{{with $x := "output"}}{{$x = "new value"}}{{$x | printf "%q"}}{{end}}"
    //                            ^ meta.interpolation.go variable.other.template.go punctuation.definition.variable.go
    //                             ^ meta.interpolation.go variable.other.template.go
    //                               ^ meta.interpolation.go keyword.operator.assignment.go
    t = "{{index $array 0}}"
    //   ^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^^ support.function.builtin.go
    //           ^^^^^^ variable.other.template.go
    //                  ^ meta.number.integer.decimal.go constant.numeric.value.go
    t = "{{slice x 1 2}}"
    //   ^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^^ support.function.builtin.go
    //           ^ - variable.function
    //             ^ constant.numeric.value.go
    //               ^ constant.numeric.value.go
    t = "{{return . }}"
    //   ^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^^^ variable.function.go
    //            ^ variable.language.template.go
    t = "{{function .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^^^^^ variable.function.go
    //              ^ punctuation.accessor.dot.go
    //               ^^^^^ variable.other.member.go
    t = "{{.Method .Param}}"
    //   ^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^ punctuation.accessor.dot.go
    //      ^^^^^^ variable.function.method.go
    //             ^ punctuation.accessor.dot.go
    //              ^^^^^ variable.other.member.go
    t = "{{.Site.Method .Param}}"
    //   ^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^ punctuation.accessor.dot.go
    //      ^^^^ variable.other.member.go
    //          ^ punctuation.accessor.dot.go
    //           ^^^^^^ variable.function.method.go
    //                  ^ punctuation.accessor.dot.go
    //                   ^^^^^ variable.other.member.go
    t = "{{$foo = function .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^ variable.other.template.go
    //          ^ keyword.operator.assignment.go
    //            ^^^^^^^^ variable.function.go
    //                     ^ punctuation.accessor.dot.go
    //                      ^^^^^ variable.other.member.go
    t = "{{$foo = .Method .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^ variable.other.template.go
    //          ^ keyword.operator.assignment.go
    //            ^ punctuation.accessor.dot.go
    //             ^^^^^^ variable.function.method.go
    //                    ^ punctuation.accessor.dot.go
    //                     ^^^^^ variable.other.member.go
    t = "{{$foo = .Site.Method .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^ variable.other.template.go
    //          ^ keyword.operator.assignment.go
    //            ^ punctuation.accessor.dot.go
    //             ^^^^ variable.other.member.go
    //                 ^ punctuation.accessor.dot.go
    //                  ^^^^^^ variable.function.method.go
    //                         ^ punctuation.accessor.dot.go
    //                          ^^^^^ variable.other.member.go
    t = "{{$foo := function .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^ variable.other.template.go
    //          ^^ keyword.operator.assignment.go
    //             ^^^^^^^^ variable.function.go
    //                      ^ punctuation.accessor.dot.go
    //                       ^^^^^ variable.other.member.go
    t = "{{$foo := .Method .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^ variable.other.template.go
    //          ^^ keyword.operator.assignment.go
    //             ^ punctuation.accessor.dot.go
    //              ^^^^^^ variable.function.method.go
    //                     ^ punctuation.accessor.dot.go
    //                      ^^^^^ variable.other.member.go
    t = "{{$foo := .Site.Method .Param}}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //     ^^^^ variable.other.template.go
    //          ^^ keyword.operator.assignment.go
    //             ^ punctuation.accessor.dot.go
    //              ^^^^ variable.other.member.go
    //                  ^ punctuation.accessor.dot.go
    //                   ^^^^^^ variable.function.method.go
    //                          ^ punctuation.accessor.dot.go
    //                           ^^^^^ variable.other.member.go
    t = "{{ if or (isset .Params "alt") (.Method .Params "caption") }} Caption {{ end }}"
    //   ^^^^^^^^^ meta.string.go meta.interpolation.go - meta.group
    //            ^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go meta.group.go
    //                                 ^ meta.string.go meta.interpolation.go - meta.group
    //                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go meta.group.go
    //                                                             ^^^ meta.string.go meta.interpolation.go - meta.group
    //            ^ punctuation.section.group.begin.go
    //             ^^^^^ variable.function.go
    //                   ^ punctuation.accessor.dot.go
    //                    ^^^^^^ variable.other.member.go
    //                           ^^^^^ meta.string.go meta.string.go string.quoted.double.go
    //                                  ^ punctuation.section.group.begin.go
    //                                   ^ punctuation.accessor.dot.go
    //                                    ^^^^^^ variable.function.method.go
    //                                           ^ punctuation.accessor.dot.go
    //                                            ^^^^^^ variable.other.member.go
    //                                                   ^^^^^^^^^ meta.string.go meta.string.go string.quoted.double.go
    //                                                            ^ punctuation.section.group.end.go
    //                                                              ^^ punctuation.section.interpolation.end.go
    t = "{{ .Member | func }}"
    //   ^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //      ^ punctuation.accessor.dot.go
    //       ^^^^^^ variable.other.member.go
    //              ^ keyword.operator.assignment.pipe.go
    //                ^^^^ variable.function.go
    t = "{{ $foo := .Member | func }}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //              ^ punctuation.accessor.dot.go
    //               ^^^^^^ variable.other.member.go
    //                      ^ keyword.operator.assignment.pipe.go
    //                        ^^^^ variable.function.go
    t = "{{ $foo = .Member | func }}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //             ^ punctuation.accessor.dot.go
    //              ^^^^^^ variable.other.member.go
    //                     ^ keyword.operator.assignment.pipe.go
    //                       ^^^^ variable.function.go
    t = "{{ $foo = (.Member | func) }}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //              ^ punctuation.accessor.dot.go
    //               ^^^^^^ variable.other.member.go
    //                      ^ keyword.operator.assignment.pipe.go
    //                        ^^^^ variable.function.go
    t = "{{ (printf "text/html" ($url | htmlEscape)) | safeHTML }}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //      ^^^^^^^^^^^^^^^^^^^^ source.go.template meta.group.go - meta.group meta.group
    //                          ^^^^^^^^^^^^^^^^^^^ source.go.template meta.group.go meta.group.go
    //                                             ^ source.go.template meta.group.go - meta.group meta.group
    //                                              ^^^^^^^^^^^^ source.go.template - meta.group
    //                                ^ keyword.operator.assignment.pipe.go
    //                                  ^^^^^^^^^^ variable.function.go
    //                                               ^ keyword.operator.assignment.pipe.go
    //                                                 ^^^^^^^^ variable.function.go
    t = "{{ (printf "text/html" ($url | .Site.htmlEscape)) | .Site.safeHTML }}"
    //   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.interpolation.go
    //      ^^^^^^^^^^^^^^^^^^^^ source.go.template meta.group.go - meta.group meta.group
    //                          ^^^^^^^^^^^^^^^^^^^^^^^^^ source.go.template meta.group.go meta.group.go
    //                                                   ^ source.go.template meta.group.go - meta.group meta.group
    //                                                    ^^^^^^^^^^^^^^^^^^ source.go.template - meta.group
    //                                ^ keyword.operator.assignment.pipe.go
    //                                  ^ punctuation.accessor.dot.go
    //                                   ^^^^ variable.other.member.go
    //                                       ^ punctuation.accessor.dot.go
    //                                        ^^^^^^^^^^ variable.function.method.go
    //                                                     ^ keyword.operator.assignment.pipe.go
    //                                                       ^ punctuation.accessor.dot.go
    //                                                        ^^^^ variable.other.member.go
    //                                                            ^ punctuation.accessor.dot.go
    //                                                             ^^^^^^^^ variable.function.method.go
    t = "{{nil}} {{true}} {{false}}"
    //     ^^^ constant.language
    //             ^^^^ constant.language
    //                      ^^^^^ constant.language
}

func main() {
    fmt.Print("Go runs on ")
    switch os := runtime.GOOS; os {
    case "darwin":
//  ^^^^ keyword.control.conditional.case
//       ^^^^^^^^ string.quoted.double
//               ^ punctuation.separator.case-statement
        fmt.Println("OS X.")
    case "linux":
//  ^^^^ keyword.control.conditional.case
//       ^^^^^^^ string.quoted.double
//              ^ punctuation.separator.case-statement
        fmt.Println("Linux.")
    default:
//  ^^^^^^^ keyword.control.conditional.default
//         ^ punctuation.separator.case-statement
        // freebsd, openbsd,
        // plan9, windows...
        fmt.Printf("%s.\n", os)
    }
    switch os {
    case no_colon_here_while_user_is_typing
        ; a := b
//      ^ punctuation.terminator
//          ^ - punctuation.separator.case-statement
//          ^^ keyword.operator.assignment
    }
}

func do(i interface{}) {
    switch v := i.(type) {
//  ^^^^^^ keyword.control.conditional.switch
//         ^ variable.other.readwrite.declaration
//           ^^ keyword.operator.assignment
//              ^ variable.other
//               ^ punctuation.accessor.dot
//                ^ punctuation.section.parens.begin
//                 ^^^^ keyword.operator.type
//                     ^ punctuation.section.parens.end
//                       ^ punctuation.section.braces.begin
    case int:
//  ^^^^ keyword.control.conditional.case
//       ^^^ support.type
//          ^ punctuation.separator.case-statement
        fmt.Printf("Twice %v is %v\n", v, v*2)
//          ^^^^^^ variable.function
    case string:
//  ^^^^ keyword.control.conditional.case
//       ^^^^^^ support.type
//             ^ punctuation.separator.case-statement
        fmt.Printf("%q is %v bytes long\n", v, len(v))
    default:
//  ^^^^^^^ keyword.control.conditional.default
//         ^ punctuation.separator.case-statement
        fmt.Printf("I don't know about type %T!\n", v)
    }
}

func main() {
    do(21)
    do("hello")
    do(true)
}

func lang_embedding() {
    //language=any
    // <- comment.line.double-slash.go meta.annotation.identifier.go punctuation.definition.comment.go
    //^^^^^^^^ comment.line.double-slash.go meta.annotation.identifier.go support.other.go
    //        ^ comment.line.double-slash.go meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^^^ comment.line.double-slash.go - constant

    //language=any css
    // <- comment.line.double-slash.go meta.annotation.identifier.go punctuation.definition.comment.go
    //^^^^^^^^ comment.line.double-slash.go meta.annotation.identifier.go support.other.go
    //        ^ comment.line.double-slash.go meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^^^^^^^ comment.line.double-slash.go - constant

    //language= css
    // <- comment.line.double-slash.go meta.annotation.identifier.go punctuation.definition.comment.go
    //^^^^^^^^ comment.line.double-slash.go meta.annotation.identifier.go support.other.go
    //        ^ comment.line.double-slash.go meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^^^^ comment.line.double-slash.go - constant

    //language =css
    // <- comment.line.double-slash.go punctuation.definition.comment.go - meta.annotation
    //^^^^^^^^^^^^^^ comment.line.double-slash.go - meta.annotation
    css_string := `.class { color: {{.color}} }`
    //            ^^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go - meta.interpolation
    //                             ^^^^^^^^^^ meta.string.go meta.interpolation.go - string
    //                                       ^^^ meta.string.go string.quoted.backtick.go - meta.interpolation

    //language=css
    //^^^^^^^^^^^^^ comment.line.double-slash.go
    //^^^^^^^^ meta.annotation.identifier.go support.other.go
    //        ^ meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^^ meta.annotation.parameters.go constant.other.language-name.go
    css_string := `.class { color: {{.color}} }`
    //            ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go - source.css
    //             ^^^^^^^^^^^^^^^^ meta.string.go meta.embedded.go source.css.embedded.go - meta.interpolation - string.quoted.backtick
    //                             ^^^^^^^^^^ meta.string.go meta.embedded.go source.css.embedded.go meta.property-list.css meta.block.css meta.property-value.css meta.interpolation.go
    //                                       ^^ meta.block.go meta.string.go meta.embedded.go source.css.embedded.go meta.property-list.css meta.block.css - meta.interpolation - string.quoted.backtick
    //                                         ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.end.go - source.css

    //language=html prefix=<body> suffix=</body>
    // <- comment.line.double-slash.go meta.annotation.identifier.go punctuation.definition.comment.go
    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.go
    //^^^^^^^^ meta.annotation.identifier.go support.other.go
    //        ^ meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^^^ meta.annotation.parameters.go constant.other.language-name.go
    html_string := `<h1 style="color:{{.color}}">Title</h2>`
    //             ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go
    //              ^^^^^^^^^^^^^^^^^ meta.string.go meta.embedded.go text.html.embedded.go meta.tag
    //                               ^^^^^^^^^^ meta.string.go meta.embedded.go text.html.embedded.go meta.tag meta.string.html source.css.embedded.html meta.property-value.css meta.interpolation.go
    //                                         ^ meta.string.go meta.embedded.go text.html.embedded.go meta.tag meta.string.html string.quoted.double.html
    //                                           ^^^^^ meta.string.go meta.embedded.go text.html.embedded.go - meta.tag
    //                                                ^^^^^ meta.string.go meta.embedded.go text.html.embedded.go meta.tag
    //                                                     ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.end.go

    //language=html
    html_string := `<style>.class {color:{{.color}}}</style>`
    //             ^ meta.string.go - meta.embedded - text.html
    //              ^^^^^^^ meta.string.go meta.embedded.go text.html.embedded.go meta.tag - source.css
    //                     ^^^^^^^^^^^^^^ meta.string.go meta.embedded.go text.html.embedded.go source.css.embedded.html - meta.interpolation
    //                                   ^^^^^^^^^^ meta.string.go meta.embedded.go text.html.embedded.go source.css.embedded.html meta.interpolation.go
    //                                             ^ meta.string.go meta.embedded.go text.html.embedded.go source.css.embedded.html - meta.interpolation
    //                                              ^^^^^^^^ meta.string.go meta.embedded.go text.html.embedded.go meta.tag - source.css - meta.interpolation
    //                                                      ^ meta.string.go - meta.embedded - text.html

    //language=js
    //^^^^^^^^^^^^ comment.line.double-slash.go
    //^^^^^^^^ meta.annotation.identifier.go support.other.go
    //        ^ meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^ meta.annotation.parameters.go constant.other.language-name.go
    js_string := `var i = {{ $var }}`
    //           ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go - source.js
    //            ^^^^^^^^ meta.string.go meta.embedded.go source.js.embedded.go - meta.interpolation - string.quoted.backtick
    //                    ^^^^^^^^^^ meta.string.go meta.embedded.go source.js.embedded.go meta.interpolation.go - string.quoted.backtick
    //                              ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.end.go - source.js
    //                    ^^ punctuation.section.interpolation.begin.go
    //                       ^^^^ variable.other.template.go
    //                            ^^ punctuation.section.interpolation.end.go

    //language=sql prefix=foo suffix=bar
    // <- comment.line.double-slash.go punctuation.definition.comment.go
    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.go
    //^^^^^^^^ meta.annotation.identifier.go
    //        ^ meta.annotation keyword.operator.assignment.go
    //         ^^^ meta.annotation.parameters.go constant.other.language-name.go
    sqlQuery := `
    //          ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go
    //           ^ meta.string.go meta.embedded.go source.sql.embedded.go
        update schema.table
    //  ^^^^^^ meta.string.go meta.embedded.go source.sql.embedded.go keyword.other.dml.sql
        set
          some_field = null
        where
          another_field = 123
        and test_no_interpolation = 'some_value\n' and another = '%% %s'
    // --                                      ^^ constant.character-escape.sql
    // --                                                         ^^^^ - constant.character-escape.sql
        `
    not_sql_string := `select not sql`
    //                ^^^^^^^^^^^^^^^^ string.quoted.backtick.go - source.sql

    //language=sql
    require.Equal(t, 1, testdb.QueryInt(env.testDb, `select count(*) from "schema.{{.site.table}}" order by {{.order}}`))
    //                                              ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go
    //                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.embedded.go source.sql.embedded.go
    //                                                                            ^^^^^^^^^^^^^^^ meta.string.go meta.embedded.go source.sql.embedded.go meta.table-name.sql meta.interpolation.go - string
    //                                                                            ^^ punctuation.section.interpolation.begin.go
    //                                                                                         ^^ punctuation.section.interpolation.end.go
    //                                                                                           ^^^^^^^^^^^ meta.block.go meta.string.go meta.embedded.go
    //                                                                                                      ^^^^^^^^^^ meta.string.go meta.embedded.go source.sql.embedded.go meta.interpolation.go - string
    //                                                                                                      ^^ punctuation.section.interpolation.begin.go
    //                                                                                                              ^^ punctuation.section.interpolation.end.go
    //                                                                                                                ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.end.go
    //                                               ^^^^^^ keyword.other
    not_sql_string = `select not sql`
    //               ^^^^^^^^^^^^^^^^ meta.string.go string.quoted.backtick.go - source.sql

    //language=t-sql
    // <- comment.line.double-slash.go punctuation.definition.comment.go
    //^^^^^^^^^^^^^^^ comment.line.double-slash.go
    //^^^^^^^^ meta.annotation.identifier.go
    //        ^ meta.annotation keyword.operator.assignment.go
    //         ^^^^^ meta.annotation.parameters.go constant.other.language-name.go
    sqlQuery = `
        SELECT id
        FROM ##global_temp_table;`
    //       ^^ punctuation.definition.variable

    response := &http.Response{
        StatusCode: http.StatusUnauthorized,
        //language=json
        Body: io.NopCloser(strings.NewReader(`
        //                                   ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go
        //                                    ^ meta.string.go meta.embedded.go source.json.embedded.go
            {
                "foo": ["{{b}}ar\n", 123, {{baz}}]
                //^^^^^ meta.string.go meta.embedded.go source.json.embedded.go
                //     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.embedded.go source.json.embedded.go meta.mapping.value meta.sequence
                //       ^^^^^ meta.interpolation.go - string.quoted
                //              ^^ constant.character.escape.json
                //                        ^^^^^^^ meta.interpolation.go
            }
        `))
    }

    fmt.Printf(`%s
        %s
        %s %% \n`, x, y, z)
    //  ^^ string.quoted.backtick.go constant.other.placeholder.go
    //     ^^ string.quoted.backtick.go constant.character.escape.go
    //        ^^ - punctuation - constant
    //          ^ string.quoted.backtick.go punctuation.definition.string.end.go
    //           ^ punctuation.separator.go - string

    // language=regexp
    //^^^^^^^^^^^^^^^^^ comment.line.double-slash.go
    // ^^^^^^^^ meta.annotation.identifier.go support.other.go
    //         ^ meta.annotation.identifier.go keyword.operator.assignment.go
    //          ^^^^^^ meta.annotation.parameters.go constant.other.language-name.go
    pattern := `^a{{.b}}?c+`
    //         ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go - source.regexp
    //          ^^ meta.string.regexp.go source.regexp.embedded.go - meta.interpolation
    //            ^^^^^^ meta.string.regexp.go source.regexp.embedded.go meta.interpolation.go
    //                  ^ keyword.operator.quantifier
    //                    ^ keyword.operator.quantifier
    //                     ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.end.go

    //language=xml prefix=<svg> suffix=</svg>
    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.go
    //^^^^^^^^ meta.annotation.identifier.go support.other.go
    //        ^ meta.annotation.identifier.go keyword.operator.assignment.go
    //         ^^^ meta.annotation.parameters.go constant.other.language-name.go
    image := `<path d="M 0.0 10.0" fill="{{.color}}" {{ .Attr }} />`
    //       ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.begin.go
    //        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.go meta.embedded.go text.xml.embedded.go meta.tag.xml
    //                ^^^^^^^^^^^^ meta.string.xml string.quoted.double.xml
    //                                  ^ meta.string.xml string.quoted.double.xml
    //                                   ^^^^^^^^^^ meta.string.xml meta.interpolation.go - string.quoted.double.xml
    //                                             ^ meta.string.xml string.quoted.double.xml
    //                                               ^^^^^^^^^^^ meta.interpolation.go
    //                                                             ^ meta.string.go string.quoted.backtick.go punctuation.definition.string.end.go
}

// language=sql
some_func_call(
    args_on_next_line, `
        SELECT min(a)
        FROM b
        WHERE c = @p1`, "some value",
    // ^^^^^^^^^^^^^^ meta.string.go meta.embedded.go source.sql.embedded.go
)
// <- punctuation.section.parens.end.go - invalid

_ = ident[0] * ident
//  ^^^^^ variable.other
//       ^ punctuation.section.brackets.begin
//        ^ meta.number.integer.decimal constant.numeric.value
//         ^ punctuation.section.brackets.end
//           ^ keyword.operator
//             ^^^^^ variable.other
func sth() {

    a := 123
    data := []int

    b := 0
    b = data[b]|a
//             ^ keyword.operator.bitwise
//              ^ variable.other
    b = data[b]^a
//             ^ keyword.operator.bitwise
//              ^ variable.other
    b = data[b]&a
//             ^ keyword.operator
//              ^ variable.other
    b = b|a
//       ^ keyword.operator.bitwise
//        ^ variable.other
}
