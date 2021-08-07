// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

// Line comments
// <- comment.line.double-slash punctuation.definition.comment
// ^^^^^^^^^^^^^^ comment.line.double-slash

// <- - comment
/// Line doc comments
// <- comment.line.documentation
// ^^^^^^^^^^^^^ comment.line.documentation

/*!
// <- comment.block.documentation punctuation.definition.comment
 // <- comment.block.documentation
//^ comment.block.documentation
Block doc comments
// ^^^^^^^^^^^^^^^^ comment.block.documentation
/* Nested comments */
// ^^^^^^^^^^^^^^^^^^ comment.block.documentation comment.block
*/

/**
    *
//  ^ comment.block.documentation.rust punctuation.definition.comment.rust 
*/

let c = 'c';
// <- storage.type
//    ^ keyword.operator.assignment
//      ^^^ string.quoted.single
let b = b'c';
// <- storage.type
//    ^ keyword.operator.assignment
//      ^ storage.type
//       ^^^ string.quoted.single

let s = "This is a string \x01_\u{007F}_\"_\'_\\_\r_\n_\t_\0";
// <- storage.type
//    ^ keyword.operator.assignment
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                        ^^^^ constant.character.escape
//                             ^^^^^^^^ constant.character.escape
//                                      ^^ constant.character.escape
//                                         ^^ constant.character.escape
//                                            ^^ constant.character.escape
//                                               ^^ constant.character.escape
//                                                  ^^ constant.character.escape
//                                                     ^^ constant.character.escape
//                                                        ^^ constant.character.escape
let r = r##"This is a raw string, no escapes! \x00 \0 \n"###;
// <- storage.type
//    ^ keyword.operator.assignment
//      ^ storage.type
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.raw - constant.character.escape
//       ^^^ punctuation.definition.string.begin.rust
//                                                      ^^^ punctuation.definition.string.end.rust
//                                                         ^ - string

let bytes = b"This won't escape unicode \u{0123}, but will do \x01_\"_\'_\\_\r_\n_\t_\0";
// <- storage.type
//        ^ keyword.operator
//          ^ storage.type
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                                                            ^^^^ constant.character.escape
//                                                                 ^^ constant.character.escape
//                                                                    ^^ constant.character.escape
//                                                                       ^^ constant.character.escape
//                                                                          ^^ constant.character.escape
//                                                                             ^^ constant.character.escape
//                                                                                ^^ constant.character.escape
//                                                                                   ^^ constant.character.escape

let raw_bytes = br#"This won't escape anything either \x01 \""#;
// <- storage.type
//            ^ keyword.operator
//              ^^ storage.type
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double - constant.character.escape

0;
// <- constant.numeric.integer.decimal
1_000u32;
// <- constant.numeric.integer.decimal
 // <- constant.numeric.integer.decimal
//^^^ constant.numeric.integer.decimal
//   ^^^ storage.type - constant.numeric.integer.decimal
1i64;
// <- constant.numeric.integer.decimal
 // <- storage.type - constant.numeric.integer.decimal
//^^ storage.type - constant.numeric.integer.decimal

0.2;
// <- constant.numeric.float
 // <- constant.numeric.float
//^ constant.numeric.float
1_000.0_;
// <- constant.numeric.float
 // <- constant.numeric.float
//^^^^^^ constant.numeric.float
1.0f32;
// <- constant.numeric.float
 // <- constant.numeric.float
//^ constant.numeric.float
// ^^^ storage.type - constant.numeric.float
0.;
// <- constant.numeric.float
 // <- constant.numeric.float
0f64;
// <- constant.numeric.float
 // <- storage.type - constant.numeric.float
//^^ storage.type - constant.numeric.float

0x0;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^ constant.numeric.integer.hexadecimal
0xfa;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^^ constant.numeric.integer.hexadecimal
0xFA_01i32;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^^^^^ constant.numeric.integer.hexadecimal
//     ^^^ storage.type - constant.numeric.integer.hexadecimal

0b1;
// <- constant.numeric.integer.binary
 // <- constant.numeric.integer.binary
//^ constant.numeric.integer.binary
0b0_1u8;
// <- constant.numeric.integer.binary
 // <- constant.numeric.integer.binary
//^^^ constant.numeric.integer.binary
//   ^^ storage.type - constant.numeric.integer.binary

0o0;
// <- constant.numeric.integer.octal
 // <- constant.numeric.integer.octal
//^ constant.numeric.integer.octal
0o0000_0010u64;
// <- constant.numeric.integer.octal
 // <- constant.numeric.integer.octal
//^^^^^^^^^ constant.numeric.integer.octal
//         ^^^ storage.type - constant.numeric.integer.octal

