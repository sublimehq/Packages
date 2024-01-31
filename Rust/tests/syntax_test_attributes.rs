// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

#![warn(unused)]
// <- meta.annotation punctuation.definition.annotation
//^^^^^^^^^^^^^^ meta.annotation
//^ punctuation.section.group.begin
// ^^^^ variable.annotation
//     ^^^^^^^^ meta.annotation.parameters meta.group
//     ^ punctuation.section.group.begin
//            ^ punctuation.section.group.end
//             ^ punctuation.section.group.end

  # [ macro_use ]
//^^^^^^^^^^^^^^^ meta.annotation
//^ punctuation.definition.annotation
//  ^ punctuation.section.group.begin
//    ^^^^^^^^^ variable.annotation
//              ^ punctuation.section.group.end

#[cfg(all(unix, not(target_os = "haiku")))]
// <- meta.annotation punctuation.definition.annotation
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//^^^ variable.annotation
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters meta.group
//   ^ punctuation.section.group.begin
//    ^^^ meta.function-call variable.function
//       ^ meta.annotation.parameters meta.group meta.function-call meta.group punctuation.section.group.begin
//            ^ punctuation.separator
//              ^^^ meta.function-call meta.function-call variable.function
//                 ^ punctuation.section.group.begin
//                            ^ keyword.operator.assignment
//                              ^^^^^^^ string.quoted.double
//                                     ^ punctuation.section.group.end
//                                      ^ punctuation.section.group.end
//                                       ^ punctuation.section.group.end
//                                        ^ punctuation.section.group.end

// Test highlighting/scope with struct field attributes
// https://github.com/rust-lang/sublime-rust/issues/120
pub struct Claim {
//  ^^^^^^^^^^^^^^^ meta.struct.rust
//  ^^^^^^ keyword.declaration.struct.rust
    pub claim_id: String,
//  ^^^ storage.modifier
    pub patient_id: String,
    #[serde(skip_serializing_if="Option::is_none")]
//                               ^^^^^^^^^^^^^^^ string.quoted.double
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
    pub referring: Option<String>,
    #[serde(skip_serializing_if="Option::is_none")]
//    ^^^^^ variable.annotation
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
    pub drug: Option<Vec<String>>,
    #[serde(skip_serializing_if="Option::is_none")]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
    pub ndc: Option<Vec<String>>,
    #[serde(skip_serializing_if="Option::is_none")]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
    pub rendering: Option<String>,
    pub date: String,
}

enum E {
    #[allow(dead_code)]
//  ^^^^^^^^^^^^^^^^^^^ meta.enum meta.annotation
//    ^^^^^ variable.annotation
    A(i32),
//  ^^^^^^^^ meta.block.rust meta.enum.rust
//    ^^^ storage.type
    BadInt(#[from] ParseIntError),
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.rust meta.enum.rust
//         ^^^^^^^ meta.annotation

}

// Generic parameters.
unsafe impl<#[may_dangle] T: ?Sized> Drop for Box<T> { }
//     ^^^^ keyword.declaration.impl
//          ^^^^^^^^^^^^^ meta.annotation
//         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.impl meta.generic

  #[test = "foo ] bar"]
//^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//^ punctuation.definition.annotation
// ^ punctuation.section.group.begin
//  ^^^^ variable.annotation
//       ^ keyword.operator.assignment
//         ^^^^^^^^^^^ string.quoted.double
//                    ^ punctuation.section.group.end

// All the things.
  # ! [
//^^^^^^ meta.annotation
//^ punctuation.definition.annotation
//  ^ punctuation.definition.annotation
//    ^ punctuation.section.group.begin
    // comment
//  ^^^^^^^^^^^ comment.line.double-slash
    attr_name (
//  ^^^^^^^^^ variable.annotation
//            ^ meta.annotation.parameters meta.group punctuation.section.group.begin
        // comment
//      ^^^^^^^^^^^ comment.line.double-slash
        "string",
//      ^^^^^^^^ string.quoted.double
//              ^ punctuation.separator
        r##"raw"##,
//      ^^^^^^^^^^ string.quoted.double.raw
        b"bytes",
//      ^ storage.type.string
//      ^^^^^^^^ string.quoted.double
        br"raw byte",
//      ^^^^^^^^^^^^ string.quoted.double.raw
        'c',
//      ^^^ string.quoted.single
        b'c',
//      ^^^^ string.quoted.single
        1_000,
//      ^^^^^ constant.numeric.integer.decimal
        1.618,
//      ^^^^^ constant.numeric.float
        true,
//      ^^^^ constant.language
        struct,
//      ^^^^^^ keyword.declaration.struct
        1 + 1,
//      ^ constant.numeric.integer.decimal
//        ^ keyword.operator.arithmetic
//          ^ constant.numeric.integer.decimal
    )
//  ^ punctuation.section.group.end
  ]
//^ punctuation.section.group.end

// quote! uses #var syntax
#[doc=#foo]
//^^^^^^^^^ meta.annotation
//   ^ keyword.operator.assignment

// Macros often use replacement.
#[doc = $doc]
//^^^^^^^^^^^ meta.annotation
//          ^ punctuation.section.group.end
//    ^ keyword.operator.assignment

#[rustfmt::skip]
//^^^^^^^^^^^^^^ meta.annotation
//^^^^^^^^^^^^^ meta.path
//       ^^ punctuation.accessor
//         ^^^^ variable.annotation


#[rustfmt::skip(rust::fmt::skip())]
//             ^^^^^^^^^^^^^^^^^^^ meta.annotation meta.annotation.parameters meta.group
//              ^^^^^^^^^^^^^^^ meta.path
//                  ^^ punctuation.accessor
//                       ^^ punctuation.accessor
//                         ^^^^^^ meta.function-call
//                         ^^^^ variable.function
//                             ^ meta.group meta.group punctuation.section.group.begin
//                              ^ meta.group meta.group punctuation.section.group.end
