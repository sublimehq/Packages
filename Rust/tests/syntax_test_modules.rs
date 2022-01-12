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
//               ^^ keyword.operator.word
//                  ^^^^^^^ source
//                         ^ punctuation.terminator

mod bar;
// <- meta.module storage.type.module
//^^^^^^ meta.module
//  ^^^ entity.name.module
//     ^ punctuation.terminator

pub mod my_mod {
//  ^^^^^^^^^^^^ meta.module
// <- storage.modifier
//  ^^^ storage.type.module
//      ^^^^^^ entity.name.module
//             ^ meta.block punctuation.section.block.begin
}
// <- meta.module meta.block punctuation.section.block.end

pub use self::trafile::*;
// <- storage.modifier
//  ^^^ keyword.other
//      ^^^^ variable.language
//      ^^^^^^^^^^^^^^^ meta.path
//                   ^^ punctuation.accessor
//                     ^ keyword.operator
//                      ^ punctuation.terminator

use std::fmt;
// <- keyword.other
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ - meta.path
//          ^ punctuation.terminator
use foo::i32;
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ - meta.path storage.type
use foo::Bar;
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ storage.type.source

use foo::{Baz, QUX, quux};
//  ^^^^^ meta.path
//     ^^ punctuation.accessor.rust
//       ^^^^^^^^^^^^^^^^ meta.block
//       ^ punctuation.section.block.begin
//        ^^^ storage.type.source
//             ^^^ constant.other
//                  ^^^^ meta.block
//                      ^ punctuation.section.block.end
//                       ^ punctuation.terminator

use std::{
// <- keyword.other
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
//         ^^^^ meta.block meta.block storage.type.source
//               ^^^^^^^ meta.block meta.block storage.type.source
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