extern crate foo;
// <- keyword.other
//^^^^ keyword.other
//    ^ - keyword.other
//     ^^^^^ keyword.other

mod trafile;
// <- storage.type.module
mod comment;
// <- storage.type.module
mod location;

pub use self::trafile::*;
// <- storage.modifier
//   ^ keyword.other
//      ^^^^^^^^^^^^^^^ meta.path
//          ^^ punctuation.accessor

use std::fmt;
// <- keyword.other
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ - meta.path
use foo::i32;
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^ - meta.path storage.type
use foo::Bar;
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
use foo::{Baz, QUX, quux};
//  ^^^^^ meta.path
//     ^^ punctuation.accessor
//       ^^^^^^^^^^^^^^^^ meta.block
//             ^^^ constant.other

String my_var = format!("Hello {0}", "World");
// ^^^ support.type
//            ^ keyword.operator.assignment
//              ^^^^^^^ support.macro
//                     ^ punctuation.section.group.begin
//                     ^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                      ^^^^^^^^^^^ string.quoted.double
//                             ^^^ constant.other.placeholder
//                                          ^ punctuation.section.group.end

my_var = format!("Hello {name}, how are you?",
//     ^ keyword.operator.assignment
//       ^^^^^^^ support.macro
//              ^ punctuation.section.group.begin
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                      ^^^^^^ constant.other.placeholder
    name="John");
// ^^^^^^^^^^^^^ meta.group
//      ^ keyword.operator.assignment
//       ^^^^^^ string.quoted.double
//             ^ punctuation.section.group.end

struct BasicStruct(i32);
// ^^^^^^^^^^^^^^^^^^^^ meta.struct
// <- storage.type.struct
//^^^^ storage.type.struct
//     ^^^^^^^^^^^ entity.name.struct
//                ^ punctuation.section.group.begin
//                 ^^^ storage.type
//                    ^ punctuation.section.group.end

#[derive(Debug)]
// <- meta.annotation punctuation.definition.annotation
//^^^^^^^^^^^^^^ meta.annotation
//^^^^^^ variable.annotation
//      ^^^^^^^ meta.annotation.parameters
struct PrintableStruct(Box<i32>);
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
// <- storage.type.struct
//^^^^ storage.type.struct
//     ^^^^^^^^^^^^^^^ entity.name.struct
//                    ^ punctuation.section.group.begin
//                     ^^^ support.type
//                     ^^^^^^^^ meta.generic
//                        ^ punctuation.definition.generic.begin
//                         ^^^ storage.type
//                            ^ punctuation.definition.generic.end
//                             ^ punctuation.section.group.end

impl fmt::Display for PrintableStruct {
// <- meta.impl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
// <- storage.type.impl
//^^ storage.type.impl
//   ^^^^^ meta.path
//      ^^ punctuation.accessor
//                ^^^ keyword.other
//                    ^^^^^^^^^^^^^^^ entity.name.impl
//                                    ^ meta.block punctuation.section.block.begin
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^ storage.type.function
//     ^^^ entity.name.function
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
//        ^ punctuation.section.parameters.begin
//         ^ keyword.operator
//          ^^^^ variable.parameter
//                ^ variable.parameter
//                 ^ punctuation.separator
//                   ^ keyword.operator
//                    ^^^ storage.modifier
//                        ^^^^^ meta.path
//                                      ^ punctuation.section.parameters.end
//                                        ^^ punctuation.separator
//                                           ^^^^^ meta.path
//                                              ^^ punctuation.accessor
//                                                       ^ meta.block punctuation.section.block.begin
        write!(f, "{}", self.0)
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//      ^^^^^^ support.macro
//            ^^^^^^^^^^^^^^^^^ meta.group
//            ^ punctuation.section.group.begin
//                ^^^^ string.quoted.double
//                 ^^ constant.other.placeholder
//                      ^^^^ variable.language
//                          ^ punctuation.accessor.dot
//                            ^ punctuation.section.group.end
    }
// ^^ meta.function meta.block
//  ^ punctuation.section.block.end
}
// <- meta.block punctuation.section.block.end

let logical: bool = true;
//         ^ punctuation.separator
//           ^^^^ storage.type
//                ^ keyword.operator.assignment
//                  ^^^^ constant.language
//                      ^ punctuation.terminator
let mut mutable = 12;
//  ^^^ storage.modifier
//                  ^ punctuation.terminator

let ch = '∞';
//       ^^^ string.quoted.single
//          ^ punctuation.terminator

let tuple = (1.0, 0i32, "Hello");
//          ^^^^^^^^^^^^^^^^^^^^ meta.group
//          ^ punctuation.section.group.begin
//           ^^^ constant.numeric.float
//                ^ constant.numeric.integer.decimal
//                 ^^^ storage.type
//                      ^^^^^^^ string.quoted.double
//                             ^ punctuation.section.group.end
//                              ^ punctuation.terminator

