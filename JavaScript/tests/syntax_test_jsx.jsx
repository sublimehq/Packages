// SYNTAX TEST "Packages/JavaScript/JSX.sublime-syntax"

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

//// <foo bar="baz"/>
// <- comment.line.other.js punctuation.definition.comment.js
//^^^^^^^^^^^^^^^^^^^^ comment.line.other.js - meta.preprocessor

    <foo />;
//  ^ meta.jsx meta.tag
//   ^^^^ meta.jsx meta.tag.name
//       ^^ meta.jsx meta.tag - meta.tag.attributes
//  ^ punctuation.definition.tag.begin
//   ^^^ entity.name.tag.native
//       ^^ punctuation.definition.tag.end

    <foo attr= />;
//  ^ meta.jsx meta.tag
//   ^^^^ meta.jsx meta.tag.name
//       ^^^^^^ meta.jsx meta.tag.attributes
//             ^^ meta.jsx meta.tag - meta.tag.attributes
//  ^ punctuation.definition.tag.begin
//   ^^^ entity.name.tag.native
//       ^^^^ entity.other.attribute-name
//           ^ punctuation.separator.key-value
//             ^^ punctuation.definition.tag.end

    <foo attr="val" />;
//  ^ meta.jsx meta.tag
//   ^^^^ meta.jsx meta.tag.name
//       ^^^^^^^^^^^ meta.jsx meta.tag.attributes
//                  ^^ meta.jsx meta.tag - meta.tag.attributes
//  ^ punctuation.definition.tag.begin
//   ^^^ entity.name.tag.native
//       ^^^^ entity.other.attribute-name
//           ^ punctuation.separator.key-value
//            ^^^^^ string.quoted.double
//                  ^^ punctuation.definition.tag.end

    <foo>Hello!</foo>;
//  ^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^ meta.tag
//  ^ punctuation.definition.tag.begin
//   ^^^ meta.tag.name entity.name.tag.native
//      ^ punctuation.definition.tag.end
//       ^^^^^^ - meta.tag
//             ^^^^^^ meta.tag
//             ^^ punctuation.definition.tag.begin
//               ^^^ meta.tag.name entity.name.tag.native
//                  ^ punctuation.definition.tag.end

    <foo.bar.baz>Hello!</foo.bar.baz>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^ meta.tag.name - entity.name.tag.native
//   ^^^ entity.name.tag.component
//      ^ punctuation.accessor
//       ^^^ entity.name.tag.component
//          ^ punctuation.accessor
//           ^^^ entity.name.tag.component
//               ^^^^^^ - meta.tag
//                     ^^^^^^^^^^^^^^ meta.tag
//                       ^^^^^^^^^^^ meta.tag.name - entity.name.tag.native
//                       ^^^ entity.name.tag.component
//                          ^ punctuation.accessor
//                           ^^^ entity.name.tag.component
//                              ^ punctuation.accessor
//                               ^^^ entity.name.tag.component

    <foo>Hello!<bar/>World!</foo>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^ meta.tag
//       ^^^^^^ - meta.tag
//             ^^^^^^ meta.tag
//                   ^^^^^^ - meta.tag
//                         ^^^^^^ meta.tag

    <foo>foo<bar>bar<baz>baz</baz>bar</bar>foo</foo>;
//  ^^^^^ meta.tag
//       ^^^ - meta.tag
//          ^^^^^ meta.tag
//               ^^^ - meta.tag
//                  ^^^^^ meta.tag
//                       ^^^ - meta.tag
//                          ^^^^^^ meta.tag
//                                ^^^ - meta.tag
//                                   ^^^^^^ meta.tag
//                                         ^^^ - meta.tag
//                                            ^^^^^^ meta.tag

    <foo></foo><bar>
//  ^^^^^^^^^^^ meta.jsx
//             ^^^^^ - meta.jsx
//             ^ keyword.operator.comparison
//              ^^^ variable
//                 ^ keyword.operator.comparison
0;

    <>Hello!</>;
//  ^^^^^^^^^^^ meta.jsx
//  ^^ meta.tag
//  ^ punctuation.definition.tag.begin
//   ^ punctuation.definition.tag.end
//    ^^^^^^ - meta.tag
//          ^^^ meta.tag
//          ^^ punctuation.definition.tag.begin
//            ^ punctuation.definition.tag.end

    <foo></foo>
    <bar>
//  ^^^^^ - meta.jsx
//  ^ keyword.operator.comparison
//   ^^^ variable
//      ^ keyword.operator.comparison
0;

    </foo>;
//   ^^^^ invalid.illegal.unmatched-tag

<foo
    bar
//  ^^^ meta.jsx meta.tag.attributes entity.other.attribute-name

    =
//  ^ punctuation.separator.key-value

    'test'
//  ^^^^^^ meta.string.js string.quoted.single

    baz 'test'
//  ^^^^^^^^^^ meta.jsx meta.tag.attributes
//  ^^^ entity.other.attribute-name
//      ^^^^^^ meta.string.js string.quoted.single
//      ^ punctuation.definition.string.begin
//           ^ punctuation.definition.string.end

    baz='test'
