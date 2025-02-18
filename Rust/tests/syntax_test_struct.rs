// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

struct BasicStruct(i32);
// ^^^^^^^^^^^^^^^^^^^^ meta.struct
// <- keyword.declaration.struct
//^^^^ keyword.declaration.struct
//     ^^^^^^^^^^^ entity.name.struct
//                ^ punctuation.section.group.begin
//                 ^^^ storage.type
//                    ^ punctuation.section.group.end

struct PrintableStruct(Box<i32>);
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
// <- keyword.declaration.struct
//^^^^ keyword.declaration.struct
//     ^^^^^^^^^^^^^^^ entity.name.struct
//                    ^ punctuation.section.group.begin
//                     ^^^ support.type
//                        ^^^^^ meta.generic
//                        ^ punctuation.definition.generic.begin
//                         ^^^ storage.type
//                            ^ punctuation.definition.generic.end
//                             ^ punctuation.section.group.end

struct Nil;
// ^^^^^^^ meta.struct
//        ^ - meta.struct

struct Pair(i32, i32);
// ^^^^^^^^^^^^^^^^^^ meta.struct
//          ^^^ storage.type
//               ^^^ storage.type
//                   ^ - meta.struct

struct /*comment*/ Comments {}
//     ^^^^^^^^^^^ meta.struct comment.block

struct Point
// ^^^^^^^^^ meta.struct
{
// <- meta.struct meta.block punctuation.section.block.begin
    x: i32,
//  ^ variable.other.member
//   ^ punctuation.separator
//     ^^^ storage.type
    y: i32
//  ^ variable.other.member
//   ^ punctuation.separator
//     ^^^ storage.type
}
// <-  meta.block punctuation.section.block.end

impl Point
//^^^^^^^^ meta.impl
{
// <- meta.impl meta.block punctuation.section.block.begin
    fn new(x: i32, y: i32) -> Point
    // <- keyword.declaration.function
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
        self.y *= 2;
    }
}

// TODO: `meta.group` should cover the closing parenthesis.
struct Val (f64,);
//^^^^^^^^^^^^^^^ meta.struct
//     ^^^ entity.name.struct
//         ^^^^^ meta.group
//         ^ punctuation.section.group.begin
//          ^^^ storage.type
//              ^ punctuation.section.group.end
//               ^ punctuation.terminator

struct F {
    f: extern "C" fn(x: u8, ... /* comment */),
//     ^^^^^^ meta.struct meta.block keyword.other
//            ^^^ meta.struct meta.block string.quoted.double
//                ^^ meta.struct meta.block storage.type.function
//                              ^^^^^^^^^^^^^ meta.struct meta.block meta.group comment.block
    g: extern "C" fn(x: u8, /* comment */ ...),
//                          ^^^^^^^^^^^^^ meta.struct meta.block meta.group comment.block
    h: extern "C" fn(x: u8, ...),
    i: extern "C" fn(
        x: u8,
//         ^^ meta.struct meta.block meta.group storage.type
        // comment 4
//      ^^^^^^^^^^^^^ meta.struct meta.block meta.group comment.line.double-slash
        y: String, // comment 3
//                 ^^^^^^^^^^^^^ meta.struct meta.block meta.group comment.line.double-slash
        z: Foo,
    ),
}

let mut j = BasicStruct(10);
//  ^^^ storage.modifier
//                      ^^ constant.numeric.integer.decimal

let p = Point {x: 10.0, y: 20.0};
//      ^^^^^ storage.type.rust
//            ^^^^^^^^^^^^^^^^^^ meta.block
//            ^ punctuation.section.block.begin
//              ^ punctuation.separator
//                ^^^^ constant.numeric.float
//                             ^ punctuation.section.block.end
let n = NothingInMe {};
//      ^^^^^^^^^^^ storage.type.rust
//                  ^^ meta.block
let tp = TuplePoint { 0: 10.0, 1: 20.0 };
//                    ^constant.numeric.integer.decimal
//                             ^ constant.numeric.integer.decimal
let p = Point { x, y };
//      ^^^^^ storage.type.rust
//            ^^^^^^^^ meta.block
