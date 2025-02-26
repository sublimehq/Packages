// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

struct GenVal<T>(T,);
//     ^^^^^^^^^ meta.generic
//     ^^^^^^ entity.name.struct
//           ^ punctuation.definition.generic.begin - entity.name.struct
//             ^ punctuation.definition.generic.end

// Ensure that `mut` is a storage modifier.
impl<A> Thing for &'a mut A {}
//            ^^^ meta.impl keyword.other
//                ^ meta.impl keyword.operator
//                 ^^ meta.impl storage.modifier.lifetime
//                    ^^^ meta.impl storage.modifier
//                        ^ meta.impl entity.name.impl

// Various tests on `where`.
fn f<'b: 'a>(self) -> &'b mut [i32] where 'a: 'b { }
//                 ^^^^^^^^^^^^^^ meta.function meta.function.return-type
//                            ^ meta.function meta.function.return-type punctuation.section.group.begin
//                             ^^^ meta.function meta.function.return-type storage.type
//                                ^ meta.function meta.function.return-type punctuation.section.group.end
//                                  ^^^^^ meta.function meta.where keyword.other
//                                        ^^ meta.function meta.where storage.modifier.lifetime
//                                          ^ meta.function meta.where punctuation.separator
//                                            ^^ meta.function meta.where storage.modifier.lifetime
//                                               ^ meta.function meta.block punctuation.section.block.begin
//                                                 ^ meta.function meta.block punctuation.section.block.end

fn f<F>(func: F) -> usize
//               ^^ meta.function meta.function.return-type punctuation.separator
//                  ^^^^^ meta.function meta.function.return-type storage.type
    where F: Fn(usize) -> usize {}
//  ^^^^^ meta.function meta.where keyword.other
//        ^^^^^^^^^^^^^^^^^^^^^ meta.function meta.where
//         ^ punctuation.separator
//           ^^ support.type
//             ^ punctuation.section.group.begin
//              ^^^^^ storage.type
//                   ^ punctuation.section.group.end
//                     ^^ meta.function.return-type punctuation.separator
//                        ^^^^^ meta.function.return-type storage.type
//                              ^ meta.function meta.block punctuation.section.block.begin
//                               ^ meta.function meta.block punctuation.section.block.end

fn f<L, R>(lhs: L, rhs: R)
    where L: IntoIterator<Item=(&'a i32, &'a i32)>,
