// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

    /**@a*/
//  ^^^ punctuation.definition.comment.begin
//     ^^ entity.other.attribute-name.documentation
//       ^^ punctuation.definition.comment.end - entity.other.attribute-name.documentation
//  ^^^^^^^ comment.block.documentation.js

/** @a b */
//  ^^ entity.other.attribute-name.documentation
//     ^ - entity.other.attribute-name.documentation
//       ^^ punctuation.definition.comment.end

/** @a@b */
//  ^^ entity.other.attribute-name.documentation
//    ^^ - entity.other.attribute-name.documentation

/**
 * @a b
// ^^ entity.other.attribute-name.documentation
//    ^ comment.block.documentation
*/
// <- punctuation.definition.comment.end

/**
 * First line
 * @a @b c */
// ^^ entity.other.attribute-name.documentation
//    ^^ - entity.other.attribute-name.documentation
//    ^^^^ comment.block.documentation
//    ^^^^ - comment.block.documentation comment.block.documentation
//         ^^ comment.block.documentation punctuation.definition.comment.end

/**

  @a */
//^^ - entity.other.attribute-name.documentation
//   ^^ punctuation.definition.comment.end

/*@a */
//^^ - entity.other.attribute-name.documentation
//   ^^ punctuation.definition.comment.end

/** @type {string[]} */
//         ^^^^^^^^ meta.type
//                 ^^^^ - meta.type
//        ^ punctuation.definition.type.begin
//                 ^ punctuation.definition.type.end

/** @type {import('fs').FSWatcher} */
//         ^^^^^^^^^^^^^^^^^^^^^^ meta.type
//                               ^^^^ - meta.type
//                     ^ punctuation.accessor.dot
//                               ^ punctuation.definition.type.end

  /**
   * @param {{
//           ^ meta.type
   *   foo: A.B
//^^ - meta.type
//  ^^^^^^^^^^^ meta.type
//           ^ punctuation.accessor.dot
   * }} foo
//  ^^ meta.type
//    ^^^^^ - meta.type
   */

/** @type{string} */
//       ^^^^^^^^ - meta.type

/** @type {string */
//         ^^^^^^^ meta.type
//                ^^ punctuation.definition.comment.end - meta.type

/** @type {{foo: number */
//         ^^^^^^^^^^^^^ meta.type
//                      ^^ punctuation.definition.comment.end - meta.type
