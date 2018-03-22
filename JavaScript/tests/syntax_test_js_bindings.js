// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

const x = value;
//    ^ meta.binding.name variable.other.readwrite


const [ x, y, ...z, ] = value;
//    ^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//      ^ meta.binding.name variable.other.readwrite
//       ^ punctuation.separator.comma
//         ^ meta.binding.name variable.other.readwrite
//          ^ punctuation.separator.comma
//            ^^^ keyword.operator.spread
//               ^ meta.binding.name variable.other.readwrite
//                ^ punctuation.separator.comma

const [ x, [a, b], z] = value;
//    ^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//         ^^^^^^ meta.binding.destructuring.sequence meta.binding.destructuring.sequence
//          ^ meta.binding.name variable.other.readwrite
//             ^ meta.binding.name variable.other.readwrite

const [ x = 42, y = [a, b, c] ] = value;
//    ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//        ^ keyword.operator.assignment
//          ^^ meta.binding.destructuring.sequence.js constant.numeric.decimal.js
//                ^ keyword.operator.assignment
//                  ^^^^^^^^^ meta.sequence
//                   ^ variable.other.readwrite - meta.binding.name

const { a, b: c, ...d } = value;
//    ^^^^^^^^^^^^^^^^^ meta.binding.destructuring.mapping
//      ^ meta.object-literal.key meta.binding.name variable.other.readwrite
//       ^ punctuation.separator.comma
//         ^ meta.object-literal.key - variable
//          ^ punctuation.separator.key-value
//               ^^^ keyword.operator.spread
//                  ^ meta.binding.name variable.other.readwrite

const x;
//    ^ meta.binding.name variable.other.readwrite


function f ([ x, y, ...z, ]) {}
//          ^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//            ^ meta.binding.name variable.parameter.function
//             ^ punctuation.separator.parameter
//               ^ meta.binding.name variable.parameter.function
//                ^ punctuation.separator.parameter
//                  ^^^ keyword.operator.spread
//                     ^ meta.binding.name variable.parameter.function
//                      ^ punctuation.separator.parameter

function f ([ x, [a, b], z]) {}
//          ^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//               ^^^^^^ meta.binding.destructuring.sequence meta.binding.destructuring.sequence
//                ^ meta.binding.name variable.parameter.function
//                   ^ meta.binding.name variable.parameter.function

function f ([ x = 42, y = [a, b, c] ]) {}
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//              ^ keyword.operator.assignment
//                ^^ meta.binding.destructuring.sequence.js constant.numeric.decimal.js
//                      ^ keyword.operator.assignment
//                        ^^^^^^^^^ meta.sequence
//                         ^ variable.other.readwrite - meta.binding.name

function f ({ a, b: c, ...d }) {}
//          ^^^^^^^^^^^^^^^^^ meta.binding.destructuring.mapping
//            ^ meta.object-literal.key meta.binding.name variable.parameter.function
//             ^ punctuation.separator.parameter
//               ^ meta.object-literal.key - variable
//                ^ punctuation.separator.key-value
//                     ^^^ keyword.operator.spread
//                        ^ meta.binding.name variable.parameter.function

function f (a, ...rest) {}
//          ^ meta.binding.name variable.parameter.function
//             ^^^ keyword.operator.spread
//                ^^^^ variable.parameter.function

let f = ([ x, y, ...z, ]) => {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//       ^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//         ^ meta.binding.name variable.parameter.function
//          ^ punctuation.separator.parameter
//            ^ meta.binding.name variable.parameter.function
//             ^ punctuation.separator.parameter
//               ^^^ keyword.operator.spread
//                  ^ meta.binding.name variable.parameter.function
//                   ^ punctuation.separator.parameter

let f = ([ x, [a, b], z]) => {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^ variable.other.readwrite entity.name.function
//       ^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//            ^^^^^^ meta.binding.destructuring.sequence meta.binding.destructuring.sequence
//             ^ meta.binding.name variable.parameter.function
//                ^ meta.binding.name variable.parameter.function

let f = ([ x = 42, y = [a, b, c] ]) => {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^ variable.other.readwrite entity.name.function
//       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.binding.destructuring.sequence
//           ^ keyword.operator.assignment
//             ^^ meta.binding.destructuring.sequence.js constant.numeric.decimal.js
//                   ^ keyword.operator.assignment
//                     ^^^^^^^^^ meta.sequence
//                      ^ variable.other.readwrite - meta.binding.name

let f = ({ a, b: c, ...d }) => {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^ variable.other.readwrite entity.name.function
//       ^^^^^^^^^^^^^^^^^ meta.binding.destructuring.mapping
//         ^ meta.object-literal.key meta.binding.name variable.parameter.function
//          ^ punctuation.separator.parameter
//            ^ meta.object-literal.key - variable
//             ^ punctuation.separator.key-value
//                  ^^^ keyword.operator.spread
//                     ^ meta.binding.name variable.parameter.function

let f = (a, ...rest) => {};
//  ^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^ variable.other.readwrite entity.name.function
//       ^ meta.binding.name variable.parameter.function
//          ^^^ keyword.operator.spread
//             ^^^^ meta.binding.name variable.parameter.function
