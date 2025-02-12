// SYNTAX TEST "Packages/JavaScript/TSX.sublime-syntax"

// comment
// <- comment.line.double-slash.js punctuation.definition.comment.js
//^^^^^^^^^ comment.line.double-slash.js

// comment //
// <- comment.line.double-slash.js punctuation.definition.comment.js
//^^^^^^^^^^^^ comment.line.double-slash.js
//         ^^ punctuation.definition.comment.js

/// comment
// <- comment.line.triple-slash.js punctuation.definition.comment.js
//^^^^^^^^^^ comment.line.triple-slash.js

/// comment ///
// <- comment.line.triple-slash.js punctuation.definition.comment.js
//^^^^^^^^^^^^^^ comment.line.triple-slash.js
//          ^^^ punctuation.definition.comment.js

/////////////////////////////////////////////////////////////////
// <- comment.line.other.js punctuation.definition.comment.js
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.other.js punctuation.definition.comment.js
//                                                               ^ comment.line.other.js - punctuation

/* */
// <- comment.block.js punctuation.definition.comment.begin.js
//^^^ comment.block.js
//   ^ - comment

    /**/ /***/
// ^ - comment
//  ^^^^ comment.block.empty.js punctuation.definition.comment.js
//      ^ - comment
//       ^^^^^ comment.block.empty.js punctuation.definition.comment.js
//            ^ - comment

    /** @todo **/
//  ^^^^^^^^^^^^^ comment.block.documentation.js
//  ^^^ punctuation.definition.comment.begin.js
//      ^^^^^ entity.other.attribute-name.documentation.js
//            ^^^ punctuation.definition.comment.end.js

    /**
// ^ - comment
//  ^^^ comment.block.documentation.js punctuation.definition.comment.begin.js
//     ^ comment.block.documentation.js - punctuation
     * @todo test it
//   ^ comment.block.documentation.js punctuation.definition.comment.js
//    ^^^^^^^^^^^^^^^ comment.block.documentation.js
//     ^^^^^ entity.other.attribute-name.documentation.js
     **/
//^^^ comment.block.documentation.js - punctuation
//   ^^^ comment.block.documentation.js
//      ^ - comment

    /*** @todo ***/
//  ^^^^^^^^^^^^^^^ comment.block.documentation.js
//  ^^^^ punctuation.definition.comment.begin.js
//       ^^^^^ entity.other.attribute-name.documentation.js
//             ^^^^ punctuation.definition.comment.end.js

    /***
// ^ - comment
//  ^^^^ comment.block.documentation.js punctuation.definition.comment.begin.js
//      ^ comment.block.documentation.js - punctuation
     * @todo test it
//   ^ comment.block.documentation.js punctuation.definition.comment.js
//    ^^^^^^^^^^^^^^^ comment.block.documentation.js
//     ^^^^^ entity.other.attribute-name.documentation.js
     ***/
//^^^ comment.block.documentation.js - punctuation
//   ^^^^ comment.block.documentation.js
//       ^ - comment

/// <reference no-default-lib="true"/>
// <- comment.line.triple-slash.js punctuation.definition.comment.js
//^ comment.line.triple-slash.js punctuation.definition.comment.js
// ^ comment.line.triple-slash.js - meta.preprocessor
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.triple-slash.js meta.preprocessor.directive.js meta.tag.xml
//                                    ^ comment.line.triple-slash.js - meta.preprocessor

/// <foo bar="baz"/>
// <- comment.line.triple-slash.js punctuation.definition.comment.js
//^ comment.line.triple-slash.js punctuation.definition.comment.js
// ^ comment.line.triple-slash.js - meta.preprocessor
//  ^^^^^^^^^^^^^^^^ comment.line.triple-slash.js meta.preprocessor.directive.js meta.tag.xml
//                  ^ comment.line.triple-slash.js - meta.preprocessor

//// <foo bar="baz"/>
// <- comment.line.other.js punctuation.definition.comment.js
//^^^^^^^^^^^^^^^^^^^^ comment.line.other.js - meta.preprocessor

import foo;

/// <normal comment="after first statement"/>
// <- comment.line.triple-slash.js punctuation.definition.comment.js
//^ comment.line.triple-slash.js punctuation.definition.comment.js
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.triple-slash.js - punctuation - meta.preprocessor

    <foo />;
//  ^^^^^^^ meta.jsx meta.tag
//  ^ punctuation.definition.tag.begin
//   ^^^ meta.tag.name entity.name.tag
//       ^^ punctuation.definition.tag.end

    type x < T = Foo > = any;
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-alias
//  ^^^^ keyword.declaration.type
//       ^ entity.name.type
//         ^^^^^^^^^^^ meta.generic
//         ^ punctuation.definition.generic.begin
//           ^ variable.parameter.generic
//             ^ keyword.operator.assignment
//               ^^^ support.class
//                   ^ punctuation.definition.generic.end
//                     ^ keyword.operator.assignment
//                       ^^^ meta.type-alias support.type.any

