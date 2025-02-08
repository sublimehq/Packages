// SYNTAX TEST "Packages/JavaScript/TypeScript.sublime-syntax"

// comment
// <- comment.line.double-slash punctuation.definition.comment
//^^^^^^^^^ comment.line.double-slash

// comment //
// <- comment.line.double-slash punctuation.definition.comment
//^^^^^^^^^^^^ comment.line.double-slash
//         ^^ punctuation.definition.comment

/// comment
// <- comment.line.triple-slash punctuation.definition.comment
//^^^^^^^^^^ comment.line.triple-slash

/// comment ///
// <- comment.line.triple-slash punctuation.definition.comment
//^^^^^^^^^^^^^^ comment.line.triple-slash
//          ^^^ punctuation.definition.comment

/////////////////////////////////////////////////////////////////
// <- comment.line.other punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.other punctuation.definition.comment
//                                                               ^ comment.line.other - punctuation

/* */
// <- comment.block punctuation.definition.comment.begin
//^^^ comment.block
//   ^ - comment

    /**/ /***/
// ^ - comment
//  ^^^^ comment.block.empty punctuation.definition.comment
//      ^ - comment
//       ^^^^^ comment.block.empty punctuation.definition.comment
//            ^ - comment

    /** @todo **/
//  ^^^^^^^^^^^^^ comment.block.documentation
//  ^^^ punctuation.definition.comment.begin
//      ^^^^^ entity.other.attribute-name.documentation
//            ^^^ punctuation.definition.comment.end

    /**
// ^ - comment
//  ^^^ comment.block.documentation punctuation.definition.comment.begin
//     ^ comment.block.documentation - punctuation
     * @todo test it
//   ^ comment.block.documentation punctuation.definition.comment
//    ^^^^^^^^^^^^^^^ comment.block.documentation
//     ^^^^^ entity.other.attribute-name.documentation
     **/
//^^^ comment.block.documentation - punctuation
//   ^^^ comment.block.documentation
//      ^ - comment

    /*** @todo ***/
//  ^^^^^^^^^^^^^^^ comment.block.documentation
//  ^^^^ punctuation.definition.comment.begin
//       ^^^^^ entity.other.attribute-name.documentation
//             ^^^^ punctuation.definition.comment.end

    /***
// ^ - comment
//  ^^^^ comment.block.documentation punctuation.definition.comment.begin
//      ^ comment.block.documentation - punctuation
     * @todo test it
//   ^ comment.block.documentation punctuation.definition.comment
//    ^^^^^^^^^^^^^^^ comment.block.documentation
//     ^^^^^ entity.other.attribute-name.documentation
     ***/
//^^^ comment.block.documentation - punctuation
//   ^^^^ comment.block.documentation
//       ^ - comment

/// <reference no-default-lib="true"/>
// <- comment.line.triple-slash punctuation.definition.comment
//^ comment.line.triple-slash punctuation.definition.comment
// ^ comment.line.triple-slash - meta.preprocessor
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.triple-slash meta.preprocessor.directive meta.tag.xml
//                                    ^ comment.line.triple-slash - meta.preprocessor

/// <foo bar="baz"/>
// <- comment.line.triple-slash punctuation.definition.comment
//^ comment.line.triple-slash punctuation.definition.comment
// ^ comment.line.triple-slash - meta.preprocessor
//  ^^^^^^^^^^^^^^^^ comment.line.triple-slash meta.preprocessor.directive meta.tag.xml
//                  ^ comment.line.triple-slash - meta.preprocessor

//// <foo bar="baz"/>
// <- comment.line.other punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^^^ comment.line.other - meta.preprocessor

import foo;

/// <normal comment="after first statement"/>
// <- comment.line.triple-slash punctuation.definition.comment
//^ comment.line.triple-slash punctuation.definition.comment
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.triple-slash - punctuation - meta.preprocessor


/* Import/Export */

    import type T from 'somewhere';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
//  ^^^^^^ keyword.control.import-export
//         ^^^^ keyword.control.import-export
//              ^ variable.other.readwrite
//                ^^^^ keyword.control.import-export
//                     ^^^^^^^^^^^ meta.string string.quoted.single

    import type from 'somewhere';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
//  ^^^^^^ keyword.control.import-export
//         ^^^^ variable.other.readwrite
//              ^^^^ keyword.control.import-export
//                   ^^^^^^^^^^^ meta.string string.quoted.single
//                              ^ punctuation.terminator.statement

    import type { U, V } from 'somewhere';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
//  ^^^^^^ keyword.control.import-export
//         ^^^^ keyword.control.import-export
//              ^^^^^^^^ meta.block
//                ^ variable.other.readwrite
//                 ^ punctuation.separator.comma
//                   ^ variable.other.readwrite
//                       ^^^^ keyword.control.import-export
//                            ^^^^^^^^^^^ meta.string string.quoted.single

    import { type W } from 'somewhere';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^ meta.block
//         ^ punctuation.section.block.begin
//           ^^^^ keyword.control.import-export
//                ^ variable.other.readwrite
//                  ^ punctuation.section.block.end
//                    ^^^^ keyword.control.import-export
//                         ^^^^^^^^^^^ meta.string string.quoted.single
//                         ^ punctuation.definition.string.begin
//                                   ^ punctuation.definition.string.end
//                                    ^ punctuation.terminator.statement

    export type T = any;