let xs: [i32; 5] = [1, 2, 3, 4, 5];
//    ^ punctuation.separator
//      ^^^^^^^^ meta.group
//      ^ punctuation.section.group.begin
//       ^^^ storage.type
//          ^ punctuation.separator
//            ^ constant.numeric.integer.decimal
//             ^ punctuation.section.group.end
//                 ^^^^^^^^^^^^^^^ meta.group
//                 ^ punctuation.section.group.begin
//                   ^ punctuation.separator
//                      ^ punctuation.separator
//                         ^ punctuation.separator
//                            ^ punctuation.separator
//                               ^ punctuation.section.group.end
//                                ^ punctuation.terminator

let xsl = &xs;
//        ^ keyword.operator

type FnPointer = fn(i32) -> i32;
//   ^^^^^^^^^ entity.name.type
//               ^^ storage.type.function
//                 ^^^^^ meta.group
//                  ^^^ storage.type
//                       ^^ punctuation.separator
//                          ^^^ storage.type

type GenFnPointer = Bar<fn(i32) -> i32>;
//   ^^^^^^^^^^^^ entity.name.type
//                  ^^^^^^^^^^^^^^^^^^^ meta.generic
//                      ^^ storage.type.function
//                        ^^^^^ meta.group
//                         ^^^ storage.type
//                              ^^ punctuation.separator
//                                 ^^^ storage.type
//                                     ^ - meta.generic

type GenFnPointer2 = Bar<extern "C" fn()>;
//   ^^^^^^^^^^^^^ entity.name.type
//                   ^^^^^^^^^^^^^^^^^^^^ meta.generic
//                       ^^^^^^ keyword.other
//                              ^^^ string.quoted.double
//                                  ^^ storage.type.function
//                                       ^ - meta.generic

struct Nil;
// ^^^^^^^ meta.struct
//        ^ - meta.struct
struct Pair(i32, i32);
// ^^^^^^^^^^^^^^^^^^ meta.struct
//          ^^^ storage.type
//               ^^^ storage.type
//                   ^ - meta.struct

enum OperatingSystem
// <- storage.type.enum
// ^^^^^^^^^^^^^^^^^ meta.enum
//   ^^^^^^^^^^^^^^^ entity.name.enum
{
// <- meta.enum meta.block punctuation.section.block.begin
    Osx,
    Windows,
    Linux,
    Bsd(String),
    //  ^^^^^^ support.type
    Info { field: i32, value: str }
    //   ^ meta.block meta.block punctuation.section.block.begin
    //            ^^^ storage.type
    //                        ^^^ storage.type
    //                            ^ meta.block meta.block punctuation.section.block.end
}
// <- meta.enum meta.block punctuation.section.block.end

const ZERO: u64 = 0;
// <- storage.type
//    ^^^^ constant.other
//        ^ punctuation.separator
//          ^^^ storage.type
//              ^ keyword.operator.assignment
//                ^ constant.numeric.integer.decimal
static NAME: &'static str = "John";
// <- storage.type
//           ^ keyword.operator
//            ^^^^^^^ storage.modifier.lifetime
//                    ^^^ storage.type
//                        ^ keyword.operator.assignment
//                          ^^^^^^ string.quoted.double


let z = {
//      ^ meta.block punctuation.section.block.begin
    2 * 5
//  ^ constant.numeric.integer.decimal
//    ^ keyword.operator.arithmetic
//      ^ constant.numeric.integer.decimal
};
// <- meta.block punctuation.section.block.end

fn my_func(x: i32)
// <- storage.type.function
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

let n = 5;

if n < 0 {
//   ^ keyword.operator.comparison
//       ^ meta.block punctuation.section.block.begin
// <- keyword.control
    print!("{} is negative", n);
//                             ^ punctuation.terminator
} else if n > 0 {
// <- meta.block punctuation.section.block.end
// ^^^ keyword.control
//              ^ meta.block punctuation.section.block.begin
//     ^^ keyword.control
    print!("{0} is positive", n);
} else {
// <- meta.block punctuation.section.block.end
// ^^^ keyword.control
//     ^ meta.block punctuation.section.block.begin
    print!("{} is zero", n);
// ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
}
// <- meta.block punctuation.section.block.end

let big_n =
//        ^ keyword.operator.assignment
    if n < 10 && n > -10 {
//                       ^ meta.block punctuation.section.block.begin
        10 * n
    } else {
//  ^ meta.block punctuation.section.block.end
//         ^ meta.block punctuation.section.block.begin
        n / 2
    };
//  ^ meta.block punctuation.section.block.end

