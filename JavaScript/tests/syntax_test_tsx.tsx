// SYNTAX TEST "Packages/JavaScript/TSX.sublime-syntax"

    <foo />;
//  ^^^^^^^ meta.jsx meta.tag
//  ^ punctuation.definition.tag.begin
//   ^^^ meta.tag.name entity.name.tag
//       ^^ punctuation.definition.tag.end

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

let x : T.U<V>;
//      ^^^^^^ meta.type
//      ^ support.class
//       ^ punctuation.accessor
//        ^ support.class
//         ^^^ meta.generic
//          ^ support.class

// This is invalid TSX as the TypeScript type assertion is parsed as a JSX tag
let strLength: number = (<string>someValue).length; // </string> );
//                       ^^^^^^^^ meta.tag - meta.assertion
//                                                     ^^^^^^^^^ meta.tag - comment

var foo = 1 << 0;
//          ^^ keyword.operator.bitwise

if (a < b || c <= d) {}
//    ^ keyword.operator.comparison
//        ^^ keyword.operator.logical
//             ^^ keyword.operator.comparison

    x ? (y) : <T foo={``}> => z</T>;
//       ^ variable.other.readwrite - variable.parameter
//          ^ keyword.operator.ternary
//            ^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//                                 ^ punctuation.terminator.statement

    <T>() => {};</T>;
//  ^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^ meta.tag
//              ^^ meta.tag

    <T,>(): U => {}; // </T>;
//  ^^^^^^^^^^^^^^^ meta.function
//  ^^^^ meta.generic
//  ^ punctuation.definition.generic.begin
//   ^ variable.parameter.generic
//    ^ punctuation.separator.comma
//     ^ punctuation.definition.generic.end
//      ^^ meta.function.parameters
//        ^ punctuation.separator.type
//          ^ support.class
//            ^^ keyword.declaration.function.arrow

    async <T,>(): U => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^ keyword.declaration.async
//        ^^^^ meta.generic
//        ^ punctuation.definition.generic.begin
//         ^ variable.parameter.generic
//          ^ punctuation.separator.comma
//           ^ punctuation.definition.generic.end
//            ^^ meta.function.parameters
//              ^ punctuation.separator.type
//                ^ support.class
//                  ^^ keyword.declaration.function.arrow


    <T extends U>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^^^^^^^^^ meta.generic
//   ^ variable.parameter.generic
//     ^^^^^^^ storage.modifier.extends
//             ^ support.class
//               ^^ meta.function.parameters
//                  ^^ keyword.declaration.function.arrow


    async <T extends U>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^ keyword.declaration.async
//        ^^^^^^^^^^^^^ meta.generic
//         ^ variable.parameter.generic
//           ^^^^^^^ storage.modifier.extends
//                   ^ support.class
//                     ^^ meta.function.parameters
//                        ^^ keyword.declaration.function.arrow

    <T extends>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^^^ meta.tag
//  ^ punctuation.definition.tag.begin
//   ^ meta.tag.name entity.name.tag
//     ^^^^^^^ meta.tag.attributes entity.other.attribute-name
//            ^ punctuation.definition.tag.end

    <T extends {}>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^^^^^^^^^^ meta.function meta.generic
//   ^ variable.parameter.generic
//     ^^^^^^^ storage.modifier.extends
//             ^^ meta.function meta.generic meta.block

    <T {...}>() => {};</T>;
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^ meta.tag
//   ^ meta.tag.name entity.name.tag
//     ^^^^^ meta.tag.attributes meta.interpolation
