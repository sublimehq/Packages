// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"
// This file is for misc type definitions that don't fit in other more
// specific categories.

type FnPointer = fn(i32) -> i32;
// <- storage.type.type
//   ^^^^^^^^^ entity.name.type
//               ^^ storage.type.function
//                 ^^^^^ meta.group
//                  ^^^ storage.type
//                       ^^ punctuation.separator
//                          ^^^ storage.type

type GenFnPointer = Bar<fn(i32) -> i32>;
// <- storage.type.type
//   ^^^^^^^^^^^^ entity.name.type
//                  ^^^^^^^^^^^^^^^^^^^ meta.generic
//                      ^^ storage.type.function
//                        ^^^^^ meta.group
//                         ^^^ storage.type
//                              ^^ punctuation.separator
//                                 ^^^ storage.type
//                                     ^ - meta.generic

type GenFnPointer2 = Bar<extern "C" fn()>;
// <- storage.type.type
//   ^^^^^^^^^^^^^ entity.name.type
//                   ^^^^^^^^^^^^^^^^^^^^ meta.generic
//                       ^^^^^^ keyword.other
//                              ^^^ string.quoted.double
//                                  ^^ storage.type.function
//                                       ^ - meta.generic

const ZERO: u64 = 0;
// <- storage.type
//    ^^^^ entity.name.constant
//        ^ punctuation.separator
//          ^^^ storage.type
//              ^ keyword.operator.assignment
//                ^ constant.numeric.integer.decimal
static NAME: &'static str = "John";
// <- storage.type
//     ^^^^ entity.name.constant
//           ^ keyword.operator
//            ^^^^^^^ storage.modifier.lifetime
//                    ^^^ storage.type
//                        ^ keyword.operator.assignment
//                          ^^^^^^ string.quoted.double
static mut BRAVO: u32 = 0;
// <- storage.type
//     ^^^ storage.modifier
//         ^^^^^ entity.name.constant

// Function type in a box return type.
// fixes https://github.com/rust-lang/sublime-rust/issues/144
fn factory() -> Box<Fn(i32) -> i32> {
// <- storage.type.function
// ^^^^^^^ entity.name.function
//                  ^^^^^^^^^^^^^^ meta.generic
//                      ^^ storage.type
//                              ^^ storage.type
//                          ^^ source meta.function meta.function.return-type
}

let x: __m128i = __m128i::from_bits(f32x4::from_bits(m32x4::new(true, true, true, true)));
//     ^^^^^^^ storage.type
//               ^^^^^^^ storage.type
//                                  ^^^^^ meta.group storage.type
//                                                   ^^^^^ meta.group meta.group storage.type
//                                                              ^^^^ meta.group meta.group meta.group constant.language

let mut mutable = 12;
//  ^^^ storage.modifier

// Tuple types.
type Pair<'a> = (i32, &'a str);
// <- storage.type.type
//   ^^^^ entity.name.type
//       ^ keyword.operator
//        ^^ storage.modifier.lifetime
//          ^ keyword.operator
//            ^ keyword.operator.assignment
//              ^^^^^^^^^^^^^^ meta.group
//              ^ punctuation.section.group.begin
//               ^^^ storage.type
//                    ^ keyword.operator
//                     ^^ storage.modifier.lifetime
//                        ^^^ storage.type
//                           ^ punctuation.section.group.end
//                            ^ punctuation.terminator
let p: Pair<'static> = (10, "ten");
// <- storage.type
//   ^ punctuation.separator
//     ^^^^^^^^^^^^^ meta.generic
//         ^ punctuation.definition.generic.begin
//          ^^^^^^^ storage.modifier.lifetime
//                 ^ punctuation.definition.generic.end
//                   ^ keyword.operator.assignment
//                     ^^^^^^^^^^^ meta.group
//                     ^ punctuation.section.group.begin
//                      ^^ constant.numeric.integer.decimal
//                          ^^^^^ string.quoted.double
//                               ^ punctuation.section.group.end
//                                ^ punctuation.terminator
fn tuple(x: (u32, u32)) {}
//          ^^^^^^^^^^ meta.group
//          ^ meta.group punctuation.section.group.begin
//           ^^^ storage.type
//              ^ punctuation.separator
//                ^^^ storage.type
//                   ^ meta.group punctuation.section.group.end

