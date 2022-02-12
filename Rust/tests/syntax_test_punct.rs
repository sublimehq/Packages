// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"
// Various usages of punctuation.

/************* semicolon *************/
;
// <- punctuation.terminator
let x = 1;
//       ^ punctuation.terminator
[12; 34]
// ^ punctuation.separator
type T = [i32; 3];
//           ^ punctuation.separator
const X: i32 = 1;
//              ^ punctuation.terminator
static Y: i32 = 1;
//               ^ punctuation.terminator
extern "C" {
    fn f();
//        ^ punctuation.terminator
    static S: i32 = 1;
//                   ^ punctuation.terminator
}
trait T {
    fn f();
//        ^ punctuation.terminator
    const C: i32;
//              ^ punctuation.terminator
    type T;
//        ^ punctuation.terminator
}
extern crate name;
//               ^ punctuation.terminator
mod m;
//   ^ punctuation.terminator
struct S;
//      ^ punctuation.terminator
type T = i32;
//          ^ punctuation.terminator
use foo;
//     ^ punctuation.terminator


/************* colon *************/
match v {
    Point{x: 10, y: 20} => {}
//         ^ punctuation.separator
//                ^ punctuation.separator
}
let x: i32 = 1;
//   ^ punctuation.separator
let c = |a: i32| {}
//        ^ punctuation.separator
let s = Foo{x: 50};
//           ^ punctuation.separator
struct S {
    f1: 1,
//    ^ punctuation.separator
}
enum E {
    Foo{x: i32},
//       ^ punctuation.separator
}
'label:
//    ^ punctuation.separator
fn f<'a: 'b>(x: i32) where T: Bound {}
//     ^ punctuation.separator
//            ^ punctuation.separator
//                          ^ punctuation.separator
// See syntax_test_generics for more generics tests (all separator).
trait T: Bound {
//     ^ punctuation.separator
    type T: Bound;
//        ^ punctuation.separator
    const C: i32;
//         ^ punctuation.separator
    fn f(x: i32);
//        ^ punctuation.separator
}
static S: i32 = 1;
//      ^ punctuation.separator
const C: i32 = 1;
//     ^ punctuation.separator
type T = fn(a: i32);
//           ^ punctuation.separator


/************* comma *************/
#[cfg(a, b)]
//     ^ punctuation.separator
fn f<A, B>() where A: B, C: D {}
//    ^ punctuation.separator
//                     ^ punctuation.separator
X<A, B>
// ^ punctuation.separator
type T = Box<dyn FnOnce(i32, i32)>;
//                         ^ punctuation.separator
type T = fn(i32, i32);
//             ^ punctuation.separator
type T = (i32, i32);
//           ^ punctuation.separator
let S{f1, f2} = a;
//      ^ punctuation.separator
let (a, b) = c;
//    ^ punctuation.separator
let [a, b] = c;
//    ^ punctuation.separator
let a = [1, 2];
//        ^ punctuation.separator
let x = (a, b);
//        ^ punctuation.separator
foo(1, 2);
//   ^ punctuation.separator
let a = |a, b| {};
//        ^ punctuation.separator
fn f(a: i32, b: i32) {}
//         ^ punctuation.separator
struct S {
    f1: i32,
//         ^ punctuation.separator
}
struct S(i32, i32);
//          ^ punctuation.separator
enum E {
    Variant1,
//          ^ punctuation.separator
    Variant2{f1: i32,},
//                  ^ punctuation.separator
//                    ^ punctuation.separator
    Variant3(i32, i32),
//              ^ punctuation.separator
//                    ^ punctuation.separator
}
Foo{f1: a,};
//       ^ punctuation.separator
Foo(a, b);
//   ^ punctuation.separator
match a {
    x => 1,
//        ^ punctuation.separator
}
use a::{a,b};
//       ^ punctuation.separator


/************* ligatures *************/
// This is mostly for visual inspection.
foo!{<- -> =>}  // emplacement token (unused in language)
//   ^^ keyword.operator
//      ^^ punctuation.separator
//         ^^ keyword.operator
fn f() -> i32 {1}
//     ^^ punctuation.separator
 a && b || c;
// ^^ keyword.operator.logical
//      ^^ keyword.operator.logical
 1 << 2 >> 3;
// ^^ keyword.operator.bitwise
//      ^^ keyword.operator.bitwise
 a += 1; b -= 1; c *= 1; d /= 1; e %= 1; f ^= 1; g &= 1; h |= 1;
// ^^ keyword.operator.assignment
//         ^^ keyword.operator.assignment
//                 ^^ keyword.operator.assignment
//                         ^^ keyword.operator.assignment
//                                 ^^ keyword.operator.assignment
//                                         ^^ keyword.operator.assignment
//                                                 ^^ keyword.operator.assignment
//                                                         ^^ keyword.operator.assignment
 a <<= 1; b >>= 2;
// ^^^ keyword.operator.assignment
//          ^^^ keyword.operator.assignment
 x == y; x != y;
// ^^ keyword.operator.comparison
//         ^^ keyword.operator.comparison
 a >= b; a <= b;
// ^^ keyword.operator.comparison
//         ^^ keyword.operator.comparison
 1..2; 1...2; 1..=2;
//^^ keyword.operator.range
//      ^^^ keyword.operator.range
//             ^^^ keyword.operator.range
match x { a => {}}
//          ^^ meta.block keyword.operator
