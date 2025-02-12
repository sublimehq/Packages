// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"
// This file is for misc type definitions that don't fit in other more
// specific categories.
//
// https://doc.rust-lang.org/reference/items/type-aliases.html

type FnPointer = fn(i32) -> i32;
// <- keyword.declaration.type
//   ^^^^^^^^^ entity.name.type
//               ^^ storage.type.function
//                 ^^^^^ meta.group
//                  ^^^ storage.type
//                       ^^ punctuation.separator
//                          ^^^ storage.type

type GenFnPointer = Bar<fn(i32) -> i32>;
// <- keyword.declaration.type
//   ^^^^^^^^^^^^ entity.name.type
//                     ^^^^^^^^^^^^^^^^ meta.generic
//                      ^^ storage.type.function
//                        ^^^^^ meta.group
//                         ^^^ storage.type
//                              ^^ punctuation.separator
//                                 ^^^ storage.type
//                                     ^ - meta.generic

type GenFnPointer2 = Bar<extern "C" fn()>;
// <- keyword.declaration.type
//   ^^^^^^^^^^^^^ entity.name.type
//                      ^^^^^^^^^^^^^^^^^ meta.generic
//                       ^^^^^^ keyword.other
//                              ^^^ string.quoted.double
//                                  ^^ storage.type.function
//                                       ^ - meta.generic

const ZERO: u64 = 0;
// <- keyword.declaration.variable.constant.rust
//    ^^^^ entity.name.constant
//        ^ punctuation.separator
//          ^^^ storage.type
//              ^ keyword.operator.assignment
//                ^ constant.numeric.integer.decimal
static NAME: &'static str = "John";
// <- keyword.declaration.variable.static.rust
//     ^^^^ entity.name.constant
//           ^ keyword.operator
//            ^^^^^^^ storage.modifier.lifetime
//                    ^^^ storage.type
//                        ^ keyword.operator.assignment
//                          ^^^^^^ string.quoted.double
static mut BRAVO: u32 = 0;
// <- keyword.declaration.variable.static.rust
//     ^^^ storage.modifier
//         ^^^^^ entity.name.constant

// Function type in a box return type.
// fixes https://github.com/rust-lang/sublime-rust/issues/144
fn factory() -> Box<Fn(i32) -> i32> {
// <- keyword.declaration.function
// ^^^^^^^ entity.name.function
//                  ^^^^^^^^^^^^^^ meta.generic
//                      ^^ storage.type
//                              ^^ storage.type
//                          ^^ source meta.function meta.function.return-type
}

let x: __m128i = __m128i::from_bits(f32x4::from_bits(m32x4::new(true, true, true, true)));
// <- keyword.declaration.variable.rust
//     ^^^^^^^ storage.type
//               ^^^^^^^ storage.type
//                                  ^^^^^ meta.group storage.type
//                                                   ^^^^^ meta.group meta.group storage.type
//                                                              ^^^^ meta.group meta.group meta.group constant.language

let mut mutable = 12;
//  ^^^ storage.modifier

// Tuple types.
type Pair<'a> = (i32, &'a str);
// <- keyword.declaration.type
//   ^^^^ entity.name.type
//       ^^^^ meta.generic
//       ^ punctuation.definition.generic.begin
//        ^^ storage.modifier.lifetime
//          ^ punctuation.definition.generic.end
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
// <- keyword.declaration.variable.rust
//   ^ punctuation.separator
//         ^^^^^^^^^ meta.generic
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
//            ^^^ storage.type
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
//           ^^^ support.type.rust
//              ^^^^^^^^^^ meta.generic.rust
//              ^ punctuation.definition.generic.begin.rust
//               ^^^^^^^^ storage.type.rust
//                       ^ punctuation.definition.generic.end.rust

type ExampleRawPointer = HashMap<*const i32, Option<i32>, BuildHasherDefault<FnvHasher>>;
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.rust
//                               ^^^^^^ storage.modifier
//                                      ^^^ meta.generic storage.type
//                                         ^ punctuation.separator.rust
//                                           ^^^^^^ support.type.rust
//                                                 ^^^^^ meta.generic.rust meta.generic.rust
//                                                 ^ punctuation.definition.generic.begin.rust
//                                                  ^^^ storage.type.rust
//                                                     ^ punctuation.definition.generic.end.rust
//                                                      ^ punctuation.separator.rust
//                                                        ^^^^^^^^^^^^^^^^^^ storage.type
//                                                                          ^^^^^^^^^^^ meta.generic.rust meta.generic.rust
//                                                                          ^ punctuation.definition.generic.begin.rust
//                                                                           ^^^^^^^^^ storage.type.rust
//                                                                                    ^^ punctuation.definition.generic.end.rust
//                                                                                      ^ punctuation.terminator.rust