//  ^^^^^^^^^^ meta.jsx meta.tag.attributes
//  ^^^ entity.other.attribute-name
//     ^ punctuation.separator.key-value
//      ^^^^^^ meta.string.js string.quoted.single
//      ^ punctuation.definition.string.begin
//           ^ punctuation.definition.string.end

    baz "test"
//  ^^^^^^^^^^ meta.jsx meta.tag.attributes
//  ^^^ entity.other.attribute-name
//      ^^^^^^ meta.string.js string.quoted.double
//      ^ punctuation.definition.string.begin
//           ^ punctuation.definition.string.end

    baz="test"
//  ^^^^^^^^^^ meta.jsx meta.tag.attributes
//  ^^^ entity.other.attribute-name
//     ^ punctuation.separator.key-value
//      ^^^^^^ meta.string.js string.quoted.double
//      ^ punctuation.definition.string.begin
//           ^ punctuation.definition.string.end

    baz="\n"
//      ^^^^ meta.string.js string.quoted.double - constant.character.escape

    baz="&nbsp;&nbsp"
//       ^^^^^^ constant.character.escape
//       ^ punctuation.definition.entity
//            ^ punctuation.definition.entity
//             ^^^^^ - constant.character.escape

    baz={xyzzy}
//      ^^^^^^^ meta.interpolation
//      ^ punctuation.section.interpolation.begin
//       ^^^^^ source.js.embedded.jsx variable.other.readwrite
//            ^ punctuation.section.interpolation.end

    baz={{ xyzzy:42 }}
//      ^^^^^^^^^^^^^^ meta.interpolation
//      ^ punctuation.section.interpolation.begin
//       ^^^^^^^^^^^^ source.js.embedded.jsx meta.mapping
//         ^^^^^ meta.mapping.key
//              ^ punctuation.separator.key-value
//               ^^ meta.number.integer.decimal.js constant.numeric.value.js
//                   ^ punctuation.section.interpolation.end

    {attr}name={value}
//  ^^^^^^ meta.interpolation
//        ^^^^ entity.other.attribute-name
//            ^ punctuation.separator.key-value
//             ^^^^^^^ meta.interpolation

    {...attrs}
//  ^^^^^^^^^^ meta.interpolation
//   ^^^^^^^^ source.js.embedded.jsx
//   ^^^ keyword.operator.spread
//      ^^^^^ variable.other.readwrite

    {...{ xyzzy:42 }}
//  ^^^^^^^^^^^^^^^^^ meta.interpolation
//   ^^^^^^^^^^^^^^^ source.js.embedded.jsx
//   ^^^ keyword.operator.spread
//      ^^^^^^^^^^^^ meta.mapping
//        ^^^^^ meta.mapping.key
//             ^ punctuation.separator.key-value
//              ^^ meta.number.integer.decimal.js constant.numeric.value.js
//                  ^ punctuation.section.interpolation.end

    // baz
//  ^^^^^^ comment.line.double-slash
//  ^^ punctuation.definition.comment

    /* baz */
//  ^^^^^^^^^ comment.block
//  ^^ punctuation.definition.comment
//         ^^ punctuation.definition.comment

/>;
// <- meta.jsx meta.tag punctuation.definition.tag.end

<foo>
    // test
//  ^^^^^^^^ - comment

    /* test */
//  ^^^^^^^^^^ - comment

    &nbsp; &nbsp ;
//  ^^^^^^ constant.character.escape
//  ^ punctuation.definition.entity
//       ^ punctuation.definition.entity
//         ^^^^^^^ - constant.character.escape

    {xyzzy}
//  ^^^^^^^ meta.interpolation
//   ^^^^^ source.js.embedded.jsx variable.other.readwrite

    {{ xyzzy:42 }}
//  ^^^^^^^^^^^^^^ meta.interpolation
//   ^^^^^^^^^^^^ source.js.embedded.jsx
//   ^^^^^^^^^^^^ meta.mapping
//     ^^^^^ meta.mapping.key
//          ^ punctuation.separator.key-value
//           ^^ meta.number.integer.decimal.js constant.numeric.value.js
//               ^ punctuation.section.interpolation.end

    {//}
//  ^ punctuation.section.interpolation.begin
//   ^^^ comment.line.double-slash
//   ^^ punctuation.definition.comment
//     ^ - punctuation
    }
//  ^ punctuation.section.interpolation.end

    {/* foo */}
//  ^^^^^^^^^^^ meta.jsx meta.interpolation comment.block - source.embedded
//  ^ punctuation.section.interpolation.begin
//   ^^ punctuation.definition.comment.begin
//          ^^ punctuation.definition.comment.end
//            ^ punctuation.section.interpolation.end

    {/* foo */ bar}
//  ^^^^^^^^^^^^^^^ meta.jsx meta.interpolation
//   ^^^^^^^^^^^^^ source.js.embedded
//  ^ punctuation.section.interpolation.begin - comment
//   ^^ punctuation.definition.comment.begin
//          ^^ punctuation.definition.comment.end
//            ^^^^^ - comment
//             ^^^ meta.jsx meta.interpolation variable.other.readwrite
//                ^ punctuation.section.interpolation.end

</foo>;

    <Class />;
//   ^^^^^ entity.name.tag.component - entity.name.tag.native
