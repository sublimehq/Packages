// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"
// Raw identifiers in various positions.

use r#foo::bar as r#alias_foo;
//  ^^^^^^^ meta.path
//                ^^^^^^^^^^^ source -keyword

fn main() {
    #[r#attr]
//  ^^^^^^^^^ meta.annotation -keyword
    r#foo::r#bar();
//  ^^^^^^^ meta.path -keyword
//         ^^^^^ -keyword

    let r#local = r#Struct { r#struct: () };
//      ^^^^^^^^ -keyword
//                ^^^^^^^^ storage.type.rust -keyword
//                           ^^^^^^^^ -keyword
    let r#async = r#foo(r#local);
//      ^^^^^^^^ -keyword
//                ^^^^^ -keyword
//                      ^^^^^^^ -keyword
    r#macro!();
//  ^^^^^^^^ support.macro -keyword -invalid
    somecall(r#foo);
//           ^^^^^ meta.function meta.block meta.group

    if let r#sub_pat @ Foo(_) = r#Foo(3) {}
//         ^^^^^^^^^^ -keyword
//                              ^^^^^ storage.type.rust

    match r#async {
//        ^^^^^^^^ -keyword
        r#Foo | r#Bar => r#foo(),
//      ^^^^^ storage.type.rust -keyword
//              ^^^^^ storage.type.rust -keyword
//                       ^^^^^ -keyword
    }
}

fn r#bar<'a, r#T>(r#x: &'a r#T) {}
// ^^^^^ meta.function entity.name.function -keyword
//           ^^^ meta.generic -keyword
//                ^^^ meta.function meta.function.parameters variable.parameter -keyword
//                         ^^^ meta.function meta.function.parameters -keyword

struct Generic<r#T>(T);
//             ^^^ meta.struct meta.generic meta.generic -keyword

mod r#foo {
//  ^^^^^ meta.module entity.name.module -keyword
    pub fn r#bar() {}
//         ^^^^^ meta.module meta.block meta.function entity.name.function -keyword
}

enum r#Foo {
//   ^^^^^ meta.enum meta.enum entity.name.enum
    r#Bar {},
//  ^^^^^^ meta.enum -keyword
}

struct r#Struct {
//     ^^^^^^^^ meta.struct entity.name.struct -keyword
    r#field: r#FieldType,
//  ^^^^^^^ meta.struct meta.block variable.other.member -keyword
//           ^^^^^^^^^^^^^ meta.struct meta.block -keyword
}

trait r#Trait {
//    ^^^^^^^ meta.trait entity.name.trait -keyword
    type r#Type;
//       ^^^^^^ meta.trait meta.block entity.name.type -keyword
}

impl r#Trait for r#Impl {
//   ^^^^^^^^ meta.impl -keyword
//               ^^^^^^ meta.impl entity.name.impl -keyword
    type r#Type = r#u32;
//       ^^^^^^ meta.impl meta.block entity.name.type
//                ^^^^^ meta.impl meta.block storage.type
    fn r#xxx(r#fjio: r#u32) {}
//     ^^^^^ meta.impl meta.block meta.function entity.name.function -keyword
//           ^^^^^^ meta.impl meta.block meta.function meta.function.parameters variable.parameter -keyword
//                   ^^^^^ meta.impl meta.block meta.function meta.function.parameters storage.type
}

extern "C" {
    type r#ccc;
//       ^^^^^ meta.block entity.name.type -keyword
    static r#static_val: u32;
//         ^^^^^^^^^^^^ meta.block -keyword
}

macro_rules! r#macro {
//           ^^^^^^^ meta.macro entity.name.macro -keyword -invalid
    () => {};
}

macro_rules! foo {
    ($x:expr) => {
        let r#catch = $x + 1;
//          ^^^^^^^^ meta.macro meta.macro.transcribers -keyword
        r#println!("{}", r#catch);
//                       ^^^^^^^ meta.macro meta.macro.transcribers meta.group -keyword
    };
}
