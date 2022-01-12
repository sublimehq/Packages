// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

// Line comments
// <- comment.line.double-slash punctuation.definition.comment
// ^^^^^^^^^^^^^^ comment.line.double-slash

// <- -comment

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
//  ^ comment.block.documentation punctuation.definition.comment
*/

// Verify comment is cleared.
mod a {}
// ^^^^^ -comment

fn foo<F: FnMut(i32, i32 /*asd*/) -> i32>(f: F) {
//                       ^^^^^^^ meta.generic comment
    let lam = |time: i32 /* comment */, other: i32| {
//                       ^^^^^^^^^^^^^ meta.function.parameters comment
    };
}
