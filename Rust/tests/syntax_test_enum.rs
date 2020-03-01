// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

enum OperatingSystem
// <- storage.type.enum
// ^^^^^^^^^^^^^^^^^ meta.enum
//   ^^^^^^^^^^^^^^^ entity.name.enum
{
// <- meta.block meta.enum punctuation.section.block.begin
    Osx,
//  ^^^ meta.enum storage.type.source
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
//      ^^^^^^^ storage.type.source
//             ^^ meta.path
//               ^^^^ storage.type.source
//                   ^ punctuation.terminator
let w = Message::WriteString("Some string".to_string());
//               ^^^^^^^^^^^ storage.type.source
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                           ^^^^^^^^^^^^^ string.quoted.double
//                                         ^^^^^^^^^ support.function
let m = Message::Move { x: 50, y: 200 };
//                    ^^^^^^^^^^^^^^^^^ meta.block
//                         ^^ constant.numeric.integer.decimal
//                                ^^^ constant.numeric.integer.decimal

enum Discriminant {
    A = 1,
//  ^ meta.enum constant.other
//      ^ meta.enum constant.numeric.integer.decimal
    V1 = 0xABC,
//  ^^ meta.enum constant.other
//       ^^^^^ meta.enum constant.numeric.integer.hexadecimal
    V2,
//  ^^ meta.enum constant.other
    SomeValue = 123,
//  ^^^^^^^^^ meta.enum storage.type.source
//              ^^^ meta.enum constant.numeric.integer.decimal
    V3 = (1<<4),
//  ^^ meta.enum constant.other
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