//  ^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^ meta.type-alias
//                     ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export type { T } from 'somewhere';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^ keyword.control.import-export
//              ^^^^^ meta.block
//              ^ punctuation.section.block.begin
//                ^ variable.other.readwrite
//                  ^ punctuation.section.block.end
//                    ^^^^ keyword.control.import-export
//                         ^^^^^^^^^^^ meta.string string.quoted.single
//                         ^ punctuation.definition.string.begin
//                                   ^ punctuation.definition.string.end
//                                    ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export type * as T from 'somewhere';
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^ keyword.control.import-export
//              ^ constant.other
//                ^^ keyword.control.import-export
//                   ^ variable.other.readwrite
//                     ^^^^ keyword.control.import-export
//                          ^^^^^^^^^^^ meta.string string.quoted.single
//                          ^ punctuation.definition.string.begin
//                                    ^ punctuation.definition.string.end
//                                     ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export interface Foo {}
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^^^ meta.interface
//         ^^^^^^^^^ keyword.declaration
//                   ^^^ entity.name.interface
//                       ^^ meta.block

    export namespace Foo {}
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^^^ meta.namespace
//         ^^^^^^^^^ keyword.declaration
//                   ^^^ entity.name.namespace
//                       ^^ meta.block

    export abstract class C {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^ storage.modifier
//                  ^^^^^^^^^^ meta.class
//                  ^^^^^ keyword.declaration.class
//                        ^ entity.name.class
//                          ^^ punctuation.section.block

    export declare enum E {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^ storage.modifier
//                 ^^^^^^^^^ meta.enum
//                 ^^^^ keyword.declaration.enum
//                      ^ entity.name.enum
//                        ^^ meta.block punctuation.section.block

    export default interface Foo {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^ keyword.control.import-export
//                 ^^^^^^^^^^^^^^^^ meta.interface
//                 ^^^^^^^^^ keyword.declaration
//                           ^^^  entity.name.interface

    export { type T as U };
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^^ meta.block
//         ^ punctuation.section.block.begin
//           ^^^^ keyword.control.import-export
//                ^ variable.other.readwrite
//                  ^^ keyword.control.import-export
//                     ^ variable.other.readwrite
//                       ^ punctuation.section.block.end
//                        ^ punctuation.terminator.statement

/* Declarations */

    interface Foo {
//  ^^^^^^^^^^^^^^^^ meta.interface
//  ^^^^^^^^^ keyword.declaration
//            ^^^ entity.name.interface
//                ^ meta.block punctuation.section.block.begin
        foo: any;
//^^^^^^^^^^^^^^^^ meta.interface meta.block
//      ^^^ variable.other.readwrite
//         ^ punctuation.separator.type
//           ^^^ meta.type support.type.any
//              ^ punctuation.separator
        bar?: any;
//^^^^^^^^^^^^^^^^^ meta.interface meta.block
//      ^^^ variable.other.readwrite
//         ^ storage.modifier.optional
//          ^ punctuation.separator.type
//            ^^^ meta.type support.type.any
//               ^ punctuation.separator

        "baz": any,
//      ^^^^^ meta.string string.quoted.double
//           ^ punctuation.separator.type
//             ^^^ meta.type support.type.any
//                ^ punctuation.separator

        'baz': any,
//      ^^^^^ meta.string string.quoted.single
//           ^ punctuation.separator.type
//             ^^^ meta.type support.type.any
//                ^ punctuation.separator

        1: any,
//      ^ meta.number.integer.decimal
//      ^ constant.numeric.value
//       ^ punctuation.separator.type
//        ^^^^ meta.type
//         ^^^ support.type.any
//            ^ punctuation.separator
    }
//  ^ meta.block punctuation.section.block.end

    interface Foo < T > extends Bar < T > {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface
//  ^^^^^^^^^ keyword.declaration
//            ^^^ entity.name.interface
//                ^^^^^ meta.generic
//                ^ punctuation.definition.generic.begin
//                  ^ variable.parameter.generic
//                    ^ punctuation.definition.generic.end
//                      ^^^^^^^ storage.modifier.extends
//                              ^^^ entity.other.inherited-class
//                                  ^^^^^ meta.interface meta.generic
//                                  ^ punctuation.definition.generic.begin
//                                    ^ support.class
//                                      ^ punctuation.definition.generic.end

    interface Foo extends Bar, Baz {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface
//                ^^^^^^^ storage.modifier.extends
//                        ^^^ entity.other.inherited-class
//                           ^ punctuation.separator.comma
//                             ^^^ entity.other.inherited-class

    enum Foo {
//  ^^^^^^^^^^^ meta.enum
//  ^^^^ keyword.declaration.enum
//       ^^^ entity.name.enum
//           ^ punctuation.section.block.begin
        x,
//      ^ variable.other.readwrite
//       ^ punctuation.separator.comma
        y = 2,
//      ^ variable.other.readwrite
//        ^ keyword.operator.assignment
//          ^ meta.number.integer.decimal constant.numeric.value
//           ^ punctuation.separator.comma

        'FOO'
//      ^^^^^ meta.string string.quoted.single
        "FOO"
//      ^^^^^ meta.string string.quoted.double
    }
//  ^ meta.enum meta.block punctuation.section.block.end

    const enum Foo {}
//  ^^^^^ storage.modifier
//        ^^^^^^^^^^^ meta.enum
//        ^^^^ keyword.declaration.enum
//             ^^^ entity.name.enum

    declare enum Foo {}
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^^ meta.enum
//          ^^^^ keyword.declaration.enum
//               ^^^ entity.name.enum

    declare const enum Foo {}
//  ^^^^^^^ storage.modifier
//          ^^^^^ storage.modifier
//                ^^^^^^^^^^^ meta.enum
//                ^^^^ keyword.declaration.enum
//                     ^^^ entity.name.enum

    declare const foo: any;
//  ^^^^^^^ storage.modifier
//          ^^^^^ keyword.declaration
//                ^^^ meta.binding.name variable.other.readwrite
//                   ^ punctuation.separator.type
//                     ^^^ meta.type support.type.any
//                        ^ punctuation.terminator.statement

    const; // While typing
//  ^^^^^ keyword.declaration

    declare();
//  ^^^^^^^ meta.function-call variable.function

    declare con;
//  ^^^^^^^ storage.modifier

    const declare;
//  ^^^^^ keyword.declaration
//        ^^^^^^^ meta.binding.name variable.other.readwrite

    type x < T > = any;
//  ^^^^^^^^^^^^^^^^^^ meta.type-alias
//  ^^^^ keyword.declaration.type
//       ^ entity.name.type
//         ^^^^^ meta.generic
//         ^ punctuation.definition.generic.begin
//           ^ variable.parameter.generic
//             ^ punctuation.definition.generic.end
//               ^ keyword.operator.assignment
//                 ^^^ meta.type-alias support.type.any

    type x < T = Foo > = any;
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-alias
//  ^^^^ keyword.declaration.type
//       ^ entity.name.type
//         ^^^^^^^^^^^ meta.generic
//         ^ punctuation.definition.generic.begin
//           ^ variable.parameter.generic
//             ^ keyword.operator.assignment
//               ^^^ support.class
//                   ^ punctuation.definition.generic.end
//                     ^ keyword.operator.assignment
//                       ^^^ meta.type-alias support.type.any

    // ensure fixed deadlock caused by incomplete/invalid type expressions
    // https://github.com/sublimehq/Packages/issues/3598
    type x = {
        bar: (cb: (
//^^^^^^^^^^^^^^^^^^ meta.type-alias meta.mapping
//     ^^^^^^ - meta.group
//           ^^^ meta.type meta.group
//              ^^ - meta.group
//      ^^^ variable.other.readwrite
//         ^ punctuation.separator.type
//           ^ punctuation.section.group.begin
//            ^^ support.class
//                ^ punctuation.section.group.begin
    };
//  ^ meta.type-alias meta.mapping
//   ^ - meta.type-alias - meta.mapping
//  ^ punctuation.section.mapping.end
//   ^ punctuation.terminator.statement.empty

    class Foo {
        foo: any = 42;
//      ^^^ variable.other.readwrite
//         ^ punctuation.separator.type
//           ^^^ meta.type support.type.any
//               ^ keyword.operator.assignment

        foo?: any;
//      ^^^ variable.other.readwrite
//         ^ storage.modifier.optional
//          ^ punctuation.separator.type
//            ^^^ meta.type support.type.any

        foo!: any;
//      ^^^ variable.other.readwrite
//         ^ storage.modifier.definite
//          ^ punctuation.separator.type
//            ^^^ meta.type support.type.any

        declare foo;
//      ^^^^^^^ storage.modifier
//              ^^^ variable.other.readwrite

        #foo: any;
//      ^ punctuation.definition.variable
//       ^^^ variable.other.readwrite
//          ^ punctuation.separator.type
//            ^^^ meta.type support.type.any

        public foo;
//      ^^^^^^ storage.modifier
//             ^^^ variable.other.readwrite
        private foo;
//      ^^^^^^^ storage.modifier
//              ^^^ variable.other.readwrite
        protected foo;
//      ^^^^^^^^^ storage.modifier
//                ^^^ variable.other.readwrite
        readonly foo;
//      ^^^^^^^^ storage.modifier
//               ^^^ variable.other.readwrite
        override foo() {}
//      ^^^^^^^^ storage.modifier
//               ^^^^^^^^ meta.function
//               ^^^ entity.name.function

        accessor foo;
//      ^^^^^^^^ storage.modifier
//               ^^^ variable.other.readwrite

        readonly;
//      ^^^^^^^^ variable.other.readwrite

        readonly() {}
//      ^^^^^^^^^^ meta.function
//      ^^^^^^^^ entity.name.function

        private static readonly abstract declare override public;
//      ^^^^^^^ storage.modifier
//              ^^^^^^ storage.modifier
//                     ^^^^^^^^ storage.modifier
//                              ^^^^^^^^ storage.modifier
//                                       ^^^^^^^ storage.modifier
//                                               ^^^^^^^^ storage.modifier
//                                                        ^^^^^^ variable.other.readwrite

        foo(): any {}
//      ^^^^^^^^^^^^^ meta.function
//      ^^^ entity.name.function
//           ^ punctuation.separator.type
//             ^^^ meta.type support.type.any
//                 ^^ meta.function meta.block

        foo<T>(): any {}
//      ^^^^^^^^^^^^^^^^ meta.function
//      ^^^ entity.name.function
//         ^^^ meta.generic
//              ^ punctuation.separator.type
//                ^^^ meta.type support.type.any
//                    ^^ meta.function meta.block

        @decorator<T>()
//      ^^^^^^^^^^^^^^^ meta.annotation
//      ^ punctuation.definition.annotation
//       ^^^^^^^^^ variable.annotation
//                ^^^ meta.generic
//                ^ punctuation.definition.generic.begin
//                 ^ support.class
//                  ^ punctuation.definition.generic.end
//                   ^^ meta.group
//                   ^ punctuation.section.group.begin
//                    ^ punctuation.section.group.end

        foo() {}
//      ^^^^^^^^ meta.function
//      ^^^ entity.name.function
//         ^^ meta.function.parameters
//         ^ punctuation.section.group.begin
//          ^ punctuation.section.group.end
//            ^^ meta.block
//            ^ punctuation.section.block.begin
//             ^ punctuation.section.block.end
    }

    abstract class Foo {
//  ^^^^^^^^ storage.modifier
//           ^^^^^ meta.class keyword.declaration.class

        abstract foo;
//      ^^^^^^^^ storage.modifier
//               ^^^ variable.other.readwrite

        abstract foo();
//      ^^^^^^^^ storage.modifier
//               ^^^ entity.name.function

        abstract *foo();
//      ^^^^^^^^ storage.modifier
//               ^ keyword.generator.asterisk
//                ^^^ entity.name.function

        abstract async foo();
//      ^^^^^^^^ storage.modifier
//               ^^^^^ keyword.declaration.async
//                     ^^^ entity.name.function

        abstract async() {}
//      ^^^^^^^^ storage.modifier
//               ^^^^^ entity.name.function

        abstract get foo() {}
//      ^^^^^^^^ storage.modifier
//               ^^^ storage.type.accessor
//                   ^^^ entity.name.function

        abstract get() {}
//      ^^^^^^^^ storage.modifier
//               ^^^ entity.name.function

    }

    abstract();
//  ^^^^^^^^ meta.function-call variable.function

    class Foo < T > extends Bar implements Baz, Xyzzy { }
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//  ^^^^^ keyword.declaration.class
//        ^^^ entity.name.class
//            ^^^^^ meta.generic
//            ^ punctuation.definition.generic.begin
//              ^ variable.parameter.generic
//                ^ punctuation.definition.generic.end
//                  ^^^^^^^ storage.modifier.extends
//                          ^^^ entity.other.inherited-class
//                              ^^^^^^^^^^ storage.modifier.implements
//                                         ^^^ entity.other.inherited-class
//                                            ^ punctuation.separator.comma
//                                              ^^^^^ entity.other.inherited-class
//                                                    ^^^ meta.block

    class Foo extends Bar < T > implements Bar < T > {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                    ^^^ entity.other.inherited-class
//                        ^^^^^ meta.generic
//                        ^ punctuation.definition.generic.begin
//                          ^ support.class
//                            ^ punctuation.definition.generic.end
//                                         ^^^ entity.other.inherited-class
//                                             ^^^^^ meta.generic
//                                             ^ punctuation.definition.generic.begin
//                                               ^ support.class
//                                                 ^ punctuation.definition.generic.end
//                                                   ^^ meta.block

    namespace Foo {
//  ^^^^^^^^^^^^^^^^ meta.namespace
//  ^^^^^^^^^ keyword.declaration
//            ^^^ entity.name.namespace
//                ^ meta.block punctuation.section.block.begin
    }
//  ^ meta.block punctuation.section.block.end

    namespace Foo.bar {}
//  ^^^^^^^^^^^^^^^^^^^^ meta.namespace
//  ^^^^^^^^^ keyword.declaration
//            ^^^ entity.name.namespace
//               ^ punctuation.accessor.dot
//                ^^^ entity.name.namespace
//                    ^^ meta.block punctuation.section.block

// Don't break highlighting while typing
interface
class Foo {}
// <- meta.class keyword.declaration.class

type
class Foo {}
// <- meta.class keyword.declaration.class

namespace
class Foo {}
// <- meta.class keyword.declaration.class

/* Annotations */

var x: any = 42;
//   ^ punctuation.separator.type
//     ^^^ meta.type support.type.any
//         ^^^^^^ - meta.type
//         ^ keyword.operator.assignment

let x: any = 42;
//   ^ punctuation.separator.type
//     ^^^ meta.type support.type.any
//         ^^^^^^ - meta.type
//         ^ keyword.operator.assignment

const x: any = 42;
//     ^ punctuation.separator.type
//       ^^^ meta.type support.type.any
//           ^^^^^^ - meta.type
//           ^ keyword.operator.assignment

let [ x: any = 42 ];
//     ^ punctuation.separator.type
//       ^^^ meta.type support.type.any
//           ^ keyword.operator.assignment

let x !: any ;
//  ^ variable.other.readwrite
//    ^ storage.modifier.definite
//     ^ punctuation.separator.type
//       ^^^ meta.type support.type.any

function f(x: any = 42) {}
//          ^ punctuation.separator.type
//            ^^^meta.type support.type.any
//                ^ keyword.operator.assignment

function f(public x) {}
//         ^^^^^^ storage.modifier
//                ^ meta.binding.name variable.parameter.function

function f(readonly x) {}
//         ^^^^^^^^ storage.modifier
//                  ^ meta.binding.name variable.parameter.function

function f(readonly ...x) {}
//         ^^^^^^^^ storage.modifier
//                  ^^^keyword.operator.spread
//                     ^ meta.binding.name variable.parameter.function

function f(readonly) {}
//         ^^^^^^^^ meta.binding.name variable.parameter.function

function f(x?: any) {}
//          ^ storage.modifier.optional
//           ^ punctuation.separator.type

function f(): any {}
//^^^^^^^^^^^^^^^^^^ meta.function
//          ^ punctuation.separator.type
//            ^^^meta.type support.type.any
//                ^^ meta.block

function f ( x : any , ... y : any ) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//           ^ meta.binding.name variable.parameter.function
//             ^ punctuation.separator.type
//               ^^^ meta.type support.type.any
//                   ^ punctuation.separator.parameter.function
//                     ^^^ keyword.operator.spread
//                         ^ meta.binding.name variable.parameter.function
//                           ^ punctuation.separator.type
//                             ^^^ meta.type support.type.any

function f ( @foo x , @bar() y ) {}
//           ^^^^ meta.annotation
//           ^ punctuation.definition.annotation
//            ^^^ variable.annotation
//                ^ meta.binding.name variable.parameter.function
//                    ^^^^^^ meta.annotation
//                    ^ punctuation.definition.annotation
//                     ^^^^^ meta.function-call
//                     ^^^ variable.function
//                           ^ meta.binding.name variable.parameter.function

function f<T, U>() {}
//^^^^^^^^^^^^^^^^^^^ meta.function
//        ^^^^^^ meta.generic
//         ^ variable.parameter.generic
//          ^ punctuation.separator.comma
//            ^ variable.parameter.generic

function f<const T>() {}
//^^^^^^^^^^^^^^^^^^^^^^ meta.function
//        ^^^^^^^^^ meta.generic
//         ^^^^^ storage.modifier.const
//               ^ variable.parameter.generic

function f(x): x is any {};
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//           ^ punctuation.separator.type
//             ^^^^^^^^^ meta.type
//               ^^ keyword.operator.word
//                  ^^^ support.type.any

function f(x): asserts x is any {};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//           ^ punctuation.separator.type
//            ^^^^^^^^^^^^^^^^^ meta.type
//             ^^^^^^^ storage.modifier.asserts
//                       ^^ keyword.operator.word
//                          ^^^ support.type.any

function f(this : any) {}
//         ^^^^ variable.language.this
//              ^ punctuation.separator.type
//                ^^^ support.type.any

    (x: any) => 42;
//  ^^^^^^^^^^^^^^ meta.function
//    ^ punctuation.separator.type
//      ^^^ meta.type support.type.any
//           ^^ keyword.declaration.function.arrow

    x ? (y) : z;
//  ^ variable.other.readwrite
//    ^ keyword.operator.ternary
//      ^^^ meta.group
//       ^ variable.other.readwrite
//          ^ keyword.operator.ternary

    x ? (y) : T => r : z;
//  ^ variable.other.readwrite
//    ^ keyword.operator.ternary
//      ^^^^^^^^^^^^^ meta.function
//       ^ meta.binding.name variable.parameter.function
//          ^ punctuation.separator.type
//            ^ meta.type support.class
//              ^^ keyword.declaration.function.arrow
//                 ^meta.block variable.other.readwrite
//                   ^ keyword.operator.ternary
//                     ^ variable.other.readwrite

    x ? y : T => z;
//      ^ variable.other.readwrite - variable.parameter
//        ^ keyword.operator.ternary
//          ^^^^^^ meta.function
//          ^ variable.parameter.function
//            ^^ keyword.declaration.function.arrow

    async (x): T => y;
//  ^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^ keyword.declaration.async
//         ^ meta.binding.name variable.parameter.function
//           ^ punctuation.separator.type
//             ^ meta.type support.class
//               ^^ keyword.declaration.function.arrow
//                  ^ meta.block variable.other.readwrite

    x ? async (y) : T => r : z;
//      ^^^^^^^^^^^^^^^^^^ meta.function
//                ^ punctuation.separator.type
//                         ^ keyword.operator.ternary

    x ? async (y) : T;
//      ^^^^^ variable.function
//                ^ keyword.operator.ternary

/* Assertions */

x as boolean;
//^^ keyword.operator.type
//   ^^^^^^^ meta.type support.type.primitive.boolean

x satisfies boolean;
//^^^^^^^^^ keyword.operator.type
//          ^^^^^^^ meta.type support.type.primitive.boolean

x as const;
//^^ keyword.operator.type
//   ^^^^^ storage.modifier.const

    foo!.bar;
//     ^ keyword.operator.type - punctuation.accessor
//      ^ punctuation.accessor

    x ! ;
//  ^ variable.other.readwrite
//    ^ keyword.operator.type
//      ^ punctuation.terminator.statement

/* Types */

let x: any;
//     ^^^ support.type.any
let x: void;
//     ^^^^ support.type.void
let x: never;
//     ^^^^^ support.type.never
let x: unknown;
//     ^^^^^^^ support.type.unknown

let x: boolean;
//     ^^^^^^^ support.type.primitive.boolean
let x: true;
//     ^^^^ support.type.primitive.boolean.true
let x: false;
//     ^^^^^ support.type.primitive.boolean.false
let x: number;
//     ^^^^^^ support.type.primitive.number
let x: string;
//     ^^^^^^ support.type.primitive.string
let x: null;
//     ^^^^ support.type.primitive.null
let x: undefined;
//     ^^^^^^^^^ support.type.primitive.undefined
let x: object;
//     ^^^^^^ support.type.primitive.object
let x: symbol;
//     ^^^^^^ support.type.primitive.symbol
let x: unique symbol;
//     ^^^^^^ storage.modifier.unique
//            ^^^^^^ support.type.primitive.symbol
let x: bigint;
//     ^^^^^^ support.type.primitive.bigint

let x: Foo;
//     ^^^ support.class

let x: any [ ];
//     ^^^^^^ meta.type
//     ^^^ support.type.any
//         ^ storage.modifier.array
//           ^ storage.modifier.array

let x: readonly any [];
//     ^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^ storage.modifier.readonly
//              ^^^ support.type.any
//                  ^^ storage.modifier.array

let x: foo<T>[];
//     ^^^^^^^^ meta.type
//        ^^^ meta.type meta.generic
//           ^^ meta.type storage.modifier.array

let x: any [ "foo" | 'bar' ];
//     ^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^ support.type.any
//         ^^^^^^^^^^^^^^^^^ meta.brackets
//         ^ punctuation.section.brackets.begin
//           ^^^^^ meta.string string.quoted.double
//                 ^ keyword.operator.type.union
//                   ^^^^^ meta.string string.quoted.single
//                         ^ punctuation.section.brackets.end


let x: any [ 0 ];
//         ^^^^^ meta.type meta.brackets
//         ^ punctuation.section.brackets.begin
//           ^ meta.number.integer.decimal constant.numeric.value
//             ^ punctuation.section.brackets.end

let x: any [
//     ^^^^^^ meta.type
//     ^^^ support.type.any
//         ^ punctuation.section.brackets.begin
    ];
//  ^ punctuation.section.brackets.end


let x: any
//     ^^^ meta.type support.type.any
    [];
//  ^^ meta.sequence punctuation.section.sequence - meta.type

let x: Foo<any, any>;
//     ^^^^^^^^^^^^^ meta.type
//     ^^^ support.class
//        ^^^^^^^^^^ meta.generic
//        ^ punctuation.definition.generic.begin
//         ^^^ support.type.any
//            ^ punctuation.separator.comma
//              ^^^ support.type.any
//                 ^ punctuation.definition.generic.end


function f<T extends Foo>() {}
//        ^^^^^^^^^^^^^^^ meta.function meta.generic
//         ^ variable.parameter.generic
//           ^^^^^^^ storage.modifier.extends
//                   ^^^ support.class

let x: [ any , any ? , ... any [] ];
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type meta.sequence
//     ^ punctuation.section.sequence.begin
//       ^^^ support.type.any
//           ^ punctuation.separator.comma
//             ^^^ support.type.any
//                 ^ storage.modifier.optional
//                   ^ punctuation.separator.comma
//                     ^^^ keyword.operator.spread
//                         ^^^ support.type.any
//                             ^^ storage.modifier.array
//                                ^ punctuation.section.sequence.end

let x: [ first: any, rest: ...any ];
//^ keyword.declaration
//  ^ meta.binding.name variable.other.readwrite
//   ^ punctuation.separator.type
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
//     ^ punctuation.section.sequence.begin
//       ^^^^^ variable.other.member
//            ^ punctuation.separator.type
//              ^^^ support.type.any
//                 ^ punctuation.separator.comma
//                   ^^^^ variable.other.member
//                       ^ punctuation.separator.type
//                         ^^^ keyword.operator.spread
//                            ^^^ support.type.any
//                                ^ punctuation.section.sequence.end
//                                 ^ punctuation.terminator.statement

let x: [
    typeof
//  ^^^^^ variable.other.member
    ?
//  ^ storage.modifier.optional
    :
//  ^ punctuation.separator.type
    ...
//  ^^^ keyword.operator.spread
    any
//  ^^^ support.type.any
];

let x: any & any;
//     ^^^^^^^^^ meta.type
//     ^^^ support.type.any
//         ^ keyword.operator.type.intersection
//           ^^^ support.type.any

let x: any | any;
//     ^^^^^^^^^ meta.type
//     ^^^ support.type.any
//         ^ keyword.operator.type.union
//           ^^^ support.type.any

let x: "a string";
//     ^ meta.type meta.string string.quoted.double

let x: 'a string';
//     ^ meta.type meta.string string.quoted.single

let x: `a string${any}`;
//     ^^^^^^^^^^^^^^^^ meta.type meta.string
//     ^^^^^^^^^ string.quoted.other
//     ^ punctuation.definition.string.begin
//              ^^^^^^ meta.interpolation - string
//              ^^ punctuation.section.interpolation.begin
//                ^^^ source.js.embedded support.type.any
//                   ^ punctuation.section.interpolation.end
//                    ^ string.quoted.other punctuation.definition.string.end

let x: 42;
//     ^^ meta.type meta.number.integer.decimal constant.numeric.value

let x: -42;
//     ^^^ meta.type
//     ^ keyword.operator.arithmetic
//      ^^ meta.number.integer.decimal constant.numeric.value

let x: 1.5;
//     ^^^ meta.type meta.number.float.decimal constant.numeric.value

let x: 1e10;
//     ^^^^ meta.type meta.number.float.decimal constant.numeric.value

let x: 0xabc;
//     ^^^^^ meta.type meta.number.integer.hexadecimal

let x: typeof Foo;
//     ^^^^^^^^^^ meta.type
//     ^^^^^ keyword.operator.type
//            ^^^ support.class
let x: keyof Foo;
//     ^^^^^^^^^ meta.type
//     ^^^^^ keyword.operator.type
//           ^^^ support.class

let x: Foo.bar;
//     ^^^^^^^ meta.type
//     ^^^ support.class
//        ^ punctuation.accessor
//         ^^^ support.class

let x: {
//     ^ meta.type punctuation.section.mapping.begin

    a : any ,
//  ^ variable.other.readwrite
//    ^ punctuation.separator.type
//      ^^^ support.type.any
//          ^ punctuation.separator

    b ? : any ;
//  ^ variable.other.readwrite
//    ^ storage.modifier.optional
//      ^ punctuation.separator.type
//        ^^^ support.type.any
//            ^ punctuation.separator

    readonly c : any ;
//  ^^^^^^^^ storage.modifier
//           ^ variable.other.readwrite
//             ^ punctuation.separator.type
//               ^^^ support.type.any
//                   ^ punctuation.separator

    readonly: any;
//  ^^^^^^^^ variable.other.readwrite - storage.modifier
//          ^ punctuation.separator.type
//            ^^^ support.type.any
//               ^ punctuation.separator

    ( foo : any ) : any ;
//  ^ punctuation.section.group.begin
//    ^^^ meta.binding.name variable.parameter.function
//        ^ punctuation.separator.type
//          ^^^ support.type.any
//              ^ punctuation.section.group.end
//                ^ punctuation.separator.type
//                  ^^^ support.type.any
//                      ^ punctuation.separator


    <T>( foo : any ) : any ;
//  ^^^ meta.generic
//  ^ punctuation.definition.generic.begin
//   ^ meta.generic variable.parameter.generic
//    ^ punctuation.definition.generic.end
//     ^ punctuation.section.group.begin
//       ^^^ meta.binding.name variable.parameter.function
//           ^ punctuation.separator.type
//             ^^^ support.type.any
//                 ^ punctuation.section.group.end
//                   ^ punctuation.separator.type
//                     ^^^ support.type.any
//                         ^ punctuation.separator

    a ( foo : any ) : any ;
//  ^ variable.other.readwrite
//    ^ punctuation.section.group.begin
//      ^^^ meta.binding.name variable.parameter.function
//          ^ punctuation.separator.type
//            ^^^ support.type.any
//                ^ punctuation.section.group.end
//                  ^ punctuation.separator.type
//                    ^^^ support.type.any
//                        ^ punctuation.separator


    a <T>( foo : any ) : any ;
//  ^ variable.other.readwrite
//    ^^^ meta.generic
//    ^ punctuation.definition.generic.begin
//     ^ meta.generic variable.parameter.generic
//      ^ punctuation.definition.generic.end
//       ^ punctuation.section.group.begin
//         ^^^ meta.binding.name variable.parameter.function
//             ^ punctuation.separator.type
//               ^^^ support.type.any
//                   ^ punctuation.section.group.end
//                     ^ punctuation.separator.type
//                       ^^^ support.type.any
//                           ^ punctuation.separator

    a ? () : any ;
//  ^ variable.other.readwrite
//    ^ storage.modifier.optional
//      ^^ meta.function.parameters
//         ^ punctuation.separator.type
//           ^^^ support.type.any
//               ^ punctuation.separator

    new ( foo : any ) : any ;
//      ^ punctuation.section.group.begin
//        ^^^ meta.binding.name variable.parameter.function
//            ^ punctuation.separator.type
//              ^^^ support.type.any
//                  ^ punctuation.section.group.end
//                    ^ punctuation.separator.type
//                      ^^^ support.type.any
//                          ^ punctuation.separator

    new <T>( foo : any ) : any ;
//      ^^^ meta.generic
//      ^ punctuation.definition.generic.begin
//       ^ meta.generic variable.parameter.generic
//        ^ punctuation.definition.generic.end
//         ^ punctuation.section.group.begin
//           ^^^ meta.binding.name variable.parameter.function
//               ^ punctuation.separator.type
//                 ^^^ support.type.any
//                     ^ punctuation.section.group.end
//                       ^ punctuation.separator.type
//                         ^^^ support.type.any
//                             ^ punctuation.separator

    [ foo : string ] : any ;
//  ^^^^^^^^^^^^^^^^ meta.brackets
//  ^ punctuation.section.brackets.begin
//    ^^^ variable.other.readwrite
//        ^ punctuation.separator.type
//          ^^^^^^ support.type.primitive.string
//                 ^ punctuation.section.brackets.end
//                   ^ punctuation.separator.type
//                     ^^^ support.type.any
//                         ^ punctuation.separator

    [ foo : number ] : any ;
//  ^^^^^^^^^^^^^^^^ meta.brackets
//  ^ punctuation.section.brackets.begin
//    ^^^ variable.other.readwrite
//        ^ punctuation.separator.type
//          ^^^^^^ support.type.primitive.number
//                 ^ punctuation.section.brackets.end
//                   ^ punctuation.separator.type
//                     ^^^ support.type.any
//                         ^ punctuation.separator

    [ P in keyof T ] : T [ P ] ;
//  ^^^^^^^^^^^^^^^^ meta.brackets
//  ^ punctuation.section.brackets.begin
//    ^ variable.other.readwrite
//      ^^ keyword.operator.type
//         ^^^^^ keyword.operator.type
//               ^ meta.brackets support.class
//                 ^ punctuation.section.brackets.end
//                   ^ punctuation.separator.type
//                     ^ support.class
//                       ^^^^^ meta.brackets
//                       ^ punctuation.section.brackets.begin
//                         ^ support.class
//                           ^ punctuation.section.brackets.end
//                             ^ punctuation.separator

    [ P in keyof T as U ] : any ;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.brackets
//  ^ punctuation.section.brackets.begin
//    ^ variable.other.readwrite
//      ^^ keyword.operator.type
//         ^^^^^ keyword.operator.type
//               ^ meta.brackets support.class
//                 ^^ keyword.operator.type
//                    ^ meta.brackets support.class
//                      ^ punctuation.section.brackets.end

    - readonly [ P in keyof T ] - ? : T [ P ] ;
//  ^ storage.modifier
//    ^^^^^^^^ storage.modifier
//             ^^^^^^^^^^^^^^^^ meta.brackets
//             ^ punctuation.section.brackets.begin
//               ^ variable.other.readwrite
//                 ^^ keyword.operator.type
//                    ^^^^^ keyword.operator.type
//                          ^ meta.brackets support.class
//                            ^ punctuation.section.brackets.end
//                              ^ storage.modifier
//                                ^ storage.modifier.optional
//                                  ^ punctuation.separator.type
//                                    ^ support.class
//                                      ^^^^^ meta.brackets
//                                      ^ punctuation.section.brackets.begin
//                                        ^ support.class
//                                          ^ punctuation.section.brackets.end
//                                            ^ punctuation.separator

        private +readonly x;
//      ^^^^^^^ storage.modifier
//              ^^^^^^^^^ storage.modifier
//                        ^ variable.other.readwrite

        [Symbol.iterator](): any;
//      ^^^^^^^^^^^^^^^^^ meta.brackets
//      ^ punctuation.section.brackets.begin
//       ^^^^^^ support.class
//             ^ punctuation.accessor
//              ^^^^^^^^ support.class
//                      ^ punctuation.section.brackets.end
//                       ^^ meta.function.parameters
//                         ^ punctuation.separator.type
//                           ^^^ support.type.any
//                              ^ punctuation.separator

    }
//  ^ meta.type punctuation.section.mapping.end

let x: ( foo ? : any ) => bar;
//     ^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^^^^^ meta.group
//     ^ punctuation.section.group.begin
//       ^^^ variable.parameter - support.class
//           ^ storage.modifier.optional
//             ^ punctuation.separator.type
//               ^^^ support.type.any
//                   ^ punctuation.section.group.end
//                     ^^ keyword.declaration.function
//                        ^^^ support.class

let x: ( ... foo ? : any ) => any;
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^^^^^^^^^ meta.group
//       ^^^ keyword.operator.spread
//           ^^^ variable.parameter
//               ^ storage.modifier.optional
//                 ^ punctuation.separator.type
//                   ^^^ support.type.any

let x: ({ foo }: any) => any;
//    ^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^^^^ meta.group
//     ^ punctuation.section.group.begin
//      ^^^^^^^ meta.binding.destructuring.mapping
//      ^ punctuation.section.mapping.begin
//        ^^^ meta.mapping.key meta.binding.name variable.parameter.function
//            ^ punctuation.section.mapping.end
//             ^ punctuation.separator.type
//               ^^^ support.type.any
//                  ^ punctuation.section.group.end
//                    ^^ keyword.declaration.function
//                       ^^^ support.type.any
//                          ^ punctuation.terminator.statement

let x: (this: any) => any;
//    ^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^ meta.group
//      ^^^^ variable.language.this
//          ^ punctuation.separator.type
//            ^^^ support.type.any
//                 ^^ keyword.declaration.function
//                    ^^^ support.type.any
//                       ^ punctuation.terminator.statement

let x: < T > ( ... foo : any ) => any;
//     ^^^^^ meta.generic
//     ^ punctuation.definition.generic.begin
//       ^ variable.parameter.generic
//         ^ punctuation.definition.generic.end
//           ^^^^^^^^^^^^^^^^^ meta.group
//           ^ punctuation.section.group.begin
//             ^^^ keyword.operator.spread
//                 ^^^ variable.parameter
//                     ^ punctuation.separator.type
//                       ^^^ support.type.any
//                           ^ punctuation.section.group.end
//                             ^^ keyword.declaration.function
//                                ^^^ support.type.any

let x: < const T > ( ... foo : any ) => any;
//     ^^^^^^^^^^^ meta.generic
//     ^ punctuation.definition.generic.begin
//       ^^^^^ storage.modifier.const
//             ^ variable.parameter.generic
//               ^ punctuation.definition.generic.end
//                 ^^^^^^^^^^^^^^^^^ meta.group
//                 ^ punctuation.section.group.begin
//                   ^^^ keyword.operator.spread
//                       ^^^ variable.parameter
//                           ^ punctuation.separator.type
//                             ^^^ support.type.any
//                                 ^ punctuation.section.group.end
//                                   ^^ keyword.declaration.function
//                                      ^^^ support.type.any

let x: < in T > ( ... foo : any ) => any;
//     ^^^^^^^^ meta.generic
//     ^ punctuation.definition.generic.begin
//       ^^ storage.modifier.variance
//          ^ variable.parameter.generic
//            ^ punctuation.definition.generic.end
//              ^^^^^^^^^^^^^^^^^ meta.group
//              ^ punctuation.section.group.begin
//                ^^^ keyword.operator.spread
//                    ^^^ variable.parameter
//                        ^ punctuation.separator.type
//                          ^^^ support.type.any
//                              ^ punctuation.section.group.end
//                                ^^ keyword.declaration.function
//                                   ^^^ support.type.any

let x: < out T > ( ... foo : any ) => any;
//     ^^^^^^^^^ meta.generic
//     ^ punctuation.definition.generic.begin
//       ^^^ storage.modifier.variance
//           ^ variable.parameter.generic
//             ^ punctuation.definition.generic.end
//               ^^^^^^^^^^^^^^^^^ meta.group
//               ^ punctuation.section.group.begin
//                 ^^^ keyword.operator.spread
//                     ^^^ variable.parameter
//                         ^ punctuation.separator.type
//                           ^^^ support.type.any
//                               ^ punctuation.section.group.end
//                                 ^^ keyword.declaration.function
//                                    ^^^ support.type.any

let x: () => T
    U
//  ^ variable.other.constant - meta.type

let x: new () => T;
//     ^^^^^^^^^^^ meta.type
//     ^^^ keyword.operator.new
//         ^^ meta.group
//            ^^ keyword.declaration.function
//               ^ support.class

let x: abstract new () => T;
//     ^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^ storage.modifier.abstract
//              ^^^ keyword.operator.new
//                  ^^ meta.group
//                     ^^ keyword.declaration.function
//                        ^ support.class

let x: (n: number | { valueOf(): number }) => string;
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//     ^ punctuation.section.group.begin
//      ^ variable.parameter
//       ^ punctuation.separator.type
//         ^^^^^^ support.type.primitive.number
//                ^ keyword.operator.type.union
//                  ^^^^^^^^^^^^^^^^^^^^^ meta.type meta.group meta.type
//                  ^ punctuation.section.mapping.begin
//                    ^^^^^^^ variable.other.readwrite
//                           ^^ meta.function.parameters punctuation.section.group
//                             ^ punctuation.separator.type
//                               ^^^^^^ support.type.primitive.number
//                                      ^ punctuation.section.mapping.end
//                                         ^^ keyword.declaration.function
//                                            ^^^^^^ support.type.primitive.string

let x: ( foo );
//     ^^^^^^^ meta.type meta.group
//     ^ punctuation.section.group.begin
//       ^^^ support.class
//           ^ punctuation.section.group.end

let x: T extends U ? V : W;
//     ^^^^^^^^^^^^^^^^^^^ meta.type
//     ^ support.class
//       ^^^^^^^ keyword.operator.type.extends
//               ^ support.class
//                 ^ keyword.operator.type
//                   ^ support.class
//                     ^ keyword.operator.type
//                       ^ support.class

let x: T extends infer U ? V : W;
//     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^ support.class
//       ^^^^^^^ keyword.operator.type.extends
//               ^^^^^ keyword.operator.type
//                     ^ support.class
//                       ^ keyword.operator.type
//                         ^ support.class
//                           ^ keyword.operator.type
//                             ^ support.class

let x: import ( "foo" ) . Bar ;
//     ^^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^ keyword.operator.type
//            ^^^^^^^^^ meta.group
//            ^ punctuation.section.group.begin
//              ^^^^^ meta.string string.quoted.double
//                    ^ punctuation.section.group.end
//                      ^ punctuation.accessor
//                        ^^^ support.class

let x: T.U;
//    ^^^^ meta.type
//     ^ support.class
//      ^ punctuation.accessor
//       ^ support.class
//        ^ punctuation.terminator.statement

let x: T.U[];
//    ^^^^ meta.type
//     ^ support.class
//      ^ punctuation.accessor
//       ^ support.class
//        ^^ storage.modifier.array
//          ^ punctuation.terminator.statement

let x: T.U<V>[];
//    ^^^^ meta.type
//     ^ support.class
//      ^ punctuation.accessor
//       ^ support.class
//        ^^^ meta.generic
//           ^^ storage.modifier.array
//             ^ punctuation.terminator.statement

let x: T.U
//    ^^^^ meta.type
//     ^ support.class
//      ^ punctuation.accessor
//       ^ support.class
[];
//<- meta.sequence - meta.type

    foo != bar
//  ^^^ variable.other.readwrite
//      ^^ keyword.operator.comparison
//         ^^^ variable.other.readwrite

    foo < bar
//  ^^^ variable.other.readwrite
//      ^ keyword.operator.comparison
//        ^^^ variable.other.readwrite

    foo < bar > ();
//  ^^^ variable.function
//      ^^^^^^^ meta.generic
//      ^ punctuation.definition.generic.begin
//        ^^^ support.class
//            ^ punctuation.definition.generic.end
//              ^^ meta.group

    new Foo<bar>;
//  ^^^ keyword.operator.word.new
//      ^^^ variable.other.constant
//         ^^^^^ meta.generic

    foo<bar>``;
//  ^^^ variable.other.readwrite
//     ^^^^^ meta.generic
//          ^^ meta.string string.quoted.other

var foo = 1 << 0 /x/g;
//          ^^ keyword.operator.bitwise
//               ^ keyword.operator.arithmetic
//                ^ variable.other.readwrite
//                 ^ keyword.operator.arithmetic
//                  ^ variable.other.readwrite

if (a < b || c <= d) {}
//    ^ keyword.operator.comparison
//        ^^ keyword.operator.logical
//             ^^ keyword.operator.comparison

const f = (): any => {};
//    ^ meta.binding.name entity.name.function variable.other.readwrite
//     ^^^^^^^^^^^^^^^^^^ - entity.name.function

const f = <T,>(): U => {};
//        ^^^^^^^^^^^^^^^ meta.function
//        ^^^ meta.generic
//        ^ punctuation.definition.generic.begin
//         ^ variable.parameter.generic
//          ^ punctuation.separator.comma
//           ^ punctuation.definition.generic.end
//            ^^ meta.function.parameters
//              ^ punctuation.separator.type
//                ^ support.class
//                  ^^ keyword.declaration.function.arrow

const f = <T, U = V<any>>() => {};
//        ^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//        ^^^^^^^^^^^^^^^ meta.generic
//                       ^^ meta.function.parameters
//                         ^^^^^^ meta.function
//                          ^^ keyword.declaration.function.arrow
//                             ^^ meta.block

const f = <const T>() => foo;
//        ^^^^^^^^^ meta.function meta.generic - meta.function meta.function
//                 ^^ meta.function.parameters - meta.function meta.function
//                   ^^^^^^^ meta.function - meta.function meta.function
//        ^ punctuation.definition.generic.begin
//         ^^^^^ storage.modifier.const
//               ^ variable.parameter.generic
//                ^ punctuation.definition.generic.end
//                 ^ punctuation.section.group.begin
//                  ^ punctuation.section.group.end
//                    ^^ keyword.declaration.function.arrow
//                       ^^^ meta.block variable.other.readwrite
//                          ^ punctuation.terminator.statement

const f = <const T>(a: T,): T => foo;
//        ^^^^^^^^^ meta.function meta.generic - meta.function meta.function
//                 ^^^^^^^ meta.function.parameters - meta.function meta.function
//                        ^ meta.function - meta.type - meta.function meta.function
//                         ^^^ meta.function meta.type - meta.function meta.function
//                            ^^^^^^ meta.function - meta.type - meta.function meta.function
//        ^ punctuation.definition.generic.begin
//         ^^^^^ storage.modifier.const
//               ^ variable.parameter.generic
//                ^ punctuation.definition.generic.end
//                 ^ punctuation.section.group.begin
//                  ^ variable.parameter.function
//                   ^ punctuation.separator.type
//                    ^^ meta.type
//                     ^ support.class
//                      ^ punctuation.separator.parameter.function
//                       ^ punctuation.section.group.end
//                        ^ punctuation.separator.type
//                          ^ support.class
//                            ^^ keyword.declaration.function.arrow
//                               ^^^ meta.block variable.other.readwrite
//                                  ^ punctuation.terminator.statement

const f = <const T extends Foo, X extends Bar>(a: T,): X => foo;
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.js meta.generic.js
//                                            ^^^^^^^ meta.function.parameters - meta.function meta.function
//                                                   ^ meta.function - meta.type - meta.function meta.function
//                                                    ^^^ meta.function meta.type - meta.function meta.function
//                                                       ^^^^^^ meta.function - meta.type - meta.function meta.function
//        ^ punctuation.definition.generic.begin
//         ^^^^^ storage.modifier.const
//               ^ variable.parameter.generic
//                 ^^^^^^^ storage.modifier.extends
//                         ^^^ support.class
//                            ^ punctuation.separator.comma
//                              ^ variable.parameter.generic
//                                ^^^^^^^ storage.modifier.extends
//                                        ^^^ support.class
//                                           ^ punctuation.definition.generic.end
//                                            ^ punctuation.section.group.begin
//                                             ^ meta.binding.name variable.parameter.function
//                                              ^ punctuation.separator.type
//                                               ^^ meta.type
//                                                ^ support.class
//                                                 ^ punctuation.separator.parameter.function
//                                                  ^ punctuation.section.group.end
//                                                   ^ punctuation.separator.type
//                                                     ^ support.class
//                                                       ^^ keyword.declaration.function.arrow
//                                                          ^^^ meta.block variable.other.readwrite
//                                                             ^ punctuation.terminator.statement

const x = {
    readonly: true,
//  ^^^^^^^^ meta.mapping.key
    readonly readonly: true,
//  ^^^^^^^^ storage.modifier
//           ^^^^^^^^ meta.mapping.key

    readonly,
//  ^^^^^^^^ variable.other.readwrite

    readonly get() {},
//  ^^^^^^^^ storage.modifier
//           ^^^ entity.name.function

    readonly get foo() {},
//  ^^^^^^^^ storage.modifier
//           ^^^ storage.type.accessor
//               ^^^ entity.name.function

    readonly get: 42,
//  ^^^^^^^^ storage.modifier
//           ^^^ meta.mapping.key

    readonly get,
//  ^^^^^^^^ storage.modifier
//           ^^^ variable.other.readwrite

    f<T>() {},
//  ^^^^^^^^^ meta.function
//  ^ entity.name.function
//   ^^^ meta.generic
};

    true ? (a) : <T,foo="a">() => {} => {} : null; // </T>;
//  ^^^^ constant.language.boolean.true
//       ^ keyword.operator.ternary
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//         ^^^ meta.function.parameters
//          ^ meta.binding.name variable.parameter.function
//             ^ punctuation.separator.type
//              ^^^^^^^^^^^^^^^^^^^^^ meta.type
//               ^^^^^^^^^^^ meta.generic
//                ^ variable.parameter.generic
//                 ^ punctuation.separator.comma
//                  ^^^ variable.parameter.generic
//                     ^ keyword.operator.assignment
//                      ^^^ meta.string string.quoted.double
//                          ^^ meta.group
//                             ^^ keyword.declaration.function
//                                ^^ meta.mapping
//                                   ^^ keyword.declaration.function.arrow
//                                      ^^ meta.block
//                                         ^ keyword.operator.ternary
//                                           ^^^^ constant.language.null
//                                               ^ punctuation.terminator.statement
//                                                 ^^^^^^^^ comment.line.double-slash

const f = (x): ((y) => any) => 42;
//        ^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//        ^^^ meta.function.parameters
//         ^ meta.binding.name variable.parameter.function
//           ^ punctuation.separator.type
//            ^^^^^^^^^^^^^^ meta.type
//             ^^^^^^^^^^^^ meta.group
//             ^ punctuation.section.group.begin
//              ^^^ meta.group
//              ^ punctuation.section.group.begin
//               ^ variable.parameter
//                ^ punctuation.section.group.end
//                  ^^ keyword.declaration.function
//                     ^^^ support.type.any
//                        ^ punctuation.section.group.end
//                          ^^ keyword.declaration.function.arrow
//                             ^^ meta.block meta.number.integer.decimal
//                             ^^ constant.numeric.value
//                               ^ punctuation.terminator.statement

const f = (x): (y) => 42 => z;
//    ^ meta.binding.name entity.name.function
//    ^ variable.other.readwrite
//      ^ keyword.operator.assignment
//        ^^^^^^^^^^^^^^^^^^^ meta.function
//        ^ punctuation.section.group.begin
//         ^ meta.binding.name variable.parameter.function
//          ^ punctuation.section.group.end
//           ^ punctuation.separator.type
//            ^^^^^^^^^^^ meta.type
//             ^^^ meta.group
//             ^ punctuation.section.group.begin
//              ^ variable.parameter
//               ^ punctuation.section.group.end
//                 ^^ keyword.declaration.function
//                    ^^ meta.number.integer.decimal constant.numeric.value
//                       ^^ keyword.declaration.function.arrow
//                          ^ meta.block variable.other.readwrite
//                           ^ punctuation.terminator.statement

try {} catch (e: any) {}
//     ^^^^^^^^^^^^^^^^^ meta.catch
//     ^^^^^ keyword.control.exception.catch
//           ^^^^^^^^ meta.group
//            ^ variable.other.readwrite
//             ^ punctuation.separator.type
//              ^^^^ meta.type
//               ^^^ support.type.any
//                    ^^ meta.block

type T<in out U> = V;
//    ^^^^^^^^^^ meta.generic
//    ^ punctuation.definition.generic.begin
//     ^^ storage.modifier.variance
//        ^^^ storage.modifier.variance
//            ^ variable.parameter.generic
//             ^ punctuation.definition.generic.end

type T = Foo | ... 100 more ... | Bar;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-alias
//       ^^^ support.class
//           ^ keyword.operator.type.union
//             ^^^^^^^^^^^^^^^^ comment.other.ts
//                              ^ keyword.operator.type.union
//                                ^^^ support.class
//                                   ^ punctuation.terminator.statement.empty

    x as number < 3;
//  ^ variable.other.readwrite
//    ^^ keyword.operator.type
//       ^^^^^^ meta.type support.type.primitive.number
//              ^ keyword.operator.comparison
//                ^ meta.number.integer.decimal constant.numeric.value
//                 ^ punctuation.terminator.statement

    foo!!()
//  ^^^^^^^ meta.function-call
//     ^^ keyword.operator.type
//       ^^ meta.function-call.arguments

// instantiations

    new class extends Bar {};
//  ^^^ keyword.operator.word.new.js
//     ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.constructor.js
//      ^^^^^^^^^^^^^^^^^^^^ meta.class.js
//      ^^^^^ keyword.declaration.class.js
//            ^^^^^^^ storage.modifier.extends.js
//                    ^^^ entity.other.inherited-class.js
//                        ^^ meta.block.js
//                        ^ punctuation.section.block.begin.js
//                         ^ punctuation.section.block.end.js

    new class Foo extends Bar {};
//  ^^^ keyword.operator.word.new.js
//     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.constructor.js
//      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.js
//      ^^^^^ keyword.declaration.class.js
//            ^^^ entity.name.class.js
//                ^^^^^^^ storage.modifier.extends.js
//                        ^^^ entity.other.inherited-class.js
//                            ^^ meta.block.js
//                            ^ punctuation.section.block.begin.js
//                             ^ punctuation.section.block.end.js

    new class implements IBar {};
//  ^^^ keyword.operator.word.new.js
//     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.constructor.js
//      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.js
//      ^^^^^ keyword.declaration.class.js
//            ^^^^^^^^^^ storage.modifier.implements.js
//                       ^^^^ entity.other.inherited-class.js
//                            ^^ meta.block.js
//                            ^ punctuation.section.block.begin.js
//                             ^ punctuation.section.block.end.js

    new class Foo implements IBar {};
//  ^^^ keyword.operator.word.new.js
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.constructor.js
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.js
//      ^^^^^ keyword.declaration.class.js
//            ^^^ entity.name.class.js
//                ^^^^^^^^^^ storage.modifier.implements.js
//                           ^^^^ entity.other.inherited-class.js
//                                ^^ meta.block.js
//                                ^ punctuation.section.block.begin.js
//                                 ^ punctuation.section.block.end.js
//                                  ^ punctuation.terminator.statement.js
