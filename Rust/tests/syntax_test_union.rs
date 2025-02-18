// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

union Union {
//^^^ meta.union keyword.declaration.union
//^^^^^^^^^^^ meta.union
//    ^^^^^ entity.name.union
//          ^ meta.block punctuation.section.block.begin
    f: u32,
//  ^ meta.union meta.block variable.other.member
//   ^ meta.union meta.block punctuation.separator
//     ^^^ meta.union meta.block storage.type
}
// <- meta.union meta.block punctuation.section.block.end

pub union Foo<'a, Y: Baz>
// <- storage.modifier
//  ^^^^^^^^^^^^^^^^^^^^^ meta.union
//  ^^^^^ meta.union keyword.declaration.union
//        ^^^ meta.union meta.generic entity.name.union
//           ^ meta.union meta.generic meta.generic punctuation.definition.generic.begin
//            ^^ meta.union meta.generic meta.generic storage.modifier.lifetime
    where X: Whatever,
//  ^^^^^ meta.union meta.where keyword.other
//        ^ meta.union meta.where
//         ^ meta.union meta.where punctuation.separator
//           ^^^^^^^^^^ meta.union meta.where
{
// <- meta.union meta.block punctuation.section.block.begin
    f: SomeType, // Comment beside a field
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.union meta.block comment.line.double-slash
}
// <- meta.union meta.block punctuation.section.block.end

// Union was implemented in such a way that `union` is not a keyword.  Verify
// that we don't accidentally interpret it as a keyword.
fn union() {}
// ^^^^^ meta.function entity.name.function

(Scopes::Character.union(Scopes::Unit).union(Scopes::Legion), "add_legion_history", Unchecked)
//                ^ meta.group punctuation.accessor.dot
//                 ^^^^^ variable.function - storage.type.union
//                      ^ punctuation.section.group.begin
//                       ^^^^^^ storage.type.rust
//                             ^^ punctuation.accessor
//                               ^^^^ storage.type.rust
//                                   ^ punctuation.section.group.end
//                                    ^ punctuation.accessor.dot
//                                     ^^^^^ variable.function - storage.type.union


union /*comment*/ U {}
//    ^^^^^^^^^^^ meta.union comment.block
