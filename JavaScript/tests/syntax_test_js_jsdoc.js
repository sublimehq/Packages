// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

    /**@a*/
//  ^^^ punctuation.definition.comment.begin
//     ^^ meta.tag.jsdoc
//       ^^ punctuation.definition.comment.end - meta.tag.jsdoc
//  ^^^^^^^ comment.block.documentation.js

/** @a b */
//  ^^ meta.tag.jsdoc
//     ^ - meta.tag.jsdoc
//       ^^ punctuation.definition.comment.end

/** @a@b */
//  ^^ meta.tag.jsdoc
//    ^^ - meta.tag.jsdoc

/**
 * @a b
// ^^ meta.tag.jsdoc
//    ^ comment.block.documentation
*/
// <- punctuation.definition.comment.end

/**
 * First line
 * @a @b c */
// ^^ meta.tag.jsdoc
//    ^^ - meta.tag.jsdoc
//    ^^^^ comment.block.documentation
//    ^^^^ - comment.block.documentation comment.block.documentation
//         ^^ comment.block.documentation punctuation.definition.comment.end

/**

  @a */
//^^ - meta.tag.jsdoc
//   ^^ punctuation.definition.comment.end

/*@a */
//^^ - meta.tag.jsdoc
//   ^^ punctuation.definition.comment.end