'label_name: loop {
// ^^^^^^^^ entity.name.label
//         ^ punctuation.separator
//           ^^^^ keyword.control
//                ^ meta.block punctuation.section.block.begin
    n += 1;
//    ^^ keyword.operator.assignment
    if n / 2 == 5 {
//       ^ keyword.operator.arithmetic
//           ^^ keyword.operator.comparison
        continue;
//      ^^^^^^^^ keyword.control
    }
    if n > 9 {
        break;
//      ^^^^^ keyword.control
    }
}

while n < 50 {
//^^^ keyword.control
    n = n * 2;
}

for i in 1..10 {
// <- keyword.control
//    ^^ keyword.operator
//       ^ constant.numeric.integer.decimal
//        ^^ keyword.operator.range
//          ^^ constant.numeric.integer.decimal
    println!("I: {}", i);
// ^^^^^^^^^^^^^^^^^^^^^^ meta.block
}
// <- meta.block punctuation.section.block.end

let o = match n {
//      ^^^^^ keyword.control
    1 => "one",
//  ^ constant.numeric.integer.decimal
//    ^^ keyword.operator
//       ^^^^^ string.quoted.double
    2 => "two",
//  ^ constant.numeric.integer.decimal
//    ^^ keyword.operator
//       ^^^^^ string.quoted.double
    3...5 => "a few",
//  ^ constant.numeric.integer.decimal
//   ^^^ keyword.operator.range
//      ^ constant.numeric.integer.decimal
//        ^^ keyword.operator
//           ^^^^^^^ string.quoted.double
    _ => "lots",
//  ^ keyword.operator
//    ^^ keyword.operator
};

let mut j = BasicStruct(10);
//  ^^^ storage.modifier
//                      ^^ constant.numeric.integer.decimal

if let BasicStruct(i) = j {
// ^^^ storage.type
//                    ^ keyword.operator.assignment
//                        ^ meta.block punctuation.section.block.begin
    println!("Basic value: {}", i);
}
// <- meta.block punctuation.section.block.end

while let BasicStruct(k) = j {
//^^^ keyword.control
//    ^^^ storage.type
//                       ^ keyword.operator.assignment
//                           ^ meta.block punctuation.section.block.begin
    println!("Constructed example: {}", j)
    j = BasicStruct(j + 1);
    if k > 20 {
        break;
        //^^^ meta.block meta.block keyword.control
    }
}
// <- meta.block punctuation.section.block.end

fn foo<A>(i: u32, b: i64) -> u32 {
// <- storage.type.function
// ^^^ entity.name.function
//    ^ punctuation.definition.generic.begin
//      ^ punctuation.definition.generic.end
//       ^^^^^^^^^^^^^^^^ meta.function.parameters
//                           ^^^ storage.type
//                               ^ meta.block punctuation.section.block.begin

}
// <- meta.block punctuation.section.block.end

// Guards
match n {
// <- keyword.control
    a if n > 5 => println!("Big: {}", a),
//    ^^ keyword.control
//         ^ keyword.operator.comparison
//             ^^ keyword.operator
//                ^^^^^^^^ support.macro
    b if n <= 5 => println!("Small: {}", b),
//    ^^ keyword.control
//         ^^ keyword.operator.comparison
//              ^^ keyword.operator
//                 ^^^^^^^^ support.macro
//                                  ^^ constant.other.placeholder
}

// Binding
match my_func() {
// ^^ keyword.control
//    ^^^^^^^ support.function
//              ^ meta.block punctuation.section.block.begin
    0 => println!("None"),
//  ^ constant.numeric.integer.decimal
//    ^^ keyword.operator
//       ^^^^^^^^ support.macro
    res @ 1...9 => println!("Digit: {}", res),
//      ^ keyword.operator
//         ^^^ keyword.operator
//                                  ^^ constant.other.placeholder
    _ => println!("Full number"),
//  ^ keyword.operator
//    ^^ keyword.operator
}
// <- meta.block punctuation.section.block.end

fn my_other_func(e: OperatingSystem) -> u32 {
// ^^^^^^^^^^^^^ entity.name.function
//               ^ variable.parameter
//                ^ punctuation.separator
}

struct Point
// ^^^^^^^^^ meta.struct
{
// <- meta.struct meta.block punctuation.section.block.begin
    x: i32,
//  ^ variable.other.member
//   ^ punctuation.separator.type
//     ^^^ storage.type
    #[serde(default)]
//  ^ punctuation.definition.annotation
//   ^ punctuation.section.group.begin
//    ^^^^^ variable.annotation
//                  ^ punctuation.section.group.end
//  ^^^^^^^^^^^^^^^^^ meta.annotation
    pub(crate) y: i32
//  ^^^ storage.modifier
//     ^ punctuation.definition.modifier-scope.begin
//      ^^^^^ storage.modifier
//           ^ punctuation.definition.modifier-scope.end
//             ^ variable.other.member
//              ^ punctuation.separator.type
//                ^^^ storage.type
}
// <-  meta.block punctuation.section.block.end