let x : T.U<V>;
//      ^^^^^^ meta.type
//      ^ support.class
//       ^ punctuation.accessor
//        ^ support.class
//         ^^^ meta.generic
//          ^ support.class

let x : T.U
//      ^^^ meta.type
//      ^ support.class
//       ^ punctuation.accessor
//        ^ support.class

<V />;
// <- meta.jsx - meta.type

// This is invalid TSX as the TypeScript type assertion is parsed as a JSX tag
let strLength: number = (<string>someValue).length; // </string> );
//                       ^^^^^^^^ meta.tag - meta.assertion
//                                                     ^^^^^^^^^ meta.tag - comment

var foo = 1 << 0;
//          ^^ keyword.operator.bitwise

if (a < b || c <= d) {}
//    ^ keyword.operator.comparison
//        ^^ keyword.operator.logical
//             ^^ keyword.operator.comparison

    x ? (y) : <T foo={``}> => z</T>;
//       ^ variable.other.readwrite - variable.parameter
//          ^ keyword.operator.ternary
//            ^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//                                 ^ punctuation.terminator.statement

    <T>() => {};</T>;
//  ^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^ meta.tag
//              ^^ meta.tag

    <T,>(): U => {}; // </T>;
//  ^^^^^^^^^^^^^^^ meta.function
//  ^^^^ meta.generic
//  ^ punctuation.definition.generic.begin
//   ^ variable.parameter.generic
//    ^ punctuation.separator.comma
//     ^ punctuation.definition.generic.end
//      ^^ meta.function.parameters
//        ^ punctuation.separator.type
//          ^ support.class
//            ^^ keyword.declaration.function.arrow

    async <T,>(): U => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^ keyword.declaration.async
//        ^^^^ meta.generic
//        ^ punctuation.definition.generic.begin
//         ^ variable.parameter.generic
//          ^ punctuation.separator.comma
//           ^ punctuation.definition.generic.end
//            ^^ meta.function.parameters
//              ^ punctuation.separator.type
//                ^ support.class
//                  ^^ keyword.declaration.function.arrow


    <T extends U>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^^^^^^^^^ meta.generic
//   ^ variable.parameter.generic
//     ^^^^^^^ storage.modifier.extends
//             ^ support.class
//               ^^ meta.function.parameters
//                  ^^ keyword.declaration.function.arrow


    async <T extends U>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^ keyword.declaration.async
//        ^^^^^^^^^^^^^ meta.generic
//         ^ variable.parameter.generic
//           ^^^^^^^ storage.modifier.extends
//                   ^ support.class
//                     ^^ meta.function.parameters
//                        ^^ keyword.declaration.function.arrow

    <T extends>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^^^ meta.tag
//  ^ punctuation.definition.tag.begin
//   ^ meta.tag.name entity.name.tag
//     ^^^^^^^ meta.tag.attributes entity.other.attribute-name
//            ^ punctuation.definition.tag.end

    <T extends "s">() => {x}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^^^^^^^^^^^ meta.function meta.generic
//   ^ variable.parameter.generic
//     ^^^^^^^ storage.modifier.extends
//             ^^^ meta.function meta.generic

    <T extends="s">() => {x}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^^^^^^^ meta.tag
//   ^ meta.tag.name entity.name.tag
//     ^^^^^^^ entity.other.attribute-name
//            ^ punctuation.separator.key-value
//             ^^^ string.quoted.double
//                 ^^^^^^^^^ - meta.function
//                       ^^^ meta.interpolation
//                               ^^^^ meta.tag
//                                 ^ meta.tag.name entity.name.tag
//                                   ^ punctuation.terminator.statement

    <const T>() => {}; // </T>;
//  ^^^^^^^^^ meta.function meta.generic - meta.function meta.function
//           ^^ meta.function.parameters - meta.function meta.function
//             ^^^^^^ meta.function - meta.function meta.function
//  ^ punctuation.definition.generic.begin
//   ^^^^^ storage.modifier.const
//         ^ variable.parameter.generic
//          ^ punctuation.definition.generic.end
//           ^ punctuation.section.group.begin
//            ^ punctuation.section.group.end
//              ^^ keyword.declaration.function.arrow
//                 ^^ meta.block
//                 ^ punctuation.section.block.begin
//                  ^ punctuation.section.block.end
//                   ^ punctuation.terminator.statement
//                     ^^^^^^^^ comment.line.double-slash
//                     ^^ punctuation.definition.comment

    <const T extends>() => {}; // </T>;
