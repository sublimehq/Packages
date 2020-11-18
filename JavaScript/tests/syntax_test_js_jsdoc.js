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
//         ^^^^^^^^ support.type
//                 ^^^^ - support.type
//        ^ punctuation.definition.type.begin
//                 ^ punctuation.definition.type.end

/** @type {import('fs').FSWatcher} */
//         ^^^^^^^^^^^^^^^^^^^^^^ support.type
//                               ^^^^ - support.type
//                     ^ punctuation.accessor
//                               ^ punctuation.definition.type.end

  /**
   * @param {{
//           ^ support.type
   *   foo: A.B
//^^ - support.type
//  ^^^^^^^^^^^ support.type
//           ^ punctuation.accessor
   * }} foo
//  ^^ support.type
//    ^^^^^ - support.type
   */

/** @type{string} */
//       ^^^^^^^^ - support.type

/** @type {string */
//         ^^^^^^^ support.type
//                ^^ punctuation.definition.comment.end - support.type

/** @type {{foo: number */
//         ^^^^^^^^^^^^^ support.type
//                      ^^ punctuation.definition.comment.end - support.type
