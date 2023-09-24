// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

let inferred_closure = |i, j: u32| i + 1;
//  ^^^^^^^^^^^^^^^^ entity.name.function
//                     ^^^^^^^^^^^^^^^^^ meta.function.closure
//                     ^^^^^^^^^^^ meta.function.parameters
//                     ^ punctuation.section.parameters.begin
//                      ^ variable.parameter
//                       ^ punctuation.separator
//                         ^ variable.parameter
//                          ^ punctuation.separator
//                            ^^^ storage.type
//                               ^ punctuation.section.parameters.end
let closure = || -> i32 { | | 1 + 2 };
//  ^^^^^^^ entity.name.function
//            ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure
//            ^^ meta.function.parameters
//            ^ punctuation.section.parameters.begin
//             ^ punctuation.section.parameters.end
//                  ^^^ storage.type
//                      ^^^^^^^^^^^^^ meta.block
//                      ^ meta.block punctuation.section.block.begin
//                            ^ constant.numeric.integer.decimal
//                                ^ constant.numeric.integer.decimal
//                                  ^ meta.block punctuation.section.block.end

// Make sure "or" is not confused with closure.
let c = a | b;
//        ^ keyword.operator.bitwise

call_func(|c| 1 + 2 + c);
//        ^^^^^^^^^^^^^ meta.function.closure
//        ^^^ meta.function.parameters

call_func_2nd_param(0, |c| 1 + 2 + c, 3);
//                     ^^^^^^^^^^^^^ meta.function.closure
//                                  ^^^ - meta.function.closure
//                     ^^^ meta.function.parameters

fn lambdas() {
    let c = |foo,
//          ^ meta.function.closure meta.function.parameters punctuation.section.parameters.begin
//           ^^^ meta.function.parameters variable.parameter
             bar| {};
//           ^^^ meta.function.parameters variable.parameter
//              ^ meta.function.closure meta.function.parameters punctuation.section.parameters.end
    let c = |foo,  // weird, but should work
//          ^ meta.function.closure meta.function.parameters punctuation.section.parameters.begin
//           ^^^ meta.function.parameters variable.parameter
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
             bar| {};
//           ^^^ meta.function.parameters variable.parameter
//              ^ meta.function.closure meta.function.parameters punctuation.section.parameters.end
}


