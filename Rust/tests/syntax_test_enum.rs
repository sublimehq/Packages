// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

enum OperatingSystem
// <- keyword.declaration.enum
// ^^^^^^^^^^^^^^^^^ meta.enum
//   ^^^^^^^^^^^^^^^ entity.name.enum
{
// <- meta.block meta.enum punctuation.section.block.begin
    Osx,
//  ^^^ meta.enum storage.type.rust
    Windows,
    Linux,
    Bsd(String),
    //  ^^^^^^ support.type
    Info { field: i32, value: str }
    //   ^ punctuation.section.block.begin
    //            ^^^ storage.type
    //                        ^^^ storage.type
    //                            ^ meta.block punctuation.section.block.end
}
// <- meta.block meta.enum punctuation.section.block.end

let q = Message::Quit;
//      ^^^^^^^^^^^^^ meta.path
//      ^^^^^^^ storage.type.rust
//             ^^ punctuation.accessor
//               ^^^^ storage.type.rust
//                   ^ punctuation.terminator
let w = Message::WriteString("Some string".to_string());
//      ^^^^^^^^^^^^^^^^^^^^ meta.path
//             ^^ punctuation.accessor
//               ^^^^^^^^^^^ storage.type.rust
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                           ^^^^^^^^^^^^^ string.quoted.double
//                                         ^^^^^^^^^ variable.function
let m = Message::Move { x: 50, y: 200 };
//      ^^^^^^^^^^^^^ meta.path
//             ^^ punctuation.accessor
//                    ^^^^^^^^^^^^^^^^^ meta.block
//                         ^^ constant.numeric.integer.decimal
//                                ^^^ constant.numeric.integer.decimal

enum Discriminant {
    A = 1,
//  ^ meta.enum entity.name.constant
//      ^ meta.enum constant.numeric.integer.decimal
    V1 = 0xABC,
//  ^^ meta.enum entity.name.constant
//       ^^^^^ meta.enum constant.numeric.integer.hexadecimal
    V2,
//  ^^ meta.enum entity.name.constant
    SomeValue = 123,
//  ^^^^^^^^^ meta.enum storage.type.rust
//              ^^^ meta.enum constant.numeric.integer.decimal
    V3 = (1<<4),
//  ^^ meta.enum entity.name.constant
//       ^^^^^^ meta.enum meta.group
//        ^ constant.numeric.integer.decimal
//         ^^ keyword.operator.bitwise
//           ^ constant.numeric.integer.decimal
    lowercase,
//  ^^^^^^^^^^^ meta.enum
}

// Enum type parameters.
enum E<'asdf> {}
//    ^^^^^^^ meta.enum meta.generic
//     ^^^^^storage.modifier.lifetime
enum C<T> where T: Copy {}
//    ^^^ meta.enum meta.generic
//        ^^^^^^^^^^^^^ meta.enum meta.where
//        ^^^^^ keyword.other
//                 ^^^^ support.type
