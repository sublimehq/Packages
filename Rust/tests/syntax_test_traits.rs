// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

pub trait Animal {
// <- storage.modifier
//  ^^^^^^^^^^^^^^ meta.trait
//               ^ meta.block punctuation.section.block.begin
    fn noise(quiet: bool) {
        // Comment
    }

    // Some tests for no-body functions.
    fn bare_semi();
//  ^^^^^^^^^^^^^^ meta.function
//                ^ punctuation.terminator
    fn where_semi<X>() where X: Ord + PartialOrd;
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function meta.where
//                                  ^ keyword.operator.arithmetic.union.rust
//                                              ^ punctuation.terminator
    fn return_semi() -> bool;
//                   ^^^^^^^ meta.function meta.function.return-type
//                          ^ punctuation.terminator
}
// <- meta.trait meta.block punctuation.section.block.end

impl<'a, T: MyTrait + OtherTrait> PrintInOption for T where
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//   ^^ storage.modifier.lifetime
//        ^ punctuation.separator
//                  ^ keyword.operator
//                                              ^^^ keyword.other
//                                                  ^ entity.name.impl
//                                                    ^^^^^ meta.where keyword.other
    Option<T>: Debug {
//^^^^^^^^^^^^^^^^^^^^ meta.impl
    fn print_in_option(self) {
//     ^^^^^^^^^^^^^^^ entity.name.function
        println!("{:?}", Some(self));
    }
}

impl fmt::Display for PrintableStruct {
// <- meta.impl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
// <- keyword.declaration.impl
//^^ keyword.declaration.impl
//   ^^^^^ meta.path
//      ^^ punctuation.accessor
//                ^^^ keyword.other
//                    ^^^^^^^^^^^^^^^ entity.name.impl
//                                    ^ meta.block punctuation.section.block.begin
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^ keyword.declaration.function
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
//                                                       ^ meta.block punctuation.section.block.begin
    }
// ^^ meta.function meta.block
//  ^ punctuation.section.block.end
}
// <- meta.block punctuation.section.block.end

impl !Send for Point {}
//^^^^^^^^^^^^^^^^^^^^^ meta.impl
//   ^ meta.impl keyword.operator meta.impl.opt-out

impl<T: ?Sized> !marker::Sync for Rc<T> {}
//  ^^^^^^^^^^^ meta.impl.rust meta.generic.rust
//  ^ punctuation.definition.generic.begin.rust
//   ^ storage.type.rust
//    ^ punctuation.separator.rust
//      ^ storage.modifier.relaxed-bounds.rust
//       ^^^^^ support.type.rust
//            ^ punctuation.definition.generic.end.rust
//              ^ meta.impl.rust keyword.operator.rust meta.impl.opt-out.rust
//               ^^^^^^^^^^^^ meta.impl.rust meta.path.rust
//                       ^^^^ meta.impl.rust support.type.rust
//                            ^^^ meta.impl.rust keyword.other.rust
//                                ^^ meta.impl.rust meta.generic.rust entity.name.impl.rust

// Trait bounds and type parameters.
trait Foo: 'static {}
//^^^^^^^^^^^^^^^^^^^ meta.trait
//       ^ meta.where punctuation.separator
//         ^^^^^^^ meta.where storage.modifier.lifetime
//                 ^^ meta.block
trait Foo<'a>: Sized {}
//^^^^^^^^^^^^^^^^^^^^^ meta.trait
//        ^^ meta.generic storage.modifier.lifetime
//             ^^^^^ meta.where support.type
trait Executor: Send + !Sync + !marker::Send + 'static {}
//              ^^^^ meta.trait meta.where support.type
//                     ^ keyword.operator.negated-type.rust
//                      ^^^^ meta.trait meta.where support.type
//                             ^ keyword.operator.negated-type.rust
//                                             ^^^^^^^ meta.trait meta.where storage.modifier.lifetime
trait RcBoxPtr<T: ?Sized> {}
//            ^^^^^^^^^^^ meta.trait meta.generic
//                ^ storage.modifier.relaxed-bounds.rust
//                 ^^^^^ support.type
trait Circle where Self: Shape {}
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait
//           ^^^^^^^^^^^^^^^^^^ meta.trait meta.where
//           ^^^^^ keyword.other
//                 ^^^^ storage.type
trait BorrowMut<Borrowed: ?Sized> : Borrow<Borrowed> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait
//             ^^^^^^^^^^^^^^^^^^ meta.generic
//                                ^ meta.trait meta.where punctuation.separator
trait Add<RHS=Self> {}
//       ^^^^^^^^^^ meta.trait meta.generic
//           ^ keyword.operator
//            ^^^^ storage.type
trait Wedding<'t>: 't {}
//            ^^ meta.trait meta.generic storage.modifier.lifetime
//                 ^^ meta.trait meta.where storage.modifier.lifetime
trait IntoCow<'a, B: ?Sized> where B: ToOwned {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait
//            ^^ meta.generic storage.modifier.lifetime
//                   ^ storage.modifier.relaxed-bounds.rust
//                    ^^^^^ meta.generic support.type
//                           ^^^^^ meta.where keyword.other
//                                    ^^^^^^^ meta.where support.type
trait Bar: for<'a> Foo<&'a ()> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait
//         ^^^ meta.where keyword.other
//             ^^ meta.where meta.generic storage.modifier.lifetime
//                     ^ meta.where meta.generic keyword.operator
//                      ^^ meta.where meta.generic storage.modifier.lifetime

trait t {}
//    ^ meta.trait entity.name.trait

// <- - meta
