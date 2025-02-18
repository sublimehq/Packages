// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

let line = Cow::from(x);
//         ^^^^^^^^^ meta.path
//         ^^^ storage.type
//            ^^ punctuation.accessor
//              ^^^^ variable.function
//                  ^^^ meta.group
//                  ^ punctuation.section.group.begin


buffer.rope.char();
//^^^^^^^^^^^^^^ meta.path
//    ^ punctuation.accessor.dot
//         ^ punctuation.accessor.dot
//          ^^^^ variable.function
//              ^^ meta.group
//                ^ punctuation.terminator


buffer . rope . char ();
//^^^^^^^^^^^^^^^^^^ meta.path
//     ^ punctuation.accessor.dot
//            ^ punctuation.accessor.dot
//              ^^^^ variable.function
//                   ^^ meta.group
//                     ^ punctuation.terminator

path . with_a_break s.path ();
//^^^^^^^^^^^^^^^^^ meta.path
//                 ^ -meta.path
//                  ^^^^^^ meta.path

env::current_dir()
//^^^^^^^^^^^^^^ meta.path
// ^^ punctuation.accessor
//   ^^^^^^^^^^^ variable.function

let file_bytes = fs::read(&path_buf)?;
//               ^^^^^^^^ meta.path
//                 ^^ punctuation.accessor
//                   ^^^^ variable.function
//                       ^^^^^^^^^^^ meta.group
//                                  ^ keyword.operator
//                                   ^ punctuation.terminator

u8::try_from(), f64 :: from ()
// <- meta.path storage.type
 // <- meta.path storage.type
//^^^^^^^^^^ meta.path
//  ^^^^^^^^ variable.function
//          ^^^^ -meta.path
//            ^ punctuation.separator
//              ^^^^^^^^^^^ meta.path
//              ^^^ storage.type
//                  ^^ punctuation.accessor
//                     ^^^^ variable.function

Vec::with_capacity()
//^^^^^^^^^^^^^^^^ meta.path
//^ support.type
// ^^ punctuation.accessor

for x in a.union(&b) {
    //   ^^^^^^^ meta.path
    //    ^ punctuation.accessor.dot
    //     ^^^^^ variable.function
    println!("{}", x);
}

// The following should eventually recognize `parse` as the function name
input.parse::<SnailNum>()
//           ^^^^^^^^^^ meta.generic.rust
//           ^ punctuation.definition.generic.begin.rust
//            ^^^^^^^^ storage.type.rust
//                    ^ punctuation.definition.generic.end.rust
//                     ^^ meta.group.rust
//                     ^ punctuation.section.group.begin.rust
//                      ^ punctuation.section.group.end.rust

let (x, y, z) = w;
//   ^ variable.other.rust
//      ^ variable.other.rust
//         ^ variable.other.rust
//              ^ variable.other.rust

let Some(x) = test();
//  ^^^^ support.type

let BasicStruct(x) = test();
//  ^^^^^^^^^^^ storage.type

let ComplexStruct { x, y: z } = test();
//  ^^^^^^^^^^^^^ storage.type
