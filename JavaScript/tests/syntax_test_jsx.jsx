// SYNTAX TEST "Packages/JavaScript/JSX.sublime-syntax"

    <foo />;
//  ^^^^^^^ meta.jsx meta.tag
//  ^ punctuation.definition.tag.begin
//   ^^^ meta.tag.name entity.name.tag
//       ^^ punctuation.definition.tag.end

    <foo>Hello!</foo>;
//  ^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^ meta.tag
//  ^ punctuation.definition.tag.begin
//   ^^^ meta.tag.name entity.name.tag
//      ^ punctuation.definition.tag.end
//       ^^^^^^ - meta.tag
//             ^^^^^^ meta.tag
//             ^^ punctuation.definition.tag.begin
//               ^^^ meta.tag.name entity.name.tag
//                  ^ punctuation.definition.tag.end

    <foo.bar.baz>Hello!</foo.bar.baz>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^ meta.tag.name
//      ^ punctuation.accessor
//          ^ punctuation.accessor
//           ^^^ entity.name.tag
//               ^^^^^^ - meta.tag
//                     ^^^^^^^^^^^^^^ meta.tag
//                       ^^^^^^^^^^^ meta.tag.name
//                          ^ punctuation.accessor
//                              ^ punctuation.accessor
//                               ^^^ entity.name.tag

    <foo>Hello!<bar/>World!</foo>;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx
//  ^^^^^ meta.tag
//       ^^^^^^ - meta.tag
//             ^^^^^^ meta.tag
//                   ^^^^^^ - meta.tag
//                         ^^^^^^ meta.tag

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
//  ^^^^^^ string.quoted.single

    baz='test'
//  ^^^^^^^^^^ meta.jsx meta.tag.attributes
//  ^^^ entity.other.attribute-name
//     ^ punctuation.separator.key-value
//      ^^^^^^ string.quoted.single
//      ^ punctuation.definition.string.begin
//           ^ punctuation.definition.string.end

    baz="test"
//  ^^^^^^^^^^ meta.jsx meta.tag.attributes
//  ^^^ entity.other.attribute-name
//     ^ punctuation.separator.key-value
//      ^^^^^^ string.quoted.double
//      ^ punctuation.definition.string.begin
//           ^ punctuation.definition.string.end

    baz="\n"
//      ^^^^ string.quoted.double - constant.character.escape

    baz="&nbsp;&nbsp"
//       ^^^^^^ constant.character.escape
//       ^ punctuation.definition.entity
//            ^ punctuation.definition.entity
//             ^^^^^ - constant.character.escape

    baz={xyzzy}
//      ^^^^^^^ meta.interpolation
//      ^ punctuation.definition.interpolation.begin
//       ^^^^^ source.js.embedded.jsx variable.other.readwrite
//            ^ punctuation.definition.interpolation.end

    baz={{ xyzzy:42 }}
//      ^^^^^^^^^^^^^^ meta.interpolation
//      ^ punctuation.definition.interpolation.begin
//       ^^^^^^^^^^^^ source.js.embedded.jsx meta.mapping
//         ^^^^^ meta.mapping.key
//              ^ punctuation.separator.key-value
//               ^^ meta.number.integer.decimal.js constant.numeric.value.js
//                   ^ punctuation.definition.interpolation.end


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
//                  ^ punctuation.definition.interpolation.end

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
//               ^ punctuation.definition.interpolation.end

    {//}
//  ^ punctuation.definition.interpolation.begin
//   ^^^ comment.line.double-slash
//   ^^ punctuation.definition.comment
//     ^ - punctuation
    }
//  ^ punctuation.definition.interpolation.end

    {/* foo */}
//  ^^^^^^^^^^^ meta.jsx meta.interpolation comment.block - source.embedded
//  ^ punctuation.definition.interpolation.begin
//   ^^ punctuation.definition.comment.begin
//          ^^ punctuation.definition.comment.end
//            ^ punctuation.definition.interpolation.end

    {/* foo */ bar}
//  ^^^^^^^^^^^^^^^ meta.jsx meta.interpolation
//   ^^^^^^^^^^^^^ source.js.embedded
//  ^ punctuation.definition.interpolation.begin - comment
//   ^^ punctuation.definition.comment.begin
//          ^^ punctuation.definition.comment.end
//            ^^^^^ - comment
//             ^^^ meta.jsx meta.interpolation variable.other.readwrite
//                ^ punctuation.definition.interpolation.end

</foo>;

    <class />;
//   ^^^^^ entity.name.tag