impl Point
//^^^^^^^^ meta.impl
{
// <- meta.impl meta.block punctuation.section.block.begin
    fn new(x: i32, y: i32) -> Point
    // <- storage.type.function
    // ^^^ entity.name.function
    {
    // <- meta.function meta.block
        Point {x: x, y: y}
    }

    fn double(&mut self) {
    // ^^^^^^ entity.name.function
        self.x *= 2;
    //  ^^^^ variable.language
    //      ^ punctuation.accessor.dot
    //         ^^ keyword.operator.assignment
        self.y >>= 2;
    //         ^^^ keyword.operator.assignment.rust
    }

    fn sum((x, y): (i32, i32)) -> i32 {
//         ^^^^^^ meta.group
//         ^ punctuation.section.group.begin
//           ^ punctuation.separator
//              ^ punctuation.section.group.end
//               ^ punctuation.separator
//                 ^^^^^^^^^^ meta.group
//                 ^ punctuation.section.group.begin
//                  ^^^ storage.type
//                     ^ punctuation.separator
//                       ^^^ storage.type
//                          ^ punctuation.section.group.end
//                             ^^ punctuation.separator
    }
}

pub fn pub_function() -> bool
// <- storage.modifier
//  ^^ storage.type.function
//     ^^^^^^^^^^^^ entity.name.function
{
// <- meta.function
    return true
}

fn factory() -> Box<Fn(i32) -> i32> {
// <- storage.type.function
// ^^^^^^^ entity.name.function
//                  ^^^^^^^^^^^^^^ meta.generic
//                      ^^ storage.type
//                              ^^ storage.type
//                          ^^ punctuation.separator
    Box::new(|x| x + 1)
//     ^^ punctuation.accessor
}

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

let f = |(x, y): (u32, &mut u32)| { x + y };
//      ^ punctuation.section.parameters.begin
//        ^ variable.parameter
//         ^ punctuation.separator
//           ^ variable.parameter
//               ^^^^^^^^^^^^^^^ meta.group
//               ^ punctuation.section.group.begin
//                ^^^ storage.type
//                   ^ punctuation.separator
//                     ^ keyword.operator
//                      ^^^ storage.modifier
//                          ^^^ storage.type
//                             ^ punctuation.section.group.end
//                              ^ punctuation.section.parameters.end


let c = a | b;
//        ^ keyword.operator.bitwise

call_func(|c| 1 + 2 + c);
//        ^^^^^^^^^^^^^ meta.function.closure
//        ^^^ meta.function.parameters

macro_rules! print_result {
    ($expr:expr) => (
        println!("{:?} = {:?}", stringify!($expr), $expr)
    )
}


pub fn from_buf_reader<T>(s: io::BufReader<T>) -> Result<isize, &'static str>
//                                                              ^ keyword.operator
    where T: io::Read
//  ^ keyword.other
{
    macro_rules! eat_numbers {
        ($count:expr, $msg:expr) => {{
        //                          ^ meta.function meta.block meta.macro meta.block meta.block punctuation.section.block.begin
        //                           ^ meta.function meta.block meta.macro meta.block meta.block meta.block punctuation.section.block.begin
            let parse_err = concat!("Err parsing value in ", $msg);
            try!{ eat_numbers(&mut lines, $count, parse_err, missing_err, too_many) }
        //  ^^^^ support.macro
        //      ^ meta.function meta.block meta.macro meta.block meta.block meta.block meta.block punctuation.section.block.begin
        }}
    };
     // <- meta.function meta.block - meta.macro

    let mut starts_stops = eat_numbers!(relief_count_total * 2, "starts and stops");

    let starts = starts_stops.split_off(relief_count_total);
//                           ^ punctuation.accessor.dot
//                            ^^^^^^^^^ support.function
    let stops = starts_stops;

    unimplemented!();
}

pub mod my_mod {
//^^^^^^^^^^^^^^ meta.module
// <- storage.modifier
//  ^^^ storage.type.module
//      ^^^^^^ entity.name.module
//             ^ meta.block punctuation.section.block.begin
}
// <- meta.module meta.block punctuation.section.block.end

struct Val (f64,);
struct GenVal<T>(T,);
//     ^^^^^^^^^ meta.generic
//     ^^^^^^ entity.name.struct
//           ^ punctuation.definition.generic.begin - entity.name.struct
//             ^ punctuation.definition.generic.end

// impl of Val
impl Val {
    fn value(&self) -> &'a f64 { &self.0 }
    //                 ^ keyword.operator
    //                  ^^ storage.modifier.lifetime
}