// Anonymous lifetimes.
impl Foo<'_, '_> { }
//       ^^ meta.impl meta.generic storage.modifier.lifetime
//           ^^ meta.impl meta.generic storage.modifier.lifetime
fn f(string: &str) -> StrWrap<'_> { }
//                            ^^ meta.function meta.function.return-type meta.generic storage.modifier.lifetime


// Never type.
fn from_str() -> Result<Foo, !> {}
//                           ^ storage.type.never.rust

// Qualified path with type.
// Note: This isn't actually a generic, but that gets reused for this purpose.
type Item = <I as Iterator> :: Item;
//          ^^^^^^^^^^^^^^^ meta.generic
//          ^ punctuation.definition.generic.begin
//           ^ storage.type
//             ^^ keyword.operator
//                ^^^^^^^^ support.type
//                        ^ punctuation.definition.generic.end
//                          ^^^^^^^ meta.path
//                          ^^ punctuation.accessor
//                             ^^^^ storage.type
//                                 ^ punctuation.terminator
//
type Item = module::Temp;
//          ^^^^^^^^ meta.path.rust
//                ^^ punctuation.accessor.rust
//                  ^^^^ storage.type.rust
type Item = Iterator::Item;
//          ^^^^^^^^^^ meta.path.rust
//                  ^^ punctuation.accessor.rust
//                    ^^^^ storage.type.rust

impl Iterator for Struct {
    type Temp = i32;
    type Item = Self::Temp;
//              ^^^^^^^^^^ meta.path.rust
//              ^^^^ storage.type.rust
//                  ^^ punctuation.accessor.rust
//                    ^^^^ storage.type.rust

    fn next(&mut self) -> Option<Self::Item>;
//                        ^^^^^^^^^^^^^^^^^^ meta.function.rust meta.function.return-type.rust
//                        ^^^^^^ support.type.rust
//                              ^^^^^^^^^^^^ meta.generic
//                              ^ punctuation.definition.generic.begin.rust
//                               ^^^^^^^^^^ meta.path.rust - storage.type.rust storage.type.rust
//                               ^^^^ storage.type.rust
//                                   ^^ punctuation.accessor.rust - storage.type.rust
//                                     ^^^^
//                                         ^ punctuation.definition.generic.end.rust
}

// Generics
type TypeAlias<T> where T: Foo = Bar<T>; // deprecated
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-declaration.rust
//   ^^^^^^^^^ entity.name.type.rust
//            ^^^ meta.generic.rust
//            ^ punctuation.definition.generic.begin.rust
//             ^ storage.type.rust
//              ^ punctuation.definition.generic.end.rust
//                ^^^^^^^^^^^^ meta.type-declaration meta.where
//                ^^^^^ keyword.other
//                      ^ storage.type
//                       ^ punctuation.separator
//                         ^^^ storage.type
//                             ^ keyword.operator.assignment - meta.type-declaration meta.type-declaration
//                                  ^^^ meta.generic
//                                     ^ punctuation.terminator

type TypeAlias<T> = /**/ Bar<T> /**/ where /**/ T: Foo; // preferred
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-declaration.rust
//   ^^^^^^^^^ entity.name.type.rust
//            ^^^ meta.generic.rust
//            ^ punctuation.definition.generic.begin.rust
//             ^ storage.type.rust
//              ^ punctuation.definition.generic.end.rust
//                ^ keyword.operator.assignment.rust - meta.type-declaration meta.type-declaration
//                  ^^^^ comment.block.rust
//                          ^^^ meta.generic.rust
//                              ^^^^ comment.block.rust
//                                   ^^^^^^^^^^^^ meta.where.rust
//                                   ^^^^^ keyword.other.rust
//                                         ^^^^ comment.block.rust
//                                              ^ storage.type.rust
//                                               ^ punctuation.separator.rust
//                                                 ^^^ storage.type.rust
//                                                    ^ punctuation.terminator.rust
