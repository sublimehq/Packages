// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"
// This file is for various expressions that don't fit into other more
// specific categories.

let big_n =
// <- keyword.declaration.variable.rust
 // <- keyword.declaration.variable.rust
//^ keyword.declaration.variable.rust
//        ^ keyword.operator.assignment
    if n < 10 && n > -10 {
//       ^ keyword.operator.comparison
//            ^^ keyword.operator.logical
//                 ^ keyword.operator.comparison
//                   ^ keyword.operator.arithmetic
//                    ^^ constant.numeric.integer.decimal
//                       ^ meta.block punctuation.section.block.begin
        10 * n
//         ^ meta.block keyword.operator.arithmetic
    } else {
//  ^ meta.block punctuation.section.block.end
//         ^ meta.block punctuation.section.block.begin
        n / 2
//        ^ meta.block keyword.operator.arithmetic
    };
//  ^ meta.block punctuation.section.block.end

let tuple = (1.0, 0i32, "Hello");
//          ^^^^^^^^^^^^^^^^^^^^ meta.group
//          ^ punctuation.section.group.begin
//           ^^^ constant.numeric.float
//                ^ constant.numeric.integer.decimal
//                 ^^^ storage.type
//                      ^^^^^^^ string.quoted.double
//                             ^ punctuation.section.group.end

// Tuple access.
let x = tuple.1;
//            ^ constant.numeric.integer.decimal

// Array access.
let x = arr[1];
//         ^^^ meta.group
//         ^ punctuation.section.group.begin
//          ^ constant.numeric.integer.decimal
//           ^ punctuation.section.group.end

// Array expression.
let x = [1; 2];
//      ^^^^^^ meta.group
//      ^ punctuation.section.group.begin
//        ^ punctuation.separator
//          ^ constant.numeric.integer.decimal
//            ^ punctuation.terminator
let x = [1; SOME_CONST];
//          ^^^^^^^^^^ constant.other
let _: Box<[[bool; (FOO + 1) / 2]; FOO * 3 % 12 - 1]>;
//   ^ punctuation.separator
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//        ^ punctuation.definition.generic.begin
//         ^^ punctuation.section.group.begin
//           ^^^^ storage.type
//               ^ punctuation.separator
//                 ^ meta.group punctuation.section.group.begin
//                  ^^^ variable.other.constant
//                      ^ keyword.operator.arithmetic
//                        ^ constant.numeric.integer.decimal
//                         ^ punctuation.section.group.end
//                           ^ keyword.operator.arithmetic
//                             ^ constant.numeric.integer.decimal
//                              ^ punctuation.section.group.end
//                               ^ punctuation.separator
//                                 ^^^ variable.other.constant
//                                     ^ keyword.operator.arithmetic
//                                       ^ constant.numeric.integer.decimal
//                                         ^ keyword.operator.arithmetic
//                                           ^^ constant.numeric.integer.decimal
//                                              ^ keyword.operator.arithmetic
//                                                ^ constant.numeric.integer.decimal
//                                                 ^ punctuation.section.group.end
//                                                  ^ punctuation.definition.generic.end
//                                                   ^ punctuation.terminator
let _: Box<[[u8; aa::COUNT - 1]; 5]>;
//        ^ punctuation.definition.generic.begin
//         ^ punctuation.section.group.begin
//          ^ punctuation.section.group.begin
//           ^^ storage.type
//             ^ punctuation.separator
//               ^^ variable.other.constant
//                 ^^ punctuation.accessor.double-colon
//                   ^^^^^ variable.other.constant
//                         ^ keyword.operator.arithmetic
//                           ^ constant.numeric.integer.decimal
//                            ^ punctuation.section.group.end
//                             ^ punctuation.separator
//                               ^ constant.numeric.integer.decimal
//                                ^ punctuation.section.group.end
//                                 ^ punctuation.definition.generic.end
//                                  ^ punctuation.terminator

// Borrow expression.
let xsl = &xs;
//        ^ keyword.operator
let a = &&  10;
//      ^^ keyword.operator.logical
let a = & & 10;
//      ^ keyword.operator.bitwise
//        ^ keyword.operator.bitwise
let y = &mut 9;
//      ^ keyword.operator
//       ^^^ storage.modifier

// Dereference.
assert_eq!(*x, 7);
//         ^ meta.group keyword.operator.arithmetic
   *y = 11;
// ^ keyword.operator.arithmetic

// Block expression.
let z = {
//      ^ meta.block punctuation.section.block.begin
    2 * 5
//  ^ constant.numeric.integer.decimal
//    ^ keyword.operator.arithmetic
//      ^ constant.numeric.integer.decimal
};
// <- meta.block punctuation.section.block.end

// Various operators.
let x = !6;
//      ^ keyword.operator.logical
//       ^ constant.numeric.integer.decimal
let a = 1 + 2 - 3 * 4 / 6 % 7 & 8 | 9 ^ a << b >> c;
//        ^ keyword.operator.arithmetic
//            ^ keyword.operator.arithmetic
//                ^ keyword.operator.arithmetic
//                    ^ keyword.operator.arithmetic
//                        ^ keyword.operator.arithmetic
//                            ^ keyword.operator.bitwise
//                                ^ keyword.operator.bitwise
//                                    ^ keyword.operator.bitwise
//                                        ^^ keyword.operator.bitwise
//                                             ^^ keyword.operator.bitwise
 a == b != c > d < e >= f <= g
// ^^ keyword.operator.comparison
//      ^^ keyword.operator.comparison
//           ^ keyword.operator.comparison
//               ^ keyword.operator.comparison
//                   ^^ keyword.operator.comparison
//                        ^^ keyword.operator.comparison
 a || b && c
// ^^ keyword.operator.logical
//      ^^ keyword.operator.logical
a += b;
//^^ keyword.operator.assignment
a -= b;
//^^ keyword.operator.assignment
a *= b;
//^^ keyword.operator.assignment
a /= b;
//^^ keyword.operator.assignment
a %= b;
//^^ keyword.operator.assignment
a &= b;
//^^ keyword.operator.assignment
a |= b;
//^^ keyword.operator.assignment
a ^= b;
//^^ keyword.operator.assignment
a <<= b;
//^^^ keyword.operator.assignment
a >>= b;
//^^^ keyword.operator.assignment