// impl of GenVal for a generic type `T`
impl <'a, T> GenVal<T> {
//   ^ punctuation.definition.generic.begin
//    ^^ storage.modifier.lifetime
//         ^ punctuation.definition.generic.end
//           ^^^^^^ entity.name.impl
//                 ^^^ - entity.name.impl
//                 ^ punctuation.definition.generic.begin
//                   ^ punctuation.definition.generic.end
    fn value(&self) -> &T { &self.0 }
    //       ^ keyword.operator
    //                 ^ keyword.operator
}

fn print_debug<T: Debug> (t: &T) {
// ^^^^^^^^^^^ entity.name.function
//            ^ punctuation.definition.generic.begin - entity.name.function
//              ^ punctuation.separator
//                     ^ punctuation.definition.generic.end
//                        ^ variable.parameter
//                           ^ keyword.operator
    println!("{:?}", t);
//            ^^^^ constant.other.placeholder
}

impl<'a, T: MyTrait + OtherTrait> PrintInOption for T where
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//   ^^ storage.modifier.lifetime
//        ^ punctuation.separator
//                  ^ keyword.operator
//                                              ^^^ keyword.other
//                                                  ^ entity.name.impl
//                                                    ^^^^^ keyword.other
    Option<T>: Debug {
//^^^^^^^^^^^^^^^^^^^^ meta.impl
    fn print_in_option(self) {
//     ^^^^^^^^^^^^^^^ entity.name.function
        println!("{:?}", Some(self));
    }
}

pub trait Animal {
// <- storage.modifier
//^^^^^^^^^^^^^^^^ meta.trait
//               ^ meta.block punctuation.section.block.begin
    fn noise(quiet: bool) {
        // Comment
    }
}
// <- meta.trait meta.block punctuation.section.block.end

fn collect_vec() {
    let _: Vec<(usize, usize)> = (0..10).enumerate().collect::<Vec<_>>();
//         ^^^ support.type
//         ^^^^^^^^^^^^^^^^^^^ meta.generic
//             ^ punctuation.section.group.begin
//              ^^^^^ storage.type
//                     ^^^^^ storage.type
//                          ^ punctuation.section.group.end
//                             ^ keyword.operator.assignment
//                               ^ punctuation.section.group.begin
//                                ^ constant.numeric.integer.decimal
//                                 ^^ keyword.operator.range
//                                   ^^ constant.numeric.integer.decimal
//                                     ^ punctuation.section.group.end
//                                      ^ punctuation.accessor.dot
//                                       ^^^^^^^^^ support.function
//                                                ^^ punctuation.section.group
//                                                  ^ punctuation.accessor.dot
//                                                          ^^ punctuation.accessor
//                                                            ^^^^^^^^ meta.generic
//                                                             ^^^ support.type
//                                                             ^^^^^^ meta.generic meta.generic
//                                                                 ^ keyword.operator
    let _: Vec<(usize, usize)> = vec!();
//                               ^^^^ support.macro
    let _: Vec<(usize, usize)> = vec!{};
//                               ^^^^ support.macro
    let _: Vec<(usize, usize)> = vec![];
//                               ^^^^ support.macro
    let _: Vec<String> = vec![];
//             ^^^^^^ meta.generic support.type
}

