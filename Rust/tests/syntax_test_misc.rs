// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"
// Random things that don't deserve a file on their own.

// Unsafe
let x = unsafe { }
//      ^^^^^^ storage.modifier
unsafe impl<T> Send for Interned<T> {}
// <- storage.modifier
//^^^^ storage.modifier
pub unsafe trait Alloc { }
//  ^^^^^^ storage.modifier
fn f(a: unsafe fn() -> String) {}
//      ^^^^^^ meta.function meta.function.parameters storage.modifier
//             ^^ meta.function meta.function.parameters storage.type.function

// Previously reserved keywords now unreserved.
let pure = 1;
//  ^^^^ -invalid.illegal.rust
let sizeof = 1;
//  ^^^^^^ -invalid.illegal.rust
let alignof = 1;
//  ^^^^^^^ -invalid.illegal.rust
let offsetof = 1;
//  ^^^^^^^^ -invalid.illegal.rust
let proc = 1;
//  ^^^^ -invalid.illegal.rust

// Reserved keywords.
let virtual = 1;
//  ^^^^^^^ invalid.illegal.rust
let become = 1;
//  ^^^^^^ invalid.illegal.rust
let priv = 1;
//  ^^^^ invalid.illegal.rust
let typeof = 1;
//  ^^^^^^ invalid.illegal.rust
let unsized = 1;
//  ^^^^^^^ invalid.illegal.rust
let do = 1;
//  ^^ invalid.illegal.rust
let abstract = 1;
//  ^^^^^^^^ invalid.illegal.rust
let final = 1;
//  ^^^^^ invalid.illegal.rust
let override = 1;
//  ^^^^^^^^ invalid.illegal.rust
let macro = 1;
//  ^^^^^ invalid.illegal.rust

// async/await
let x = async {}
//      ^^^^^ keyword.control.rust
let y = future.await;
//             ^^^^^ keyword.control.rust

// try keyword in 2018 edition
let x = try {}
//      ^^^ keyword.control.rust

// Performance test for catastrophic backtracking.
impl ApplicationPreferenceseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee {
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.impl
}