let x = |self, _, _foo, foo: 'static str| {};
//      ^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^^^^ variable.parameter
//                ^^^^ variable.parameter
//                      ^^^ variable.parameter
//                         ^ punctuation.separator
//                           ^^^^^^^ storage.modifier.lifetime
//                                   ^^^ storage.type
let x = |&a, &mut b, ref c, mut d, ref mut e| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^ keyword.operator
//        ^ variable.parameter
//           ^ keyword.operator
//            ^^^ storage.modifier
//                ^ variable.parameter
//                   ^^^ storage.modifier
//                       ^ variable.parameter
//                          ^^^ storage.modifier
//                              ^ variable.parameter
//                                 ^^^ storage.modifier
//                                     ^^^ storage.modifier
//                                         ^ variable.parameter
let x = |foo @ Some{}| {};
//      ^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^^^ variable.parameter
//           ^ keyword.operator
//                 ^ meta.block punctuation.section.block.begin
//                  ^ meta.block punctuation.section.block.end
let x = |path :: to :: Struct{a, b, ..},
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//                           ^^^^^^^^^^ meta.block
//                           ^ punctuation.section.block.begin
//                            ^ variable.parameter
//                               ^ variable.parameter
//                                  ^^ keyword.operator
//                                    ^ punctuation.section.block.end
    self::Struct{c}, super::Struct{d}| {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//  ^^^^ keyword.other
//              ^^^ meta.block
//               ^ variable.parameter
//                   ^^^^^ keyword.other
//                                ^^^ meta.block
//                                 ^ variable.parameter
let x = |Struct{ref mut a}| {};
//      ^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//             ^^^^^^^^^^^ meta.block
//              ^^^ storage.modifier
//                  ^^^ storage.modifier
//                      ^ variable.parameter
let x = |Struct{0: (x, y), 1: z}| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//             ^^^^^^^^^^^^^^^^^ meta.block
//              ^ constant.numeric.integer.decimal
//               ^ punctuation.separator
//                 ^^^^^^ meta.group
//                 ^ punctuation.section.group.begin
//                  ^ variable.parameter
//                     ^ variable.parameter
//                      ^ punctuation.section.group.end
//                         ^ constant.numeric.integer.decimal
//                          ^ punctuation.separator
//                            ^ variable.parameter
let x = |Struct{field: (x, y), field2: z}| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
//                     ^^^^^^ meta.group
//                      ^ variable.parameter
//                         ^ variable.parameter
//                                     ^ variable.parameter
let x = |path::to::TupleStruct(x, (y, z), ..)| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//                            ^^^^^^^^^^^^^^^ meta.group
//                             ^ variable.parameter
//                                ^^^^^^ meta.group meta.group
//                                 ^ variable.parameter
//                                    ^ variable.parameter
//                                        ^^ keyword.operator
let x = |(x, (y, z)), (Foo{&mut i, ..}, foo @ Some{})| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^^^^^^^^^^^ meta.group
//        ^ variable.parameter
//           ^^^^^^ meta.group meta.group
//            ^ variable.parameter
//               ^ meta.group variable.parameter
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                        ^^^^^^^^^^^^ meta.block
//                         ^ keyword.operator
//                          ^^^ storage.modifier
//                              ^ variable.parameter
//                                 ^^ keyword.operator
//                                      ^^^ variable.parameter
//                                          ^ keyword.operator
let x = |[ref mut a, (x, y)]| {};
//      ^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^^^^^^^^^^^^^^^^^^^ meta.brackets
//       ^ punctuation.section.brackets.begin
//        ^^^ storage.modifier
//            ^^^ storage.modifier
//                ^ variable.parameter
//                   ^^^^^^ meta.group
//                    ^ variable.parameter
//                       ^ variable.parameter
let x = |a: i32, b: Foo, c: Option<i32>, d: extern "C" fn (), e: *const u8| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^ variable.parameter
//          ^^^ storage.type
//               ^ variable.parameter
//                       ^ variable.parameter
//                          ^^^^^^ support.type
//                                 ^^^ meta.generic storage.type
//                                       ^ variable.parameter
//                                          ^^^^^^ keyword.other
//                                                 ^^^ string.quoted.double
//                                                     ^^ storage.type.function
//                                                        ^^ meta.group
//                                                            ^ variable.parameter
//                                                               ^^^^^^ storage.modifier
//                                                                      ^^ storage.type
let x = |/*comment*/(/*c*/a, [b/*c*/], S{/*c*/f: c})| {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.closure meta.function.parameters
//       ^^^^^^^^^^^ comment.block
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                   ^^^^^ comment.block
//                        ^ variable.parameter
//                           ^^^^^^^^ meta.brackets
//                            ^ variable.parameter
//                             ^^^^^ comment.block
//                                      ^^^^^^^^^^^ meta.block
//                                       ^^^^^ comment.block
//                                               ^ variable.parameter

 let f = |(x, y): (u32, &mut u32)| { x + y };
 //      ^ punctuation.section.parameters.begin
 //       ^^^^^^ meta.group
 //        ^ variable.parameter
 //         ^ punctuation.separator
 //           ^ variable.parameter
 //            ^ punctuation.section.group.end
 //             ^ punctuation.separator
 //               ^ punctuation.section.group.begin
 //                ^^^ storage.type
 //                   ^ punctuation.separator
 //                     ^ keyword.operator
 //                      ^^^ storage.modifier
 //                          ^^^ storage.type
 //                             ^ punctuation.section.group.end
 //                              ^ punctuation.section.parameters.end