macro_rules! forward_ref_binop [
//                             ^ meta.macro meta.group punctuation.section.group.begin
    (impl $imp:ident, $method:ident for $t:ty, $u:ty) => {
//        ^^^^ variable.parameter
//             ^^^^^ storage.type
//                    ^^^^^^^ variable.parameter
//                            ^^^^^ storage.type
//                                      ^^ variable.parameter
//                                         ^^ storage.type
//                                             ^^ variable.parameter
//                                                ^^ storage.type
//                                                    ^^ keyword.operator
//                                                       ^ meta.macro meta.group meta.block punctuation.section.block.begin
        impl<'a, 'b> $imp<&'a $u> for &'b $t {
//      ^^^^ storage.type.impl
//          ^^^^^^^^ meta.generic
//           ^^ storage.modifier.lifetime
//               ^^ storage.modifier.lifetime
//                   ^^^^ variable.other
//                       ^^^^^^^^ meta.generic
//                        ^ keyword.operator
//                         ^^ storage.modifier.lifetime
//                            ^^ variable.other
//                                ^^^ keyword.other
//                                    ^ keyword.operator
//                                     ^^ storage.modifier.lifetime
//                                        ^^ variable.other
//                                           ^ meta.macro meta.group meta.block meta.impl meta.block punctuation.section.block.begin
            type Output = <$t as $imp<$u>>::Output;
//                        ^^^^^^^^^^^^^^^^ meta.generic
//                            ^^ keyword.operator
//                                        ^^ meta.path punctuation.accessor

            #[inline]
//          ^^^^^^^^^ meta.annotation
//          ^ punctuation.definition.annotation
//           ^ punctuation.section.group.begin
//                  ^ punctuation.section.group.end
            fn $method(self, other: &'a $u) -> <$t as $imp<$u>>::Output {
//          ^^ storage.type.function
//             ^^^^^^^ variable.other
//                     ^^^^ variable.language
//                                  ^ keyword.operator
//                                   ^^ storage.modifier.lifetime
//                                      ^^ variable.other
//                                          ^^ punctuation.separator
//                                             ^^^^^^^^^^^^^^^^ meta.generic
//                                                 ^^ keyword.operator
//                                                             ^^ meta.path punctuation.accessor
//                                                                      ^ meta.macro meta.group meta.block meta.impl meta.block meta.block punctuation.section.block.begin
                #![cfg(all(unix, target_pointer_width = "32"))]
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//                 ^^^ variable.annotation
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                     ^^^ variable.function
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                        ^ punctuation.section.group.begin
//                             ^ punctuation.separator
//                                                    ^ keyword.operator
//                                                      ^^^^ string.quoted
//                                                          ^ punctuation.section.group.end
                $imp::$method(*self, *other)
//              ^^^^ variable.other
//                    ^^^^^^^ variable.other
//                            ^ keyword.operator
//                             ^^^^ variable.language
//                                   ^ keyword.operator
            }
        }
    }
]

macro_rules! alternate_group (
//                           ^ meta.macro meta.group punctuation.section.group.begin
    ($a:expr) => (
//   ^^ variable.parameter
//      ^^^^ storage.type
        println!("Test {}!", $a)
    )
)

macro_rules! kleene_star {
// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.macro.rust - meta.macro.rust meta.macro.rust
//                       ^ meta.block.rust punctuation.section.block.begin.rust
    ($($arg:tt)+) => (
//  ^^^^^^^^^^^^^^^^^^ meta.macro meta.block
//  ^^^^^^^^^^^^^ meta.group.macro-matcher
//   ^^^^^^^^^^ meta.group.macro-matcher meta.group
//   ^^ punctuation.section.group.begin
//   ^ keyword.operator
//     ^^^^ variable.parameter.macro.rust
//          ^^ storage.type.rust
//             ^ keyword.operator.rust
//              ^ meta.group punctuation.section.group.end
//                ^^ keyword.operator
//                   ^ meta.group.macro-body.rust punctuation.section.group.begin.rust
        println!($($arg));
    ),
    ($($arg:tt)*) => (
//  ^^^^^^^^^^^^^ meta.macro meta.block meta.group.macro-matcher
//     ^^^^ variable.parameter.macro.rust
//                ^^ meta.macro meta.block keyword.operator
        println!($($arg)*);
//                 ^^^^ variable.other.rust
//               ^^^^^^^^^ meta.macro.rust meta.block.rust meta.group.macro-body.rust meta.group.rust
    ),
    ($($arg:tt) ; +) => (
//  ^^^^^^^^^^^^^^^^ meta.macro meta.block meta.group.macro-matcher
//     ^^^^ variable.parameter.macro.rust
//                   ^^ meta.macro meta.block keyword.operator
        println!($($arg));
    ),
    ($($arg:tt),*) => (
//  ^^^^^^^^^^^^^^ meta.macro meta.block meta.group.macro-matcher
//     ^^^^ variable.parameter.macro.rust
//                 ^^ meta.macro meta.block keyword.operator
        println!($($arg)*);
    ),

// incomplete blocks
    ($($arg:tt),*) ,
//                 ^ meta.macro.rust meta.block.rust punctuation.terminator.macro-matcher.rust
    ($($x:tt),*) => ($x) ,
        println!($($arg)*);
    )
}

pub fn next_lex<T:PartialOrd>(/* block */data: &mut [T] // line {
//                            ^^^^^^^^^^^ source.rust meta.function.rust meta.function.parameters.rust comment.block.rust
//                                                      ^^^^^^^^^ source.rust meta.function.rust meta.function.parameters.rust comment.line.double-slash.rust
    /* block2 */ data2: &mut [T]  // line
//  ^^^^^^^^^^^^ source.rust meta.function.rust meta.function.parameters.rust comment.block.rust
//                                ^^^^^^^ source.rust meta.function.rust meta.function.parameters.rust comment.line.double-slash.rust
    ) -> bool {
    unimplemented!();
}

pub fn next_lex2</* block */T/* comments */:/* everywhere */
//               ^^^^^^^^^^^ comment.block.rust
//                           ^^^^^^^^^^^^^^ comment.block.rust
//                                          ^^^^^^^^^^^^^^^^ comment.block.rust
    // Many comments