//  ^^^^^^^^^^^^^^^^^ meta.function meta.generic - meta.function meta.function
//                   ^^ meta.function.parameters - meta.function meta.function
//                     ^^^^^^ meta.function - meta.function meta.function
//  ^ punctuation.definition.generic.begin
//   ^^^^^ storage.modifier.const
//         ^ variable.parameter.generic
//           ^^^^^^^ storage.modifier.extends
//                  ^ punctuation.definition.generic.end
//                   ^ punctuation.section.group.begin
//                    ^ punctuation.section.group.end
//                      ^^ keyword.declaration.function.arrow
//                         ^^ meta.block
//                         ^ punctuation.section.block.begin
//                          ^ punctuation.section.block.end
//                           ^ punctuation.terminator.statement
//                             ^^^^^^^^ comment.line.double-slash
//                             ^^ punctuation.definition.comment

    <const T extends "s">() => {x}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function meta.generic - meta.function meta.function
//                       ^^ meta.function.parameters - meta.function meta.function
//                         ^^^^^^^ meta.function - meta.function meta.function
//  ^ punctuation.definition.generic.begin
//   ^^^^^ storage.modifier.const
//         ^ variable.parameter.generic
//           ^^^^^^^ storage.modifier.extends
//                   ^^^ meta.string string.quoted.double
//                      ^ punctuation.definition.generic.end
//                       ^ punctuation.section.group.begin
//                        ^ punctuation.section.group.end
//                          ^^ keyword.declaration.function.arrow
//                             ^^^ meta.block
//                             ^ punctuation.section.block.begin
//                               ^ punctuation.section.block.end
//                                ^ punctuation.terminator.statement
//                                  ^^^^^^^^ comment.line.double-slash
//                                  ^^ punctuation.definition.comment

    <const T extends="s">() => {x}; // </T>;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function meta.generic - meta.function meta.function
//                       ^^ meta.function.parameters - meta.function meta.function
//                         ^^^^^^ meta.function - meta.function meta.function
//  ^ punctuation.definition.generic.begin
//   ^^^^^ storage.modifier.const
//         ^ variable.parameter.generic
//           ^^^^^^^ storage.modifier.extends
//                  ^ keyword.operator.assignment.js
//                   ^^^ meta.string string.quoted.double
//                      ^ punctuation.definition.generic.end
//                       ^ punctuation.section.group.begin
//                        ^ punctuation.section.group.end
//                          ^^ keyword.declaration.function.arrow
//                             ^^^ meta.block
//                             ^ punctuation.section.block.begin
//                               ^ punctuation.section.block.end
//                                ^ punctuation.terminator.statement
//                                  ^^^^^^^^ comment.line.double-slash
//                                  ^^ punctuation.definition.comment

    <T {...}>() => {};</T>;
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^ meta.tag
//   ^ meta.tag.name entity.name.tag
//     ^^^^^ meta.tag.attributes meta.interpolation

    <C<T> a="foo" />;
//  ^^^^^^^^^^^^^^^^ meta.jsx
//  ^ meta.tag punctuation.definition.tag.begin
//   ^^^^^ meta.tag.name
//   ^ entity.name.tag
//    ^^^ meta.generic
//    ^ punctuation.definition.generic.begin
//     ^ support.class
//      ^ punctuation.definition.generic.end
//        ^^^^^^^^ meta.tag.attributes
//        ^ entity.other.attribute-name
//         ^ punctuation.separator.key-value
//          ^^^^^ string.quoted.double
//          ^ punctuation.definition.string.begin
//              ^ punctuation.definition.string.end
//                ^^ - meta.tag.attributes
//                ^ punctuation.definition.tag.end
//                 ^ meta.tag punctuation.definition.tag.end
//                  ^ punctuation.terminator.statement

    true ? (a) : <foo />;
//  ^^^^ constant.language.boolean.true
//       ^ keyword.operator.ternary
//         ^^^ meta.group
//             ^ keyword.operator.ternary
//               ^^^^^^^ meta.jsx meta.tag
//               ^ punctuation.definition.tag.begin
//                ^^^ meta.tag.name entity.name.tag
//                    ^^ punctuation.definition.tag.end
//                      ^ punctuation.terminator.statement

    true ? (a) : <T foo="a">() => {} => {} : null; // </T>;
//  ^^^^ constant.language.boolean.true
//       ^ keyword.operator.ternary
//         ^^^ meta.group
//          ^ variable.other.readwrite
//             ^ keyword.operator.ternary
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//                ^ meta.tag.name entity.name.tag
//                  ^^^ entity.other.attribute-name
//                     ^ punctuation.separator.key-value
//                      ^^^ string.quoted.double
//                                ^^ meta.interpolation
//                                      ^^ meta.interpolation
//                                                    ^^^^ meta.tag
//                                                      ^ meta.tag.name entity.name.tag
//                                                        ^ punctuation.terminator.statement