// Array types.
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
//                               ^ punctuation.section.group.end

// Slice types.
let slice: &[i32];
//         ^ keyword.operator
//          ^^^^^ meta.group
//          ^ punctuation.section.group.begin
//              ^ punctuation.section.group.end
//           ^^^ storage.type


// Pointer types.
let p: *const Foo;
//     ^^^^^^ storage.modifier
//            ^^^ storage.type.source
let p: *mut u8;
//     ^^^^ storage.modifier
//          ^^ storage.type
let raw = &x as *const i32;
//              ^^^^^^ storage.modifier
//                     ^^^ storage.type
let raw_mut = &mut y as *mut i32;
//                      ^^^^ storage.modifier
//                           ^^^ storage.type
let p_imm: *const u32 = &i as *const u32;
//         ^^^^^^ storage.modifier
//                            ^^^^^^ storage.modifier
//                                   ^^^ storage.type

type Snail = Vec<SnailNum>;
//           ^^^^^^^^^^^^^ meta.generic.rust
//           ^^^ support.type.rust
//              ^ punctuation.definition.generic.begin.rust
//               ^^^^^^^^ storage.type.rust
//                       ^ punctuation.definition.generic.end.rust

type ExampleRawPointer = HashMap<*const i32, Option<i32>, BuildHasherDefault<FnvHasher>>;
//                               ^^^^^^ meta.generic storage.modifier
//                                      ^^^ meta.generic storage.type


// Anonymous lifetimes.
impl Foo<'_, '_> { }
//       ^^ meta.impl meta.generic storage.modifier.lifetime
//           ^^ meta.impl meta.generic storage.modifier.lifetime
fn f(string: &str) -> StrWrap<'_> { }
//                            ^^ meta.function meta.function.return-type meta.generic storage.modifier.lifetime


// Never type.
fn from_str() -> Result<Foo, !> {}
//                           ^ meta.function meta.function.return-type meta.generic keyword.operator

// Qualified path with type.
// Note: This isn't actually a generics, but that gets reused for this purpose.
type Item = <I as Iterator>::Item;
//          ^^^^^^^^^^^^^^^ meta.generic
//             ^^ keyword.operator
//                ^^^^^^^^ support.type
//                         ^^ punctuation.accessor
//                           ^^^^ storage.type.source

type Item = module::Temp;
//          ^^^^^^^^ meta.path.rust
//                ^^ punctuation.accessor.rust
//                  ^^^^ storage.type.source.rust
type Item = Iterator::Item;
//          ^^^^^^^^^^ meta.path.rust
//                  ^^ punctuation.accessor.rust
//                    ^^^^ storage.type.source.rust

impl Iterator for Struct {
    type Temp = i32;
    type Item = Self::Temp;
//              ^^^^^^ meta.path.rust
//              ^^^^ storage.type.rust
//                  ^^ punctuation.accessor.rust
//                    ^^^^ storage.type.source.rust

    fn next(&mut self) -> Option<Self::Item>;
//                        ^^^^^^^^^^^^^^^^^^ meta.impl.rust meta.block.rust meta.function.rust meta.function.return-type.rust meta.generic.rust
//                        ^^^^^^ support.type.rust
//                              ^ punctuation.definition.generic.begin.rust
//                               ^^^^^^ meta.path.rust - storage.type.rust storage.type.rust
//                               ^^^^ storage.type.rust
//                                   ^^ punctuation.accessor.rust - storage.type.rust
//                                     ^^^^
}