//  ^^^^^^^^^^^^^^^^ comment.line.double-slash.rust
    /* help */ PartialOrd // Possibly too many comments
//  ^^^^^^^^^^ comment.block.rust
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.rust
> (
    /* block2 */ data2: &mut [T]  // line
//  ^^^^^^^^^^^^ source.rust meta.function.rust meta.function.parameters.rust comment.block.rust
//                                ^^^^^^^ source.rust meta.function.rust meta.function.parameters.rust comment.line.double-slash.rust
    ) -> bool {
    unimplemented!();
}

pub fn new<T>() -> Fibonacci<T>
    where T: One + Zero,
//  ^^^^^ keyword.other.rust
    for <'a> &'a T: Add<Output = T>,
//  ^^^ keyword.other.rust
//      ^ punctuation.definition.generic.begin.rust
//       ^^ storage.modifier.lifetime.rust
//         ^ punctuation.definition.generic.end.rust
//           ^ keyword.operator.rust
//            ^^ storage.modifier.lifetime.rust
{
    unimplemented!();
}

pub fn new<T>() -> Fibonacci<T>
    where for <'a> &'a T: Add<Output = T>,
//  ^^^^^ keyword.other.rust
//        ^^^ keyword.other.rust
//            ^ punctuation.definition.generic.begin.rust
//             ^^ storage.modifier.lifetime.rust
//               ^ punctuation.definition.generic.end.rust
//                 ^ keyword.operator.rust
//                  ^^ storage.modifier.lifetime.rust
{
    unimplemented!();
}

impl<T> Fibonacci<T>
    where for <'a> &'a T: Add<Output = T>,
//  ^^^^^ keyword.other.rust
//        ^^^ keyword.other.rust
//            ^ punctuation.definition.generic.begin.rust
//             ^^ storage.modifier.lifetime.rust
//               ^ punctuation.definition.generic.end.rust
//                 ^ keyword.operator.rust
//                  ^^ storage.modifier.lifetime.rust
{
    unimplemented!();
}

impl<T> Iterator for Fibonacci<T>
    where T: Clone,
//  ^^^^^ keyword.other.rust
    for <'a> &'a T: Add<Output = T>,
//  ^^^ keyword.other.rust
//      ^ punctuation.definition.generic.begin.rust
//       ^^ storage.modifier.lifetime.rust
//         ^ punctuation.definition.generic.end.rust
//           ^ keyword.operator.rust
//            ^^ storage.modifier.lifetime.rust
{
    unimplemented!();
}

pub const FOO: Option<[i32; 1]> = Some([1]);
//                    ^ punctuation.section.group.begin.rust
//                        ^ punctuation.separator
//                          ^ constant.numeric
//                           ^ punctuation.section.group.end.rust

fn abc() {
    println!("{}hello\
//                   ^ punctuation.separator.continuation.line.rust
         world, there is no whitespace between hello and world in the output", 0o202u64);
}

impl ApplicationPreferenceseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee {
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.impl.rust
}

#[test = "foo ] bar"]
// <- meta.annotation punctuation.definition.annotation
//^^^^^^^^^^^^^^^^^^^ meta.annotation
//^^^^ variable.annotation
//     ^ keyword.operator
//       ^^^^^^^^^^^ string.quoted.double
pub trait Foo {
}

const FOO: usize = 5;
let _: Box<[[bool; (FOO + 1) / 2]; FOO * 3 % 12 - 1]>;
//  ^ keyword.operator
//   ^ punctuation.separator
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//        ^ punctuation.definition.generic.begin
//         ^^ punctuation.section.group.begin
//           ^^^^ storage.type
//               ^ punctuation.separator
//                 ^ punctuation.section.group.begin
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

let x = 5;
let raw = &x as *const i32;
//              ^^^^^^ storage.type

let mut y = 10;
let raw_mut = &mut y as *mut i32;
//                      ^^^^ storage.modifier

let i: u32 = 1;
let p_imm: *const u32 = &i as *const u32;
//         ^^^^^^ storage.type
//                            ^^^^^^ storage.type

type ExampleRawPointer = HashMap<*const i32, Option<i32>, BuildHasherDefault<FnvHasher>>;
//                               ^^^^^^ storage.modifier - invalid
//                                      ^^^ storage.type

writeln!(stdout)?;
// ^^^^^ support.macro
//      ^ punctuation.section.group.begin
//       ^^^^^^ variable.other
//             ^ punctuation.section.group.end
//              ^ keyword.operator
//               ^ punctuation.terminator

pub trait Foo {
    fn bar()
    where
        Self: Sized;
//      ^^^^ storage.type
//          ^ punctuation.separator
//                 ^ punctuation.terminator
}