//  ^^^^^ meta.function meta.where keyword.other
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.where
//           ^^^^^^^^^^^^ support.type
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//                       ^ punctuation.definition.generic.begin
//                             ^ punctuation.section.group.begin
//                              ^ keyword.operator
//                               ^^ storage.modifier.lifetime
//                                  ^^^ storage.type
//                                       ^ keyword.operator
//                                        ^^ storage.modifier.lifetime
//                                           ^^^ storage.type
//                                              ^ punctuation.section.group.end
//                                               ^ punctuation.definition.generic.end
          R: IntoIterator<Item=(&'a i32, &'a i32)>, {}
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.where
//                                                  ^ meta.function meta.block punctuation.section.block.begin
//                                                   ^ meta.function meta.block punctuation.section.block.end
fn f<F: Fn(usize) -> usize>(func: f) {}
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//  ^ meta.generic punctuation.definition.generic.begin
//    ^ meta.generic punctuation.separator
//      ^^ meta.generic support.type
//        ^ meta.generic punctuation.section.group.begin
//         ^^^^^ meta.generic storage.type
//              ^ meta.generic punctuation.section.group.end
//                   ^^^^^ meta.generic meta.function.return-type storage.type
//                        ^ meta.generic punctuation.definition.generic.end
//                         ^ meta.function meta.function.parameters punctuation.section.parameters.begin
//                          ^^^^ meta.function meta.function.parameters variable.parameter
fn f<L: IntoIterator<Item=(&'a i32, &'a i32)>>(lhs: L) {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//  ^ punctuation.definition.generic.begin
//                  ^ punctuation.definition.generic.begin
//                       ^ keyword.operator
//                        ^^^^^^^^^^^^^^^^^^ meta.group
//                        ^ punctuation.section.group.begin
//                          ^^ storage.modifier.lifetime
//                             ^^^ storage.type
//                                ^ punctuation.separator
//                                         ^ punctuation.section.group.end
//                                          ^ punctuation.definition.generic.end
//                                           ^ punctuation.definition.generic.end
//                                            ^ meta.function meta.function.parameters punctuation.section.parameters.begin

struct A<T>(T) where T: AsRef<str>;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
//                            ^^^ meta.struct meta.where storage.type
//                                ^ punctuation.terminator
//             ^^^^^ meta.struct meta.where keyword.other
pub struct A<T>(T)
//  ^^^^^^^^^^ meta.struct
//  ^^^^^^ meta.struct keyword.declaration
where
//^^^ meta.struct meta.where keyword.other
    T: AsRef<str>;
//^^^^^^^^^^^^^^^ meta.struct
//           ^^^ meta.struct meta.where storage.type
//               ^ punctuation.terminator

pub struct IterHolder<A> where A: Number {
//                   ^^^ meta.struct meta.generic
//                       ^^^^^ meta.struct meta.where keyword.other
//                                ^^^^^^ meta.struct meta.where
//                                       ^ meta.struct punctuation.section.block.begin
    num: A
}

pub struct IterHolder<A>
//                   ^^^ meta.struct meta.generic
where
//   <- meta.struct meta.where keyword.other
    A: Number {
//     ^^^^^^ meta.struct meta.where
    num: A
}

pub fn new<T>() -> Fibonacci<T>
    where T: One + Zero,
//  ^^^^^ keyword.other
    for <'a> &'a T: Add<Output = T>,
//  ^^^ keyword.other
//      ^ punctuation.definition.generic.begin
//       ^^ storage.modifier.lifetime
//         ^ punctuation.definition.generic.end
//           ^ keyword.operator
//            ^^ storage.modifier.lifetime
{
    unimplemented!();
}

pub fn new<T>() -> Fibonacci<T>
    where for <'a> &'a T: Add<Output = T>,
//  ^^^^^ meta.where keyword.other
//        ^^^ keyword.other
//            ^ punctuation.definition.generic.begin
//             ^^ storage.modifier.lifetime
//               ^ punctuation.definition.generic.end
//                 ^ keyword.operator
//                  ^^ storage.modifier.lifetime
{
    unimplemented!();
}

impl<T> Fibonacci<T>
    where for <'a> &'a T: Add<Output = T>,
//  ^^^^^ keyword.other
//        ^^^ keyword.other
//            ^ punctuation.definition.generic.begin
//             ^^ storage.modifier.lifetime
//               ^ punctuation.definition.generic.end
//                 ^ keyword.operator
//                  ^^ storage.modifier.lifetime
{
    unimplemented!();
}

impl<T> Iterator for Fibonacci<T>
    where T: Clone,
//  ^^^^^ keyword.other
    for <'a> &'a T: Add<Output = T>,
//  ^^^ keyword.other
//      ^ punctuation.definition.generic.begin
//       ^^ storage.modifier.lifetime
//         ^ punctuation.definition.generic.end
//           ^ keyword.operator
//            ^^ storage.modifier.lifetime
{
    unimplemented!();
}

pub const FOO: Option<[i32; 1]> = Some([1]);
//                    ^ punctuation.section.group.begin
//                           ^ punctuation.section.group.end

#[derive(Clone)]
pub struct GobletMiddleware<B: Backend + ?Sized + 'static> {
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//                                                ^^^^^^^ storage.modifier.lifetime
    pub derp: Arc<Api<B>>,
}

impl<B: Backend + ?Sized + 'static> GobletMiddleware<B> {
// <- meta.impl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//                         ^^^^^^^ storage.modifier.lifetime
//                                  ^^^^^^^^^^^^^^^^^^^ meta.generic
    pub fn new(api: Arc<Api<B>>) -> GobletMiddleware<B> {
        GobletMiddleware { derp: api }
    }
}

impl<B: Backend + ?Sized + 'static> Key for GobletMiddleware<B> {
// <- meta.impl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//                         ^^^^^^^ storage.modifier.lifetime
//                                      ^^^ keyword.other
//                                          ^^^^^^^^^^^^^^^^ entity.name.impl
//                                                          ^^^ meta.generic
    type Value = Arc<Api<B>>;
}

impl<T> From<AsRef<T>> for CliError<T> { }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//                         ^^^^^^^^ entity.name.impl
//                                 ^^^ meta.generic

fn legal_dates_iter() -> Box<Iterator<Item = Date<UTC>>> {
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.return-type
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//                                   ^^^^^^^^^^^^^^^^^^ meta.generic meta.generic
//                                               ^^^^^ meta.generic meta.generic meta.generic
//                                         ^ keyword.operator
    unimplemented!()
}

fn numbers() -> impl Iterator<Item = u64> {
//              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.return-type
//              ^^^^ meta.function.return-type storage.type.impl
//                   ^^^^^^^^ meta.function.return-type support.type
//                           ^^^^^^^^^^^^ meta.function.return-type meta.generic
    Generator(move || for a in (0..10) { yield a; } })
