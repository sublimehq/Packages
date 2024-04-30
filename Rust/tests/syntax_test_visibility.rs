// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

pub ( crate ) struct S {}
// <- storage.modifier
//  ^ punctuation.section.group.begin
//    ^^^^^ keyword.other
//          ^ punctuation.section.group.end
//            ^^^^^^^^^^^ meta.struct
pub ( in foo::bar ) union U {}
//  ^ punctuation.section.group.begin
//    ^^ keyword.other
//       ^^^^^^^^ meta.path
//                ^ punctuation.section.group.end
//                  ^^^^^^^^^^ meta.union
pub ( in foo :: bar ) type T = i32;
//  ^ punctuation.section.group.begin
//    ^^ keyword.other
//       ^^^ meta.path
//           ^^ meta.path
//              ^^^ meta.path
//                  ^ punctuation.section.group.end
//                    ^^^^ keyword.declaration.type
pub ( in ::foo ) fn f() {}
//       ^^^^^ meta.path
//               ^^^^^^^^^ meta.function
pub ( self ) mod m {}
//    ^^^^ keyword.other
//           ^^^^^^^^ meta.module
pub ( super ) use a::b;
//    ^^^^^ keyword.other
//            ^^^ keyword.declaration.import
pub ( in self ) enum E {A,B}
//    ^^ keyword.other
//       ^^^^ keyword.other
//              ^^^^^^^^^^^^ meta.enum
pub ( in super ) const CONST: i32 = 1;
//    ^^ keyword.other
//       ^^^^^ keyword.other
//               ^^^^^ keyword.declaration.variable.constant.rust
pub ( in super::super ) static STATIC: i32 = 1;
//    ^^ keyword.other
//       ^^^^^ keyword.other
//            ^^ meta.path
//              ^^^^^ keyword.other
//                      ^^^^^^ keyword.declaration.variable.static.rust

struct S {
    pub f1: i32,
//  ^^^ meta.struct storage.modifier
//      ^^ meta.struct variable.other.member
    pub(crate) f2: i32,
//  ^^^ meta.struct storage.modifier
//     ^ meta.struct punctuation.section.group.begin
//      ^^^^^ meta.struct keyword.other
//           ^ meta.struct punctuation.section.group.end
//             ^^ meta.struct variable.other.member
    pub(in super::foo) f3: i32,
//  ^^^ meta.struct storage.modifier
//     ^ meta.struct punctuation.section.group.begin
//      ^^ meta.struct keyword.other
//         ^^^^^ meta.struct keyword.other
//              ^^^^^ meta.struct meta.path
//                   ^ meta.struct punctuation.section.group.end
//                     ^^ meta.struct variable.other.member
}

struct S (
    pub i32,
//  ^^^ meta.struct storage.modifier
//      ^^^ meta.struct storage.type
    pub(crate) i32,
//  ^^^ meta.struct storage.modifier
//     ^ meta.struct punctuation.section.group.begin
//      ^^^^^ meta.struct keyword.other
//           ^ meta.struct punctuation.section.group.end
//             ^^^ meta.struct storage.type
    pub(in super) i32,
//  ^^^ meta.struct storage.modifier
//     ^ meta.struct punctuation.section.group.begin
//      ^^ meta.struct keyword.other
//         ^^^^^ meta.struct keyword.other
//              ^ meta.struct punctuation.section.group.end
//                ^^^ meta.struct storage.type
);
