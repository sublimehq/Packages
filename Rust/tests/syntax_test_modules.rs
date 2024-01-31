// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

extern crate foo;
//<- keyword.other
//^^^^ keyword.other
//     ^^^^^ keyword.other
//           ^^^ source
//              ^ punctuation.terminator

extern crate std as ruststd;
//^^^^ keyword.other
//     ^^^^^ keyword.other
//           ^^^^ source
//               ^^ keyword.operator
//                  ^^^^^^^ source
//                         ^ punctuation.terminator

mod bar;
// <- meta.module keyword.declaration.module
//^^^^^^ meta.module
//  ^^^ entity.name.module
//     ^ punctuation.terminator

pub mod my_mod {
//  ^^^^^^^^^^^^ meta.module
// <- storage.modifier
//  ^^^ keyword.declaration.module
//      ^^^^^^ entity.name.module
//             ^ meta.block punctuation.section.block.begin
}
// <- meta.module meta.block punctuation.section.block.end

pub use self::trafile::*;
// <- storage.modifier
//  ^^^ keyword.declaration
//      ^^^^ variable.language
//      ^^^^^^^^^^^^^^^ meta.path
//                   ^^ punctuation.accessor
//                     ^ keyword.operator
//                      ^ punctuation.terminator

use std::fmt;
// <- keyword.declaration
//  ^^^^^^^^ meta.path
//     ^^ punctuation.accessor
//          ^ punctuation.terminator
use foo::i32;
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ - storage.type
use foo::Bar;
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ storage.type.rust

use foo::{Baz, QUX, quux};
//  ^^^^^ meta.path
//     ^^ punctuation.accessor.rust
//       ^^^^^^^^^^^^^^^^ meta.block
//       ^ punctuation.section.block.begin
//        ^^^ storage.type.rust
//             ^^^ constant.other
//                  ^^^^ meta.block
//                      ^ punctuation.section.block.end
//                       ^ punctuation.terminator

use std::{
// <- keyword.declaration
//  ^^^^^ meta.path
//       ^ meta.block punctuation.section.block.begin
    fs::{self, read_dir},
//  ^^^^ meta.block meta.path
//      ^ meta.block meta.block punctuation.section.block.begin
//       ^^^^ meta.block meta.block variable.language
//             ^^^^^^^^ meta.block meta.block
//                     ^ meta.block meta.block punctuation.section.block.end
    path::{Path, PathBuf},
//  ^^^^^^ meta.block meta.path
//        ^ meta.block meta.block punctuation.section.block.begin
//         ^^^^ meta.block meta.block storage.type.rust
//               ^^^^^^^ meta.block meta.block storage.type.rust
//                      ^ meta.block meta.block punctuation.section.block.end
   };
// ^ meta.block punctuation.section.block.end
//  ^ punctuation.terminator

extern {
// <- keyword.other
//^^^^ keyword.other
//     ^ meta.block punctuation.section.block.begin
    fn foo(x: i32, ...);
}
// <- meta.block punctuation.section.block.end

extern "stdcall" { }
// <- keyword.other
//     ^^^^^^^^^ string.quoted.double
