// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

fn my_func(x: i32)
// <- keyword.declaration.function
// ^^^^^^^ entity.name.function
//        ^^^^^^^^ meta.function.parameters
//        ^ punctuation.section.parameters.begin
//         ^ variable.parameter
//          ^ punctuation.separator
//               ^ punctuation.section.parameters.end
{
// <-  meta.function meta.block punctuation.section.block.begin

}
// <-  meta.function meta.block punctuation.section.block.end

fn foo<A>(i: u32, b: i64) -> u32 {
// <- keyword.declaration.function
// ^^^ entity.name.function
//    ^ punctuation.definition.generic.begin
//      ^ punctuation.definition.generic.end
//       ^^^^^^^^^^^^^^^^ meta.function.parameters
//                           ^^^ storage.type
//                               ^ meta.block punctuation.section.block.begin

}
// <- meta.block punctuation.section.block.end


fn my_other_func(e: OperatingSystem) -> &'a Type {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.rust
// ^^^^^^^^^^^^^ entity.name.function
//              ^^^^^^^^^^^^^^^^^^^^ meta.function.rust meta.function.parameters.rust
//              ^ punctuation.section.parameters.begin.rust
//               ^ variable.parameter.rust
//                ^ punctuation.separator.rust
//                  ^^^^^^^^^^^^^^^ storage.type.rust
//                                 ^ punctuation.section.parameters.end.rust
//                                   ^^^^^^^^^^ meta.function.return-type.rust
//                                   ^^ punctuation.separator.rust
//                                      ^ keyword.operator.rust
//                                       ^^ storage.modifier.lifetime.rust
//                                          ^^^^ storage.type.rust
//                                               ^ meta.block.rust punctuation.section.block.begin.rust
}


pub fn pub_function() -> bool
// <- storage.modifier
//  ^^ keyword.declaration.function
//     ^^^^^^^^^^^^ entity.name.function
{
// <- meta.function
    return true
//  ^^^^^^ meta.function meta.block keyword.control
}

pub unsafe extern "C" fn __sync_synchronize() { }
// <- storage.modifier
//  ^^^^^^ storage.modifier
//         ^^^^^^ keyword.other
//                ^^^ string.quoted.double
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//                    ^^ keyword.declaration.function
//                       ^^^^^^^^^^^^^^^^^^ entity.name.function
//                                         ^ meta.function.parameters punctuation.section.parameters.begin
//                                          ^ meta.function.parameters punctuation.section.parameters.end

let f: extern "C" fn () = mem::transmute(0xffff0fa0u32);
//     ^^^^^^ keyword.other
//            ^^^ string.quoted.double
//                ^^ storage.type.function
//                   ^^ meta.group
//                      ^ keyword.operator.assignment
//                                       ^^^^^^^^^^ meta.group constant.numeric.integer.hexadecimal
//                                                 ^^^ meta.group storage.type.numeric

// Raw pointer in a parameter.
fn f(a: *const u8, b: *mut i8) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
//       ^^^^^ storage.modifier
//                     ^^^ storage.modifier

// Test irrefutable patterns in params.  Most of these tests are in `syntax_test_closure.rs`.
fn f(self,
//  ^^^^^^^ meta.function meta.function.parameters
//   ^^^^ variable.parameter
     (a, b): Tuple,
//   ^^^^^^ meta.group
//   ^ punctuation.section.group.begin
//    ^ variable.parameter
//       ^ variable.parameter
//        ^ punctuation.section.group.end
//         ^ punctuation.separator
     Struct{field: c}: Struct,
//         ^^^^^^^^^^ meta.block
//         ^ punctuation.section.block.begin
//                 ^ variable.parameter
//                  ^ punctuation.section.block.end
//                   ^ punctuation.separator
     TupleStruct{0: d}: TupleStruct,
//              ^^^^^^ meta.block
//              ^ punctuation.section.block.begin
//               ^ constant.numeric.integer.decimal
//                  ^ variable.parameter
//                   ^ punctuation.section.block.end
//                    ^ punctuation.separator
     [e, f]: Slice)
//   ^^^^^^ meta.brackets
//   ^ punctuation.section.brackets.begin
//    ^ variable.parameter
//       ^ variable.parameter
//        ^ punctuation.section.brackets.end
//         ^ punctuation.separator
{}

const fn f() {}
// <- storage.modifier
//    ^^ meta.function keyword.declaration.function
//       ^ meta.function entity.name.function

const unsafe fn f() {}
// <- storage.modifier
//    ^^^^^^ storage.modifier
//           ^^ meta.function keyword.declaration.function
//              ^ meta.function entity.name.function

const extern "C" fn f() {}
// <- storage.modifier
//    ^^^^^^ keyword.other
//           ^^^ string.quoted.double
//               ^^ meta.function keyword.declaration.function
//                  ^ meta.function entity.name.function

fn foo(&'a self) {}
//     ^^^^^^^^ meta.function meta.function.parameters
//     ^ keyword.operator
//      ^^ storage.modifier.lifetime
//         ^^^^ variable.parameter

fn sum((x, y): (i32, i32)) -> i32 {
//     ^^^^^^ meta.group
//     ^ punctuation.section.group.begin
//      ^ variable.parameter
//       ^ punctuation.separator
//         ^ variable.parameter
//          ^ punctuation.section.group.end
//           ^ punctuation.separator
//             ^ punctuation.section.group.begin
//              ^^^ storage.type
//                 ^ punctuation.separator
//                   ^^^ storage.type
//                      ^ punctuation.section.group.end
}
