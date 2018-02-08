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
//         ^ meta.object-literal.key - variable.other.readwrite
//          ^ punctuation.separator.key-value
//               ^^^ keyword.operator.spread
//                  ^ meta.binding.name variable.other.readwrite