//                                       ^^^^^ keyword.control
}

fn collect_vec() {
    let _: Vec<(usize, usize)> = (0..10).enumerate().collect::<Vec<_>>();
//            ^^^^^^^^^^^^^^^^ meta.generic
//         ^^^ support.type
//             ^ punctuation.section.group.begin
//              ^^^^^ storage.type
//                     ^^^^^ storage.type
//                          ^ punctuation.section.group.end
//                             ^ keyword.operator
//                               ^ punctuation.section.group.begin
//                                ^ constant.numeric.integer.decimal
//                                 ^^ keyword.operator
//                                   ^^ constant.numeric.integer.decimal
//                                     ^ punctuation.section.group.end
//                                      ^ punctuation.accessor.dot
//                                       ^^^^^^^^^ variable.function
//                                                ^^ punctuation.section.group
//                                                  ^ punctuation.accessor.dot
//                                                          ^^ punctuation.accessor
//                                                             ^^^ support.type
//                                                            ^^^^^^^^ meta.generic
//                                                                ^^^ meta.generic meta.generic
//                                                                 ^ storage.type.inference.rust
    let _: Vec<(usize, usize)> = vec!();
//                               ^^^^ support.macro
    let _: Vec<(usize, usize)> = vec!{};
//                               ^^^^ support.macro
    let _: Vec<(usize, usize)> = vec![];
//                               ^^^^ support.macro
    let _: Vec<String> = vec![];
//             ^^^^^^ meta.generic support.type
}


pub fn next_lex<T:PartialOrd>(/* block */data: &mut [T] // line {
//                            ^^^^^^^^^^^ source meta.function meta.function.parameters comment.block
//                                                      ^^^^^^^^^ source meta.function meta.function.parameters comment.line.double-slash
    /* block2 */ data2: &mut [T]  // line
//  ^^^^^^^^^^^^ source meta.function meta.function.parameters comment.block
//                                ^^^^^^^ source meta.function meta.function.parameters comment.line.double-slash
    ) -> bool {
    unimplemented!();
}

pub fn next_lex2</* block */T/* comments */:/* everywhere */
//               ^^^^^^^^^^^ comment.block
//                           ^^^^^^^^^^^^^^ comment.block
//                                          ^^^^^^^^^^^^^^^^ comment.block
    // Many comments
//  ^^^^^^^^^^^^^^^^ comment.line.double-slash
    /* help */ PartialOrd // Possibly too many comments
//  ^^^^^^^^^^ comment.block
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash
> (
    /* block2 */ data2: &mut [T]  // line
//  ^^^^^^^^^^^^ source meta.function meta.function.parameters comment.block
//                                ^^^^^^^ source meta.function meta.function.parameters comment.line.double-slash
    ) -> bool {
    unimplemented!();
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

pub fn from_buf_reader<T>(s: io::BufReader<T>) -> Result<isize, &'static str>
//                                                              ^ keyword.operator
//                                                               ^^^^^^^ meta.function meta.function.return-type meta.generic storage.modifier.lifetime
    where T: io::Read
//  ^^^^^ keyword.other
{}

// HRTB in various positions.
fn f<F: for<'c> Fn(&'c mut Self)>() {}
//      ^^^ meta.generic keyword.other
//         ^ meta.generic meta.generic punctuation.definition.generic.begin
//          ^^ meta.generic meta.generic storage.modifier.lifetime
//            ^ meta.generic meta.generic punctuation.definition.generic.end
//              ^^ meta.generic support.type
fn f(a: for<'a, 'b> fn() -> String) {}
//   ^ variable.parameter
//   ^^^^^^^^^^^^^^ meta.function meta.function.parameters
//      ^^^ keyword.other
//         ^ meta.generic punctuation.definition.generic.begin
//          ^^ meta.generic storage.modifier.lifetime
//            ^ meta.generic punctuation.separator
//              ^^ meta.generic storage.modifier.lifetime
//                ^ meta.function meta.function.parameters meta.generic punctuation.definition.generic.end

// Function in type path with return type.
fn factory() -> Box<Fn(i32) -> i32> {
// <- keyword.declaration.function
// ^^^^^^^ entity.name.function
//                 ^^^^^^^^^^^^^^^^ meta.generic
//                  ^^ support.type
//                    ^ punctuation.section.group.begin
//                     ^^^ storage.type
//                        ^ punctuation.section.group.end
//                          ^^ punctuation.separator
//                             ^^^ storage.type
    Box::new(|x| x + 1)
}

