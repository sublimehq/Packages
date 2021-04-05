// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

/******************************************************************************
 * Comment Tests
 *****************************************************************************/

// Comment
// <- comment.line.double-slash.java punctuation.definition.comment.java
 // <- comment.line.double-slash.java punctuation.definition.comment.java
//^^^^^^^^^ comment.line.double-slash.java - punctuation

///////////////////////////////////////////////////////////////////////////////
// <- comment.line.double-slash.java punctuation.definition.comment.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.java punctuation.definition.comment.java

/// Comment ///////////////////////////////////////////////////////////////////
// <- comment.line.double-slash.java punctuation.definition.comment.java
//^ comment.line.double-slash.java punctuation.definition.comment.java
// ^^^^^^^^^ comment.line.double-slash.java - punctuation
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.java punctuation.definition.comment.java

   /*
//^ - comment
// ^^ comment.block.java punctuation.definition.comment.begin.java
//   ^ comment.block.java - punctuation
    *
//  ^ comment.block.java punctuation.definition.comment.java
//   ^ comment.block.java - punctuation
    */
// ^ comment.block.java - punctuation
//  ^^ comment.block.java punctuation.definition.comment.end.java
//    ^ - comment

/******************************************************************************
 * JavaDoc Tests
 *****************************************************************************/

  /** This is javadoc, not a simple comment */
//^^^ punctuation.definition.comment.begin.java
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.java
//                                          ^^ punctuation.definition.comment.end.java

  /**
//^^^ comment.block.documentation.java punctuation.definition.comment.begin.java
   * Description of some sort.
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.java
   */
// ^^ comment.block.documentation.java punctuation.definition.comment.end.java

  /**
   * <p>Description that starts with tag
//   ^^^ comment.block.documentation.java meta.tag
   */

  /** <b>One-liner with tags</b> */
//    ^^^ comment.block.documentation.java meta.tag
//                          ^^^ comment.block.documentation.java meta.tag

  /** @param onFirstLine     @param
//^^^ comment.block.documentation.java punctuation.definition.comment.begin.java
//    ^^^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//                           ^^^^^^ - entity.name.tag.documentation.javadoc
   *  @param normal          @param
// ^ comment.block.documentation.java punctuation.definition.comment.java
//    ^^^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//                           ^^^^^^ - entity.name.tag.documentation.javadoc
   *
// ^ comment.block.documentation.java punctuation.definition.comment.java
      @param withoutAsterisk @param
//    ^^^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//                           ^^^^^^ - entity.name.tag.documentation.javadoc
   */
// ^^ comment.block.documentation.java punctuation.definition.comment.end.java

  /**
   * Parameters
   *
   * @param paramName Some description
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//          ^^^^^^^^^ variable.parameter.javadoc
   *                  that spans <i>several</i> lines.
// ^ comment.block.documentation.java punctuation.definition.comment.java
//                               ^^^ meta.tag
//                                         ^^^^ meta.tag
// ^ punctuation.definition.comment.java
   *
   * @param
   * paramName1
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^^^^^ variable.parameter.javadoc
   * Parameter description
   *
   * @param
   * paramName2
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^^^^^ variable.parameter.javadoc
   *
   * @param
   * @param
   * paramName3
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^^^^^ variable.parameter.javadoc
   */
// ^^ comment.block.documentation.java punctuation.definition.comment.end.java

  /** Not a @param tag */
// ^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.java
//          ^^^^^^ - entity.name.tag.documentation.javadoc

  /**
   * Code blocks
// ^ comment.block.documentation.java punctuation.definition.comment.java
   *
   * {@code} {@literal}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^ meta.tag.inline.javadoc
//          ^ - meta.tag
//           ^^^^^^^^^^ meta.tag.inline.javadoc
//                     ^ - meta.tag
//   ^ punctuation.definition.tag.begin.javadoc
//    ^^^^^ entity.name.tag.documentation.javadoc
//         ^ punctuation.definition.tag.end.javadoc
//           ^ punctuation.definition.tag.begin.javadoc
//            ^^^^^^^^ entity.name.tag.documentation.javadoc
//                    ^ punctuation.definition.tag.end.javadoc
   *
   * {@code List<T> lst = new ArrayList<>()}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                          ^ - meta.tag
//   ^ punctuation.definition.tag.begin.javadoc
//    ^^^^^ entity.name.tag.documentation.javadoc
//         ^ - markup.raw.javadoc
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.javadoc
//                                         ^ punctuation.definition.tag.end.javadoc
   * {@code <example>text</example>}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                  ^ - meta.tag
//   ^ punctuation.definition.tag.begin.javadoc
//    ^^^^^ entity.name.tag.documentation.javadoc
//         ^ - markup.raw.javadoc
//          ^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.javadoc
//                                 ^ punctuation.definition.tag.end.javadoc
   *
   * Multiline, line break in content: {@code x + y
//                                     ^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                            ^^^^^ markup.raw.javadoc
//                                                 ^ - meta.tag - markup.raw.javadoc
   * = z}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//^^^ - meta.tag - markup.raw.javadoc
//   ^^^ meta.tag.inline.javadoc markup.raw.javadoc
//      ^ meta.tag.inline.javadoc - markup.raw
   *
   * Multiline, line break before content: {@literal
//                                                  ^ - markup.raw.javadoc
   * x + y = z}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//^^^ - meta.tag - markup.raw.javadoc
//   ^^^^^^^^^ meta.tag.inline.javadoc markup.raw.javadoc
//            ^ meta.tag.inline.javadoc - markup.raw
   *
   * Bracket balancing: {@code int[][] a = {{1, 2, 3}, {4, 5}}}
//                      ^ punctuation.definition.tag.begin.javadoc
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.javadoc
//                                                            ^ punctuation.definition.tag.end.javadoc
   *
   * Bracket balancing with line break: {@code int[][] a = {
//                                      ^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                      ^ punctuation.definition.tag.begin.javadoc
//                                             ^^^^^^^^^^^^^ markup.raw.javadoc
//                                                          ^ - markup.raw.javadoc
   * {1, 2, 3}, {4, 5}}}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//^^^ - meta.tag - markup.raw.javadoc
//   ^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc markup.raw.javadoc
//                     ^ meta.tag.inline.javadoc - markup.raw
//                      ^ - meta.tag
//                     ^ punctuation.definition.tag.end.javadoc
   */

  /**
   * Inline tags with references
   *
   * {@link} {@linkplain}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^ meta.tag.inline.javadoc
//          ^ - meta.tag
//           ^^^^^^^^^^^^ meta.tag.inline.javadoc
//                       ^ - meta.tag
//   ^ punctuation.definition.tag.begin.javadoc
//    ^^^^^ entity.name.tag.documentation.javadoc
//         ^ punctuation.definition.tag.end.javadoc
//           ^ punctuation.definition.tag.begin.javadoc
//            ^^^^^^^^^^ entity.name.tag.documentation.javadoc
//                      ^ punctuation.definition.tag.end.javadoc
   *
   * {@link Class} {@linkplain org.package.Class} {@link org.package.Class.NestedClass}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                ^ - meta.tag
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                               ^ - meta.tag
//                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                                                                     ^ - meta.tag
//   ^ punctuation.definition.tag.begin.javadoc
//    ^^^^^ entity.name.tag.documentation.javadoc
//          ^^^^^ markup.underline.link.javadoc
//               ^ punctuation.definition.tag.end.javadoc
//                 ^ punctuation.definition.tag.begin.javadoc
//                   ^^^^^^^^^ entity.name.tag.documentation.javadoc
//                             ^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                              ^ punctuation.definition.tag.end.javadoc
//                                                ^ punctuation.definition.tag.begin.javadoc
//                                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                                                                    ^ punctuation.definition.tag.end.javadoc
   *
   * Method separator:
   * {@link package.Class#method} {@linkplain #method}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                               ^ - meta.tag
//                                ^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                                    ^ - meta.tag
//  ^^^^^^^^ - markup.underline
//          ^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                              ^^^^^^^^^^^^^^ - markup.underline
//                                            ^^^^^^^ markup.underline.link.javadoc
//                                                   ^^ - markup.underline
   *
   * Brackets:
   * {@link Class#method(Type, Type)} {@link #method(Type, Type) label}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                   ^ - meta.tag
//                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                                                     ^ - meta.tag
//          ^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                           ^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                                               ^^^^^ meta.label.javadoc - markup.underline.link.javadoc
   *
   * Line breaks:
   * {@link Class#method(Type,
   * Type, Type) label}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//^^^ - meta.tag.inline - markup.underline
//   ^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                     ^ - meta.tag
//   ^^^^^^^^^^^ markup.underline.link.javadoc
//              ^ - markup
//               ^^^^^ meta.label.javadoc
//                    ^^ - markup
   *
   * {@link
   * Class#method(Type, Type, Type) label}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//^^^ - meta.tag.inline - markup.underline
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                        ^ - meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                 ^ - markup
//                                  ^^^^^ meta.label.javadoc
//                                       ^^ - markup
   *
   * {@link Class#method(Type, Type, Type)
   * label}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//^^^ - meta.tag.inline - markup.underline
//   ^^^^^^ meta.tag.inline.javadoc
//         ^ - meta.tag
//   ^^^^^ meta.label.javadoc
//        ^^ - markup
   *
   * Tags in label:
   * {@link Class#method(Type, Type, Type) <i>label</i>}
//                                         ^^^^^^^^^^^^ meta.label.javadoc
//                                         ^^^ meta.tag
//                                                 ^^^^ meta.tag
   *
   * {@value} {@value #SOME_CONSTANT} {@value package.Class#SOME_CONSTANT}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//  ^ - meta.tag
//   ^^^^^^^^ meta.tag.inline.javadoc
//           ^ - meta.tag
//            ^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                   ^ - meta.tag
//                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.javadoc
//                                                                        ^ - meta.tag
//   ^ punctuation.definition.tag.begin.javadoc
//    ^^^^^^ entity.name.tag.documentation.javadoc
//          ^ punctuation.definition.tag.end.javadoc
//            ^ punctuation.definition.tag.begin.javadoc
//             ^^^^^^ entity.name.tag.documentation.javadoc
//                    ^^^^^^^^^^^ markup.underline.link.javadoc
//                                  ^ punctuation.definition.tag.end.javadoc
//                                    ^ punctuation.definition.tag.begin.javadoc
//                                     ^^^^^^ entity.name.tag.documentation.javadoc
//                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                                                       ^ punctuation.definition.tag.end.javadoc
   */

  /**
   * Block tags with reference
   *
   * @see Class#method(Type, Type)
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//        ^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
   *
   * @see <a>java.util.stream</a>
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//        ^^^^^^^^^^^^^^^^^^^^^^^ - markup.underline.link.javadoc
//        ^^^ meta.tag
//                           ^^^ meta.tag
   *
   * @see 'java.util.stream'
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//        ^^^^^^^^^^^^^^^^^^ - markup.underline.link.javadoc
   *
   * @see https://wiki.xmldation.com/Support/Validator/ETagUnterminated
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
   *
   * @throws IOException
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//           ^^^^^^^^^^^ markup.underline.link.javadoc

   * @throws IOException because IOException
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^^ meta.tag.block.javadoc entity.name.tag.documentation.javadoc
//           ^^^^^^^^^^^ markup.underline.link.javadoc
//                       ^^^^^^^^^^^^^^^^^^^ - markup.underline.link.javadoc
   *
   * @unknown {@code test}
// ^ comment.block.documentation.java punctuation.definition.comment.java
//   ^^^^^^^^ - keyword
//            ^^^^^^^^^^^^ meta.tag.inline.javadoc
   */
// ^^ comment.block.documentation.java punctuation.definition.comment.end.java

  /**
   * Leading asterisk with space
// ^ punctuation.definition.comment.java
   *Without space
// ^ punctuation.definition.comment.java
   *<p>Before tag
// ^ punctuation.definition.comment.java
   *{@value} Before inline tag
// ^ punctuation.definition.comment.java
   *@return Before block tag
// ^ punctuation.definition.comment.java
   */

  /**
   * class <code>{@literal Set<char<?>>}</code>
//         ^^^^^^ meta.tag.html
//               ^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.html
//                                      ^^^^^^^ meta.tag.html
   */

  /**
   * Levenshtein distance algorithm from <a
//                                       ^^ meta.tag
//                                        ^ entity.name.tag
   * href="http://www.merriampark.com/ld.htm"
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.java
//^^^ - meta.tag
// ^ punctuation.definition.comment.java
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value.html
   * onclick="goto()"
//^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.java
//^^^ - meta.tag
// ^ punctuation.definition.comment.java
//   ^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value.html
   * >http://www.merriampark.com/ld.htm</a>
//^^^ comment.block.documentation.java - meta.tag
// ^ punctuation.definition.comment.java
//   ^ meta.tag punctuation.definition.tag.end.html
   * <script>
//^^^^^^^^^^^^ comment.block.documentation.java
// ^ punctuation.definition.comment.java
//   ^^^^^^^^ meta.tag
   *   let me = 10;
// ^ punctuation.definition.comment.java
   * </script>
//^^^^^^^^^^^^^ comment.block.documentation.java
// ^ punctuation.definition.comment.java
//   ^^^^^^^^^ meta.tag
   */

  /**
   * Unclosed html tag: <li
   */
// ^^ comment.block.documentation.java punctuation.definition.comment.end.java

  /**
   * Unclosed javadoc tag: {@link
   */
// ^^ comment.block.documentation.java punctuation.definition.comment.end.java


/******************************************************************************
 * Package Declaration Tests
 *****************************************************************************/

package$ ;
// <- meta.variable.identifier.java variable.other.java
//^^^^^^ meta.variable.identifier.java variable.other.java

$package ;
// <- meta.variable.identifier.java variable.other.java
//^^^^^^ meta.variable.identifier.java variable.other.java

package
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^^ meta.namespace.package.java - meta.path
//^^^^^ keyword.declaration.namespace.package.java

package apple dot
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^^ meta.namespace.package.java - meta.path
//      ^^^^^ meta.namespace.package.identifier.java - meta.path
//^^^^^ keyword.declaration.namespace.package.java
//      ^^^^^ entity.name.namespace.package.java
//            ^^^ variable.other.java

package apple;
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^^ meta.namespace.package.java - meta.path
//      ^^^^^ meta.namespace.package.identifier.java - meta.path
//^^^^^ keyword.declaration.namespace.package.java
//      ^^^^^ entity.name.namespace.package.java
//           ^ punctuation.terminator.java

package
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java keyword.declaration.namespace.package.java
//     ^ meta.namespace.package.java - keyword
apple
//^^^ meta.namespace.package.identifier.java entity.name.namespace.package.java - meta.path
;
// <- punctuation.terminator.java

package com.
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^^ meta.namespace.package.java - meta.path
//      ^^^^^ meta.namespace.package.identifier.java meta.path.java
//      ^^^ variable.namespace.java - punctuation
//         ^ punctuation.accessor.dot.java - entity - variable

package com.example.apple;
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^^ meta.namespace.package.java - meta.path
//      ^^^^^^^^^^^^^^^^^ meta.namespace.package.identifier.java meta.path.java
//      ^^^ variable.namespace.java - punctuation
//         ^ punctuation.accessor.dot.java - entity - variable
//          ^^^^^^^ variable.namespace.java - punctuation
//                 ^ punctuation.accessor.dot.java - entity - variable
//                  ^^^^^ entity.name.namespace.package.java - punctuation
//                       ^ punctuation.terminator.java

package
// <- meta.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java keyword.declaration.namespace.package.java
//     ^ meta.namespace.package.java - keyword
    com
//  ^^^ meta.namespace.package.identifier.java meta.path.java variable.namespace.java - punctuation
    .
//  ^ meta.namespace.package.identifier.java meta.path.java punctuation.accessor.dot.java - entity - variable
    example.
//  ^^^^^^^ meta.namespace.package.identifier.java meta.path.java variable.namespace.java - punctuation
//         ^ meta.namespace.package.identifier.java meta.path.java punctuation.accessor.dot.java - entity - variable
    apple
//  ^^^^^ meta.namespace.package.identifier.java meta.path.java entity.name.namespace.package.java - punctuation
;
// <- punctuation.terminator.java


/******************************************************************************
 * Import Statement Tests
 *****************************************************************************/

import$ ;
// <- meta.variable.identifier.java variable.other.java
//^^^^^ meta.variable.identifier.java variable.other.java

$import ;
// <- meta.variable.identifier.java variable.other.java
//^^^^^ meta.variable.identifier.java variable.other.java

import
// <- meta.import.java keyword.declaration.import.java
//^^^^ keyword.declaration.import.java

import no.terminator
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^^ variable.namespace.java - punctuation
//       ^ punctuation.accessor.dot.java - entity - variable
//        ^^^^^^^^^^ variable.namespace.java - punctuation
    variable
//  ^^^^^^^^ variable.other - meta.import

import static
// <- meta.import.java keyword.declaration.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path

import static no.terminator
// <- meta.import.java keyword.declaration.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^ meta.import.java meta.path.java
//            ^^ variable.namespace.java - punctuation
//              ^ punctuation.accessor.dot.java - entity - variable
//               ^^^^^^^^^^ variable.namespace.java - punctuation
    variable
//  ^^^^^^^^ variable.other - meta.import

import * ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java variable.language.wildcard.asterisk.java
//      ^^ - meta.import - meta.path
//       ^ punctuation.terminator.java

import *. ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java
//      ^^^ - meta.import - meta.path
//     ^ variable.language.wildcard.asterisk.java
//      ^ invalid.illegal.expect-semicolon.java
//        ^ punctuation.terminator.java

import *.* ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java
//      ^^^^ - meta.import - meta.path
//     ^ variable.language.wildcard.asterisk.java
//      ^^ invalid.illegal.expect-semicolon.java
//         ^ punctuation.terminator.java

import *.a ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java
//      ^^^^ - meta.import - meta.path
//     ^ variable.language.wildcard.asterisk.java
//      ^^ invalid.illegal.expect-semicolon.java
//         ^ punctuation.terminator.java

import a . * . b ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^ meta.import.java meta.path.java
//          ^^^^^^ - meta.import - meta.path
//     ^ variable.namespace.java
//      ^^^ - variable
//       ^ punctuation.accessor.dot.java
//         ^ variable.language.wildcard.asterisk.java
//          ^^^^ - variable
//           ^ invalid.illegal.expect-semicolon.java
//             ^ invalid.illegal.expect-semicolon.java
//               ^ punctuation.terminator.java

import a . b . * ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^ meta.import.java meta.path.java
//              ^ - meta.import - meta.path
//     ^ variable.namespace.java - punctuation
//      ^ - variable - punctuation
//       ^ punctuation.accessor.dot.java - entity - variable
//        ^ - variable - punctuation
//         ^ variable.namespace.java - punctuation
//          ^ - variable - punctuation
//           ^ punctuation.accessor.dot.java - entity - variable
//            ^ - variable - punctuation
//             ^ variable.language.wildcard.asterisk.java
//               ^ punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java - punctuation
//      ^ punctuation.accessor.dot.java - entity - variable
//       ^ variable.namespace.java - punctuation
//        ^ punctuation.accessor.dot.java - entity - variable
//         ^^^^^ entity.name.class.java - punctuation
//              ^ punctuation.terminator.java

import a.b.Class.*;
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java - entity - variable
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java - entity - variable
//         ^^^^^ entity.name.class.java
//              ^ punctuation.accessor.dot.java - entity - variable
//               ^ variable.language.wildcard.asterisk.java

import a.b.Class.SubClass;
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java - entity - variable
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java - entity - variable
//         ^^^^^ entity.name.class.java
//              ^ punctuation.accessor.dot.java - entity
//               ^^^^^^^^ entity.name.class.java

import
//^^^^^ meta.import.java - meta.path
    a
//^^ meta.import.java - meta.path
//  ^^ meta.import.java meta.path.java
//  ^ variable.namespace.java
    .
//^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java - entity - variable
    b
//^^^^ meta.import.java meta.path.java
//  ^ variable.namespace.java
    .Class
//^^^^^^^^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java - entity - variable
//   ^^^^^ entity.name.class.java
    .
//^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java - entity
    SubClass ;
//  ^^^^^^^^ entity.name.class.java
//^^^^^^^^^^ meta.import.java meta.path.java
//          ^^ - meta.import - meta.path
//           ^ punctuation.terminator.java

import java.net.URL;
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^^^ entity.name.class.java
//                 ^ punctuation.terminator.java

import static a.b.Class.fooMethod;
// <- meta.import.java keyword.declaration.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^^^^^^ storage.modifier.java
//            ^^^^^^^^^ meta.path.java
//            ^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ entity.name.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^^ meta.import.java entity.name.function.java
//                               ^ punctuation.terminator.java

import static a.b.Class.CONSTANT ;
// <- meta.import.java keyword.declaration.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//                              ^^ - meta.import - meta.path
//            ^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ entity.name.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^ entity.name.constant.java
//                               ^ punctuation.terminator.java

import static /**/ a /**/ . /**/ b /**/ . /**/ Class /**/ . /**/ CONSTANT;
// <- meta.import.java keyword.declaration.import.java
//^^^^^^^^^^^^^^^^^ meta.import.java - meta.path
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//                                                                       ^ - meta.import - meta.path
//            ^^^^ comment.block.empty.java
//                 ^ variable.namespace.java
//                  ^^^^^^^^^^^^^ - entity - variable
//                   ^^^^ comment.block.empty.java
//                        ^ punctuation.accessor.dot.java
//                          ^^^^ comment.block.empty.java
//                               ^ variable.namespace.java
//                                ^^^^^^^^^^^^^ - entity - variable
//                                 ^^^^ comment.block.empty.java
//                                      ^ punctuation.accessor.dot.java
//                                        ^^^^ comment.block.empty.java
//                                             ^^^^^ entity.name.class.java
//                                                  ^^^^^^^^^^^^^ - entity - variable
//                                                   ^^^^ comment.block.empty.java
//                                                        ^ punctuation.accessor.dot.java
//                                                          ^^^^ comment.block.empty.java
//                                                               ^^^^^^^^ entity.name.constant.java
//                                                                       ^ punctuation.terminator.java

import
// <- meta.import.java keyword.declaration.import.java
//^^^^^ meta.import.java - meta.path
    static
//^^^^^^^^^ meta.import.java - meta.path
//  ^^^^^^ storage.modifier.java
    /**/ a
//^^^^^^^ meta.import.java - meta.path
//  ^^^^ comment.block.empty.java
//       ^^ meta.import.java meta.path.java
//       ^ variable.namespace.java
    /**/ .
//^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ punctuation.accessor.dot.java
    /**/ b
//^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ variable.namespace.java
    /**/ .
//^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ punctuation.accessor.dot.java
    /**/ Class
//^^^^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^^^^^ entity.name.class.java
    /**/ .
//^^^^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ punctuation.accessor.dot.java
    /**/ CONSTANT
//^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//               ^ - meta.import - meta.path
//  ^^^^ comment.block.empty.java
//       ^^^^^^^^ entity.name.constant.java
    /**/ ;
//^^^^^^^ - meta.import - meta.path
//  ^^^^ comment.block.empty.java
//       ^ punctuation.terminator.java

import static a.b.Class.*;
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^ meta.import.java meta.path.java
//                       ^ - meta.import - meta.path
//            ^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ entity.name.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^ variable.language.wildcard.asterisk.java


/******************************************************************************
 * Class Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.1
 *****************************************************************************/

class$ ;
// <- meta.variable.identifier.java variable.other.java
//^^^^ meta.variable.identifier.java variable.other.java

$class ;
// <- meta.variable.identifier.java variable.other.java
//^^^^ meta.variable.identifier.java variable.other.java

class
// <- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java keyword.declaration.class.java

class ClassTest
// <- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java keyword.declaration.class.java
//   ^^^^^^^^^^^ meta.class.identifier.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^ entity.name.class.java
//             ^ - entity - keyword - storage

class ClassTest {}}
// <- meta.class.java - meta.class meta.class
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//              ^^ meta.class.java meta.block.java - meta.class meta.class
//                ^ - meta.class
// <- keyword.declaration.class.java
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^ entity.name.class.java
//             ^ - entity - keyword - storage
//              ^ punctuation.section.block.begin.java
//               ^ punctuation.section.block.end.java
//                ^ invalid.illegal.stray.java

class ExtendsTest extends
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^ meta.class.extends.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ storage.modifier.extends.java
//                       ^ - entity - keyword - storage

class ExtendsTest extends Foo {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                            ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ storage.modifier.extends.java
//                       ^ - entity - keyword - storage
//                        ^^^ entity.other.inherited-class.java
//                           ^ - entity - keyword - storage
//                            ^ punctuation.section.block.begin.java
//                             ^ punctuation.section.block.end.java

class ExtendsTest extends @NonNull Foo {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                                     ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ storage.modifier.extends.java
//                        ^ punctuation.definition.annotation.java
//                         ^^^^^^^ variable.annotation.java
//                                ^ - entity - keyword - storage - variable
//                                 ^^^ entity.other.inherited-class.java
//                                    ^ - entity - keyword - storage
//                                     ^ punctuation.section.block.begin.java
//                                      ^ punctuation.section.block.end.java

class ExtendsTest extends @NonNull /**/ a /**/ . /**/ b /**/ . /**/ @a /**/ . b /**/ Foo /**/ {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class - meta.path
//                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends.java meta.path.java - meta.class meta.class
//                                                                                      ^^^^^^ meta.class.extends.java - meta.class meta.class - meta.path
//                                                                                            ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ storage.modifier.extends.java
//                        ^ punctuation.definition.annotation.java
//                         ^^^^^^^ variable.annotation.java
//                                ^ - comment - entity - keyword - storage - variable
//                                 ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                      ^ variable.namespace.java
//                                        ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                             ^ punctuation.accessor.dot.java
//                                               ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                    ^ variable.namespace.java
//                                                      ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                           ^ punctuation.accessor.dot.java
//                                                             ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                                  ^^^^^^^^^^^^^^^^ meta.annotation.identifier.java meta.path.java
//                                                                  ^ punctuation.definition.annotation.java
//                                                                   ^ variable.annotation.namespace.java
//                                                                     ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                                          ^ punctuation.accessor.dot.java
//                                                                            ^ variable.annotation.java
//                                                                              ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                                                   ^^^ entity.other.inherited-class.java
//                                                                                      ^ - comment - entity - keyword - storage
//                                                                                       ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                                                            ^ punctuation.section.block.begin.java
//                                                                                             ^ punctuation.section.block.end.java

public abstract sealed class SealedClassTest permits
// <- meta.class.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java
//                          ^^^^^^^^^^^^^^^^^ meta.class.identifier.java
//                                           ^^^^^^^^ meta.class.permits.java
//^^^^ storage.modifier.java
//     ^^^^^^^^ storage.modifier.java
//              ^^^^^^ storage.modifier.java
//                     ^^^^^ keyword.declaration.class.java
//                           ^^^^^^^^^^^^^^^ entity.name.class.java
//                                           ^^^^^^^ storage.modifier.permits.java

public abstract sealed interface SealedClassTest permits Foo, bar.Baz {}
// <- meta.interface.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java
//                              ^^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                                               ^^^^^^^^^^^^^^^^^^^^^ meta.interface.permits.java
//                                                                    ^^ meta.interface.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^^^^^ storage.modifier.java
//              ^^^^^^ storage.modifier.java
//                     ^^^^^^^^^ keyword.declaration.interface.java
//                               ^^^^^^^^^^^^^^^ entity.name.interface.java
//                                               ^^^^^^^ storage.modifier.permits.java
//                                                       ^^^ entity.other.inherited-class.java
//                                                          ^ punctuation.separator.comma.java
//                                                            ^^^^^^^ meta.path.java
//                                                            ^^^ variable.namespace.java
//                                                               ^ punctuation.accessor.dot.java
//                                                                ^^^ entity.other.inherited-class.java
//                                                                    ^ punctuation.section.block.begin.java
//                                                                     ^ punctuation.section.block.end.java

class GenericTest<
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java

class GenericTest<A
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java

class GenericTest<extends
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^^^^^ storage.modifier.extends.java

class GenericTest<A extends
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                  ^^^^^^^ storage.modifier.extends.java

class GenericTest<A extends Foo
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                  ^^^^^^^ storage.modifier.extends.java
//                          ^^^ storage.type.class.java

class GenericTest<integer extends Foo>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^^^^^ variable.parameter.type.java
//                        ^^^^^^^ storage.modifier.extends.java
//                                ^^^ storage.type.class.java
//                                   ^ punctuation.definition.generic.end.java

class generictest<integer extends foo>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^^^^^ variable.parameter.type.java
//                        ^^^^^^^ storage.modifier.extends.java
//                                ^^^ storage.type.class.java
//                                   ^ punctuation.definition.generic.end.java

class GenericTest<int extends Foo>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^ invalid.illegal.unexpected-keyword.java
//                    ^^^^^^^ storage.modifier.extends.java
//                            ^^^ storage.type.class.java
//                               ^ punctuation.definition.generic.end.java

class GenericTest<? extends Foo>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ invalid.illegal.unexpected-keyword.java
//                  ^^^^^^^ storage.modifier.extends.java
//                          ^^^ storage.type.class.java
//                             ^ punctuation.definition.generic.end.java

class GenericTest<? extends int>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ invalid.illegal.unexpected-keyword.java
//                  ^^^^^^^ storage.modifier.extends.java
//                          ^^^ invalid.illegal.unexpected-keyword.java
//                             ^ punctuation.definition.generic.end.java

class GenericTest<A super Foo>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                  ^^^^^ invalid.illegal.unexpected-keyword.java
//                        ^^^ storage.type.class.java
//                           ^ punctuation.definition.generic.end.java

class GenericTest<super Foo>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^^^ invalid.illegal.unexpected-keyword.java
//                      ^^^ storage.type.class.java
//                         ^ punctuation.definition.generic.end.java

class GenericTest<@Anno A extends @Anno com . @Anno Foo<A, @Anno com . @Anno Bar> & @Anno Foo<? super Baz> . @Anno Bar<A extends Foo>>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                               ^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                           ^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                                                        ^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                                                    ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                                                                                   ^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                                                                    ^ meta.class.identifier.java - meta.generic
//               ^ punctuation.definition.generic.begin.java
//                ^ punctuation.definition.annotation.java
//                 ^^^^ variable.annotation.java
//                      ^ variable.parameter.type.java
//                        ^^^^^^^ storage.modifier.extends.java
//                                ^ punctuation.definition.annotation.java
//                                 ^^^^ variable.annotation.java
//                                      ^^^ variable.namespace.java
//                                          ^ punctuation.accessor.dot.java
//                                                  ^^^ storage.type.class.java
//                                                     ^ punctuation.definition.generic.begin.java
//                                                      ^ storage.type.class.java
//                                                       ^ punctuation.separator.comma.java
//                                                         ^ punctuation.definition.annotation.java
//                                                          ^^^^ variable.annotation.java
//                                                               ^^^ variable.namespace.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                     ^ punctuation.definition.annotation.java
//                                                                      ^^^^ variable.annotation.java
//                                                                           ^^^ storage.type.class.java
//                                                                              ^ punctuation.definition.generic.end.java
//                                                                                ^ keyword.operator.logical.java
//                                                                                  ^ punctuation.definition.annotation.java
//                                                                                   ^^^^ variable.annotation.java
//                                                                                        ^^^ storage.type.class.java
//                                                                                           ^ punctuation.definition.generic.begin.java
//                                                                                            ^ variable.language.wildcard.java
//                                                                                              ^^^^^ keyword.declaration.super.java
//                                                                                                    ^^^ storage.type.class.java
//                                                                                                       ^ punctuation.definition.generic.end.java
//                                                                                                         ^ punctuation.accessor.dot.java
//                                                                                                           ^ punctuation.definition.annotation.java
//                                                                                                            ^^^^ variable.annotation.java
//                                                                                                                 ^^^ storage.type.class.java
//                                                                                                                    ^ punctuation.definition.generic.begin.java
//                                                                                                                     ^ storage.type.class.java
//                                                                                                                       ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                                                                                                               ^^^ storage.type.class.java
//                                                                                                                                  ^^ punctuation.definition.generic.end.java

class generictest<@anno a extends @anno com . @anno foo<a, @anno com . @anno bar> & @anno foo<? super baz> . @anno bar<a extends foo>>
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                               ^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                           ^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                                                        ^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                                                    ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                                                                                   ^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                                                                    ^ meta.class.identifier.java - meta.generic
//               ^ punctuation.definition.generic.begin.java
//                ^ punctuation.definition.annotation.java
//                 ^^^^ variable.annotation.java
//                      ^ variable.parameter.type.java
//                        ^^^^^^^ storage.modifier.extends.java
//                                ^ punctuation.definition.annotation.java
//                                 ^^^^ variable.annotation.java
//                                      ^^^ variable.namespace.java
//                                          ^ punctuation.accessor.dot.java
//                                                  ^^^ storage.type.class.java
//                                                     ^ punctuation.definition.generic.begin.java
//                                                      ^ storage.type.class.java
//                                                       ^ punctuation.separator.comma.java
//                                                         ^ punctuation.definition.annotation.java
//                                                          ^^^^ variable.annotation.java
//                                                               ^^^ variable.namespace.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                     ^ punctuation.definition.annotation.java
//                                                                      ^^^^ variable.annotation.java
//                                                                           ^^^ storage.type.class.java
//                                                                              ^ punctuation.definition.generic.end.java
//                                                                                ^ keyword.operator.logical.java
//                                                                                  ^ punctuation.definition.annotation.java
//                                                                                   ^^^^ variable.annotation.java
//                                                                                        ^^^ storage.type.class.java
//                                                                                           ^ punctuation.definition.generic.begin.java
//                                                                                            ^ variable.language.wildcard.java
//                                                                                              ^^^^^ keyword.declaration.super.java
//                                                                                                    ^^^ storage.type.class.java
//                                                                                                       ^ punctuation.definition.generic.end.java
//                                                                                                         ^ punctuation.accessor.dot.java
//                                                                                                           ^ punctuation.definition.annotation.java
//                                                                                                            ^^^^ variable.annotation.java
//                                                                                                                 ^^^ storage.type.class.java
//                                                                                                                    ^ punctuation.definition.generic.begin.java
//                                                                                                                     ^ storage.type.class.java
//                                                                                                                       ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                                                                                                               ^^^ storage.type.class.java
//                                                                                                                                  ^^ punctuation.definition.generic.end.java

class GenericTest<A> extends Foo<? extends A> {}
//<- meta.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.generic - meta.class meta.class
//               ^^^ meta.class.identifier.java meta.generic.declaration.java - meta.class meta.class
//                  ^ meta.class.identifier.java - meta.generic - meta.class meta.class
//                   ^^^^^^^^^^^ meta.class.extends.java - meta.generic - meta.class meta.class
//                              ^^^^^^^^^^^^^ meta.class.extends.java meta.generic.java - meta.class meta.class
//                                           ^ meta.class.extends.java - meta.generic - meta.class meta.class
//                                            ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^^^^ - entity - keyword - storage
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                 ^ punctuation.definition.generic.end.java
//                   ^^^^^^^ storage.modifier.extends.java
//                          ^ - entity - keyword - storage
//                           ^^^ entity.other.inherited-class.java
//                              ^ punctuation.definition.generic.begin.java
//                               ^ variable.language.wildcard.java
//                                 ^^^^^^^ storage.modifier.extends.java
//                                         ^ storage.type.class.java
//                                          ^ punctuation.definition.generic.end.java
//                                           ^ - entity - keyword - storage
//                                            ^ punctuation.section.block.begin.java
//                                             ^ punctuation.section.block.end.java

class GenericTest<A> extends @Anno com . @Anno Foo<@Anno ? extends @Anno SuperClass . @Anno SubClass & @Anno OtherClass>, @Anno OuterClass {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.generic - meta.class meta.class
//               ^^^ meta.class.identifier.java meta.generic.declaration.java - meta.class meta.class
//                  ^ meta.class.identifier.java - meta.generic - meta.class meta.class
//                   ^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class - meta.generic - meta.path
//                                 ^^^^^^^^^^^^^^^ meta.class.extends.java meta.path.java - meta.class meta.class
//                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends.java meta.generic.java - meta.class meta.class
//                                                                                                                      ^^^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class - meta.generic
//                                                                                                                                         ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^^^^ - entity - keyword - storage
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                 ^ punctuation.definition.generic.end.java
//                   ^^^^^^^ storage.modifier.extends.java
//                          ^ - entity - keyword - storage
//                           ^ punctuation.definition.annotation.java
//                            ^^^^ variable.annotation.java
//                                 ^^^ variable.namespace.java
//                                     ^ punctuation.accessor.dot.java
//                                       ^ punctuation.definition.annotation.java
//                                        ^^^^ variable.annotation.java
//                                             ^^^ entity.other.inherited-class.java
//                                                ^ punctuation.definition.generic.begin.java
//                                                 ^ punctuation.definition.annotation.java
//                                                  ^^^^ variable.annotation.java
//                                                       ^ variable.language.wildcard.java
//                                                         ^^^^^^^ storage.modifier.extends.java
//                                                                 ^ punctuation.definition.annotation.java
//                                                                  ^^^^ variable.annotation.java
//                                                                       ^^^^^^^^^^ storage.type.class.java
//                                                                                  ^ punctuation.accessor.dot.java
//                                                                                    ^ punctuation.definition.annotation.java
//                                                                                     ^^^^ variable.annotation.java
//                                                                                          ^^^^^^^^ storage.type.class.java
//                                                                                                   ^ keyword.operator.logical.java
//                                                                                                     ^ punctuation.definition.annotation.java
//                                                                                                      ^^^^ variable.annotation.java
//                                                                                                           ^^^^^^^^^^ storage.type.class.java
//                                                                                                                     ^ punctuation.definition.generic.end.java
//                                                                                                                      ^ punctuation.separator.comma.java
//                                                                                                                       ^ - entity - keyword - storage - variable
//                                                                                                                        ^ punctuation.definition.annotation.java
//                                                                                                                         ^^^^ variable.annotation.java
//                                                                                                                             ^ - entity - keyword - storage - variable
//                                                                                                                              ^^^^^^^^^^ entity.other.inherited-class.java
//                                                                                                                                         ^ punctuation.section.block.begin.java
//                                                                                                                                          ^ punctuation.section.block.end.java

class ImplementsTest implements
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                   ^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^^ entity.name.class.java
//                  ^ - entity - keyword - storage
//                   ^^^^^^^^^^ storage.modifier.implements.java

class ImplementsTest implements Foo {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                   ^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                  ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^^ entity.name.class.java
//                  ^ - entity - keyword - storage
//                   ^^^^^^^^^^ storage.modifier.implements.java
//                              ^^^ entity.other.inherited-class.java
//                                  ^ punctuation.section.block.begin.java
//                                   ^ punctuation.section.block.end.java

class lowercasetest<t> implements fully.qualified.other<t> {
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                                         ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^ entity.name.class.java
//                 ^ punctuation.definition.generic.begin.java
//                  ^ variable.parameter.type.java
//                   ^ punctuation.definition.generic.end.java
//                    ^ - entity - keyword - storage
//                     ^^^^^^^^^^ storage.modifier.implements.java
//                                ^^^^^ variable.namespace.java
//                                     ^ punctuation.accessor.dot.java
//                                      ^^^^^^^^^ variable.namespace.java
//                                               ^ punctuation.accessor.dot.java
//                                                ^^^^^ entity.other.inherited-class.java
//                                                     ^^^ meta.generic.java
//                                                     ^ punctuation.definition.generic.begin.java
//                                                      ^ storage.type.class.java
//                                                       ^ punctuation.definition.generic.end.java
}
// <- punctuation.section.block.end.java

volatile class extends implements {}
//<- meta.class.java invalid.illegal.unexpected-keyword.java
//^^^^^^^^^^^^ meta.class.java - meta.class meta.class
//^^^^^^ invalid.illegal.unexpected-keyword.java
//            ^ meta.class.identifier.java - meta.class meta.class
//             ^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                     ^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                ^^ meta.class.java meta.block.java - meta.class meta.class
//         ^^^
//            ^ - entity - keyword - storage
//             ^^^^^^^ storage.modifier.extends.java
//                    ^ - entity - keyword - storage
//                     ^^^^^^^^^^ storage.modifier.implements.java
//                               ^ - entity - keyword - storage
//                                ^ punctuation.section.block.begin.java
//                                 ^ punctuation.section.block.end.java

class ExtendsAndImplementsTest extends Foo implements Bar<Foo>, OtherBar {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                             ^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                                                       ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.class.java
//                            ^ - entity - keyword - storage
//                             ^^^^^^^ storage.modifier.extends.java
//                                    ^ - entity - keyword - storage
//                                     ^^^ entity.other.inherited-class.java
//                                        ^ - entity - keyword - storage
//                                         ^^^^^^^^^^ storage.modifier.implements.java
//                                                   ^ - entity - keyword - storage
//                                                    ^^^ entity.other.inherited-class.java
//                                                       ^^^^^ meta.generic.java
//                                                            ^ punctuation.separator.comma.java
//                                                            ^^ - entity - keyword - storage
//                                                              ^^^^^^^^ entity.other.inherited-class.java
//                                                                      ^ - entity - keyword - storage
//                                                                       ^ punctuation.section.block.begin.java
//                                                                        ^ punctuation.section.block.end.java

class ExtendsAndImplementsTest extends Foo, bar implements bar<Foo>, OtherBar {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                             ^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                                                            ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ keyword.declaration.class.java
//    ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.class.java
//                             ^^^^^^^ storage.modifier.extends.java
//                                     ^^^ entity.other.inherited-class.java
//                                        ^ punctuation.separator.comma.java
//                                          ^^^ entity.other.inherited-class.java
//                                              ^^^^^^^^^^ storage.modifier.implements.java
//                                                         ^^^ entity.other.inherited-class.java
//                                                            ^^^^^ meta.generic.java
//                                                                 ^ punctuation.separator.comma.java
//                                                                   ^^^^^^^^ entity.other.inherited-class.java
//                                                                            ^ punctuation.section.block.begin.java
//                                                                             ^ punctuation.section.block.end.java

class AnyClass{AnyClass(){}}
//^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class
//^^^ meta.class.java
//   ^^^^^^^^^ meta.class.identifier.java
//            ^^^^^^^^^^^^^^ meta.class.java meta.block.java
//             ^^^^^^^^ meta.function.identifier.java
//                     ^^ meta.function.parameters.java meta.group.java
//                       ^^ meta.function.java meta.block.java
//^^^ keyword.declaration.class.java
//    ^^^^^^^^ entity.name.class.java
//            ^ punctuation.section.block.begin.java
//             ^^^^^^^^ entity.name.function.constructor.java
//                     ^ punctuation.section.group.begin.java
//                      ^ punctuation.section.group.end.java
//                       ^ punctuation.section.block.begin.java
//                        ^^ punctuation.section.block.end.java

class anyclass{anyclass(){}}
//^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class
//^^^ meta.class.java
//   ^^^^^^^^^ meta.class.identifier.java
//            ^^^^^^^^^^^^^^ meta.class.java meta.block.java
//             ^^^^^^^^ meta.function.identifier.java
//                     ^^ meta.function.parameters.java meta.group.java
//                       ^^ meta.function.java meta.block.java
//^^^ keyword.declaration.class.java
//    ^^^^^^^^ entity.name.class.java
//            ^ punctuation.section.block.begin.java
//             ^^^^^^^^ entity.name.function.constructor.java
//                     ^ punctuation.section.group.begin.java
//                      ^ punctuation.section.group.end.java
//                       ^ punctuation.section.block.begin.java
//                        ^^ punctuation.section.block.end.java

class AnyClass { // comment
//^^^ meta.class.java keyword.declaration.class.java
//   ^^^^^^^^^^ meta.class.identifier.java
//             ^^^^^^^^^^^^^ meta.class.java meta.block.java
//    ^^^^^^^^ entity.name.class.java
//             ^ punctuation.section.block.begin.java
//               ^^^^^^^^^^^^ comment.line.double-slash.java

    const class NestedClass {
//  ^^^^^ invalid.illegal.keyword.java
//        ^^^^^ meta.class.java meta.block.java meta.class.java keyword.declaration.class.java
//             ^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                          ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//              ^^^^^^^^^^^ entity.name.class.java
//                          ^ punctuation.section.block.begin.java

      void declareLocalClasses() {

        class
//      ^^^^^ meta.class.java meta.class.java meta.class.java
//           ^ meta.class.java meta.class.java meta.class.identifier.java
//      ^^^^^ keyword.declaration.class.java

        class LocalClass
//      ^^^^^ meta.class.java meta.class.java meta.class.java
//           ^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.identifier.java
//      ^^^^^ keyword.declaration.class.java
//            ^^^^^^^^^^ entity.name.class.java

        static class LocalClass
//      ^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.java
//                  ^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.identifier.java
//      ^^^^^^ storage.modifier.java
//             ^^^^^ keyword.declaration.class.java
//                   ^^^^^^^^^^ entity.name.class.java

        final class LocalClass extends OtherClass {
//      ^^^^^^^^^^^ meta.class.java meta.class.java meta.class.java
//                 ^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.identifier.java
//                             ^^^^^^^^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.extends.java
//                                                ^^ meta.class.java meta.class.java meta.class.java meta.block.java
//      ^^^^^ storage.modifier.java
//            ^^^^^ keyword.declaration.class.java
//                  ^^^^^^^^^^ entity.name.class.java
//                             ^^^^^^^ storage.modifier.extends.java
//                                     ^^^^^^^^^^ entity.other.inherited-class.java
//                                                ^ punctuation.section.block.begin.java
            public class LocalNestedClass;
//          ^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.java meta.class.java
//                      ^^^^^^^^^^^^^^^^^ meta.class.java meta.class.java meta.class.java meta.class.identifier.java
//          ^^^^^^ storage.modifier.java
//                 ^^^^^ keyword.declaration.class.java
//                       ^^^^^^^^^^^^^^^^ entity.name.class.java
//                                       ^ punctuation.terminator.java
        }
//      ^ punctuation.section.block.end.java
      }
//    ^ punctuation.section.block.end.java

      void classReferences() {
        Foo.class; // comment
//      ^^^ storage.type.class.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^ variable.language.class.java - storage.type.java
//               ^ punctuation.terminator.java
//                 ^^^^^^^^^^^ comment.line.double-slash.java
        super.class;
//      ^^^^^ variable.language.super.java
//           ^ punctuation.accessor.dot.java
//            ^^^^^ variable.language.class.java - storage.type.java
//                 ^ punctuation.terminator.java

        this.class;
//      ^^^^ variable.language.this.java
//          ^ punctuation.accessor.dot.java
//           ^^^^^ variable.language.class.java - storage.type.java
//                ^ punctuation.terminator.java

        this
//      ^^^^ variable.language.this.java
        /**/ .
//      ^^^^ comment.block.empty.java
//           ^ punctuation.accessor.dot.java
        /**/ class
//      ^^^^ comment.block.empty.java
//           ^^^^^ variable.language.class.java - storage.type.java
        /**/ ;
//      ^^^^ comment.block.empty.java
//           ^ punctuation.terminator.java
      }
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
//   ^ meta.class.java meta.block.java - meta.class meta.class

    class SubClass extends AbstractClass {
//  ^^^^^ meta.class.java meta.block.java meta.class.java
//       ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                       ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//  ^^^^^ keyword.declaration.class.java
//        ^^^^^^^^ entity.name.class.java
//                 ^^^^^^^ storage.modifier.extends.java
//                         ^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                       ^ punctuation.section.block.begin.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java

    class subclass extends abstractclass {
//  ^^^^^ meta.class.java meta.block.java meta.class.java
//       ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                       ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//  ^^^^^ keyword.declaration.class.java
//        ^^^^^^^^ entity.name.class.java
//                 ^^^^^^^ storage.modifier.extends.java
//                         ^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                       ^ punctuation.section.block.begin.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java

    class SubClass extends AbstractClass.NestedClass {
//  ^^^^^ meta.class.java meta.block.java meta.class.java
//       ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                                   ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//  ^^^^^ keyword.declaration.class.java
//        ^^^^^^^^ entity.name.class.java
//                 ^^^^^^^ storage.modifier.extends.java
//                         ^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^^^^^ entity.other.inherited-class.java
//                                                   ^ punctuation.section.block.begin.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java

    class subclass extends abstractclass.nestedclass {
//  ^^^^^ meta.class.java meta.block.java meta.class.java
//       ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                                   ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//  ^^^^^ keyword.declaration.class.java
//        ^^^^^^^^ entity.name.class.java
//                 ^^^^^^^ storage.modifier.extends.java
//                         ^^^^^^^^^^^^^ variable.namespace.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^^^^^ entity.other.inherited-class.java
//                                                   ^ punctuation.section.block.begin.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java

    protected class SubClass extends fully.qualified
//  ^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.java
//                 ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                   ^^^^^^^^^^^^^^^^ meta.path.java
//                                   ^^^^^ variable.namespace.java
//                                        ^ punctuation.accessor.dot.java
//                                         ^^^^^^^^^ variable.namespace.java
    .name.AbstractClass {
// ^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//  ^^^^^^^^^^^^^^^^^^^ meta.path.java
//  ^ punctuation.accessor.dot.java
//   ^^^^ variable.namespace.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^^^^^^^^^ entity.other.inherited-class.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java

@Anno           // comment
//<- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
public          // comment
//<- meta.class.java storage.modifier.java
class           // comment
//<- meta.class.java
TestClass       // comment
//<- meta.class.identifier.java entity.name.class.java
extends         // comment
//<- meta.class.extends.java storage.modifier.extends.java
MyClass,        // comment
//<- meta.class.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.class.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.class.implements.java storage.modifier.implements.java
Foo,            // comment
//<- meta.class.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.class.implements.java entity.other.inherited-class.java
{
//<- meta.class.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Eumeration Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.9
 *****************************************************************************/

enum$ ;
// <- meta.variable.identifier.java variable.other.java
//^^^ meta.variable.identifier.java variable.other.java

$enum ;
// <- meta.variable.identifier.java variable.other.java
//^^^ meta.variable.identifier.java variable.other.java

enum
//<- meta.enum.java keyword.declaration.enum.java
//^^ meta.enum.java keyword.declaration.enum.java

enum EnumTest
//<- meta.enum.java keyword.declaration.enum.java
//^^ meta.enum.java keyword.declaration.enum.java
//  ^^^^^^^^^^ meta.enum.identifier.java
//  ^ - entity - keyword - storage
//   ^^^^^^^^ entity.name.enum.java
//           ^ - entity

enum EnumTest {}
//<- meta.enum.java keyword.declaration.enum.java
//^^ meta.enum.java keyword.declaration.enum.java
//  ^^^^^^^^^^ meta.enum.identifier.java
//            ^^ meta.enum.java meta.block.java
//  ^ - entity - keyword - storage
//   ^^^^^^^^ entity.name.enum.java
//           ^ - entity
//            ^ punctuation.section.block.begin.java
//             ^ punctuation.section.block.end.java

public enum EnumTest { int {} }
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^ meta.enum.identifier.java
//                   ^^^^^^^^^^ meta.enum.java meta.block.java
//     ^^^^
//         ^ - entity - keyword - storage
//          ^^^^^^^^ entity.name.enum.java
//                  ^ - entity - punctuation
//                   ^ punctuation.section.block.begin.java
//                     ^^^ storage.type.primitive.java
//                         ^ punctuation.section.block.begin.java
//                          ^ punctuation.section.block.end.java
//                            ^ punctuation.section.block.end.java

public enum EnumTest {FOO, BAR}
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^ meta.enum.identifier.java
//                   ^^^^^^^^^^ meta.enum.java meta.block.java
//     ^^^^
//         ^ - entity - keyword - storage
//          ^^^^^^^^ entity.name.enum.java
//                  ^ - entity - punctuation
//                   ^ punctuation.section.block.begin.java
//                    ^^^ meta.constant.identifier.java entity.name.constant.java
//                       ^ punctuation.separator.comma.java
//                         ^^^ meta.constant.identifier.java entity.name.constant.java
//                            ^ punctuation.section.block.end.java

public enum EnumTest permits OtherClass {FOO, BAR}
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^ meta.enum.identifier.java
//                   ^^^^^^^^^^^^^^^^^^^ meta.enum.permits.java
//                                      ^^^^^^^^^^ meta.enum.java meta.block.java
//     ^^^^
//         ^ - entity - keyword - storage
//          ^^^^^^^^ entity.name.enum.java
//                  ^ - entity - punctuation
//                   ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                           ^^^^^^^^^^ entity.other.inherited-class.java
//                                      ^ punctuation.section.block.begin.java
//                                       ^^^ meta.constant.identifier.java entity.name.constant.java
//                                          ^ punctuation.separator.comma.java
//                                            ^^^ meta.constant.identifier.java entity.name.constant.java
//                                               ^ punctuation.section.block.end.java

public enum FooEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^ meta.enum.identifier.java
//                  ^^ meta.enum.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^
//          ^^^^^^^ entity.name.enum.java
//                  ^ punctuation.section.block.begin.java
  FOO;
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.terminator.java - meta.constant
}
// <- meta.enum.java punctuation.section.block.end.java

public enum FooBarEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^ meta.enum.identifier.java
//                     ^^ meta.enum.java meta.block.java
//     ^^^^
//          ^^^^^^^^^^ entity.name.enum.java
//                     ^ punctuation.section.block.begin.java
  FOO,
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java
  BAR;
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.terminator.java - meta.constant
}
// <- meta.enum.java punctuation.section.block.end.java

public enum FooBarBazEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^^^^ meta.enum.identifier.java
//                        ^^ meta.enum.java meta.block.java
//     ^^^^
//          ^^^^^^^^^^^^^ entity.name.enum.java
//                        ^ punctuation.section.block.begin.java
  FOO,  // comment
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java
//      ^^^^^^^^^^^ comment.line.double-slash.java
  BAR,  /* comment */
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java
//      ^^^^^^^^^^^^^ comment.block.java
  BAZ  // comment
//^^^ meta.constant.identifier.java entity.name.constant.java
//     ^^^^^^^^^^^ comment.line.double-slash.java
}
// <- meta.enum.java punctuation.section.block.end.java

protected enum IllegalTypeParam<T<T> & T<? extends B>> {}
//<- meta.enum.java storage.modifier.java
//^^^^^^^^^^^^ meta.enum.java
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.identifier.java
//                                                     ^^ meta.enum.java meta.block.java
//^^^^^^^ storage.modifier.java
//        ^^^^ keyword.declaration.enum.java
//             ^^^^^^^^^^^^^^^^ entity.name.enum.java
//                             ^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unexpected-type-parameters.java
//                                                     ^ punctuation.section.block.begin.java
//                                                      ^ punctuation.section.block.end.java

public enum TokenKind<T> extends MyEnum, FooBaz<? super T<TT>> implements Foo, Bar {
//<- meta.enum.java storage.modifier.java
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^^^ meta.enum.identifier.java
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.extends.java
//                                                             ^^^^^^^^^^^^^^^^^^^^ meta.enum.implements.java
//                                                                                 ^^ meta.enum.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^
//          ^^^^^^^^^ entity.name.enum.java
//                   ^^^ invalid.illegal.unexpected-type-parameters.java
//                       ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                               ^^^^^^ entity.other.inherited-class.java
//                                     ^ punctuation.separator.comma.java
//                                       ^^^^^^ entity.other.inherited-class.java
//                                             ^ punctuation.definition.generic.begin.java
//                                             ^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//                                              ^ variable.language.wildcard.java
//                                                ^^^^^ keyword.declaration.super.java
//                                                      ^ storage.type.class.java
//                                                       ^ punctuation.definition.generic.begin.java
//                                                       ^^^^ meta.generic.java meta.generic.java
//                                                        ^^ storage.type.class.java
//                                                          ^ punctuation.definition.generic.end.java
//                                                           ^ meta.generic.java punctuation.definition.generic.end.java - meta.generic meta.generic
//                                                             ^^^^^^^^^^ storage.modifier.implements.java
//                                                                        ^^^ entity.other.inherited-class.java
//                                                                           ^ punctuation.separator.comma.java
//                                                                             ^^^ entity.other.inherited-class.java
//                                                                                 ^ punctuation.section.block.begin.java

    a,
//  ^ meta.constant.identifier.java entity.name.constant.java - meta.constant meta.constant
//   ^ punctuation.separator.comma.java - meta.constant

    a(1, 2, 3),
//  ^ meta.constant.identifier.java entity.name.constant.java - meta.constant meta.constant
//   ^^^^^^^^^ meta.constant.arguments.java meta.group.java - meta.constant meta.constant
//   ^ punctuation.section.group.begin.java
//    ^ meta.number.integer.decimal.java constant.numeric.value.java
//     ^ punctuation.separator.comma.java
//       ^ meta.number.integer.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.comma.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java
//           ^ punctuation.section.group.end.java
//            ^ punctuation.separator.comma.java

    a
//  ^ meta.constant.identifier.java entity.name.constant.java
    (),
//  ^ meta.constant.arguments.java meta.group.java punctuation.section.group.begin.java
//   ^ meta.constant.arguments.java meta.group.java punctuation.section.group.end.java
//    ^ punctuation.separator.comma.java

    a
//  ^ meta.constant.identifier.java entity.name.constant.java
    {
//  ^^ meta.constant.java meta.block.java
//  ^ punctuation.section.block.begin.java
    },
//^^^ meta.constant.java meta.block.java
//  ^ punctuation.section.block.end.java
//   ^ punctuation.separator.comma.java

    a { public void doSomething() { return; } },
//  ^^ meta.constant.identifier.java - meta.constant meta.constant
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constant.java meta.block.java - meta.constant meta.constant
//      ^^^^^^^ meta.function.modifier.java
//             ^^^^^ meta.function.return-type.java
//                  ^^^^^^^^^^^ meta.function.identifier.java
//                             ^^ meta.function.parameters.java meta.group.java
//                               ^ meta.function.java
//                                ^^^^^^^^^^^ meta.function.java meta.block.java
//  ^ entity.name.constant.java
//    ^ punctuation.section.block.begin.java
//      ^^^^^^ storage.modifier.java
//             ^^^^ meta.function.return-type.java
//      ^^^^^^ storage.modifier.java
//             ^^^^ storage.type.void.java
//                  ^^^^^^^^^^^ entity.name.function.java
//                             ^ punctuation.section.group.begin.java
//                              ^ punctuation.section.group.end.java
//                                ^ punctuation.section.block.begin.java
//                                  ^^^^^^ keyword.control.flow.return.java
//                                        ^ punctuation.terminator.java
//                                          ^ punctuation.section.block.end.java
//                                            ^ punctuation.section.block.end.java
//                                             ^ punctuation.separator.comma.java

    a ( 1 , 2 , 3 ) { public void doSomething() { return; } },
//  ^^ meta.constant.identifier.java - meta.constant meta.constant
//    ^^^^^^^^^^^^^ meta.constant.arguments.java meta.group.java - meta.constant meta.constant
//                 ^ meta.constant.java - meta.constant meta.constant
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constant.java meta.block.java - meta.constant meta.constant
//                    ^^^^^^^ meta.function.modifier.java
//                           ^^^^^ meta.function.return-type.java
//                                ^^^^^^^^^^^ meta.function.identifier.java
//                                           ^^ meta.function.parameters.java meta.group.java
//                                             ^ meta.function.java
//                                              ^^^^^^^^^^^ meta.function.java meta.block.java
//  ^ entity.name.constant.java
//    ^ punctuation.section.group.begin.java
//      ^ meta.number.integer.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.comma.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java
//            ^ punctuation.separator.comma.java
//              ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.section.group.end.java
//                  ^ punctuation.section.block.begin.java
//                    ^^^^^^ storage.modifier.java
//                           ^^^^ storage.type.void.java
//                                ^^^^^^^^^^^ entity.name.function.java
//                                           ^ punctuation.section.group.begin.java
//                                            ^ punctuation.section.group.end.java
//                                              ^ punctuation.section.block.begin.java
//                                                ^^^^^^ keyword.control.flow.return.java
//                                                      ^ punctuation.terminator.java
//                                                        ^ punctuation.section.block.end.java
//                                                          ^ punctuation.section.block.end.java
//                                                           ^ punctuation.separator.comma.java

    A,
//  ^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java

    A(1),
//  ^ meta.constant.identifier.java entity.name.constant.java
//   ^ meta.constant.arguments.java meta.group.java punctuation.section.group.begin.java
//    ^ meta.constant.arguments.java meta.group.java meta.number.integer.decimal.java constant.numeric.value.java
//     ^ meta.constant.arguments.java meta.group.java punctuation.section.group.end.java
//      ^ punctuation.separator.comma.java

    A {},
//  ^^ meta.constant.identifier.java
//  ^ entity.name.constant.java
//    ^ meta.constant.java meta.block.java punctuation.section.block.begin.java
//     ^ meta.constant.java meta.block.java punctuation.section.block.end.java
//      ^ punctuation.separator.comma.java

    integerToken,
//  ^^^^^^^^^^^^ meta.constant.identifier.java entity.name.constant.java
//              ^ punctuation.separator.comma.java

    integerToken("integer literal"),
//  ^^^^^^^^^^^^ meta.constant.identifier.java entity.name.constant.java
//              ^^^^^^^^^^^^^^^^^^^ meta.constant.arguments.java meta.group.java
//              ^ punctuation.section.group.begin.java
//               ^^^^^^^^^^^^^^^^^ string.quoted.double.java
//                                ^ punctuation.section.group.end.java
//                                 ^ punctuation.separator.comma.java

    integerToken {};
//  ^^^^^^^^^^^^ meta.constant.identifier.java entity.name.constant.java
//              ^ meta.constant.identifier.java - constant
//               ^ meta.constant.java meta.block.java punctuation.section.block.begin.java
//                ^ meta.constant.java meta.block.java punctuation.section.block.end.java
//                 ^ punctuation.terminator.java

    int {}
//  ^^^ storage.type.primitive.java

    const {}
//  ^^^^^ invalid.illegal.keyword.java

    static {}
//  ^^^^^^ storage.modifier.java

    String image = "";
//  ^^^^^^ storage.type.class.java
//         ^^^^^ variable.other.member.java
//               ^ keyword.operator.assignment.java
//                 ^^ string.quoted.double.java
//                   ^ punctuation.terminator.java

    TokenKind(String s) {}
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.enum.java meta.block.java meta.function - meta.function meta.function
//  ^^^^^^^^^ meta.function.identifier.java
//           ^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                     ^^^ meta.function.java - meta.function meta.function
//  ^^^^^^^^^ entity.name.function.constructor.java
//           ^ punctuation.section.group.begin.java
//            ^^^^^^ storage.type.class.java
//                   ^ variable.parameter.java
//                    ^ punctuation.section.group.end.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

    final int attribAfterConstructor;
//  ^^^^^^ meta.field.modifier.java
//        ^^^^ meta.field.type.java
//            ^^^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                  ^ - meta.field
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                  ^ punctuation.terminator.java

    public static void main(String[]a){}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.java meta.block.java meta.function - meta.function meta.function
//  ^^^^^^^^^^^^^^ meta.function.modifier.java
//                ^^^^^ meta.function.return-type.java
//                     ^^^^ meta.function.identifier.java
//                         ^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                    ^^ meta.function.java
//  ^^^^^^ storage.modifier.java
//         ^^^^^^ storage.modifier.java
//                ^^^^ storage.type.void.java
//                     ^^^^ entity.name.function.java
//                         ^ punctuation.section.group.begin.java
//                          ^^^^^^ storage.type.class.java
//                                ^^ storage.modifier.array.java
//                                  ^ variable.parameter.java
//                                   ^ punctuation.section.group.end.java
//                                    ^ punctuation.section.block.begin.java
//                                     ^ punctuation.section.block.end.java

    final int attribAfterMember;
//  ^^^^^^ meta.field.modifier.java
//        ^^^^ meta.field.type.java
//            ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ - meta.field
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                             ^ punctuation.terminator.java

    private class SubClass {}
//  ^^^^^^^^^^^^^ meta.class.java
//               ^^^^^^^^^^ meta.class.identifier.java
//                         ^^ meta.class.java meta.block.java
//  ^^^^^^^ storage.modifier.java
//          ^^^^^ keyword.declaration.class.java
//                ^^^^^^^^ entity.name.class.java
//                         ^ punctuation.section.block.begin.java
//                          ^ punctuation.section.block.end.java

    private final int attribAfterClass;
//  ^^^^^^^^^^^^^^ meta.field.modifier.java
//                ^^^^ meta.field.type.java
//                    ^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                    ^ - meta.field
//  ^^^^^^^ storage.modifier.java
//          ^^^^^ storage.modifier.java
//                ^^^ storage.type.primitive.java
//                    ^^^^^^^^^^^^^^^^ variable.other.member.java
//                                    ^ punctuation.terminator.java
}
//<- meta.enum.java meta.block.java punctuation.section.block.end.java

@Anno           // comment
//<- meta.enum.java meta.annotation.identifier.java punctuation.definition.annotation.java
public          // comment
//<- meta.enum.java storage.modifier.java
enum            // comment
//<- meta.enum.java
TokenKind       // comment
//<- meta.enum.identifier.java entity.name.enum.java
extends         // comment
//<- meta.enum.extends.java invalid.illegal.unexpected-keyword.java
MyEnum,         // comment
//<- meta.enum.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.enum.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.enum.implements.java storage.modifier.implements.java
Foo,            // comment
//<- meta.enum.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.enum.implements.java entity.other.inherited-class.java
{
//<- meta.enum.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.enum.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Interface Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-9.html#jls-9.1
 *****************************************************************************/

interface$ ;
// <- meta.variable.identifier.java variable.other.java
//^^^^^^^^ meta.variable.identifier.java variable.other.java

$interface ;
// <- meta.variable.identifier.java variable.other.java
//^^^^^^^^ meta.variable.identifier.java variable.other.java

interface
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java keyword.declaration.interface.java
//       ^ meta.interface.identifier.java

interface TestIntf
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^ meta.interface.identifier.java
//^^^^^^^ keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java

interface TestIntf extends
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^ meta.interface.identifier.java
//                 ^^^^^^^^ meta.interface.extends.java
//^^^^^^^ keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java
//                 ^^^^^^^ storage.modifier.extends.java

interface TestIntf extends A, BB {}
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^ meta.interface.identifier.java
//                 ^^^^^^^^^^^^^^ meta.interface.extends.java
//                               ^^ meta.interface.java meta.block.java
//^^^^^^^ keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java
//                 ^^^^^^^ storage.modifier.extends.java
//                         ^ entity.other.inherited-class.java
//                          ^ punctuation.separator.comma.java
//                            ^^ entity.other.inherited-class.java
//                               ^ punctuation.section.block.begin.java
//                                ^ punctuation.section.block.end.java

public interface /**/ TestIntf <T1, T2> /**/ extends /**/ A /**/, /**/ BB /**/ {}
//<- meta.interface.java storage.modifier.java
//^^^^^^^^^^^^^^ meta.interface.java
//              ^^^^^^^^^^^^^^^ meta.interface.identifier.java - meta.generic
//                             ^^^^^^^^ meta.interface.identifier.java meta.generic.declaration.java
//                                     ^^^^^^ meta.interface.identifier.java - meta.generic
//                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.extends.java
//                                                                             ^^ meta.interface.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^^^^^^ keyword.declaration.interface.java
//               ^^^^ comment.block.empty.java
//                    ^^^^^^^^ entity.name.interface.java
//                             ^ punctuation.definition.generic.begin.java
//                              ^^ variable.parameter.type.java
//                                ^ punctuation.separator.comma.java
//                                  ^^ variable.parameter.type.java
//                                    ^ punctuation.definition.generic.end.java
//                                      ^^^^ comment.block.empty.java
//                                           ^^^^^^^ storage.modifier.extends.java
//                                                   ^^^^ comment.block.empty.java
//                                                        ^ entity.other.inherited-class.java
//                                                          ^^^^ comment.block.empty.java
//                                                              ^ punctuation.separator.comma.java
//                                                                ^^^^ comment.block.empty.java
//                                                                     ^^ entity.other.inherited-class.java
//                                                                        ^^^^ comment.block.empty.java
//                                                                             ^ punctuation.section.block.begin.java
//                                                                              ^ punctuation.section.block.end.java

public abstract sealed interface SealedInterfaceTest permits
// <- meta.interface.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java
//                              ^^^^^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                                                   ^^^^^^^^ meta.interface.permits.java
//^^^^ storage.modifier.java
//     ^^^^^^^^ storage.modifier.java
//              ^^^^^^ storage.modifier.java
//                     ^^^^^^^^^ keyword.declaration.interface.java
//                               ^^^^^^^^^^^^^^^^^^^ entity.name.interface.java
//                                                   ^^^^^^^ storage.modifier.permits.java

public abstract sealed interface SealedInterfaceTest permits Foo, bar.Baz {}
// <- meta.interface.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java
//                              ^^^^^^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                                                   ^^^^^^^^^^^^^^^^^^^^^ meta.interface.permits.java
//                                                                        ^^ meta.interface.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^^^^^ storage.modifier.java
//              ^^^^^^ storage.modifier.java
//                     ^^^^^^^^^ keyword.declaration.interface.java
//                               ^^^^^^^^^^^^^^^^^^^ entity.name.interface.java
//                                                   ^^^^^^^ storage.modifier.permits.java
//                                                           ^^^ entity.other.inherited-class.java
//                                                              ^ punctuation.separator.comma.java
//                                                                ^^^^^^^ meta.path.java
//                                                                ^^^ variable.namespace.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                    ^^^ entity.other.inherited-class.java
//                                                                        ^ punctuation.section.block.begin.java
//                                                                         ^ punctuation.section.block.end.java

@Anno           // comment
//<- meta.interface.java meta.annotation.identifier.java punctuation.definition.annotation.java
public          // comment
//<- meta.interface.java storage.modifier.java
interface       // comment
//<- meta.interface.java
TestIntf        // comment
//<- meta.interface.identifier.java entity.name.interface.java
<T1, T2>
//<- meta.interface.identifier.java meta.generic.declaration.java
extends         // comment
//<- meta.interface.extends.java storage.modifier.extends.java
MyEnum,         // comment
//<- meta.interface.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.interface.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.interface.implements.java invalid.illegal.unexpected-keyword.java
Foo,            // comment
//<- meta.interface.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.interface.implements.java entity.other.inherited-class.java
{
//<- meta.interface.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.interface.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Annotation Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-9.html#jls-9.6
 *****************************************************************************/

@interface$ ;
//<- meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java

@$interface ;
//<- meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java

@interface
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java keyword.declaration.interface.java
//        ^ meta.interface.identifier.java

@interface AnnotationType
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java
//        ^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//^^^^^^^^ keyword.declaration.interface.java
//         ^^^^^^^^^^^^^^ entity.name.interface.java

// Note: The extends is actually not allowed here, but the syntax definition does
//       not yet distiguish between interface types and annotation types
@interface AnnotationType extends
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java
//        ^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                        ^^^^^^^^ meta.interface.extends.java
//^^^^^^^^ keyword.declaration.interface.java
//         ^^^^^^^^^^^^^^ entity.name.interface.java
//                        ^^^^^^^ storage.modifier.extends.java

@interface AnnotationType {
//<- meta.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java
//        ^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                        ^^ meta.interface.java meta.block.java
//^^^^^^^^ keyword.declaration.interface.java
//         ^^^^^^^^^^^^^^ entity.name.interface.java
//                        ^ punctuation.section.block.begin.java

  int numericValue() default 42;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java meta.block.java meta.function - meta.function meta.function
//^^^^ meta.function.return-type.java
//    ^^^^^^^^^^^^ meta.function.identifier.java
//                ^^ meta.function.parameters.java meta.group.java
//                  ^ meta.function.java
//                   ^^^^^^^^^^ meta.function.default.java
//                             ^ - meta.function
//    ^^^^^^^^^^^^ entity.name.function.java
//                ^ punctuation.section.group.begin.java
//                 ^ punctuation.section.group.end.java
//                   ^^^^^^^ keyword.declaration.default.java
//                           ^^ constant.numeric

  boolean booleanValue() default true;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^ meta.function.return-type.java
//        ^^^^^^^^^^^^ meta.function.identifier.java
//                    ^^ meta.function.parameters.java meta.group.java
//                      ^ meta.function.java
//                       ^^^^^^^^^^^^ meta.function.default.java
//                                   ^ - meta.function
//        ^^^^^^^^^^^^ entity.name.function.java
//                    ^ punctuation.section.group.begin.java
//                     ^ punctuation.section.group.end.java
//                       ^^^^^^^ keyword.declaration.default.java
//                               ^^^^ constant.language

  char charValue() default 'S';
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^^^^^^^^ meta.function.identifier.java
//              ^^ meta.function.parameters.java meta.group.java
//                ^ meta.function.java
//                 ^^^^^^^^^^^ meta.function.default.java
//                            ^ - meta.function
//     ^^^^^^^^^ entity.name.function.java
//              ^ punctuation.section.group.begin.java
//               ^ punctuation.section.group.end.java
//                 ^^^^^^^ keyword.declaration.default.java
//                         ^^^ string.quoted.single.java

  String value() default "Default value";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^ meta.function.return-type.java
//       ^^^^^ meta.function.identifier.java
//            ^^ meta.function.parameters.java meta.group.java
//              ^ meta.function.java
//       ^^^^^ entity.name.function.java
//            ^ punctuation.section.group.begin.java
//             ^ punctuation.section.group.end.java
//               ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.default.java
//                                      ^ - meta.function
//               ^^^^^^^ keyword.declaration.default.java
//                       ^^^^^^^^^^^^^^^ string.quoted.double.java

  Class<?> classValue() default String.class;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^ meta.function.return-type.java
//         ^^^^^^^^^^ meta.function.identifier.java
//                   ^^ meta.function.parameters.java meta.group.java
//                     ^ meta.function.java
//                      ^^^^^^^^^^^^^^^^^^^^ meta.function.default.java
//                                          ^ - meta.function
//         ^^^^^^^^^^ entity.name.function.java
//                   ^ punctuation.section.group.begin.java
//                    ^ punctuation.section.group.end.java
//                      ^^^^^^^ keyword.declaration.default.java
//                              ^^^^^^ storage.type.class.java
//                                    ^ punctuation.accessor.dot.java
//                                     ^^^^^ variable.language.class.java - storage.type.java

  String[] arrayValue()[] default {"Foo", "Bar"};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^ meta.function.return-type.java
//         ^^^^^^^^^^ meta.function.identifier.java
//                   ^^ meta.function.parameters.java meta.group.java
//                     ^^^ meta.function.java
//                        ^^^^^^^^ meta.function.default.java - meta.braces
//                                ^^^^^^^^^^^^^^ meta.function.default.java meta.braces.java
//                                              ^ - meta.function
//         ^^^^^^^^^^ entity.name.function.java
//                   ^ punctuation.section.group.begin.java
//                    ^ punctuation.section.group.end.java
//                     ^^ storage.modifier.array.java
//                        ^^^^^^^ keyword.declaration.default.java
//                                ^ punctuation.section.braces.begin.java
//                                 ^^^^^ string.quoted.double.java
//                                      ^ punctuation.separator.comma.java
//                                        ^^^^^ string.quoted.double.java
//                                             ^ punctuation.section.braces.end.java
}

/******************************************************************************
 * Record Class Tests
 * https://docs.oracle.com/javase/specs/jls/se16/html/jls-8.html#jls-8.10
 *****************************************************************************/

record
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^ meta.class.identifier.java

record RecordTest
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^^ meta.class.identifier.java
//     ^^^^^^^^^^ entity.name.class.java

record RecordTest<>
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^ meta.class.identifier.java - meta.generic
//               ^^ meta.class.identifier.java meta.generic.declaration.java
//                 ^ meta.class.identifier.java - meta.generic
//     ^^^^^^^^^^ entity.name.class.java
//               ^ punctuation.definition.generic.begin.java
//                ^ punctuation.definition.generic.end.java

record RecordTest<T>
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^ meta.class.identifier.java - meta.generic
//               ^^^ meta.class.identifier.java meta.generic.declaration.java
//                  ^ meta.class.identifier.java - meta.generic
//     ^^^^^^^^^^ entity.name.class.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                 ^ punctuation.definition.generic.end.java

record RecordTest( {  }
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^ meta.class.identifier.java
//               ^^ meta.class.parameters.java meta.group.java
//                 ^^^^ meta.class.java meta.block.java
//     ^^^^^^^^^^ entity.name.class.java
//               ^ punctuation.section.group.begin.java
//                 ^ punctuation.section.block.begin.java
//                    ^ punctuation.section.block.end.java

record RecordTest<>( {  }
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^ meta.class.identifier.java - meta.generic
//               ^^ meta.class.identifier.java meta.generic.declaration.java
//                 ^^ meta.class.parameters.java meta.group.java
//                   ^^^^ meta.class.java meta.block.java
//     ^^^^^^^^^^ entity.name.class.java
//               ^ punctuation.definition.generic.begin.java
//                ^ punctuation.definition.generic.end.java
//                 ^ punctuation.section.group.begin.java
//                   ^ punctuation.section.block.begin.java
//                      ^ punctuation.section.block.end.java

record RecordTest(int x, int y) { }
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^ meta.class.identifier.java
//               ^^^^^^^^^^^^^^ meta.class.parameters.java meta.group.java
//                             ^ meta.class.java
//                              ^^^ meta.class.java meta.block.java
//     ^^^^^^^^^^ entity.name.class.java
//               ^ punctuation.section.group.begin.java
//                ^^^ storage.type.primitive.java
//                    ^ variable.parameter.java
//                     ^ punctuation.separator.comma.java
//                       ^^^ storage.type.primitive.java
//                           ^ variable.parameter.java
//                            ^ punctuation.section.group.end.java
//                              ^ punctuation.section.block.begin.java
//                                ^ punctuation.section.block.end.java

record RecordTest<T>(int x, @notnull foo bar) implements Foo, Bar { }
// <- meta.class.java keyword.declaration.record.java
//^^^^ meta.class.java keyword.declaration.record.java
//    ^^^^^^^^^^^^^^ meta.class.identifier.java
//               ^^^ meta.generic.declaration.java
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.parameters.java meta.group.java
//                          ^^^^^^^^ meta.annotation.identifier.java
//                                           ^ meta.class.java
//                                            ^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java
//                                                                ^^^ meta.class.java meta.block.java
//     ^^^^^^^^^^ entity.name.class.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                 ^ punctuation.definition.generic.end.java
//                  ^ punctuation.section.group.begin.java
//                   ^^^ storage.type.primitive.java
//                       ^ variable.parameter.java
//                        ^ punctuation.separator.comma.java
//                          ^ punctuation.definition.annotation.java
//                           ^^^^^^^ variable.annotation.java
//                                   ^^^ storage.type.class.java
//                                       ^^^ variable.parameter.java
//                                          ^ punctuation.section.group.end.java
//                                            ^^^^^^^^^^ storage.modifier.implements.java
//                                                       ^^^ entity.other.inherited-class.java
//                                                          ^ punctuation.separator.comma.java
//                                                            ^^^ entity.other.inherited-class.java
//                                                                ^ punctuation.section.block.begin.java
//                                                                  ^ punctuation.section.block.end.java

record CompactConstructorTests(int foo) {
   CompactConstructorTests {
// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.identifier.java
//                         ^^ meta.class.java meta.block.java meta.function.java meta.block.java
//                         ^ punctuation.section.block.begin.java
      foo = 20;
//   ^^^^^^^^^^^ meta.function.java meta.block.java
//    ^^^ variable.other.java
//        ^ keyword.operator.assignment.java
//          ^^ constant.numeric.value.java
//            ^ punctuation.terminator.java
   }
// ^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}
// <- meta.class.java meta.block.java punctuation.section.block.end.java

/******************************************************************************
 * Field Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.4
 *****************************************************************************/

class FieldDeclarationTests {

  const int bar; // this comment() is recognized as code
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^ - meta.field
//      ^^^^ meta.field.type.java
//          ^^^ meta.field.identifier.java
//             ^ - meta.field
//^^^^^ invalid.illegal.keyword.java
//      ^^^ storage.type.primitive.java
//          ^^^ variable.other.member.java
//             ^ punctuation.terminator.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
//               ^^ punctuation.definition.comment.java

  int
//^^^^ meta.field.type.java - meta.field meta.field
//^^^ storage.type.primitive.java

  int foo
//^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java

  int foo =
//^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^ meta.field.value.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java

  int foo = 0
//^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^ meta.field.value.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java

  int foo = 0 ,
//^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^ meta.field.value.java
//            ^ meta.field.java
//             ^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java
//            ^ punctuation.separator.comma.java

  int foo = 0 , bar ;
//^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^ meta.field.value.java
//            ^ meta.field.java
//             ^^^^^ meta.field.identifier.java
//                  ^ - meta.field
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java
//            ^ punctuation.separator.comma.java
//              ^^^ variable.other.member.java
//                  ^ punctuation.terminator.java

  int =
//^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^ meta.field.java
//     ^ meta.field.value.java
//^^^ storage.type.primitive.java
//    ^ keyword.operator.assignment.java

  public
//^^^^^^^ meta.field.modifier.java
//^^^^^^ storage.modifier.java
//      ^ - storage
  int foo , bar
//<- meta.field.modifier.java - meta.field meta.field - storage
//^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^^^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ punctuation.separator.comma.java
//          ^^^ variable.other.member.java
    , baz
//^^^^^^^^ - meta.field meta.field
//^^ meta.field.identifier.java
//  ^ meta.field.java
//    ^^^^ meta.field.identifier.java
//  ^ punctuation.separator.comma.java
//    ^^^ variable.other.member.java
      = 10 ,
//^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.identifier.java
//    ^ meta.field.java
//     ^^^^ meta.field.value.java
//         ^ meta.field.java
//    ^ keyword.operator.assignment.java
//      ^^ meta.number.integer.decimal.java constant.numeric.value.java
//         ^ punctuation.separator.comma.java
    , = 20
//^^^^^^^^^ - meta.field meta.field
//^^ meta.field.identifier.java
//  ^ meta.field.java
//   ^ meta.field.identifier.java
//    ^ meta.field.java
//     ^^^^ meta.field.value.java
//  ^ punctuation.separator.comma.java
//    ^ keyword.operator.assignment.java
//      ^^ meta.number.integer.decimal.java constant.numeric.value.java
    , , ;
//^^^^^^ - meta.field meta.field
//^^ meta.field.value.java
//  ^ meta.field.java punctuation.separator.comma.java
//   ^ meta.field.identifier.java
//    ^ meta.field.java punctuation.separator.comma.java
//     ^ meta.field.identifier.java
//      ^ punctuation.terminator.java - meta.field

  int[]
//^^^^^^ - meta.field meta.field
//^^^^^^ meta.field.type.java
//^^^ storage.type.primitive.java
//   ^^ storage.modifier.array.java

  int []
//^^^^^^ - meta.field meta.field
//^^^^^^ meta.field.type.java
//^^^ storage.type.primitive.java
//    ^^ storage.modifier.array.java

  int[] foo
//^^^^^^^^^ - meta.field meta.field
//^^^^^^ meta.field.type.java
//      ^^^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//   ^^ storage.modifier.array.java
//      ^^^ variable.other.member.java

  int foo[], []
//^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^^ meta.field.identifier.java
//         ^ meta.field.java
//          ^^^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//       ^^ storage.modifier.array.java
//         ^ punctuation.separator.comma.java
//           ^^ storage.modifier.array.java

  public protected private static final transient volatile int foo
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.modifier.java
//                                                         ^^^^ meta.field.type.java
//                                                             ^^^^ meta.field.identifier.java
//^^^^^^ storage.modifier.java
//      ^ - storage
//       ^^^^^^^^^ storage.modifier.java
//                ^ - storage
//                 ^^^^^^^ storage.modifier.java
//                        ^ - storage
//                         ^^^^^^ storage.modifier.java
//                               ^ - storage
//                                ^^^^^ storage.modifier.java
//                                     ^ - storage
//                                      ^^^^^^^^^ storage.modifier.java
//                                               ^ - storage
//                                                ^^^^^^^^ storage.modifier.java
//                                                        ^ - storage
//                                                         ^^^ storage.type.primitive.java
//                                                            ^ - storage - variable
//                                                             ^^^ variable.other.member.java
//                                                                ^ - variable

  abstract native synchronized strictfp default int foo.bar
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.modifier.java - storage
//                                              ^^^^ meta.field.type.java
//                                                  ^^^^^^^^ meta.field.identifier.java
//^^^^^^^^ invalid.illegal.unexpected-keyword.java
//        ^ - invalid
//         ^^^^^^ invalid.illegal.unexpected-keyword.java
//               ^ - invalid
//                ^^^^^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                            ^ - invalid
//                             ^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                     ^ - invalid
//                                      ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                             ^ - invalid
//                                              ^^^ storage.type.primitive.java
//                                                 ^ - storage - variable
//                                                  ^^^ variable.other.member.java
//                                                     ^ invalid.illegal.unexpected-accessor.java
//                                                      ^^^ invalid.illegal.unexpected-member.java

  private String
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.type.class.java

  private string
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.type.class.java

  private String memberString1 = "Hello";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//               ^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ meta.field.java
//                              ^^^^^^^^ meta.field.value.java
//                                      ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.type.class.java
//               ^^^^^^^^^^^^^ variable.other.member.java
//                             ^ keyword.operator.assignment.java
//                               ^^^^^^^ string.quoted.double.java
//                                      ^ punctuation.terminator.java

  private String memberString2 = @Anno new String("Hello");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//               ^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ meta.field.java
//                              ^ meta.field.value.java - meta.instantiation - meta.annotation
//                               ^^^^^ meta.field.value.java meta.annotation.identifier.java
//                                    ^ meta.field.value.java - meta.annotation - meta.instantiation
//                                     ^^^^^^^^^^^^^^^^^^^ meta.field.value.java meta.instantiation.java - meta.annotation
//                                                        ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.type.class.java
//               ^^^^^^^^^^^^^ variable.other.member.java
//                             ^ keyword.operator.assignment.java
//                               ^ punctuation.definition.annotation.java
//                                ^^^^ variable.annotation.java
//                                     ^^^ keyword.other.storage.new.java
//                                         ^^^^^^ storage.type.class.java
//                                               ^ punctuation.section.group.begin.java
//                                                ^^^^^^^ string.quoted.double.java
//                                                       ^ punctuation.section.group.end.java
//                                                        ^ punctuation.terminator.java

  private String memberString3 = String.valueOf("Hello");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//               ^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ meta.field.java
//                              ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.field.value.java
//                                      ^^^^^^^ meta.function-call.identifier.java
//                                             ^^^^^^^^^ meta.function-call.arguments.java meta.group.java
//                                                      ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.type.class.java
//               ^^^^^^^^^^^^^ variable.other.member.java
//                             ^ keyword.operator.assignment.java
//                               ^^^^^^ storage.type.class.java
//                                     ^ punctuation.accessor.dot.java
//                                      ^^^^^^^ variable.function.java
//                                             ^ punctuation.section.group.begin.java
//                                              ^^^^^^^ string.quoted.double.java
//                                                     ^ punctuation.section.group.end.java
//                                                      ^ punctuation.terminator.java

  private int memberLpos = memberString3.indexOf("l");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^ meta.field.type.java
//            ^^^^^^^^^^^ meta.field.identifier.java
//                       ^ meta.field.java
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.field.value.java
//                                       ^^^^^^^ meta.function-call.identifier.java
//                                              ^^^^^ meta.function-call.arguments.java meta.group.java
//                                                   ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^^^^^^ variable.other.member.java
//                       ^ keyword.operator.assignment.java
//                         ^^^^^^^^^^^^^ variable.other.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^ variable.function.java
//                                              ^ punctuation.section.group.begin.java
//                                               ^^^ string.quoted.double.java
//                                                  ^ punctuation.section.group.end.java
//                                                   ^ punctuation.terminator.java

  public var MY_CONST = 0x4002;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^ meta.field.modifier.java
//       ^^^^ meta.field.type.java
//           ^^^^^^^^^ meta.field.identifier.java
//                    ^ meta.field.java
//                     ^^^^^^^ meta.field.value.java
//                            ^ - meta.field
//^^^^^^ storage.modifier.java
//       ^^^ invalid.illegal.unexpected-keyword.java
//           ^^^^^^^^ entity.name.constant.java
//                    ^ keyword.operator.assignment.java
//                      ^^^^^^ constant.numeric
//                            ^ punctuation.terminator.java

  private static final string DEFAULT_IDEMPOTENCY_KEY = "44493";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^ meta.field.modifier.java
//                     ^^^^^^^ meta.field.type.java
//                            ^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                                    ^ meta.field.java
//                                                     ^^^^^^^^ meta.field.value.java
//                                                             ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^^^ storage.modifier.java
//                     ^^^^^^ storage.type.class.java
//                            ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.constant.java
//                                                    ^ keyword.operator.assignment.java
//                                                      ^^^^^^^ string.quoted.double.java
//                                                             ^ punctuation.terminator.java
//

  public static
//^^^^^^^^^^^^^^ meta.field.modifier.java
//^^^^^^ storage.modifier.java
//       ^^^^^^ storage.modifier.java
  final MyObject
//^^^^^^ meta.field.modifier.java
//      ^^^^^^^^^ meta.field.type.java
//^^^^^ storage.modifier.java
//      ^^^^^^^^ storage.type.class.java
    MY_CONST = new MyObject(),
//^^ meta.field.type.java
//  ^^^^^^^^^ meta.field.identifier.java
//           ^ meta.field.java
//            ^^^^^^^^^^^^^^^ meta.field.value.java
//                           ^ meta.field.java
//  ^^^^^^^^ entity.name.constant.java
//           ^ keyword.operator.assignment.java
//             ^^^ keyword.other.storage.new.java
//                 ^^^^^^^^ storage.type.class.java
//                         ^ punctuation.section.group.begin.java
//                          ^ punctuation.section.group.end.java
//                           ^ punctuation.separator.comma.java

    _MY_ANOTHER_CONST = new MyObject();
//^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                    ^ meta.field.java
//                     ^^^^^^^^^^^^^^^ meta.field.value.java
//                                    ^ - meta.field
//  ^^^^^^^^^^^^^^^^^ entity.name.constant
//                    ^ keyword.operator.assignment.java
//                      ^^^ keyword.other.storage.new.java
//                          ^^^^^^^^ storage.type.class.java
//                                  ^ punctuation.section.group.begin.java
//                                   ^ punctuation.section.group.end.java
//                                    ^ punctuation.terminator.java

  private MyObject otherObject = MY_CONST;
//                               ^^^^^^^^ constant.other.java
//                                       ^ punctuation.terminator.java

  private MyObject otherObject = SOME_CONST.FOO;
//                               ^^^^^^^^^^ constant.other.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^ constant.other.java
//                                             ^ punctuation.terminator.java

  private MyObject otherObject = SOME_CONST.get();
//                               ^^^^^^^^^^ constant.other.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^ variable.function.java
//                                             ^ punctuation.section.group.begin.java
//                                              ^ punctuation.section.group.end.java
//                                               ^ punctuation.terminator.java

  private a.b.myerror error = a.b.ErrorCode.COMMUNICATION_ERROR;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^^^^^^ meta.field.type.java
//                    ^^^^^^ meta.field.identifier.java
//                          ^ meta.field.java
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                                             ^ - meta.field
//^^^^^^^^ - meta.path
//        ^^^^^^^^^^^ meta.path.java
//                   ^^^^^^^^^ - meta.path
//                            ^^^^^^^^^^^^^ meta.path.java
//^^^^^^^ storage.modifier.java
//        ^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^^^^^ storage.type.class.java
//                    ^^^^^ variable.other.member.java
//                          ^ keyword.operator.assignment.java
//                            ^ variable.namespace.java
//                             ^ punctuation.accessor.dot.java
//                              ^ variable.namespace.java
//                               ^ punctuation.accessor.dot.java
//                                ^^^^^^^^^ storage.type.class.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^^^^^^^^^^^^^^^^^ constant.other.java
//                                                             ^ punctuation.terminator.java

  private a /**/ . /**/ b /**/ . /**/ myerror /**/ error /**/ = /**/ a.b.ErrorCode.COMMUNICATION_ERROR;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                                                 ^^^^^^^^^^^ meta.field.identifier.java
//                                                            ^ meta.field.java
//                                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                                                                                    ^ - meta.field
//^^^^^^^^ - meta.path
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                           ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.path
//                                                                   ^^^^^^^^^^^^^ meta.path.java
//^^^^^^^ storage.modifier.java
//        ^ variable.namespace.java
//          ^^^^ comment.block.empty.java punctuation.definition.comment.java
//               ^ punctuation.accessor.dot.java
//                 ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                      ^ variable.namespace.java
//                        ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                             ^ punctuation.accessor.dot.java
//                               ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                    ^^^^^^^ storage.type.class.java
//                                            ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                 ^^^^^ variable.other.member.java
//                                                       ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                            ^ keyword.operator.assignment.java
//                                                              ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                                   ^ variable.namespace.java
//                                                                    ^ punctuation.accessor.dot.java
//                                                                     ^ variable.namespace.java
//                                                                      ^ punctuation.accessor.dot.java
//                                                                       ^^^^^^^^^ storage.type.class.java
//                                                                                ^ punctuation.accessor.dot.java
//                                                                                 ^^^^^^^^^^^^^^^^^^^ constant.other.java
//                                                                                                    ^ punctuation.terminator.java

  private static final UUID SECURE_ID = UUID.randomUUID();
//                     ^^^^ storage.type.class.java
//                          ^^^^^^^^^ entity.name.constant
//                                      ^^^^ storage.type.class.java
//                                           ^^^^^^^^^^ variable.function.java
//                                                     ^ punctuation.section.group.begin.java
//                                                      ^ punctuation.section.group.end.java
//                                                       ^ punctuation.terminator.java

  private URI uri = new URI();
//        ^^^ storage.type.class.java
//            ^^^ variable.other.member.java
//                      ^^^ storage.type.class.java

  private URI URI2 = new URI();
//        ^^^ storage.type.class.java
//            ^^^^ entity.name.constant.java
//                       ^^^ storage.type.class.java

  byte[] byteArray;
//^^^^^^^ meta.field.type.java
//       ^^^^^^^^^ meta.field.identifier.java
//                ^ - meta.field
//^^^^ storage.type.primitive.java
//    ^^ storage.modifier.array.java
//       ^^^^^^^^^ variable.other.member.java
//                ^ punctuation.terminator.java

  byte byteArray2[] = {1, 2};
//^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^ meta.field.type.java
//     ^^^^^^^^^^^^^ meta.field.identifier.java
//                  ^ meta.field.java
//                   ^^^^^^^ meta.field.value.java
//                          ^ - meta.field
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^ variable.other.member.java
//               ^^ storage.modifier.array.java
//                  ^ keyword.operator.assignment.java
//                    ^ punctuation.section.braces.begin.java
//                     ^ meta.number.integer.decimal.java constant.numeric.value.java
//                      ^ punctuation.separator.comma.java
//                        ^ meta.number.integer.decimal.java constant.numeric.value.java
//                         ^ punctuation.section.braces.end.java
//                          ^ punctuation.terminator.java

  byte byteArray3[] = condition ? {1, 2} : {4, 5};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^ meta.field.type.java
//     ^^^^^^^^^^^^^ meta.field.identifier.java
//                  ^ meta.field.java
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                               ^ - meta.field
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^ variable.other.member.java
//               ^^ storage.modifier.array.java
//                  ^ keyword.operator.assignment.java
//                    ^^^^^^^^^ variable.other.java
//                              ^ keyword.operator.ternary.java
//                                ^ punctuation.section.braces.begin.java
//                                 ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                  ^ punctuation.separator.comma.java
//                                    ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                     ^ punctuation.section.braces.end.java
//                                       ^ keyword.operator.ternary.java
//                                         ^ punctuation.section.braces.begin.java
//                                          ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                           ^ punctuation.separator.comma.java
//                                             ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                              ^ punctuation.section.braces.end.java
//                                               ^ punctuation.terminator.java

  byte byteArray4[] = condition ? fun() ? {1, 2} : {3, 0} : {4, 5};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^ meta.field.type.java
//     ^^^^^^^^^^^^^ meta.field.identifier.java
//                  ^ meta.field.java
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                                                ^ - meta.field
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^ variable.other.member.java
//               ^^ storage.modifier.array.java
//                  ^ keyword.operator.assignment.java
//                    ^^^^^^^^^ variable.other.java
//                              ^ keyword.operator.ternary.java
//                                ^^^ variable.function.java
//                                   ^ punctuation.section.group.begin.java
//                                    ^ punctuation.section.group.end.java
//                                      ^ keyword.operator.ternary.java
//                                        ^ punctuation.section.braces.begin.java
//                                         ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                          ^ punctuation.separator.comma.java
//                                            ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                             ^ punctuation.section.braces.end.java
//                                               ^ keyword.operator.ternary.java
//                                                 ^ punctuation.section.braces.begin.java
//                                                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                   ^ punctuation.separator.comma.java
//                                                     ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                      ^ punctuation.section.braces.end.java
//                                                        ^ keyword.operator.ternary.java
//                                                          ^ punctuation.section.braces.begin.java
//                                                           ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                            ^ punctuation.separator.comma.java
//                                                              ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                               ^ punctuation.section.braces.end.java
//                                                                ^ punctuation.terminator.java

  String[][] doubleStringArray;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^ meta.field.type.java
//           ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                            ^ - meta.field
//^^^^^^ storage.type.class.java
//      ^^^^ storage.modifier.array.java
//           ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                            ^ punctuation.terminator.java

  @NotNull final String @Anno [ ] @Anno [ ] doubleStringArray @Anno [ ] [ ];
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^ meta.field.modifier.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                                                         ^ - meta.field
//^^^^^^^^ meta.annotation.identifier.java
//        ^^^^^^^^^^^^^^ - meta.annotation
//                      ^^^^^ meta.annotation.identifier.java
//                           ^^^^^ - meta.annotation
//                                ^^^^^ meta.annotation.identifier.java
//                                     ^^^^^^^^^^^^^^^^^^^^^^^ - meta.annotation
//                                                            ^^^^^ meta.annotation.identifier.java
//                                                                 ^^^^^^^^^ - meta.annotation
//         ^^^^^ storage.modifier.java
//               ^^^^^^ storage.type.class.java
//                            ^^^ storage.modifier.array.java
//                                      ^^^ storage.modifier.array.java
//                                          ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                                                  ^^^ storage.modifier.array.java
//                                                                      ^^^ storage.modifier.array.java
//                                                                         ^ punctuation.terminator.java

  qualified.String[][] doubleStringArray;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                     ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                      ^ - meta.field
//^^^^^^^^^^^^^^^^ meta.path.java
//                ^^^^^^^^^^^^^^^^^^^^^^^ - meta.path
//^^^^^^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^^ storage.type.class.java
//                ^^^^ storage.modifier.array.java
//                     ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                      ^ punctuation.terminator.java

  fully.qualified.string[][] doubleStringArray;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                           ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                            ^ - meta.field
//^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                      ^^^^^^^^^^^^^^^^^^^^^^^ - meta.path
//^^^^^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^^^^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^^ storage.type.class.java
//                      ^^^^ storage.modifier.array.java
//                           ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                            ^ punctuation.terminator.java

  @anno /**/ fully // comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^ meta.field.modifier.java meta.annotation.identifier.java
//          ^ meta.field.modifier.java - meta.annotation - meta.pth
//           ^^^^^^^^^^^^^^^^^ meta.field.type.java meta.path.java
//^ punctuation.definition.annotation.java
// ^^^^ variable.annotation.java
//      ^^^^ comment.block.empty.java
//           ^^^^^ variable.namespace.java
//                 ^^^^^^^^^^^ comment.line.double-slash.java
  . @anno qualified//comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java meta.path.java - meta.field meta.field
//  ^^^^^ meta.annotation.identifier.java
//^ punctuation.accessor.dot.java
//  ^ punctuation.definition.annotation.java
//   ^^^^ variable.annotation.java
//        ^^^^^^^^^ variable.namespace.java
//                 ^^^^^^^^^^ comment.line.double-slash.java
  /**/ . /**/
//^^^^^^^^^^^^ meta.field.type.java meta.path.java
//^^^^ comment.block.empty.java
//     ^ punctuation.accessor.dot.java
//       ^^^^ comment.block.empty.java
  @anno /**/ object @anno() []
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^ meta.field.type.java meta.path.java
//                 ^^^^^^^^^^^^ meta.field.type.java - meta.path
//^^^^^ meta.annotation.identifier.java
//                  ^^^^^ meta.annotation.identifier.java
//                       ^^ meta.annotation.parameters.java meta.group.java
//^ punctuation.definition.annotation.java
// ^^^^ variable.annotation.java
//      ^^^^ comment.block.empty.java
//           ^^^^^^ storage.type.class.java
//                  ^ punctuation.definition.annotation.java
//                   ^^^^ variable.annotation.java
//                       ^ punctuation.section.group.begin.java
//                        ^ punctuation.section.group.end.java
//                          ^^ storage.modifier.array.java

  /**/ @anno /**/ [] /**/ doubleObjectArray;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java - meta.path
//                        ^^^^^^^^^^^^^^^^^ meta.field.identifier.java - meta.path
//                                         ^ - meta.field
//^^^^ comment.block.empty.java
//     ^ punctuation.definition.annotation.java
//      ^^^^ variable.annotation.java
//           ^^^^ comment.block.empty.java
//                ^^ storage.modifier.array.java
//                   ^^^^ comment.block.empty.java
//                        ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                         ^ punctuation.terminator.java

  List<int> field;
//^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^ meta.field.type.java meta.generic.java
//         ^ meta.field.type.java - meta.generic
//          ^^^^^ meta.field.identifier.java
//               ^ - meta.field
//^^^^ storage.type.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^ invalid.illegal.unexpected-keyword.java
//        ^ punctuation.definition.generic.end.java
//          ^^^^^ variable.other.member.java
//               ^ punctuation.terminator.java

  list<int> field;
//^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^ meta.field.type.java meta.generic.java
//         ^ meta.field.type.java - meta.generic
//          ^^^^^ meta.field.identifier.java
//               ^ - meta.field
//^^^^ storage.type.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^ invalid.illegal.unexpected-keyword.java
//        ^ punctuation.definition.generic.end.java
//          ^^^^^ variable.other.member.java
//               ^ punctuation.terminator.java

  List<String> field;
//^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^^^^ meta.field.type.java meta.generic.java
//            ^ meta.field.type.java - meta.generic
//             ^^^^^ meta.field.identifier.java
//                  ^ - meta.field
//^^^^ storage.type.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^ storage.type.class.java
//           ^ punctuation.definition.generic.end.java
//             ^^^^^ variable.other.member.java
//                  ^ punctuation.terminator.java

  list<string> field;
//^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^^^^ meta.field.type.java meta.generic.java
//            ^ meta.field.type.java - meta.generic
//             ^^^^^ meta.field.identifier.java
//                  ^ - meta.field
//^^^^ storage.type.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^ storage.type.class.java
//           ^ punctuation.definition.generic.end.java
//             ^^^^^ variable.other.member.java
//                  ^ punctuation.terminator.java

  java.base.List<java.net.URI> field;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^ meta.field.type.java meta.path.java - meta.generic
//              ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//               ^^^^^^^^^^^^ meta.field.type.java meta.path.java meta.generic.java meta.path.java
//                           ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                            ^ meta.field.type.java - meta.path.java - meta.generic
//                             ^^^^^ meta.field.identifier.java
//                                  ^ - meta.field
//^^^^ variable.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ storage.type.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^ variable.namespace.java
//                   ^ punctuation.accessor.dot.java
//                    ^^^ variable.namespace.java
//                       ^ punctuation.accessor.dot.java
//                        ^^^ storage.type.class.java
//                           ^ punctuation.definition.generic.end.java
//                             ^^^^^ variable.other.member.java
//                                  ^ punctuation.terminator.java

  java.base.list<java.net.uri> field;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^ meta.field.type.java meta.path.java - meta.generic
//              ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//               ^^^^^^^^^^^^ meta.field.type.java meta.path.java meta.generic.java meta.path.java
//                           ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                            ^ meta.field.type.java - meta.path.java - meta.generic
//                             ^^^^^ meta.field.identifier.java
//                                  ^ - meta.field
//^^^^ variable.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ storage.type.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^ variable.namespace.java
//                   ^ punctuation.accessor.dot.java
//                    ^^^ variable.namespace.java
//                       ^ punctuation.accessor.dot.java
//                        ^^^ storage.type.class.java
//                           ^ punctuation.definition.generic.end.java
//                             ^^^^^ variable.other.member.java
//                                  ^ punctuation.terminator.java

  java.tmpl<>.list<java.net.uri> field;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^ meta.field.type.java meta.path.java - meta.generic
//         ^^ meta.field.type.java meta.path.java meta.generic.java
//           ^^^^^ meta.field.type.java meta.path.java - meta.generic
//                ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                 ^^^^^^^^^^^^ meta.field.type.java meta.path.java meta.generic.java meta.path.java
//                             ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                              ^ meta.field.type.java - meta.path.java - meta.generic
//                               ^^^^^ meta.field.identifier.java
//                                    ^ - meta.field
//^^^^ variable.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^ storage.type.class.java
//         ^^ punctuation.definition.generic.diamond.java
//           ^ punctuation.accessor.dot.java
//            ^^^^ storage.type.class.java
//                ^ punctuation.definition.generic.begin.java
//                 ^^^^ variable.namespace.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^ variable.namespace.java
//                         ^ punctuation.accessor.dot.java
//                          ^^^ storage.type.class.java
//                             ^ punctuation.definition.generic.end.java
//                               ^^^^^ variable.other.member.java
//                                    ^ punctuation.terminator.java

  private MyGenric<Param, With.Dots, With.Nested<Generic>, and.fully.Qualified,
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//                                              ^^^^^^^^^ meta.generic.java meta.generic.java
//                                                       ^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//                                                         ^^^^^^^^^^^^^^^^^^^ meta.path.java
      and.fully.Qualified<Generic>> myVariable;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//    ^^^^^^^^^^^^^^^^^^^ meta.path.java
//                       ^^^^^^^^^ meta.generic.java meta.generic.java
//                                ^ meta.generic.java - meta.generic meta.generic
//                                 ^ - meta.generic
//                                  ^^^^^^^^^^ meta.field.identifier.java
//                                            ^ - meta.field
}


/******************************************************************************
 * Method Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.4
 *****************************************************************************/

class MethodDelcarationTests {

  void
//^^^^^ meta.function.return-type.java
//^^^^ storage.type.void.java

  void method
//^^^^^ meta.function.return-type.java
//     ^^^^^^^ meta.function.identifier.java
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java

  void method( ;
//^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^^^^^ meta.function.identifier.java
//           ^^ meta.function.parameters.java meta.group.java
//             ^ - meta.function
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java
//           ^ punctuation.section.group.begin.java
//             ^ punctuation.terminator.java

  void method()
//^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^^^^^ meta.function.identifier.java
//           ^^ meta.function.parameters.java meta.group.java
//             ^ meta.function.java
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java
//           ^ punctuation.section.group.begin.java
//            ^ punctuation.section.group.end.java

  void method(foo bar ;
//^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^^^^^ meta.function.identifier.java
//           ^^^^^^^^^ meta.function.parameters.java meta.group.java
//                    ^ - meta.function
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java
//           ^ punctuation.section.group.begin.java
//            ^^^ storage.type.class.java
//                ^^^ variable.parameter.java
//                    ^ punctuation.terminator.java

  static void method()
//^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^ meta.function.modifier.java
//       ^^^^^ meta.function.return-type.java
//            ^^^^^^ meta.function.identifier.java
//                  ^^ meta.function.parameters.java meta.group.java
//                    ^ meta.function.java
//^^^^^^ storage.modifier.java
//       ^^^^ storage.type.void.java
//            ^^^^^^ entity.name.function.java
//                  ^ punctuation.section.group.begin.java
//                   ^ punctuation.section.group.end.java

  native strictfp transient volatile void method() {private}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.modifier.java
//                                   ^^^^^ meta.function.return-type.java
//                                        ^^^^^^ meta.function.identifier.java
//                                              ^^ meta.function.parameters.java meta.group.java
//                                                ^ meta.function.java
//                                                 ^^^^^^^^^ meta.function.java meta.block.java
//^^^^^^ invalid.illegal.unexpected-keyword.java
//      ^ - invalid
//       ^^^^^^^^ invalid.illegal.unexpected-keyword.java
//               ^ - invalid
//                ^^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                         ^ - invalid
//                          ^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                  ^ - invalid - storage
//                                   ^^^^ storage.type.void.java
//                                       ^ - entity - storage
//                                        ^^^^^^ entity.name.function.java
//                                              ^ punctuation.section.group.begin.java
//                                               ^ punctuation.section.group.end.java
//                                                 ^ punctuation.section.block.begin.java
//                                                  ^^^^^^^ storage.modifier.java
//                                                         ^ punctuation.section.block.end.java

  void à ( ) {}
//^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^ meta.function.identifier.java
//       ^^^ meta.function.parameters.java meta.group.java
//          ^ meta.function.java
//           ^^ meta.function.java meta.block.java
//^^^^ storage.type.void.java
//     ^ entity.name.function
//       ^ punctuation.section.group.begin.java
//         ^ punctuation.section.group.end.java
//           ^ punctuation.section.block.begin.java
//            ^ punctuation.section.block.end.java

  void bar$ () {}
//^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^^^^ meta.function.identifier.java
//          ^^ meta.function.parameters.java meta.group.java
//            ^ meta.function.java
//             ^^ meta.function.java meta.block.java
//^^^^ storage.type.void.java
//     ^^^^ entity.name.function
//          ^ punctuation.section.group.begin.java
//           ^ punctuation.section.group.end.java
//             ^ punctuation.section.block.begin.java
//              ^ punctuation.section.block.end.java

  public
//^^^^^^^ meta.function.modifier.java - meta.function meta.function
//^^^^^^ storage.modifier.java
  void
//^^^^^ meta.function.return-type.java - meta.function meta.function
//^^^^ storage.type.void.java
  methodNameOnDifferentLine();
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.identifier.java entity.name.function.java

  abstract void myAbstractMethod (With<GenericParam> foo);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^ meta.function.modifier.java
//         ^^^^^ meta.function.return-type.java
//              ^^^^^^^^^^^^^^^^^ meta.function.identifier.java
//                               ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                    ^^^^^^^^^^^^^^ meta.generic.java
//                                                       ^ - meta.function
//^^^^^^^^ storage.modifier.java
//         ^^^^ storage.type.void.java
//              ^^^^^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^^^^ storage.type.class.java
//                                    ^ punctuation.definition.generic.begin.java
//                                     ^^^^^^^^^^^^ storage.type.class.java
//                                                 ^ punctuation.definition.generic.end.java
//                                                   ^^^ variable.parameter.java
//                                                      ^ punctuation.section.group.end.java
//                                                       ^ punctuation.terminator.java

  private Long myOtherAbstractMethod(@WithAnnotation Blah blah);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^ meta.function.modifier.java
//        ^^^^^ meta.function.return-type.java
//             ^^^^^^^^^^^^^^^^^^^^^ meta.function.identifier.java
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                   ^^^^^^^^^^^^^^^ meta.annotation.identifier.java
//                                                             ^ - meta.function
//             ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.java
//                                  ^ punctuation.section.group.begin.java
//                                   ^ punctuation.definition.annotation.java
//                                    ^^^^^^^^^^^^^^ variable.annotation.java
//                                                   ^^^^ storage.type.class.java
//                                                        ^^^^ variable.parameter.java
//                                                            ^ punctuation.section.group.end.java
//                                                             ^ punctuation.terminator.java

  protected static void methodList(List<String> args) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^^^ meta.function.modifier.java
//                 ^^^^^ meta.function.return-type.java
//                      ^^^^^^^^^^ meta.function.identifier.java - meta.function meta.function
//                                ^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java - meta.function meta.function
//                                                   ^ meta.function.java - meta.function meta.function
//                                                    ^^ meta.function.java - meta.function meta.function
//^^^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//                 ^^^^ storage.type
//                      ^^^^^^^^^^ entity.name.function.java
//                                ^ punctuation.section.group.begin.java
//                                 ^^^^ storage.type.class.java
//                                     ^ punctuation.definition.generic.begin.java
//                                      ^^^^^^ storage.type.class.java
//                                            ^ punctuation.definition.generic.end.java
//                                              ^^^^ variable.parameter.java
//                                                  ^ punctuation.section.group.end.java
//                                                    ^ punctuation.section.block.begin.java
//                                                     ^ punctuation.section.block.end.java

  public MyGeneric<Param, With, Multiple, Types> ABSTRACTMETHOD(Foo<With, Another> bar);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^ meta.function.modifier.java
//       ^^^^^^^^^ meta.function.return-type.java - meta.generic
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.return-type.java meta.generic.java
//                                              ^ meta.function.return-type.java - meta.generic
//                                               ^^^^^^^^^^^^^^ meta.function.identifier.java
//                                                             ^^^^ meta.function.parameters.java meta.group.java - meta.generic
//                                                                 ^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java meta.generic.java
//                                                                                ^^^^^ meta.function.parameters.java meta.group.java - meta.generic
//^^^^^^ storage.modifier.java
//       ^^^^^^^^^ storage.type.class.java
//                ^ punctuation.definition.generic.begin.java
//                 ^^^^^ storage.type.class.java
//                      ^ punctuation.separator.comma.java
//                        ^^^^ storage.type.class.java
//                            ^ punctuation.separator.comma.java
//                              ^^^^^^^^ storage.type.class.java
//                                      ^ punctuation.separator.comma.java
//                                        ^^^^^ storage.type.class.java
//                                             ^ punctuation.definition.generic.end.java
//                                               ^^^^^^^^^^^^^^ entity.name.function.java
//                                                             ^ punctuation.section.group.begin.java
//                                                              ^^^ storage.type.class.java
//                                                                 ^ punctuation.definition.generic.begin.java
//                                                                  ^^^^ storage.type.class.java
//                                                                      ^ punctuation.separator.comma.java
//                                                                        ^^^^^^^ storage.type.class.java
//                                                                               ^ punctuation.definition.generic.end.java
//                                                                                 ^^^ variable.parameter.java
//                                                                                    ^ punctuation.section.group.end.java
//                                                                                     ^ punctuation.terminator.java

  private static int methodThrows() throws MyException<Abc> {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^ meta.function.modifier.java
//               ^^^^ meta.function.return-type.java
//                   ^^^^^^^^^^^^ meta.function.identifier.java
//                               ^^ meta.function.parameters.java
//                                 ^ meta.function.java
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.throws.java
//                                                    ^^^^^ meta.generic.java
//                                                          ^^ meta.function.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^ storage.type.primitive.java
//                   ^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^ punctuation.section.group.end.java
//                                  ^^^^^^ keyword.declaration.throws.java
//                                         ^^^^^^^^^^^ storage.type.class.java
//                                                    ^ punctuation.definition.generic.begin.java
//                                                     ^^^ storage.type.class.java
//                                                        ^ punctuation.definition.generic.end.java
//                                                          ^ punctuation.section.block.begin.java
    throw
//^^^^^^^^ meta.function.java meta.block.java
//  ^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java
        new
//^^^^^^^^^^ meta.function.java meta.block.java
//     ^ meta.throw.java - meta.instantiation
//      ^^^^ meta.throw.java meta.instantiation.java
//      ^^^ keyword.other.storage.new.java
        MyException
//^^^^^^^^^^^^^^^^^^ meta.function.java meta.block.java
//     ^^^^^^^^^^^^^ meta.throw.java meta.instantiation.java
//      ^^^^^^^^^^^ storage.type.class.java
        ("hello (world)");
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.java meta.block.java
//      ^^^^^^^^^^^^^^^^^ meta.throw.java meta.instantiation.java meta.group.java
//      ^ punctuation.section.group.begin.java
//       ^^^^^^^^^^^^^^^ string.quoted.double.java
//                      ^ punctuation.section.group.end.java
//                       ^ punctuation.terminator.java
  }
//^ meta.function.java meta.block.java punctuation.section.block.end.java
// ^ - meta.function

  private static int methodthrows() throws int {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^ meta.function.modifier.java
//               ^^^^ meta.function.return-type.java
//                   ^^^^^^^^^^^^ meta.function.identifier.java
//                               ^^ meta.function.parameters.java
//                                 ^ meta.function.java
//                                  ^^^^^^^^^^^ meta.function.throws.java
//                                             ^^ meta.function.java
//                                               ^ - meta.function
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^ storage.type.primitive.java
//                   ^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^ punctuation.section.group.end.java
//                                  ^^^^^^ keyword.declaration.throws.java
//                                         ^^^ invalid.illegal.unexpected-keyword.java
//                                             ^ punctuation.section.block.begin.java
//                                              ^ punctuation.section.block.end.java

  private static int methodthrows() throws array[] {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^ meta.function.modifier.java
//               ^^^^ meta.function.return-type.java
//                   ^^^^^^^^^^^^ meta.function.identifier.java
//                               ^^ meta.function.parameters.java
//                                 ^ meta.function.java
//                                  ^^^^^^^^^^^^^^^ meta.function.throws.java
//                                                 ^^ meta.function.java
//                                                   ^ - meta.function
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^ storage.type.primitive.java
//                   ^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^ punctuation.section.group.end.java
//                                  ^^^^^^ keyword.declaration.throws.java
//                                         ^^^^^ storage.type.class.java
//                                              ^^ invalid.illegal.unexpected-modifier.java
//                                                 ^ punctuation.section.block.begin.java
//                                                  ^ punctuation.section.block.end.java

  private static int methodthrows() throws myexception<abc> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^ meta.function.modifier.java
//               ^^^^ meta.function.return-type.java
//                   ^^^^^^^^^^^^ meta.function.identifier.java
//                               ^^ meta.function.parameters.java
//                                 ^ meta.function.java
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.throws.java
//                                                    ^^^^^ meta.generic.java
//                                                          ^^ meta.function.java
//                                                            ^ - meta.function
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^ storage.type.primitive.java
//                   ^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^ punctuation.section.group.end.java
//                                  ^^^^^^ keyword.declaration.throws.java
//                                         ^^^^^^^^^^^ storage.type.class.java
//                                                    ^ punctuation.definition.generic.begin.java
//                                                     ^^^ storage.type.class.java
//                                                        ^ punctuation.definition.generic.end.java
//                                                          ^ punctuation.section.block.begin.java
//                                                           ^ punctuation.section.block.end.java

  private static int methodthrows() throws java.myexception<java.abc> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^ meta.function.modifier.java
//               ^^^^ meta.function.return-type.java
//                   ^^^^^^^^^^^^ meta.function.identifier.java
//                               ^^ meta.function.parameters.java
//                                 ^ meta.function.java
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.throws.java
//                                                         ^^^^^^^^^^ meta.generic.java
//                                                                    ^^ meta.function.java
//                                                                      ^ - meta.function
//                                         ^^^^^^^^^^^^^^^^^ meta.path.java - meta.path meta.path
//                                                          ^^^^^^^^ meta.path.java meta.path.java
//                                                                  ^ meta.path.java - meta.path meta.path
//                                                                   ^ - meta.path
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^ storage.type.primitive.java
//                   ^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^ punctuation.section.group.end.java
//                                  ^^^^^^ keyword.declaration.throws.java
//                                         ^^^^ variable.namespace.java
//                                             ^ punctuation.accessor.dot.java
//                                              ^^^^^^^^^^^ storage.type.class.java
//                                                         ^ punctuation.definition.generic.begin.java
//                                                          ^^^^ variable.namespace.java
//                                                              ^ punctuation.accessor.dot.java
//                                                               ^^^ storage.type.class.java
//                                                                  ^ punctuation.definition.generic.end.java
//                                                                    ^ punctuation.section.block.begin.java
//                                                                     ^ punctuation.section.block.end.java

  void primitiveVarArgs(char... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                     ^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                      ^^^^ storage.type.primitive.java
//                          ^^^ keyword.operator.variadic.java
//                              ^^^^^^ variable.parameter.java

  void finalPrimitiveVarArgs(final int... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                          ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                           ^^^^^ storage.modifier.java
//                                 ^^^ storage.type.primitive.java
//                                    ^^^ keyword.operator.variadic.java
//                                        ^^^^^^ variable.parameter.java

  void annotatedPrimitiveVarArgs(@anno int @foo.anno... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                               ^^^^^ meta.annotation.identifier.java
//                                     ^^^ storage.type.primitive.java
//                                         ^^^^^^^^^ meta.annotation.identifier.java
//                                                  ^^^ keyword.operator.variadic.java
//                                                      ^^^^^^ variable.parameter.java

  void classVarArgs(String... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                 ^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                  ^^^^^^ storage.type.class.java
//                        ^^^ keyword.operator.variadic.java
//                            ^^^^^^ variable.parameter.java

  void invalidPrivateClassVarArgs(private String... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                               ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                                         ^ - meta.function.parameters.java
//                                ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                        ^^^^^^ storage.type.class.java
//                                              ^^^ keyword.operator.variadic.java
//                                                  ^^^^^^ variable.parameter.java

  void invalidVarArgs(var... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                   ^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                    ^^^ invalid.illegal.unexpected-keyword.java
//                       ^^^ keyword.operator.variadic.java
//                           ^^^ variable.parameter.java

  void arrayMethod(byte [] [] a, int b, byte[] c) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java
//                                               ^ - meta.function.parameters.java
//                 ^^^^ storage.type.primitive.java
//                      ^^ storage.modifier.array.java
//                         ^^ storage.modifier.array.java
//                            ^ variable.parameter.java
//                               ^^^ storage.type.primitive.java
//                                   ^ variable.parameter.java
//                                      ^^^^ storage.type.primitive.java
//                                          ^^ storage.modifier.array.java
//                                             ^ variable.parameter.java

  int[] arrayMethod(int a[], String b[])[] {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^ meta.function.return-type.java
//      ^^^^^^^^^^^ meta.function.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                      ^^^ meta.function.java - meta.function meta.group - meta.function meta.block
//                                         ^^ meta.function.java meta.block.java
//^^^ storage.type.primitive.java
//   ^^ storage.modifier.array.java
//                  ^^^ storage.type.primitive.java
//                      ^ variable.parameter.java
//                       ^^ storage.modifier.array.java
//                           ^^^^^^ storage.type.class.java
//                                  ^ variable.parameter.java
//                                   ^^ storage.modifier.array.java

  @anno public int[][] arrayMethod(
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^ meta.function.modifier.java
//             ^^^^^^^^ meta.function.return-type.java
//                     ^^^^^^^^^^^ meta.function.identifier.java entity.name.function.java
//                                ^^ meta.function.parameters.java meta.group.java
//^^^^^ meta.annotation.identifier.java
//      ^^^^^^ storage.modifier.java
//             ^^^ storage.type.primitive.java
//                ^^^^ storage.modifier.array.java
//                                ^ punctuation.section.group.begin.java

    Map<Long, Date>[] mapping,
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//  ^^^ storage.type.class.java
//     ^^^^^^^^^^^^ meta.generic.java
//     ^ punctuation.definition.generic.begin.java
//      ^^^^ storage.type.class.java
//          ^ punctuation.separator.comma.java
//            ^^^^ storage.type.class.java
//                ^ punctuation.definition.generic.end.java
//                 ^^ storage.modifier.array.java
//                    ^^^^^^^ variable.parameter.java
//                           ^ punctuation.separator.comma.java

    @Anno int[] arg[],
// ^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//  ^^^^^ meta.annotation.identifier.java
//        ^^^ storage.type.primitive.java
//           ^^ storage.modifier.array.java
//              ^^^ variable.parameter.java
//                 ^^ storage.modifier.array.java
//                   ^ punctuation.separator.comma.java

    final int @Anno [] @Anno [] arg @Anno [] @Anno [],
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^ meta.annotation.identifier.java
//                  ^^ storage.modifier.array.java
//                     ^^^^^ meta.annotation.identifier.java
//                           ^^ storage.modifier.array.java
//                              ^^^ variable.parameter.java
//                                  ^^^^^ meta.annotation.identifier.java
//                                        ^^ storage.modifier.array.java
//                                           ^^^^^ meta.annotation.identifier.java
//                                                 ^^ storage.modifier.array.java

    String<int,int@Anno[]>@Anno[]@Anno[]arg@Anno[]@Anno[]
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//  ^^^^^^ storage.type.class.java
//        ^^^^^^^^^^^^^^^^ meta.generic.java
//        ^ punctuation.definition.generic.begin.java
//         ^^^ invalid.illegal.unexpected-keyword.java
//            ^ punctuation.separator.comma.java
//             ^^^ storage.type.primitive.java
//                ^^^^^ meta.annotation.identifier.java
//                     ^^ storage.modifier.array.java
//                       ^ punctuation.definition.generic.end.java
//                        ^^^^^ meta.annotation.identifier.java
//                             ^^ storage.modifier.array.java
//                               ^^^^^ meta.annotation.identifier.java
//                                    ^^ storage.modifier.array.java
//                                      ^^^ variable.parameter.java
//                                         ^^^^^ meta.annotation.identifier.java
//                                              ^^ storage.modifier.array.java
//                                                ^^^^^ meta.annotation.identifier.java
//                                                     ^^ storage.modifier.array.java
  ) @Anno [] @ path . Anno (param = value) [] {}
//^ meta.function.parameters.java meta.group.java punctuation.section.group.end.java
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.java - meta.function meta.function
//                                            ^^ meta.function.java meta.block.java - meta.function meta.function
//                                              ^ - meta.function
//  ^^^^^ meta.annotation.identifier.java
//        ^^ storage.modifier.array.java

  <T> void genericTypeMethod(T obj);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^ meta.function.modifier.java meta.generic.declaration.java
//   ^ meta.function.modifier.java - meta.generic
//    ^^^^^ meta.function.return-type.java
//         ^^^^^^^^^^^^^^^^^ meta.function.identifier.java
//                          ^^^^^^^ meta.function.parameters.java meta.group.java
//                                 ^ - meta.function
//^ punctuation.definition.generic.begin.java
// ^ variable.parameter.type
//  ^ punctuation.definition.generic.end.java
//    ^^^^ storage.type.void.java
//         ^^^^^^^^^^^^^^^^^ entity.name.function.java
//                          ^ punctuation.section.group.begin.java
//                           ^ storage.type.class.java
//                             ^^^ variable.parameter.java
//                                ^ punctuation.section.group.end.java
//                                 ^ punctuation.terminator.java

  <T> public static Set<T> unmodifiableSet(Set<T> set);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^ meta.function.modifier.java meta.generic.declaration.java
//   ^^^^^^^^^^^^^^^ meta.function.modifier.java - meta.generic
//                  ^^^ meta.function.return-type.java - meta.generic
//                     ^^^ meta.function.return-type.java meta.generic.java
//                        ^ meta.function.return-type.java - meta.generic
//                         ^^^^^^^^^^^^^^^ meta.function.identifier.java
//                                        ^^^^ meta.function.parameters.java meta.group.java - meta.generic
//                                            ^^^ meta.function.parameters.java meta.group.java meta.generic.java
//                                               ^^^^^ meta.function.parameters.java meta.group.java - meta.generic
//                                                    ^ - meta.function
//^ punctuation.definition.generic.begin.java
// ^ variable.parameter.type
//  ^ punctuation.definition.generic.end.java
//    ^^^^^^ storage.modifier.java
//           ^^^^^^ storage.modifier.java
//                  ^^^ storage.type.class.java
//                     ^ punctuation.definition.generic.begin.java
//                      ^ storage.type.class.java
//                       ^ punctuation.definition.generic.end.java
//                         ^^^^^^^^^^^^^^^ entity.name.function.java
//                                        ^ punctuation.section.group.begin.java
//                                         ^^^ storage.type.class.java
//                                            ^ punctuation.definition.generic.begin.java
//                                             ^ storage.type.class.java
//                                              ^ punctuation.definition.generic.end.java
//                                                ^^^ variable.parameter.java
//                                                   ^ punctuation.section.group.end.java
//                                                    ^ punctuation.terminator.java

  public static <T> T genericTypeMethod(Collection<? extends T>, Sink<T>) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^ meta.function.modifier.java - meta.generic
//              ^^^ meta.function.modifier.java meta.generic.declaration.java
//                 ^ meta.function.modifier.java - meta.generic
//                  ^^ meta.function.return-type.java - meta.generic
//                    ^^^^^^^^^^^^^^^^^ meta.function.identifier.java
//                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                                ^^^^^^^^^^^^^ meta.generic.java
//                                                                   ^^^ meta.generic.java
//                                                                       ^ meta.function.java
//                                                                        ^^ meta.function.java meta.block.java
//                                                                          ^ - meta.function
//^^^^^^ storage.modifier.java
//       ^^^^^^ storage.modifier.java
//               ^ variable.parameter.type.java
//                  ^ storage.type.class.java
//                    ^^^^^^^^^^^^^^^^^ entity.name.function.java
//                                      ^^^^^^^^^^ storage.type.class.java
//                                                ^ punctuation.definition.generic.begin.java
//                                                 ^ variable.language.wildcard.java
//                                                   ^^^^^^^ storage.modifier.extends.java
//                                                           ^ storage.type.class.java
//                                                            ^ punctuation.definition.generic.end.java
//                                                             ^ punctuation.separator.comma.java - meta.generic.java
//                                                               ^^^^ storage.type.class.java
//                                                                   ^ punctuation.definition.generic.begin.java
//                                                                    ^ storage.type.class.java
//                                                                     ^ punctuation.definition.generic.end.java
//                                                                      ^ punctuation.section.group.end.java
//                                                                        ^ punctuation.section.block.begin.java
//                                                                         ^ punctuation.section.block.end.java

  protected static <T extends Comparable<? super T>>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^^^^^^^^^^^ meta.function.modifier.java - meta.generic
//                 ^^^^^^^^^^^^^^^^^^^^^ meta.function.modifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                      ^^^^^^^^^^^ meta.function.modifier.java meta.generic.declaration.java meta.generic.java
//                                                 ^ meta.function.modifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                  ^ meta.function.modifier.java - meta.generic
//^^^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//                 ^ punctuation.definition.generic.begin.java
//                  ^ variable.parameter.type.java
//                    ^^^^^^^ storage.modifier.extends.java
//                            ^^^^^^^^^^ storage.type.class.java
//                                      ^ punctuation.definition.generic.begin.java
//                                       ^ variable.language.wildcard.java
//                                         ^^^^^ keyword.declaration.super.java
//                                               ^ storage.type.class.java
//                                                ^^ punctuation.definition.generic.end.java
        T max(Collection<T> coll);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^ meta.function.modifier.java
//      ^^ meta.function.return-type.java
//        ^^^ meta.function.identifier.java
//           ^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                               ^ - meta.function
//      ^ storage.type.class.java
//        ^^^ entity.name.function.java
//           ^ punctuation.section.group.begin.java
//            ^^^^^^^^^^ storage.type.class.java
//                      ^ punctuation.definition.generic.begin.java
//                       ^ storage.type.class.java
//                        ^ punctuation.definition.generic.end.java
//                          ^^^^ variable.parameter.java
//                              ^ punctuation.section.group.end.java
//                               ^ punctuation.terminator.java

  @RunWith(JUnit4.class)
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function - meta.annotation meta.annotation
//^^^^^^^^ meta.function.modifier.java meta.annotation.identifier.java
//        ^^^^^^^^^^^^^^ meta.function.modifier.java meta.annotation.parameters.java meta.group.java
//                      ^ meta.function.modifier.java - meta.annotation
//^ punctuation.definition.annotation.java
// ^^^^^^^ variable.annotation.java
//        ^ punctuation.section.group.begin.java
//         ^^^^^^ storage.type.class.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ variable.language.class.java - storage.type.java
//                     ^ punctuation.section.group.end.java
  public
//^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^ meta.function.modifier.java storage.modifier.java
//      ^ meta.function.modifier.java - storage
    static
//^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^ meta.function.modifier.java - storage
//  ^^^^^^ meta.function.modifier.java storage.modifier.java
//        ^ meta.function.modifier.java - storage
    <T
//^^^^^ - meta.function meta.function
//^^ meta.function.modifier.java - meta.generic - storage
//  ^^^ meta.function.modifier.java meta.generic.declaration.java
//  ^ punctuation.definition.generic.begin.java
//   ^ variable.parameter.type.java
      extends
//^^^^^^^^^^^^ meta.function.modifier.java meta.generic.declaration.java - meta.function meta.function
//    ^^^^^^^ storage.modifier.extends.java
      AutoCloseable
//^^^^^^^^^^^^^^^^^^ meta.function.modifier.java meta.generic.declaration.java - meta.function meta.function
//    ^^^^^^^^^^^^^ storage.type.class.java
    >
//^^^^ - meta.function meta.function
//^^^ meta.function.modifier.java meta.generic.declaration.java
//   ^ meta.function.modifier.java - meta.generic
//  ^ punctuation.definition.generic.end.java
    void
//^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^ meta.function.modifier.java
//  ^^^^ meta.function.return-type.java storage.type.void.java
//      ^^ meta.function.return-type.java - storage
    genericMethod
//^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^ meta.function.return-type.java - storage - entity
//  ^^^^^^^^^^^^^ meta.function.identifier.java entity.name.function.java
//               ^ meta.function.identifier.java - entity
    (
//^^^^ - meta.function meta.function
//^^ meta.function.identifier.java
//  ^^ meta.function.parameters.java meta.group.java
//  ^ punctuation.section.group.begin.java
      SomeType<T> root
//^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//    ^^^^^^^^ storage.type.class.java
//            ^ punctuation.definition.generic.begin.java
//             ^ storage.type.class.java
//              ^ punctuation.definition.generic.end.java
//                ^^^^ variable.parameter.java
    )
//^^^^ - meta.function meta.function
//^^^ meta.function.parameters.java meta.group.java
//   ^ meta.function.java
//  ^ punctuation.section.group.end.java
    throws
//^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^ meta.function.java
//  ^^^^^^^ meta.function.throws.java
//  ^^^^^^ keyword.declaration.throws.java
        Exception
//^^^^^^^^^^^^^^^^ meta.function.throws.java - meta.function meta.function
//      ^^^^^^^^^ storage.type.class.java
        , IOException,
//^^^^^^^^^^^^^^^^^^^^^ meta.function.throws.java - meta.function meta.function
//      ^ punctuation.separator.comma.java
//        ^^^^^^^^^^^ storage.type.class.java
//                   ^ punctuation.separator.comma.java
        SAXException
//^^^^^^^^^^^^^^^^^^^ meta.function.throws.java - meta.function meta.function
//      ^^^^^^^^^^^^ storage.type.class.java
  {
//<- meta.function.throws.java - meta.function meta.function
//^^ meta.function.java meta.block.java - meta.function meta.function
//^ punctuation.section.block.begin.java
  }
//^ meta.function.java meta.block.java punctuation.section.block.end.java
// ^ - meta.function

  @RunWith(JUnit4.class)
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function - meta.annotation meta.annotation
//^^^^^^^^ meta.function.modifier.java meta.annotation.identifier.java
//        ^^^^^^^^^^^^^^ meta.function.modifier.java meta.annotation.parameters.java meta.group.java
//                      ^ meta.function.modifier.java - meta.annotation
//^ punctuation.definition.annotation.java
// ^^^^^^^ variable.annotation.java
//        ^ punctuation.section.group.begin.java
//         ^^^^^^ storage.type.class.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ variable.language.class.java - storage.type.java
//                     ^ punctuation.section.group.end.java
  public void someReallyReallyLongMethodNameThatMakesTheBraceOverflowToTheNextLine(
//^^^^^^^ meta.function.modifier.java
//       ^^^^^ meta.function.return-type.java
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.identifier.java entity.name.function.java
//                                                                                ^ meta.function.parameters.java meta.group.java punctuation.section.group.begin.java
      WITHSOMEPARAMS foo,
//    ^ meta.function.parameters.java storage.type.class.java
//                   ^ meta.function.parameters.java variable.parameter.java
      Generic<Param> bar)
//    ^ meta.function.parameters.java storage.type.class.java
//           ^^^^^^^ meta.generic.java
//                   ^ meta.function.parameters.java variable.parameter.java
//                      ^ punctuation.section.group.end
      throws Exception {
//    ^ meta.function.throws.java keyword.declaration.throws.java
//           ^ meta.function.throws.java storage.type.class.java
    return someMethod (new Function<V, V>() {
//        ^ - meta.function-call
//         ^^^^^^^^^^^ meta.function-call.identifier.java - meta.function-call meta.function-call
//                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.group.java - meta.function-call meta.function-call
//                                          ^ meta.class.java punctuation.section.block.begin.java
//        ^ - variable
//         ^^^^^^^^^^ variable.function.java
//                   ^ - variable
      @Override
      public V apply(V input) {
//           ^ storage.type.class.java
//                  ^^^^^^^^^ meta.function.parameters.java
//                   ^ storage.type.class.java
//                     ^ variable.parameter.java
//                            ^ meta.function
        return input;
      }
//    ^ meta.function
    }, executor);
// ^^^^^^^^^^^^^ meta.function-call.arguments.java meta.group.java
//  ^ meta.class.java punctuation.section.block.end.java
//             ^ punctuation.section.group.end.java
//              ^ punctuation.terminator.java - meta.function-call
  }
//^ meta.function.java punctuation.section.block.end.java

}
// <- meta.class.java punctuation.section.block.end.java


class ReceiverArgTests {

  // Illegal: Top-level constructors can't contain receiver parameters,
  //          but the syntax does not destinguish top-level and nested classses
  ReceiverArgTests(ReceiverArgTests this, A this) {}
//^^^^^^^^^^^^^^^^ meta.function.identifier.java - meta.function meta.function
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//^^^^^^^^^^^^^^^^ entity.name.function.constructor.java
//                ^ punctuation.section.group.begin.java
//                 ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                  ^^^^ variable.parameter.this.java
//                                      ^ punctuation.separator.comma.java
//                                        ^ storage.type.class.java
//                                          ^^^^ invalid.illegal.identifier.java
//                                              ^ punctuation.section.group.end.java
//                                                ^ punctuation.section.block.begin.java
//                                                 ^ punctuation.section.block.end.java

  void method(ReceiverArgTests this, A this, B super, C par)[] {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^ meta.function.return-type.java
//     ^^^^^^ meta.function.identifier.java
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//                                                          ^^^ meta.function.java
//                                                             ^^ meta.function.java meta.block.java
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java
//           ^ punctuation.section.group.begin.java
//            ^^^^^^^^^^^^^^^^ storage.type.class.java
//                             ^^^^ variable.parameter.this.java
//                                 ^ punctuation.separator.comma.java
//                                   ^ storage.type.class.java
//                                     ^^^^ invalid.illegal.identifier.java
//                                         ^ punctuation.separator.comma.java
//                                           ^ storage.type.class.java
//                                             ^^^^^ invalid.illegal.identifier.java
//                                                  ^ punctuation.separator.comma.java
//                                                    ^ storage.type.class.java
//                                                      ^^^ variable.parameter.java
//                                                         ^ punctuation.section.group.end.java
//                                                          ^^ storage.modifier.array.java
//                                                             ^ punctuation.section.block.begin.java
//                                                              ^ punctuation.section.block.end.java

  // Illegal: Static methods can't contain receiver parameters,
  //          but the syntax does not destinguish them.
  static void method(ReceiverArgTests this) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function - meta.function meta.function
//^^^^^^^ meta.function.modifier.java
//       ^^^^^ meta.function.return-type.java
//            ^^^^^^ meta.function.identifier.java
//                  ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java
//^^^^^^ storage.modifier.java
//       ^^^^ storage.type.void.java
//            ^^^^^^ entity.name.function.java
//                  ^ punctuation.section.group.begin.java
//                   ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                    ^^^^ variable.parameter.this.java
//                                        ^ punctuation.section.group.end.java
//                                          ^ punctuation.section.block.begin.java
//                                           ^ punctuation.section.block.end.java

  class A {
    A(ReceiverArgTests ReceiverArgTests.this, A ReceiverArgTests.this) {}
//  ^ entity.name.function.constructor.java
//   ^ punctuation.section.group.begin.java
//    ^^^^^^^^^^^^^^^^ storage.type.class.java
//                     ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                     ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                     ^ punctuation.accessor.dot.java
//                                      ^^^^ variable.parameter.this.java
//                                          ^ punctuation.separator.comma.java
//                                            ^ storage.type.class.java
//                                              ^^^^^^^^^^^^^^^^ variable.parameter.java
//                                                              ^ invalid.illegal.unexpected-accessor.java
//                                                               ^^^^ invalid.illegal.unexpected-member.java
//                                                                   ^ punctuation.section.group.end.java
//                                                                     ^ punctuation.section.block.begin.java
//                                                                      ^ punctuation.section.block.end.java

    A(
//  ^ entity.name.function.constructor.java
//   ^ punctuation.section.group.begin.java
        /**/ ReceiverArgTests
//      ^^^^ comment.block.empty.java
//           ^^^^^^^^^^^^^^^^ storage.type.class.java
        /**/ ReceiverArgTests
//      ^^^^ comment.block.empty.java
//          ^ - meta.path
//           ^^^^^^^^^^^^^^^^^ meta.path.java
//           ^^^^^^^^^^^^^^^^ storage.type.class.java
        /**/ .
//     ^^^^^^^^ meta.path.java
//      ^^^^ comment.block.empty.java
//           ^ punctuation.accessor.dot.java - support - variable
        /**/ this [] . illegal,
//      ^^^^^^^^^ meta.path.java
//               ^^^^^^^^^^^^^^^ - meta.path
//      ^^^^ comment.block.empty.java
//           ^^^^ variable.parameter.this.java - support
//                ^^ invalid.illegal.unexpected-modifier.java
//                   ^ invalid.illegal.unexpected-accessor.java
//                     ^^^^^^^ invalid.illegal.unexpected-member.java
//                            ^ punctuation.separator.comma.java
        /**/ ,
//      ^^^^ comment.block.empty.java
//           ^ punctuation.separator.comma.java
        /**/  A
//      ^^^^ comment.block.empty.java
//            ^ storage.type.class.java - meta.path
        /**/  ReceiverArgTests
//      ^^^^ comment.block.empty.java
//            ^^^^^^^^^^^^^^^^ variable.parameter.java - meta.path - support
        /**/ .
//      ^^^^^^^ - meta.path
//      ^^^^ comment.block.empty.java
//           ^ invalid.illegal.unexpected-accessor.java - meta.path
        /**/ this[].foo[][].bar
//      ^^^^^^^^^^^^^^^^^^^^^^^ - meta.path
//      ^^^^ comment.block.empty.java
//           ^^^^ invalid.illegal.unexpected-member.java - meta.path
//               ^^ invalid.illegal.unexpected-modifier.java
//                 ^ invalid.illegal.unexpected-accessor.java
//                  ^^^ invalid.illegal.unexpected-member.java
//                     ^^^^ invalid.illegal.unexpected-modifier.java
//                         ^ invalid.illegal.unexpected-accessor.java
//                          ^^^ invalid.illegal.unexpected-member.java
        /**/ ) {}
//      ^^^^ comment.block.empty.java
//           ^ punctuation.section.group.end.java
//             ^ punctuation.section.block.begin.java
//              ^ punctuation.section.block.end.java

    // OK: the ReceiverArgTests parameter represents the instance
    // of A for which A.m() is invoked.
    void method(A this) {}
//  ^^^^^ meta.function.return-type.java - meta.function meta.function
//       ^^^^^^ meta.function.identifier.java - meta.function meta.function
//             ^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//  ^^^^ storage.type.void.java
//       ^^^^^^ entity.name.function.java
//             ^ punctuation.section.group.begin.java
//              ^ storage.type.class.java
//                ^^^^ variable.parameter.this.java
//                    ^ punctuation.section.group.end.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

    class B {
      // OK: the ReceiverArgTests parameter represents the instance
      // of A which immediately encloses the instance of B being constructed.
      B(ReceiverArgTests.A A.this) {}
//    ^ entity.name.function.constructor.java
//     ^ punctuation.section.group.begin.java
//      ^^^^^^^^^^^^^^^^ storage.type.class.java
//                      ^ punctuation.accessor.dot.java
//                       ^ storage.type.class.java
//                         ^^^^^^ meta.path.java
//                         ^ storage.type.class.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^ variable.parameter.this.java
//                               ^ punctuation.section.group.end.java
//                                 ^ punctuation.section.block.begin.java
//                                  ^ punctuation.section.block.end.java

      // FAIL: qualified parameter is a receiver and must end with "this".
      B(ReceiverArgTests.A A.fail) {}
//    ^ entity.name.function.constructor.java
//     ^ punctuation.section.group.begin.java
//      ^^^^^^^^^^^^^^^^ storage.type.class.java
//                      ^ punctuation.accessor.dot.java
//                       ^ storage.type.class.java
//                         ^^^^^^ meta.path.java
//                         ^ storage.type.class.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^ invalid.illegal.identifier.java
//                               ^ punctuation.section.group.end.java
//                                 ^ punctuation.section.block.begin.java
//                                  ^ punctuation.section.block.end.java

      // OK: the receiver parameter represents the instance
      // of B for which B.m() is invoked.
      void method(ReceiverArgTests.A.B this) {}
//    ^^^^^ meta.function.return-type.java - meta.function meta.function
//         ^^^^^^ meta.function.identifier.java - meta.function meta.function
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//               ^ - meta.path
//                ^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                    ^^^^^^ - meta.path
//    ^^^^ storage.type.void.java
//         ^^^^^^ entity.name.function.java
//               ^ punctuation.section.group.begin.java
//                ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                ^ punctuation.accessor.dot.java
//                                 ^ storage.type.class.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^ storage.type.class.java
//                                     ^^^^ variable.parameter.this.java
//                                         ^ punctuation.section.group.end.java
//                                           ^ punctuation.section.block.begin.java
//                                            ^ punctuation.section.block.end.java

      void method(ReceiverArgTests.A.B A.B.this) {}
//    ^^^^^ meta.function.return-type.java - meta.function meta.function
//         ^^^^^^ meta.function.identifier.java - meta.function meta.function
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//               ^ - meta.path
//                ^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                    ^ - meta.path
//                                     ^^^^^^^^ meta.path.java
//                                             ^ - meta.path
//    ^^^^ storage.type.void.java
//         ^^^^^^ entity.name.function.java
//               ^ punctuation.section.group.begin.java
//                ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                ^ punctuation.accessor.dot.java
//                                 ^ storage.type.class.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^ storage.type.class.java
//                                     ^ storage.type.class.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^ storage.type.class.java
//                                        ^ punctuation.accessor.dot.java
//                                         ^^^^ variable.parameter.this.java
//                                             ^ punctuation.section.group.end.java
//                                               ^ punctuation.section.block.begin.java
//                                                ^ punctuation.section.block.end.java

      void method(receiverargtests.a.b a.b.this) {}
//    ^^^^^ meta.function.return-type.java - meta.function meta.function
//         ^^^^^^ meta.function.identifier.java - meta.function meta.function
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//               ^ - meta.path
//                ^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                    ^ - meta.path
//                                     ^^^^^^^^ meta.path.java
//                                             ^ - meta.path
//    ^^^^ storage.type.void.java
//         ^^^^^^ entity.name.function.java
//               ^ punctuation.section.group.begin.java
//                ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                ^ punctuation.accessor.dot.java
//                                 ^ storage.type.class.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^ storage.type.class.java
//                                     ^ storage.type.class.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^ storage.type.class.java
//                                        ^ punctuation.accessor.dot.java
//                                         ^^^^ variable.parameter.this.java
//                                             ^ punctuation.section.group.end.java
//                                               ^ punctuation.section.block.begin.java
//                                                ^ punctuation.section.block.end.java

      void method(@á receiverargtests<?> . @ß a . @µ.c b @a a . @b.c b . @d . e(f="") this) {}
//    ^^^^^ meta.function.return-type.java - meta.function meta.function
//         ^^^^^^ meta.function.identifier.java - meta.function meta.function
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java meta.group.java - meta.function meta.function
//               ^^^^ - meta.path
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java - meta.path meta.path
//                                                ^^^^ meta.path.java meta.path.java
//                                                    ^^ meta.path.java - meta.path meta.path
//                                                      ^ - meta.path
//                                                       ^^^^^^^ meta.path.java - meta.path meta.path
//                                                              ^^^^ meta.path.java meta.path.java
//                                                                  ^^^^^ meta.path.java - meta.path meta.path
//                                                                       ^^^^^^ meta.path.java meta.path.java
//                                                                             ^^^^^^^^^^^ meta.path.java - meta.path meta.path
//                                                                                        ^^^^^ - meta.path
//    ^^^^ storage.type.void.java
//         ^^^^^^ entity.name.function.java
//               ^ punctuation.section.group.begin.java
//                ^^ meta.annotation.identifier.java
//                   ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                   ^^^ meta.generic.java
//                                       ^ punctuation.accessor.dot.java
//                                         ^^ meta.annotation.identifier.java
//                                            ^ storage.type.class.java
//                                              ^ punctuation.accessor.dot.java
//                                                ^^^^ meta.annotation.identifier.java
//                                                     ^ storage.type.class.java
//                                                       ^^ meta.annotation.identifier.java
//                                                          ^ storage.type.class.java
//                                                            ^ punctuation.accessor.dot.java
//                                                              ^^^^ meta.annotation.identifier.java
//                                                                   ^ storage.type.class.java
//                                                                     ^ punctuation.accessor.dot.java
//                                                                       ^^^^^^ meta.annotation.identifier.java
//                                                                             ^^^^^^ meta.annotation.parameters.java meta.group.java
//                                                                                    ^^^^ variable.parameter.this.java
//                                                                                        ^ punctuation.section.group.end.java
//                                                                                          ^ punctuation.section.block.begin.java
//                                                                                           ^ punctuation.section.block.end.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
  }
//^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Invalid Class Member Fallback Tests
 *   Things that are not supported by Java but might need to be handled by the
 *   syntax to prevent highligthing from breaking due to incomplete code blocks.
 *
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.4
 *****************************************************************************/

class InvalidMemberTests {

  int if(true)
//^^^^^^^^^^^^ - meta.function
//^^^ storage.type.primitive.java
//    ^^ - entity

  int class MyClass
//^^^^^^^^^^^^^^^^^ - meta.function
//^^^ storage.type.primitive.java
//    ^^ - entity

  int package dump
//^^^^^^^^^^^^^^^^ - meta.function
//^^^ storage.type.primitive.java
//    ^^ - entity

}
// <- meta.class.java punctuation.section.block.end.java


/******************************************************************************
 * Local Variable Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.4
 *****************************************************************************/

class LocalVariableDeclarationTests {

  void declarePrimitiveTypes() {

    int
// ^^^^^ - meta.declaration
//  ^^^ storage.type.primitive.java

    int foo
//  ^^^^ meta.declaration.type.java
//      ^^^^ meta.declaration.identifier.java
//  ^^^ storage.type.primitive.java
//      ^^^ variable.other.java

    int foo;
//  ^^^^ meta.declaration.type.java
//      ^^^ meta.declaration.identifier.java
//         ^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^^ variable.other.java
//         ^ punctuation.terminator.java

    int FOO;
//  ^^^^ meta.declaration.type.java
//      ^^^ meta.declaration.identifier.java
//         ^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^^ constant.other.java
//         ^ punctuation.terminator.java

    int foo, bar;
// ^ - meta.declaration
//  ^^^^ meta.declaration.type.java
//      ^^^ meta.declaration.identifier.java
//         ^ meta.declaration.java
//          ^^^^ meta.declaration.identifier.java
//              ^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^^ variable.other.java
//         ^ punctuation.separator.comma.java
//           ^^^ variable.other.java
//              ^ punctuation.terminator.java

    int foo =, bar =;
// ^ - meta.declaration
//  ^^^^ meta.declaration.type.java
//      ^^^^ meta.declaration.identifier.java
//          ^^ meta.declaration.java
//            ^^^^^ meta.declaration.identifier.java
//                 ^ meta.declaration.java
//                  ^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^^ variable.other.java
//          ^ keyword.operator.assignment.java
//           ^ punctuation.separator.comma.java
//             ^^^ variable.other.java
//                 ^ keyword.operator.assignment.java
//                  ^ punctuation.terminator.java

    int foo = 0, bar = CONST;
// ^ - meta.declaration
//  ^^^^ meta.declaration.type.java
//      ^^^^ meta.declaration.identifier.java
//          ^ meta.declaration.java
//           ^^ meta.declaration.value.java
//              ^^^^^ meta.declaration.identifier.java
//                   ^ meta.declaration.java
//                    ^^^^^^ meta.declaration.value.java
//                          ^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^^ variable.other.java
//          ^ keyword.operator.assignment.java
//            ^ constant.numeric.value.java
//             ^ punctuation.separator.comma.java
//               ^^^ variable.other.java
//                   ^ keyword.operator.assignment.java
//                     ^^^^^ constant.other.java
//                          ^ punctuation.terminator.java

    int[]
//  ^^^^^^ - meta.declaration
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java

    int []
//  ^^^^^^^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^ storage.modifier.array.java

    int[] foo
//  ^^^^^^ meta.declaration.type.java
//        ^^^^ meta.declaration.identifier.java
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//        ^^^ variable.other.java

    int foo[], [] ;
//  ^^^^ meta.declaration.type.java
//      ^^^^^ meta.declaration.identifier.java
//           ^ meta.declaration.java
//            ^^^^ meta.declaration.identifier.java
//                ^ - meta.declaration
//  ^^^ storage.type.primitive.java
//      ^^^ variable.other.java
//         ^^ storage.modifier.array.java
//           ^ punctuation.separator.comma.java
//             ^^ storage.modifier.array.java
//                ^ punctuation.terminator.java

    final int[] y = 10, z[] = 5;
// ^ - meta.declaration
//  ^^^^^^^^^^^^ meta.declaration.type.java
//              ^^ meta.declaration.identifier.java
//                ^ meta.declaration.java
//                 ^^^ meta.declaration.value.java
//                     ^^^^^ meta.declaration.identifier.java
//                          ^ meta.declaration.java
//                           ^^ meta.declaration.value.java
//                             ^ - meta.declaration
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//           ^^ storage.modifier.array.java
//              ^ variable.other.java
//                ^ keyword.operator.assignment.java
//                  ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                    ^ punctuation.separator.comma.java
//                      ^ variable.other.java
//                       ^^ storage.modifier.array.java
//                          ^ keyword.operator.assignment.java
//                            ^ meta.number.integer.decimal.java constant.numeric.value.java
//                             ^ punctuation.terminator.java

    @Number final int y @Dim1 [] @Dim2 [] = { {10, 1}, {5, 2} };
// ^ - meta.declaration
//  ^^^^^^^^^^^^^^^^^^ meta.declaration.type.java
//                    ^^^^^^^^^^^^^^^^^^^^ meta.declaration.identifier.java
//                                        ^ meta.declaration.java
//                                         ^^^^^^^^^^^^^^^^^^^^ meta.declaration.value.java
//                                                             ^ - meta.declaration
//  ^^^^^^^ meta.annotation.identifier.java
//          ^^^^^ storage.modifier.java
//                ^^^ storage.type.primitive.java
//                    ^ variable.other.java
//                      ^^^^^ meta.annotation.identifier.java
//                            ^^ storage.modifier.array.java
//                               ^^^^^ meta.annotation.identifier.java
//                                     ^^ storage.modifier.array.java
//                                        ^ keyword.operator.assignment.java

    @Number
//  ^^^^^^^^ meta.declaration.type.java meta.annotation.identifier.java
    final
//  ^^^^^ meta.declaration.type.java storage.modifier.java
    int
//  ^^^ meta.declaration.type.java storage.type.primitive.java
    foo
//  ^^^ meta.declaration.identifier.java variable.other.java
    @Dim1
//  ^^^^^^ meta.declaration.identifier.java meta.annotation.identifier.java
    []
//  ^^ meta.declaration.identifier.java storage.modifier.array.java
    =
//  ^ meta.declaration.java keyword.operator.assignment.java
    {0, 1}
//  ^^^^^^ meta.declaration.value.java meta.braces.java
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
// ^ meta.class.java meta.block.java - meta.function

  void declareObjectTypes() {

    TestClass ;
//  ^^^^^^^^^ storage.type.class.java

    testclass ;
//  ^^^^^^^^^ variable.other.java

    TestClass foo
//  ^^^^^^^^^^ meta.declaration.type.java
//            ^^^^ meta.declaration.identifier.java
//  ^^^^^^^^^ storage.type.class.java
//            ^^^ variable.other.java

    testclass foo
//  ^^^^^^^^^^ meta.declaration.type.java
//            ^^^^ meta.declaration.identifier.java
//  ^^^^^^^^^ storage.type.class.java
//            ^^^ variable.other.java

    TestClass foo;
//  ^^^^^^^^^^ meta.declaration.type.java
//            ^^^ meta.declaration.identifier.java
//               ^ - meta.declaration
//  ^^^^^^^^^ storage.type.class.java
//            ^^^ variable.other.java
//               ^ punctuation.terminator.java

    TestClass foo, bar;
// ^ - meta.declaration
//  ^^^^^^^^^^ meta.declaration.type.java
//            ^^^ meta.declaration.identifier.java
//               ^ meta.declaration.java
//                ^^^^ meta.declaration.identifier.java
//                    ^ - meta.declaration
//  ^^^^^^^^^ storage.type.class.java
//            ^^^ variable.other.java
//               ^ punctuation.separator.comma.java
//                 ^^^ variable.other.java
//                    ^ punctuation.terminator.java

    TestClass foo =, bar =;
// ^ - meta.declaration
//  ^^^^^^^^^^ meta.declaration.type.java
//            ^^^^ meta.declaration.identifier.java
//                ^^ meta.declaration.java
//                  ^^^^^ meta.declaration.identifier.java
//                       ^ meta.declaration.java
//                        ^ - meta.declaration
//  ^^^^^^^^^ storage.type.class.java
//            ^^^ variable.other.java
//                ^ keyword.operator.assignment.java
//                 ^ punctuation.separator.comma.java
//                   ^^^ variable.other.java
//                       ^ keyword.operator.assignment.java
//                        ^ punctuation.terminator.java

    TestClass foo = 0, bar = 10;
// ^ - meta.declaration
//  ^^^^^^^^^^ meta.declaration.type.java
//            ^^^^ meta.declaration.identifier.java
//                ^ meta.declaration.java
//                 ^^ meta.declaration.value.java
//                   ^ meta.declaration.java
//                    ^^^^^ meta.declaration.identifier.java
//                         ^ meta.declaration.java
//                          ^^^ meta.declaration.value.java
//                             ^ - meta.declaration
//  ^^^^^^^^^ storage.type.class.java
//            ^^^ variable.other.java
//                ^ keyword.operator.assignment.java
//                  ^ constant.numeric.value.java
//                   ^ punctuation.separator.comma.java
//                     ^^^ variable.other.java
//                         ^ keyword.operator.assignment.java
//                           ^^ constant.numeric.value.java
//                             ^ punctuation.terminator.java

    final TestClass[] y = 10, z[] = 5;
// ^ - meta.declaration
//  ^^^^^^^^^^^^^^^^^^ meta.declaration.type.java
//                    ^^ meta.declaration.identifier.java
//                      ^ meta.declaration.java
//                       ^^^ meta.declaration.value.java
//                          ^ meta.declaration.java
//                           ^^^^^ meta.declaration.identifier.java
//                                ^ meta.declaration.java
//                                 ^^ meta.declaration.value.java
//                                   ^ - meta.declaration
//  ^^^^^ storage.modifier.java
//        ^^^^^^^^^ storage.type.class.java
//                 ^^ storage.modifier.array.java
//                    ^ variable.other.java
//                      ^ keyword.operator.assignment.java
//                        ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                          ^ punctuation.separator.comma.java
//                            ^ variable.other.java
//                             ^^ storage.modifier.array.java
//                                ^ keyword.operator.assignment.java
//                                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                   ^ punctuation.terminator.java

    @Number final TestClass y @Dim1 [] @Dim2 [] = { {10, 1}, {5, 2} };
// ^ - meta.declaration
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.java
//                          ^^^^^^^^^^^^^^^^^^^^ meta.declaration.identifier.java
//                                              ^ meta.declaration.java
//                                               ^^^^^^^^^^^^^^^^^^^^ meta.declaration.value.java
//                                                                   ^ - meta.declaration
//  ^^^^^^^ meta.annotation.identifier.java
//          ^^^^^ storage.modifier.java
//                ^^^^^^^^^ storage.type.class.java
//                          ^ variable.other.java
//                            ^^^^^ meta.annotation.identifier.java
//                                  ^^ storage.modifier.array.java
//                                     ^^^^^ meta.annotation.identifier.java
//                                           ^^ storage.modifier.array.java
//                                              ^ keyword.operator.assignment.java

    @number final testclass y @dim1 [] @dim2 [] = { {10, 1}, {5, 2} };
// ^ - meta.declaration
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.java
//                          ^^^^^^^^^^^^^^^^^^^^ meta.declaration.identifier.java
//                                              ^ meta.declaration.java
//                                               ^^^^^^^^^^^^^^^^^^^^ meta.declaration.value.java
//                                                                   ^ - meta.declaration
//  ^^^^^^^ meta.annotation.identifier.java
//          ^^^^^ storage.modifier.java
//                ^^^^^^^^^ storage.type.class.java
//                          ^ variable.other.java
//                            ^^^^^ meta.annotation.identifier.java
//                                  ^^ storage.modifier.array.java
//                                     ^^^^^ meta.annotation.identifier.java
//                                           ^^ storage.modifier.array.java
//                                              ^ keyword.operator.assignment.java

    foo.TestClass bar.baz;
// ^ - meta.declaration
//  ^^^^^^^^^^^^^ meta.declaration.type.java meta.path.java
//               ^ meta.declaration.type.java - meta.path
//                ^^^^^^^ meta.declaration.identifier.java - meta.path
//                       ^ - meta.declaration
//  ^^^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^^^^^^ storage.type.class.java
//                ^^^ variable.other.java
//                   ^ invalid.illegal.unexpected-accessor.java
//                    ^^^ invalid.illegal.unexpected-member.java

    foo.testclass bar.baz;
// ^ - meta.declaration
//  ^^^^^^^^^^^^^ meta.declaration.type.java meta.path.java
//               ^ meta.declaration.type.java - meta.path
//                ^^^^^^^ meta.declaration.identifier.java - meta.path
//                       ^ - meta.declaration
//  ^^^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^^^^^^ storage.type.class.java
//                ^^^ variable.other.java
//                   ^ invalid.illegal.unexpected-accessor.java
//                    ^^^ invalid.illegal.unexpected-member.java

    a e = new a(){};
//  ^^^^^^ - meta.instantiation
//  ^^ meta.declaration.type.java
//    ^^ meta.declaration.identifier.java
//      ^ meta.declaration.java
//       ^ meta.declaration.value.java
//        ^^^^^^^^^ meta.declaration.value.java meta.instantiation.java
//                 ^ - meta.declaration - meta.instantiation
//  ^ storage.type.class.java
//    ^ variable.other.java
//      ^ keyword.operator.assignment.java
//        ^^^ keyword.other.storage.new.java
//            ^ storage.type.class.java
//             ^ punctuation.section.group.begin.java
//              ^ punctuation.section.group.end.java
//               ^ punctuation.section.block.begin.java
//                ^ punctuation.section.block.end.java
//                 ^ punctuation.terminator.java
  }


  void declareGenericTypes() {

    List<String> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^^^^^^^^ meta.declaration.type.java meta.generic.java - meta.path
//              ^ meta.declaration.type.java - meta.generic - meta.path
//               ^ meta.declaration.identifier.java - meta.generic - meta.path
//                ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^^^^^^^^ meta.generic.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^^^^ storage.type.class.java
//             ^ punctuation.definition.generic.end.java
//               ^ variable.other.java
//                ^ punctuation.terminator.java

    List<java.lang.String> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^ meta.declaration.type.java meta.generic.java - meta.path
//       ^^^^^^^^^^^^^^^^ meta.declaration.type.java meta.generic.java meta.path.java
//                       ^ meta.declaration.type.java meta.generic.java - meta.path
//                        ^ meta.declaration.type.java - meta.generic - meta.path
//                         ^ meta.declaration.identifier.java - meta.generic - meta.path
//                          ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^ storage.type.class.java
//                       ^ punctuation.definition.generic.end.java
//                         ^ variable.other.java
//                          ^ punctuation.terminator.java

    List<URI> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^^^^^ meta.declaration.type.java meta.generic.java - meta.path
//           ^ meta.declaration.type.java - meta.generic - meta.path
//            ^ meta.declaration.identifier.java - meta.generic - meta.path
//             ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^ storage.type.class.java
//          ^ punctuation.definition.generic.end.java
//            ^ variable.other.java
//             ^ punctuation.terminator.java

    List<java.net.URI> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^ meta.declaration.type.java meta.generic.java - meta.path
//       ^^^^^^^^^^^^ meta.declaration.type.java meta.generic.java meta.path.java
//                   ^ meta.declaration.type.java meta.generic.java - meta.path
//                    ^ meta.declaration.type.java - meta.generic - meta.path
//                     ^ meta.declaration.identifier.java - meta.generic - meta.path
//                      ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^ storage.type.class.java
//                   ^ punctuation.definition.generic.end.java
//                     ^ variable.other.java
//                      ^ punctuation.terminator.java

    List<int[]> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^^^^^^^ meta.declaration.type.java meta.generic.java - meta.path
//             ^ meta.declaration.type.java - meta.generic - meta.path
//              ^ meta.declaration.identifier.java - meta.generic - meta.path
//               ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^ storage.type.primitive.java
//          ^^ storage.modifier.array.java
//            ^ punctuation.definition.generic.end.java
//              ^ variable.other.java
//               ^ punctuation.terminator.java

    List<java.lang.String[]> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^ meta.declaration.type.java meta.generic.java - meta.path
//       ^^^^^^^^^^^^^^^^ meta.declaration.type.java meta.generic.java meta.path.java
//                       ^^^ meta.declaration.type.java meta.generic.java - meta.path
//                          ^ meta.declaration.type.java - meta.generic - meta.path
//                           ^ meta.declaration.identifier.java - meta.generic - meta.path
//                            ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^ storage.type.class.java
//                       ^^ storage.modifier.array.java
//                         ^ punctuation.definition.generic.end.java
//                           ^ variable.other.java
//                            ^ punctuation.terminator.java

    List<URI[]> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^^^^^^^ meta.declaration.type.java meta.generic.java - meta.path
//             ^ meta.declaration.type.java - meta.generic - meta.path
//              ^ meta.declaration.identifier.java - meta.generic - meta.path
//               ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^^^^^^^ meta.generic.java
//       ^^^ storage.type.class.java
//          ^^ storage.modifier.array.java

    List<int[][]>[][] x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^^^^^^^^^ meta.declaration.type.java meta.generic.java - meta.path
//               ^^^^^ meta.declaration.type.java - meta.generic - meta.path
//                    ^ meta.declaration.identifier.java - meta.generic - meta.path
//                     ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^^^ storage.type.primitive.java
//          ^^^^ storage.modifier.array.java
//              ^ punctuation.definition.generic.end.java
//               ^^^^ storage.modifier.array.java
//                    ^ variable.other.java
//                     ^ punctuation.terminator.java

    List<? extends int> x;
//  ^^^^ meta.declaration.type.java - meta.generic - meta.path
//      ^^^^^^^^^^^^^^^ meta.declaration.type.java meta.generic.java - meta.path
//                     ^ meta.declaration.type.java - meta.generic - meta.path
//                      ^ meta.declaration.identifier.java - meta.generic - meta.path
//                       ^ - meta.declaration
//  ^^^^ storage.type.class.java
//      ^ punctuation.definition.generic.begin.java
//       ^ variable.language.wildcard.java
//         ^^^^^^^ storage.modifier.extends.java
//                 ^^^ invalid.illegal.unexpected-keyword.java
//                    ^ punctuation.definition.generic.end.java
//                      ^ variable.other.java
//                       ^ punctuation.terminator.java

    @anno foo . @anno TestClass<T> @anno . anno [] bar . baz;
// ^ - meta.declaration
//  ^^^^^ meta.declaration.type.java meta.annotation.identifier.java - meta.path
//       ^ meta.declaration.type.java - meta.annotation - meta.path
//        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.java meta.path.java
//                                ^ meta.declaration.type.java - meta.path
//                                 ^^^^^^^^^^^^ meta.declaration.type.java meta.annotation.identifier.java meta.path.java
//                                             ^^^^ meta.declaration.type.java - meta.annotation - meta.path
//                                                 ^^^^^^^^^ meta.declaration.identifier.java - meta.annotation - meta.path
//                                                          ^ - meta.declaration
//  ^ punctuation.definition.annotation.java
//   ^^^^ variable.annotation.java
//        ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//              ^ punctuation.definition.annotation.java
//               ^^^^ variable.annotation.java
//                    ^^^^^^^^^ storage.type.class.java
//                             ^ punctuation.definition.generic.begin.java
//                              ^ storage.type.class.java
//                               ^ punctuation.definition.generic.end.java
//                                 ^ punctuation.definition.annotation.java
//                                  ^^^^ variable.annotation.namespace.java
//                                       ^ punctuation.accessor.dot.java
//                                         ^^^^ variable.annotation.java
//                                              ^^ storage.modifier.array.java
//                                                 ^^^ variable.other.java
//                                                     ^ invalid.illegal.unexpected-accessor.java
//                                                       ^^^ invalid.illegal.unexpected-member.java
//                                                          ^ punctuation.terminator.java

    @anno foo . @anno testclass<t> @anno . anno [] bar . baz;
// ^ - meta.declaration
//  ^^^^^ meta.declaration.type.java meta.annotation.identifier.java - meta.path
//       ^ meta.declaration.type.java - meta.annotation - meta.path
//        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.java meta.path.java
//                                ^ meta.declaration.type.java - meta.path
//                                 ^^^^^^^^^^^^ meta.declaration.type.java meta.annotation.identifier.java meta.path.java
//                                             ^^^^ meta.declaration.type.java - meta.annotation - meta.path
//                                                 ^^^^^^^^^ meta.declaration.identifier.java - meta.annotation - meta.path
//                                                          ^ - meta.declaration
//  ^ punctuation.definition.annotation.java
//   ^^^^ variable.annotation.java
//        ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//              ^ punctuation.definition.annotation.java
//               ^^^^ variable.annotation.java
//                    ^^^^^^^^^ storage.type.class.java
//                             ^ punctuation.definition.generic.begin.java
//                              ^ storage.type.class.java
//                               ^ punctuation.definition.generic.end.java
//                                 ^ punctuation.definition.annotation.java
//                                  ^^^^ variable.annotation.namespace.java
//                                       ^ punctuation.accessor.dot.java
//                                         ^^^^ variable.annotation.java
//                                              ^^ storage.modifier.array.java
//                                                 ^^^ variable.other.java
//                                                     ^ invalid.illegal.unexpected-accessor.java
//                                                       ^^^ invalid.illegal.unexpected-member.java
//                                                          ^ punctuation.terminator.java

    class a<b>{{
//  ^^^^^ meta.function.java meta.class.java
//       ^^ meta.function.java meta.class.identifier.java - meta.generic
//         ^^^ meta.function.java meta.class.identifier.java meta.generic.declaration.java
//            ^^ meta.function.java meta.class.java meta.block.java - meta.generic
//  ^^^^^ keyword.declaration.class.java
//        ^ entity.name.class.java
//         ^ punctuation.definition.generic.begin.java
//          ^ variable.parameter.type.java
//           ^ punctuation.definition.generic.end.java
//            ^^ punctuation.section.block.begin.java
      a<a>a;
//    ^ meta.declaration.type.java - meta.generic
//     ^^^ meta.declaration.type.java meta.generic.java
//        ^ meta.declaration.identifier.java - meta.generic
//    ^ storage.type.class.java
//     ^ punctuation.definition.generic.begin.java
//      ^ storage.type.class.java
//       ^ punctuation.definition.generic.end.java
//        ^ variable.other.java
//         ^ punctuation.terminator.java
    }}
//  ^^ punctuation.section.block.end.java
  }

  void declareVarTypes() {

    var
//  ^^^ storage.type.variant.java

    var x, y;
//  ^^^ storage.type.variant.java
//      ^ variable.other.java
//       ^ punctuation.separator.comma.java
//         ^ variable.other.java
//          ^ punctuation.terminator.java

    var x = "String";
//  ^^^ storage.type.variant.java
//      ^ variable.other.java
//        ^ keyword.operator.assignment.java

    final var y = 10;
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.variant.java
//            ^ variable.other.java
//              ^ keyword.operator.assignment.java

    final var y.b = 10;
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.variant.java
//            ^ variable.other.java
//             ^ invalid.illegal.unexpected-accessor.java
//              ^ invalid.illegal.unexpected-member.java
//                ^ keyword.operator.assignment.java

    final var[] y = 10, z[] = 5;
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.variant.java
//           ^^ invalid.illegal.unexpected-modifier.java
//              ^ variable.other.java
//                ^ keyword.operator.assignment.java
//                  ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                    ^ punctuation.separator.comma.java
//                             ^ punctuation.terminator.java

    @Number final var y @Dim1 [] @Dim2 [] = { {10, 1}, {5, 2} };
//  ^^^^^^^ meta.annotation.identifier.java
//          ^^^^^ storage.modifier.java
//                ^^^ storage.type.variant.java
//                    ^ variable.other.java
//                      ^^^^^ meta.annotation.identifier.java
//                            ^^ storage.modifier.array.java
//                               ^^^^^ meta.annotation.identifier.java
//                                     ^^ storage.modifier.array.java
  }
}


/******************************************************************************
 * Labeled Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.7
 *****************************************************************************/

class LabeledStatementTests {

    void run() {

        label:
//      ^^^^^ entity.name.label.java
//           ^ punctuation.separator.colon.java

        label: if () {} else {}
//      ^^^^^ entity.name.label.java
//           ^ punctuation.separator.colon.java
//             ^^^^^^^^ meta.statement.conditional.if.java
//                      ^^^^^^^ meta.statement.conditional.else.java

        label: run();
//      ^^^^^ entity.name.label.java
//           ^ punctuation.separator.colon.java
//             ^^^^^ meta.function-call

        label: a = b;
//      ^^^^^ entity.name.label.java
//           ^ punctuation.separator.colon.java
    }
}



/******************************************************************************
 * If Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.9
 *****************************************************************************/

class IfStatementTests {

  void run() {

    if$ ;
//  ^^^ variable.other.java - keyword

    $if ;
//  ^^^ variable.other.java - keyword

    if
//  ^^^ meta.statement.conditional.if.java
//  ^^ keyword.control.conditional.if.java

    if foo
//  ^^^^^^^ meta.statement.conditional.if.java
//  ^^ keyword.control.conditional.if.java
//     ^^^ variable.other.java

    if (foo)
//  ^^^ meta.statement.conditional.if.java - meta.group
//     ^^^^^ meta.statement.conditional.if.java meta.group.java
//          ^ meta.statement.conditional.if.java - meta.group
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.other.java
//         ^ punctuation.section.group.end.java

    if (foo) {}
//  ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//     ^^^^^ meta.statement.conditional.if.java meta.group.java
//          ^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.block - meta.statement.conditional.if meta.group
//           ^^ meta.statement.conditional.if.java meta.block.java
//             ^ - meta.statement.conditional.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.other.java
//         ^ punctuation.section.group.end.java
//           ^ punctuation.section.block.begin.java
//            ^ punctuation.section.block.end.java

    if (foo {}
//  ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//     ^^^^^ meta.statement.conditional.if.java meta.group.java
//          ^^ meta.statement.conditional.if.java meta.block.java
//            ^ - meta.statement.conditional.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.other.java
//          ^ punctuation.section.block.begin.java
//           ^ punctuation.section.block.end.java

    if (hello(world) { return false }
//  ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//     ^^^^^^^^^^^^^^ meta.statement.conditional.if.java meta.group.java
//                   ^^^^^^^^^^^^^^^^ meta.statement.conditional.if.java meta.block.java
//                                   ^ - meta.statement.conditional.if
//                   ^ punctuation.section.block.begin.java
//                     ^^^^^^ keyword.control.flow.return.java
//                            ^^^^^ constant.language.boolean.false.java
//                                  ^ punctuation.section.block.end.java

    if (foo) else
//  ^^^^^^^^^ - meta.statement.conditional.else
//  ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//     ^^^^^ meta.statement.conditional.if.java meta.group.java
//          ^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.block - meta.statement.conditional.if meta.group
//           ^^^^^ meta.statement.conditional.else.java - meta.statement.conditional.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.other.java
//         ^ punctuation.section.group.end.java
//           ^^^^ keyword.control.conditional.else.java

    if (foo) {} else {}
//  ^^^^^^^^^^^^ - meta.statement.conditional.else
//  ^^^ meta.statement.conditional.if.java - meta.group
//     ^^^^^ meta.statement.conditional.if.java meta.group.java
//          ^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.block - meta.statement.conditional.if meta.group
//           ^^ meta.statement.conditional.if.java meta.block.java
//             ^^^^^^^^ - meta.statement.conditional.if
//              ^^^^^ meta.statement.conditional.else.java - meta.statement.conditional.else meta.block
//                   ^^ meta.statement.conditional.else.java meta.block.java
//                     ^ - meta.statement.conditional.if - meta.statement.conditional.else
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.other.java
//         ^ punctuation.section.group.end.java
//           ^ punctuation.section.block.begin.java
//            ^ punctuation.section.block.end.java
//              ^^^^ keyword.control.conditional.else.java
//                   ^ punctuation.section.block.begin.java
//                    ^ punctuation.section.block.end.java

    if (foo) else if (bar) else
//  ^^^^^^^^^ - meta.statement.conditional.else
//  ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//     ^^^^^ meta.statement.conditional.if.java meta.group.java
//          ^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.block - meta.statement.conditional.if meta.group
//           ^^^^^ meta.statement.conditional.else.java - meta.statement.conditional.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.other.java
//         ^ punctuation.section.group.end.java
//           ^^^^ keyword.control.conditional.else.java
//                ^^^^^^^^^ - meta.statement.conditional.else
//                ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//                   ^^^^^ meta.statement.conditional.if.java meta.group.java
//                        ^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.block - meta.statement.conditional.if meta.group
//                         ^^^^^ meta.statement.conditional.else.java - meta.statement.conditional.if
//                ^^ keyword.control.conditional.if.java
//                   ^ punctuation.section.group.begin.java
//                    ^^^ variable.other.java
//                       ^ punctuation.section.group.end.java
//                         ^^^^ keyword.control.conditional.else.java

    if (foo() == true) fun() else if (bar != 0) bar = 1 else baz++
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.statement.conditional.else
//  ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//     ^^^^^^^^^^^^^^^ meta.statement.conditional.if.java meta.group.java
//                    ^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//                     ^^^^^^ meta.statement.conditional.if.java
//                           ^^^^^ meta.statement.conditional.else.java - meta.statement.conditional.if
//                                ^^^^^^^^^^^^^^^^^^^^^^ - meta.statement.conditional.else
//                                ^^^ meta.statement.conditional.if.java - meta.statement.conditional.if meta.group
//                                   ^^^^^^^^^^ meta.statement.conditional.if.java meta.group.java
//                                                      ^^^^^ meta.statement.conditional.else.java - meta.statement.conditional.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.group.begin.java
//      ^^^ variable.function.java
//            ^^ keyword.operator.comparison.java
//               ^^^^ constant.language.boolean.true.java
//                   ^ punctuation.section.group.end.java
//                     ^^^ variable.function.java
//                           ^^^^ keyword.control.conditional.else.java
  }
}


/******************************************************************************
 * Assert Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.10
 *****************************************************************************/

class AssertStatementTests {

  void run() {

    assert0;
//  ^^^^^^^ variable.other.java - keyword

    assert$;
//  ^^^^^^^ variable.other.java - keyword

    $assert;
//  ^^^^^^^ variable.other.java - keyword

    assert
// ^ - meta.assertion
//  ^^^^^^^ meta.assertion.java
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^ - keyword

    assert ;
// ^^^^^^^^ meta.assertion.java
//         ^ - meta.assertion
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^^ - keyword
//         ^ punctuation.terminator.java

    assert true;
// ^ - meta.assertion
//  ^^^^^^^ meta.assertion.java
//             ^ - meta.assertion
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^ - keyword - constant
//         ^^^^ constant.language.boolean.true.java
//             ^ punctuation.terminator.java

    assert :
// ^ - meta.assertion
//  ^^^^^^^^^ meta.assertion.java
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^ - keyword - punctuation
//         ^ punctuation.separator.expressions.java

    assert : ;
// ^^^^^^^^^^ meta.assertion.java
//           ^ - meta.assertion
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^ - keyword - punctuation
//         ^ punctuation.separator.expressions.java
//          ^ - punctuation
//           ^ punctuation.terminator.java

// Note: Only two expressions are allowed, but we don't care here.
    assert : : ;
// ^ - meta.assertion
//  ^^^^^^^^^^^ meta.assertion.java
//             ^ - meta.assertion
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^ - keyword - punctuation
//         ^ punctuation.separator.expressions.java
//          ^ - punctuation
//           ^ punctuation.separator.expressions.java
//             ^ punctuation.terminator.java

    assert foo():bar.baz();
// ^ - meta.assertion
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.assertion.java
//                        ^ - meta.assertion
// ^ - keyword
//  ^^^^^^ keyword.control.flow.assert.java
//        ^ - keyword - variable
//         ^^^ variable.function.java
//              ^ punctuation.separator.expressions.java
//               ^^^ variable.other.java
//                  ^ punctuation.accessor.dot.java
//                   ^^^ variable.function.java
//                        ^ punctuation.terminator.java

    assert scale > -100 : foo == true;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assertion.java
//  ^^^^^^ keyword.control.flow.assert.java
//         ^^^^^ variable.other.java
//               ^ keyword.operator.comparison.java
//                 ^ keyword.operator.arithmetic.java
//                  ^^^ constant.numeric.value.java
//                      ^ punctuation.separator.expressions.java
//                        ^^^ variable.other.java
//                            ^^ keyword.operator.comparison.java
//                               ^^^^ constant.language.boolean.true.java
//                                   ^ punctuation.terminator.java

    assert int foo=0;
//  ^^^^^^^ meta.assertion.java
//         ^^^^ meta.declaration.type.java - meta.assertion
//             ^^^ meta.declaration.identifier.java - meta.assertion
//                ^ meta.declaration.java - meta.assertion
//                 ^ meta.declaration.value.java - meta.assertion

    assert if (true) {}
//  ^^^^^^^ meta.assertion.java
//         ^^^^^^^^^^^^ meta.statement.conditional.if.java - meta.assertion

    assert while (true) {}
//  ^^^^^^^ meta.assertion.java
//         ^^^^^^^^^^^^^^^ meta.while.java - meta.assertion

  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}


/******************************************************************************
 * Switch Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.11
 *****************************************************************************/

class SwitchStatementTests {

  void run() {

    switch$ ;
//  ^^^^^^^ variable.other.java - keyword

    $switch ;
//  ^^^^^^^ variable.other.java - keyword

    switch
//  ^^^^^^^ meta.switch.java
//  ^^^^^^ keyword.control.conditional.switch.java

    switch foo
//  ^^^^^^^^^^^ meta.switch.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^^^ variable.other.java

    switch (foo)
//  ^^^^^^^^^^^^^ - meta.switch meta.switch
//  ^^^^^^^ meta.switch.java
//         ^^^^^ meta.switch.java meta.group.java
//              ^ meta.switch.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^ punctuation.section.group.begin.java
//          ^^^ variable.other.java
//             ^ punctuation.section.group.end.java

    switch (foo) {}
//  ^^^^^^^^^^^^^^^ - meta.switch meta.switch
//  ^^^^^^^ meta.switch.java
//         ^^^^^ meta.switch.java meta.group.java
//              ^ meta.switch.java
//               ^^ meta.switch.java meta.block.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^ punctuation.section.group.begin.java
//          ^^^ variable.other.java
//             ^ punctuation.section.group.end.java
//               ^ punctuation.section.block.begin.java
//                ^ punctuation.section.block.end.java

    switch (foo {}
//  ^^^^^^^^^^^^^^^ - meta.switch meta.switch
//  ^^^^^^^ meta.switch.java
//         ^^^^^ meta.switch.java meta.group.java
//              ^^ meta.switch.java meta.block.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^ punctuation.section.group.begin.java
//          ^^^ variable.other.java
//              ^ punctuation.section.block.begin.java
//               ^ punctuation.section.block.end.java

    switch (foo%2) {

      case$ ;
//    ^^^^^ variable.other.java - keyword

      $case ;
//    ^^^^^ variable.other.java - keyword

      case
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//    ^^^^ keyword.control.conditional.case.java

      case :
//   ^^^^^^^ meta.switch.java meta.block.java meta.case.java
//          ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ punctuation.separator.expressions.java

      case 0:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^ meta.switch.java meta.block.java meta.case.label.java
//          ^ meta.switch.java meta.block.java meta.case.java
//           ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ meta.number.integer.decimal.java constant.numeric.value.java
//          ^ punctuation.separator.expressions.java

      case 1: bar()
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^ meta.switch.java meta.block.java meta.case.label.java
//          ^ meta.switch.java meta.block.java meta.case.java
//           ^^^^^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ meta.number.integer.decimal.java constant.numeric.value.java
//          ^ punctuation.separator.expressions.java
//            ^^^ variable.function.java

      case 3: ;
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^ meta.switch.java meta.block.java meta.case.label.java
//          ^ meta.switch.java meta.block.java meta.case.java
//           ^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ meta.number.integer.decimal.java constant.numeric.value.java
//          ^ punctuation.separator.expressions.java
//            ^ punctuation.terminator.java

      case 5: {}
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^ meta.switch.java meta.block.java meta.case.label.java
//          ^ meta.switch.java meta.block.java meta.case.java
//           ^^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ meta.number.integer.decimal.java constant.numeric.value.java
//          ^ punctuation.separator.expressions.java
//            ^ punctuation.section.block.begin.java
//             ^ punctuation.section.block.end.java

      case "string":
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java
//                 ^ meta.switch.java meta.block.java meta.case.java
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ string.quoted.double.java
//                 ^ punctuation.separator.expressions.java

      case 'S':
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^ meta.switch.java meta.block.java meta.case.label.java
//            ^ meta.switch.java meta.block.java meta.case.java
//             ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ meta.string.java string.quoted.single.java
//         ^ punctuation.definition.string.begin.java
//          ^ constant.character.literal.java
//           ^ punctuation.definition.string.end.java
//            ^ punctuation.separator.expressions.java

      case '\n' + foo():
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java
//                     ^ meta.switch.java meta.block.java meta.case.java
//                      ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ meta.string.java string.quoted.single.java
//         ^ punctuation.definition.string.begin.java
//          ^^ constant.character.escape.other.java
//            ^ punctuation.definition.string.end.java
//              ^ keyword.operator.arithmetic.java
//                ^^^ variable.function.java
//                     ^ punctuation.separator.expressions.java

      case constant + 5:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java
//                     ^ meta.switch.java meta.block.java meta.case.java
//                      ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ variable.other.java
//                  ^ keyword.operator.arithmetic.java
//                    ^ meta.number.integer.decimal.java constant.numeric.value.java
//                     ^ punctuation.separator.expressions.java

      case (constant << 0x5) :
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java - meta.group
//         ^^^^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java meta.group.java
//                          ^ meta.switch.java meta.block.java meta.case.label.java - meta.group
//                           ^ meta.switch.java meta.block.java meta.case.java - meta.group
//                            ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ punctuation.section.group.begin.java
//          ^^^^^^^^ variable.other.java
//                   ^^ keyword.operator.bitwise.java
//                      ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                        ^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                         ^ punctuation.section.group.end.java
//                           ^ punctuation.separator.expressions.java

      case CONSTANT
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java

      case CONSTANT:
//   ^ meta.switch.java meta.block.java meta.case.label.java
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//                 ^ meta.switch.java meta.block.java meta.case.java
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java
//                 ^ punctuation.separator.expressions.java

      case constant
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java

      case constant
//   ^ meta.switch.java meta.block.java meta.case.label.java
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java
      { }
//    ^^^ meta.switch.java meta.block.java meta.block.java

      case constant
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java
      ;
//    ^ meta.switch.java meta.block.java punctuation.terminator.java

      case constant:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//                 ^ meta.switch.java meta.block.java meta.case.java
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java
//                 ^ punctuation.separator.expressions.java

      case EnumConst
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^^ constant.other.java

      case EnumConst:
//   ^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//         ^^^^^^^^^ meta.switch.java meta.block.java meta.case.label.java - meta.path
//                  ^ meta.switch.java meta.block.java meta.case.java
//                   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^^ constant.other.java
//                  ^ punctuation.separator.expressions.java

      case module.CONSTANT:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^  meta.case.label.java meta.path.java
//                        ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^^^^ constant.other.java
//                        ^ punctuation.separator.expressions.java

      case MyClass.CONSTANT:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^  meta.case.label.java meta.path.java
//                         ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^ storage.type.class.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^^ constant.other.java
//                         ^ punctuation.separator.expressions.java

      case mod.sub.MyClass.EnumConst
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.case.label.java meta.path.java
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^ storage.type.class.java
//                         ^^^^^^^^^ constant.other.java

      case mod.sub.MyClass.EnumConst:
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.case.label.java meta.path.java
//                                  ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^ storage.type.class.java
//                         ^^^^^^^^^ constant.other.java
//                                  ^ punctuation.separator.expressions.java

      case mod.sub.myclass.enumconst
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.case.label.java meta.path.java
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^ variable.namespace.java
//                         ^^^^^^^^^ constant.other.java
        break
//      ^^^^^^ meta.switch.java meta.block.java meta.break.java
//      ^^^^^ keyword.control.flow.break.java

      case mod.sub.myclass.enumconst:
//   ^ meta.switch.java meta.block.java meta.break.java - meta.case
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.case.label.java meta.path.java
//                                  ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^ variable.namespace.java
//                         ^^^^^^^^^ constant.other.java
//                                  ^ punctuation.separator.expressions.java

      default : {}
//  ^^ meta.switch.java meta.block.java - meta.case.default
//    ^^^^^^^^ meta.switch.java meta.block.java meta.case.default.java
//            ^ meta.switch.java meta.block.java meta.case.java
//             ^^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^ keyword.control.conditional.default.java
//            ^ punctuation.separator.expressions.java
//              ^ punctuation.section.block.begin.java
//               ^ punctuation.section.block.end.java

      default$ ;
//    ^^^^^^^^ variable.other.java - keyword

      $default ;
//    ^^^^^^^^ variable.other.java - keyword
    }
//  ^ meta.switch.java meta.block.java punctuation.section.block.end.java
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Switch Expression Tests
 * https://docs.oracle.com/javase/specs/jls/se16/html/jls-15.html#jls-15.28
 *****************************************************************************/

class SwitchExpressionsTests {

   void testArrowCaseLabels() {
      int numLetters = switch (day) {
//    ^^^ storage.type.primitive.java
//        ^^^^^^^^^^ variable.other.java
//                   ^ keyword.operator.assignment.java
//                     ^^^^^^^^^^^^^^^ meta.switch.java
//                     ^^^^^^ keyword.control.conditional.switch.java
          case MONDAY, FRIDAY, SUNDAY -> 6;
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function.java meta.block.java meta.switch.java meta.block.java
//        ^^^^^ meta.case.java
//             ^^^^^^^^^^^^^^^^^^^^^^^ meta.case.label.java
//                                    ^^^^ meta.function.anonymous.java - meta.case
//        ^^^^ keyword.control.conditional.case.java
//             ^^^^^^ constant.other.java
//                   ^ punctuation.separator.comma.java
//                     ^^^^^^ constant.other.java
//                           ^ punctuation.separator.comma.java
//                             ^^^^^^ constant.other.java
//                                    ^^ keyword.declaration.function.arrow.java
//                                       ^ constant.numeric.value.java
//                                        ^ punctuation.terminator.java
          case TUESDAY                -> 7;
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.function.java meta.block.java meta.switch.java meta.block.java
//        ^^^^^ meta.case.java
//             ^^^^^^^^^^^^^^^^^^^^^^^ meta.case.label.java
//                                    ^^^^ meta.function.anonymous.java - meta.case
//        ^^^^ keyword.control.conditional.case.java
//             ^^^^^^^ constant.other.java
//                                    ^^ keyword.declaration.function.arrow.java
//                                       ^ constant.numeric.value.java
//                                        ^ punctuation.terminator.java
          default -> {
//       ^^^^^^^^^^^^^^ meta.switch.java meta.block.java
//        ^^^^^^^^ meta.case.default.java
//                ^^^^^ meta.function.anonymous.java - meta.case
//        ^^^^^^^ keyword.control.conditional.default.java
//                ^^ keyword.declaration.function.arrow.java
//                   ^ punctuation.section.block.begin.java
            String s = day.toString();
            int result = s.length();
            yield result;
//          ^^^^^^^^^^^^ meta.yield.java
//          ^^^^^ keyword.control.flow.yield.java
//                ^^^^^^ variable.other.java
          }
//        ^ punctuation.section.block.end.java
      };
//    ^ meta.switch.java meta.block.java punctuation.section.block.end.java
//     ^ punctuation.terminator.java - meta.switch
   }
// ^ punctuation.section.block.end.java

   void testClassicCaseLabels(boolean startWeek) {

      int numLetters = switch (day) {
         case startWeek ? MONDAY : FRIDAY :
//       ^^^^^ meta.case.java
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.label.java
//                                        ^ meta.case.java
//                                         ^ - meta.case
//       ^^^^ keyword.control.conditional.case.java
//            ^^^^^^^^^ variable.other.java
//                      ^ keyword.operator.ternary.java
//                        ^^^^^^ constant.other.java
//                               ^ keyword.operator.ternary.java
//                                 ^^^^^^ constant.other.java
//                                        ^ punctuation.separator.expressions.java
         case SUNDAY:
            yield 6;
//          ^^^^^^^ meta.switch.java meta.block.java meta.yield.java
//          ^^^^^ keyword.control.flow.yield.java
//                ^ meta.number.integer.decimal.java constant.numeric.value.java
//                 ^ punctuation.terminator.java
         case TUESDAY:
            yield 7;
//          ^^^^^^^ meta.switch.java meta.block.java meta.yield.java
//          ^^^^^ keyword.control.flow.yield.java
//                ^ meta.number.integer.decimal.java constant.numeric.value.java
//                 ^ punctuation.terminator.java
         default:
            throw new IllegalStateException("Invalid day: " + day);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.throw.java
//          ^^^^^ keyword.control.flow.throw.java
//                ^^^ keyword.other.storage.new.java
//                    ^^^^^^^^^^^^^^^^^^^^^ storage.type.class.java
//                                         ^ punctuation.section.group.begin.java
//                                          ^^^^^^^^^^^^^^^ string.quoted.double.java
//                                                          ^ keyword.operator.arithmetic.java
//                                                            ^^^ variable.other.java
//                                                               ^ punctuation.section.group.end.java
//                                                                ^ punctuation.terminator.java
      };
//    ^ meta.switch.java meta.block.java punctuation.section.block.end.java
//     ^ punctuation.terminator.java - meta.switch
   }
// ^ punctuation.section.block.end.java
}


/******************************************************************************
 * While Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.12
 *****************************************************************************/

class WhileStatementTests {

  void run() {

    while$ ;
//  ^^^^^^ variable.other.java - keyword

    $while ;
//  ^^^^^^ variable.other.java - keyword

    while
//  ^^^^^^ meta.while.java
//  ^^^^^ keyword.control.loop.while.java

    while false
//  ^^^^^^^^^^^^ meta.while.java
//  ^^^^^ keyword.control.loop.while.java
//        ^^^^^ constant.language.boolean.false.java

    while (false)
//  ^^^^^^^^^^^^^^ - meta.while meta.while
//  ^^^^^^ meta.while.java - meta.group
//        ^^^^^^^ meta.while.java meta.group.java
//               ^ meta.while.java - meta.group
//  ^^^^^ keyword.control.loop.while.java
//        ^ punctuation.section.group.begin.java
//         ^^^^^ constant.language.boolean.false.java
//              ^ punctuation.section.group.end.java

    while (false) {  }
//  ^^^^^^^^^^^^^^^^^^ - meta.while meta.while
//  ^^^^^^ meta.while.java - meta.group
//        ^^^^^^^ meta.while.java meta.group.java
//               ^ meta.while.java - meta.while.java meta.group - meta.while.java meta.block
//                ^^^^ meta.while.java meta.block.java
//  ^^^^^ keyword.control.loop.while.java
//        ^ punctuation.section.group.begin.java
//         ^^^^^ constant.language.boolean.false.java
//              ^ punctuation.section.group.end.java
//                ^ punctuation.section.block.begin.java
//                   ^ punctuation.section.block.end.java

    while (false {  }
//  ^^^^^^^^^^^^^^^^^^ - meta.while meta.while
//  ^^^^^^ meta.while.java
//        ^^^^^^^ meta.while.java meta.group.java
//               ^^^^ meta.while.java meta.block.java
//  ^^^^^ keyword.control.loop.while.java
//        ^ punctuation.section.group.begin.java
//         ^^^^^ constant.language.boolean.false.java
//               ^ punctuation.section.block.begin.java
//                  ^ punctuation.section.block.end.java
  }
}


/******************************************************************************
 * For Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.14
 *****************************************************************************/

class ForStatementTests {

  void run() {

    for$ ;
//  ^^^^ variable.other.java - keyword

    $for ;
//  ^^^^ variable.other.java - keyword

    for
//  ^^^^ meta.for.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword

    for ()
//  ^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.group
//      ^^ meta.for.java meta.group.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.group.begin.java
//       ^ punctuation.section.group.end.java

    for () {}
//  ^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.group
//      ^^ meta.for.java meta.group.java
//        ^ meta.for.java - meta.block meta.block meta.block
//         ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.group.begin.java
//       ^ punctuation.section.group.end.java
//         ^ punctuation.section.block.begin.java
//          ^ punctuation.section.block.end.java

    for ( {}
//  ^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.group
//      ^^ meta.for.java meta.group.java
//        ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.group.begin.java
//        ^ punctuation.section.block.begin.java
//         ^ punctuation.section.block.end.java

    for (; {}
//  ^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.group
//      ^^^ meta.for.java meta.group.java
//         ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.group.begin.java
//       ^ punctuation.terminator.java
//         ^ punctuation.section.block.begin.java
//          ^ punctuation.section.block.end.java

    for (;; {}
//  ^^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.group
//      ^^^^ meta.for.java meta.group.java
//          ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.group.begin.java
//       ^^ punctuation.terminator.java
//          ^ punctuation.section.block.begin.java
//           ^ punctuation.section.block.end.java

    for (;;;;) {;;;}
//  ^^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.group
//      ^^^^^^ meta.for.java meta.group.java
//            ^ meta.for.java - meta.block meta.block meta.block
//             ^^^^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.group.begin.java
//       ^^ punctuation.terminator.java
//         ^^ invalid.illegal.stray.java
//           ^ punctuation.section.group.end.java
//             ^ punctuation.section.block.begin.java
//              ^^^ punctuation.terminator.java
//                 ^ punctuation.section.block.end.java

    for (i = 0; i < 10; i += 2) {}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                             ^ meta.for.java - meta.block meta.block meta.block
//                              ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^ variable.other.java
//         ^ keyword.operator.assignment.java
//           ^ meta.number.integer.decimal.java constant.numeric.value.java
//            ^ punctuation.terminator.java
//              ^ variable.other.java
//                ^ keyword.operator.comparison.java
//                  ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                    ^ punctuation.terminator.java
//                      ^ variable.other.java
//                        ^^ keyword.operator.assignment.augmented.java
//                           ^ meta.number.integer.decimal.java constant.numeric.value.java
//                            ^ punctuation.section.group.end.java
//                              ^ punctuation.section.block.begin.java
//                               ^ punctuation.section.block.end.java

    for (i = , =, , 0; < 10 &&; += 2) {}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                                   ^ meta.for.java - meta.block meta.block meta.block
//                                    ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^ variable.other.java
//         ^ keyword.operator.assignment.java
//           ^ punctuation.separator.comma.java
//             ^ keyword.operator.assignment.java
//              ^ punctuation.separator.comma.java
//                ^ punctuation.separator.comma.java
//                  ^ constant.numeric.value.java
//                   ^ punctuation.terminator.java
//                     ^ keyword.operator.comparison.java
//                       ^^ constant.numeric.value.java
//                          ^^ keyword.operator.logical.java
//                            ^ punctuation.terminator.java
//                              ^^ keyword.operator.assignment.augmented.java
//                                 ^ constant.numeric.value.java
//                                  ^ punctuation.section.group.end.java
//                                    ^ punctuation.section.block.begin.java
//                                     ^ punctuation.section.block.end.java

    for (i = 0, j = 0; i < 10 && j < 5; i += 2, ++j) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java - meta.for meta.for
//                                                  ^ meta.for.java - meta.block meta.block meta.block
//                                                   ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^ variable.other.java
//         ^ keyword.operator.assignment.java
//           ^ meta.number.integer.decimal.java constant.numeric.value.java
//            ^ punctuation.separator.comma.java
//              ^ variable.other.java
//                ^ keyword.operator.assignment.java
//                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                   ^ punctuation.terminator.java
//                     ^ variable.other.java
//                       ^ keyword.operator.comparison.java
//                         ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                            ^^ keyword.operator.logical.java
//                               ^ variable.other.java
//                                 ^ keyword.operator.comparison.java
//                                   ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                    ^ punctuation.terminator.java
//                                      ^ variable.other.java
//                                        ^^ keyword.operator.assignment.augmented.java
//                                           ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                 ^ punctuation.section.group.end.java
//                                                   ^ punctuation.section.block.begin.java

    for (int i = 0; i < 10; i += 2) {}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                                 ^ meta.for.java - meta.block meta.block meta.block
//                                  ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^^^ storage.type.primitive.java
//           ^ variable.other.java
//             ^ keyword.operator.assignment.java
//               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.terminator.java
//                  ^ variable.other.java
//                    ^ keyword.operator.comparison.java
//                      ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                        ^ punctuation.terminator.java
//                          ^ variable.other.java
//                            ^^ keyword.operator.assignment.augmented.java
//                               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                ^ punctuation.section.group.end.java
//                                  ^ punctuation.section.block.begin.java

    for (int i = , =, , 0; < 10 &&; += 2) {}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                                       ^ meta.for.java - meta.block meta.block meta.block
//                                        ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^^^ storage.type.primitive.java
//           ^ variable.other.java
//             ^ keyword.operator.assignment.java
//               ^ punctuation.separator.comma.java
//                 ^ keyword.operator.assignment.java
//                  ^ punctuation.separator.comma.java
//                    ^ punctuation.separator.comma.java
//                      ^ constant.numeric.value.java
//                       ^ punctuation.terminator.java
//                         ^ keyword.operator.comparison.java
//                           ^^ constant.numeric.value.java
//                              ^^ keyword.operator.logical.java
//                                ^ punctuation.terminator.java
//                                  ^^ keyword.operator.assignment.augmented.java
//                                     ^ constant.numeric.value.java
//                                      ^ punctuation.section.group.end.java
//                                        ^ punctuation.section.block.begin.java
//                                         ^ punctuation.section.block.end.java

    for (int i = 0, j = 0; i < 10 && j < 5; i += 2, ++j) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java - meta.for meta.for
//                                                      ^ meta.for.java - meta.block meta.block meta.block
//                                                       ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^^^ storage.type.primitive.java
//           ^ variable.other.java
//             ^ keyword.operator.assignment.java
//               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.separator.comma.java
//                  ^ variable.other.java
//                    ^ keyword.operator.assignment.java
//                      ^ meta.number.integer.decimal.java constant.numeric.value.java
//                       ^ punctuation.terminator.java
//                         ^ variable.other.java
//                           ^ keyword.operator.comparison.java
//                             ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                ^^ keyword.operator.logical.java
//                                   ^ variable.other.java
//                                     ^ keyword.operator.comparison.java
//                                       ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                        ^ punctuation.terminator.java
//                                          ^ variable.other.java
//                                            ^^ keyword.operator.assignment.augmented.java
//                                               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                     ^ punctuation.section.group.end.java
//                                                       ^ punctuation.section.block.begin.java

    for (final int x = 10;;) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java - meta.for meta.for
//  ^^^ keyword.control.loop.for.java
//       ^^^^^ storage.modifier.java
//             ^^^ storage.type.primitive.java
//                 ^ variable.other.java
//                   ^ keyword.operator.assignment.java
//                     ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                       ^^ punctuation.terminator.java
//                         ^ punctuation.section.group.end.java

    for (native int x = 10;;) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java - meta.for meta.for
//  ^^^ keyword.control.loop.for.java
//       ^^^^^^ invalid.illegal.unexpected-keyword.java
//              ^^^ storage.type.primitive.java
//                  ^ variable.other.java
//                    ^ keyword.operator.assignment.java
//                      ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                        ^^ punctuation.terminator.java
//                          ^ punctuation.section.group.end.java

    for (var i=0;i<new Test(i).run();i=new Test(i).iter()){}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                                                        ^^ meta.for.java meta.block.java

    for (final @Anno Class iter : cond ? new Foo<> : new Bar[]) echo(iter);
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                                       ^^^^^^^^^^ meta.instantiation.java
//                                                 ^^ - meta.instantiation
//                                                   ^^^^^^^^^ meta.instantiation.java
//                                                              ^^^^^^^^^^ meta.for.java
//                                                                        ^ - meta.for
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^^^^^ storage.modifier.java
//             ^^^^^ meta.annotation.identifier.java
//                   ^^^^^ storage.type.class.java
//                         ^^^^ variable.other.java
//                              ^ keyword.operator.assignment.java
//                                ^^^^ variable.other.java
//                                     ^ keyword.operator.ternary.java
//                                       ^^^ keyword.other.storage.new.java
//                                           ^^^ storage.type.class.java
//                                              ^^ punctuation.definition.generic.diamond.java
//                                                 ^ keyword.operator.ternary.java
//                                                   ^^^ keyword.other.storage.new.java
//                                                       ^^^ storage.type.class.java
//                                                          ^ punctuation.section.brackets.begin.java
//                                                           ^ punctuation.section.brackets.end.java
//                                                            ^ punctuation.section.group.end.java
//                                                              ^^^^ variable.function.java
//                                                                  ^ punctuation.section.group.begin.java
//                                                                   ^^^^ variable.other.java
//                                                                       ^ punctuation.section.group.end.java
//                                                                        ^ punctuation.terminator.java

    for (private @Anno var iter : cond ? new Foo<> : new Bar[]) echo(iter);
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.group.java
//                                       ^^^^^^^^^^ meta.instantiation.java
//                                                 ^^ - meta.instantiation
//                                                   ^^^^^^^^^ meta.instantiation.java
//                                                              ^^^^^^^^^^ meta.for.java
//                                                                        ^ - meta.for
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.group.begin.java
//       ^^^^^^^ invalid.illegal.unexpected-keyword.java
//               ^^^^^ meta.annotation.identifier.java
//                     ^^^ storage.type.variant.java
//                         ^^^^ variable.other.java
//                              ^ keyword.operator.assignment.java
//                                ^^^^ variable.other.java
//                                     ^ keyword.operator.ternary.java
//                                       ^^^ keyword.other.storage.new.java
//                                           ^^^ storage.type.class.java
//                                              ^^ punctuation.definition.generic.diamond.java
//                                                 ^ keyword.operator.ternary.java
//                                                   ^^^ keyword.other.storage.new.java
//                                                       ^^^ storage.type.class.java
//                                                          ^ punctuation.section.brackets.begin.java
//                                                           ^ punctuation.section.brackets.end.java
//                                                            ^ punctuation.section.group.end.java
//                                                              ^^^^ variable.function.java
//                                                                  ^ punctuation.section.group.begin.java
//                                                                   ^^^^ variable.other.java
//                                                                       ^ punctuation.section.group.end.java
//                                                                        ^ punctuation.terminator.java

  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Break Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.15
 *****************************************************************************/

class BreakStatementTests {

  void run() {

    label:
//  ^^^^^ entity.name.label.java
//       ^ punctuation.separator.colon.java

    break$ ;
//  ^^^^^^ variable.other.java - keyword

    $break ;
//  ^^^^^^ variable.other.java - keyword

    break
// ^ - meta.break
//  ^^^^^^ meta.break.java
//  ^^^^^ keyword.control.flow.break.java

    break ;
// ^^^^^^^ meta.break.java
//        ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^ punctuation.terminator.java

    break label;
// ^ - meta.break
//  ^^^^^^^^^^^ meta.break.java
//             ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^^^^^ variable.label.java
//             ^ punctuation.terminator.java

    break
// ^ - meta.break
//  ^^^^^^ meta.break.java
//  ^^^^^ keyword.control.flow.break.java
        label
//     ^^^^^^^ meta.break.java
//      ^^^^^ variable.label.java
        ;
//     ^ meta.break.java
//      ^ - meta.break
//      ^ punctuation.terminator.java

    break str + 5;
// ^ - meta.break
//  ^^^^^^^^^^^^^ meta.break.java
//               ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^^^ variable.label.java
//            ^ invalid.illegal.expect-terminator.java
//              ^ invalid.illegal.expect-terminator.java
//               ^ punctuation.terminator.java

    break 5 + 5;
// ^ - meta.break
//  ^^^^^^^^^^^ meta.break.java
//             ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^ invalid.illegal.expect-terminator.java
//          ^ invalid.illegal.expect-terminator.java
//            ^ invalid.illegal.expect-terminator.java
//             ^ punctuation.terminator.java

    goto label;
//  ^^^^ invalid.illegal
//       ^^^^^ variable.other.java
  }
}


/******************************************************************************
 * Continue Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.16
 *****************************************************************************/

class ContinueStatementTests {

  void run() {

    label:
//  ^^^^^ entity.name.label.java
//       ^ punctuation.separator.colon.java

    continue$ ;
//  ^^^^^^^^^ variable.other.java - keyword

    $continue ;
//  ^^^^^^^^^ variable.other.java - keyword

    continue
// ^ - meta.continue
//  ^^^^^^^^^ meta.continue.java
//  ^^^^^^^^ keyword.control.flow.continue.java

    continue ;
// ^^^^^^^^^^ meta.continue.java
//           ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^ punctuation.terminator.java

    continue label;
// ^ - meta.continue
//  ^^^^^^^^^^^^^^ meta.continue.java
//                ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^^^^^ variable.label.java
//                ^ punctuation.terminator.java

    continue
// ^ - meta.continue
//  ^^^^^^^^^ meta.continue.java
//  ^^^^^^^^ keyword.control.flow.continue.java
        label
//     ^^^^^^^ meta.continue.java
//      ^^^^^ variable.label.java
        ;
//     ^ meta.continue.java
//      ^ - meta.continue
//      ^ punctuation.terminator.java

    continue str + 5;
// ^ - meta.continue
//  ^^^^^^^^^^^^^^^^ meta.continue.java
//                  ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^^^ variable.label.java
//               ^ invalid.illegal.expect-terminator.java
//                 ^ invalid.illegal.expect-terminator.java
//                  ^ punctuation.terminator.java

    continue 5 + 5;
// ^ - meta.continue
//  ^^^^^^^^^^^^^^ meta.continue.java
//                ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^ invalid.illegal.expect-terminator.java
//             ^ invalid.illegal.expect-terminator.java
//               ^ invalid.illegal.expect-terminator.java
//                ^ punctuation.terminator.java
  }
}


/******************************************************************************
 * Return Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.17
 *****************************************************************************/

class ReturnStatementTests {

  void run() {

    return$ ;
//  ^^^^^^^ variable.other.java - keyword

    $return ;
//  ^^^^^^^ variable.other.java - keyword

    return
// ^ - meta.return - keyword
//  ^^^^^^^ meta.return.java
//  ^^^^^^ keyword.control.flow.return.java

    return;
// ^^^^^^^ meta.return.java
//        ^ - meta.return
//  ^^^^^^ keyword.control.flow.return.java
//        ^ punctuation.terminator.java

    return variable
// ^ - meta.return - keyword
//  ^^^^^^^^^^^^^^^^ meta.return.java
//  ^^^^^^ keyword.control.flow.return.java
//         ^^^^^^^^ variable.other.java

    return variable + func(10);
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.return.java
//                            ^ - meta.return
//  ^^^^^^ keyword.control.flow.return.java
//         ^^^^^^^^ variable.other.java
//                  ^ keyword.operator.arithmetic.java
//                    ^^^^ variable.function.java
//                        ^ punctuation.section.group.begin.java
//                         ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                           ^ punctuation.section.group.end.java
//                            ^ punctuation.terminator.java

    return
// ^ - meta.return - keyword
//  ^^^^^^^ meta.return.java
//  ^^^^^^ keyword.control.flow.return.java
        variable
//     ^^^^^^^^^^ meta.return.java
//      ^^^^^^^^ variable.other.java
        +
//     ^^^ meta.return.java
//      ^ keyword.operator.arithmetic.java
        func
//     ^^^^^^ meta.return.java
//      ^^^^ variable.function.java
        (
//     ^^^ meta.return.java
//      ^ punctuation.section.group.begin.java
            10
//         ^^^^ meta.return.java
//          ^^ meta.number.integer.decimal.java constant.numeric.value.java
        )
//     ^^^ meta.return.java
//      ^ punctuation.section.group.end.java
        ;
//     ^ meta.return.java
//      ^ - meta.return
//      ^ punctuation.terminator.java

    return new MyClass();
// ^ - meta.return - keyword
//  ^^^^^^^^^^^^^^^^^^^^ meta.return.java
//                      ^ - meta.return
//  ^^^^^^ keyword.control.flow.return.java
//         ^^^ keyword.other.storage.new.java
//             ^^^^^^^ storage.type.class.java
//                    ^ punctuation.section.group.begin.java
//                     ^ punctuation.section.group.end.java
//                      ^ punctuation.terminator.java

    return (a, int b) -> a + b;
// ^ - meta.return - keyword
//  ^^^^^^^ meta.return.java - meta.function.anonymous - meta.group
//         ^^^^^^^^^^ meta.return.java meta.function.anonymous.parameters.java meta.group.java
//                   ^^^^^^^^^ meta.return.java meta.function.anonymous.java - meta.group
//  ^^^^^^ keyword.control.flow.return.java
//         ^ punctuation.section.group.begin.java
//          ^ variable.parameter.java
//           ^ punctuation.separator.comma.java
//             ^^^ storage.type.primitive.java
//                 ^ variable.parameter.java
//                  ^ punctuation.section.group.end.java
//                    ^^ keyword.declaration.function.arrow.java
//                       ^ variable.other.java
//                         ^ keyword.operator.arithmetic.java
//                           ^ variable.other.java
//                            ^ punctuation.terminator.java
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}


/******************************************************************************
 * Throw Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.18
 *****************************************************************************/

class ThrowStatementTests {

  void run() {

    throw$ ;
//  ^^^^^^ variable.other.java - keyword

    $throw ;
//  ^^^^^^ variable.other.java - keyword

    throw
// ^ - meta.throw - keyword
//  ^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java

    throw;
// ^^^^^^ meta.throw.java
//       ^ - meta.throw
//  ^^^^^ keyword.control.flow.throw.java
//       ^ punctuation.terminator.java

    throw variable
// ^ - meta.throw - keyword
//  ^^^^^^^^^^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java
//        ^^^^^^^^ variable.other.java

    throw variable + func(10);
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.throw.java
//                           ^ - meta.throw
//  ^^^^^ keyword.control.flow.throw.java
//        ^^^^^^^^ variable.other.java
//                 ^ keyword.operator.arithmetic.java
//                   ^^^^ variable.function.java
//                       ^ punctuation.section.group.begin.java
//                        ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                          ^ punctuation.section.group.end.java
//                           ^ punctuation.terminator.java

    throw
// ^ - meta.throw - keyword
//  ^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java
        variable
//     ^^^^^^^^^^ meta.throw.java
//      ^^^^^^^^ variable.other.java
        +
//     ^^^ meta.throw.java
//      ^ keyword.operator.arithmetic.java
        func
//     ^^^^^^ meta.throw.java
//      ^^^^ variable.function.java
        (
//     ^^^ meta.throw.java
//      ^ punctuation.section.group.begin.java
            10
//         ^^^^ meta.throw.java
//          ^^ meta.number.integer.decimal.java constant.numeric.value.java
        )
//     ^^^ meta.throw.java
//      ^ punctuation.section.group.end.java
        ;
//     ^ meta.throw.java
//      ^ - meta.throw
//      ^ punctuation.terminator.java

    throw new MyClass();
// ^ - meta.throw - keyword
//  ^^^^^^^^^^^^^^^^^^^ meta.throw.java
//                     ^ - meta.throw
//  ^^^^^ keyword.control.flow.throw.java
//        ^^^ keyword.other.storage.new.java
//            ^^^^^^^ storage.type.class.java
//                   ^ punctuation.section.group.begin.java
//                    ^ punctuation.section.group.end.java
//                     ^ punctuation.terminator.java

    throw (a, int b) -> a + b;
// ^ - meta.throw - keyword
//  ^^^^^^ meta.throw.java - meta.function.anonymous - meta.group
//        ^^^^^^^^^^ meta.throw.java meta.function.anonymous.parameters.java meta.group.java
//                  ^^^^^^^^^ meta.throw.java meta.function.anonymous.java - meta.group
//  ^^^^^ keyword.control.flow.throw.java
//        ^ punctuation.section.group.begin.java
//         ^ variable.parameter.java
//          ^ punctuation.separator.comma.java
//            ^^^ storage.type.primitive.java
//                ^ variable.parameter.java
//                 ^ punctuation.section.group.end.java
//                   ^^ keyword.declaration.function.arrow.java
//                      ^ variable.other.java
//                        ^ keyword.operator.arithmetic.java
//                          ^ variable.other.java
//                           ^ punctuation.terminator.java
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}


/******************************************************************************
 * Synchronized Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.19
 *****************************************************************************/

class SynchronizedStatementTests {


  synchronized$ ;
//^^^^^^^^^^^^^ meta.field.type.java storage.type.class.java - keyword

  $synchronized ;
//^^^^^^^^^^^^^ meta.field.type.java storage.type.class.java - keyword

  synchronized
//^^^^^^^^^^^^^ meta.function.modifier.java
//^^^^^^^^^^^^ storage.modifier.java

  synchronized void synchronizedMethod() {
//^^^^^^^^^^^^^ meta.function.modifier.java
//             ^^^^^ meta.function.return-type.java
//                  ^^^^^^^^^^^^^^^^^^ meta.function.identifier.java
//                                    ^^ meta.function.parameters.java meta.group.java
//                                      ^ meta.function.java
//                                       ^^ meta.function.java meta.block.java
//^^^^^^^^^^^^ storage.modifier.java
//             ^^^^ storage.type.void.java
//                  ^^^^^^^^^^^^^^^^^^ entity.name.function.java
//                                    ^ punctuation.section.group.begin.java
//                                     ^ punctuation.section.group.end.java
//                                       ^ punctuation.section.block.begin.java

    synchronized$ ;
//  ^^^^^^^^^^^^^ variable.other.java - keyword

    $synchronized ;
//  ^^^^^^^^^^^^^ variable.other.java - keyword

    synchronized
// ^ - meta.synchronized - keyword
//  ^^^^^^^^^^^^^ meta.synchronized.java
//  ^^^^^^^^^^^^ keyword.control.flow.synchronized.java
//              ^ - keyword

    synchronized ()  ;
//^^^^^^^^^^^^^^^^^^^ meta.synchronized.java
//               ^^ meta.group.java
//                   ^ - meta.synchronized
// ^ - keyword
//  ^^^^^^^^^^^^ keyword.control.flow.synchronized.java
//              ^ - keyword
//               ^ punctuation.section.group.begin.java
//                ^ punctuation.section.group.end.java
//                   ^ punctuation.terminator.java

    synchronized () {}
// ^ - meta.synchronized
//  ^^^^^^^^^^^^^^^^^^ meta.synchronized.java
//               ^^ meta.group.java
//                  ^^ meta.block.java
//                    ^ - meta.synchronized
// ^ - keyword
//  ^^^^^^^^^^^^ keyword.control.flow.synchronized.java
//              ^ - keyword
//               ^ punctuation.section.group.begin.java
//                ^ punctuation.section.group.end.java
//                  ^ punctuation.section.block.begin.java
//                   ^ punctuation.section.block.end.java
  }
}


/******************************************************************************
 * Try Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.20
 *****************************************************************************/

class TryStatementTests {

  void testTry() {

    try$ ;
//  ^^^^ variable.other.java - keyword

    $try ;
//  ^^^^ variable.other.java - keyword

    try
//  ^^^^ meta.try.java
//  ^^^ keyword.control.exception.try.java
  }

  void testCatch() {

    catch$ ;
//  ^^^^^^ variable.other.java - keyword

    $catch ;
//  ^^^^^^ variable.other.java - keyword

    catch
//  ^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java

    catch (int e)
//  ^^^^^^^^^^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java
//        ^ punctuation.section.group.begin.java
//         ^^^ invalid.illegal.unexpected-keyword.java
//             ^ variable.parameter.java
//              ^ punctuation.section.group.end.java

    catch (int[] e)
//  ^^^^^^^^^^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java
//        ^ punctuation.section.group.begin.java
//         ^^^ invalid.illegal.unexpected-keyword.java
//            ^^ invalid.illegal.unexpected-modifier.java
//               ^ variable.parameter.java
//                ^ punctuation.section.group.end.java

    catch (foo[] e)
//  ^^^^^^^^^^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java
//        ^ punctuation.section.group.begin.java
//         ^^^ storage.type.class.java
//            ^^ invalid.illegal.unexpected-modifier.java
//               ^ variable.parameter.java
//                ^ punctuation.section.group.end.java

    catch (foo[] | bar[] | int e)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java
//        ^ punctuation.section.group.begin.java
//         ^^^ storage.type.class.java
//            ^^ invalid.illegal.unexpected-modifier.java
//               ^ punctuation.separator.pipe.java
//                 ^^^ storage.type.class.java
//                    ^^ invalid.illegal.unexpected-modifier.java
//                       ^ punctuation.separator.pipe.java
//                         ^^^ invalid.illegal.unexpected-keyword.java
//                             ^ variable.parameter.java
//                              ^ punctuation.section.group.end.java

    catch (5 + 10)
//  ^^^^^^^^^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java
//        ^ punctuation.section.group.begin.java
//         ^ invalid.illegal.unexpected-token.java
//           ^ invalid.illegal.unexpected-token.java
//             ^^ invalid.illegal.unexpected-token.java
//               ^ punctuation.section.group.end.java
  }

  void testFinally() {

    finally$ ;
//  ^^^^^^^^ variable.other.java - keyword

    $finally ;
//  ^^^^^^^^ variable.other.java - keyword

    finally
//  ^^^^^^^^ meta.finally.java
//  ^^^^^^^ keyword.control.exception.finally.java
  }

  void testSimleTryCatchFinally() {

    // ensure not to break highlighting even though braces are missing
    try foo() catch (Exception e) bar(e) finally baz()
//  ^^^^^^^^^^ meta.try.java - meta.try meta.try - meta.catch - meta.finally
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.catch meta.catch - meta.finally - meta.try
//            ^^^^^^ meta.catch.java - meta.group
//                  ^^^^^^^^^^^^^ meta.catch.java meta.group.java
//                               ^^^^ meta.catch.java - meta.group
//                                   ^^^ meta.catch.java meta.group.java
//                                      ^ meta.catch.java - meta.group
//                                       ^^^^^^^^^^^^^ meta.finally.java - meta.finally meta.finally - meta.catch - meta.try
//  ^^^ keyword.control.exception.try.java
//      ^^^ variable.function.java
//            ^^^^^ keyword.control.exception.catch.java
//                                ^^^ variable.function.java
//                                       ^^^^^^^ keyword.control.exception.finally.java
//                                               ^^^ variable.function.java

    try { foo(); } catch (Exception e) { bar(e); } finally { baz(); }
//  ^^^^ meta.try.java - meta.try meta.block - meta.try meta.try
//      ^^^^^^^^^^ meta.try.java meta.block.java - meta.try meta.try
//                 ^^^^^^ meta.catch.java - meta.catch meta.catch
//                       ^^^^^^^^^^^^^ meta.catch.java meta.group.java - meta.catch meta.catch
//                                    ^ meta.catch.java - meta.catch meta.catch
//                                     ^^^^^^^^^^^ meta.catch.java meta.block.java - meta.catch meta.catch
//                                                 ^^^^^^^^ meta.finally.java - meta.finally meta.finally
//                                                         ^^^^^^^^^^ meta.finally.java meta.block.java - meta.finally meta.finally
//  ^^^ keyword.control.exception.try.java
//        ^^^ variable.function.java
//                 ^^^^^ keyword.control.exception.catch.java
//                       ^ punctuation.section.group.begin.java
//                        ^^^^^^^^^ storage.type.class.java
//                                  ^ variable.parameter.java
//                                   ^ punctuation.section.group.end.java
//                                     ^ punctuation.section.block.begin.java
//                                       ^^^ variable.function.java
//                                               ^ punctuation.section.block.end.java
//                                                 ^^^^^^^ keyword.control.exception.finally.java
//                                                         ^ punctuation.section.block.begin.java
//                                                           ^^^ variable.function.java
//                                                                  ^ punctuation.section.block.end.java

    try {
//  ^^^^ meta.block.java meta.try.java
//      ^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.block.begin.java
      foo();
    } catch (Exception e) {
//  ^ meta.try.java meta.block.java
//   ^ - meta.try - meta.catch - meta.finally
//    ^^^^^^ meta.catch.java - meta.catch meta.catch
//          ^^^^^^^^^^^^^ meta.catch.java meta.group.java - meta.catch meta.catch
//                       ^ meta.catch.java - meta.catch meta.catch
//                        ^^ meta.catch.java meta.block.java - meta.catch meta.catch
//  ^ punctuation.section.block.end.java
//    ^^^^^ keyword.control.exception.catch.java
//          ^ punctuation.section.group.begin.java
//           ^^^^^^^^^ storage.type.class.java
//                     ^ variable.parameter.java
//                      ^ punctuation.section.group.end.java
//                        ^ punctuation.section.block.begin.java
      bar(e);
    } finally {
//  ^ meta.catch.java meta.block.java
//   ^ - meta.try - meta.catch - meta.finally
//    ^^^^^^^^ meta.finally.java - meta.finally meta.finally
//            ^^ meta.finally.java meta.block.java - meta.finally meta.finally
//  ^ punctuation.section.block.end.java
//    ^^^^^^^ keyword.control.exception.finally.java
//            ^ punctuation.section.block.begin.java
      baz();
    }
//  ^ meta.finally.java meta.block.java punctuation.section.block.end.java
//   ^ - meta.try - meta.catch - meta.finally
  }

  void testTryCatchFinallyWithResource() {

    try (, , = , = null ; , =) {} catch ( | | ) {}
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                            ^ meta.try.java - meta.try meta.try - meta.group
//                             ^^ meta.try.java meta.block.java
//                               ^ - meta.try
//                                ^^^^^^ meta.catch.java - meta.catch meta.group
//                                      ^^^^^^^ meta.catch.java meta.group.java
//                                             ^ meta.catch.java - meta.catch meta.group - meta.catch meta.block
//                                              ^^ meta.catch.java meta.block.java
//                                                ^ - meta.catch
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.group.begin.java
//       ^ punctuation.separator.comma.java
//         ^ punctuation.separator.comma.java
//           ^ keyword.operator.assignment.java
//             ^ punctuation.separator.comma.java
//               ^ keyword.operator.assignment.java
//                 ^^^^ constant.language.null.java
//                      ^ punctuation.terminator.java
//                        ^ punctuation.separator.comma.java
//                          ^ keyword.operator.assignment.java
//                           ^ punctuation.section.group.end.java
//                             ^ punctuation.section.block.begin.java
//                              ^ punctuation.section.block.end.java
//                                ^^^^^ keyword.control.exception.catch.java
//                                      ^ punctuation.section.group.begin.java
//                                        ^ punctuation.separator.pipe.java
//                                          ^ punctuation.separator.pipe.java
//                                            ^ punctuation.section.group.end.java
//                                              ^ punctuation.section.block.begin.java
//                                               ^ punctuation.section.block.end.java

    try (foo = Bar.baz(path)) {}
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                           ^ meta.try.java - meta.try meta.try - meta.group
//                            ^^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.group.begin.java
//       ^^^ variable.other.java
//           ^ keyword.operator.assignment.java
//             ^^^ storage.type.class.java
//                ^ punctuation.accessor.dot.java
//                 ^^^ variable.function.java
//                    ^ punctuation.section.group.begin.java
//                     ^^^^ variable.other.java
//                         ^^ punctuation.section.group.end.java
//                            ^ punctuation.section.block.begin.java
//                             ^ punctuation.section.block.end.java

    try (foo[], []) {}
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                 ^ meta.try.java - meta.try meta.try - meta.group
//                  ^^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.group.begin.java
//       ^^^ variable.other.java
//          ^^ storage.modifier.array.java
//            ^ punctuation.separator.comma.java
//              ^^ storage.modifier.array.java
//                ^ punctuation.section.group.end.java
//                  ^ punctuation.section.block.begin.java
//                   ^ punctuation.section.block.end.java

    try (foo[] bar[], []) {}
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                       ^ meta.try.java - meta.try meta.try - meta.group
//                        ^^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.group.begin.java
//       ^^^ storage.type.class.java
//          ^^ storage.modifier.array.java
//             ^^^ variable.other.java
//                ^^ storage.modifier.array.java
//                  ^ punctuation.separator.comma.java
//                    ^^ storage.modifier.array.java
//                      ^ punctuation.section.group.end.java
//                        ^ punctuation.section.block.begin.java
//                         ^ punctuation.section.block.end.java

    try (Stream<String> lines = Files.lines(path)) {
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                                                ^ meta.try.java - meta.try meta.try - meta.group
//                                                 ^^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.group.begin.java
//       ^^^^^^ storage.type.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^^^^^^ storage.type.class.java
//                    ^ punctuation.definition.generic.end.java
//                      ^^^^^ variable.other.java
//                            ^ keyword.operator.assignment.java
//                              ^^^^^ storage.type.class.java
//                                   ^ punctuation.accessor.dot.java
//                                    ^^^^^ variable.function.java
//                                         ^ punctuation.section.group.begin.java
//                                          ^^^^ variable.other.java
//                                              ^^ punctuation.section.group.end.java
//                                                 ^ punctuation.section.block.begin.java

    } catch (IOException ignore) {
//^^^ meta.try.java meta.block.java
//   ^ - meta.try - meta.catch
//    ^^^^^^ meta.catch.java - meta.catch meta.catch
//          ^^^^^^^^^^^^^^^^^^^^ meta.catch.java meta.group.java - meta.catch meta.catch
//                              ^ meta.catch.java - meta.catch meta.catch
//                               ^^ meta.catch.java meta.block.java
//  ^ punctuation.section.block.end.java
//    ^^^^^ keyword.control.exception.catch.java
//          ^ punctuation.section.group.begin.java
//           ^^^^^^^^^^^ storage.type.class.java
//                       ^^^^^^ variable.parameter.java
//                             ^ punctuation.section.group.end.java
//                               ^ punctuation.section.block.begin.java
    } catch (final MyException | com.net.org.Foo.Bar |
//^^^ meta.catch.java meta.block.java
//   ^ - meta.catch
//    ^^^^^^ meta.catch.java - meta.catch meta.catch
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch.java meta.group.java - meta.catch meta.catch
//    ^^^^^ keyword.control.exception.catch.java
//          ^ punctuation.section.group.begin
//           ^^^^^ storage.modifier.java
//                 ^^^^^^^^^^^ storage.type.class
//                             ^ punctuation.separator.pipe.java
//                               ^^^ variable.namespace.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^^^ variable.namespace.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^ variable.namespace.java
//                                          ^ punctuation.accessor.dot.java
//                                           ^^^ storage.type.class.java
//                                              ^ punctuation.accessor.dot.java
//                                               ^^^ storage.type.class.java
//                                                   ^ punctuation.separator.pipe.java
          YourException
//       ^^^^^^^^^^^^^^^ meta.catch.java meta.group.java - meta.catch meta.catch
//        ^^^^^^^^^^^^^ storage.type.class.java
          ignore) {}
//       ^^^^^^^ meta.catch.java meta.group.java - meta.catch meta.catch
//               ^ meta.catch.java - meta.catch meta.catch
//                ^^ meta.catch.java meta.block.java
//        ^^^^^^ variable.parameter.java
//              ^ punctuation.section.group.end.java
//                ^ punctuation.section.block.begin.java
//                 ^ punctuation.section.block.end.java

    try (final InputStream is = new FileInputStream(args[0]);
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.group.begin.java
//       ^^^^^ storage.modifier.java
//             ^^^^^^^^^^^ storage.type.class.java
//                         ^^ variable.other.java
//                            ^ keyword.operator.assignment.java
//                              ^^^ keyword.other.storage.new.java
//                                  ^^^^^^^^^^^^^^^ storage.type.class.java
//                                                 ^ punctuation.section.group.begin.java
//                                                  ^^^^ variable.other.java
//                                                      ^ punctuation.section.brackets.begin.java
//                                                       ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                        ^ punctuation.section.brackets.end.java
//                                                         ^ punctuation.section.group.end.java
//                                                          ^ punctuation.terminator.java
         final OutputStream os = new FileOutputStream(args[1])) {
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                                                             ^ meta.try.java - meta.try meta.try - meta.group
//                                                              ^^ meta.try.java meta.block.java
//       ^^^^^ storage.modifier.java
//             ^^^^^^^^^^^^ storage.type.class.java
//                          ^^ variable.other.java
//                             ^ keyword.operator.assignment.java
//                               ^^^ keyword.other.storage.new.java
//                                   ^^^^^^^^^^^^^^^^ storage.type.class.java
//                                                   ^ punctuation.section.group.begin.java
//                                                    ^^^^ variable.other.java
//                                                        ^ punctuation.section.brackets.begin.java
//                                                         ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                          ^ punctuation.section.brackets.end.java
//                                                           ^^ punctuation.section.group.end.java
//                                                              ^ punctuation.section.block.begin.java
    }
//  ^ meta.try.java meta.block.java punctuation.section.block.end.java
//   ^ - meta.try

    try (var in = new BufferedReader()) {
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.group.java - meta.try meta.try
//                                     ^ meta.try.java - meta.try meta.try - meta.group
//                                      ^^ meta.try.java meta.block.java
//       ^^^ storage.type.variant.java
//           ^^ variable.other.java
//              ^ keyword.operator.assignment.java
//                ^^^ keyword.other.storage.new.java
//                    ^^^^^^^^^^^^^^ storage.type.class.java
        var line = in.readLine();
//      ^^^ storage.type.variant.java
//          ^^^^ variable.other.java
//               ^ keyword.operator.assignment.java
    }
//  ^ meta.try.java meta.block.java punctuation.section.block.end.java
//   ^ - meta.try
  }
}


/******************************************************************************
 * Method Invocation Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.2
 *****************************************************************************/

class MethodInvocationExpressionsTests {

  void invokeMethods() {

     Foo();
//   ^^^ - variable.function.java

     foo( ;
//   ^^^ meta.function-call.identifier.java
//      ^^ meta.function-call.arguments.java meta.group.java
//   ^^^ variable.function.java
//      ^ punctuation.section.group.begin.java
//        ^ punctuation.terminator.java

     foo();
//   ^^^ meta.function-call.identifier.java
//      ^^ meta.function-call.arguments.java meta.group.java
//   ^^^ variable.function.java
//      ^ punctuation.section.group.begin.java
//       ^ punctuation.section.group.end.java
//        ^ punctuation.terminator.java

     foo ();
//   ^^^^ meta.function-call.identifier.java
//       ^^ meta.function-call.arguments.java meta.group.java
//   ^^^ variable.function.java
//       ^ punctuation.section.group.begin.java
//        ^ punctuation.section.group.end.java
//         ^ punctuation.terminator.java

     foo
//   ^^^^ meta.function-call.identifier.java
//   ^^^ variable.function.java
     () ;
//^^^ meta.function-call.identifier.java
//   ^^ meta.function-call.arguments.java meta.group.java
//   ^ punctuation.section.group.begin.java
//    ^ punctuation.section.group.end.java
//      ^ punctuation.terminator.java

     object.foo();
//   ^^^^^^ variable.other.java
//         ^ punctuation.accessor.dot.java
//          ^^^ meta.function-call.identifier.java
//             ^^ meta.function-call.arguments.java meta.group.java
//          ^^^ variable.function.java
//             ^ punctuation.section.group.begin.java
//              ^ punctuation.section.group.end.java
//               ^ punctuation.terminator.java

     super.foo();
//   ^^^^^ variable.language.super.java
//        ^ punctuation.accessor.dot.java
//         ^^^ meta.function-call.identifier.java
//            ^^ meta.function-call.arguments.java meta.group.java
//         ^^^ variable.function.java
//            ^ punctuation.section.group.begin.java
//             ^ punctuation.section.group.end.java
//              ^ punctuation.terminator.java

     super.<A>foo();
//   ^^^^^ variable.language.super.java
//        ^ punctuation.accessor.dot.java
//         ^^^ meta.generic.java
//         ^ punctuation.definition.generic.begin.java
//          ^ storage.type.class.java
//           ^ punctuation.definition.generic.end.java
//            ^^^ meta.function-call.identifier.java
//               ^^ meta.function-call.arguments.java meta.group.java
//            ^^^ variable.function.java
//               ^ punctuation.section.group.begin.java
//                ^ punctuation.section.group.end.java
//                 ^ punctuation.terminator.java

     this.foo();
//   ^^^^ variable.language.this.java
//       ^ punctuation.accessor.dot.java
//        ^^^ meta.function-call.identifier.java
//           ^^ meta.function-call.arguments.java meta.group.java
//        ^^^ variable.function.java
//           ^ punctuation.section.group.begin.java
//            ^ punctuation.section.group.end.java
//             ^ punctuation.terminator.java

     this.<A>foo();
//   ^^^^ variable.language.this.java
//       ^ punctuation.accessor.dot.java
//        ^^^ meta.generic.java
//        ^ punctuation.definition.generic.begin.java
//         ^ storage.type.class.java
//          ^ punctuation.definition.generic.end.java
//           ^^^ meta.function-call.identifier.java
//              ^^ meta.function-call.arguments.java meta.group.java
//           ^^^ variable.function.java
//              ^ punctuation.section.group.begin.java
//               ^ punctuation.section.group.end.java
//                ^ punctuation.terminator.java

     this.<B> foo();
//   ^^^^ variable.language.this.java
//       ^ punctuation.accessor.dot.java
//        ^^^ meta.generic.java
//        ^ punctuation.definition.generic.begin.java
//         ^ storage.type.class.java
//          ^ punctuation.definition.generic.end.java
//            ^^^ meta.function-call.identifier.java
//               ^^ meta.function-call.arguments.java meta.group.java
//            ^^^ variable.function.java
//               ^ punctuation.section.group.begin.java
//                ^ punctuation.section.group.end.java
//                 ^ punctuation.terminator.java

     ( foo ).bar();
//   ^^^^^^^ meta.group.java
//          ^^^^ - meta.group
//           ^^^ meta.function-call.identifier.java
//              ^^ meta.function-call.arguments.java meta.group.java
//                ^ - meta.function-call - meta.group
//          ^ punctuation.accessor.dot.java
//           ^^^ variable.function.java
//              ^ punctuation.section.group.begin.java
//               ^ punctuation.section.group.end.java
//                ^ punctuation.terminator.java

     ( foo .bar();
//   ^^^^^^^^^^^^ meta.group.java
//          ^^^ meta.function-call.identifier.java
//             ^^ meta.function-call.arguments.java
//               ^ - meta.function-call - meta.group
//         ^ punctuation.accessor.dot.java
//          ^^^ variable.function.java
//             ^ punctuation.section.group.begin.java
//              ^ punctuation.section.group.end.java
//               ^ punctuation.terminator.java

    foo.bar(hello(world);
//         ^^^^^^ meta.group.java - meta.group meta.group
//               ^^^^^^^ meta.group.java meta.group.java
//      ^^^ meta.function-call.identifier.java - meta.function-call meta.function-call
//         ^ meta.function-call.arguments.java - meta.function-call meta.function-call
//          ^^^^^ meta.function-call.arguments.java meta.function-call.identifier.java
//               ^^^^^^^ meta.function-call.arguments.java meta.function-call.arguments.java
//                      ^ - meta.function-call - meta.group
//     ^ punctuation.accessor.dot.java
//      ^^^ variable.function.java
//         ^ punctuation.section.group.begin.java
//          ^^^^^ variable.function.java
//               ^ punctuation.section.group.begin.java
//                ^^^^^ variable.other.java
//                     ^ punctuation.section.group.end.java
//                      ^ punctuation.terminator.java

    some.other.path.
//  ^^^^^^^^^^^^^^^^ meta.path.java
//  ^^^^ variable.namespace.java
//      ^ punctuation.accessor.dot.java
//       ^^^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^^ variable.namespace.java
//                 ^ punctuation.accessor.dot.java
        foo.MyClass.staticMethod(true);
//      ^^^^^^^^^^^ meta.path.java
//                  ^^^^^^^^^^^^ meta.function-call.identifier.java
//                              ^^^^^^ meta.function-call.arguments.java meta.group.java
//      ^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^^^ storage.type.class.java
//                 ^ punctuation.accessor.dot.java
//                  ^^^^^^^^^^^^ variable.function.java
//                              ^ punctuation.section.group.begin.java
//                               ^^^^ constant.language.boolean.true.java
//                                   ^ punctuation.section.group.end.java
//                                    ^ punctuation.terminator.java

    some.other.path
//  ^^^^^^^^^^^^^^^^ meta.path.java
//  ^^^^ variable.namespace.java
//      ^ punctuation.accessor.dot.java
//       ^^^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^^ variable.namespace.java
        .foo.MyClass.staticMethod(true);
//      ^^^^^^^^^^^^ meta.path.java
//                   ^^^^^^^^^^^^ meta.function-call.identifier.java
//                               ^^^^^^ meta.function-call.arguments.java meta.group.java
//      ^ punctuation.accessor.dot.java
//       ^^^ variable.namespace.java
//          ^ punctuation.accessor.dot.java
//           ^^^^^^^ storage.type.class.java
//                  ^ punctuation.accessor.dot.java
//                   ^^^^^^^^^^^^ variable.function.java
//                               ^ punctuation.section.group.begin.java
//                                ^^^^ constant.language.boolean.true.java
//                                    ^ punctuation.section.group.end.java
//                                     ^ punctuation.terminator.java
  }
//^ meta.function.java punctuation.section.block.end.java
}
// <- punctuation.section.block.end.java


/******************************************************************************
 * Instance Creation Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.9
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.10
 *****************************************************************************/

class InstanceCreationExpressionsTests {

  @SyntaxTest
  public void instantiateClassesObjects() {

    new$ ;
//  ^^^^ variable.other.java - keyword

    $new ;
//  ^^^^ variable.other.java - keyword

    new TestClass ;
//  ^^^^^^^^^^^^^^ meta.instantiation.java
//                ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//                ^ punctuation.terminator.java

    new TestClass(
//  ^^^^^^^^^^^^^^^ meta.instantiation.java
//               ^^ meta.group.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//               ^ punctuation.section.group.begin.java

    new TestClass( ;
//  ^^^^^^^^^^^^^^^ meta.instantiation.java
//               ^^ meta.group.java
//                 ^^ - meta.instantiation - meta.group
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//               ^ punctuation.section.group.begin.java
//                 ^ punctuation.terminator.java

    new TestClass(foo ;
//  ^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//               ^^^^^ meta.group.java
//                    ^^ - meta.instantiation - meta.group
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//               ^ punctuation.section.group.begin.java
//                ^^^ variable.other.java
//                    ^ punctuation.terminator.java

    new TestClass(foo);
//  ^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//               ^^^^^ meta.group.java
//                    ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//               ^ punctuation.section.group.begin.java
//                ^^^ variable.other.java
//                   ^ punctuation.section.group.end.java
//                    ^ punctuation.terminator.java

    new testclass(foo);
//  ^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//               ^^^^^ meta.group.java
//                    ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//               ^ punctuation.section.group.begin.java
//                ^^^ variable.other.java
//                   ^ punctuation.section.group.end.java

    new @Foo TestClass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^ meta.annotation.identifier.java
//          ^^^^^^^^^^^^^^^ - meta.annotation
//                    ^^^^^ meta.group.java
//                         ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//       ^^^ variable.annotation.java
//           ^^^^^^^^^ storage.type.class.java
//                    ^ punctuation.section.group.begin.java
//                     ^^^ variable.other.java
//                        ^ punctuation.section.group.end.java

    new @foo testclass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^ meta.annotation.identifier.java
//          ^^^^^^^^^^^^^^^ - meta.annotation
//                    ^^^^^ meta.group.java
//                         ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//       ^^^ variable.annotation.java
//           ^^^^^^^^^ storage.type.class.java
//                    ^ punctuation.section.group.begin.java
//                     ^^^ variable.other.java
//                        ^ punctuation.section.group.end.java

    new com.java.TestClass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^^^^^^^^^^^^^^^ meta.path.java
//                             ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ variable.namespace.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^ storage.type.class.java
//                        ^^^^^ meta.group.java
//                        ^ punctuation.section.group.begin.java
//                         ^^^ variable.other.java
//                            ^ punctuation.section.group.end.java

    new com.java.testclass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^^^^^^^^^^^^^^^ meta.path.java
//                             ^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ variable.namespace.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^ storage.type.class.java
//                        ^^^^^ meta.group.java
//                        ^ punctuation.section.group.begin.java
//                         ^^^ variable.other.java
//                            ^ punctuation.section.group.end.java

    new OuterClass.InnerClass();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^^ storage.type.class.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^^^^ storage.type.class.java

    new @Foo com . @Foo java . @Foo OuterClass . @Foo InnerClass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^ meta.annotation.identifier.java
//          ^^^^^^^ - meta.annotation
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                 ^^^^ meta.annotation.identifier.java
//                     ^^^^^^^^ - meta.annotation
//                             ^^^^ meta.annotation.identifier.java
//                                 ^^^^^^^^^^^^^^ - meta.annotation
//                                               ^^^^ meta.annotation.identifier.java
//                                                   ^^^^^^^^^^^^^^^^ - meta.annotation
//  ^^^ keyword.other.storage.new.java
//      ^ punctuation.definition.annotation.java
//       ^^^ variable.annotation.java
//           ^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                 ^ punctuation.definition.annotation.java
//                  ^^^ variable.annotation.java
//                      ^^^^ variable.namespace.java
//                           ^ punctuation.accessor.dot.java
//                             ^ punctuation.definition.annotation.java
//                              ^^^ variable.annotation.java
//                                  ^^^^^^^^^^ storage.type.class.java
//                                             ^ punctuation.accessor.dot.java
//                                               ^ punctuation.definition.annotation.java
//                                                ^^^ variable.annotation.java
//                                                    ^^^^^^^^^^ storage.type.class.java
//                                                              ^^^^^ meta.group.java
//                                                              ^ punctuation.section.group.begin.java
//                                                               ^^^ variable.other.java
//                                                                  ^ punctuation.section.group.end.java

    new @foo com . @foo java . @foo outerclass . @foo innerclass(foo) { };
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java - meta.block meta.block meta.block
//                                                                    ^^^ meta.instantiation.java meta.class.java meta.block.java
//      ^^^^ meta.annotation.identifier.java
//          ^^^^^^^ - meta.annotation
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                 ^^^^ meta.annotation.identifier.java
//                     ^^^^^^^^ - meta.annotation
//                             ^^^^ meta.annotation.identifier.java
//                                 ^^^^^^^^^^^^^^ - meta.annotation
//                                               ^^^^ meta.annotation.identifier.java
//                                                   ^^^^^^^^^^^^^^^^ - meta.annotation
//  ^^^ keyword.other.storage.new.java
//      ^ punctuation.definition.annotation.java
//       ^^^ variable.annotation.java
//           ^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                 ^ punctuation.definition.annotation.java
//                  ^^^ variable.annotation.java
//                      ^^^^ variable.namespace.java
//                           ^ punctuation.accessor.dot.java
//                             ^ punctuation.definition.annotation.java
//                              ^^^ variable.annotation.java
//                                  ^^^^^^^^^^ variable.namespace.java
//                                             ^ punctuation.accessor.dot.java
//                                               ^ punctuation.definition.annotation.java
//                                                ^^^ variable.annotation.java
//                                                    ^^^^^^^^^^ storage.type.class.java
//                                                              ^^^^^ meta.group.java
//                                                              ^ punctuation.section.group.begin.java
//                                                               ^^^ variable.other.java
//                                                                  ^ punctuation.section.group.end.java
//                                                                    ^ punctuation.section.block.begin.java
//                                                                      ^ punctuation.section.block.end.java
//                                                                       ^ punctuation.terminator.java

    new SubClass(new SubClass[0], true);
//  ^^^^^^^^^^^^^ meta.instantiation.java - meta.instantiation meta.instantiation
//               ^^^^^^^^^^^^^^^ meta.instantiation.java meta.instantiation.java
//                              ^^^^^^^ meta.instantiation.java - meta.instantiation meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^ storage.type.class.java
//              ^ punctuation.section.group.begin.java
//               ^^^ keyword.other.storage.new.java
//                   ^^^^^^^^ storage.type.class.java
//                           ^^^ meta.brackets.java
//                              ^ punctuation.separator.comma.java
//                                ^^^^ constant.language.boolean.true.java
//                                    ^ punctuation.section.group.end.java
//                                     ^ punctuation.terminator.java

    new var();
//  ^^^^^^^^^ meta.instantiation.java
//  ^^^ keyword.other.storage.new.java
//      ^^^ invalid.illegal.unexpected-keyword.java
//         ^ punctuation.section.group.begin.java
//          ^ punctuation.section.group.end.java
//           ^ punctuation.terminator.java

    new static LocalClass() {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^ invalid.illegal.unexpected-keyword.java
//             ^^^^^^^^^^ storage.type.class.java
//                       ^ punctuation.section.group.begin.java
//                        ^ punctuation.section.group.end.java
//                          ^ punctuation.section.block.begin.java
//                           ^ punctuation.section.block.end.java
//                            ^ punctuation.terminator.java

    new class LocalClass() {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^ invalid.illegal.unexpected-keyword.java
//            ^^^^^^^^^^ storage.type.class.java
//                      ^ punctuation.section.group.begin.java
//                       ^ punctuation.section.group.end.java
//                         ^ punctuation.section.block.begin.java
//                          ^ punctuation.section.block.end.java
//                           ^ punctuation.terminator.java

    new if (foo == true) {};
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//  ^^^ keyword.other.storage.new.java
//      ^^ invalid.illegal.unexpected-keyword.java
//         ^ punctuation.section.group.begin.java
//          ^^^ variable.other.java
//              ^^ keyword.operator.comparison.java
//                 ^^^^ constant.language.boolean.true.java
//                     ^ punctuation.section.group.end.java
//                       ^ punctuation.section.block.begin.java
//                        ^ punctuation.section.block.end.java
//                         ^ punctuation.terminator.java
  }

  @SyntaxTest
  public void instantiatePrimitiveArrays() {

    new int[]{0, 0, 0};
// ^ - meta.instantiation
//  ^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//                    ^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^ storage.type.primitive.java
//         ^ punctuation.section.brackets.begin.java
//          ^ punctuation.section.brackets.end.java
//           ^ punctuation.section.braces.begin.java
//            ^ meta.number.integer.decimal.java constant.numeric.value.java
//             ^ punctuation.separator.comma.java
//               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.separator.comma.java
//                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                   ^ punctuation.section.braces.end.java

    new byte[size];
// ^ - meta.instantiation
//  ^^^^^^^^^^^^^^ meta.instantiation.java
//                ^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^ storage.type.primitive.java

    new int[][][] {
//  ^^^^^^^^^^^^^^ meta.instantiation.java - meta.braces
//                ^^ meta.instantiation.java meta.braces.java
//      ^^^ storage.type.primitive.java
//         ^ punctuation.section.brackets.begin.java
//          ^ punctuation.section.brackets.end.java
//           ^ punctuation.section.brackets.begin.java
//            ^ punctuation.section.brackets.end.java
//             ^ punctuation.section.brackets.begin.java
//              ^ punctuation.section.brackets.end.java
//                ^ punctuation.section.braces.begin.java
      { { 1, 2 }, { 3, 4 } },
//    ^^ meta.instantiation.java meta.braces.java meta.braces.java - meta.braces meta.braces meta.braces
//      ^^^^^^^^ meta.instantiation.java meta.braces.java meta.braces.java meta.braces.java
//              ^^ meta.instantiation.java meta.braces.java meta.braces.java - meta.braces meta.braces meta.braces
//                ^^^^^^^^ meta.instantiation.java meta.braces.java meta.braces.java meta.braces.java
//                        ^^ meta.instantiation.java meta.braces.java meta.braces.java - meta.braces meta.braces meta.braces
//                          ^ meta.instantiation.java meta.braces.java - meta.braces meta.braces
//    ^ punctuation.section.braces.begin.java
//      ^ punctuation.section.braces.begin.java
//        ^ constant.numeric.value.java
//         ^ punctuation.separator.comma.java
//           ^ constant.numeric.value.java
//             ^ punctuation.section.braces.end.java
//              ^ punctuation.separator.comma.java
//                ^ punctuation.section.braces.begin.java
//                  ^ constant.numeric.value.java
//                   ^ punctuation.separator.comma.java
//                     ^ constant.numeric.value.java
//                       ^ punctuation.section.braces.end.java
//                         ^ punctuation.section.braces.end.java
//                          ^ punctuation.separator.comma.java
      { { 5, 6 }, { 7, 8 } }
//    ^^ meta.instantiation.java meta.braces.java meta.braces.java - meta.braces meta.braces meta.braces
//      ^^^^^^^^ meta.instantiation.java meta.braces.java meta.braces.java meta.braces.java
//              ^^ meta.instantiation.java meta.braces.java meta.braces.java - meta.braces meta.braces meta.braces
//                ^^^^^^^^ meta.instantiation.java meta.braces.java meta.braces.java meta.braces.java
//                        ^^ meta.instantiation.java meta.braces.java meta.braces.java - meta.braces meta.braces meta.braces
//                          ^ meta.instantiation.java meta.braces.java - meta.braces meta.braces
//    ^ punctuation.section.braces.begin.java
//      ^ punctuation.section.braces.begin.java
//        ^ constant.numeric.value.java
//         ^ punctuation.separator.comma.java
//           ^ constant.numeric.value.java
//             ^ punctuation.section.braces.end.java
//              ^ punctuation.separator.comma.java
//                ^ punctuation.section.braces.begin.java
//                  ^ constant.numeric.value.java
//                   ^ punctuation.separator.comma.java
//                     ^ constant.numeric.value.java
//                       ^ punctuation.section.braces.end.java
//                         ^ punctuation.section.braces.end.java
    };
// ^^ meta.instantiation.java meta.braces.java
//   ^ - meta.instantiation - meta.braces
//  ^ punctuation.section.braces.end.java
//   ^ punctuation.terminator.java

    new int[1][3][4];
//  ^^^^^^^^^^^^^^^^ meta.instantiation.java
//         ^^^^^^^^^ meta.brackets.java
//                  ^ - meta.instantiation - meta.brackets
//      ^^^ storage.type.primitive.java
//         ^ punctuation.section.brackets.begin.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java
//           ^ punctuation.section.brackets.end.java
//            ^ punctuation.section.brackets.begin.java
//             ^ meta.number.integer.decimal.java constant.numeric.value.java
//              ^ punctuation.section.brackets.end.java
//               ^ punctuation.section.brackets.begin.java
//                ^ meta.number.integer.decimal.java constant.numeric.value.java
//                 ^ punctuation.section.brackets.end.java
  }


  @SyntaxTest
  public void instantiateObjectArrays() {

    new String[] {"foo", "bar"};
//  ^^^^^^^^^^^^^ meta.instantiation.java - meta.braces
//               ^^^^^^^^^^^^^^ meta.instantiation.java meta.braces.java
//                             ^ - meta.instantiation - meta.braces
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^ storage.type.class.java
//            ^ punctuation.section.brackets.begin.java
//             ^ punctuation.section.brackets.end.java
//               ^ punctuation.section.braces.begin.java
//                ^^^^^ string.quoted.double.java
//                     ^ punctuation.separator.comma.java
//                       ^^^^^ string.quoted.double.java
//                            ^ punctuation.section.braces.end.java
//                             ^ punctuation.terminator.java

    new String[]() {"foo", "bar"};
//  ^^^^^^^^^^^^ meta.instantiation.java - meta.braces
//              ^^^^^^^^^^^^^^^^^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^ storage.type.class.java
//            ^ punctuation.section.brackets.begin.java
//             ^ punctuation.section.brackets.end.java
//                 ^ punctuation.section.block.begin.java
//                  ^^^^^ string.quoted.double.java
//                       ^ punctuation.separator.comma.java
//                         ^^^^^ string.quoted.double.java
//                              ^ punctuation.section.block.end.java
//                               ^ punctuation.terminator.java

    new MyObject[1];
//  ^^^^^^^^^^^^^^^ meta.instantiation.java
//              ^^^ meta.brackets
//                 ^ - meta.instantiation - meta.brackets
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^ storage.type.class.java
//              ^ punctuation.section.brackets.begin.java
//               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.section.brackets.end.java
//                 ^ punctuation.terminator.java

    new myobject[1];
//  ^^^^^^^^^^^^^^^ meta.instantiation.java
//              ^^^ meta.brackets
//                 ^ - meta.instantiation - meta.brackets
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^ storage.type.class.java
//              ^ punctuation.section.brackets.begin.java
//               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.section.brackets.end.java
//                 ^ punctuation.terminator.java

    new MyObject[1][];
//  ^^^^^^^^^^^^^^^^^ meta.instantiation.java
//              ^^^^^ meta.brackets
//                   ^ - meta.instantiation - meta.brackets
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^ storage.type.class.java
//              ^ punctuation.section.brackets.begin.java
//               ^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.section.brackets.end.java
//                 ^ punctuation.section.brackets.begin.java
//                  ^ punctuation.section.brackets.end.java
//                   ^ punctuation.terminator.java

    new @notnull MyObject @bound [size + 10] @anno [];
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^^^^^ meta.annotation.identifier.java
//              ^ - meta.annotation
//                        ^^^^^^ meta.annotation.identifier.java
//                              ^ - meta.annotation
//                               ^^^^^^^^^^^ meta.brackets.java
//                                           ^^^^^ meta.annotation.identifier.java
//                                                ^ - meta.annotation
//                                                 ^^ meta.brackets.java
//                                                   ^ - meta.instantiation - meta.brackets
//  ^^^ keyword.other.storage.new.java
//      ^ punctuation.definition.annotation.java
//       ^^^^^^^ variable.annotation.java
//               ^^^^^^^^ storage.type.class.java
//                        ^ punctuation.definition.annotation.java
//                         ^^^^^ variable.annotation.java
//                               ^ punctuation.section.brackets.begin.java
//                                ^^^^ variable.other.java
//                                     ^ keyword.operator.arithmetic.java
//                                       ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                         ^ punctuation.section.brackets.end.java
//                                           ^ punctuation.definition.annotation.java
//                                            ^^^^ variable.annotation.java
//                                                 ^ punctuation.section.brackets.begin.java
//                                                  ^ punctuation.section.brackets.end.java
//                                                   ^ punctuation.terminator.java

    new @notnull myobject @bound [size + 10] @anno [];
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^^^^^ meta.annotation.identifier.java
//              ^ - meta.annotation
//                        ^^^^^^ meta.annotation.identifier.java
//                              ^ - meta.annotation
//                               ^^^^^^^^^^^ meta.brackets.java
//                                           ^^^^^ meta.annotation.identifier.java
//                                                ^ - meta.annotation
//                                                 ^^ meta.brackets.java
//                                                   ^ - meta.instantiation - meta.brackets
//  ^^^ keyword.other.storage.new.java
//      ^ punctuation.definition.annotation.java
//       ^^^^^^^ variable.annotation.java
//               ^^^^^^^^ storage.type.class.java
//                        ^ punctuation.definition.annotation.java
//                         ^^^^^ variable.annotation.java
//                               ^ punctuation.section.brackets.begin.java
//                                ^^^^ variable.other.java
//                                     ^ keyword.operator.arithmetic.java
//                                       ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                         ^ punctuation.section.brackets.end.java
//                                           ^ punctuation.definition.annotation.java
//                                            ^^^^ variable.annotation.java
//                                                 ^ punctuation.section.brackets.begin.java
//                                                  ^ punctuation.section.brackets.end.java
//                                                   ^ punctuation.terminator.java

    new some.path.to.MyObject[3];
//  ^^^^ meta.instantiation.java - meta.path
//      ^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.path.java
//                           ^^^ meta.instantiation.java meta.brackets.java - meta.path
//                              ^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^ variable.namespace.java
//          ^ punctuation.accessor.dot.java
//           ^^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^ variable.namespace.java
//                  ^ punctuation.accessor.dot.java
//                   ^^^^^^^^ storage.type.class.java
//                           ^ punctuation.section.brackets.begin.java
//                            ^ meta.number.integer.decimal.java constant.numeric.value.java
//                             ^ punctuation.section.brackets.end.java

    new some.path.to.myobject[3];
//  ^^^^ meta.instantiation.java - meta.path
//      ^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.path.java
//                           ^^^ meta.instantiation.java meta.brackets.java - meta.path
//                              ^ - meta.instantiation
//  ^^^ keyword.other.storage.new.java
//      ^^^^ variable.namespace.java
//          ^ punctuation.accessor.dot.java
//           ^^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^ variable.namespace.java
//                  ^ punctuation.accessor.dot.java
//                   ^^^^^^^^ storage.type.class.java
//                           ^ punctuation.section.brackets.begin.java
//                            ^ meta.number.integer.decimal.java constant.numeric.value.java
//                             ^ punctuation.section.brackets.end.java
  }

  @SyntaxTest
  public void instantiateGenericClassObjects() {

    new Generic<>;
//  ^^^^^^^^^^^^^ meta.instantiation.java
//             ^^ meta.generic.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ storage.type.class.java
//             ^^ punctuation.definition.generic.diamond.java
//               ^ punctuation.terminator.java

    new Generic<>();
//  ^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^ meta.generic.java
//               ^^ meta.group.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ storage.type.class.java
//             ^^ punctuation.definition.generic.diamond.java
//               ^ punctuation.section.group.begin.java
//                ^ punctuation.section.group.end.java
//                 ^ punctuation.terminator.java

    new Generic<Type>();
//  ^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^^^^^ meta.generic.java
//                   ^^ meta.group.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ storage.type.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^^^^ storage.type.class.java
//                  ^ punctuation.definition.generic.end.java
//                   ^ punctuation.section.group.begin.java
//                    ^ punctuation.section.group.end.java
//                     ^ punctuation.terminator.java

    new Generic<@Anno Type>();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^^^^^^^^^^^ meta.generic.java
//              ^^^^^ meta.annotation.identifier.java
//                   ^ - meta.annotation
//                         ^^ meta.group.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ storage.type.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^ punctuation.definition.annotation.java
//               ^^^^ variable.annotation.java
//                    ^^^^ storage.type.class.java
//                        ^ punctuation.definition.generic.end.java
//                         ^ punctuation.section.group.begin.java
//                          ^ punctuation.section.group.end.java
//                           ^ punctuation.terminator.java

    new Generic<?>();
//  ^^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^^ meta.generic.java
//                ^^ meta.group.java
//      ^^^^^^^ storage.type.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^ variable.language.wildcard.java
//               ^ punctuation.definition.generic.end.java
//                ^ punctuation.section.group.begin.java
//                 ^ punctuation.section.group.end.java
//                  ^ punctuation.terminator.java

    new @Anno Generic<@Anno ?>();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^^ meta.annotation.identifier.java
//           ^^^^^^^^^ - meta.annotation
//                   ^^^^^^^^^ meta.generic.java
//                    ^^^^^ meta.annotation.identifier.java
//                         ^^^ - meta.annotation
//                            ^^ meta.group.java
//      ^ punctuation.definition.annotation.java
//       ^^^^ variable.annotation.java
//            ^^^^^^^ storage.type.class.java
//                   ^ punctuation.definition.generic.begin.java
//                    ^ punctuation.definition.annotation.java
//                     ^^^^ variable.annotation.java
//                          ^ variable.language.wildcard.java
//                           ^ punctuation.definition.generic.end.java
//                            ^ punctuation.section.group.begin.java
//                             ^ punctuation.section.group.end.java
//                              ^ punctuation.terminator.java

    new Generic<? extends Type>();
//  ^^^^^^^^^^^ meta.instantiation.java - meta.generic
//             ^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                             ^^ meta.instantiation.java meta.group.java
//             ^ punctuation.definition.generic.begin.java
//              ^ variable.language.wildcard.java
//                ^^^^^^^ storage.modifier.extends.java
//                        ^^^^ storage.type.class.java
//                            ^ punctuation.definition.generic.end.java
//                             ^ punctuation.section.group.begin.java
//                              ^ punctuation.section.group.end.java
//                               ^ punctuation.terminator.java

    new @Anno Generic<@Anno ? extends @Anno Type>();
//  ^^^^^^^^^^^^^^^^^ meta.instantiation.java - meta.generic
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                                               ^^ meta.instantiation.java meta.group.java
//      ^ punctuation.definition.annotation.java
//       ^^^^ variable.annotation.java
//            ^^^^^^^ storage.type.class.java
//                   ^ punctuation.definition.generic.begin.java
//                    ^ punctuation.definition.annotation.java
//                     ^^^^ variable.annotation.java
//                          ^ variable.language.wildcard.java
//                            ^^^^^^^ storage.modifier.extends.java
//                                    ^ punctuation.definition.annotation.java
//                                     ^^^^ variable.annotation.java
//                                          ^^^^ storage.type.class.java
//                                              ^ punctuation.definition.generic.end.java
//                                               ^ punctuation.section.group.begin.java
//                                                ^ punctuation.section.group.end.java
//                                                 ^ punctuation.terminator.java

    new @anno generic<@anno ? extends @anno type>();
//  ^^^^^^^^^^^^^^^^^ meta.instantiation.java - meta.generic
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                                               ^^ meta.instantiation.java meta.group.java
//      ^ punctuation.definition.annotation.java
//       ^^^^ variable.annotation.java
//            ^^^^^^^ storage.type.class.java
//                   ^ punctuation.definition.generic.begin.java
//                    ^ punctuation.definition.annotation.java
//                     ^^^^ variable.annotation.java
//                          ^ variable.language.wildcard.java
//                            ^^^^^^^ storage.modifier.extends.java
//                                    ^ punctuation.definition.annotation.java
//                                     ^^^^ variable.annotation.java
//                                          ^^^^ storage.type.class.java
//                                              ^ punctuation.definition.generic.end.java
//                                               ^ punctuation.section.group.begin.java
//                                                ^ punctuation.section.group.end.java
//                                                 ^ punctuation.terminator.java

    new Generic<? extends Type, String>();
//  ^^^^^^^^^^^ meta.instantiation.java - meta.generic
//             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                                     ^^ meta.instantiation.java meta.group.java
//             ^ punctuation.definition.generic.begin.java
//              ^ variable.language.wildcard.java
//                ^^^^^^^ storage.modifier.extends.java
//                        ^^^^ storage.type.class.java
//                            ^ punctuation.separator.comma.java
//                              ^^^^^^ storage.type.class.java
//                                    ^ punctuation.definition.generic.end.java
//                                     ^ punctuation.section.group.begin.java
//                                      ^ punctuation.section.group.end.java
//                                       ^ punctuation.terminator.java

    new Generic<? super Type>();
//  ^^^^^^^^^^^ meta.instantiation.java - meta.generic
//             ^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                           ^^ meta.instantiation.java meta.group.java
//             ^ punctuation.definition.generic.begin.java
//              ^ variable.language.wildcard.java
//                ^^^^^ keyword.declaration.super.java
//                      ^^^^ storage.type.class.java
//                          ^ punctuation.definition.generic.end.java
//                           ^ punctuation.section.group.begin.java
//                            ^ punctuation.section.group.end.java
//                             ^ punctuation.terminator.java

    new Generic<int>();
//              ^^^ invalid.illegal.unexpected-keyword.java

    new Generic<int[]>();
//              ^^^ storage.type.primitive.java
//                 ^^ storage.modifier.array.java

    new Generic<int @Anno []>();
//              ^^^ storage.type.primitive.java
//                  ^^^^^ meta.annotation.identifier.java
//                       ^^^^ - meta.annotation
//                        ^^ storage.modifier.array.java

    new Generic<int @com /**/ . /**/ Anno ( @Anno arg ) []>();
//              ^^^ storage.type.primitive.java
//                  ^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.java
//                                        ^^^^^^^^^^^^^ meta.annotation.parameters.java meta.group.java
//                                                      ^^ storage.modifier.array.java

    new generic<int @com . anno ( @anno arg ) []>();
//              ^^^ storage.type.primitive.java
//                  ^^^^^^^^^^^^ meta.annotation.identifier.java
//                              ^^^^^^^^^^^^^ meta.annotation.parameters.java meta.group.java
//                                            ^^ storage.modifier.array.java

    new Generic<String, int>();
//              ^^^^^^ storage.type.class.java
//                      ^^^ invalid.illegal.unexpected-keyword.java

    new Generic<a.b.FooBar>();
//             ^^^^^^^^^^^^ meta.generic.java
//              ^^^^^^^^^^ meta.path.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^ variable.namespace.java
//                 ^ punctuation.accessor.dot.java

    new generic<a.b.foobar>();
//             ^^^^^^^^^^^^ meta.generic.java
//              ^^^^^^^^^^ meta.path.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^ variable.namespace.java
//                 ^ punctuation.accessor.dot.java

    new generic<?>[] { new generic(1), new generic(2) };
//  ^^^^^^^^^^^^^^^^^ meta.instantiation.java - meta.braces - meta.instantiation meta.instantiation
//                   ^^ meta.instantiation.java meta.braces.java - meta.instantiation meta.instantiation
//                     ^^^^^^^^^^^^^^ meta.instantiation.java meta.braces.java meta.instantiation.java
//                                   ^^ meta.instantiation.java meta.braces.java - meta.instantiation meta.instantiation
//                                     ^^^^^^^^^^^^^^^ meta.instantiation.java meta.braces.java meta.instantiation.java
//                                                    ^ meta.instantiation.java meta.braces.java - meta.instantiation meta.instantiation
//                                                     ^ - meta.instantiation - meta.braces
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ storage.type.class.java
//             ^^^ meta.generic.java
//                ^ punctuation.section.brackets.begin.java
//                 ^ punctuation.section.brackets.end.java
//                   ^ punctuation.section.braces.begin
//                     ^^^ keyword.other.storage.new.java
//                         ^^^^^^^ storage.type.class.java
//                                   ^ punctuation.separator.comma.java
//                                     ^^^ keyword.other.storage.new.java
//                                         ^^^^^^^ storage.type.class.java
//                                                    ^ punctuation.section.braces.end

    new ArrayList<?>[] { new ArrayList<java.sql.Date>(), new ArrayList<Date>() }
//  ^^^^^^^^^^^^^^^^^^^ meta.instantiation.java - meta.braces - meta.instantiation meta.instantiation
//                     ^^ meta.instantiation.java meta.braces.java - meta.instantiation meta.instantiation
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.braces.java meta.instantiation.java
//                                                     ^^ meta.instantiation.java meta.braces.java - meta.instantiation meta.instantiation
//                                                       ^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.braces.java meta.instantiation.java
//                                                                             ^ meta.instantiation.java meta.braces.java - meta.instantiation meta.instantiation
//                                                                              ^ - meta.instantiation - meta.braces
//               ^^^ meta.generic.java
//                                    ^^^^^^^^^^^^^^^ meta.generic.java
//                                     ^^^^^^^^^^^^^ meta.path.java
//                                                                    ^^^^^^ meta.generic.java - meta.path
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^^^ storage.type.class.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.language.wildcard.java
//                 ^ punctuation.definition.generic.end.java
//                  ^ punctuation.section.brackets.begin.java
//                   ^ punctuation.section.brackets.end.java
//                     ^ punctuation.section.braces.begin.java
//                       ^^^ keyword.other.storage.new.java
//                           ^^^^^^^^^ storage.type.class.java
//                                    ^ punctuation.definition.generic.begin.java
//                                     ^^^^ variable.namespace.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^ variable.namespace.java
//                                             ^ punctuation.accessor.dot.java
//                                              ^^^^ storage.type.class.java
//                                                  ^ punctuation.definition.generic.end.java
//                                                   ^ punctuation.section.group.begin.java
//                                                    ^ punctuation.section.group.end.java
//                                                     ^ punctuation.separator.comma.java
//                                                       ^^^ keyword.other.storage.new.java
//                                                           ^^^^^^^^^ storage.type.class.java
//                                                                    ^ punctuation.definition.generic.begin.java
//                                                                     ^^^^ storage.type.class.java
//                                                                         ^ punctuation.definition.generic.end.java
//                                                                          ^ punctuation.section.group.begin.java
//                                                                           ^ punctuation.section.group.end.java
//                                                                             ^ punctuation.section.braces.end.java

    new
//  ^^^^ meta.instantiation.java - meta.path
//  ^^^ keyword.other.storage.new.java
      a
//   ^ meta.instantiation.java - meta.path
//    ^^ meta.instantiation.java meta.path.java - meta.path meta.path
//    ^ variable.namespace.java
      .
//   ^^^ meta.instantiation.java meta.path.java
//    ^ punctuation.accessor.dot.java
      b.Generic
//   ^^^^^^^^^^^ meta.instantiation.java meta.path.java
//    ^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^^^^ storage.type.class.java
      <
//   ^ meta.instantiation.java meta.path.java - meta.generic
//    ^^ meta.instantiation.java meta.path.java meta.generic.java
//    ^ punctuation.definition.generic.begin.java
        a
//     ^ meta.instantiation.java meta.path.java meta.generic.java - meta.path meta.path - variable
//      ^ meta.instantiation.java meta.path.java meta.generic.java meta.path.java variable.namespace.java
//       ^ meta.instantiation.java meta.path.java meta.generic.java meta.path.java - variable
        .
//     ^^^ meta.instantiation.java meta.path.java meta.generic.java meta.path.java
//      ^ punctuation.accessor.dot.java
        b.Generic
//     ^^^^^^^^^^^ meta.instantiation.java meta.path.java meta.generic.java meta.path.java
//      ^ variable.namespace.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^^^ storage.type.class.java
      >();
//<- meta.instantiation.java meta.path.java meta.generic.java - meta.path meta.path
//   ^^ meta.instantiation.java meta.path.java meta.generic.java - meta.path meta.path
//     ^^ meta.instantiation.java meta.group.java - meta.path
//       ^ - meta.instantiation
//    ^ punctuation.definition.generic.end.java
//     ^ punctuation.section.group.begin.java
//      ^ punctuation.section.group.end.java
//       ^ punctuation.terminator.java

    new <T1, T2> Generic<T>();

  }
}


/******************************************************************************
 * Method Reference Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.13
 *****************************************************************************/

class MethodReferenceExpressionsTests {

  void run() {

    System::currentTimeMillis  // static method
//  ^^^^^^ storage.type.class.java
//        ^^ punctuation.accessor.double-colon.java
//          ^^^^^^^^^^^^^^^^^ variable.function.reference.java

    List::size                 // inferred type arguments for generic type
//  ^^^^ storage.type.class.java
//      ^^ punctuation.accessor.double-colon.java
//        ^^^^ variable.function.reference.java

    List<String>::size         // explicit type arguments for generic type
//  ^^^^ storage.type.class.java
//      ^^^^^^^^ meta.generic.java
//              ^^ punctuation.accessor.double-colon.java
//                ^^^^ variable.function.reference.java

    int[]::clone
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^^^ variable.function.reference.java

    T::tvarMember
//  ^ storage.type.class.java
//   ^^ punctuation.accessor.double-colon.java
//     ^^^^^^^^^^ variable.function.reference.java

    System.out::println
//  ^^^^^^ storage.type.class.java
//        ^ punctuation.accessor.dot.java
//         ^^^ variable.other.java
//            ^^ punctuation.accessor.double-colon.java
//              ^^^^^^^ variable.function.reference.java

    "abc"::length
//  ^^^^^ string.quoted.double.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^^^^ variable.function.reference.java

    foo[x]::bar
//  ^^^ meta.variable.identifier.java variable.other.java
//     ^^^ meta.variable.item-access.java meta.brackets.java
//        ^^ punctuation.accessor.double-colon.java
//          ^^^ variable.function.reference.java

    (test ? list.replaceAll(String::trim) : list) :: iterator
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.java
//               ^^^^^^^^^^ meta.function-call.identifier.java
//                         ^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^^^^ variable.other.java
//        ^ keyword.operator.ternary.java
//          ^^^^ variable.other.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^^ variable.function.java
//                          ^^^^^^ storage.type.class.java
//                                ^^ punctuation.accessor.double-colon.java
//                                  ^^^^ variable.function.reference.java
//                                        ^ keyword.operator.ternary.java
//                                          ^^^^ variable.other.java
//                                              ^ punctuation.section.group.end.java
//                                                ^^ punctuation.accessor.double-colon.java
//                                                   ^^^^^^^^ variable.function.reference.java

    super::toString
//  ^^^^^ variable.language.super.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^^^^^^ variable.function.reference.java

    Arrays::<String>sort       // explicit type arguments
//  ^^^^^^ storage.type.class.java
//        ^^ punctuation.accessor.double-colon.java
//          ^^^^^^^^ meta.generic.java
//                  ^^^^ variable.function.reference.java

    ArrayList<String>::new     // constructor for parameterized type
//  ^^^^^^^^^ storage.type.class.java
//           ^^^^^^^^ meta.generic.java
//                   ^^ punctuation.accessor.double-colon.java
//                     ^^^ keyword.other.storage.new.java

    ArrayList<String ::new     // constructor for parameterized type
//  ^^^^^^^^^ storage.type.class.java
//           ^^^^^^^^ meta.generic.java
//                   ^^ punctuation.accessor.double-colon.java
//                     ^^^ keyword.other.storage.new.java

    ArrayList::new             // inferred type arguments for generic class
//  ^^^^^^^^^ storage.type.class.java
//           ^^ punctuation.accessor.double-colon.java
//             ^^^ keyword.other.storage.new.java

    Foo::<Integer>new          // explicit type arguments for generic constructor
//  ^^^ storage.type.class.java
//     ^^ punctuation.accessor.double-colon.java
//       ^^^^^^^^^ meta.generic.java
//                ^^^ keyword.other.storage.new.java

    Bar<String>::<Integer>new  // generic class, generic constructor
//  ^^^ storage.type.class.java
//     ^^^^^^^^ meta.generic.java
//             ^^ punctuation.accessor.double-colon.java
//               ^^^^^^^^^ meta.generic.java
//                        ^^^ keyword.other.storage.new.java

    Outer.Inner::new           // inner class constructor
//  ^^^^^ storage.type.class.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^ storage.type.class.java
//             ^^ punctuation.accessor.double-colon.java
//               ^^^ keyword.other.storage.new.java
    int[]::new                 // array creation
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^ keyword.other.storage.new.java
  }
}


/******************************************************************************
 * Cast Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.16
 *****************************************************************************/

class CastExpressionsTests {

  void primitiveTypeCastExpression() {

    () foo;
//  ^^ meta.typecast.java meta.group.java
//    ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^ punctuation.section.group.end.java
//     ^^^ variable.other.java

    (int) foo;
//  ^^^^^ meta.typecast.java meta.group.java
//       ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.other.java

    (int$) foo;
//  ^^^^^^ meta.typecast.java meta.group.java
//        ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^ storage.type.class.java
//       ^ punctuation.section.group.end.java
//         ^^^ variable.other.java

    (int) foo[10];
//  ^^^^^ meta.typecast.java meta.group.java
//       ^^^^^^^^ - meta.typecast - meta.group
//        ^^^ meta.variable.identifier.java
//           ^^^^ meta.variable.item-access.java meta.brackets.java
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.other.java

    (int) foo();
//  ^^^^^ meta.typecast.java meta.group.java
//       ^ - meta.function-call - meta.typecast - meta.group
//        ^^^ meta.function-call.identifier.java
//           ^^ meta.function-call.arguments.java meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.function.java
//           ^ punctuation.section.group.begin.java
//            ^ punctuation.section.group.end.java
//             ^ punctuation.terminator.java

    (int) foo -> {return 0};
//  ^^^^^ meta.typecast.java meta.group.java
//       ^ - meta.function.anonymous - meta.typecast - meta.group
//        ^^^ meta.function.anonymous.parameters.java
//           ^^^^^^^^^^^^^^ meta.function.anonymous.java
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.parameter.java
//            ^^ keyword.declaration.function.arrow.java
//               ^ punctuation.section.block.begin.java
//                ^^^^^^ keyword.control.flow.return.java
//                       ^ constant.numeric.value.java
//                        ^ punctuation.section.block.end.java
//                         ^ punctuation.terminator.java

    (int) this;
//  ^^^^^ meta.typecast.java meta.group.java
//       ^^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^^ variable.language.this.java
//            ^ punctuation.terminator.java

    (int) super.class;
//  ^^^^^ meta.typecast.java meta.group.java
//       ^^^^^^^^^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^^^ variable.language.super.java
//             ^ punctuation.accessor.dot.java
//              ^^^^^ variable.language.class.java
//                   ^ punctuation.terminator.java

    (int) TestClass;
//  ^^^^^ meta.typecast.java meta.group.java
//       ^^^^^^^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^^^^^^^ storage.type.class.java
//                 ^ punctuation.terminator.java

    (int) new TestClass();
//  ^^^^^ meta.typecast.java meta.group.java
//       ^ - meta.typecast - meta.group - meta.instantiation
//        ^^^^^^^^^^^^^^^ meta.instantiation.java - meta.typecast
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^^^ keyword.other.storage.new.java
//            ^^^^^^^^^ storage.type.class.java
//                     ^ punctuation.section.group.begin.java
//                      ^ punctuation.section.group.end.java
//                       ^ punctuation.terminator.java

    (int) (char) (foo + 10);
//  ^^^^^ meta.typecast.java meta.group.java
//       ^ - meta.typecast - meta.group
//        ^^^^^^ meta.typecast.java meta.group.java
//              ^ - meta.typecast - meta.group
//               ^^^^^^^^^^ meta.group.java - meta.typecast
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^ punctuation.section.group.end.java
//        ^ punctuation.section.group.begin.java
//         ^^^^ storage.type.primitive.java
//             ^ punctuation.section.group.end.java
//               ^ punctuation.section.group.begin.java
//                ^^^ variable.other.java
//                    ^ keyword.operator.arithmetic.java
//                      ^^ constant.numeric.value.java
//                        ^ punctuation.section.group.end.java

    (int[]) foo;
//  ^^^^^^^ meta.typecast.java meta.group.java
//         ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^^ storage.modifier.array.java
//        ^ punctuation.section.group.end.java
//          ^^^ variable.other.java

    (int[]) ! foo;
//  ^^^^^^^ meta.typecast.java meta.group.java
//         ^^^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^^ storage.modifier.array.java
//        ^ punctuation.section.group.end.java
//          ^ keyword.operator.logical.java
//            ^^^ variable.other.java

    (int[]) ~ foo;
//  ^^^^^^^ meta.typecast.java meta.group.java
//         ^^^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ storage.type.primitive.java
//      ^^ storage.modifier.array.java
//        ^ punctuation.section.group.end.java
//          ^ keyword.operator.bitwise.java
//            ^^^ variable.other.java

    (var) foo;
//  ^^^^^ meta.typecast.java meta.group.java
//       ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^ invalid.illegal.unexpected-keyword.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.other.java
  }

  void classTypeCastExpression() {

    (TestClass) foo;
//  ^^^^^^^^^^^ meta.typecast.java meta.group.java
//             ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^^^^^ storage.type.class.java
//            ^ punctuation.section.group.end.java
//              ^^^ variable.other.java

    (TestClass[]) foo;
//  ^^^^^^^^^^^^^ meta.typecast.java meta.group.java
//               ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^^^^^ storage.type.class.java
//            ^^ storage.modifier.array.java
//              ^ punctuation.section.group.end.java
//                ^^^ variable.other.java

    (testclass) foo;
//  ^^^^^^^^^^^ meta.typecast.java meta.group.java
//             ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^^^^^ storage.type.class.java
//            ^ punctuation.section.group.end.java
//              ^^^ variable.other.java

    (testclass[]) foo;
//  ^^^^^^^^^^^^^ meta.typecast.java meta.group.java
//               ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^^^^^ storage.type.class.java
//            ^^ storage.modifier.array.java
//              ^ punctuation.section.group.end.java
//                ^^^ variable.other.java

    (TestClass & OtherClass) foo;
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.typecast.java meta.group.java
//                          ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^^^^^ storage.type.class.java
//             ^ keyword.operator.logical.java
//               ^^^^^^^^^^ storage.type.class.java
//                         ^ punctuation.section.group.end.java
//                           ^^^ variable.other.java

    (testclass & otherclass) foo;
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.typecast.java meta.group.java
//                          ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^^^^^ storage.type.class.java
//             ^ keyword.operator.logical.java
//               ^^^^^^^^^^ storage.type.class.java
//                         ^ punctuation.section.group.end.java
//                           ^^^ variable.other.java

    (@anno testclass & @anno otherclass) foo;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.typecast.java meta.group.java
//                                      ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^^ meta.annotation.identifier.java
//         ^^^^^^^^^ storage.type.class.java
//                   ^ keyword.operator.logical.java
//                     ^^^^^ meta.annotation.identifier.java
//                           ^^^^^^^^^^ storage.type.class.java
//                                     ^ punctuation.section.group.end.java
//                                       ^^^ variable.other.java
  }

  void genericTypeCastExpression() {

    (a < b) foo;
//  ^^^^^^^ meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^ storage.type.class.java
//     ^ punctuation.definition.generic.begin.java
//       ^ storage.type.class.java
//        ^ punctuation.section.group.end.java
//          ^^^ variable.other.java

    (a < b) ~ foo;
//  ^^^^^^^ meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^ storage.type.class.java
//     ^ punctuation.definition.generic.begin.java
//       ^ storage.type.class.java
//        ^ punctuation.section.group.end.java
//          ^ keyword.operator.bitwise.java
//            ^^^ variable.other.java

    (List<T>) foo;
//  ^^^^^ meta.typecast.java meta.group.java - meta.generic
//       ^^^ meta.typecast.java meta.group.java meta.generic.java
//          ^ meta.typecast.java meta.group.java - meta.generic
//           ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^ storage.type.class.java
//       ^ punctuation.definition.generic.begin.java
//        ^ storage.type.class.java
//         ^ punctuation.definition.generic.end.java
//          ^ punctuation.section.group.end.java
//            ^^^ variable.other.java

    (List<T>[]) foo;
//  ^^^^^ meta.typecast.java meta.group.java - meta.generic
//       ^^^ meta.typecast.java meta.group.java meta.generic.java
//          ^^^ meta.typecast.java meta.group.java - meta.generic
//             ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^ storage.type.class.java
//       ^ punctuation.definition.generic.begin.java
//        ^ storage.type.class.java
//         ^ punctuation.definition.generic.end.java
//          ^^ storage.modifier.array.java
//            ^ punctuation.section.group.end.java
//              ^^^ variable.other.java

    (list<t>) foo;
//  ^^^^^ meta.typecast.java meta.group.java - meta.generic
//       ^^^ meta.typecast.java meta.group.java meta.generic.java
//          ^ meta.typecast.java meta.group.java - meta.generic
//           ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^ storage.type.class.java
//       ^ punctuation.definition.generic.begin.java
//        ^ storage.type.class.java
//         ^ punctuation.definition.generic.end.java
//          ^ punctuation.section.group.end.java
//            ^^^ variable.other.java

    (list<t>[]) foo;
//  ^^^^^ meta.typecast.java meta.group.java - meta.generic
//       ^^^ meta.typecast.java meta.group.java meta.generic.java
//          ^^^ meta.typecast.java meta.group.java - meta.generic
//             ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^^^^ storage.type.class.java
//       ^ punctuation.definition.generic.begin.java
//        ^ storage.type.class.java
//         ^ punctuation.definition.generic.end.java
//          ^^ storage.modifier.array.java
//            ^ punctuation.section.group.end.java
//              ^^^ variable.other.java

    (list<t>[] & OtherList<T> & None) foo;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.typecast.java meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^^^^ storage.type.class.java
//       ^ punctuation.definition.generic.begin.java
//        ^ storage.type.class.java
//         ^ punctuation.definition.generic.end.java
//          ^^ storage.modifier.array.java
//             ^ keyword.operator.logical.java
//               ^^^^^^^^^ storage.type.class.java
//                        ^ punctuation.definition.generic.begin.java
//                         ^ storage.type.class.java
//                          ^ punctuation.definition.generic.end.java
//                            ^ keyword.operator.logical.java
//                              ^^^^ storage.type.class.java
//                                  ^ punctuation.section.group.end.java
//                                    ^^^ variable.other.java

    (<T>) foo;
//  ^ meta.typecast.java meta.group.java - meta.generic
//   ^^^ meta.typecast.java meta.group.java meta.generic.java
//      ^ meta.typecast.java meta.group.java - meta.generic
//       ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^ punctuation.definition.generic.begin.java
//    ^ storage.type.class.java
//     ^ punctuation.definition.generic.end.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.other.java

    (<T>[]) foo;
//  ^ meta.typecast.java meta.group.java - meta.generic
//   ^^^ meta.typecast.java meta.group.java meta.generic.java
//      ^^^ meta.typecast.java meta.group.java - meta.generic
//         ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^ punctuation.definition.generic.begin.java
//    ^ storage.type.class.java
//     ^ punctuation.definition.generic.end.java
//      ^^ storage.modifier.array.java
//        ^ punctuation.section.group.end.java
//          ^^^ variable.other.java

    (<t>) foo;
//  ^ meta.typecast.java meta.group.java - meta.generic
//   ^^^ meta.typecast.java meta.group.java meta.generic.java
//      ^ meta.typecast.java meta.group.java - meta.generic
//       ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^ punctuation.definition.generic.begin.java
//    ^ storage.type.class.java
//     ^ punctuation.definition.generic.end.java
//      ^ punctuation.section.group.end.java
//        ^^^ variable.other.java

    (<t>[]) foo;
//  ^ meta.typecast.java meta.group.java - meta.generic
//   ^^^ meta.typecast.java meta.group.java meta.generic.java
//      ^^^ meta.typecast.java meta.group.java - meta.generic
//         ^^^^ - meta.typecast - meta.group
//  ^ punctuation.section.group.begin.java
//   ^ punctuation.definition.generic.begin.java
//    ^ storage.type.class.java
//     ^ punctuation.definition.generic.end.java
//      ^^ storage.modifier.array.java
//        ^ punctuation.section.group.end.java
//          ^^^ variable.other.java
  }

  void noCastExpressionsTests() {

    (a + b) foo;
//  ^^^^^^^ meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^ variable.other.java
//     ^ keyword.operator.arithmetic.java
//       ^ variable.other.java
//        ^ punctuation.section.group.end.java
//          ^^^ variable.other.java

    (a < b) & foo;
//  ^^^^^^^ meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^ variable.other.java
//     ^ keyword.operator.comparison.java
//       ^ variable.other.java
//        ^ punctuation.section.group.end.java
//          ^ keyword.operator.bitwise.java
//            ^^^ variable.other.java

    (0) foo;
//  ^^^ meta.group.java
//  ^ punctuation.section.group.begin.java
//   ^ constant.numeric.value.java
//    ^ punctuation.section.group.end.java
//      ^^^ variable.other.java
  }
}


/******************************************************************************
 * Instance Type Comparison Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.20.2
 *****************************************************************************/

class TypeComparisonExpressionsTests {

 void instanceofPrimitiveTests {

    instanceof
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java

    instanceof boolean
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^^^^^ storage.type.primitive.java

    instanceof boolean[]
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^^^^^ storage.type.primitive.java
//                    ^^ storage.modifier.array.java

    instanceof boolean@anno[]
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^^^^^ storage.type.primitive.java
//                    ^ punctuation.definition.annotation.java
//                     ^^^^ variable.annotation.java
//                         ^^ storage.modifier.array.java

    instanceof char
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^^ storage.type.primitive.java

    instanceof char[]
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^^ storage.type.primitive.java
//                 ^^ storage.modifier.array.java

    instanceof char@anno[]
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^^ storage.type.primitive.java
//                 ^ punctuation.definition.annotation.java
//                  ^^^^ variable.annotation.java
//                      ^^ storage.modifier.array.java

    instanceof int
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^ storage.type.primitive.java

    instanceof int[]
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^ storage.type.primitive.java
//                ^^ storage.modifier.array.java

    instanceof int@anno[]
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
//             ^^^ storage.type.primitive.java
//                ^ punctuation.definition.annotation.java
//                 ^^^^ variable.annotation.java
//                     ^^ storage.modifier.array.java

    instanceof
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
    int
//  ^^^ storage.type.primitive.java
    @anno
//  ^ punctuation.definition.annotation.java
//   ^^^^ variable.annotation.java
    []
//  ^^ storage.modifier.array.java
}

 void instanceofClassTests {

    a instanceof b
//    ^^^^^^^^^^ keyword.other.storage.instanceof.java
//               ^ storage.type.class.java

    a instanceof b.c
//    ^^^^^^^^^^ keyword.other.storage.instanceof.java
//               ^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^ storage.type.class.java

    a instanceof b.c.d
//    ^^^^^^^^^^ keyword.other.storage.instanceof.java
//               ^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^ variable.namespace.java
//                  ^ punctuation.accessor.dot.java
//                   ^ storage.type.class.java

    a instanceof Object
//    ^^^^^^^^^^ keyword.other.storage.instanceof.java
//               ^^^^^^ storage.type.class.java
}

 void instanceofGenericsTests {

    instanceof <T>
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java

    instanceof X<?>.Y<?>
//  ^^^^^^^^^^ keyword.other.storage.instanceof.java
 }

 void instanceofAmbigultyTests {

    a = b instanceof c?1__1:0b11110101;
//  ^ variable.other.java
//    ^ keyword.operator.assignment.java
//      ^ variable.other.java
//        ^^^^^^^^^^ keyword.other.storage.instanceof.java
//                   ^ storage.type.class.java
//                    ^ keyword.operator.ternary.java
//                     ^^^^ constant.numeric.value.java
//                         ^ keyword.operator.ternary.java
//                          ^^ constant.numeric.base.java
//                            ^^^^^^^^ constant.numeric.value.java
//                                    ^ punctuation.terminator.java
 }
 // <- meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java

  void instanceofPatternsTests () {

      obj instanceof String s && s.length() > 5
//    ^^^ variable.other.java
//        ^^^^^^^^^^ keyword.other.storage.instanceof.java
//                   ^^^^^^ storage.type.class.java
//                          ^ variable.other.java
//                            ^^ keyword.operator.logical.java
//                               ^ variable.other.java
//                                ^ punctuation.accessor.dot.java
//                                 ^^^^^^ variable.function.java
//                                       ^^ meta.group.java
//                                          ^ keyword.operator.comparison.java
//                                            ^ constant.numeric.value.java
  }
}
// <- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Lambda Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.27
 *****************************************************************************/

class LambdasExpressionsTests {

  void anonymousFunctions() {

     Function<String, Integer> func = a -> 42;
//                                    ^ variable.parameter.java
//                                      ^^ keyword.declaration.function.arrow.java
//                                         ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                           ^ punctuation.terminator.java
     foo(a -> 42);
//   ^^^ meta.function-call.identifier.java
//      ^^^^^^^^^ meta.function-call.arguments.java meta.group.java
//   ^^^ variable.function.java
//      ^ punctuation.section.group.begin.java
//       ^ variable.parameter.java
//         ^^ keyword.declaration.function.arrow.java
//            ^^ meta.number.integer.decimal.java constant.numeric.value.java
//              ^ punctuation.section.group.end.java
//               ^ punctuation.terminator.java

     a -> { return 42; };
//        ^^^^^^^^^^^^^^ meta.function.anonymous.java

     (a, b) -> 42;
//    ^ variable.parameter.java
//       ^ variable.parameter.java
//          ^^ keyword.declaration.function.arrow.java
//             ^^ meta.number.integer.decimal.java constant.numeric.value.java

     (int a, Foo<Integer>[] b) -> 42;
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.anonymous meta.function.anonymous
//   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java meta.group.java
//                            ^^^^^^ meta.function.anonymous.java - meta.group
//    ^^^ storage.type.primitive
//        ^ variable.parameter.java
//           ^^^ storage.type.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^^^^ storage.type.class.java
//                      ^ punctuation.definition.generic.end.java
//                          ^ variable.parameter.java
//                             ^^ keyword.declaration.function.arrow.java
//                                ^^ meta.number.integer.decimal.java constant.numeric.value.java

    (
//  ^^ meta.function.anonymous.parameters.java meta.group.java - meta.function.anonymous meta.function.anonymous
//  ^ punctuation.section.group.begin.java
        int a,
//     ^^^^^^^^ meta.function.anonymous.parameters.java meta.group.java - meta.function.anonymous meta.function.anonymous
//      ^^^ storage.type.primitive
//          ^ variable.parameter.java
//           ^ punctuation.separator.comma.java
        Foo<Integer>[] b
//     ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java meta.group.java - meta.function.anonymous meta.function.anonymous
//      ^^^ storage.type.class.java
//         ^ punctuation.definition.generic.begin.java
//          ^^^^^^^ storage.type.class.java
//                 ^ punctuation.definition.generic.end.java
//                     ^ variable.parameter.java
    )
//  ^ meta.function.anonymous.parameters.java meta.group.java punctuation.section.group.end.java - meta.function.anonymous meta.function.anonymous
//   ^ meta.function.anonymous.java - meta.function.anonymous meta.function.anonymous
     ->
//  ^^^ meta.function.anonymous.java - meta.function.anonymous meta.function.anonymous
//   ^^ keyword.declaration.function.arrow.java
     42;
//  ^^^ meta.function.anonymous.java - meta.function.anonymous meta.function.anonymous
//   ^^ meta.number.integer.decimal.java constant.numeric.value.java
//     ^ punctuation.terminator.java

    foo.forEach((k, v) -> {
//              ^^^^^^^^^^^^ meta.function-call.arguments.java
//              ^^^^^^ meta.function.anonymous.parameters.java meta.group.java
//              ^ punctuation.section.group.begin.java
//               ^ variable.parameter.java
//                ^ punctuation.separator.comma.java
//                  ^ variable.parameter.java
//                   ^ punctuation.section.group.end.java
//                    ^^^^^^ meta.function.anonymous.java
//                     ^^ keyword.declaration.function.arrow.java
//                        ^ punctuation.section.block.begin
      return;
//   ^^^^^^^^^ meta.function-call.arguments.java meta.group.java meta.function.anonymous.java meta.block.java
//    ^^^^^^ meta.return.java keyword.control.flow.return.java
//          ^ punctuation.terminator.java - meta.return
    });
//  ^ punctuation.section.block.end.java
//   ^ punctuation.section.group.end.java
//    ^ punctuation.terminator.java

    a = (int) a + (a, int b) -> { return c };
//      ^^^^^ meta.typecast.java meta.group.java
//           ^^^^^ - meta.group
//                ^^^^^^^^^^ meta.function.anonymous.parameters.java meta.group.java
//                          ^^^^ meta.function.anonymous.java - meta.group - meta.function.anonymous meta.block
//                              ^^^^^^^^^^^^ meta.function.anonymous.java meta.block.java
//                                          ^ - meta.function.anonymous
//      ^ punctuation.section.group.begin.java
//       ^^^ storage.type.primitive.java
//          ^ punctuation.section.group.end.java
//            ^ variable.other.java
//              ^ keyword.operator.arithmetic.java
//                ^ punctuation.section.group.begin.java
//                 ^ variable.parameter.java
//                  ^ punctuation.separator.comma.java
//                    ^^^ storage.type.primitive.java
//                        ^ variable.parameter.java
//                         ^ punctuation.section.group.end.java
//                           ^^ keyword.declaration.function.arrow.java
//                              ^ punctuation.section.block.begin.java
//                                ^^^^^^ keyword.control.flow.return.java
//                                       ^ variable.other.java
//                                         ^ punctuation.section.block.end.java
//                                          ^ punctuation.terminator.java

    a = ((int) a + (a, int b) -> { return c });
//      ^ meta.group.java - meta.group meta.group
//       ^^^^^ meta.group.java meta.typecast.java meta.group.java
//            ^^^^^ meta.group.java - meta.group meta.group
//                 ^^^^^^^^^^ meta.group.java meta.function.anonymous.parameters.java meta.group.java
//                           ^^^^ meta.group.java meta.function.anonymous.java - meta.group meta.group - meta.function.anonymous meta.block
//                               ^^^^^^^^^^^^ meta.group.java meta.function.anonymous.java meta.block.java
//                                           ^ - meta.function.anonymous - meta.group meta.group
//                                            ^ - meta.group
//      ^^ punctuation.section.group.begin.java
//        ^^^ storage.type.primitive.java
//           ^ punctuation.section.group.end.java
//             ^ variable.other.java
//               ^ keyword.operator.arithmetic.java
//                 ^ punctuation.section.group.begin.java
//                  ^ variable.parameter.java
//                   ^ punctuation.separator.comma.java
//                     ^^^ storage.type.primitive.java
//                         ^ variable.parameter.java
//                          ^ punctuation.section.group.end.java
//                            ^^ keyword.declaration.function.arrow.java
//                               ^ punctuation.section.block.begin.java
//                                 ^^^^^^ keyword.control.flow.return.java
//                                        ^ variable.other.java
//                                          ^ punctuation.section.block.end.java
//                                           ^ punctuation.section.group.end.java
//                                            ^ punctuation.terminator.java
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java

  // Lambda parameter tests
  Function<String, String> lambda1 = (final @MyAnnotation String foo) -> foo;
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^ storage.modifier.java
//                                          ^^^^^^^^^^^^^ meta.annotation
//                                          ^ punctuation.definition.annotation
//                                                        ^^^^^^ storage.type.class.java - meta.annotation
//                                                               ^^^ variable.parameter.java
//                                                                    ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda2 = (@MyAnnotation String foo) -> foo;
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^^^^^^^^^ meta.annotation
//                                    ^ punctuation.definition.annotation
//                                                  ^^^^^^ storage.type.class.java - meta.annotation
//                                                         ^^^ variable.parameter.java
//                                                              ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda3 = (@MyAnnotation(foo = Foo.BAR) String foo) -> foo;
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//                                    ^ punctuation.definition.annotation
//                                                  ^^^ variable.parameter.java
//                                                        ^^^ storage.type.class.java
//                                                           ^ punctuation.accessor.dot.java
//                                                            ^^^ constant.other.java
//                                                                 ^^^^^^ storage.type.class.java - meta.annotation
//                                                                        ^^^ variable.parameter.java
//                                                                             ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda4 = (String foo) -> foo;
//                                   ^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^^ storage.type.class.java - meta.annotation
//                                           ^^^ variable.parameter.java
//                                                ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda4 = (var foo) -> foo;
//                                   ^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ storage.type.variant.java
//                                        ^^^ variable.parameter.java
//                                             ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda5 = (foo) -> foo;
//                                   ^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                         ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda5 = (foo = 0) -> foo;
//                                   ^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                        ^ invalid.illegal.expect-terminator.java
//                                          ^ invalid.illegal.expect-terminator.java
//                                             ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda6 = (foo, foo) -> foo;
//                                   ^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.parameter.java
//                                              ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda7 = (Foo, Foo) -> foo;
//                                   ^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.parameter.java
//                                              ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda8 = foo -> foo;
//                                   ^^^ meta.function.anonymous.parameters.java
//                                   ^^^ variable.parameter.java
//                                       ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  Function<String[], String> lambda9 = (String... foo) -> foo[0];
//                                     ^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                      ^^^^^^ storage.type.class.java - meta.annotation
//                                            ^^^ keyword.operator.variadic.java
//                                                ^^^ variable.parameter.java
//                                                     ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  IntFunction<String> intLambda1 = (int foo) -> String.valueOf(foo);
//                                 ^^^^^^^^^ meta.function.anonymous.parameters.java
//                                  ^^^ storage.type.primitive - meta.annotation
//                                      ^^^ variable.parameter.java
//                                           ^^ keyword.declaration.function.arrow.java - meta.function.anonymous.parameters.java

  MyObject objLambda = arg -> new MyObject(arg);
//                     ^^^ meta.function.anonymous.parameters.java variable.parameter.java
//                        ^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.java
//                         ^^ keyword.declaration.function.arrow.java
//                            ^^^ keyword.other.storage.new.java
//                                ^^^^^^^^ storage.type.class.java
//                                        ^ punctuation.section.group.begin.java
//                                        ^^^^^ meta.group.java
//                                         ^^^ variable.other.java
//                                            ^ punctuation.section.group.end.java
//                                             ^ punctuation.terminator.java

  Function<Foo, Bar> BLOCK_LAMBDA = foo -> { return 1; };
//                   ^^^^^^^^^^^^ entity.name.constant.java
//                                ^ keyword.operator.assignment.java
//                                  ^^^ variable.parameter.java
//                                      ^^ keyword.declaration.function.arrow.java
//                                         ^ meta.block punctuation.section.block.begin
//                                           ^^^^^^ keyword.control.flow.return.java
//                                                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                   ^ punctuation.terminator.java
//                                                     ^ punctuation.section.block.end.java
//                                                      ^ punctuation.terminator.java

  Supplier<Foo> supplier = () -> true;
//                       ^ keyword.operator.assignment.java
//                         ^ punctuation.section.group.begin.java
//                          ^ punctuation.section.group.end.java
//                            ^^ keyword.declaration.function.arrow.java
//                               ^^^^ constant.language.boolean.true.java
//                                   ^ punctuation.terminator.java
}


/******************************************************************************
 * Annotation Tests
 *****************************************************************************/

@ClassName.FixMethodOrder( MethodSorters.NAME_ASCENDING )
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java - meta.annotation meta.annotation
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java - meta.annotation meta.annotation
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.parameters.java meta.group.java - meta.annotation meta.annotation
//^^^^^^^^ variable.annotation.namespace.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^^^^^^^^^^ variable.annotation.java
//                       ^ punctuation.section.group.begin.java
//                         ^^^^^^^^^^^^^ storage.type.class.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^^^^^^^^ constant.other.java
public class GrafoTest {
    @Override
//  ^^^^^^^^^ meta.annotation..identifier.java
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^ variable.annotation.java
    void test1() {
//       ^ entity.name.function
    }

    @Author(first = "Oompah", last
//  ^ meta.annotation.identifier.java
//   ^^^^^^ meta.annotation.identifier.java
//         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters.java
//  ^ punctuation.definition.annotation
//   ^^^^^^ variable.annotation.java
//         ^ punctuation.section.group.begin
//          ^^^^^ variable.parameter.java
//                ^ keyword.operator
//                  ^^^^^^^^ string
//                          ^ punctuation.separator.comma.java
//                            ^^^^ variable.parameter.java
        = "Loompah")
//^^^^^^^^^^^^^^^^^^ meta.annotation.parameters.java
//      ^ keyword.operator.assignment.java
//        ^^^^^^^^ string
//                 ^ punctuation.section.group.end
    void test2() {
//       ^ entity.name.function

        Grafo grafo = new Grafo( true );
        final Grafo temposMaisCedo = new Grafo( true );
//      ^ storage.modifier
//            ^ storage.type.class
    }


     @Partial @Mock(type=Grafo.class) DataLoader inline;
//   ^^^^^^^^                          meta.annotation
//            ^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//                                    ^ storage.type.class

     @Override public int inline() {
//   ^^^^^^^^^ meta.annotation
//   ^ punctuation.definition.annotation
//    ^^^^^^^^ variable.annotation
     }

     void annotatedArgs(@NonNull final String p1,
//                      ^^^^^^^^ meta.annotation
//                               ^ storage.modifier - meta.annotation
         @Named(value = "") List<T> p2, @NonNull final String p3) {}
//       ^^^^^^^^^^^^^^^^^^ meta.annotation
//                          ^ storage.type.class
//                              ^ meta.generic punctuation.definition.generic.begin
//                                  ^ variable.parameter
//                                    ^ punctuation.separator
//                                      ^^^^^^^^ meta.annotation
//                                               ^ storage.modifier - meta.annotation
//                                                     ^ storage.type.class

}

@MultiLineAnnotation(
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java variable.annotation.java
//                  ^ meta.class.java meta.annotation.parameters.java punctuation.section.group.begin.java
  foo = BAR,
//^^^ variable.parameter.java
//    ^ keyword.operator.assignment.java
//      ^ constant.other.java
//         ^ punctuation.separator.comma.java
  other = "foo"
//^^^^^ variable.parameter.java
//      ^ keyword.operator.assignment.java
//        ^ string
)
// <- meta.class.java meta.annotation.parameters.java punctuation.section.group.end.java
@fully.qualified.Annotation
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.namespace.java
//              ^ punctuation.accessor.dot.java
//                ^^^^^^^^^ variable.annotation.java
@fully.qualified.ParentClass.InnerAnnotation
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.namespace.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^^^ variable.annotation.namespace.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^^^^^^^^^^^^ variable.annotation.java
@fully.qualified
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
    .multiline.Annotation
//  ^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
        (foo = "bar")
//      ^^^^^^^^^^^^^ meta.class.java meta.annotation.parameters.java -meta.annotation.identifier.java
@FancyAnnotation({
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//              ^^ meta.class.java meta.annotation.parameters.java
  Foo.class,
//^^^ storage.type.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.class.java - storage.type.java
//         ^ punctuation.separator.comma.java
  Bar.class
//^^^ storage.type.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.class.java - storage.type.java
})
// <- punctuation.section.braces.end.java
 // <- meta.class.java meta.annotation.parameters.java punctuation.section.group.end.java
class Bàr {
//    ^^^ entity.name.class.java
  Bàr() {}
//^^^^^ meta.function
//^^^ entity.name.function.constructor.java
}

@AnnotationAsParameterSingle(
    @Parameter(name = "foo")
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^^ variable.annotation.java
//             ^^^^ variable.parameter.java
)

@AnnotationAsParameterSingleNamed(
  value = @Parameter(name = "foo")
//^^^^^ variable.parameter.java
//        ^ punctuation.definition.annotation.java
//         ^^^^^^^^ variable.annotation.java
//                   ^^^^ variable.parameter.java
)

@AnnotationAsParameterMultiple({
//                             ^ punctuation.section.braces.begin.java
    @Parameter(name = "foo"),
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^^ variable.annotation.java
//             ^^^^ variable.parameter.java

    @Parameter(name = "bar")
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^^ variable.annotation.java
//             ^^^^ variable.parameter.java
})
// <- punctuation.section.braces.end.java

@AnnotationAsParameterMultipleNamed(
  first  = {@Parameter(name = "foo"), @Parameter(name = "bar")},
//^^^^^ variable.parameter.java
//          ^ punctuation.definition.annotation.java
//           ^^^^^^^^^ variable.annotation.java
//                     ^^^^ variable.parameter.java
//                                    ^ punctuation.definition.annotation.java
//                                     ^^^^^^^^^ variable.annotation.java
//                                               ^^^^ variable.parameter.java
  second = {@Parameter(name = "foo"), @Parameter(name = "bar")},
//^^^^^^ variable.parameter.java
  third = @Parameter(name = "foo")
//^^^^^ variable.parameter.java
//         ^^^^^^^^^ variable.annotation.java
)

@SomeInterface
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java variable.annotation.java
public class Foo {
// <- meta.class.java storage.modifier.java
//^^^^ meta.class.java storage.modifier.java
//     ^^^^^ meta.class.java
//           ^^^ meta.class.identifier.java entity.name.class.java
//               ^ meta.class.java meta.block.java punctuation.section.block.begin.java

  FooBar MY_CONST = new FooBar();
//       ^^^^^^^^ entity.name.constant.java

  @Inject
//^ meta.annotation.identifier.java punctuation.definition.annotation.java
// ^^^^^^ meta.annotation.identifier.java variable.annotation.java
  public Foo(
//^ - meta.annotation
//       ^ meta.function
//       ^ entity.name.function.constructor
    // Comment for annotation
    @MyAnnotation FooType annotatedParam,
//  ^ meta.annotation.identifier.java punctuation.definition.annotation.java
//   ^^^^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java
//               ^ - meta.annotation.identifier.java - variable
//                ^ - meta.annotation.identifier.java
//                ^^^^^^^ storage.type.class.java
//                        ^^^^^^^^^^^^^^ variable.parameter.java
    String unannotatedParam) {
//  ^ storage.type.class.java
//         ^ variable.parameter.java
    return;
//  ^^^^^^ keyword.control.flow.return.java
  }

  public static void main(String[] args, String<List> moreArgs, a.b.c.Foo bar) {}
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.java
//                        ^^^^^^ storage.type.class.java
//                              ^^ storage.modifier.array.java
//                                 ^^^^ variable.parameter.java
//                                     ^ punctuation.separator.comma.java
//                                             ^^^^^^ meta.generic.java
//                                       ^^^^^^ storage.type.class.java
//                                              ^^^^ storage.type.class.java
//                                                    ^^^^^^^^ variable.parameter.java
//                                                                ^ variable.namespace.java
//                                                                 ^ punctuation.accessor.dot.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                    ^^^ storage.type.class.java
//                                                                        ^^^ variable.parameter.java

  MyClass myClass = new MyClass(
      SomeEnum.ENUM_VALUE,
      new OtherNewClass(),
      new OtherNestedClass(
          SomeEnum.ENUM_VALUE,
          new SuperNestedClass(param, 2)),
      anotherParam);

  Object foo = new TypeLiteral<
      StandardReferenceNumberProcessor<
          SimpleGenerateReferenceNumberOperation,
          SimpleSyncReferenceNumberOperation>>() {};

  Object bar = SomeStaticClass.newBuilder().doThings(1)
//                             ^^^^^^^^^^ meta.function-call.identifier.java
//                                       ^^ meta.function-call.arguments.java meta.group.java
//                                          ^^^^^^^^ meta.function-call.identifier.java
//                                                  ^^^ meta.function-call.arguments.java meta.group.java
//                             ^^^^^^^^^^ variable.function.java
//                                       ^ punctuation.section.group.begin.java
//                                        ^ punctuation.section.group.end.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^^^^^^ variable.function.java
//                                                  ^ punctuation.section.group.begin.java
//                                                   ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                    ^ punctuation.section.group.end.java
      .withString("I am a string");
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^^ meta.function-call.identifier.java
//               ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.group.java
//     ^^^^^^^^^^ variable.function.java
//               ^ punctuation.section.group.begin.java
//                ^^^^^^^^^^^^^^^ string.quoted.double.java
//                               ^ punctuation.section.group.end.java

  Object bah = someStaticMethodCall(4)
//             ^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.java
//                                 ^^^ meta.function-call.arguments.java meta.group.java
//             ^^^^^^^^^^^^^^^^^^^^ variable.function.java
//                                 ^ punctuation.section.group.begin.java
//                                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                   ^ punctuation.section.group.end.java
      .withString("I am a string");
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^^ meta.function-call.identifier.java
//               ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.group.java
//     ^^^^^^^^^^ variable.function.java
//               ^ punctuation.section.group.begin.java
//                ^^^^^^^^^^^^^^^ string.quoted.double.java
//                               ^ punctuation.section.group.end.java


/******************************************************************************
 * Operators Tests
 *****************************************************************************/

  int operatorsTests() {

    ==  !=  <=  >=  <>  <  >
//  ^^ keyword.operator.comparison.java
//      ^^ keyword.operator.comparison.java
//          ^^ keyword.operator.comparison.java
//              ^^ keyword.operator.comparison.java
//                  ^^ keyword.operator.comparison.java
//                      ^ keyword.operator.comparison.java
//                         ^ keyword.operator.comparison.java

    !  &&  ||
//  ^ keyword.operator.logical.java
//     ^^ keyword.operator.logical.java
//         ^^ keyword.operator.logical.java

    <<  >>  >>>  ~   &   |   ^
//  ^^ keyword.operator.bitwise.java
//      ^^ keyword.operator.bitwise.java
//          ^^^ keyword.operator.bitwise.java
//               ^ keyword.operator.bitwise.java
//                   ^ keyword.operator.bitwise.java
//                       ^ keyword.operator.bitwise.java
//                           ^ keyword.operator.bitwise.java

      ++  --  +   -   *   /   %
//    ^^ keyword.operator.arithmetic.java
//        ^^ keyword.operator.arithmetic.java
//            ^ keyword.operator.arithmetic.java
//                ^ keyword.operator.arithmetic.java
//                    ^ keyword.operator.arithmetic.java
//                        ^ keyword.operator.arithmetic.java
//                            ^ keyword.operator.arithmetic.java

    x = (e & 1) << c^2 >> 10;
//    ^ keyword.operator.assignment.java
//         ^ keyword.operator.bitwise.java
//              ^^ keyword.operator.bitwise.java
//                  ^ keyword.operator.bitwise.java
//                     ^^ keyword.operator.bitwise.java

    y = ~e >>> (c | 2);
//    ^ keyword.operator.assignment.java
//      ^ keyword.operator.bitwise.java
//         ^^^ keyword.operator.bitwise.java
//                ^ keyword.operator.bitwise.java

    z += x; z -= x; z *= x; z /= x; z %= x;
//    ^^ keyword.operator.assignment.augmented.java
//            ^^ keyword.operator.assignment.augmented.java
//                    ^^ keyword.operator.assignment.augmented.java
//                            ^^ keyword.operator.assignment.augmented.java
//                                    ^^ keyword.operator.assignment.augmented.java

    z &= x; z ^= x; z |= x; z <<= x; z >>= x; z >>>= x;
//    ^^ keyword.operator.assignment.augmented.java
//            ^^ keyword.operator.assignment.augmented.java
//                    ^^ keyword.operator.assignment.augmented.java
//                            ^^^ keyword.operator.assignment.augmented.java
//                                     ^^^ keyword.operator.assignment.augmented.java
//                                              ^^^^ keyword.operator.assignment.augmented.java

    b=e.a(b<b)> b?b:b;
//      ^ meta.function-call.identifier.java
//       ^^^^^ meta.function-call.arguments.java meta.group.java
//  ^ variable.other.java
//   ^ keyword.operator.assignment.java
//    ^ variable.other.java
//      ^ variable.function.java
//       ^ punctuation.section.group.begin.java
//        ^ variable.other.java
//         ^ keyword.operator.comparison.java
//          ^ variable.other.java
//           ^ punctuation.section.group.end.java
//            ^ keyword.operator.comparison.java
//              ^ variable.other.java
//               ^ keyword.operator.ternary.java
//                ^ variable.other.java
//                 ^ keyword.operator.ternary.java
//                  ^ variable.other.java

    b=e.a(b<b)>b?b:b;
//      ^ meta.function-call.identifier.java
//       ^^^^^ meta.function-call.arguments.java meta.group.java
//  ^ variable.other.java
//   ^ keyword.operator.assignment.java
//    ^ variable.other.java
//      ^ variable.function.java
//       ^ punctuation.section.group.begin.java
//        ^ variable.other.java
//         ^ keyword.operator.comparison.java
//          ^ variable.other.java
//           ^ punctuation.section.group.end.java
//            ^ keyword.operator.comparison.java
//             ^ variable.other.java
//              ^ keyword.operator.ternary.java
//               ^ variable.other.java
//                ^ keyword.operator.ternary.java
//                 ^ variable.other.java

    a[0] = true;
//  ^^^^ - meta.variable meta.variable
//  ^ meta.variable.identifier.java
//   ^^^ meta.variable.item-access.java meta.brackets.java
//  ^ variable.other.java
//   ^ punctuation.section.brackets.begin.java
//    ^ constant.numeric.value.java
//     ^ punctuation.section.brackets.end.java
//       ^ keyword.operator.assignment.java
//         ^^^^ constant.language.boolean.true.java
//             ^ punctuation.terminator.java

    a[0][0] = true;
//  ^^^^^^^ - meta.variable meta.variable
//  ^ meta.variable.identifier.java
//   ^^^^^^ meta.variable.item-access.java meta.brackets.java
//  ^ variable.other.java
//   ^ punctuation.section.brackets.begin.java
//    ^ constant.numeric.value.java
//     ^ punctuation.section.brackets.end.java
//      ^ punctuation.section.brackets.begin.java
//       ^ constant.numeric.value.java
//        ^ punctuation.section.brackets.end.java
//          ^ keyword.operator.assignment.java
//            ^^^^ constant.language.boolean.true.java
//                ^ punctuation.terminator.java

    a [ 0 ] [ 0 ] = true;
//  ^^^^^^^^^^^^^ - meta.variable meta.variable
//  ^^ meta.variable.identifier.java
//    ^^^^^ meta.variable.item-access.java meta.brackets.java
//         ^ meta.variable.item-access.java - meta.brackets
//          ^^^^^ meta.variable.item-access.java meta.brackets.java
//               ^^^^^^^^^ - meta.variable
//  ^ variable.other.java
//    ^ punctuation.section.brackets.begin.java
//      ^ constant.numeric.value.java
//        ^ punctuation.section.brackets.end.java
//          ^ punctuation.section.brackets.begin.java
//            ^ constant.numeric.value.java
//              ^ punctuation.section.brackets.end.java
//                ^ keyword.operator.assignment.java
//                  ^^^^ constant.language.boolean.true.java
//                      ^ punctuation.terminator.java

    a /**/ [ /**/ 0 /**/ ] /**/ [ /**/ 0 /**/ ] /**/ = /**/ true;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.variable meta.variable
//  ^^^^^^^ meta.variable.identifier.java
//         ^^^^^^^^^^^^^^^ meta.variable.item-access.java meta.brackets.java
//                        ^^^^^^ meta.variable.item-access.java - meta.brackets
//                              ^^^^^^^^^^^^^^^ meta.variable.item-access.java meta.brackets.java
//                                             ^^^^^ meta.variable.item-access.java - meta.brackets
//                                                  ^^^^^^^^^^^^^ - meta.variable
//  ^ variable.other.java
//         ^ punctuation.section.brackets.begin.java
//                ^ constant.numeric.value.java
//                       ^ punctuation.section.brackets.end.java
//                              ^ punctuation.section.brackets.begin.java
//                                     ^ constant.numeric.value.java
//                                            ^ punctuation.section.brackets.end.java
//                                                   ^ keyword.operator.assignment.java
//                                                          ^^^^ constant.language.boolean.true.java
//                                                              ^ punctuation.terminator.java

    a
//  ^^ meta.variable.identifier.java
//  ^ variable.other.java
    [
//^^ meta.variable.identifier.java
//  ^^ meta.variable.item-access.java meta.brackets.java
//  ^ punctuation.section.brackets.begin.java
    0
// ^^^ meta.variable.item-access.java meta.brackets.java
//  ^ constant.numeric.value.java
    ]
// ^^ meta.variable.item-access.java meta.brackets.java
//  ^ punctuation.section.brackets.end.java
    =
//  ^ keyword.operator.assignment.java
    true;
//  ^^^^ constant.language.boolean.true.java
//      ^ punctuation.terminator.java

    a.c = true;
// ^ - meta.variable
//  ^ meta.variable.identifier.java
//   ^ - meta.variable
//    ^ meta.variable.identifier.java
//     ^ - meta.variable
//  ^ variable.other.java
//   ^ punctuation.accessor.dot.java
//    ^ variable.other.java
//      ^ keyword.operator.assignment.java
//        ^^^^ constant.language.boolean.true.java
//            ^ punctuation.terminator.java

    a[0].c[1] = true;
// ^ - meta.variable
//  ^ meta.variable.identifier.java
//   ^^^ meta.variable.item-access.java meta.brackets.java
//      ^ - meta.variable
//       ^ meta.variable.identifier.java
//        ^^^ meta.variable.item-access.java meta.brackets.java
//           ^ - meta.variable
//  ^ variable.other.java
//   ^ punctuation.section.brackets.begin.java
//    ^ constant.numeric.value.java
//     ^ punctuation.section.brackets.end.java
//      ^ punctuation.accessor.dot.java
//       ^ variable.other.java
//        ^ punctuation.section.brackets.begin.java
//         ^ constant.numeric.value.java
//          ^ punctuation.section.brackets.end.java
//            ^ keyword.operator.assignment.java
//              ^^^^ constant.language.boolean.true.java
//                  ^ punctuation.terminator.java

    int foo = true ? 1 : 2;
//            ^^^^ constant.language.boolean.true.java
//                 ^ keyword.operator.ternary.java
//                   ^ meta.number.integer.decimal.java constant.numeric.value.java
//                     ^ keyword.operator.ternary.java
//                       ^ meta.number.integer.decimal.java constant.numeric.value.java
//                        ^ punctuation.terminator.java

    if (a == false) {}
//        ^^ keyword.operator.comparison.java

    if (this.scale<0) {
//  ^^ keyword.control.conditional.if.java
//     ^^^^^^^^^^^^^^ meta.group.java
//     ^ punctuation.section.group.begin
//          ^ punctuation.accessor.dot.java
//                ^ keyword.operator.comparison.java
//                 ^ meta.number.integer.decimal.java constant.numeric.value.java
//                   ^ - meta.group.java
    return foo<<32;
//  ^^^^^^ keyword.control.flow.return.java
//            ^^ keyword.operator.bitwise.java
//              ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                ^ punctuation.terminator.java
    }
//  ^ meta.block.java punctuation.section.block.end.java

    return foo<bar;
//  ^^^^^^ keyword.control.flow.return.java
//            ^ keyword.operator.comparison.java
  }
//^ meta.function.java punctuation.section.block.end.java
}


/******************************************************************************
 * Literals Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-3.html#jls-3.10
 *****************************************************************************/

class LiteralsTests {

  void hexadecimalFloatsTests() {

    a = 0x1. ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//          ^ - meta.number - constant
//      ^^^ - punctuation.separator
//         ^ punctuation.separator.decimal.java

    a = 0x.1a2f ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//             ^ - meta.number - constant
//      ^^ - punctuation.separator
//        ^ punctuation.separator.decimal.java

    a = 0x1.a2f ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//             ^ - meta.number - constant
//      ^^^ - punctuation.separator
//         ^ punctuation.separator.decimal.java
//          ^^^ - punctuation.separator

    a = 0x1ffp+1023 0x1ffp+_1023_ ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^^^^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//                 ^ - meta.number - constant
//                  ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//                    ^^^^^^^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//                               ^ - meta.number - constant
//      ^^^^^^^^^^^^^^^^^^^^^^^^^ - punctuation.separator

    a = 0xd.aP-1074 0x_1_f_._a_d_P-_10_74_ ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^^^^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//                 ^ - meta.number - constant
//                  ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//                    ^^^^^^^^^^^^^^^^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//                                        ^ - meta.number - constant
//      ^^^ - punctuation.separator
//         ^ punctuation.separator.decimal.java
//          ^^^^^^^^^^^^^^^ - punctuation.separator
//                         ^ punctuation.separator.decimal.java
//                          ^^^^^^^^^^^^^^ - punctuation.separator

    a = 0x.aap0 0x.aP+1 ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//             ^ - meta.number - constant
//              ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//                ^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//                     ^ - meta.number - constant

    a = 0x.aap0f 0x.aP-1F ;
//     ^ - meta.number - constant
//      ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//        ^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//             ^ meta.number.float.hexadecimal.java constant.numeric.suffix.java
//              ^ - meta.number - constant
//               ^^ meta.number.float.hexadecimal.java constant.numeric.base.java
//                 ^^^^^ meta.number.float.hexadecimal.java constant.numeric.value.java
//                      ^ meta.number.float.hexadecimal.java constant.numeric.suffix.java
//                       ^ - meta.number - constant
  }

  void decimalFloatsTests() {

    a = 0D + 12345D + 12345D + 12_34_5_D - _12_34_5D - 12a45D;
//      ^ meta.number.float.decimal.java constant.numeric.value.java
//       ^ meta.number.float.decimal.java constant.numeric.suffix.java
//           ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                    ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                         ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                             ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                     ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                         ^^^^^^^^^ - constant.numeric
//                                                     ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                       ^^^^ - constant.numeric

    a = 0F + 12345F + 12345F + 12_34_5_F - _12_34_5F - 12a45F;
//      ^ meta.number.float.decimal.java constant.numeric.value.java
//       ^ meta.number.float.decimal.java constant.numeric.suffix.java
//           ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                    ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                         ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                             ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                     ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                         ^^^^^^^^^ - constant.numeric
//                                                     ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                       ^^^^ - constant.numeric

    a = 1. + 1_. + 1_2. - _1.;
//      ^^ meta.number.float.decimal.java constant.numeric.value.java
//       ^ punctuation.separator.decimal.java
//           ^^^ meta.number.float.decimal.java constant.numeric.value.java
//             ^ punctuation.separator.decimal.java
//                 ^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                    ^ punctuation.separator.decimal.java
//                        ^^^ - constant.numeric

    a = 1.D + 1_.D + 1_2.D - _1.D;
//      ^^ meta.number.float.decimal.java constant.numeric.value.java
//       ^ punctuation.separator.decimal.java
//        ^ meta.number.float.decimal.java constant.numeric.suffix.java
//            ^^^ meta.number.float.decimal.java constant.numeric.value.java
//              ^ punctuation.separator.decimal.java
//               ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                   ^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                      ^ punctuation.separator.decimal.java
//                       ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                           ^^^^ - constant.numeric

    a = 1.2 + 1_.2_ + 1_2.3_4 + 1_2_._3_4_ - _1.5;
//      ^^^ meta.number.float.decimal.java constant.numeric.value.java
//       ^ punctuation.separator.decimal.java
//            ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//              ^ punctuation.separator.decimal.java
//                    ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                       ^ punctuation.separator.decimal.java
//                              ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                  ^ punctuation.separator.decimal.java
//                                           ^^ - constant.numeric
//                                             ^ punctuation.separator.decimal.java
//                                             ^^ meta.number.float.decimal constant.numeric.value.java

    a = 1.2d + 1_.2_d + 1_2.3_4d + 1_2_._3_4_d - _1.5d;
//      ^^^ meta.number.float.decimal.java constant.numeric.value.java
//       ^ punctuation.separator.decimal.java
//         ^ meta.number.float.decimal.java constant.numeric.suffix.java
//             ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//               ^ punctuation.separator.decimal.java
//                  ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                      ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                         ^ punctuation.separator.decimal.java
//                             ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                 ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                     ^ punctuation.separator.decimal.java
//                                           ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                               ^^ - constant.numeric
//                                                 ^ punctuation.separator.decimal.java
//                                                 ^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                   ^ meta.number.float.decimal.java constant.numeric.suffix.java

    a = 12e34 + 12e+3_ + 1_2e3_4 + 1_2_e3_4_ + 1_2_e_3_4 + 12e+34 + 12e-34 + 12e+3_4 - _12e34;
//      ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//              ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                       ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                 ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                             ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                         ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                  ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                           ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                     ^^^^^^ - constant.numeric

    a = 12e34f + 12e+3_f + 1_2e3_4f + 1_2_e3_4_f + 1_2_e_3_4f + 12e+34f + 12e-34f + 12e+3_4f - _12e34f;
//      ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//           ^ meta.number.float.decimal.java constant.numeric.suffix.java
//               ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                     ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                         ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                    ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                             ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                 ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                          ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                              ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                    ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                        ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                              ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                  ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                         ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                             ^^^^^^^ - constant.numeric

    a = 12.e34 + 12.e+3_ + 1_2.e3_4 + 1_2_.e3_4_ + 1_2_.e_3_4 + 12.e+34 + 12.e-34 + 12.e+3_4 - _12.e34;
//      ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.decimal.java
//               ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                 ^ punctuation.separator.decimal.java
//                         ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                            ^ punctuation.separator.decimal.java
//                                    ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                        ^ punctuation.separator.decimal.java
//                                                 ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                     ^ punctuation.separator.decimal.java
//                                                              ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                ^ punctuation.separator.decimal.java
//                                                                        ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                          ^ punctuation.separator.decimal.java
//                                                                                  ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                    ^ punctuation.separator.decimal.java
//                                                                                             ^^^^^^^ - constant.numeric

    a = 12.e34f + 12.e+3_f + 1_2.e3_4f + 1_2_.e3_4_f + 1_2_.e_3_4f + 12.e+34f + 12.e-34f + 12.e+3_4f - _12.e34f;
//      ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.decimal.java
//            ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                  ^ punctuation.separator.decimal.java
//                       ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                           ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                              ^ punctuation.separator.decimal.java
//                                   ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                       ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                           ^ punctuation.separator.decimal.java
//                                                 ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                     ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                         ^ punctuation.separator.decimal.java
//                                                               ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                   ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                     ^ punctuation.separator.decimal.java
//                                                                          ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                              ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                ^ punctuation.separator.decimal.java
//                                                                                     ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                         ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                           ^ punctuation.separator.decimal.java
//                                                                                                 ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                                     ^^^^^^^^ - constant.numeric

    a = 12.34e56 + 12_.34_e+5_ + 1_2.3_4e5_6 + 1_2_.3_4_e5_6_ + 1_2_._3_4e_5_6 + 12.34e+56 + 12.34e-56 + 12.34e+5_6 - _12.34e+5_6;
//      ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.decimal.java
//                 ^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                    ^ punctuation.separator.decimal.java
//                               ^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                  ^ punctuation.separator.decimal.java
//                                             ^^^^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                 ^ punctuation.separator.decimal.java
//                                                              ^^^^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                  ^ punctuation.separator.decimal.java
//                                                                               ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                 ^ punctuation.separator.decimal.java
//                                                                                           ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                             ^ punctuation.separator.decimal.java
//                                                                                                       ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                                         ^ punctuation.separator.decimal.java
//                                                                                                                    ^^^ - constant.numeric
//                                                                                                                       ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java

    a = 12.34e56f + 12_.34_e+5_f + 1_2.3_4e5_6f + 1_2_.3_4_e5_6_f + 1_2_._3_4e_5_6f + 12.34e+56f + 12.34e-56f + 12.34e+5_6f - _12.34e+5_6f;
//      ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.decimal.java
//              ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                  ^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                     ^ punctuation.separator.decimal.java
//                             ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                 ^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                    ^ punctuation.separator.decimal.java
//                                            ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                ^^^^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                    ^ punctuation.separator.decimal.java
//                                                              ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                  ^^^^^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                      ^ punctuation.separator.decimal.java
//                                                                                ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                    ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                      ^ punctuation.separator.decimal.java
//                                                                                             ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                                 ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                                   ^ punctuation.separator.decimal.java
//                                                                                                          ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                                              ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                                                ^ punctuation.separator.decimal.java
//                                                                                                                        ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                                                                                                                            ^^^ - constant.numeric
//                                                                                                                               ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                                                                       ^ meta.number.float.decimal.java constant.numeric.suffix.java

    a = .2 + .2_ + .3_4 + ._3_4_;
//      ^^ meta.number.float.decimal.java constant.numeric.value.java
//      ^ punctuation.separator.decimal.java
//           ^^^ meta.number.float.decimal.java constant.numeric.value.java
//           ^ punctuation.separator.decimal.java
//                 ^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                 ^ punctuation.separator.decimal.java
//                        ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                        ^ punctuation.separator.decimal.java

    a = .2d + .2_d + .3_4d + ._3_4_d;
//      ^^ meta.number.float.decimal.java constant.numeric.value.java
//      ^ punctuation.separator.decimal.java
//        ^ meta.number.float.decimal.java constant.numeric.suffix.java
//            ^^^ meta.number.float.decimal.java constant.numeric.value.java
//            ^ punctuation.separator.decimal.java
//               ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                   ^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                   ^ punctuation.separator.decimal.java
//                       ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                           ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                           ^ punctuation.separator.decimal.java
//                                 ^ meta.number.float.decimal.java constant.numeric.suffix.java

    a = .34e56 + .34_e+5_ + .3_4e5_6 + .3_4_e5_6_ + ._3_4e_5_6 + .34e+56 + .34e-56 + .34e+5_6;
//      ^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//      ^ punctuation.separator.decimal.java
//               ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//               ^ punctuation.separator.decimal.java
//                          ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                          ^ punctuation.separator.decimal.java
//                                     ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                     ^ punctuation.separator.decimal.java
//                                                  ^^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                  ^ punctuation.separator.decimal.java
//                                                               ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                               ^ punctuation.separator.decimal.java
//                                                                         ^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                         ^ punctuation.separator.decimal.java
//                                                                                   ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                                                                   ^ punctuation.separator.decimal.java

    a = 23.45 + 23.45F + 23.45d;
//      ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//        ^ punctuation.separator.decimal.java
//              ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                ^ punctuation.separator.decimal.java
//                   ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                       ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                         ^ punctuation.separator.decimal.java
//                            ^ meta.number.float.decimal.java constant.numeric.suffix.java

    a = .01 + .02e3+.02e3F;
//      ^^^ meta.number.float.decimal.java constant.numeric.value.java
//      ^ punctuation.separator.decimal.java
//          ^ keyword.operator
//            ^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                 ^ keyword.operator
//                   ^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                       ^ meta.number.float.decimal.java constant.numeric.suffix.java

    a = 23.45e67+23.45e+6F+23.45e-67D;
//      ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//              ^ keyword.operator
//               ^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                       ^ meta.number.float.decimal.java constant.numeric.suffix.java
//                        ^ keyword.operator
//                         ^^^^^^^^^ meta.number.float.decimal.java constant.numeric.value.java
//                                  ^ meta.number.float.decimal.java constant.numeric.suffix.java
  }

  void binaryIntegersTests() {

    a = 0b101101 + 0b10_11_01 + 0b10_11_01_ + 0b_101101 - 0_b10_1101 + 0b;
//      ^^ meta.number.integer.binary.java constant.numeric.base.java
//        ^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                 ^^ meta.number.integer.binary.java constant.numeric.base.java
//                   ^^^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                              ^^ meta.number.integer.binary.java constant.numeric.base.java
//                                ^^^^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                                            ^^ meta.number.integer.binary.java constant.numeric.base.java
//                                              ^^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                                                        ^ meta.number.integer.octal.java constant.numeric.base.java
//                                                         ^ meta.number.integer.octal.java constant.numeric.value.java
//                                                          ^^^^^^^^ - constant.numeric
//                                                                     ^^ meta.number.integer.binary.java constant.numeric.base.java

    a = 0b101101l + 0b10_11_01l + 0b10_11_01_l + 0b_101101l - 0_b10_1101l + 0bl;
//      ^^ meta.number.integer.binary.java constant.numeric.base.java
//        ^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//              ^ meta.number.integer.binary.java constant.numeric.suffix.java
//                  ^^ meta.number.integer.binary.java constant.numeric.base.java
//                    ^^^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                            ^ meta.number.integer.binary.java constant.numeric.suffix.java
//                                ^^ meta.number.integer.binary.java constant.numeric.base.java
//                                  ^^^^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                                           ^ meta.number.integer.binary.java constant.numeric.suffix.java
//                                               ^^ meta.number.integer.binary.java constant.numeric.base.java
//                                                 ^^^^^^^ meta.number.integer.binary.java constant.numeric.value.java
//                                                        ^ meta.number.integer.binary.java constant.numeric.suffix.java
//                                                            ^ meta.number.integer.octal.java constant.numeric.base.java
//                                                             ^ meta.number.integer.octal.java constant.numeric.value.java
//                                                              ^^^^^^^^^ - constant.numeric
//                                                                          ^^ meta.number.integer.binary.java constant.numeric.base.java
//                                                                            ^ meta.number.integer.binary.java constant.numeric.suffix.java
  }

  void hexadecimalIntegersTests() {

    a = 0xABCD + 0xAB_CD + 0xAB_CD_ + 0x_AB_CD - 0_xAB_CD - 0x;
//      ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//        ^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//             ^ keyword.operator.arithmetic.java
//               ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                 ^^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                       ^ keyword.operator.arithmetic.java
//                         ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                           ^^^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                                  ^ keyword.operator.arithmetic.java
//                                    ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                                      ^^^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                                             ^ keyword.operator.arithmetic.java
//                                               ^ meta.number.integer.octal.java constant.numeric.base.java
//                                                ^ meta.number.integer.octal.java constant.numeric.value.java
//                                                 ^^^^^^ - constant.numeric
//                                                        ^ keyword.operator.arithmetic.java
//                                                          ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java

    a = 0xABCDl + 0xAB_CDl + 0xAB_CD_l + 0x_AB_CDl - 0_xAB_CDl;
//      ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//        ^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//            ^ meta.number.integer.hexadecimal.java constant.numeric.suffix.java
//              ^ keyword.operator.arithmetic.java
//                ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                  ^^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                       ^ meta.number.integer.hexadecimal.java constant.numeric.suffix.java
//                         ^ keyword.operator.arithmetic.java
//                           ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                             ^^^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                                   ^ meta.number.integer.hexadecimal.java constant.numeric.suffix.java
//                                     ^ keyword.operator.arithmetic.java
//                                       ^^ meta.number.integer.hexadecimal.java constant.numeric.base.java
//                                         ^^^^^^ meta.number.integer.hexadecimal.java constant.numeric.value.java
//                                               ^ meta.number.integer.hexadecimal.java constant.numeric.suffix.java
//                                                 ^ keyword.operator.arithmetic.java
//                                                   ^ meta.number.integer.octal.java constant.numeric.base.java
//                                                    ^ meta.number.integer.octal.java constant.numeric.value.java
//                                                     ^^^^^^^ - constant.numeric
  }

  void octalIntegersTests() {

    a = 07 + 0_ + 0_7 + 07_ + 079 + 079_ + 0_79_ - 0a - 0_a;
//      ^ meta.number.integer.octal.java constant.numeric.base.java
//       ^ meta.number.integer.octal.java constant.numeric.value.java
//           ^ meta.number.integer.octal.java constant.numeric.base.java
//            ^ meta.number.integer.octal.java constant.numeric.value.java
//                ^ meta.number.integer.octal.java constant.numeric.base.java
//                 ^^ meta.number.integer.octal.java constant.numeric.value.java
//                      ^ meta.number.integer.octal.java constant.numeric.base.java
//                       ^^ meta.number.integer.octal.java constant.numeric.value.java
//                            ^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                            ^ invalid.illegal.numeric.java
//                                  ^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                  ^ invalid.illegal.numeric.java
//                                         ^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                         ^^ invalid.illegal.numeric.java
//                                                 ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                  ^ - constant.numeric
//                                                      ^ meta.number.integer.octal.java constant.numeric.base.java
//                                                       ^ meta.number.integer.octal.java constant.numeric.value.java
//                                                        ^ - constant.numeric

    a = 07l + 0_l + 0_7l + 07_l + 0792l + 079_2_l - 0al - 0_a_l;
//      ^ meta.number.integer.octal.java constant.numeric.base.java
//       ^ meta.number.integer.octal constant.numeric.value.java
//        ^ meta.number.integer.octal.java constant.numeric.suffix.java
//            ^ meta.number.integer.octal.java constant.numeric.base.java
//             ^ meta.number.integer.octal.java constant.numeric.value.java
//              ^ meta.number.integer.octal.java constant.numeric.suffix.java
//                  ^ meta.number.integer.octal.java constant.numeric.base.java
//                   ^^ meta.number.integer.octal.java constant.numeric.value.java
//                     ^ meta.number.integer.octal.java constant.numeric.suffix.java
//                         ^ meta.number.integer.octal.java constant.numeric.base.java
//                          ^^ meta.number.integer.octal.java constant.numeric.value.java
//                            ^ meta.number.integer.octal.java constant.numeric.suffix.java
//                                ^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                ^ invalid.illegal.numeric.java
//                                    ^ meta.number.integer.decimal.java constant.numeric.suffix.java
//                                        ^^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                        ^ invalid.illegal.numeric.java
//                                              ^ meta.number.integer.decimal.java constant.numeric.suffix.java
//                                                  ^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                   ^^ - constant.numeric
//                                                        ^ meta.number.integer.octal.java constant.numeric.base.java
//                                                         ^ meta.number.integer.octal.java constant.numeric.value.java
//                                                          ^^^ - constant.numeric
  }

  void decimalIntegersTests() {

    a = 0 + 0L;
//      ^ meta.number.integer.decimal.java constant.numeric.value.java
//          ^ meta.number.integer.decimal.java constant.numeric.value.java
//           ^ meta.number.integer.decimal.java constant.numeric.suffix.java

    a = 12345 + 12_34_5 + 1_____5 + 12_34_5_ - _12_34_5 - 12a45;
//      ^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//              ^^^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                        ^^^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                  ^^^^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                             ^^^^^^^^ - constant.numeric
//                                                        ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                          ^^^ - constant.numeric

    a = 12345l + 12345L + 12_34_5_L - _12_34_5L - 12a45L;
//      ^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//           ^ meta.number.integer.decimal.java constant.numeric.suffix.java
//               ^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                    ^ meta.number.integer.decimal.java constant.numeric.suffix.java
//                        ^^^^^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                ^ meta.number.integer.decimal.java constant.numeric.suffix.java
//                                    ^^^^^^^^^ - constant.numeric
//                                                ^^ meta.number.integer.decimal.java constant.numeric.value.java
//                                                  ^^^^ - constant.numeric

    a = 123_-_456;
//      ^^^^ meta.number.integer.decimal.java constant.numeric.value.java
//          ^ keyword.operator
//           ^^^^ - constant.numeric
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java

  void charLiteralTests() {

    char letter = 'x
//                ^^^ - constant - string

    char letter = 'X' + '1' + '%' + '+';
//                ^^^ meta.string.java string.quoted.single.java
//                ^ punctuation.definition.string.begin.java
//                 ^ constant.character.literal.java
//                  ^ punctuation.definition.string.end.java
//                      ^^^ meta.string.java string.quoted.single.java
//                      ^ punctuation.definition.string.begin.java
//                       ^ constant.character.literal.java
//                        ^ punctuation.definition.string.end.java
//                            ^^^ meta.string.java string.quoted.single.java
//                            ^ punctuation.definition.string.begin.java
//                             ^ constant.character.literal.java
//                              ^ punctuation.definition.string.end.java
//                                  ^^^ meta.string.java string.quoted.single.java
//                                  ^ punctuation.definition.string.begin.java
//                                   ^ constant.character.literal.java
//                                    ^ punctuation.definition.string.end.java

    char octalEscape = '\0' + '\12' + '\123' + '\077';
//                     ^^^^ meta.string.java string.quoted.single.java
//                     ^ punctuation.definition.string.begin.java
//                      ^^ constant.character.escape.octal.java
//                        ^ punctuation.definition.string.end.java
//                            ^^^^^ meta.string.java string.quoted.single.java
//                            ^ punctuation.definition.string.begin.java
//                             ^^^ constant.character.escape.octal.java
//                                ^ punctuation.definition.string.end.java
//                                    ^^^^^^ meta.string.java string.quoted.single.java
//                                    ^ punctuation.definition.string.begin.java
//                                     ^^^^ constant.character.escape.octal.java
//                                         ^ punctuation.definition.string.end.java
//                                             ^^^^^^ meta.string.java string.quoted.single.java
//                                             ^ punctuation.definition.string.begin.java
//                                              ^^^^ constant.character.escape.octal.java
//                                                  ^ punctuation.definition.string.end.java

    char otherEscape = '\b' + '\t' + '\n' + '\f' + '\r' + '\"' + '\'' + '\\';
//                     ^^^^ meta.string.java string.quoted.single.java
//                      ^^ constant.character.escape.other.java
//                            ^^^^ meta.string.java string.quoted.single.java
//                             ^^ constant.character.escape.other.java
//                                   ^^^^ meta.string.java string.quoted.single.java
//                                    ^^ constant.character.escape.other.java
//                                          ^^^^ meta.string.java string.quoted.single.java
//                                           ^^ constant.character.escape.other.java
//                                                 ^^^^ meta.string.java string.quoted.single.java
//                                                  ^^ constant.character.escape.other.java
//                                                        ^^^^ meta.string.java string.quoted.single.java
//                                                         ^^ constant.character.escape.other.java
//                                                               ^^^^ meta.string.java string.quoted.single.java
//                                                                ^^ constant.character.escape.other.java
//                                                                      ^^^^ meta.string.java string.quoted.single.java
//                                                                       ^^ constant.character.escape.other.java

    char unicodeEscape = '\u00e4' + '\uu00E4';
//                       ^^^^^^^^ meta.string.java string.quoted.single.java
//                       ^ punctuation.definition.string.begin.java
//                        ^^^^^^ constant.character.escape.unicode.java
//                              ^ punctuation.definition.string.end.java
//                                  ^^^^^^^^^ meta.string.java string.quoted.single.java
//                                  ^ punctuation.definition.string.begin.java
//                                   ^^^^^^^ constant.character.escape.unicode.java
//                                          ^ punctuation.definition.string.end.java

    char illegalEscapes = '\x' + '\+' + '\8' + '\9' + '\0111';
//                        ^^^^ invalid.illegal.not-a-char.java
//                               ^^^^ invalid.illegal.not-a-char.java
//                                      ^^^^ invalid.illegal.not-a-char.java
//                                             ^^^^ invalid.illegal.not-a-char.java
//                                                    ^^^^^^^ invalid.illegal.not-a-char.java
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java

  String stringLiteralTests() {

    String trippleQuotes = """
//                         ^^^ meta.string.java string.quoted.triple.java punctuation.definition.string.begin.java
        String with
        several lines.
        """;
//      ^^^ meta.string.java string.quoted.triple.java punctuation.definition.string.end.java
//         ^ punctuation.terminator.java - string

    String trippleQuotes = """illegal content
//                         ^^^ string.quoted.triple.java punctuation.definition.string.begin.java
//                            ^^^^^^^^^^^^^^^ string.quoted.triple.java invalid.illegal.unexpected-content.java
        String with
        several lines.""";
//      ^^^^^^^^^^^^^^^^^ string.quoted.triple.java
//                    ^^^ punctuation.definition.string.end.java
//                       ^ punctuation.terminator.java - string

    String doubleQuotes = "String with double quotes";
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.java string.quoted.double.java
//                        ^ punctuation.definition.string.begin.java
//                                                  ^ punctuation.definition.string.end.java

    String otherEscapes = "Here \b are \n some \t escaped \'\\' characters \"";
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.java string.quoted.double.java
//                        ^ punctuation.definition.string.begin.java
//                              ^^ constant.character.escape.other.java
//                                     ^^ constant.character.escape.other.java
//                                                        ^^^^ constant.character.escape.other.java
//                                                                         ^^ constant.character.escape.other.java
//                                                                           ^ punctuation.definition.string.end.java

    String octalEscape = "\0 \7 \8 \77 \377 \477"
//                       ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.java string.quoted.double.java
//                       ^ punctuation.definition.string.begin.java
//                        ^^ constant.character.escape.octal.java
//                          ^ - constant.character.escape
//                           ^^ constant.character.escape.octal.java
//                             ^^^^ - constant.character.escape
//                                 ^^^ constant.character.escape.octal.java
//                                    ^ - constant.character.escape
//                                     ^^^^ constant.character.escape.octal.java
//                                         ^ - constant.character.escape
//                                          ^^^ constant.character.escape.octal.java
//                                             ^ - constant.character.escape
//                                              ^ punctuation.definition.string.end.java

    String unicodeEscape = "\\u2122=\u2122 \uAF \u005cu005a \uu21AF"
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.java string.quoted.double.java
//                         ^ punctuation.definition.string.begin.java
//                          ^^^^^^^^ - constant.character.escape.unicode
//                                  ^^^^^^ constant.character.escape.unicode.java
//                                        ^^^^^^ - constant.character.escape.unicode
//                                              ^^^^^^ constant.character.escape.unicode.java
//                                                    ^^^^^^ - constant.character.escape.unicode
//                                                          ^^^^^^^ constant.character.escape.unicode.java
//                                                                 ^ punctuation.definition.string.end.java
//

    String illegalEscapes = "\x \+ \8 \9"
//                          ^^^^^^^^^^^^^ meta.string.java string.quoted.double.java
//                          ^ punctuation.definition.string.begin.java
//                           ^^ invalid.illegal.escape
//                              ^^ invalid.illegal.escape
//                                 ^^ invalid.illegal.escape
//                                    ^^ invalid.illegal.escape
//                                      ^ punctuation.definition.string.end.java

    String incompleteString = "String without closing quote
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.java string.quoted.double.java
//                            ^ punctuation.definition.string.begin.java
//                                                         ^ invalid.illegal.unexpected-newline
  }
//^ meta.class.java meta.block.java meta.function.java meta.block.java punctuation.section.block.end.java
}
// <- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Module Declaration Tests
 *****************************************************************************/

module java.base {
//^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
//     ^^^^^^^^^ meta.namespace.module.identifier.java meta.path.java
//              ^ meta.namespace.module.identifier - meta.path
//               ^^ meta.namespace.module.java meta.block.java
//^^^^ keyword.declaration.namespace.module.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java - entity - variable
//          ^^^^ entity.name.namespace.module.java
//               ^ punctuation.section.block.begin.java
  exports java;
//^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.exports.java
//            ^ meta.namespace.module.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^^ entity.name.namespace.package.java
//            ^ punctuation.terminator.java

  exports java.io;
//^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.exports.java
//        ^^^^^^^ meta.path.java
//               ^ meta.namespace.module.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java - entity - variable
//             ^^ entity.name.namespace.package.java
//               ^ punctuation.terminator.java

  exports jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.exports.java
//        ^^^^^^^^^^^^^^^^^ meta.path.java
//                             ^^^^^^^^^^^^ meta.path.java
//                                           ^^^^^^^^^ meta.path.java
//                                                    ^ meta.namespace.module.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java - entity - variable
//            ^^^^^^^^ variable.namespace.java
//                    ^ punctuation.accessor.dot.java - entity - variable
//                     ^^^^ entity.name.namespace.package.java
//                          ^^ keyword.other.module.to.java
//                             ^^^ variable.namespace.java
//                                ^ punctuation.accessor.dot.java - entity - variable
//                                 ^^^^^^^^ entity.name.namespace.module.java
//                                         ^ punctuation.separator.comma.java
//                                           ^^^ variable.namespace.java
//                                              ^ punctuation.accessor.dot.java - entity - variable
//                                               ^^^^^ entity.name.namespace.module.java
//                                                    ^ punctuation.terminator.java

  opens java.io;
//^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.opens.java
//             ^ meta.namespace.module.java meta.block.java - meta.opens
//^^^^^ keyword.other.module.opens.java
//      ^^^^  variable.namespace.java
//          ^ punctuation.accessor.dot.java - entity - variable
//           ^^ entity.name.namespace.package.java
//             ^ punctuation.terminator.java

  opens jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.opens.java
//                                                  ^ meta.namespace.module.java meta.block.java - meta.opens
//                        ^^ keyword.other.module.to.java
//                           ^^^ variable.namespace.java
//                              ^ punctuation.accessor.dot.java - entity - variable
//                               ^^^^^^^^ entity.name.namespace.module.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.namespace.java
//                                            ^ punctuation.accessor.dot.java - entity - variable
//                                             ^^^^^ entity.name.namespace.module.java
//                                                  ^ punctuation.terminator.java

  opens // incomplete to check if it affects the next statement

  uses java.security.Provider;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.uses.java
//^^^^ keyword.other.module.uses.java
//     ^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java - entity - variable
//          ^^^^^^^^ variable.namespace.java
//                  ^ punctuation.accessor.dot.java - entity - variable
//                   ^^^^^^^^ entity.name.class.java
//                           ^ punctuation.terminator.java

  provides java.nio.file.spi.FileSystemProvider<Base> with jdk.internal.jrtfs.JrtFileSystemProvider;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.provides.java
//^^^^^^^^^ - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                                   ^^^^^^ - meta.path
//                                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//^^^^^^^^ keyword.other.module.provides.java
//                                                    ^^^^ keyword.other.module.with.java
//                                                                                                 ^ punctuation.terminator.java

  provides incomplete.but.should.not.break.next.Statement;
//                                                       ^ punctuation.terminator.java

  provides sun.jvmstat.monitor.MonitoredHostService with
    sun.jvmstat.perfdata.monitor.protocol.file.MonitoredHostFileService,
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.provides.java meta.path.java
//                                                                     ^ punctuation.separator.comma.java
    sun.jvmstat.perfdata.monitor.protocol.local.MonitoredHostLocalService;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.provides.java meta.path.java

  requires java.xml;
//^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.requires.java
//                 ^ meta.namespace.module.java meta.block.java - meta.requires
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^ variable.namespace.java
//             ^ punctuation.accessor.dot.java - entity - variable
//              ^^^ entity.name.namespace.module.java
//                 ^ punctuation.terminator.java

  requires transitive javafx.base;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.requires.java
//                               ^ meta.namespace.module.java meta.block.java - meta.requires
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^^^^^^^ keyword.other.module.transitive.java
//                    ^^^^^^ variable.namespace.java
//                          ^ punctuation.accessor.dot.java - entity - variable
//                           ^^^^ entity.name.namespace.module.java
//                               ^ punctuation.terminator.java

}
//<- meta.namespace.module.java meta.block.java punctuation.section.block.end.java

open module open.module {}
//^^^^^^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
//          ^^^^^^^^^^^ meta.namespace.module.identifier.java meta.path.java
//                     ^ meta.namespace.module.identifier.java - meta.path
//                      ^^ meta.namespace.module.java meta.block.java
//^^ storage.modifier.java
//   ^^^^^^ keyword.declaration.namespace.module.java
//          ^^^^ variable.namespace.java
//              ^ punctuation.accessor.dot.java - entity - variable
//               ^^^^^^ entity.name.namespace.module.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

open module
//^^^^^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
    open
//  ^^^^ meta.namespace.module.identifier.java meta.path.java variable.namespace.java
    .
//  ^ meta.namespace.module.identifier.java meta.path.java punctuation.accessor.dot.java - entity - variable
    module
//  ^^^^^^ meta.namespace.module.identifier.java meta.path.java entity.name.namespace.module.java
    {
//  ^ meta.namespace.module.java meta.block.java punctuation.section.block.begin.java
    }
//  ^ meta.namespace.module.java meta.block.java punctuation.section.block.end.java
