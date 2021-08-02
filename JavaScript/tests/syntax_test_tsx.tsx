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