// Const generics.
trait Foo<const N: usize> {
//       ^^^^^^^^^^^^^^^^ meta.trait meta.generic
//       ^ punctuation.definition.generic.begin
//        ^^^^^ storage.modifier
//               ^ meta.trait meta.generic punctuation.separator
//                 ^^^^^ storage.type
//                      ^ punctuation.definition.generic.end
    fn method<const M: usize>(&mut self, arr: [[u8; M]; N]);
//           ^^^^^^^^^^^^^^^^ meta.generic
//           ^ punctuation.definition.generic.begin
//            ^^^^^ storage.modifier
//                   ^ punctuation.separator
//                     ^^^^^ storage.type
//                          ^ punctuation.definition.generic.end
}

struct Bar<T, const N: usize> {
//        ^^^^^^^^^^^^^^^^^^^ meta.struct meta.generic
//        ^ punctuation.definition.generic.begin
//          ^ punctuation.separator
//            ^^^^^ storage.modifier
//                   ^ punctuation.separator
//                     ^^^^^ storage.type
//                          ^ punctuation.definition.generic.end
    inner: [T; N],
}

impl<const N: usize> Foo<N> for Bar<u8, N> {
//  ^^^^^^^^^^^^^^^^ meta.impl meta.generic
//  ^ punctuation.definition.generic.begin
//   ^^^^^ storage.modifier
//          ^ punctuation.separator
//            ^^^^^ storage.type
//                 ^ punctuation.definition.generic.end
    fn method<const M: usize>(&mut self, arr: [[u8; M]; N]) {}
}

struct Bool<const N: bool>;
//         ^^^^^^^^^^^^^^^ meta.struct meta.generic
//         ^ punctuation.definition.generic.begin
//          ^^^^^ storage.modifier
//                 ^ punctuation.separator
//                   ^^^^ storage.type
//                       ^ punctuation.definition.generic.end
struct Char<const N: char>;
struct Int<const N: i32>;
struct Byte<const N: u8>;

fn function<const N: u16>() {
    const fn foo(x: bool) -> usize { 2 }
    let x: Bar<i32, 1> = Bar { inner: [1; 1] };
//            ^^^^^^^^ meta.function meta.block meta.generic
//            ^ meta.function meta.block meta.generic punctuation.definition.generic.begin
//             ^^^ meta.function meta.block meta.generic storage.type
//                ^ meta.function meta.block meta.generic punctuation.separator
//                  ^ meta.function meta.block meta.generic constant.numeric.integer.decimal
//                   ^ meta.function meta.block meta.generic punctuation.definition.generic.end
    let y: Bar<i32, { foo(1 > 2) / 2 }> = Bar { inner: [1; 1] };
//            ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.block meta.generic
//            ^ punctuation.definition.generic.begin
//                  ^^^^^^^^^^^^^^^^^^ meta.block
//                    ^^^ variable.function
//                       ^ meta.group punctuation.section.group.begin
//                          ^ keyword.operator.comparison
//                             ^ punctuation.section.group.end
//                               ^ keyword.operator.arithmetic
//                                 ^ constant.numeric.integer.decimal
//                                   ^ punctuation.section.block.end
//                                    ^ punctuation.definition.generic.end
    let b: Bool<true>;
//              ^^^^ meta.function meta.block meta.generic constant.language
    let c: Char<'∂'>;
//              ^^^ meta.function meta.block meta.generic string.quoted.single
//              ^ punctuation.definition.string.begin
//                ^ punctuation.definition.string.end
    let i: Int<-1>;
//            ^^^^ meta.function meta.block meta.generic
//             ^ keyword.operator.arithmetic
//              ^ constant.numeric.integer.decimal
    let i: Int<0b1011>;
//             ^^^^^^ meta.function meta.block meta.generic constant.numeric.integer.binary
    let i: Int<4i32>;
//            ^^^^^^ meta.function meta.block meta.generic
//             ^ constant.numeric.integer.decimal
//              ^^^ storage.type.numeric
    let b: Byte<b'a'>;
//             ^^^^^^ meta.function meta.block meta.generic
//              ^^^^ string.quoted.single
//              ^ storage.type.string
//               ^ punctuation.definition.string.begin
//                 ^ punctuation.definition.string.end
}

