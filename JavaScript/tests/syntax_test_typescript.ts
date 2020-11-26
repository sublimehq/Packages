// SYNTAX TEST "Packages/JavaScript/TypeScript.sublime-syntax"

/* Import/Export */

    import type T from 'somewhere';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
//  ^^^^^^ keyword.control.import-export
//         ^^^^ keyword.control.import-export
//              ^ variable.other.readwrite
//                ^^^^ keyword.control.import-export
//                     ^^^^^^^^^^^ meta.string string.quoted.single

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

    export type T = any;
//  ^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^ meta.type-alias
//                     ^ punctuation.terminator.statement.empty - meta.export

    export interface Foo {}
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^^^ meta.interface
//         ^^^^^^^^^ storage.type
//                   ^^^ entity.name.interface
//                       ^^ meta.block

    export namespace Foo {}
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^^^ meta.namespace
//         ^^^^^^^^^ storage.type
//                   ^^^ entity.name.namespace
//                       ^^ meta.block

/* Declarations */

    interface Foo {
//  ^^^^^^^^^^^^^^^^ meta.interface
//  ^^^^^^^^^ storage.type
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
    }
//  ^ meta.block punctuation.section.block.end

    interface Foo < T > extends Bar < T > {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface
//  ^^^^^^^^^ storage.type
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

    enum Foo {
//  ^^^^^^^^^^^ meta.enum
//  ^^^^ storage.type
//       ^^^ entity.name.enum
//           ^ punctuation.section.block.begin
        x,
//      ^ variable.other.readwrite
//       ^ punctuation.separator.comma
        y = 2,
//      ^ variable.other.readwrite
//        ^ keyword.operator.assignment
//          ^ meta.number.integer.decimal.js constant.numeric.value.js
//           ^ punctuation.separator.comma

        'FOO'
//      ^^^^^ meta.string string.quoted.single
        "FOO"
//      ^^^^^ meta.string string.quoted.double
    }
//  ^ meta.enum meta.block punctuation.section.block.end

    const enum Foo {}
//  ^^^^^ storage.type
//        ^^^^^^^^^^^ meta.enum
//        ^^^^ storage.type
//             ^^^ entity.name.enum

    declare enum Foo {}
//  ^^^^^^^ storage.type
//          ^^^^^^^^^^^ meta.enum
//          ^^^^ storage.type
//               ^^^ entity.name.enum

    type x < T > = any;
//  ^^^^^^^^^^^^^^^^^^ meta.type-alias
//  ^^^^ storage.type
//       ^ entity.name.type
//         ^^^^^ meta.generic
//         ^ punctuation.definition.generic.begin
//           ^ variable.parameter.generic
//             ^ punctuation.definition.generic.end
//               ^ keyword.operator.assignment
//                 ^^^ meta.type-alias support.type.any

    type x < T = Foo > = any;
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-alias
//  ^^^^ storage.type
//       ^ entity.name.type
//         ^^^^^^^^^^^ meta.generic
//         ^ punctuation.definition.generic.begin
//           ^ variable.parameter.generic
//             ^ keyword.operator.assignment
//               ^^^ support.class
//                   ^ punctuation.definition.generic.end
//                     ^ keyword.operator.assignment
//                       ^^^ meta.type-alias support.type.any

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

        private static foo;
//      ^^^^^^^ storage.modifier
//              ^^^^^^ storage.modifier
//                     ^^^ variable.other.readwrite

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
    }

    abstract class Foo {
//  ^^^^^^^^ storage.modifier
//           ^^^^^ meta.class storage.type.class

        abstract foo;
//      ^^^^^^^^ storage.modifier
//               ^^^ variable.other.readwrite

    }

    class Foo < T > extends Bar implements Baz, Xyzzy { }
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//  ^^^^^ storage.type.class
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
//  ^^^^^^^^^ storage.type
//            ^^^ entity.name.namespace
//                ^ meta.block punctuation.section.block.begin
    }
//  ^ meta.block punctuation.section.block.end

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
//  ^^^^^ storage.type
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

x as const;
//^^ keyword.operator.type
//   ^^^^^ storage.modifier.const

    foo!.bar;
//     ^^ punctuation.accessor

    x ! ;
//  ^ variable.other.readwrite
//    ^ keyword.operator.type
//      ^ punctuation.terminator.statement

// This is a type assertion that is incompatible with JSX
let strLength: number = (<string>someValue).length; // </string>
//                       ^^^^^^^^ meta.assertion - meta.tag
//                                                     ^^^^^^^^^ comment - meta.tag

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
//           ^ meta.number.integer.decimal.js constant.numeric.value.js
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
//  ^^ meta.sequence punctuation.section.brackets - meta.type

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
//     ^ punctuation.section.brackets.begin
//       ^^^ support.type.any
//           ^ punctuation.separator.comma
//             ^^^ support.type.any
//                 ^ storage.modifier.optional
//                   ^ punctuation.separator.comma
//                     ^^^ keyword.operator.spread
//                         ^^^ support.type.any
//                             ^^ storage.modifier.array
//                                ^ punctuation.section.brackets.end

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

let x: 42;
//     ^^ meta.number.integer.decimal.js constant.numeric.value.js

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
//        ^ punctuation.separator.accessor
//         ^^^ support.class

let x: {
//     ^ meta.type punctuation.section.block.begin

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
    
    }
//  ^ meta.type punctuation.section.block.end

let x: ( foo ? : any ) => bar;
//     ^^^^^^^^^^^^^^^^^^^^^^ meta.type
//     ^^^^^^^^^^^^^^^ meta.group
//     ^ punctuation.section.group.begin
//       ^^^ variable.other.readwrite - support.class
//           ^ storage.modifier.optional
//             ^ punctuation.separator.type
//               ^^^ support.type.any
//                   ^ punctuation.section.group.end
//                     ^^ keyword.declaration.function
//                        ^^^ support.class

let x: () => T
    U
//  ^ variable.other.constant - meta.type

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
//                      ^ punctuation.separator.accessor
//                        ^^^ support.class

    foo < bar > ();
//  ^^^ variable.function
//      ^^^^^^^ meta.generic
//      ^ punctuation.definition.generic.begin
//        ^^^ support.class
//            ^ punctuation.definition.generic.end
//              ^^ meta.group

    foo < bar
//  ^^^ variable.other.readwrite
//      ^ keyword.operator.logical
//        ^^^ variable.other.readwrite
    ;

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

if (a < b || c < d) {}
//    ^ keyword.operator.logical
//        ^^ keyword.operator.logical
//             ^ keyword.operator.logical

    a != b;
//    ^^ keyword.operator.comparison