fn impl_trait_return_use_bound<'a>() -> impl for<'b> Trait1<Item = impl Trait2<'a> + use<'a>> {}
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.function.return-type
//                                   ^^ punctuation.separator
//                                      ^^^^ storage.type.impl
//                                           ^^^ keyword.other
//                                              ^ meta.generic punctuation.definition.generic.begin
//                                                 ^ meta.generic punctuation.definition.generic.end
//                                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//                                                         ^ meta.generic punctuation.definition.generic.begin
//                                                               ^ meta.generic keyword.operator
//                                                                 ^^^^ meta.generic storage.type.impl
//                                                                            ^^^^ meta.generic meta.generic
//                                                                            ^ punctuation.definition.generic.begin
//                                                                             ^^ storage.modifier.lifetime
//                                                                               ^ punctuation.definition.generic.end
//                                                                                 ^ keyword.operator
//                                                                                   ^^^ keyword.other
//                                                                                      ^^^^ meta.generic
//                                                                                      ^ punctuation.definition.generic.begin
//                                                                                       ^^ storage.modifier.lifetime
//                                                                                         ^ punctuation.definition.generic.end
//                                                                                          ^ punctuation.definition.generic.end

fn impl_trait_use<'a, foo>() -> impl Trait1 + use<'a, Self, foo> {}
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.function.return-type
//                                          ^ keyword.operator
//                                            ^^^ keyword.other
//                                               ^ punctuation.definition.generic.begin
//                                                ^^ storage.modifier.lifetime
//                                                  ^ punctuation.separator
//                                                    ^^^^ keyword.other
//                                                        ^ punctuation.separator
//                                                          ^^^ storage.type.rust
//                                                             ^ punctuation.definition.generic.end

fn impl_trait_return1<'a, 'b>() -> impl Trait<&'a u8, Ty = impl Sized + 'b> {}
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.function.return-type
//                              ^^ punctuation.separator
//                                 ^^^^ storage.type.impl
//                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.generic
//                                           ^ punctuation.definition.generic.begin
//                                            ^ keyword.operator
//                                             ^^ storage.modifier.lifetime
//                                                ^^ storage.type
//                                                  ^ punctuation.separator
//                                                       ^ keyword.operator
//                                                         ^^^^ storage.type.impl
//                                                              ^^^^^ support.type
//                                                                    ^ keyword.operator
//                                                                      ^^ storage.modifier.lifetime
//                                                                        ^ punctuation.definition.generic.end
fn impl_trait_return2() -> impl Debug + 'a {}
//                      ^^^^^^^^^^^^^^^^^^ meta.function meta.function.return-type
//                         ^^^^ storage.type.impl
//                              ^^^^^ storage.type.rust
//                                    ^ keyword.operator
//                                      ^^ storage.modifier.lifetime

fn impl_trait_param(x: impl FnOnce(&[u8]) -> &[u8])  {}
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.function.parameters
//                     ^^^^ storage.type.impl
//                          ^^^^^^ support.type
//                                ^ meta.group punctuation.section.group.begin
//                                 ^ meta.group keyword.operator
//                                  ^ meta.group punctuation.section.group.begin
//                                   ^^ meta.group storage.type
//                                     ^^ meta.group punctuation.section.group.end
//                                        ^^^^^^^^ meta.function meta.function.parameters meta.function.return-type
//                                        ^^ punctuation.separator
//                                           ^ meta.function.parameters keyword.operator
//                                            ^ meta.function.parameters punctuation.section.group.begin
//                                             ^^ meta.function.parameters storage.type
//                                               ^ meta.function.parameters punctuation.section.group.end


fn impl_trait_with_plus() -> impl Iterator<Item = hir::GenericParam<'hir>> + Captures<'a> + Captures<'s> {}
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.function.return-type
//                           ^^^^ storage.type.impl
//                                ^^^^^^^^ support.type
//                                        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic - meta.generic meta.generic
//                                         ^^^^ storage.type.rust
//                                              ^ keyword.operator
//                                                ^^^ variable.other.rust
//                                                   ^^ punctuation.accessor.rust
//                                                     ^^^^^^^^^^^^ storage.type.rust
//                                                                 ^^^^^^ meta.generic meta.generic
//                                                                  ^^^^ storage.modifier.lifetime
//                                                                       ^ meta.generic - meta.generic meta.generic
//                                                                         ^ keyword.operator
//                                                                           ^^^^^^^^ storage.type.rust
//                                                                                   ^^^^ meta.generic
//                                                                                    ^^ storage.modifier.lifetime
//                                                                                        ^ keyword.operator
//                                                                                          ^^^^^^^^ storage.type.rust
//                                                                                                  ^^^^ meta.generic
//                                                                                                   ^^ storage.modifier.lifetime

fn impl_trait() -> impl Type use < {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.rust
//              ^^^^^^^^^^^^^^^^^^^ meta.function.return-type.rust
//                 ^^^^ storage.type.impl.rust
//                      ^^^^ storage.type.rust
//                           ^^^ keyword.other.rust
//                               ^^ meta.generic.rust
//                               ^ punctuation.definition.generic.begin.rust
//                                 ^^ meta.block.rust
