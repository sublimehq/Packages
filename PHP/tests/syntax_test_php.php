// SYNTAX TEST "Packages/PHP/PHP.sublime-syntax"
<?php

/******************************************************************************
 * PHPDoc Tests
 *****************************************************************************/

/* ?> */
// <- comment.block.php punctuation.definition.comment.begin.php
//^^^^ comment.block.php - punctuation
//    ^^ comment.block.php punctuation.definition.comment.end.php

/* <?php ... ?> */
// <- comment.block.php punctuation.definition.comment.begin.php
//^^^^^^^^^^^^^^ comment.block.php - punctuation

// comment ?> <div>
//^^^^^^^^^^^ text.html.php meta.embedded.php
//           ^^^^^^^ text.html.php - meta.embedded
// ^^^^^^^^ comment.line.double-slash.php
//         ^^ punctuation.section.embedded.end.php

<?php

/**
//^ comment.block.documentation.phpdoc.php punctuation.definition.comment.begin.php
// ^ comment.block.documentation.phpdoc.php - punctuation
   */
//^ comment.block.php - punctuation
// ^^ comment.block.php punctuation.definition.comment.end.php

/**
   No longer a phpdoc comment since no leading *
 * @return
//   ^ comment.block - entity.name.tag.documentation.phpdoc
 */
// ^ source - comment.block

/**
    *
//  ^ comment.block.documentation.phpdoc.php punctuation.definition.comment.php
*/

/** @var Properties: class properties. */
//  ^ entity.name.tag.documentation.phpdoc
//       ^ - entity.name.tag.documentation.phpdoc

/** @var @var Properties: class properties. */
//  ^ entity.name.tag.documentation.phpdoc
//       ^ - entity.name.tag.documentation.phpdoc

/**@var Properties: class properties. */
// ^^^^ - entity.name.tag.documentation.phpdoc

/** @var@var Properties: class properties. */
//  ^^^^^^^^ - entity.name.tag.documentation.phpdoc

/* No phpdoc highlight since there are not two * after the opening /
 * @return
//   ^ comment.block - entity.name.tag.documentation.phpdoc
 */

/**
 * @access
// ^^^^^^^ entity.name.tag.documentation.phpdoc.php
 */

/**
 * @access public
// ^^^^^^^ entity.name.tag.documentation.phpdoc.php
//         ^^^^^^ storage.modifier.access.php
 */

/**
 * @access protected
// ^^^^^^^ entity.name.tag.documentation.phpdoc.php
//         ^^^^^^^^^ storage.modifier.access.php
 */

/**
 * @access private
// ^^^^^^^ entity.name.tag.documentation.phpdoc.php
//         ^^^^^^^ storage.modifier.access.php
 */

/**
 * @access priv
// ^^^^^^^ entity.name.tag.documentation.phpdoc.php
//         ^^^^ - storage
 */

/**
 * @xlink
// ^^^^^^ entity.name.tag.documentation.phpdoc.php
 */

/**
 * @xlink https://docs.phpdoc.org/latest/guide/references/phpdoc/inline-tags/link.html
// ^^^^^^ entity.name.tag.documentation.phpdoc.php
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
 */

/**
 * @link http://www.compressconsult.com/huffman/  Hinweise zum Algorithmus.
// ^^^^^ entity.name.tag.documentation.phpdoc.php
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
 */

/**
 * This is an inline {@link http://inline.com} in a comment.
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.phpdoc
//                   ^ punctuation.definition.tag.begin.phpdoc
//                    ^^^^^ entity.name.tag.documentation.phpdoc.php
//                          ^^^^^^^^^^^^^^^^^ markup.underline.link
//                                           ^ punctuation.definition.tag.end.phpdoc
 */

/**
 * This is an inline {@link http://inline.com description} in a comment.
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.phpdoc
//                   ^ punctuation.definition.tag.begin.phpdoc
//                    ^^^^^ entity.name.tag.documentation.phpdoc.php
//                          ^^^^^^^^^^^^^^^^^ markup.underline.link
//                                            ^^^^^^^^^^^ meta.label.phpdoc.php
//                                                       ^ punctuation.definition.tag.end.phpdoc
 */

/**
 * @api Methods: declares that elements are suitable for consumption by third parties.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @author Any: documents the author of the associated element.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @category File, Class: groups a series of packages together.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @copyright Any: documents the copyright information for the associated element.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @deprecated Any: indicates that the associated element is deprecated and can be removed in a future version.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @example Any: shows the code of a specified example file or, optionally, just a portion of it.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @filesource File: includes the source of the current file for use in the output.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @global Variable: informs phpDocumentor of a global variable or its usage.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @ignore Any: tells phpDocumentor that the associated element is not to be included in the documentation.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @internal Any: denotes that the associated elements is internal to this application or library and hides it by default.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @license File, Class: indicates which license is applicable for the associated element.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @link Any: indicates a relation between the associated element and a page of a website.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @method Class: allows a class to know which ‘magic’ methods are callable.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @package File, Class: categorizes the associated element into a logical grouping or subdivision.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @param Method, Function: documents a single argument of a function or method.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @property Class: allows a class to know which ‘magic’ properties are present.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @property-read Class: allows a class to know which ‘magic’ properties are present that are read-only.
//  ^^^^^^^^^^^^^ entity.name.tag.documentation.phpdoc
 */

/**
 * @property-write Class: allows a class to know which ‘magic’ properties are present that are write-only.
//  ^^^^^^^^^^^^^^ entity.name.tag.documentation.phpdoc
 */

/**
 * @return Method, Function: documents the return value of functions or methods.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @see Any: indicates a reference from the associated element to a website or other elements.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @since Any: indicates at which version the associated element became available.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @source Any, except File: shows the source code of the associated element.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @subpackage File, Class: categorizes the associated element into a logical grouping or subdivision.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @throws Method, Function: indicates whether the associated element could throw a specific type of exception.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @todo Any: indicates whether any development activity should still be executed on the associated element.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @uses Any: indicates a reference to (and from) a single associated element.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @var Properties: class properties.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @version Any: indicates the current version of Structural Elements.
//  ^ entity.name.tag.documentation.phpdoc
 */

/**
 * @after
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @afterClass
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @backupGlobals
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @backupStaticAttributes
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @before
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @beforeClass
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @codeCoverageIgnore
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @covers
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @coversDefaultClass
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @coversNothing
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @dataProvider
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @depends
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @doesNotPerformAssertions
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @expectedException
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @expectedExceptionCode
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @expectedExceptionMessage
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @expectedExceptionMessageRegExp
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @group
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @large
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @medium
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @preserveGlobalState
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @requires
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @runTestsInSeparateProcesses
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @runInSeparateProcess
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @small
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @test
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @testdox
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @testWith
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @ticket
//  ^ entity.name.tag.documentation.phpunit
 */

/**
 * @param @param
// ^^ entity.name.tag.documentation.phpdoc
//        ^^ - entity.name.tag.documentation.phpdoc
 */

/**
 * @param@param
// ^^^^^^^^^^^^ - entity.name.tag.documentation.phpdoc
 */

/**
 *@param
// ^ - entity.name.tag.documentation.phpdoc
 */

/**
 * PHP comment from issue #1378
 *
 * @see
 * @author
 * @package
 * @version
 NOTE: Modified */
//^^^^^^^^^^^^^^^^ comment.block - comment.block.documentation
//              ^^ punctuation.definition.comment.end
//                ^ - comment

<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation

{
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
}

[
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
]

<<<HEREDOC
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
HEREDOC

/******************************************************************************
 * Namespace Declarations Tests
 *****************************************************************************/

namespace MyNamespace;
// <- meta.namespace.php keyword.declaration.namespace.php
//^^^^^^^^^^^^^^^^^^^ meta.namespace.php - meta.path
//                   ^ - meta.namespace
//^^^^^^^ keyword.declaration.namespace.php
//        ^^^^^^^^^^^ entity.name.namespace.php
//                   ^ punctuation.terminator.statement.php - entity.name.namespace

namespace \MyNamespace;
// <- meta.namespace.php keyword.declaration.namespace.php
//^^^^^^^^ meta.namespace.php - meta.path
//        ^^^^^^^^^^^^ meta.namespace.php meta.path.php
//                    ^ - meta.namespace
//^^^^^^^ keyword.declaration.namespace.php
//        ^ punctuation.accessor.namespace.php
//         ^^^^^^^^^^^ entity.name.namespace.php
//                    ^ punctuation.terminator.statement.php - entity.name.namespace

namespace ParentNs\MyNamespace;
// <- meta.namespace.php keyword.declaration.namespace.php
//^^^^^^^^ meta.namespace.php - meta.path
//        ^^^^^^^^^^^^^^^^^^^^ meta.namespace.php meta.path.php
//                            ^ - meta.namespace
//^^^^^^^ keyword.declaration.namespace.php
//        ^^^^^^^^ variable.namespace.php
//                ^ punctuation.accessor.namespace.php
//                 ^^^^^^^^^^^ entity.name.namespace.php
//                            ^ punctuation.terminator.statement.php - entity.name.namespace

namespace \ParentNs\MyNamespace;
// <- meta.namespace.php keyword.declaration.namespace.php
//^^^^^^^^ meta.namespace.php - meta.path
//        ^^^^^^^^^^^^^^^^^^^^^ meta.namespace.php meta.path.php
//                             ^ - meta.namespace
//^^^^^^^ keyword.declaration.namespace.php
//        ^ punctuation.accessor.namespace.php
//         ^^^^^^^^ variable.namespace.php
//                 ^ punctuation.accessor.namespace.php
//                  ^^^^^^^^^^^ entity.name.namespace.php
//                             ^ punctuation.terminator.statement.php - entity.name.namespace


/******************************************************************************
 * Use Declarations Tests
 *****************************************************************************/

use
// <- meta.use.php keyword.declaration.use.php
//^ meta.use.php keyword.declaration.use.php

use \MyClass
// <- meta.use.php keyword.declaration.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^ meta.use.php meta.path.php
//          ^ meta.use.php - meta.path
//^ keyword.declaration.use.php
//  ^ punctuation.accessor.namespace.php
//   ^^^^^^^ support.class.php

use
    \MyClass
//^^ meta.use.php - meta.path
//  ^^^^^^^^ meta.use.php meta.path.php
//          ^ meta.use.php - meta.path
//  ^ punctuation.accessor.namespace.php
//   ^^^^^^^ support.class.php

use \FilterIterator
// <- meta.use.php keyword.declaration.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                 ^ meta.use.php - meta.path
//^ keyword.declaration.use.php
//  ^ punctuation.accessor.namespace.php
//   ^^^^^^^^^^^^^^ support.class.builtin.php

use MyNamespace\Foo ;
// <- meta.use.php keyword.declaration.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                 ^ meta.use.php - meta.path
//                  ^ - meta.use
//^ keyword.declaration.use.php
//  ^^^^^^^^^^^ variable.namespace.php
//             ^ punctuation.accessor.namespace.php
//              ^^^ support.class.php - constant - entity - support.function - support.other
//                  ^ punctuation.terminator.statement.php

use /* Comment */ \MyNamespace\Bar;
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                ^ - meta.use
//^ keyword.declaration.use.php
//  ^^^^^^^^^^^^^ comment.block.php
//                ^ punctuation.accessor.namespace.php
//                 ^^^^^^^^^^^ variable.namespace.php
//                            ^ punctuation.accessor.namespace.php
//                             ^^^ support.class.php - constant - entity - support.function - support.other
//                                ^ punctuation.terminator.statement.php

use /**/ My\Full\Classname /**/ as /**/ Another # Foo baz
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^ meta.use.php - meta.path
//       ^^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//^ keyword.declaration.use.php
//  ^^^^ comment.block.php
//       ^^ variable.namespace.php
//         ^ punctuation.accessor.namespace.php
//          ^^^^ variable.namespace.php
//              ^ punctuation.accessor.namespace.php
//               ^^^^^^^^^ support.class.php - constant - entity - support.function - support.other
//                         ^^^^ comment.block.php
//                              ^^ keyword.other.as.php
//                                 ^^^^ comment.block.php
//                                      ^^^^^^^ entity.name.class.php
//                                              ^^^^^^^^^^ comment.line.number-sign.php
, My\Full\NSname;
// <- meta.use.php punctuation.separator.sequence.php
//^^^^^^^^^^^^^^ meta.use.php meta.path.php
//              ^ - meta.use - meta.path
//^^ variable.namespace.php
//  ^ punctuation.accessor.namespace.php
//   ^^^^ variable.namespace.php
//       ^ punctuation.accessor.namespace.php
//        ^^^^^^ support.class.php - constant - entity - support.function - support.other
//              ^ punctuation.terminator.statement.php

use function /**/ some\nspace\fn_a;
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                ^ - meta.use - meta.path
//^ keyword.declaration.use.php
//  ^^^^^^^^ keyword.declaration.function.php
//           ^^^^ comment.block.php
//                ^^^^ variable.namespace.php
//                    ^ punctuation.accessor.namespace.php
//                      ^^^^^ variable.namespace.php
//                           ^ punctuation.accessor.namespace.php
//                            ^^^^ support.function.php - constant - entity support.class - support.other
//                                ^ punctuation.terminator.statement.php

use
    function /**/ some\nspace\fn_a;
//^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                ^ - meta.use - meta.path
//  ^^^^^^^^ keyword.declaration.function.php
//           ^^^^ comment.block.php
//                ^^^^ variable.namespace.php
//                    ^ punctuation.accessor.namespace.php
//                      ^^^^^ variable.namespace.php
//                           ^ punctuation.accessor.namespace.php
//                            ^^^^ support.function.php - constant - entity support.class - support.other
//                                ^ punctuation.terminator.statement.php

use /**/ function /**/ some\nspace\fn_a /**/ as /**/ fn_b;
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                     ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                     ^^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                                                       ^ - meta.use - meta.path
//^ keyword.declaration.use.php
//  ^^^^ comment.block.php
//       ^^^^^^^^ keyword.declaration.function.php
//                ^^^^ comment.block.php
//                     ^^^^ variable.namespace.php
//                         ^ punctuation.accessor.namespace.php
//                          ^^^^^^ variable.namespace.php
//                                ^ punctuation.accessor.namespace.php
//                                 ^^^^ support.function.php - constant - entity support.class - support.other
//                                      ^^^^ comment.block.php
//                                           ^^ keyword.other.as.php
//                                              ^^^^ comment.block.php
//                                                   ^^^^ entity.name.function.php
//                                                       ^ punctuation.terminator.statement.php

use const /**/ some\nspace\ConstValue /**/ as /**/ Foo;
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^^^^^^^ meta.use.php - meta.path
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                   ^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                                                    ^ - meta.use - meta.path
//^ keyword.declaration.use.php
//  ^^^^^ keyword.declaration.constant.php
//        ^^^^ comment.block.php
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.path.php
//             ^^^^ variable.namespace.php
//                 ^ punctuation.accessor.namespace.php
//                  ^^^^^^ variable.namespace.php
//                        ^ punctuation.accessor.namespace.php
//                         ^^^^^^^^^^ constant.other.php - support.function.php - entity.name - support.class.php - variable.namespace
//                                    ^^^^ comment.block.php
//                                         ^^ keyword.other.as.php
//                                            ^^^^ comment.block.php
//                                                 ^^^ entity.name.constant.php
//                                                    ^ punctuation.terminator.statement.php

use
    const /**/ some\nspace\ConstValue /**/
//^^^^^^^^^^^^^ meta.use.php - meta.path
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                   ^^^^^^ meta.use.php - meta.path
//  ^^^^^ keyword.declaration.constant.php
//        ^^^^ comment.block.php
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.path.php
//             ^^^^ variable.namespace.php
//                 ^ punctuation.accessor.namespace.php
//                  ^^^^^^ variable.namespace.php
//                        ^ punctuation.accessor.namespace.php
//                         ^^^^^^^^^^ constant.other.php - support.function.php - entity.name - support.class.php - variable.namespace
//                                    ^^^^ comment.block.php
    as /**/ Foo;
// ^^^^^^^^^^^^ meta.use.php - meta.path
//             ^ - meta.use - meta.path
//  ^^ keyword.other.as.php
//     ^^^^ comment.block.php
//          ^^^ entity.name.constant.php
//             ^ punctuation.terminator.statement.php

// Unfortunately we don't know if these identifiers are namespaces or classes
// so we can't disambiguate. Generally we are just going to assume an "as" is
// a class name so that the definition of the class can be found via the index.
use some\nspace\{ClassA, ClassB, ClassC as C};
// <- meta.use.php keyword.declaration.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^^^^^ meta.use.php meta.path.php - meta.sequence
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.sequence.list.php
//                                           ^ - meta.use - meta.path
//  ^^^^ variable.namespace.php
//      ^ punctuation.accessor.namespace.php
//       ^^^^^^ variable.namespace.php
//             ^ punctuation.accessor.namespace.php
//              ^ punctuation.section.sequence.begin.php
//               ^^^^^^ support.class.php - constant - entity - support.function - support.other
//                     ^ punctuation.separator.sequence.php
//                       ^^^^^^ support.class.php - constant - entity - support.function - support.other
//                             ^ punctuation.separator.sequence.php
//                               ^^^^^^ support.class.php - constant - entity - support.function - support.other
//                                      ^^ keyword.other.as.php
//                                         ^ entity.name.class.php
//                                          ^ punctuation.section.sequence.end.php
//                                           ^ punctuation.terminator.statement.php

use function some\nspace\{fn_d, fn_e, fn_f as fn_g};
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^^^^^ meta.use.php - meta.path
//           ^^^^^^^^^^^^ meta.use.php meta.path.php - meta.sequence
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.sequence.list.php
//                                                 ^ - meta.use - meta.path
//  ^^^^^^^^ keyword.declaration.function.php
//           ^^^^ variable.namespace.php
//               ^ punctuation.accessor.namespace.php
//                ^^^^^^ variable.namespace.php
//                      ^ punctuation.accessor.namespace.php
//                       ^ punctuation.section.sequence.begin.php
//                        ^^^^ support.function.php - constant - entity - support.class - support.other
//                            ^ punctuation.separator.sequence.php
//                              ^^^^ support.function.php - constant - entity - support.class - support.other
//                                  ^ punctuation.separator.sequence.php
//                                    ^^^^ support.function.php - constant - entity - support.class - support.other
//                                         ^^ keyword.other.as.php
//                                            ^^^^ entity.name.function.php
//                                                ^ punctuation.section.sequence.end.php
//                                                 ^ punctuation.terminator.statement.php

use const some\nspace\{ConstA, ConstB AS ConstD, TRUE};
// <- meta.use.php keyword.declaration.use.php
//^^^^^^^^ meta.use.php - meta.path
//        ^^^^^^^^^^^^ meta.use.php meta.path.php - meta.sequence
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.sequence.list.php
//                                                    ^ - meta.use - meta.path
//  ^^^^^ keyword.declaration.constant.php
//        ^^^^ variable.namespace.php
//            ^ punctuation.accessor.namespace.php
//             ^^^^^^ variable.namespace.php
//                   ^ punctuation.accessor.namespace.php
//                    ^ punctuation.section.sequence.begin.php
//                     ^^^^^^ constant.other - entity - support.class - support.function - support.other
//                           ^ punctuation.separator.sequence.php
//                             ^^^^^^ constant.other - entity - support.class - support.function - support.other
//                                    ^^ keyword.other.as.php
//                                       ^^^^^^ entity.name.constant.php - constant - support.class - support.function - support.other
//                                             ^ punctuation.separator.sequence.php
//                                               ^^^^ constant.language.boolean - entity - support.class - support.function - support.other
//                                                   ^ punctuation.section.sequence.end.php
//                                                    ^ punctuation.terminator.statement.php


/******************************************************************************
 * Annotation Tests
 *****************************************************************************/

  # [WithoutArgument]
//^^^^^^^^^^^^^^^^^^^ comment
  ##[WithoutArgument]
//^^^^^^^^^^^^^^^^^^^ comment

  #[WithoutArgument]
//^^ meta.annotation.php - comment
//  ^^^^^^^^^^^^^^^ meta.annotation.identifier.php
//                 ^ meta.annotation.php
//                  ^ - meta.annotation
//^^ punctuation.definition.annotation.begin.php
//  ^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                 ^ punctuation.definition.annotation.end.php
  #[WithoutArgument()]
//^^ meta.annotation.php
//  ^^^^^^^^^^^^^^^ meta.annotation.identifier.php
//                 ^^ meta.annotation.arguments.php meta.group.php
//                   ^ meta.annotation.php - meta.group
//                    ^ - meta.annotation
//^^ punctuation.definition.annotation.begin.php
//  ^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                 ^ punctuation.section.group.begin.php
//                  ^ punctuation.section.group.end.php
//                   ^ punctuation.definition.annotation.end
  #[SingleArgument(0)]
//^^ meta.annotation.php
//  ^^^^^^^^^^^^^^ meta.annotation.identifier.php
//                ^^^ meta.annotation.arguments.php meta.group.php
//                   ^ meta.annotation.php - meta.group
//                    ^ - meta.annotation
//^^ punctuation.definition.annotation.begin.php
//  ^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                ^ punctuation.section.group.begin.php
//                 ^ constant.numeric.value.php
//                  ^ punctuation.section.group.end.php
//                   ^ punctuation.definition.annotation.end
  #[FewArguments('Hello', 'World')]
//^^ meta.annotation.php
//  ^^^^^^^^^^^^ meta.annotation.identifier.php
//              ^^^^^^^^^^^^^^^^^^ meta.annotation.arguments.php meta.group.php
//                                ^ meta.annotation.php - meta.group
//                                 ^ - meta.annotation
//^^ punctuation.definition.annotation.begin.php
//  ^^^^^^^^^^^^ variable.annotation.php - meta.path
//              ^ punctuation.section.group.begin.php
//               ^^^^^^^ string.quoted.single.php
//                      ^ punctuation.separator.sequence.php
//                        ^^^^^^^ string.quoted.single.php
//                               ^ punctuation.section.group.end.php
//                                ^ punctuation.definition.annotation.end.php
  #[FewArguments(PDO::class, PHP_VERSION_ID), SecondOne(0)]
//^^ meta.annotation.php
//  ^^^^^^^^^^^^ meta.annotation.identifier.php
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.arguments.php meta.group.php
//                                          ^^ meta.annotation.php - meta.group
//                                            ^^^^^^^^^ meta.annotation.identifier.php - meta.group
//                                                     ^^^ meta.annotation.arguments.php meta.group.php
//                                                        ^ meta.annotation.php - meta.group
//                                                         ^ - meta.annotation
//^^ punctuation.definition.annotation.begin
//  ^^^^^^^^^^^^ variable.annotation.php - meta.path
//              ^ punctuation.section.group.begin.php
//               ^^^ support.class.builtin.php
//                  ^^ punctuation.accessor.double-colon.php
//                    ^^^^^ variable.language.class.java
//                         ^ punctuation.separator.sequence.php
//                           ^^^^^^^^^^^^^^ support.constant.core.php
//                                         ^ punctuation.section.group.end.php
//                                          ^ punctuation.separator.sequence.php
//                                            ^^^^^^^^^ variable.annotation.php
//                                                     ^ punctuation.section.group.begin.php
//                                                      ^ constant.numeric.value.php
//                                                       ^ punctuation.section.group.end.php
//                                                        ^ punctuation.definition.annotation.end.php
  #[\My\Attributes\FewArguments("foo", "bar")]
//^^ meta.annotation.php - meta.path - meta.group
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.php meta.path.php - meta.group
//                             ^^^^^^^^^^^^^^ meta.annotation.arguments.php meta.group.php - meta.path
//                                           ^ meta.annotation.php - meta.group
//                                            ^ - meta.annotation
//^^ punctuation.definition.annotation.begin
//  ^ punctuation.accessor.namespace.php
//   ^^ variable.namespace.php
//     ^ punctuation.accessor.namespace.php
//      ^^^^^^^^^^ variable.namespace.php
//                ^ punctuation.accessor.namespace.php
//                 ^^^^^^^^^^^^ variable.annotation.php
//                             ^ punctuation.section.group.begin.php
//                              ^^^^^ string.quoted.double.php
//                                   ^ punctuation.separator.sequence.php
//                                     ^^^^^ string.quoted.double.php
//                                          ^ punctuation.section.group.end.php
//                                           ^ punctuation.definition.annotation.end.php
/** docblock */
// <- comment.block
  #[BitShiftExample(4 >> 1, 4 << 1)]
//^^ meta.annotation.php
//  ^^^^^^^^^^^^^^^ meta.annotation.identifier.php
//                 ^^^^^^^^^^^^^^^^ meta.annotation.arguments.php meta.group.php
//                                 ^ meta.annotation.php - meta.group
//                                  ^ - meta.annotation
//^^ punctuation.definition.annotation.begin
//  ^^^^^^^^^^^^^^^ variable.annotation.php
//                 ^ punctuation.section.group.begin.php
//                  ^ constant.numeric.value.php
//                    ^^ keyword.operator.bitwise.php
//                       ^ constant.numeric.value.php
//                        ^ punctuation.separator.sequence.php
//                          ^ constant.numeric.value.php
//                            ^^ keyword.operator.bitwise.php
//                               ^ constant.numeric.value.php
//                                ^ punctuation.section.group.end.php
//                                 ^ punctuation.definition.annotation.end.php
function foo() {}
// <- keyword.declaration.function

  #[ExampleAttribute]
//^^^^^^^^^^^^^^^^^^^ meta.annotation
//^^ punctuation.definition.annotation.begin
//  ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                  ^ punctuation.definition.annotation.end
class Foo
{
    #[ExampleAttribute]
//  ^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^ punctuation.definition.annotation.begin
//    ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                    ^ punctuation.definition.annotation.end
    public const FOO = 'foo';

    #[ExampleAttribute]
//  ^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^ punctuation.definition.annotation.begin
//    ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                    ^ punctuation.definition.annotation.end
    #[ORM\Column("string", ORM\Column::UNIQUE)]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^ punctuation.definition.annotation.begin
//    ^^^^^^^^^^ meta.path
//              ^ punctuation.section.group.begin
//               ^^^^^^^^ string.quoted.double
//                       ^ punctuation.separator
//                         ^^^^^^^^^^ meta.path
//                                   ^^ punctuation.accessor.double-colon
//                                     ^^^^^^ constant.other
//                                           ^ punctuation.section.group.end
//                                            ^ punctuation.definition.annotation.end
    #[Assert\Email(["message" => "The email '{{ value }}' is not a valid email."])]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^ punctuation.definition.annotation.begin
//    ^^^^^^^^^^^^ meta.path
//                ^ punctuation.section.group.begin
//                 ^ punctuation.section.sequence.begin
//                  ^^^^^^^^^ string.quoted.double
//                            ^^ punctuation.separator.key-value.php
//                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                                                                              ^ punctuation.section.sequence.end
//                                                                               ^ punctuation.section.group.end
//                                                                                ^ punctuation.definition.annotation.end
    public $x;

    #[ExampleAttribute] // comment
//  ^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^ punctuation.definition.annotation.begin
//    ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                    ^ punctuation.definition.annotation.end
//                      ^^^^^^^^^^ comment
    public function foo(#[ExampleAttribute] \Foo\Bar $bar) { }
//                      ^^^^^^^^^^^^^^^^^^^ meta.annotation
//                      ^^ punctuation.definition.annotation.begin
//                        ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                                        ^ punctuation.definition.annotation.end
//                                          ^^^^^^^^ meta.path
//                                                   ^^^^ variable.parameter

    #[Route("/api/posts/{id}", methods: ["GET", "HEAD"])]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^^ punctuation.definition.annotation.begin
//    ^^^^^ variable.annotation.php - meta.path
//         ^ punctuation.section.group.begin
//                           ^ punctuation.separator
//                             ^^^^^^^ variable.parameter.named
//                                    ^ keyword.operator.assignment.php
//                                                     ^ punctuation.section.group.end
//                                                      ^ punctuation.definition.annotation.end
    public function show(int $id) { }
}

$object = new #[ExampleAttribute] class () { };
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php
//            ^^^^^^^^^^^^^^^^^^^ meta.annotation
//            ^^ punctuation.definition.annotation.begin
//              ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                              ^ punctuation.definition.annotation.end
//                                ^^^^^^ meta.class.php - meta.group - meta.block
//                                      ^^ meta.class.php meta.group - meta.block
//                                        ^ meta.class.php - meta.group - meta.block
//                                         ^^^ meta.class.php meta.block - meta.group
//                                ^^^^^ keyword.declaration.class.php
//                                      ^ punctuation.section.group.begin.php
//                                       ^ punctuation.section.group.end.php
//                                         ^ punctuation.section.block.begin.php
//                                           ^ punctuation.section.block.end.php

$f2 = #[ExampleAttribute] function () { };
//    ^^^^^^^^^^^^^^^^^^^ meta.annotation
//    ^^ punctuation.definition.annotation.begin
//      ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                      ^ punctuation.definition.annotation.end
//                        ^^^^^^^^ keyword.declaration.function

$f3 = #[ExampleAttribute] fn () => 1;
//    ^^^^^^^^^^^^^^^^^^^ meta.annotation
//    ^^ punctuation.definition.annotation.begin
//      ^^^^^^^^^^^^^^^^ variable.annotation.php - meta.path
//                      ^ punctuation.definition.annotation.end
//                        ^^ keyword.declaration.function
//                              ^^ keyword.declaration.function.arrow


/******************************************************************************
 * Class Declaration Tests
 *****************************************************************************/

    readonly class
//  ^^^^^^^^ storage.modifier.php
//           ^^^^^ meta.class.php keyword.declaration.class.php
//                ^ meta.class.php - keyword

    class Test1
//  ^^^^^^^^^^^^ meta.class.php - meta.block - meta.class meta.class
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php

    class Test2 extends implements {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                 ^^ meta.class.php meta.block.php
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^^^^^^^^^^ storage.modifier.implements.php

    readonly class Test3 extends stdClass implements Countable {}
// ^ - meta.class
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                                             ^^ meta.class.php meta.block.php
//  ^^^^^^^^ storage.modifier.php
//           ^^^^^ keyword.declaration.class.php
//                 ^^^^^ entity.name.class.php
//                       ^^^^^^^ storage.modifier.extends.php
//                               ^^^^^^^^ entity.other.inherited-class.php support.class.builtin.php - meta.path
//                                        ^^^^^^^^^^ storage.modifier.implements.php
//                                                   ^^^^^^^^^ entity.other.inherited-class.php support.class.builtin.php - meta.path

    class Test4 extends Foo, Bar implements Foo, Bar {}
// ^ - meta.class
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                                   ^^ meta.class.php meta.block.php
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^^^ entity.other.inherited-class.php
//                         ^ - punctuation
//                           ^^^ - entity
//                               ^^^^^^^^^^ storage.modifier.implements.php
//                                          ^^^ entity.other.inherited-class.php
//                                             ^ punctuation.separator.sequence.php
//                                               ^^^ entity.other.inherited-class.php
//                                                   ^ punctuation.section.block.begin.php
//                                                    ^ punctuation.section.block.end.php

    class Test5 extends \Foo\ implements \Bar\ {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                             ^^ meta.class.php meta.block.php
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^ punctuation.accessor.namespace.php
//                       ^^^ variable.namespace.php
//                          ^ punctuation.accessor.namespace.php
//                            ^^^^^^^^^^ storage.modifier.implements.php
//                                       ^ punctuation.accessor.namespace.php
//                                        ^^^ variable.namespace.php
//                                           ^ punctuation.accessor.namespace.php

    ABSTRACT CLASS /**/ #[Anno] /**/ Test6 /**/ EXTENDS /**/ #[Anno] /**/ \My\Foo /**/ IMPLEMENTS /**/ #[Anno] /**/ Bar /**/, /**/ Baz /**/ {  }
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php
//  ^^^^^^^^ storage.modifier.php
//           ^^^^^ keyword.declaration.class.php
//                 ^^^^ comment.block.php
//                      ^^^^^^^ meta.annotation
//                              ^^^^ comment.block.php
//                                   ^^^^^ entity.name.class.php
//                                         ^^^^ comment.block.php
//                                              ^^^^^^^ storage.modifier.extends.php
//                                                      ^^^^ comment.block.php
//                                                           ^^^^^^^ meta.annotation
//                                                                   ^^^^ comment.block.php
//                                                                        ^^^^^^^ meta.path.php
//                                                                        ^ punctuation.accessor.namespace.php
//                                                                         ^^ variable.namespace.php
//                                                                           ^ punctuation.accessor.namespace.php
//                                                                            ^^^ entity.other.inherited-class.php
//                                                                                ^^^^ comment.block.php
//                                                                                     ^^^^^^^^^^ storage.modifier.implements.php
//                                                                                                ^^^^ comment.block.php
//                                                                                                     ^^^^^^^ meta.annotation
//                                                                                                             ^^^^ comment.block.php
//                                                                                                                  ^^^ entity.other.inherited-class.php
//                                                                                                                      ^^^^ comment.block.php
//                                                                                                                          ^ punctuation.separator.sequence.php
//                                                                                                                            ^^^^ comment.block.php
//                                                                                                                                 ^^^ entity.other.inherited-class.php
//                                                                                                                                     ^^^^ comment.block.php
//                                                                                                                                          ^^^^ meta.block.php
//                                                                                                                                          ^ punctuation.section.block.begin.php
//                                                                                                                                             ^ punctuation.section.block.end.php

class ClassName extends /* */ \MyNamespace\Foo implements \MyNamespace\Baz {
// <- meta.class.php keyword.declaration.class.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                                                         ^^ meta.class.php meta.block.php
//^^^ keyword.declaration.class.php
//    ^^^^^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^^^^^ comment.block.php
//                            ^^^^^^^^^^^^^^^^ meta.path.php
//                            ^ punctuation.accessor.namespace.php
//                             ^^^^^^^^^^^ variable.namespace.php
//                                        ^ punctuation.accessor.namespace.php
//                                         ^^^ entity.other.inherited-class.php
//                                             ^^^^^^^^^^ storage.modifier.implements.php
//                                                        ^^^^^^^^^^^^^^^^ meta.path.php
//                                                        ^ punctuation.accessor.namespace.php
//                                                         ^^^^^^^^^^^ variable.namespace.php
//                                                                    ^ punctuation.accessor.namespace.php
//                                                                     ^^^ entity.other.inherited-class.php

    public function __construct(private \MyNamespace\Foo $val = DEFAULT_VALUE) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php meta.block.php - meta.block meta.block
//                                                                             ^^ meta.class.php meta.block.php meta.block.php
//                  ^^^^^^^^^^^ entity.name.function.constructor.php
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
//                              ^^^^^^^ storage.modifier
//                                      ^^^^^^^^^^^^^^^^ meta.path
//                                                       ^^^^ variable.parameter
//                                                            ^ keyword.operator.assignment
//                                                              ^^^^^^^^^^^^^ constant.other
    }
}


/******************************************************************************
 * Enum Declaration Tests
 *****************************************************************************/

enum
// <- constant.other.php
//^^ constant.other.php
//  ^ - constant

enum Suit ;
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^ - meta.enum meta.enum
//        ^ - meta.enum
//^^ keyword.declaration.enum.php
//  ^ - keyword - entity
//   ^^^^ entity.name.enum.php
//       ^ - entity - punctuation
//        ^ punctuation.terminator.statement.php

enum Suit : ;
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^ - meta.enum meta.enum
//          ^ - meta.enum
//^^ keyword.declaration.enum.php
//  ^ - keyword - entity
//   ^^^^ entity.name.enum.php
//       ^ - entity - punctuation
//        ^ punctuation.separator.colon.php
//         ^ - punctuation
//          ^ punctuation.terminator.statement.php

enum Suit {
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^ - meta.enum meta.enum, - meta.block meta.block
//^^^^^^^^ meta.enum.php - meta.block
//        ^^ meta.enum.php meta.block.php
//^^ keyword.declaration.enum
//  ^ - keyword - entity
//   ^^^^ entity.name.enum
//       ^ - entity - punctuation
    case Hearts;
//  ^^^^ keyword.control
//       ^^^^^^ entity.name.constant
//             ^ punctuation.terminator.statement.php
    CASE Diamonds;
//  ^^^^ keyword.control.php
//       ^^^^^^^^ entity.name.constant.php
//               ^ punctuation.terminator.statement.php
    case Clubs;
    case Spades;
}

enum Suit: extends Colorful {}
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.enum meta.enum, - meta.block meta.block
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.php - meta.block
//                          ^^ meta.enum.php meta.block.php
//       ^ punctuation.separator.colon.php
//         ^^^^^^^ invalid.illegal.disallowed.php
//                 ^^^^^^^^ - entity
//                          ^ punctuation.section.block.begin.php
//                           ^ punctuation.section.block.end.php

enum Suit: string extends Colorful {}
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.enum meta.enum, - meta.block meta.block
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.php - meta.block
//                                 ^^ meta.enum.php meta.block.php
//       ^ punctuation.separator.colon.php
//         ^^^^^^ storage.type.primitive.php
//                ^^^^^^^ invalid.illegal.disallowed.php
//                        ^^^^^^^^ - entity
//                                 ^ punctuation.section.block.begin.php
//                                  ^ punctuation.section.block.end.php

enum Suit: string | mixed extends Colorful {}
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.enum meta.enum, - meta.block meta.block
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.php - meta.block
//                                         ^^ meta.enum.php meta.block.php
//       ^ punctuation.separator.colon.php
//         ^^^^^^ storage.type.primitive.php
//                ^ punctuation.separator.type.union.php
//                  ^^^^^ storage.type.primitive.php
//                        ^^^^^^^ invalid.illegal.disallowed.php
//                                ^^^^^^^^ - entity
//                                         ^ punctuation.section.block.begin.php
//                                          ^ punctuation.section.block.end.php

enum Suit: string implements Colorful {
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.enum meta.enum, - meta.block meta.block
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.php - meta.block
//                                    ^^ meta.enum.php meta.block.php
// ^ keyword.declaration.enum.php
//   ^^^^ entity.name.enum.php
//       ^ punctuation.separator.colon.php
//         ^^^^^^ storage.type.primitive.php
//                ^^^^^^^^^^ storage.modifier.implements.php
//                           ^^^^^^^^ entity.other.inherited-class.php
//                                    ^ punctuation.section.block.begin.php
    case Hearts = 'H';
//  ^^^^ keyword.control
//       ^^^^^^ entity.name.constant
//              ^ keyword.operator.assignment
//                ^^^ string.quoted.single
    case Diamonds = 'D';
    case Clubs = 'C';
    case Spades = 'S';

    public function color(): string {
//  ^^^^^^ storage.modifier
//         ^^^^^^^^ keyword.declaration.function
//                  ^^^^^ entity.name.function
//                         ^ punctuation.separator
//                           ^^^^^^ storage.type.primitive.php
        return match($this) {
            Suit::Hearts, Suit::Diamonds => 'Red',
            Suit::Clubs, Suit::Spaces => 'Black',
        };
    }
}

enum Test1 extends Foo, Bar implements Foo, Bar {}
// <- meta.enum.php keyword.declaration.enum.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.enum meta.enum, - meta.block meta.block
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.php - meta.block
//                                              ^^ meta.enum.php meta.block.php
//^^ keyword.declaration.enum.php
//   ^^^^^ entity.name.enum.php
//         ^^^^^^^ invalid.illegal.disallowed.php
//                 ^^^ - entity
//                    ^ - punctuation
//                      ^^^ - entity
//                          ^^^^^^^^^^ storage.modifier.implements.php
//                                     ^^^ entity.other.inherited-class.php
//                                        ^ punctuation.separator.sequence.php
//                                          ^^^ entity.other.inherited-class.php
//                                              ^ punctuation.section.block.begin.php
//                                               ^ punctuation.section.block.end.php


/******************************************************************************
 * Interface Declaration Tests
 *****************************************************************************/

interface
// <- meta.interface.php keyword.declaration.interface.php
//^^^^^^^^ meta.interface.php - meta.block

interface MyInter {}
// <- meta.interface.php keyword.declaration.interface.php
//^^^^^^^^^^^^^^^^ meta.interface.php - meta.block
//                ^^ meta.interface.php meta.block.php
//        ^^^^^^^ entity.name.interface.php
//                ^ punctuation.section.block.begin.php
//                 ^ punctuation.section.block.end.php

interface MyInter implements Foo {}
// <- meta.interface.php keyword.declaration.interface.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.php - meta.block
//                               ^^ meta.interface.php meta.block.php
//        ^^^^^^^ entity.name.interface.php
//                ^^^^^^^^^^ invalid.illegal.disallowed.php
//                           ^^^ - entity - support
//                               ^ punctuation.section.block.begin.php
//                                ^ punctuation.section.block.end.php

interface MyInter2 extends \MyNamespace\Foo, /**/ \ArrayAccess {
// <- meta.interface.php keyword.declaration.interface.php
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.php - meta.block
//                                                             ^^ meta.interface.php meta.block.php
//^^^^^^^ keyword.declaration.interface.php
//        ^^^^^^^^ entity.name.interface.php
//                 ^^^^^^^ storage.modifier.extends.php
//                         ^^^^^^^^^^^^^^^^ meta.path.php
//                         ^ punctuation.accessor.namespace.php - entity - support
//                          ^^^^^^^^^^^ variable.namespace.php
//                                     ^ punctuation.accessor.namespace.php - entity - support
//                                      ^^^ entity.other.inherited-class.php
//                                         ^ punctuation.separator.sequence.php
//                                           ^^^^ comment.block.php
//                                                ^^^^^^^^^^^^ meta.path.php
//                                                ^ punctuation.accessor.namespace.php - entity - support
//                                                 ^^^^^^^^^^^ entity.other.inherited-class.php support.class.builtin.php
}


/******************************************************************************
 * Trait Declaration Tests
 *****************************************************************************/

trait
// <- meta.trait.php keyword.declaration.trait.php
//^^^ meta.trait.php keyword.declaration.trait.php
//   ^ meta.trait.php - keyword

trait A
// <- meta.trait.php keyword.declaration.trait.php
//^^^^^^ meta.trait.php
//^^^ keyword.declaration.trait.php
//    ^ entity.name.trait.php
{
// <- meta.trait.php meta.block.php punctuation.section.block.begin.php
}
// <- meta.trait.php meta.block.php punctuation.section.block.end.php


/******************************************************************************
 * Class Member Declaration Tests
 *****************************************************************************/

class B
// ^ keyword.declaration.class
//    ^ entity.name.class
{
    use MyNamespace\Xyz,
//  ^^^^ meta.class.php meta.block.php meta.use.php - meta.path
//      ^^^^^^^^^^^^^^^ meta.class.php meta.block.php meta.use.php meta.path.php
//                     ^^ meta.class.php meta.block.php meta.use.php - meta.path
//      ^^^^^^^^^^^ variable.namespace.php
//                 ^ punctuation.accessor.namespace.php
//                  ^^^ entity.other.inherited-class.php
//                     ^ punctuation.separator.sequence.php
    Y,
//  ^ meta.use entity.other.inherited-class - meta.path
    Z {
// ^^^ meta.class.php meta.block.php meta.use.php - meta.block meta.block
//  ^ entity.other.inherited-class.php - meta.path.php
//    ^^ meta.class.php meta.block.php meta.use.php meta.block.php
//    ^ punctuation.section.block.begin.php
        X::method1 as another1;
//      ^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//                ^^^^^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//      ^ support.class.php
//       ^^ punctuation.accessor.double-colon.php
//         ^^^^^^^ variable.function.php
//                 ^^ keyword.other.as.php
//                    ^^^^^^^^ entity.name.function.php
//                            ^ punctuation.terminator.statement.php
        Y::method2 insteadof X;
//      ^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//                ^^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//                           ^ meta.use.php meta.block.php - meta.path
//                            ^^ meta.use.php meta.block.php - meta.path
//      ^ support.class.php
//       ^^ punctuation.accessor.double-colon.php
//         ^^^^^^^ variable.function.php
//                 ^^^^^^^^^ keyword.other.insteadof
//                           ^ support.class.php
//                            ^ punctuation.terminator.statement.php
        X::method2 as another2;
//      ^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//                ^^^^^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//      ^ support.class.php
//       ^^ punctuation.accessor.double-colon.php
//         ^^^^^^^ - support.class
//                 ^^ keyword.other.as
//                    ^^^^^^^^ entity.name.function.php
//                            ^ punctuation.terminator.statement.php
        \Foo\Bar\X::method as another3;
//      ^^^^^^^^^^ meta.use.php meta.block.php meta.path.php
//                ^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//      ^ punctuation.accessor.namespace.php
//       ^^^ variable.namespace.php
//          ^ punctuation.accessor.namespace.php
//           ^^^ variable.namespace.php
//              ^ punctuation.accessor.namespace.php
//               ^ support.class.php
//                ^^ punctuation.accessor.double-colon.php
//                  ^^^^^^ variable.function.php
//                         ^^ keyword.other.as.php
//                            ^^^^^^^^ entity.name.function.php
//                                    ^ punctuation.terminator.statement.php
        parent::method as another4;
//      ^^^^^^ variable.language.super.php
//            ^^ punctuation.accessor.double-colon.php
//              ^^^^^^ variable.function.php
//                     ^^ keyword.other.as.php
//                        ^^^^^^^^ entity.name.function.php
//                                ^ punctuation.terminator.statement.php

    } protected $pro1;
//  ^ meta.class.php meta.block.php meta.use.php meta.block.php punctuation.section.block.end.php
//   ^^^^^^^^^^^^^^^^^^ meta.class.php meta.block.php - meta.use
//    ^ storage.modifier

    public const STR_1
//  ^^^^^^ storage.modifier
//         ^^^^^ keyword.declaration.constant.php
//               ^^^^^ entity.name.constant.php

    public
//  ^^^^^^ storage.modifier
      const
//    ^^^^^ keyword.declaration.constant.php
      STR_1
//    ^^^^^ entity.name.constant.php
      =
//    ^ keyword.operator.assignment.php
      '';
//    ^^ string.quoted.single.php

    public const STR_1 = '';
//  ^^^^^^ storage.modifier
//         ^^^^^ keyword.declaration.constant.php
//               ^^^^^ entity.name.constant.php
//                     ^ keyword.operator.assignment

    const STR_2 = '';
//  ^^^^^ keyword.declaration.constant.php
//        ^^^^^ entity.name.constant.php
//              ^ keyword.operator.assignment

    CONST #[attr] /**/ STR_3 = array();
//  ^^^^^ keyword.declaration.constant.php
//        ^^^^^^^ meta.annotation
//                ^^^^ comment.block.php
//                     ^^^^^ entity.name.constant.php
//                           ^ keyword.operator.assignment
//                             ^^^^^ support.function.array.php

    // typed class constants

    private const int A
//  ^^^^^^^ storage.modifier.access.php
//          ^^^^^ keyword.declaration.constant.php
//                ^^^ meta.type.php storage.type.primitive.php
//                    ^ entity.name.constant.php

    private const int A = 1;
//  ^^^^^^^ storage.modifier.access.php
//          ^^^^^ keyword.declaration.constant.php
//                ^^^ meta.type.php storage.type.primitive.php
//                    ^ entity.name.constant.php
//                      ^ keyword.operator.assignment.php
//                        ^ constant.numeric.value.php
//                         ^ punctuation.terminator.statement.php

    public const mixed B = 1;
//  ^^^^^^ storage.modifier.access.php
//         ^^^^^ keyword.declaration.constant.php
//               ^^^^^ meta.type.php storage.type.primitive.php
//                     ^ entity.name.constant.php
//                       ^ keyword.operator.assignment.php
//                         ^ constant.numeric.value.php
//                          ^ punctuation.terminator.statement.php

    public
//  ^^^^^^ storage.modifier.access.php
      const
//    ^^^^^ keyword.declaration.constant.php
      mixed
//    ^^^^^ meta.type.php storage.type.primitive.php
      B
//    ^ entity.name.constant.php
      =
//    ^ keyword.operator.assignment.php
      1;
//    ^ constant.numeric.value.php
//     ^ punctuation.terminator.statement.php

    public const Foo|Stringable|null D = null;
//  ^^^^^^ storage.modifier.access.php
//         ^^^^^ keyword.declaration.constant.php
//               ^^^^^^^^^^^^^^^^^^^ meta.block.php meta.type.php
//               ^^^ support.class.php
//                  ^ punctuation.separator.type.union.php
//                   ^^^^^^^^^^ support.class.builtin.php
//                             ^ punctuation.separator.type.union.php
//                              ^^^^ storage.type.primitive.php
//                                   ^ entity.name.constant.php
//                                     ^ keyword.operator.assignment.php
//                                       ^^^^ constant.language.null.php
//                                           ^ punctuation.terminator.statement.php

    public
//  ^^^^^^ storage.modifier.access.php
      const
//    ^^^^^ keyword.declaration.constant.php
      Foo|Stringable|null
//    ^^^^^^^^^^^^^^^^^^^ meta.block.php meta.type.php
//    ^^^ support.class.php
//       ^ punctuation.separator.type.union.php
//        ^^^^^^^^^^ support.class.builtin.php
//                  ^ punctuation.separator.type.union.php
//                   ^^^^ storage.type.primitive.php
      D
//    ^ entity.name.constant.php
      =
//    ^ keyword.operator.assignment.php
      null;
//    ^^^^ constant.language.null.php
//        ^ punctuation.terminator.statement.php

    public function __construct(
        public readonly int $val = 1
//      ^^^^^^ storage.modifier
//             ^^^^^^^^ storage.modifier
    ) {}

    public function __construct($val) {
//                  ^^^^^^^^^^^ entity.name.function.constructor.php support.function.magic.php
        $this->prop = $val;
    }

    public function __debugInfo() {
//                  ^^^^^^^^^^^ entity.name.function.php support.function.magic.php
        return [
            'propSquared' => $this->prop ** 2,
        ];
    }

    public function __toString()
//                  ^^^^^^^^^^ entity.name.function.php support.function.magic.php
//                            ^^ meta.function.parameters.php punctuation.section.group
    {
        return $this->prop;
    }

    public function __toStringTest()
//                  ^^^^^^^^^^^^^^ entity.name.function.php
//                                ^^ - entity.name.function.php
    {
        return $this->prop;
    }

    public function __test()
//                  ^^^^^^ entity.name.function.php
    {
    }

    public function abc(
//         ^ keyword.declaration.function
//                  ^ entity.name.function.php
        Foo|\Foo\Bar|?int $param1,
//      ^^^ support.class
//         ^ punctuation.separator.type
//          ^ punctuation.accessor.namespace
//           ^^^ variable.namespace
//              ^ punctuation.accessor.namespace
//               ^^^ support.class
//                  ^ punctuation.separator.type
//                   ^ storage.type.nullable
//                    ^^^ storage.type
//                        ^ punctuation.definition.variable
//                         ^^^^^^ variable.parameter
        Foo|\Foo\Bar|?int $param2,
//      ^^^ support.class
//         ^ punctuation.separator.type
//          ^ punctuation.accessor.namespace
//           ^^^ variable.namespace
//              ^ punctuation.accessor.namespace
//               ^^^ support.class
//                  ^ punctuation.separator.type
//                   ^ storage.type.nullable
//                    ^^^ storage.type
//                        ^ punctuation.definition.variable
//                         ^^^^^^ variable.parameter
        callable $param3,
//      ^^^^^^^^ storage.type
//               ^ punctuation.definition.variable
//                ^^^^^^ variable.parameter
        mixed $param3,
//      ^^^^^ storage.type
//            ^ punctuation.definition.variable
//             ^^^^^^ variable.parameter
        $param4
//      ^ punctuation.definition.variable
//       ^^^^^^ variable.parameter
    ): Foo|\Foo\Bar|?int|parent|self|static {}
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.return-type.php
//     ^^^ support.class
//        ^ punctuation.separator.type
//         ^ punctuation.accessor.namespace
//          ^^^ variable.namespace
//             ^ punctuation.accessor.namespace
//              ^^^ support.class
//                 ^ punctuation.separator.type
//                  ^ storage.type.nullable
//                   ^^^ storage.type
//                      ^ punctuation.separator.type
//                       ^^^^^^ variable.language.super.php
//                             ^ punctuation.separator.type.union.php
//                              ^^^^ variable.language.this.php
//                                  ^ punctuation.separator.type.union.php
//                                   ^^^^^^ variable.language.static.php
    {
        echo B::class;
//      ^^^^ support.function.builtin.php
//           ^ support.class.php
//            ^^ punctuation.accessor.double-colon.php
//              ^^^^^ variable.language.class.java

        echo $this->pro1::FOO;
//      ^^^^ support.function.builtin.php
//           ^^^^^ variable.language.this.php
//                ^^ punctuation.accessor
//                  ^^^^ variable.other.member
//                      ^^ punctuation.accessor.double-colon.php
//                        ^^^ constant.other.member.php

        print $this->pro1::bar();
//      ^^^^ support.function.builtin.php
//            ^^^^^ variable.language.this.php
//                 ^^ punctuation.accessor
//                   ^^^^ variable.other.member
//                       ^^ punctuation.accessor
//                         ^^^ variable.function

        parent
//      ^^^^^^ variable.language.super.php
        parent::abc($var, $var2, $var3);
//      ^^^^^^ variable.language.super.php
//            ^^ punctuation.accessor.double-colon.php
//              ^^^ variable.function.php

        self
//      ^^^^ variable.language.this.php
        self::abc($var, $var2, $var3);
//      ^^^^ variable.language.this.php
//          ^^ punctuation.accessor.double-colon.php
//            ^^^ variable.function.php

        static
//      ^^^^^^ storage.modifier.namespace.php
        static::abc($var, $var2, $var3);
//      ^^^^^^ variable.language.static.php
//            ^^ punctuation.accessor.double-colon.php
//              ^^^ variable.function.php

        $ClassName::abc($var, $var2, $var3);
//      ^^^^^^^^^^ variable.other.php
//                ^^ punctuation.accessor.double-colon.php
//                  ^^^ variable.function.php

        $this->undo();
//      ^^^^^ variable.language.this.php
//      ^ punctuation.definition.variable

        $var2 = 'test';
//      ^^^^^ variable.other
//      ^ punctuation.definition.variable

        foreach (A::B() as $c => $d) {}
        //        ^^ punctuation.accessor
        //          ^ variable.function
        //              ^^ keyword.other.as.php
        //                    ^^ punctuation.separator.key-value.php

        return new self();
//                 ^^^^ variable.language.this.php
    }
}


/******************************************************************************
 * Typed Property Tests
 * @link https://wiki.php.net/rfc/typed_properties_v2
 *****************************************************************************/

class TestTypedProperties {

    public ;
//  ^^^^^^ storage.modifier.access.php
//        ^^ - meta.type
//         ^ punctuation.terminator.statement.php

    public ( ;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php meta.group.php
//           ^ punctuation.terminator.statement.php - meta.type

    public ? ;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php
//         ^ storage.type.nullable.php
//           ^ punctuation.terminator.statement.php - meta.type

    public & ;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php
//         ^ punctuation.separator.type.intersection.php
//           ^ punctuation.terminator.statement.php - meta.type

    public | ;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php
//         ^ punctuation.separator.type.union.php
//           ^ punctuation.terminator.statement.php - meta.type

    public $var;
//  ^^^^^^ storage.modifier.access.php
//        ^^^^^ - meta.type
//         ^^^^ variable.other.php
//             ^ punctuation.terminator.statement.php

    public ( $var;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php meta.group.php
//           ^^^^^ - meta.type
//           ^^^^ variable.other.php
//               ^ punctuation.terminator.statement.php

    public ? $var;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php
//           ^^^^^ - meta.type
//         ^ storage.type.nullable.php
//           ^^^^ variable.other.php
//               ^ punctuation.terminator.statement.php

    public & $var;
//  ^^^^^^ storage.modifier.access.php
//        ^^^^^^^ - meta.type
//         ^ - punctuation.separator.type.intersection
//           ^^^^ variable.other.php
//               ^ punctuation.terminator.statement.php

    public | $var;
//  ^^^^^^ storage.modifier.access.php
//         ^^ meta.type.php
//           ^^^^^ - meta.type
//         ^ punctuation.separator.type.union.php
//           ^^^^ variable.other.php
//               ^ punctuation.terminator.statement.php


    public static ?Foo $str = '';
//  ^^^^^^ storage.modifier.access.php
//         ^^^^^^ storage.modifier.namespace.php
//                ^ storage.type.nullable.php
//                 ^^^ support.class.php
//                     ^ variable.other.php punctuation.definition.variable.php
//                      ^^^ variable.other.php - punctuation
//                          ^ keyword.operator.assignment.php
//                            ^^ string.quoted.single.php

    protected int $int = 0;
//  ^^^^^^^^^ storage.modifier.access.php
//            ^^^ storage.type.primitive.php
//                ^^^^ variable.other.php
//                     ^ keyword.operator.assignment.php
//                       ^ constant.numeric.value.php
//                        ^ punctuation.terminator.statement.php

    private bool $bool = TRUE;
//  ^^^^^^^ storage.modifier.access.php
//          ^^^^ storage.type.primitive.php
//               ^^^^^ variable.other.php
//                     ^ keyword.operator.assignment.php
//                       ^^^^ constant.language.boolean.true.php
//                           ^ punctuation.terminator.statement.php
    private readonly $prop;
//          ^^^^^^^^ storage.modifier

    // All types with the exception of "void" and "callable" are supported
    public int $scalarType;
//  ^^^^^^ storage.modifier.access.php
//         ^^^ storage.type.primitive.php
//             ^^^^^^^^^^^ variable.other.php

    protected ClassName $classType;
//  ^^^^^^^^^ storage.modifier.access.php
//            ^^^^^^^^^ support.class.php
//                      ^^^^^^^^^^ variable.other.php

    private ?ClassName $nullableClassType;
//  ^^^^^^^ storage.modifier.access.php
//          ^ storage.type.nullable.php
//           ^^^^^^^^^ support.class.php
//                     ^^^^^^^^^^ variable.other.php

    // Types are also legal on static properties
    public static iterable $staticProp;
//  ^^^^^^ storage.modifier.access.php
//         ^^^^^^ storage.modifier.namespace.php
//                ^^^^^^^^ storage.type.primitive.php
//                         ^^^^^^^^^^^ variable.other.php

    // Types can also be used with the "var" notation
    var bool $flag;
//  ^^^ keyword.declaration.variable.php
//      ^^^^ storage.type.primitive.php
//           ^^^^^ variable.other.php

    // Typed properties may have default values
    public string $str = "foo";
//  ^^^^^^ storage.modifier.access.php
//         ^^^^^^ storage.type.primitive.php
//                ^^^^ variable.other.php
//                     ^ keyword.operator.assignment.php
//                       ^^^^^ string.quoted.double.php

    public ?string $nullableStr = null;
//  ^^^^^^ storage.modifier.access.php
//         ^ storage.type.nullable.php
//          ^^^^^^ storage.type.primitive.php
//                 ^^^^^^^^^^^^ variable.other.php
//                              ^ keyword.operator.assignment.php
//                                ^^^^ constant.language.null.php

    // The type applies to all properties in one declaration
    public float $x, $y;
//  ^^^^^^ storage.modifier.access.php
//         ^^^^^ storage.type.primitive.php
//               ^^ variable.other.php
//                 ^ punctuation.separator.sequence.php
//                   ^^ variable.other.php

    public static ?Foo|\My\Bar|int $str = '';
//  ^^^^^^ storage.modifier
//         ^^^^^^ storage.modifier
//                ^ storage.type.nullable
//                 ^^^ support.class
//                    ^ punctuation.separator.type
//                     ^ punctuation.accessor.namespace
//                      ^^ variable.namespace
//                        ^ punctuation.accessor.namespace
//                         ^^^ support.class
//                            ^ punctuation.separator.type
//                             ^^^ storage.type
//                                 ^ punctuation.definition.variable
//                                  ^^^ variable.other
//                                      ^ keyword.operator.assignment
}


/******************************************************************************
 * Function Declaration Tests
 *****************************************************************************/

function
// <- keyword.declaration.function.php

function a
// <- meta.function.php keyword.declaration.function.php
//^^^^^^^^^ meta.function.php
//^^^^^^ keyword.declaration.function.php
//       ^ entity.name.function.php

function a($a = array(),             $b = "hi") {};
//^^^^^^^^ meta.function.php
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.php meta.group.php
//                                             ^ meta.function.php - meta.block - meta.group
//                                              ^^ meta.function.php meta.block.php
//^^^^^^ keyword.declaration.function.php
//       ^ entity.name.function.php
//        ^ punctuation.section.group.begin.php
//         ^^ variable.parameter.php
//            ^ keyword.operator.assignment.php
//              ^^^^^ support.function.array.php
//                   ^ punctuation.section.group.begin.php
//                    ^ punctuation.section.group.end.php
//                     ^ punctuation.separator.sequence.php
//                                   ^^ variable.parameter.php
//                                      ^ keyword.operator.assignment.php
//                                        ^^^^ meta.string.php string.quoted.double.php
//                                            ^ punctuation.section.group.end.php
//                                              ^ punctuation.section.block.begin.php
//                                               ^ punctuation.section.block.end.php
//                                                ^ punctuation.terminator.statement.php

function b($a = [],                  $b = "hi") {};
function c(array $a = array(),       $b = "hi") {};
//                    ^^^^^ meta.function-call.identifier.php support.function.array.php
//                         ^ meta.function-call.arguments.php punctuation.section.group.begin.php
//                          ^ meta.function-call.arguments.php punctuation.section.group.end.php

function d(array $a = [],            $b = "hi") {};
//                    ^ punctuation.section.sequence.begin
//                     ^ punctuation.section.sequence.end

function e(array $a = [1, 2, 3, 4],  $b = "hi") {};
//                    ^ punctuation.section.sequence.begin
//                               ^ punctuation.section.sequence.end

function f(array $a = null,          $b = "hi") {};
function i(
    $a,
//  ^^ variable.parameter
//    ^ punctuation.separator
    $b
//  ^^ variable.parameter
) {};


function array_values_from_keys($arr, $keys) {
    return array_map(fn($x) => $arr[$x], $keys, fn($x) => $arr[$x]);
//         ^^^^^^^^^ meta.function-call.identifier.php
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//                   ^^ meta.function.anonymous.php
//                     ^^^^ meta.function.anonymous.parameters.php meta.group.php
//                         ^^^^^^^^^^^^ meta.function.anonymous.php
//                                     ^^^^^^^^^ - meta.function.anonymous
//                                              ^^ meta.function.anonymous.php
//                                                ^^^^ meta.function.anonymous.parameters.php meta.group.php
//                                                    ^^^^^^^^^^^^ meta.function.anonymous.php
//                                                                ^ - meta.function.anonymous
//                                                                 ^ - meta.function-call
//                   ^^ keyword.declaration.function.php
//                     ^ punctuation.section.group.begin.php
//                      ^^ variable.parameter.php
//                        ^ punctuation.section.group.end.php
//                          ^^ keyword.declaration.function.arrow.php
//                                     ^ punctuation.separator.sequence.php
//                                              ^^ keyword.declaration.function.php
//                                                ^ punctuation.section.group.begin.php
//                                                 ^^ variable.parameter.php
//                                                   ^ punctuation.section.group.end.php
//                                                     ^^ keyword.declaration.function.arrow.php
//                                                                ^ punctuation.section.group.end.php
//                                                                 ^ punctuation.terminator.statement.php
}

$fn = fn($x) => fn($y) => $x * $y + $z;
//    ^^^^^^^^^^ - meta.function meta.function
//    ^^ meta.function.anonymous.php
//      ^^^^ meta.function.anonymous.parameters.php meta.group.php
//          ^^^^ meta.function.anonymous.php
//              ^^ meta.function.anonymous.php meta.function.anonymous.php
//              ^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function meta.function
//                ^^^^ meta.function.anonymous.parameters.php meta.group.php
//                    ^^^^^^^^^^^^^^^^ meta.function.anonymous.php meta.function.anonymous.php
//                                    ^ - meta.function
//    ^^ keyword.declaration.function.php
//      ^ punctuation.section.group.begin.php
//       ^^ variable.parameter.php
//         ^ punctuation.section.group.end.php
//           ^^ keyword.declaration.function.arrow.php
//              ^^ keyword.declaration.function.php
//                ^ punctuation.section.group.begin.php
//                 ^^ variable.parameter.php
//                   ^ punctuation.section.group.end.php
//                     ^^ keyword.declaration.function.arrow.php
//                                    ^ punctuation.terminator.statement.php

$fn = fn ($value): bool => true;
//    ^^^ meta.function.anonymous.php
//       ^^^^^^^^ meta.function.anonymous.parameters.php meta.group.php
//               ^^^^^^^ meta.function.anonymous.return-type.php
//                      ^^^^^^^ meta.function.anonymous.php
//                             ^ - meta.function
//    ^^ keyword.declaration.function.php
//       ^ punctuation.section.group.begin.php
//        ^^^^^^ variable.parameter.php
//              ^ punctuation.section.group.end.php
//               ^ punctuation.separator.colon.php
//                 ^^^^ storage.type.primitive.php
//                      ^^ keyword.declaration.function.arrow.php
//                         ^^^^ constant.language.boolean.true.php
//                             ^ punctuation.terminator.statement.php

$fn = fn ($x): stringSpace\Test1 => null;
//    ^^^ meta.function.anonymous.php
//       ^^^^ meta.function.anonymous.parameters.php meta.group.php
//           ^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.return-type.php
//                               ^^^^^^^ meta.function.anonymous.php
//                                      ^ - meta.function
//    ^^ keyword.declaration.function.php
//       ^ punctuation.section.group.begin.php
//        ^^ variable.parameter.php
//          ^ punctuation.section.group.end.php
//           ^ punctuation.separator.colon.php
//             ^^^^^^^^^^^^^^^^^ meta.path.php
//             ^^^^^^^^^^^ variable.namespace.php
//                        ^ punctuation.accessor.namespace.php
//                         ^^^^^ support.class.php
//                               ^^ keyword.declaration.function.arrow.php
//                                  ^^^^ constant.language.null.php
//                                      ^ punctuation.terminator.statement.php

$var = fn($x)
//     ^^ meta.function.anonymous.php
//       ^^^^ meta.function.anonymous.parameters.php meta.group.php
//           ^ meta.function.anonymous.php
//     ^^ keyword.declaration.function.php
//       ^ punctuation.section.group.begin.php
//        ^^ variable.parameter.php
//          ^ punctuation.section.group.end.php
   => $x * 2;
//^^^^^^^^^^ meta.function.anonymous.php
//          ^ - meta.function
// ^^ keyword.declaration.function.arrow
//          ^ punctuation.terminator.statement.php

$var = fn($x)
//     ^^ meta.function-call.identifier.php - meta.function.anonymous
//     ^^ variable.function.php - keyword.declaration.function
;

$var = fn($foo) => return $foo;
//     ^^^^^^^^^^^^ meta.function.anonymous
//                 ^^^^^^^^^^^^^ - meta.function

$var = function(array $ar=array(), ClassName $cls) use ($var1, &$var2) {
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//     ^^^^^^^^ meta.function.php - meta.group
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.php meta.group.php
//                                                ^ meta.function.php
//                                                 ^^^^ meta.function.use.php - meta.group
//                                                     ^^^^^^^^^^^^^^^ meta.function.use.php meta.group.php
//                                                                    ^ meta.function.php - meta.block
//                                                                     ^^ meta.function.php meta.block.php
//     ^^^^^^^^ keyword.declaration.function.php
//             ^ meta.group.php punctuation.section.group.begin.php
//              ^^^^^ storage.type.primitive.php
//                    ^^^ variable.parameter.php
//                       ^ keyword.operator.assignment.php
//                        ^^^^^ support.function.array.php
//                             ^ punctuation.section.group.begin.php
//                              ^ punctuation.section.group.end.php
//                               ^ punctuation.separator.sequence.php
//                                 ^^^^^^^^^ support.class.php
//                                           ^^^^ variable.parameter.php
//                                               ^ punctuation.section.group.end.php
//                                                 ^^^ keyword.declaration.use.php
//                                                     ^ punctuation.section.group.begin.php
//                                                      ^^^^^ variable.other.php
//                                                           ^ punctuation.separator.sequence.php
//                                                             ^ keyword.operator.reference.php
//                                                              ^^^^^ variable.other.php
//                                                                   ^ punctuation.section.group.end.php
//                                                                     ^ punctuation.section.block.begin.php

   some_function(fn() => throw $exception);
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//                       ^^^^^^^^^^^^^^^^ meta.function.anonymous.php
//                       ^^^^^ keyword.control.flow.throw.php
//                             ^^^^^^^^^^ variable.other.php
//                                       ^ punctuation.section.group.end.php

   some_function(fn() => throw $exception, 'some other argument');
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//                       ^^^^^^^^^^^^^^^^ meta.function.anonymous.php
//                                       ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.anonymous
//                       ^^^^^ keyword.control.flow.throw.php
//                             ^^^^^^^^^^ variable.other.php
//                                       ^ punctuation.separator.sequence.php
//                                         ^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php
//                                                              ^ punctuation.section.group.end.php

};
// <- meta.function.php meta.block.php punctuation.section.block.end.php

// test for https://github.com/sublimehq/Packages/issues/3134
$array = array_reduce(
    $items,
    function ($array, $item) {
        return $array;
    },
    $initial
);
// <- punctuation.section.group.end

$array['callback'](first: 'first', second: 'second');
// <- meta.function-call.identifier.php variable.other.php punctuation.definition.variable.php
//^^^^ meta.function-call.identifier.php - meta.item-access
//    ^^^^^^^^^^^^ meta.function-call.identifier.php meta.item-access.php
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//^^^^ variable.other.php
//    ^ punctuation.section.brackets.begin.php
//     ^^^^^^^^^^ meta.string.php string.quoted.single.php
//               ^ punctuation.section.brackets.end.php
//                ^ punctuation.section.group.begin.php
//                 ^^^^^ variable.parameter.named.php
//                      ^ keyword.operator.assignment.php
//                        ^^^^^^^ meta.string.php string.quoted.single.php
//                               ^ punctuation.separator.sequence.php
//                                 ^^^^^^ variable.parameter.named.php
//                                       ^ keyword.operator.assignment.php
//                                         ^^^^^^^^ meta.string.php string.quoted.single.php
//                                                 ^ punctuation.section.group.end.php
//                                                  ^ punctuation.terminator.statement.php

nested( static function ( {  } );
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//             ^^^^^^^^^ meta.function.php
//                      ^^ meta.function.parameters.php meta.group.php
//                        ^^^^ meta.function.php meta.block.php
//                            ^^ - meta.function
//      ^^^^^^ storage.modifier.namespace.php
//             ^^^^^^^^ keyword.declaration.function.php
//                      ^ punctuation.section.group.begin.php
//                        ^ punctuation.section.block.begin.php
//                           ^ punctuation.section.block.end.php
//                             ^ punctuation.section.group.end.php
//                              ^ punctuation.terminator.statement.php

nested( static function ) { ) ] } ) ] };
//    ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//                       ^^^^^^^^^^ - meta.function-call
//      ^^^^^^ storage.modifier.namespace.php
//             ^^^^^^^^ keyword.declaration.function.php
//                      ^ punctuation.section.group.end.php
//                        ^ punctuation.section.block.begin.php
//                          ^ invalid.illegal.stray.php
//                            ^ invalid.illegal.stray.php
//                              ^ punctuation.section.block.end.php
//                                ^ invalid.illegal.stray.php
//                                  ^ invalid.illegal.stray.php
//                                    ^ invalid.illegal.stray.php
//                                     ^ punctuation.terminator.statement.php

nested( static function ($param1) {  } );
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//             ^^^^^^^^^ meta.function.php
//                      ^^^^^^^^^ meta.function.parameters.php meta.group.php
//                               ^ meta.function.php
//                                ^^^^ meta.function.php meta.block.php
//      ^^^^^^ storage.modifier.namespace.php
//             ^^^^^^^^ keyword.declaration.function.php
//                      ^ punctuation.section.group.begin.php
//                       ^^^^^^^ variable.parameter.php
//                              ^ punctuation.section.group.end.php
//                                ^ punctuation.section.block.begin.php
//                                   ^ punctuation.section.block.end.php
//                                     ^ punctuation.section.group.end.php
//                                      ^ punctuation.terminator.statement.php

function bye(): never {
//^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
// <- meta.function.php keyword.declaration.function.php
//^^^^^^^^^^ meta.function.php
//          ^^ meta.function.parameters.php meta.group.php
//            ^^^^^^^^ meta.function.return-type.php
//                    ^^ meta.function.php meta.block.php
//            ^ punctuation.separator.colon.php
//              ^^^^^ storage.type.primitive.php
//                    ^ punctuation.section.block.begin.php
  exit();
}
// <- meta.function.php meta.block.php punctuation.section.block.end.php

function foo(?string_ ...$args) {}
//           ^ storage.type.nullable
//            ^^^^^^^ support.class
//                    ^^^ keyword.operator.variadic
//                       ^^^^^ variable.parameter

    // incomplete and therefore invalid code to illustrate reference operator precedence
    function &typedParameterReferences(int & C &$v, bool & $new, ?string | $str) {}
//  ^ keyword.declaration.function.php
//           ^ keyword.operator.reference.php
//            ^ entity.name.function.php
//                                    ^ punctuation.section.group.begin.php
//                                     ^^^ storage.type.primitive.php
//                                         ^ punctuation.separator.type.intersection.php
//                                           ^ support.class.php
//                                             ^ keyword.operator.reference.php
//                                              ^^ variable.parameter.php
//                                                ^ punctuation.separator.sequence.php
//                                                  ^^^^ storage.type.primitive.php
//                                                       ^ keyword.operator.reference.php
//                                                         ^^^^ variable.parameter.php
//                                                             ^ punctuation.separator.sequence.php
//                                                               ^ storage.type.nullable.php
//                                                                ^^^^^^ storage.type.primitive.php
//                                                                       ^ punctuation.separator.type.union.php
//                                                                         ^^^^ variable.parameter.php
//                                                                             ^ punctuation.section.group.end.php

    function noReturnType(array $param1, int $param2) {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                       ^ punctuation.section.group.begin.php
//                        ^ meta.function.parameters
//                              ^ punctuation.definition.variable.php
//                                       ^ meta.function.parameters
//                                           ^ punctuation.definition.variable.php
//                                                  ^ punctuation.section.group.end.php
//                                                    ^^ meta.block.php
//                                                    ^ punctuation.section.block.begin.php
//                                                     ^ punctuation.section.block.end.php

    function scalarReturnType($param1): bool {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                           ^ punctuation.section.group.begin.php
//                                   ^ punctuation.section.group.end.php
//                                      ^ storage.type.primitive.php

    function classReturnType($param1): stringSpace\Test1 {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                          ^ punctuation.section.group.begin.php
//                                  ^ punctuation.section.group.end.php
//                                     ^^^^^^^^^^^^^^^^^ meta.path
//                                     ^ variable.namespace.php
//                                                 ^ support.class.php

    function nullableReturnType(?int $param1): ?bool {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                             ^ punctuation.section.group.begin.php
//                              ^ storage.type.nullable.php
//                               ^ meta.function.parameters
//                                          ^ punctuation.section.group.end.php
//                                             ^ storage.type.nullable.php
//                                              ^ storage.type.primitive.php

    function nullableObjectReturnType(?int $param1): ?object {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                                   ^ punctuation.section.group.begin.php
//                                    ^ storage.type.nullable.php
//                                     ^ meta.function.parameters
//                                                ^ punctuation.section.group.end.php
//                                                   ^ storage.type.nullable.php
//                                                    ^ storage.type.primitive.php

    function intersectionTypeFunction(?int $param1): Interface1 & Interface2 {}
//  ^ keyword.declaration.function
//           ^ entity.name.function
//                                   ^ punctuation.section.group.begin
//                                    ^ storage.type.nullable
//                                     ^ meta.function.parameters
//                                                ^ punctuation.section.group.end
//                                                   ^^^^^^^^^^ support.class
//                                                              ^ punctuation.separator.type.intersection
//                                                                ^^^^^^^^^^ support.class

    function incompleteParamTypesFunction(

        $param0,
//      ^^^^^^^ variable.parameter.php
//             ^ punctuation.separator.sequence.php

        ? $param1,
//      ^^ meta.type.php
//        ^^^^^^^ - meta.type
//      ^ storage.type.nullable.php
//        ^^^^^^^ variable.parameter.php
//               ^ punctuation.separator.sequence.php

        & $param2,
//      ^^^^^^^^^ - meta.type
//      ^ keyword.operator.reference.php
//        ^^^^^^^ variable.parameter.php
//               ^ punctuation.separator.sequence.php

        | $param3,
//      ^^ meta.type.php
//        ^^^^^^^ - meta.type
//      ^ punctuation.separator.type.union.php
//        ^^^^^^^ variable.parameter.php
//               ^ punctuation.separator.sequence.php

        ( $param4,
//      ^^ meta.type.php meta.group.php
//        ^^^^^^^ - meta.type
//      ^ punctuation.section.group.begin.php
//        ^^^^^^^ variable.parameter.php
//        ^ punctuation.definition.variable.php
//               ^ punctuation.separator.sequence.php

        () $param5,
//      ^^ meta.type.php meta.group.php
//        ^ meta.type.php - meta.type meta.group
//         ^^^^^^^ - meta.type
//      ^ punctuation.section.group.begin.php
//       ^ punctuation.section.group.end.php
//         ^^^^^^^ variable.parameter.php
//                ^ punctuation.separator.sequence.php

        ...$param1,
//      ^^^ keyword.operator.variadic.php
//         ^^^^^^^ variable.parameter.php
//                ^ punctuation.separator.sequence.php

        ? ...$param2,
//      ^^ meta.type.php
//        ^^^^^^^^^^^ - meta.type
//      ^ storage.type.nullable.php
//        ^^^ keyword.operator.variadic.php
//           ^^^^^^^ variable.parameter.php
//                  ^ punctuation.separator.sequence.php

        & ...$param3,
//      ^^ meta.type.php
//        ^^^^^^^^^^^ - meta.type
//      ^ punctuation.separator.type.intersection.php
//        ^^^ keyword.operator.variadic.php
//           ^^^^^^^ variable.parameter.php
//                  ^ punctuation.separator.sequence.php

        | ...$param4,
//      ^^ meta.type.php
//        ^^^^^^^^^^^ - meta.type
//      ^ punctuation.separator.type.union.php
//        ^^^ keyword.operator.variadic.php
//           ^^^^^^^ variable.parameter.php
//                  ^ punctuation.separator.sequence.php

        ( ...$param5,
//      ^^ meta.type.php meta.group.php
//        ^^^^^^^^^^^ - meta.type
//      ^ punctuation.section.group.begin.php
//        ^^^ keyword.operator.variadic.php
//           ^^^^^^^ variable.parameter.php
//           ^ punctuation.definition.variable.php
//                  ^ punctuation.separator.sequence.php

        () ...$param6,
//      ^^ meta.type.php meta.group.php
//        ^ meta.type.php - meta.type meta.group
//         ^^^^^^^^^^^ - meta.type
//      ^ punctuation.section.group.begin.php
//       ^ punctuation.section.group.end.php
//         ^^^ keyword.operator.variadic.php
//            ^^^^^^^ variable.parameter.php
//                   ^ punctuation.separator.sequence.php

        bool $param0 string $param2,
//      ^^^^ storage.type.primitive.php
//           ^^^^^^^ variable.parameter.php
//                   ^^^^^^ storage.type.primitive.php
//                          ^^^^^^^ variable.parameter.php
//                                 ^ punctuation.separator.sequence.php

    ): {}

    function unionTypeFunction(
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
        int | string $param0,
//      ^^^ storage.type
//          ^ punctuation.separator.type
//            ^^^^^^ storage.type
        Foo | \Foo\Bar | ?int $param1,
//      ^^^ support.class
//          ^ punctuation.separator.type
//            ^ punctuation.accessor.namespace
//             ^^^ variable.namespace
//                ^ punctuation.accessor.namespace
//                 ^^^ support.class
//                     ^ punctuation.separator.type
//                       ^ storage.type.nullable
//                        ^^^ storage.type
//                            ^ punctuation.definition.variable
//                             ^^^^^^ variable.parameter
        Foo|\Foo\Bar|?int $param2,
//      ^^^ support.class
//         ^ punctuation.separator.type
//          ^ punctuation.accessor.namespace
//           ^^^ variable.namespace
//              ^ punctuation.accessor.namespace
//               ^^^ support.class
//                  ^ punctuation.separator.type
//                   ^ storage.type.nullable
//                    ^^^ storage.type
//                        ^ punctuation.definition.variable
//                         ^^^^^^ variable.parameter
        (?A|B)&(C|?D)&?E $param2,
//      ^ punctuation.section.group.begin
//       ^ storage.type.nullable
//        ^ support.class
//         ^ punctuation.separator.type.union
//          ^ support.class
//           ^ punctuation.section.group.end
//            ^ punctuation.separator.type.intersection
//             ^ punctuation.section.group.begin
//              ^ support.class
//               ^ punctuation.separator.type.union
//                ^ storage.type.nullable
//                 ^ support.class
//                  ^ punctuation.section.group.end
//                   ^ punctuation.separator.type.intersection
//                    ^ storage.type.nullable
//                     ^ support.class
//                       ^ punctuation.definition.variable
//                        ^^^^^^ variable.parameter

        (?A/**/|/**/B/**/)/**/&/**/(/**/C/**/|/**/?D/**/)/**/&/**/?E $param2,
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.php
//                                                                   ^^^^^^^^^ - meta.type
//      ^ punctuation.section.group.begin
//       ^ storage.type.nullable
//        ^ support.class
//             ^ punctuation.separator.type.union
//                  ^ support.class
//                       ^ punctuation.section.group.end
//                            ^ punctuation.separator.type.intersection
//                                 ^ punctuation.section.group.begin
//                                      ^ support.class
//                                           ^ punctuation.separator.type.union
//                                                ^ storage.type.nullable
//                                                 ^ support.class
//                                                      ^ punctuation.section.group.end
//                                                           ^ punctuation.separator.type.intersection
//                                                                ^ storage.type.nullable
//                                                                 ^ support.class
//                                                                   ^ punctuation.definition.variable
//                                                                    ^^^^^^ variable.parameter
        string $param3,
//      ^^^^^^ storage.type
//             ^ punctuation.definition.variable
//              ^^^^^^ variable.parameter
        $param4
//      ^ punctuation.definition.variable
//       ^^^^^^ variable.parameter
    ): Foo|\Foo\Bar|?int|static {}
//     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.return-type.php
//     ^^^ support.class
//        ^ punctuation.separator.type
//         ^ punctuation.accessor.namespace
//          ^^^ variable.namespace
//             ^ punctuation.accessor.namespace
//              ^^^ support.class
//                 ^ punctuation.separator.type
//                  ^ storage.type.nullable
//                   ^^^ storage.type
//                      ^ punctuation.separator.type
//                       ^^^^^^ variable.language.static.php

function testGenerator1()
{
    yield 1;
//  ^^^^^ keyword.control.flow.yield.php
//        ^ constant.numeric.value.php
//         ^ punctuation.terminator.statement.php

   (yield);
// ^^^^^^^ meta.group.php
// ^ punctuation.section.group.begin.php
//  ^^^^^ keyword.control.flow.yield.php
//       ^ punctuation.section.group.end.php
//        ^ punctuation.terminator.statement.php

   [yield];
// ^^^^^^^ meta.sequence.array.php
// ^ punctuation.section.sequence.begin.php
//  ^^^^^ keyword.control.flow.yield.php
//       ^ punctuation.section.sequence.end.php
//        ^ punctuation.terminator.statement.php

    $send = yield $value;
//  ^^^^^ variable.other.php
//        ^ keyword.operator.assignment.php
//          ^^^^^ keyword.control.flow.yield.php
//                ^^^^^^ variable.other.php
}

function testGenerator2()
{
    yield from testGenerator1();
//  ^^^^^ keyword.control.flow.yield.php
//        ^^^^ keyword.control.flow.yield.php
//             ^^^^^^^^^^^^^^ variable.function.php
//                           ^ punctuation.section.group.begin.php
//                            ^ punctuation.section.group.end.php
//                             ^ punctuation.terminator.statement.php

    $a = yield from test(1);
//  ^^ variable.other.php
//     ^ keyword.operator.assignment.php
//       ^^^^^ keyword.control.flow.yield.php
//             ^^^^ keyword.control.flow.yield.php
//                  ^^^^ meta.function-call.identifier.php variable.function.php
//                      ^^^ meta.function-call.arguments.php meta.group.php
}


/******************************************************************************
 * First class callable syntax Tests
 * https://www.php.net/manual/en/functions.first_class_callable_syntax.php
 *****************************************************************************/

$f1 = strlen(...);
//    ^^^^^^ meta.function-call.identifier.php
//          ^^^^^ meta.function-call.arguments.php meta.group.php
//    ^^^^^^ support.function.string.php
//          ^ punctuation.section.group.begin.php
//           ^^^ constant.other.placeholder.php
//              ^ punctuation.section.group.end.php
//               ^ punctuation.terminator.statement.php

$f2 = $obj(...);  // invokable object
//    ^^^^ meta.function-call.identifier.php
//        ^^^^^ meta.function-call.arguments.php meta.group.php
//    ^^^^ variable.other.php
//        ^ punctuation.section.group.begin.php
//         ^^^ constant.other.placeholder.php
//            ^ punctuation.section.group.end.php
//             ^ punctuation.terminator.statement.php

$f3 = $obj->method(...);
//          ^^^^^^ meta.function-call.identifier.php
//                ^^^^^ meta.function-call.arguments.php meta.group.php
//          ^^^^^^ variable.function.php
//                ^ punctuation.section.group.begin.php
//                 ^^^ constant.other.placeholder.php
//                    ^ punctuation.section.group.end.php
//                     ^ punctuation.terminator.statement.php

$f4 = $obj->$methodStr(...);
//          ^^^^^^^^^^ meta.function-call.identifier.php
//                    ^^^^^ meta.function-call.arguments.php meta.group.php
//          ^^^^^^^^^^ variable.other.member.php
//                    ^ punctuation.section.group.begin.php
//                     ^^^ constant.other.placeholder.php
//                        ^ punctuation.section.group.end.php
//                         ^ punctuation.terminator.statement.php

$f5 = Foo::staticmethod(...);
//         ^^^^^^^^^^^^ meta.function-call.identifier.php
//                     ^^^^^ meta.function-call.arguments.php meta.group.php
//         ^^^^^^^^^^^^ variable.function.php
//                     ^ punctuation.section.group.begin.php
//                      ^^^ constant.other.placeholder.php
//                         ^ punctuation.section.group.end.php
//                          ^ punctuation.terminator.statement.php

$f6 = $classStr::$staticmethodStr(...);
//               ^^^^^^^^^^^^^^^^ meta.function-call.identifier.php
//                               ^^^^^ meta.function-call.arguments.php meta.group.php
//               ^^^^^^^^^^^^^^^^ variable.other.member.php
//                               ^ punctuation.section.group.begin.php
//                                ^^^ constant.other.placeholder.php
//                                   ^ punctuation.section.group.end.php
//                                    ^ punctuation.terminator.statement.php

// traditional callable using string, array

$f7 = 'strlen'(...);
//    ^^^^^^^^ meta.string.php string.quoted.single.php
//            ^^^^^ meta.group.php
//            ^ punctuation.section.group.begin.php
//             ^^^ constant.other.placeholder.php
//                ^ punctuation.section.group.end.php
//                 ^ punctuation.terminator.statement.php

$f8 = [$obj, 'method'](...);
//    ^^^^^^^^^^^^^^^^ meta.sequence.array.php
//                    ^^^^^ meta.group.php
//    ^ punctuation.section.sequence.begin.php
//     ^^^^ variable.other.php
//         ^ punctuation.separator.sequence.php
//           ^^^^^^^^ meta.string.php string.quoted.single.php
//                   ^ punctuation.section.sequence.end.php
//                    ^ punctuation.section.group.begin.php
//                     ^^^ constant.other.placeholder.php
//                        ^ punctuation.section.group.end.php
//                         ^ punctuation.terminator.statement.php

$f9 = [Foo::class, 'staticmethod'](...);
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.array.php
//                                ^^^^^ meta.group.php
//    ^ punctuation.section.sequence.begin.php
//     ^^^ support.class.php
//        ^^ punctuation.accessor.double-colon.php
//          ^^^^^ variable.language.class.java
//               ^ punctuation.separator.sequence.php
//                 ^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php
//                               ^ punctuation.section.sequence.end.php
//                                ^ punctuation.section.group.begin.php
//                                 ^^^ constant.other.placeholder.php
//                                    ^ punctuation.section.group.end.php
//                                     ^ punctuation.terminator.statement.php

$f10 = (new MyClass)->myMethod(...);
//     ^^^^^^^^^^^^^ meta.group.php
//                    ^^^^^^^^ meta.function-call.identifier.php
//                            ^^^^^ meta.function-call.arguments.php meta.group.php
//     ^ punctuation.section.group.begin.php
//      ^^^ keyword.other.new.php
//          ^^^^^^^ support.class.php
//                 ^ punctuation.section.group.end.php
//                  ^^ punctuation.accessor.arrow.php
//                    ^^^^^^^^ variable.function.php
//                            ^ punctuation.section.group.begin.php
//                             ^^^ constant.other.placeholder.php
//                                ^ punctuation.section.group.end.php
//                                 ^ punctuation.terminator.statement.php


/******************************************************************************
 * Label Declaration Tests
 *****************************************************************************/

function testLabels() {

label1:
// <- entity.name.label.php
//^^^^ entity.name.label.php
//    ^ punctuation.separator.colon.php
goto label1;
// <- keyword.control.flow.goto.php
//   ^^^^^^ variable.label.php

Label2:
// <- entity.name.label.php
//^^^^ entity.name.label.php
//    ^ punctuation.separator.colon.php
goto Label2;
// <- keyword.control.flow.goto.php
//   ^^^^^^ variable.label.php

// reserved words must not be used as label

    abstract: ;
//  ^^^^^^^^ storage.modifier.php  - entity.name
    and: ;
//  ^^^ keyword.operator.logical.php - entity.name
    array: ;
//  ^^^^^ storage.type.primitive.php - entity.name
    as: ;
//  ^^ keyword.other.as.php - entity.name
    break: ;
//  ^^^^^ keyword.control.flow.break.php - entity.name
    callable: ;
//  ^^^^^^^^ storage.type.primitive.php  - entity.name
    case: ;
//  ^^^^ keyword.control.conditional.case.php - entity.name
    catch: ;
//  ^^^^^ keyword.control.exception.catch.php - entity.name
    class: ;
//  ^^^^^ keyword.declaration.class.php - entity.name
    clone: ;
//  ^^^^^ keyword.other.clone.php - entity.name
    const: ;
//  ^^^^^ keyword.declaration.constant.php - entity.name
    continue: ;
//  ^^^^^^^^ keyword.control.flow.continue.php - entity.name
    declare: ;
//  ^^^^^^^ keyword.declaration.php - entity.name
    default: ;
//  ^^^^^^^ keyword.control.conditional.default.php - entity.name
    die: ;
//  ^^^ keyword.control.flow.panic.php - entity.name
    do: ;
//  ^^ keyword.control.loop.do-while.php - entity.name
    echo: ;
//  ^^^^ support.function.builtin.php - entity.name
    else: ;
//  ^^^^ keyword.control.conditional.else.php - entity.name
    elseif: ;
//  ^^^^^^ keyword.control.conditional.elseif.php - entity.name
    empty: ;
//  ^^^^^ support.function.builtin.php  - entity.name
    enddeclare: ;
//  ^^^^^^^^^^ keyword.declaration.php - entity.name
    endfor: ;
//  ^^^^^^ keyword.control.loop.end.php - entity.name
    endforeach: ;
//  ^^^^^^^^^^ keyword.control.loop.end.php - entity.name
    endif: ;
//  ^^^^^ keyword.control.conditional.end.php - entity.name
    endswitch: ;
//  ^^^^^^^^^ keyword.control.conditional.end.php - entity.name
    endwhile: ;
//  ^^^^^^^^ keyword.control.loop.end.php - entity.name
    eval:  ;
//  ^^^^ support.function.builtin.php - entity.name
    exit: ;
//  ^^^^ keyword.control.flow.panic.php - entity.name
    extends: ;
//  ^^^^^^^ storage.modifier.extends.php - entity.name
    final: ;
//  ^^^^^ storage.modifier.php - entity.name
    finally: ;
//  ^^^^^^^ keyword.control.exception.finally.php - entity.name
    fn: ;    // allow as label for compatibility with (PHP < 7.4)
//  ^^ entity.name.label.php
    for: ;
//  ^^^ keyword.control.loop.for.php - entity.name
    foreach: ;
//  ^^^^^^^ keyword.control.loop.for.php - entity.name
    function: ;
//  ^^^^^^^^ keyword.declaration.function.php - entity.name
    global: ;
//  ^^^^^^ storage.modifier.namespace.php - entity.name
    goto: ;
//  ^^^^ keyword.control.flow.goto.php - entity.name
    if: ;
//  ^^ keyword.control.conditional.if.php - entity.name
    implements: ;
//  ^^^^^^^^^^ storage.modifier.implements.php - entity.name
    include: ;
//  ^^^^^^^ keyword.control.import.include.php - entity.name
    include_once: ;
//  ^^^^^^^^^^^^ keyword.control.import.include.php - entity.name
    instanceof: ;
//  ^^^^^^^^^^ keyword.other.instanceof.php - entity.name
    insteadof: ;
//  ^^^^^^^^^ keyword.other.insteadof.php - entity.name
    interface: ;
//  ^^^^^^^^^ keyword.declaration.interface.php - entity.name
    isset: ;
//  ^^^^^ support.function.builtin.php - entity.name
    list: ;
//  ^ - entity.name
    match:  ;  // allow as label for compatibility with (PHP < 8.0)
//  ^^^^^ entity.name.label.php
    namespace: ;
//  ^^^^^^^^^ keyword.declaration.namespace.php - entity.name
    new: ;
//  ^^^ keyword.other.new.php - entity.name
    or: ;
//  ^^ keyword.operator.logical.php - entity.name
    print: ;
//  ^^^^^ support.function.builtin.php - entity.name
    private: ;
//  ^^^^^^^ storage.modifier.access.php - entity.name
    protected: ;
//  ^^^^^^^^^ storage.modifier.access.php - entity.name
    public: ;
//  ^^^^^^ storage.modifier.access.php - entity.name
    readonly: ;
//  ^^^^^^^^ storage.modifier.php - entity.name
    require: ;
//  ^^^^^^^ keyword.control.import.include.php - entity.name
    require_once: ;
//  ^^^^^^^^^^^^ keyword.control.import.include.php - entity.name
    return: ;
//  ^^^^^^ keyword.control.flow.return.php - entity.name
    static: ;
//  ^^^^^^ storage.modifier.namespace.php - entity.name
    switch: ;
//  ^^^^^^ keyword.control.conditional.switch.php - entity.name
    throw: ;
//  ^^^^^ keyword.control.flow.throw.php - entity.name
    trait: ;
//  ^^^^^ keyword.declaration.trait.php - entity.name
    try: ;
//  ^^^ keyword.control.exception.try.php - entity.name
    unset: ;
//  ^^^^^ support.function.builtin.php - entity.name
    use: ;
//  ^^^ keyword.declaration.use.php - entity.name
    var: ;
//  ^^^ keyword.declaration.variable.php - entity.name
    while: ;
//  ^^^^^ keyword.control.loop.while.php - entity.name
    xor: ;
//  ^^^ keyword.operator.logical.php - entity.name
    yield: ;
//  ^^^^^ keyword.control.flow.yield.php - entity.name
    yield from: ;
//  ^^^^^ keyword.control.flow.yield.php - entity.name
//        ^^^^ keyword.control.flow.yield.php - entity.name
}


/******************************************************************************
 * Control Flow Statement Tests
 *****************************************************************************/

if ($a && $b || !$c);
//     ^^ keyword.operator.logical
//           ^^ keyword.operator.logical
//              ^ keyword.operator.logical

if ($a !== $b || $a == $b);
//     ^^^ keyword.operator.comparison
//                  ^^ keyword.operator.comparison

if ():
//   ^ punctuation.separator.colon
else:
// <- keyword.control - entity.name.label
//  ^ punctuation.separator.colon
endif;

switch (1) {
// <- keyword.control.conditional.switch.php
//^^^^ keyword.control.conditional.switch.php
    case 1:
  //^^^^ keyword.control.conditional.case.php
  //     ^ constant.numeric.value.php
  //      ^ punctuation.separator.colon.php
    default:
  //^^^^^^^ keyword.control.conditional.default.php
  //       ^ punctuation.separator.colon.php
}
// <- punctuation.section.block.end.php


/******************************************************************************
 * For Loop Statement Tests
 *****************************************************************************/

    for ( {}
//      ^^ meta.group.php
//        ^^ meta.block.php
//  ^^^ keyword.control.loop.for.php
//      ^ punctuation.section.group.begin.php
//        ^ punctuation.section.block.begin.php
//         ^ punctuation.section.block.end.php

    for ) {}
//  ^^^ keyword.control.loop.for.php
//      ^ invalid.illegal.stray.php
//        ^^ meta.block.php
//        ^ punctuation.section.block.begin.php
//         ^ punctuation.section.block.end.php

    for ( ] {}
//      ^^^^ meta.group.php
//          ^^ meta.block.php
//  ^^^ keyword.control.loop.for.php
//      ^ punctuation.section.group.begin.php
//        ^ invalid.illegal.stray.php
//          ^ punctuation.section.block.begin.php
//           ^ punctuation.section.block.end.php

    for ( ] ) {}
//      ^^^^^ meta.group.php
//            ^^ meta.block.php
//  ^^^ keyword.control.loop.for.php
//      ^ punctuation.section.group.begin.php
//        ^ invalid.illegal.stray.php
//          ^ punctuation.section.group.end.php
//            ^ punctuation.section.block.begin.php
//             ^ punctuation.section.block.end.php

    for ( , ; , ; , ) {}
//      ^^^^^^^^^^^^^ meta.group.php
//                    ^^ meta.block.php
//  ^^^ keyword.control.loop.for.php
//      ^ punctuation.section.group.begin.php
//        ^ punctuation.separator.sequence.php
//          ^ punctuation.terminator.statement.php
//            ^ punctuation.separator.sequence.php
//              ^ punctuation.terminator.statement.php
//                ^ punctuation.separator.sequence.php
//                  ^ punctuation.section.group.end.php
//                    ^ punctuation.section.block.begin.php
//                     ^ punctuation.section.block.end.php

    for ($i = 0; $i < 10; $i++) { echo $i; }
//  ^^^ keyword.control.loop.for.php
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.php
//      ^ punctuation.section.group.begin.php
//             ^ punctuation.terminator.statement.php
//                      ^ punctuation.terminator.statement.php
//                            ^ punctuation.section.group.end.php
//                              ^ punctuation.section.block.begin.php
//                                         ^ punctuation.section.block.end.php

    FOR ($i = 0; $i < 10; $i++) { ECHO $i; }
//  ^^^ keyword.control.loop.for.php
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.php
//      ^ punctuation.section.group.begin.php
//             ^ punctuation.terminator.statement.php
//                      ^ punctuation.terminator.statement.php
//                            ^ punctuation.section.group.end.php
//                              ^ punctuation.section.block.begin.php
//                                         ^ punctuation.section.block.end.php

    for /**/ ( /**/ $i /**/ = /**/ 0 /**/ ; /**/ $i /**/ < /**/ 10 /**/ ; /**/ $i++ /**/ ) /**/ { echo $i; }
//  ^^^ keyword.control.loop.for.php
//      ^^^^ comment.block.php
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.php
//           ^ punctuation.section.group.begin.php
//             ^^^^ comment.block.php
//                     ^^^^ comment.block.php
//                            ^^^^ comment.block.php
//                                   ^^^^ comment.block.php
//                                        ^ punctuation.terminator.statement.php
//                                          ^^^^ comment.block.php
//                                                  ^^^^ comment.block.php
//                                                         ^^^^ comment.block.php
//                                                                 ^^^^ comment.block.php
//                                                                      ^ punctuation.terminator.statement.php
//                                                                        ^^^^ comment.block.php
//                                                                                  ^^^^ comment.block.php
//                                                                                       ^ punctuation.section.group.end.php
//                                                                                         ^^^^ comment.block.php
//                                                                                              ^ punctuation.section.block.begin.php
//                                                                                                         ^ punctuation.section.block.end.php


/******************************************************************************
 * Try Catch Statement Tests
 *****************************************************************************/

try {
// <- keyword.control.exception
    echo inverse(5) . "\n";
    throw new \Exception('Error!');
//  ^^^^^ keyword.control.flow.throw.php
//            ^^^^^^^^^^ meta.path.php
//            ^ punctuation.accessor.namespace.php - support.class
//             ^^^^^^^^^ support.class.builtin.php
    throw new \Custom\Exception('Error!');
//  ^^^^^ keyword.control.flow.throw.php
//            ^^^^^^^^^^^^^^^^^ meta.path.php
//            ^ punctuation.accessor.namespace.php
//             ^^^^^^ variable.namespace.php
//                   ^ punctuation.accessor.namespace.php
//                    ^^^^^^^^^ support.class.builtin.php
} catch /**/ (/* comment */ ExceptionExample $e) {
// <- punctuation.section.block.end.php
//^^^^^^^^^^^ meta.catch.php
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php - meta.path
//^^^^^ keyword.control.exception.catch.php
//      ^^^^ comment.block.php
//           ^ punctuation.section.group.begin.php
//            ^^^^^^^^^^^^^ comment.block.php
//                          ^^^^^^^^^^^^^^^^ support.class.php
//                                           ^^ variable.other.php
//                                             ^ punctuation.section.group.end.php
//                                               ^ punctuation.section.block.begin.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} catch (Exception) {
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^^^^^^^^^^^ meta.catch.arguments.php meta.group.php - meta.path
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
//       ^^^^^^^^^ support.class.builtin.php
//                ^ punctuation.section.group.end.php
//                  ^ punctuation.section.block.begin.php
} catch (Exception $e) {
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php - meta.path
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
//       ^^^^^^^^^ support.class.builtin.php
//                 ^^ variable.other.php
//                   ^ punctuation.section.group.end.php
//                     ^ punctuation.section.block.begin.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} catch (\Exception $e) {
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^ meta.catch.arguments.php meta.group.php - meta.path
//       ^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.type.php meta.path.php
//                 ^^^^ meta.catch.arguments.php meta.group.php - meta.path
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
//       ^ punctuation.accessor.namespace.php
//        ^^^^^^^^^ support.class.builtin.php
//                  ^^ variable.other.php
//                    ^ punctuation.section.group.end.php
//                      ^ punctuation.section.block.begin.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} catch (\Custom\Exception $e) {
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^ meta.catch.arguments.php meta.group.php - meta.path
//       ^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.type.php meta.path.php
//                        ^^^^ meta.catch.arguments.php meta.group.php - meta.path
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
//       ^ punctuation.accessor.namespace.php
//        ^^^^^^ variable.namespace.php
//              ^ punctuation.accessor.namespace.php
//               ^^^^^^^^^ support.class.builtin.php
//                         ^^ variable.other.php
//                           ^ punctuation.section.group.end.php
//                             ^ punctuation.section.block.begin.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} catch (\Custom\Exception1 | \Custom\Exception2 $e) {
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^ meta.catch.arguments.php meta.group.php - meta.path
//       ^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.type.php meta.path.php
//                         ^^^ meta.catch.arguments.php meta.group.php - meta.path
//                            ^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.type.php meta.path.php
//                                              ^^^^ meta.catch.arguments.php meta.group.php - meta.path
//                                                  ^^^ - meta.catch
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
//       ^ punctuation.accessor.namespace.php
//        ^^^^^^ variable.namespace.php
//              ^ punctuation.accessor.namespace.php
//               ^^^^^^^^^^ support.class.php
//                          ^ punctuation.separator.type.union.php
//                            ^ punctuation.accessor.namespace.php
//                             ^^^^^^ variable.namespace.php
//                                   ^ punctuation.accessor.namespace.php
//                                    ^^^^^^^^^^ support.class.php
//                                               ^^ variable.other.php
//                                                 ^ punctuation.section.group.end.php
//                                                   ^ punctuation.section.block.begin.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} catch (
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^^ meta.catch.arguments.php meta.group.php
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
    \Custom\Exception1 |
// ^ meta.catch.arguments.php meta.group.php - meta.path
//  ^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.path.php
//                    ^^^ meta.catch.arguments.php meta.group.php - meta.path
//  ^ punctuation.accessor.namespace.php
//   ^^^^^^ variable.namespace.php
//         ^ punctuation.accessor.namespace.php
//          ^^^^^^^^^^ support.class.php
//                     ^ punctuation.separator.type.union.php
    \Custom\Exception2 $e
// ^ meta.catch.arguments.php meta.group.php - meta.path
//  ^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.path.php
//                    ^^^^ meta.catch.arguments.php meta.group.php - meta.path
//  ^ punctuation.accessor.namespace.php
//   ^^^^^^ variable.namespace.php
//         ^ punctuation.accessor.namespace.php
//          ^^^^^^^^^^ support.class.php
//                     ^^ variable.other.php
) {
// <- meta.catch.arguments.php meta.group.php punctuation.section.group.end.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} finally {
//^ keyword.control.exception
    echo "First finally.\n";
}


/******************************************************************************
 * Array Tests
 *****************************************************************************/

$arr3 = array('a', ...$arr1, 'b', ...$arr2, 'c',);
//      ^^^^^ support.function.array
//           ^ punctuation.section.group.begin
//                 ^^^ keyword.operator.variadic
//                    ^^^^^ variable.other
//                                ^^^ keyword.operator.variadic
//                                             ^ punctuation.separator.sequence
//                                              ^ punctuation.section.group.end

$arr4 = ['a', ...$arr1, 'b', ...$arr2, 'c',];
//      ^ punctuation.section.sequence.begin
//          ^ punctuation.separator.sequence
//            ^^^ keyword.operator.variadic
//               ^^^^^ variable.other
//                           ^^^ keyword.operator.variadic
//                                        ^ punctuation.separator.sequence
//                                         ^ punctuation.section.sequence.end

$array = [   ];
//       ^ meta.sequence.array.empty.php punctuation.section.sequence.begin.php
//           ^ meta.sequence.array.empty.php punctuation.section.sequence.end.php
   [];
// ^ meta.sequence.array.empty.php punctuation.section.sequence.begin.php
//  ^ meta.sequence.array.empty.php punctuation.section.sequence.end.php

$array = [ ) ];
//       ^^^^^ meta.sequence.array.php
//            ^^ - meta.sequence
//       ^ punctuation.section.sequence.begin.php
//         ^ invalid.illegal.stray.php
//           ^ punctuation.section.sequence.end.php
//            ^ punctuation.terminator.statement.php

$array = [ ] ];
//       ^^^ meta.sequence.array.empty.php
//          ^^^^ - meta.sequence
//       ^ punctuation.section.sequence.begin.php
//         ^ punctuation.section.sequence.end.php
//           ^ invalid.illegal.stray.php
//            ^ punctuation.terminator.statement.php

$array = [ } ];
//       ^^ meta.sequence.array.php
//         ^^^^^ - meta.sequence
//       ^ punctuation.section.sequence.begin.php
//         ^ invalid.illegal.stray.php
//           ^ invalid.illegal.stray.php
//            ^ punctuation.terminator.statement.php

$array = [
//       ^ meta.sequence.array.php punctuation.section.sequence.begin.php
    'abc'   => $arr['key']['key2']
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.array.php
//                 ^^^^^^^^^^^^^^^ meta.item-access.php
//                 ^ punctuation.section.brackets.begin.php
//                  ^^^^^ string.quoted.single.php
//                       ^ punctuation.section.brackets.end.php
//                        ^ punctuation.section.brackets.begin.php
//                         ^^^^^^ string.quoted.single.php
//                               ^ punctuation.section.brackets.end.php
];
// <- meta.sequence.array.php punctuation.section.sequence.end.php

$array[  ];
//    ^^^^ meta.item-access
//        ^^ - meta.item-access
//    ^ punctuation.section.brackets.begin.php
//       ^ punctuation.section.brackets.end.php

$array[ ] ];
//    ^^^ meta.item-access
//       ^^^^ - meta.item-access
//    ^ punctuation.section.brackets.begin.php
//      ^ punctuation.section.brackets.end.php
//        ^ invalid.illegal.stray.php

$array[ ) ];
//    ^^^^^ meta.item-access
//         ^^ - meta.item-access
//    ^ punctuation.section.brackets.begin.php
//      ^ invalid.illegal.stray.php
//        ^ punctuation.section.brackets.end.php

$array[ ) } ];
//    ^^^^ meta.item-access
//        ^^^^^ - meta.item-access
//    ^ punctuation.section.brackets.begin.php
//      ^ invalid.illegal.stray.php
//        ^ invalid.illegal.stray.php
//          ^ invalid.illegal.stray.php

$var?->meth()[10];
//  ^ punctuation.accessor.nullsafe
//   ^^ punctuation.accessor.arrow
//           ^^^^ meta.item-access
//           ^ punctuation.section.brackets.begin
//              ^ punctuation.section.brackets.end


/******************************************************************************
 * Include Expression Tests
 *****************************************************************************/

if ((include 'vars.php') == TRUE) {
// <- keyword.control.conditional.if.php
// ^ meta.group.php - meta.group meta.group - meta.include
//  ^ meta.group.php meta.group.php - meta.include
//   ^^^^^^^^^^^^^^^^^^ meta.group.php meta.group.php meta.include.php
//                     ^ meta.group.php meta.group.php - meta.include
//                      ^^^^^^^^^ meta.group.php - meta.group meta.group - meta.include
// ^^ punctuation.section.group.begin.php
//   ^^^^^^^ keyword.control.import.include.php
//           ^^^^^^^^^^ meta.string.php string.quoted.single.php
//                     ^ punctuation.section.group.end.php
//                       ^^ keyword.operator.comparison.php
//                          ^^^^ constant.language.boolean.true.php
//                              ^ punctuation.section.group.end.php
//                                ^ punctuation.section.block.begin.php
}
// <- punctuation.section.block.end.php

// evaluated as include(('vars.php') == TRUE), i.e. include('')
if (include('vars.php') == TRUE) {
// <- keyword.control.conditional.if.php
// ^ meta.group.php - meta.include
//  ^^^^^^^ meta.group.php meta.include.php - meta.group meta.group
//         ^^^^^^^^^^^^ meta.group.php meta.include.php meta.group.php
//                     ^^^^^^^^ meta.group.php meta.include.php - meta.group meta.group
//                             ^ meta.group.php - meta.include
//                              ^ - meta.group - meta.include.php
// ^ punctuation.section.group.begin.php
//  ^^^^^^^ keyword.control.import.include.php
//         ^ punctuation.section.group.begin.php
//          ^^^^^^^^^^ meta.string.php string.quoted.single.php
//                    ^ punctuation.section.group.end.php
//                      ^^ keyword.operator.comparison.php
//                         ^^^^ constant.language.boolean.true.php
//                             ^ punctuation.section.group.end.php
//                               ^ punctuation.section.block.begin.php
}
// <- punctuation.section.block.end.php


/******************************************************************************
 * Function and Method Call Tests
 *****************************************************************************/

define("MY_CONST", value);
// <- meta.function-call.identifier.php support.function.builtin.php - meta.path
//^^^^ meta.function-call.identifier.php support.function.builtin.php - meta.path
//    ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//    ^ punctuation.section.group.begin.php
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php
//      ^^^^^^^^ meta.string.php entity.name.constant.php - string
//              ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php
//               ^ punctuation.separator.sequence.php
//                 ^^^^^ constant.other.php
//                      ^ punctuation.section.group.end.php
//                       ^ punctuation.terminator.statement.php

\define('MY_CONST', value);
// <- meta.function-call.identifier.php meta.path.php punctuation.accessor.namespace.php - support
//^^^^^ meta.function-call.identifier.php meta.path.php support.function.builtin.php
//     ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//     ^ punctuation.section.group.begin.php
//      ^ meta.string.php string.quoted.single.php punctuation.definition.string.begin.php
//       ^^^^^^^^ meta.string.php entity.name.constant.php - string
//               ^ meta.string.php string.quoted.single.php punctuation.definition.string.end.php
//                ^ punctuation.separator.sequence.php
//                  ^^^^^ constant.other.php
//                       ^ punctuation.section.group.end.php
//                        ^ punctuation.terminator.statement.php

echo ;
// <- meta.function-call.identifier.php - meta.path.php
//^^^ meta.function-call.identifier.php - meta.path.php
// <- support.function.builtin.php
//^^ support.function.builtin.php
//   ^ punctuation.terminator.statement.php

\echo ;
// <- meta.function-call.identifier.php meta.path.php
//^^^ meta.function-call.identifier.php meta.path.php
//   ^ meta.function-call.identifier.php - meta.path
// <- punctuation.accessor.namespace.php
//^^^ support.function.builtin.php
//    ^ punctuation.terminator.statement.php

\echo ();
// <- meta.function-call.identifier.php meta.path.php
//^^^ meta.function-call.identifier.php meta.path.php
//   ^ meta.function-call.identifier.php - meta.path
//    ^^ meta.function-call.arguments.php meta.group.php
// <- punctuation.accessor.namespace.php
//^^^ support.function.builtin.php
//    ^ punctuation.section.group.begin.php
//     ^ punctuation.section.group.end.php
//      ^ punctuation.terminator.statement.php

echo\echo ();
// <- meta.function-call.identifier.php meta.path.php
//^^^^^^^ meta.function-call.identifier.php meta.path.php
//       ^ meta.function-call.identifier.php - meta.path
//        ^^ meta.function-call.arguments.php meta.group.php
//^^ variable.namespace.php
//  ^ punctuation.accessor.namespace.php
//   ^^^^ variable.function.php
//        ^ punctuation.section.group.begin.php
//         ^ punctuation.section.group.end.php
//          ^ punctuation.terminator.statement.php

\echo\echo ();
// <- meta.function-call.identifier.php meta.path.php punctuation.accessor.namespace.php
//^^^^^^^^ meta.function-call.identifier.php meta.path.php
//        ^ meta.function-call.identifier.php - meta.path
//         ^^ meta.function-call.arguments.php meta.group.php
//^^^ variable.namespace.php
//   ^ punctuation.accessor.namespace.php
//    ^^^^ variable.function.php
//         ^ punctuation.section.group.begin.php
//          ^ punctuation.section.group.end.php
//           ^ punctuation.terminator.statement.php

array_slice($array, $offset, $length, preserve_keys: true);
//                                    ^^^^^^^^^^^^^ variable.parameter.named
//                                                 ^ keyword.operator.assignment.php
//                                                   ^^^^ constant.language

// function name should be case-sensitive
ArRaY_RaNd($array);
// <- meta.function-call.identifier.php support.function.array.php - meta.path
//^^^^^^^^ meta.function-call.identifier.php support.function.array.php - meta.path
//        ^^^^^^^^ meta.function-call.arguments.php meta.group.php

func_call(true, 1, "string");
// <- meta.function-call.identifier.php variable.function.php - meta.path
//^^^^^^^ meta.function-call.identifier.php - meta.path
//       ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.php meta.group.php
//                          ^ - meta.function-call
//^^^^^^^ variable.function.php
//       ^ punctuation.section.group.begin.php
//        ^^^^ constant.language.boolean.true.php
//            ^ punctuation.separator.sequence.php
//              ^ meta.number.integer.decimal.php constant.numeric.value.php
//               ^ punctuation.separator.sequence.php
//                 ^^^^^^^^ string.quoted.double.php
//                         ^ punctuation.section.group.end.php
//                          ^ punctuation.terminator.statement.php

$object->method(func_call());
//       ^^^^^^^^^^^^^^^^^^^ meta.function-call
//       ^^^^^^ variable.function
//             ^^^^^^^^^^^^^ meta.group
//              ^^^^^^^^^^^ meta.function-call meta.function-call
//              ^^^^^^^^^ variable.function
//                       ^^ meta.group meta.group

$object?->property::method();
//     ^ punctuation.accessor.nullsafe
//      ^^ punctuation.accessor.arrow
//                ^^ punctuation.accessor.double-colon
//                  ^^^^^^ meta.function-call.identifier variable.function
//                        ^^ meta.group

$country = $session?->user?->getAddress()?->country;
//                 ^ punctuation.accessor.nullsafe
//                  ^^ punctuation.accessor.arrow
//                        ^ punctuation.accessor.nullsafe
//                         ^^ punctuation.accessor.arrow
//                                       ^ punctuation.accessor.nullsafe
//                                        ^^ punctuation.accessor.arrow

null?->foo(bar())->baz();
//  ^ punctuation.accessor.nullsafe
//   ^^ punctuation.accessor.arrow


/******************************************************************************
 * Match Expression Tests
 * https://www.php.net/manual/de/control-structures.match.php
 *****************************************************************************/

$statement = match ($this->lexer->lookahead['type']) {
//           ^^^^^ keyword.control.conditional.match.php
    Lexer::T_UPDATE => $this->UpdateStatement(),
//  ^^^^^ support.class
//       ^^ punctuation.accessor.double-colon
//         ^^^^^^^^ constant.other
//                  ^^ punctuation.separator.key-value.php
//                     ^^^^^ variable.language
//                          ^^ punctuation.accessor.arrow
//                            ^^^^^^^^^^^^^^^ variable.function
//                                           ^^ meta.group
    Lexer::T_DELETE => $this->DeleteStatement(),
//                  ^^ punctuation.separator.key-value.php
    default => $this->syntaxError('UPDATE or DELETE'),
//  ^^^^^^^ keyword.control.conditional.default.php
//          ^^ punctuation.separator.key-value.php
//                               ^^^^^^^^^^^^^^^^^^^^ meta.group.php
//                               ^ punctuation.section.group.begin.php
//                                ^^^^^^^^^^^^^^^^^^ meta.string.php
//                                                  ^ punctuation.section.group.end.php
};

   ( match($var) {"true" => true, "false" => false } )
// ^^ meta.group.php - meta.match
//   ^^^^^ meta.group.php meta.match.php
//        ^^^^^^ meta.group.php meta.match.arguments.php meta.group.php
//              ^ meta.group.php meta.match.php - meta.group meta.group - meta.block
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.php meta.match.php meta.block.php
//                                                  ^^ meta.group.php - meta.match - meta.block
// ^ punctuation.section.group.begin.php
//   ^^^^^ keyword.control.conditional.match.php
//        ^ punctuation.section.group.begin.php
//         ^^^^ variable.other.php
//             ^ punctuation.section.group.end.php
//               ^ punctuation.section.block.begin.php
//                ^^^^^^ meta.string.php string.quoted.double.php
//                       ^^ punctuation.separator.key-value.php
//                          ^^^^ constant.language.boolean.true.php
//                              ^ punctuation.separator.sequence.php
//                                ^^^^^^^ meta.string.php string.quoted.double.php
//                                        ^^ punctuation.separator.key-value.php
//                                           ^^^^^ constant.language.boolean.false.php
//                                                 ^ punctuation.section.block.end.php
//                                                   ^ punctuation.section.group.end.php

   [ match($var) {"true" => true, "false" => false } ]
// ^^ meta.sequence.array.php - meta.match
//   ^^^^^ meta.sequence.array.php meta.match.php
//        ^^^^^^ meta.sequence.array.php meta.match.arguments.php meta.group.php
//              ^ meta.sequence.array.php meta.match.php - meta.group - meta.block
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.array.php meta.match.php meta.block.php
//                                                  ^^ meta.sequence.array.php - meta.match - meta.block
// ^ punctuation.section.sequence.begin.php
//   ^^^^^ keyword.control.conditional.match.php
//        ^ punctuation.section.group.begin.php
//         ^^^^ variable.other.php
//             ^ punctuation.section.group.end.php
//               ^ punctuation.section.block.begin.php
//                ^^^^^^ meta.string.php string.quoted.double.php
//                       ^^ punctuation.separator.key-value.php
//                          ^^^^ constant.language.boolean.true.php
//                              ^ punctuation.separator.sequence.php
//                                ^^^^^^^ meta.string.php string.quoted.double.php
//                                        ^^ punctuation.separator.key-value.php
//                                           ^^^^^ constant.language.boolean.false.php
//                                                 ^ punctuation.section.block.end.php
//                                                   ^ punctuation.section.sequence.end.php

   { match($var) {"true" => true, "false" => false } }
// ^^ meta.block.php - meta.match
//   ^^^^^ meta.block.php meta.match.php
//        ^^^^^^ meta.block.php meta.match.arguments.php meta.group.php
//              ^ meta.block.php meta.match.php - meta.group - meta.block meta.block
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.php meta.match.php meta.block.php
//                                                  ^^ meta.block.php - meta.match - meta.block meta.block
// ^ punctuation.section.block.begin.php
//   ^^^^^ keyword.control.conditional.match.php
//        ^ punctuation.section.group.begin.php
//         ^^^^ variable.other.php
//             ^ punctuation.section.group.end.php
//               ^ punctuation.section.block.begin.php
//                ^^^^^^ meta.string.php string.quoted.double.php
//                       ^^ punctuation.separator.key-value.php
//                          ^^^^ constant.language.boolean.true.php
//                              ^ punctuation.separator.sequence.php
//                                ^^^^^^^ meta.string.php string.quoted.double.php
//                                        ^^ punctuation.separator.key-value.php
//                                           ^^^^^ constant.language.boolean.false.php
//                                                 ^ punctuation.section.block.end.php
//                                                   ^ punctuation.section.block.end.php

   ( match( {  } )
// ^^ meta.group.php - meta.match
//   ^^^^^ meta.group.php meta.match.php
//        ^^ meta.group.php meta.match.arguments.php meta.group.php
//          ^^^^ meta.group.php meta.match.php meta.block.php
//              ^^ meta.group.php - meta.match
// ^ punctuation.section.group.begin.php
//   ^^^^^ keyword.control.conditional.match.php
//        ^ punctuation.section.group.begin.php
//          ^ punctuation.section.block.begin.php
//             ^ punctuation.section.block.end.php
//               ^ punctuation.section.group.end.php


/******************************************************************************
 * Instantiation Tests
 *****************************************************************************/

$test = new Test1;
//      ^^^^^^^^^ meta.instantiation.php
//      ^ keyword.other.new.php
//          ^^^^^ support.class.php - meta.path
//          ^ support.class.php

$anon = new readonly class{};
//      ^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class
//      ^^^^          meta.instantiation.php - meta.class
//          ^^^^^^^^ meta.instantiation.php storage.modifier.php - meta.class
//                   ^^^^^ meta.instantiation.php meta.class.php - meta.block
//                        ^^ meta.instantiation.php meta.class.php meta.block.php
//                          ^ - meta.instantiation - meta.class - meta.block
//      ^ keyword.other.new.php
//                   ^ keyword.declaration.class
//                        ^^ meta.class.php
//                        ^^ meta.block.php
//                        ^ punctuation.section.block.begin.php
//                         ^ punctuation.section.block.end.php

$anon = new class};
//      ^^^^^^^^^^ - meta.class meta.class
//      ^^^^ meta.instantiation.php - meta.class
//          ^^^^^ meta.instantiation.php meta.class.php - meta.block
//               ^ - meta.instantiation - meta.class - meta.block
//      ^ keyword.other.new.php
//          ^ keyword.declaration.class
//               ^ invalid.illegal.stray.php

$anon = new class ( {};
//      ^^^^^^^^^^^^^^ - meta.class meta.class
//      ^^^^ meta.instantiation.php - meta.class
//          ^^^^^^ meta.instantiation.php meta.class.php - meta.block - meta.group
//                ^^ meta.instantiation.php meta.class.php meta.group.php - meta.block
//                  ^^ meta.instantiation.php meta.class.php meta.block.php
//                    ^ - meta.instantiation - meta.class - meta.block
//      ^^^ keyword.other.new.php
//          ^^^^^ keyword.declaration.class.php
//                ^ punctuation.section.group.begin.php
//                  ^ punctuation.section.block.begin.php
//                   ^ punctuation.section.block.end.php

$anon = new class($param1, $param2) extends Test1 implements Countable {};
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.class.php - meta.class meta.class
//      ^ keyword.other.new.php
//          ^ keyword.declaration.class
//               ^^^^^^^^^^^^^^^^^^ meta.group.php
//               ^ punctuation.section.group.begin.php
//                ^ variable.other.php
//                       ^ punctuation.separator.sequence
//                         ^ variable.other.php
//                                ^ punctuation.section.group.end.php
//                                  ^ storage.modifier.extends.php
//                                          ^^^^^ entity.other.inherited-class.php - meta.path
//                                                ^ storage.modifier.implements.php
//                                                           ^^^^^^^^^ entity.other.inherited-class.php - meta.path
//                                                                     ^^ meta.class.php
//                                                                     ^^ meta.block.php

$anon = new /* comment */ #[anno] class($param1, $param2) extends Test1 implements Countable {};
//      ^^^ keyword.other.new.php
//          ^^^^^^^^^^^^^ comment.block.php
//                        ^^^^^^^ meta.annotation
//                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.class.php - meta.class meta.class
//                                ^^^^^ keyword.declaration.class
//                                     ^^^^^^^^^^^^^^^^^^ meta.group.php
//                                     ^ punctuation.section.group.begin.php
//                                      ^ variable.other.php
//                                             ^ punctuation.separator.sequence
//                                               ^ variable.other.php
//                                                      ^ punctuation.section.group.end.php
//                                                        ^ storage.modifier.extends.php
//                                                                ^^^^^ entity.other.inherited-class.php - meta.path
//                                                                      ^ storage.modifier.implements.php
//                                                                                 ^^^^^^^^^ entity.other.inherited-class.php - meta.path
//                                                                                           ^^ meta.class.php
//                                                                                           ^^ meta.block.php

$user_1 = new User("John", "a@b.com");
//        ^^^^^^^^ meta.instantiation.php - meta.group
//                ^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.group.php
//                                   ^ - meta.instantiation - meta.group
//        ^^^ keyword.other.new.php
//            ^^^^ support.class.php
//                ^ punctuation.section.group.begin.php
//                 ^^^^^^ meta.string.php string.quoted.double.php
//                       ^ punctuation.separator.sequence
//                         ^^^^^^^^^ meta.string.php string.quoted.double.php
//                                  ^ punctuation.section.group.end.php
//                                   ^ punctuation.terminator.statement.php

$user_1 = new /* comment */ #[anno] User("John", "a@b.com");
//        ^^^^^^^^^^^^^^^^^^ meta.instantiation.php - meta.annotation
//                          ^^^^^^^ meta.instantiation.php meta.annotation
//                                 ^^^^^  meta.instantiation.php - meta.annotation - meta.group
//                                      ^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.group.php
//                                                         ^ - meta.instantiation - meta.group
//        ^^^ keyword.other.new.php
//            ^^^^^^^^^^^^^ comment.block.php
//                          ^^^^^^^ meta.annotation
//                                  ^^^^ support.class.php
//                                      ^ punctuation.section.group.begin.php
//                                       ^^^^^^ meta.string.php string.quoted.double.php
//                                             ^ punctuation.separator.sequence
//                                               ^^^^^^^^^ meta.string.php string.quoted.double.php
//                                                        ^ punctuation.section.group.end.php
//                                                         ^ punctuation.terminator.statement.php

$user_1 = new /* comment */ #[anno] $cls("John", "a@b.com");
//        ^^^^^^^^^^^^^^^^^^ meta.instantiation.php - meta.annotation
//                          ^^^^^^^ meta.instantiation.php meta.annotation
//                                 ^^^^^  meta.instantiation.php - meta.annotation - meta.group
//                                      ^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.group.php
//                                                         ^ - meta.instantiation - meta.group
//        ^^^ keyword.other.new.php
//            ^^^^^^^^^^^^^ comment.block.php
//                          ^^^^^^^ meta.annotation
//                                  ^^^^ variable.other.php
//                                      ^ punctuation.section.group.begin.php
//                                       ^^^^^^ meta.string.php string.quoted.double.php
//                                             ^ punctuation.separator.sequence
//                                               ^^^^^^^^^ meta.string.php string.quoted.double.php
//                                                        ^ punctuation.section.group.end.php
//                                                         ^ punctuation.terminator.statement.php

$object = new \MyNamespace\ClassName();
// <- variable.other.php punctuation.definition.variable.php
//        ^^^^ meta.instantiation.php - meta.path
//            ^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.path.php
//                                  ^^ meta.instantiation.php meta.group.php
//^^^^^ variable.other.php
//      ^ keyword.operator.assignment.php
//        ^^^ keyword.other.new.php
//            ^ punctuation.accessor.namespace.php
//             ^^^^^^^^^^^ variable.namespace.php
//                        ^ punctuation.accessor.namespace.php
//                         ^^^^^^^^^ support.class.php
//                                  ^ punctuation.section.group.begin.php
//                                   ^ punctuation.section.group.end.php
//                                    ^ punctuation.terminator.statement.php

// class name should be case-insensitive
$object = new ArRaYoBjEcT();
//            ^^^^^^^^^^^ support.class.builtin

var_dump(new C(42));
//           ^ support.class - meta.path


/******************************************************************************
 * Type Cast Tests
 *****************************************************************************/

function testTypeCasts()
{
$foo = (array) $bar;
//     ^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^ storage.type.primitive.php
//           ^ punctuation.section.cast.end.php
        array
//      ^^^^^ storage.type.primitive.php

$foo = (binary) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.primitive.php
//            ^ punctuation.section.cast.end.php
        binary
//      ^^^^^^ constant.other.php

$foo = (bool) $bar;
//     ^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^ storage.type.primitive.php
//          ^ punctuation.section.cast.end.php
        bool
//      ^^^^ storage.type.primitive.php

$foo = (boolean) $bar;
//     ^^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^^ storage.type.primitive.php
//             ^ punctuation.section.cast.end.php
        boolean
//      ^^^^^^^ storage.type.primitive.php

$foo = (double) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.primitive.php
//            ^ punctuation.section.cast.end.php
        double
//      ^^^^^^ storage.type.primitive.php

$foo = (float) $bar;
//     ^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^ storage.type.primitive.php
//           ^ punctuation.section.cast.end.php
        float
//      ^^^^^ storage.type.primitive.php

$foo = (int) $bar;
//     ^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^ storage.type.primitive.php
//         ^ punctuation.section.cast.end.php
        int
//      ^^^ storage.type.primitive.php

$foo = (integer) $bar;
//     ^^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^^ storage.type.primitive.php
//             ^ punctuation.section.cast.end.php
        integer
//      ^^^^^^^ storage.type.primitive.php

$foo = (object) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.primitive.php
//            ^ punctuation.section.cast.end.php
        object
//      ^^^^^^ storage.type.primitive.php

$foo = (real) $bar;
//     ^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^ storage.type.primitive.php
//          ^ punctuation.section.cast.end.php
        real
//      ^^^^ storage.type.primitive.php

$foo = (string) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.primitive.php
//            ^ punctuation.section.cast.end.php
        string
//      ^^^^^^ storage.type.primitive.php

$foo = (unset) $bar;
//     ^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^ storage.type.primitive.php
//           ^ punctuation.section.cast.end.php
        unset
//      ^^^^^ support.function.builtin.php
}


/******************************************************************************
 * Operators Tests
 *****************************************************************************/

    += -= *= /= %= &= |= ^= >>= <<= .= ??=
// ^ - keyword
//  ^^ keyword.operator.assignment.augmented.php
//    ^ - keyword
//     ^^ keyword.operator.assignment.augmented.php
//       ^ - keyword
//        ^^ keyword.operator.assignment.augmented.php
//          ^ - keyword
//           ^^ keyword.operator.assignment.augmented.php
//             ^ - keyword
//              ^^ keyword.operator.assignment.augmented.php
//                ^ - keyword
//                 ^^ keyword.operator.assignment.augmented.php
//                   ^ - keyword
//                    ^^ keyword.operator.assignment.augmented.php
//                      ^ - keyword
//                       ^^ keyword.operator.assignment.augmented.php
//                         ^ - keyword
//                          ^^^ keyword.operator.assignment.augmented.php
//                             ^ - keyword
//                              ^^^ keyword.operator.assignment.augmented.php
//                                 ^ - keyword
//                                  ^^ keyword.operator.assignment.augmented.php
//                                    ^ - keyword
//                                     ^^^ keyword.operator.assignment.augmented.php
//                                        ^ - keyword

    = =& &con
// ^ - keyword
//  ^ keyword.operator.assignment.php
//   ^ - keyword
//    ^ keyword.operator.assignment.php
//     ^ keyword.operator.reference.php
//      ^ - keyword
//       ^ keyword.operator.reference.php
//        ^^^ constant.other.php

    + - * / %
// ^ - keyword
//  ^ keyword.operator.arithmetic.php
//   ^ - keyword
//    ^ keyword.operator.arithmetic.php
//     ^ - keyword
//      ^ keyword.operator.arithmetic.php
//       ^ - keyword
//        ^ keyword.operator.arithmetic.php
//         ^ - keyword
//          ^ keyword.operator.arithmetic.php
//           ^ - keyword

    << >> ~ ^ & |
// ^ - keyword
//  ^^ keyword.operator.bitwise.php
//    ^ - keyword
//     ^^ keyword.operator.bitwise.php
//       ^ - keyword
//        ^ keyword.operator.bitwise.php
//         ^ - keyword
//          ^ keyword.operator.bitwise.php
//           ^ - keyword
//            ^ keyword.operator.bitwise.php
//             ^ - keyword
//              ^ keyword.operator.bitwise.php
//               ^ - keyword

    === !== <=> == != <= >= <> < > =>
// ^ - keyword
//  ^^^ keyword.operator.comparison.php
//     ^ - keyword
//      ^^^ keyword.operator.comparison.php
//         ^ - keyword
//          ^^^ keyword.operator.comparison.php
//             ^ - keyword
//              ^^ keyword.operator.comparison.php
//                ^ - keyword
//                 ^^ keyword.operator.comparison.php
//                   ^ - keyword
//                    ^^ keyword.operator.comparison.php
//                      ^ - keyword
//                       ^^ keyword.operator.comparison.php
//                         ^ - keyword
//                          ^^ keyword.operator.comparison.php
//                            ^ - keyword
//                             ^ keyword.operator.comparison.php
//                              ^ - keyword
//                               ^ keyword.operator.comparison.php
//                                ^^^^ - keyword
//                                 ^^ punctuation.separator.key-value.php

    && || !
// ^ - keyword
//  ^^ keyword.operator.logical.php
//    ^ - keyword
//     ^^ keyword.operator.logical.php
//       ^ - keyword
//        ^ keyword.operator.logical.php
//         ^ - keyword

    and or xor
// ^ - keyword
//  ^^^ keyword.operator.logical.php
//     ^ - keyword
//      ^^ keyword.operator.logical.php
//        ^ - keyword
//         ^^^ keyword.operator.logical.php
//            ^ - keyword

    ? ?? : :
// ^ - keyword
//  ^ keyword.operator.ternary.php
//   ^ - keyword
//    ^^ keyword.operator.null-coalescing.php
//      ^ - keyword
//       ^ keyword.operator.ternary.php
//        ^^^ - keyword
//         ^ punctuation.separator.colon.php

    . ...
//  ^ keyword.operator.concatenation.php
//    ^^^ keyword.operator.variadic.php


$a += .5;
// ^^ keyword.operator.assignment.augmented.php
//    ^^ constant.numeric

$a .= 1;
// ^^ keyword.operator.assignment.augmented.php

$a ??= 1;
// ^^^ keyword.operator.assignment.augmented.php

$a = $b ?? 1;
//      ^^ keyword.operator.null-coalescing.php

$a = $b ? $c::MY_CONST : $d * 5;
//      ^ keyword.operator.ternary.php
//        ^^ variable.other.php
//          ^^ punctuation.accessor.double-colon.php
//            ^^^^^^^^ constant.other.member.php
//                     ^ keyword.operator.ternary.php
//                          ^ keyword.operator.arithmetic.php

$a = $b ? : $c::MY_CONST;
//      ^ keyword.operator.ternary.php
//        ^ keyword.operator.ternary.php
//          ^^ variable.other.php
//            ^^ punctuation.accessor.double-colon.php
//              ^^^^^^^^ constant.other.member.php

$a = $b ? $c ? foo : bar : baz;
//      ^ keyword.operator.ternary.php
//           ^ keyword.operator.ternary.php
//                 ^ keyword.operator.ternary.php
//                       ^ keyword.operator.ternary.php

$a = ($b ? fn () => 1 : 2);
//   ^^^^^^^^^^^^^^^^^^^^^ meta.group.php
//         ^^^ meta.function.anonymous.php
//            ^^ meta.function.anonymous.parameters.php meta.group.php
//              ^^^^^^ meta.function.anonymous.php
//                    ^^^^ - meta.function
//   ^ punctuation.section.group.begin.php
//    ^^ variable.other.php
//       ^ keyword.operator.ternary.php
//         ^^ keyword.declaration.function.php
//            ^ punctuation.section.group.begin.php
//             ^ punctuation.section.group.end.php
//               ^^ keyword.declaration.function.arrow.php
//                  ^ meta.number.integer.decimal.php constant.numeric.value.php
//                    ^ keyword.operator.ternary.php
//                      ^ constant.numeric.value.php
//                       ^ punctuation.section.group.end.php
//                        ^ punctuation.terminator.statement.php

$a = ($b ? fn ($c) => $c ? 1 : 2 : 3);
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.php
//         ^^^ meta.function.anonymous.php
//            ^^^^ meta.function.anonymous.parameters.php meta.group.php
//                ^^^^^^^^^^^^^^^ meta.function.anonymous.php
//                               ^^^^^ - meta.function
//   ^ punctuation.section.group.begin.php
//    ^^ variable.other.php
//       ^ keyword.operator.ternary.php
//         ^^ keyword.declaration.function.php
//            ^ punctuation.section.group.begin.php
//             ^^ variable.parameter.php
//               ^ punctuation.section.group.end.php
//                 ^^ keyword.declaration.function.arrow.php
//                    ^^ variable.other.php
//                       ^ keyword.operator.ternary.php
//                         ^ meta.number.integer.decimal.php constant.numeric.value.php
//                           ^ keyword.operator.ternary.php
//                             ^ meta.number.integer.decimal.php constant.numeric.value.php
//                               ^ keyword.operator.ternary.php
//                                 ^ constant.numeric.value.php
//                                  ^ punctuation.section.group.end.php
//                                   ^ punctuation.terminator.statement.php

/******************************************************************************
 * Qualified Identifier and Member Access Tests
 *****************************************************************************/

if ($foo instanceof \Mynamespace\ClassName) {
//  ^ variable.other
//       ^^^^^^^^^^ keyword.other.instanceof.php
//                  ^^^^^^^^^^^^^^^^^^^^^^ meta.path.php
//                  ^ punctuation.accessor.namespace.php
//                   ^ variable.namespace.php
//                              ^ punctuation.accessor.namespace.php
//                               ^^^^^^^^^ support.class.php
}

\MyNamespace\Foo::BAR;
// <- punctuation.accessor.namespace
 // <- variable.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.accessor.namespace
//           ^ support.class
//              ^^ punctuation.accessor.double-colon.php
//                ^^^ constant.other.member.php

\MyNamespace\Foo::$Bar
// <- punctuation.accessor.namespace
 // <- variable.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.accessor.namespace
//           ^^^ support.class
//              ^^ punctuation.accessor.double-colon.php
//                ^^^^ variable.other.member.php
//                ^ punctuation.definition.variable.php

\MyNamespace\Foo::class
// <- punctuation.accessor.namespace
 // <- variable.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.accessor.namespace
//           ^^^ support.class
//              ^^ punctuation.accessor.double-colon.php
//                ^^^^^ variable.language.class.java

\MyNamespace\Foo::class();
// <- punctuation.accessor.namespace
 // <- variable.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.accessor.namespace
//           ^^^ support.class
//              ^^ punctuation.accessor.double-colon.php
//                ^^^^^^^ - meta.function-call
//                ^^^^^ variable.language.class.java
//                     ^^ meta.group
//                     ^ punctuation.section.group.begin
//                      ^ punctuation.section.group.end

\MyNamespace\Foo::bar();
// <- punctuation.accessor.namespace
 // <- variable.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.accessor.namespace
//           ^^^ support.class
//              ^^ punctuation.accessor.double-colon.php
//                ^^^^^ meta.function-call
//                ^^^ variable.function
//                   ^^ meta.group
//                   ^ punctuation.section.group.begin
//                    ^ punctuation.section.group.end

\MyNamespace\Foo;
// <- punctuation.accessor.namespace
 // <- variable.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.accessor.namespace
//           ^ constant.other

self::member;
// <- variable.language.this.php
//  ^^ punctuation.accessor.double-colon.php
//    ^^^^^^ constant.other.member.php

$foo::$member;
// <- variable.other.php punctuation.definition.variable.php
//^^ variable.other.php - punctuation
//  ^^ punctuation.accessor.double-colon.php
//    ^ variable.other.member.php punctuation.definition.variable.php
//     ^^^^^^ variable.other.member.php - punctuation

$foo::${member};
// <- variable.other.php punctuation.definition.variable.php
//^^ variable.other.php - punctuation
//  ^^ punctuation.accessor.double-colon.php
//    ^^^^^^^^^ meta.variable.php
//    ^^ punctuation.definition.variable.begin.php
//      ^^^^^^ constant.other.php
//            ^ punctuation.definition.variable.end.php

$foo::${member . "name"};
// <- variable.other.php punctuation.definition.variable.php
//^^ variable.other.php - punctuation
//  ^^ punctuation.accessor.double-colon.php
//    ^^^^^^^^^^^^^^^^^^ meta.variable.php
//    ^^ punctuation.definition.variable.begin.php
//      ^^^^^^ constant.other.php
//             ^ keyword.operator.concatenation.php
//               ^^^^^^ meta.string.php string.quoted.double.php
//                     ^ punctuation.definition.variable.end.php


/******************************************************************************
 * Object Member Access Tests
 *****************************************************************************/

   $obj->foo
//     ^^ punctuation.accessor.arrow.php
//       ^^^ variable.other.member.php

   $foo->{bar}
//     ^^ punctuation.accessor.arrow.php
//       ^^^^^ meta.variable.php
//       ^ punctuation.definition.variable.begin.php
//        ^^^ constant.other.php
//           ^ punctuation.definition.variable.end.php

   $foo->{"bar"}
//     ^^ punctuation.accessor.arrow.php
//       ^^^^^^^ meta.variable.php
//       ^ punctuation.definition.variable.begin.php
//        ^^^^^ meta.string.php string.quoted.double.php
//             ^ punctuation.definition.variable.end.php

   $foo->${bar}
//     ^^ punctuation.accessor.arrow.php
//       ^^^^^^ meta.variable.php
//       ^^ punctuation.definition.variable.begin.php
//         ^^^ constant.other.php
//            ^ punctuation.definition.variable.end.php


/******************************************************************************
 * Unqualified Identifier Tests
 *****************************************************************************/

   $_ENV
// ^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $_FILES
// ^^^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $_GET
// ^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $_POST
// ^^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $_REQUEST
// ^^^^^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $_SESSION
// ^^^^^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $_SERVER['variable']
// ^^^^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php
//         ^^^^^^^^^^^^ meta.item-access.php
//         ^ punctuation.section.brackets.begin.php
//          ^^^^^^^^^^ meta.string.php string.quoted.single.php
//                    ^ punctuation.section.brackets.end.php

   $GLOBALS
// ^^^^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $argc
// ^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $argv
// ^^^^^ variable.language.global.php
// ^ punctuation.definition.variable.php

   $ $foo $$foo $$$foo
// ^ punctuation.definition.variable.php
//   ^ variable.other.php punctuation.definition.variable.php
//    ^^^ variable.other.php - punctuation
//        ^ keyword.operator.dereference.php
//         ^ variable.other.php punctuation.definition.variable.php
//          ^^^ variable.other.php - punctuation
//              ^^ keyword.operator.dereference.php
//                ^ variable.other.php punctuation.definition.variable.php
//                 ^^^ variable.other.php - punctuation

   ${} ${foo} $${foo} $$${foo}
// ^^^ meta.variable.php
// ^^ punctuation.definition.variable.begin.php
//   ^ punctuation.definition.variable.end.php
//     ^^^^^^ meta.variable.php
//     ^^ punctuation.definition.variable.begin.php
//       ^^^ constant.other.php
//          ^ punctuation.definition.variable.end.php
//            ^ keyword.operator.dereference.php - meta.variable - variable
//             ^^^^^^ meta.variable.php
//             ^^ punctuation.definition.variable.begin.php
//               ^^^ constant.other.php
//                  ^ punctuation.definition.variable.end.php
//                    ^^ keyword.operator.dereference.php - meta.variable - variable
//                      ^^^^^^ meta.variable.php
//                      ^^ punctuation.definition.variable.begin.php
//                        ^^^ constant.other.php
//                           ^ punctuation.definition.variable.end.php


/******************************************************************************
 * Literal Constants Tests
 *****************************************************************************/

// constant name should be case-sensitive
$const = E_aLL;
//       ^^^^^ - support.constant.core - meta.path.php

// test for constants for each group in the syntax definition
$const = \PHP_VERSION_ID;
//       ^ meta.path.php punctuation.accessor.namespace.php
//        ^^^^^^^^^^^^^^ meta.path.php support.constant.core.php - punctuation
$const = E_ALL;
//       ^^^^^ support.constant.core.php - punctuation
$const = CASE_LOWER;
//       ^^^^^^^^^^ support.constant.std - meta.path.php
$const = CURLAUTH_BASIC;
//       ^^^^^^^^^^^^^^ support.constant.ext - meta.path.php
$const = T_ABSTRACT;
//       ^^^^^^^^^^ support.constant.parser-token - meta.path.php


/******************************************************************************
 * Literal Number Tests
 *****************************************************************************/

$var = 0;
//     ^ meta.number.integer.decimal constant.numeric.value

$var2 = -123.456e10;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^^^^ meta.number.float.decimal constant.numeric.value
//          ^ punctuation.separator.decimal.php

$var2 = -12_3.45_6e1_0;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^^^^^^^ meta.number.float.decimal constant.numeric.value
//           ^ punctuation.separator.decimal.php

$var2 = -123.e10;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^ meta.number.float.decimal constant.numeric.value
//          ^ punctuation.separator.decimal.php

$var2 = -12_3.e1_0;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^^^ meta.number.float.decimal constant.numeric.value
//           ^ punctuation.separator.decimal.php

$var2 = -.123e10;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^ meta.number.float.decimal constant.numeric.value
//       ^ punctuation.separator.decimal.php

$var2 = -.12_3e1_0;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^^^ meta.number.float.decimal constant.numeric.value
//       ^ punctuation.separator.decimal.php

$var2 = -123e10;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^ meta.number.float.decimal constant.numeric.value

$var2 = -12_3e1_0;
//      ^ keyword.operator.arithmetic.php - meta.number - constant.numeric
//       ^^^^^^^^ meta.number.float.decimal constant.numeric.value

$var3 = 0x0f;
//      ^^^^ meta.number.integer.hexadecimal
//      ^^ constant.numeric.base.php
//        ^^ constant.numeric.value

$var3 = 0o0766;
//      ^^^^^^ meta.number.integer.octal
//      ^^ constant.numeric.base.php
//        ^^^^ constant.numeric.value

$var3 = 0x0_f;
//      ^^^^ meta.number.integer.hexadecimal
//      ^^ constant.numeric.base.php
//        ^^^ constant.numeric.value

$var4 = 0b0111;
//      ^^^^^^ meta.number.integer.binary
//      ^^ constant.numeric.base.php
//        ^^^^ constant.numeric.value

$var4 = 0b0_1_1_1;
//      ^^^^^^^^^ meta.number.integer.binary
//      ^^ constant.numeric.base.php
//        ^^^^^^^ constant.numeric.value


/******************************************************************************
 * Literal String and Interpolation Tests
 *****************************************************************************/

    '\0 \12 \345g \x0f \u{a} \u{9999} \u{999} \\ \" \' '
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant.character
//                                            ^^ constant.character.escape.php
//                                              ^^^^ - constant.character
//                                                  ^^ constant.character.escape.php
//                                                    ^^ - constant.character

    `\0 \12 \345g \x0f \u{a} \u{9999} \u{999} \\ \" \' `
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.other.php
//   ^^ constant.character.escape.octal.php
//   ^^ constant.character.escape.octal.php
//     ^ - constant.character
//      ^^^ constant.character.escape.octal.php
//         ^ - constant.character
//          ^^^^ constant.character.escape.octal.php
//              ^ - constant.character
//                ^^^^ constant.character.escape.hex.php
//                    ^ - constant.character
//                     ^^^^^ constant.character.escape.unicodepoint.php
//                          ^ - constant.character
//                           ^^^^^^^^ constant.character.escape.unicodepoint.php
//                                   ^ - constant.character
//                                    ^^^^^^^ constant.character.escape.unicodepoint.php
//                                           ^ - constant.character
//                                            ^^ constant.character.escape.php
//                                              ^ - constant.character
//                                               ^^ constant.character.escape.php
//                                                 ^ - constant.character
//                                                  ^^ constant.character.escape.php
//                                                    ^^ - constant.character

    "\0 \12 \345g \x0f \u{a} \u{9999} \u{999} \\ \" \' "
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//   ^^ constant.character.escape.octal.php
//     ^ - constant.character
//      ^^^ constant.character.escape.octal.php
//         ^ - constant.character
//          ^^^^ constant.character.escape.octal.php
//              ^ - constant.character
//                ^^^^ constant.character.escape.hex.php
//                    ^ - constant.character
//                     ^^^^^ constant.character.escape.unicodepoint.php
//                          ^ - constant.character
//                           ^^^^^^^^ constant.character.escape.unicodepoint.php
//                                   ^ - constant.character
//                                    ^^^^^^^ constant.character.escape.unicodepoint.php
//                                           ^ - constant.character
//                                            ^^ constant.character.escape.php
//                                              ^ - constant.character
//                                               ^^ constant.character.escape.php
//                                                 ^^^^^ - constant.character

    'format: %b %d %c %d %e %E %f %F %g %G %h %H %o %s %u %x %X %%'
//           ^ punctuation.definition.placeholder.php
//           ^^ constant.other.placeholder.php
//             ^ - constant.other.placeholder - punctuation
//              ^ punctuation.definition.placeholder.php
//              ^^ constant.other.placeholder.php
//                ^ - constant.other.placeholder - punctuation
//                 ^ punctuation.definition.placeholder.php
//                 ^^ constant.other.placeholder.php
//                   ^ - constant.other.placeholder - punctuation
//                    ^ punctuation.definition.placeholder.php
//                    ^^ constant.other.placeholder.php
//                      ^ - constant.other.placeholder - punctuation
//                       ^ punctuation.definition.placeholder.php
//                       ^^ constant.other.placeholder.php
//                         ^ - constant.other.placeholder - punctuation
//                          ^ punctuation.definition.placeholder.php
//                          ^^ constant.other.placeholder.php
//                            ^ - constant.other.placeholder - punctuation
//                             ^ punctuation.definition.placeholder.php
//                             ^^ constant.other.placeholder.php
//                               ^ - constant.other.placeholder - punctuation
//                                ^ punctuation.definition.placeholder.php
//                                ^^ constant.other.placeholder.php
//                                  ^ - constant.other.placeholder - punctuation
//                                   ^ punctuation.definition.placeholder.php
//                                   ^^ constant.other.placeholder.php
//                                     ^ - constant.other.placeholder - punctuation
//                                      ^ punctuation.definition.placeholder.php
//                                      ^^ constant.other.placeholder.php
//                                        ^ - constant.other.placeholder - punctuation
//                                         ^ punctuation.definition.placeholder.php
//                                         ^^ constant.other.placeholder.php
//                                           ^ - constant.other.placeholder - punctuation
//                                            ^ punctuation.definition.placeholder.php
//                                            ^^ constant.other.placeholder.php
//                                              ^ - constant.other.placeholder - punctuation
//                                               ^ punctuation.definition.placeholder.php
//                                               ^^ constant.other.placeholder.php
//                                                 ^ - constant.other.placeholder - punctuation
//                                                  ^ punctuation.definition.placeholder.php
//                                                  ^^ constant.other.placeholder.php
//                                                    ^ - constant.other.placeholder - punctuation
//                                                     ^ punctuation.definition.placeholder.php
//                                                     ^^ constant.other.placeholder.php
//                                                       ^ - constant.other.placeholder - punctuation
//                                                        ^ punctuation.definition.placeholder.php
//                                                        ^^ constant.other.placeholder.php
//                                                          ^ - constant.other.placeholder - punctuation
//                                                           ^ punctuation.definition.placeholder.php
//                                                           ^^ constant.other.placeholder.php
//                                                             ^ - constant.other.placeholder - punctuation
//                                                              ^^ constant.character.escape.php - punctuation
//                                                                ^ - constant

    "format: %b %d %c %d %e %E %f %F %g %G %h %H %o %s %u %x %X %%"
//           ^ punctuation.definition.placeholder.php
//           ^^ constant.other.placeholder.php
//             ^ - constant.other.placeholder - punctuation
//              ^ punctuation.definition.placeholder.php
//              ^^ constant.other.placeholder.php
//                ^ - constant.other.placeholder - punctuation
//                 ^ punctuation.definition.placeholder.php
//                 ^^ constant.other.placeholder.php
//                   ^ - constant.other.placeholder - punctuation
//                    ^ punctuation.definition.placeholder.php
//                    ^^ constant.other.placeholder.php
//                      ^ - constant.other.placeholder - punctuation
//                       ^ punctuation.definition.placeholder.php
//                       ^^ constant.other.placeholder.php
//                         ^ - constant.other.placeholder - punctuation
//                          ^ punctuation.definition.placeholder.php
//                          ^^ constant.other.placeholder.php
//                            ^ - constant.other.placeholder - punctuation
//                             ^ punctuation.definition.placeholder.php
//                             ^^ constant.other.placeholder.php
//                               ^ - constant.other.placeholder - punctuation
//                                ^ punctuation.definition.placeholder.php
//                                ^^ constant.other.placeholder.php
//                                  ^ - constant.other.placeholder - punctuation
//                                   ^ punctuation.definition.placeholder.php
//                                   ^^ constant.other.placeholder.php
//                                     ^ - constant.other.placeholder - punctuation
//                                      ^ punctuation.definition.placeholder.php
//                                      ^^ constant.other.placeholder.php
//                                        ^ - constant.other.placeholder - punctuation
//                                         ^ punctuation.definition.placeholder.php
//                                         ^^ constant.other.placeholder.php
//                                           ^ - constant.other.placeholder - punctuation
//                                            ^ punctuation.definition.placeholder.php
//                                            ^^ constant.other.placeholder.php
//                                              ^ - constant.other.placeholder - punctuation
//                                               ^ punctuation.definition.placeholder.php
//                                               ^^ constant.other.placeholder.php
//                                                 ^ - constant.other.placeholder - punctuation
//                                                  ^ punctuation.definition.placeholder.php
//                                                  ^^ constant.other.placeholder.php
//                                                    ^ - constant.other.placeholder - punctuation
//                                                     ^ punctuation.definition.placeholder.php
//                                                     ^^ constant.other.placeholder.php
//                                                       ^ - constant.other.placeholder - punctuation
//                                                        ^ punctuation.definition.placeholder.php
//                                                        ^^ constant.other.placeholder.php
//                                                          ^ - constant.other.placeholder - punctuation
//                                                           ^ punctuation.definition.placeholder.php
//                                                           ^^ constant.other.placeholder.php
//                                                             ^ - constant.other.placeholder - punctuation
//                                                              ^^ constant.character.escape.php - punctuation
//                                                                ^ - constant

    'format: %5$- .9f | %-.9g | %+0d | %\'ff'
//           ^ punctuation.definition.placeholder.php
//           ^^^^^^^^ constant.other.placeholder.php
//                   ^^^ - constant
//                      ^ punctuation.definition.placeholder.php
//                      ^^^^^ constant.other.placeholder.php
//                        ^ punctuation.separator.decimal.php
//                           ^^^ - constant
//                              ^ punctuation.definition.placeholder.php
//                              ^^^^ constant.other.placeholder.php
//                                  ^^^ - constant
//                                     ^ punctuation.definition.placeholder.php
//                                     ^^^^^ constant.other.placeholder.php

    "format: %5$- .9f | %-.9g | %+0d | %'ff"
//           ^ punctuation.definition.placeholder.php
//           ^^^^^^^^ constant.other.placeholder.php
//                   ^^^ - constant
//                      ^ punctuation.definition.placeholder.php
//                      ^^^^^ constant.other.placeholder.php
//                        ^ punctuation.separator.decimal.php
//                           ^^^ - constant
//                              ^ punctuation.definition.placeholder.php
//                              ^^^^ constant.other.placeholder.php
//                                  ^^^ - constant
//                                     ^ punctuation.definition.placeholder.php
//                                     ^^^^ constant.other.placeholder.php

   "[%s]"       // standard string output
//   ^^ constant.other.placeholder.php
   "[%10s]"     // right-justification with spaces
//   ^^^^ constant.other.placeholder.php
   "[%-10s]"    // left-justification with spaces
//   ^^^^^ constant.other.placeholder.php
   "[%010s]"    // zero-padding works on strings too
//   ^^^^^ constant.other.placeholder.php
   "[%'#10s]"   // use the custom padding character '#'
//   ^^^^^^ constant.other.placeholder.php
   "[%10.9s]"   // right-justification but with a cutoff of 8 characters
//   ^^^^^^ constant.other.placeholder.php
   "[%-10.9s]"  // left-justification but with a cutoff of 8 characters
//   ^^^^^^^ constant.other.placeholder.php

   // https://www.php.net/manual/en/function.strftime
   'strftime: %a %A %d %e %j %u %w %U %V %W %b %B %h %m %C %g %G %y %Y %H %k %I %l %M %p %P %r %R %S %T %X %z %Z %c %D %F %s %x %n %t'
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php
//            ^ punctuation.definition.placeholder.php
//            ^^ constant.other.placeholder.php
//              ^ - constant.other.placeholder - punctuation
//               ^ punctuation.definition.placeholder.php
//               ^^ constant.other.placeholder.php
//                 ^ - constant.other.placeholder - punctuation
//                  ^ punctuation.definition.placeholder.php
//                  ^^ constant.other.placeholder.php
//                    ^ - constant.other.placeholder - punctuation
//                     ^ punctuation.definition.placeholder.php
//                     ^^ constant.other.placeholder.php
//                       ^ - constant.other.placeholder - punctuation
//                        ^ punctuation.definition.placeholder.php
//                        ^^ constant.other.placeholder.php
//                          ^ - constant.other.placeholder - punctuation
//                           ^ punctuation.definition.placeholder.php
//                           ^^ constant.other.placeholder.php
//                             ^ - constant.other.placeholder - punctuation
//                              ^ punctuation.definition.placeholder.php
//                              ^^ constant.other.placeholder.php
//                                ^ - constant.other.placeholder - punctuation
//                                 ^ punctuation.definition.placeholder.php
//                                 ^^ constant.other.placeholder.php
//                                   ^ - constant.other.placeholder - punctuation
//                                    ^ punctuation.definition.placeholder.php
//                                    ^^ constant.other.placeholder.php
//                                      ^ - constant.other.placeholder - punctuation
//                                       ^ punctuation.definition.placeholder.php
//                                       ^^ constant.other.placeholder.php
//                                         ^ - constant.other.placeholder - punctuation
//                                          ^ punctuation.definition.placeholder.php
//                                          ^^ constant.other.placeholder.php
//                                            ^ - constant.other.placeholder - punctuation
//                                             ^ punctuation.definition.placeholder.php
//                                             ^^ constant.other.placeholder.php
//                                               ^ - constant.other.placeholder - punctuation
//                                                ^ punctuation.definition.placeholder.php
//                                                ^^ constant.other.placeholder.php
//                                                  ^ - constant.other.placeholder - punctuation
//                                                   ^ punctuation.definition.placeholder.php
//                                                   ^^ constant.other.placeholder.php
//                                                     ^ - constant.other.placeholder - punctuation
//                                                      ^ punctuation.definition.placeholder.php
//                                                      ^^ constant.other.placeholder.php
//                                                        ^ - constant.other.placeholder - punctuation
//                                                         ^ punctuation.definition.placeholder.php
//                                                         ^^ constant.other.placeholder.php
//                                                           ^ - constant.other.placeholder - punctuation
//                                                            ^ punctuation.definition.placeholder.php
//                                                            ^^ constant.other.placeholder.php
//                                                              ^ - constant.other.placeholder - punctuation
//                                                               ^^ constant.other.placeholder.php
//                                                                 ^ - constant.other.placeholder - punctuation
//                                                                  ^ punctuation.definition.placeholder.php
//                                                                  ^^ constant.other.placeholder.php
//                                                                    ^ - constant.other.placeholder - punctuation
//                                                                     ^ punctuation.definition.placeholder.php
//                                                                     ^^ constant.other.placeholder.php
//                                                                       ^ - constant.other.placeholder - punctuation
//                                                                        ^ punctuation.definition.placeholder.php
//                                                                        ^^ constant.other.placeholder.php
//                                                                          ^ - constant.other.placeholder - punctuation
//                                                                           ^ punctuation.definition.placeholder.php
//                                                                           ^^ constant.other.placeholder.php
//                                                                             ^ - constant.other.placeholder - punctuation
//                                                                              ^ punctuation.definition.placeholder.php
//                                                                              ^^ constant.other.placeholder.php
//                                                                                ^ - constant.other.placeholder - punctuation
//                                                                                 ^ punctuation.definition.placeholder.php
//                                                                                 ^^ constant.other.placeholder.php
//                                                                                   ^ - constant.other.placeholder - punctuation
//                                                                                    ^ punctuation.definition.placeholder.php
//                                                                                    ^^ constant.other.placeholder.php
//                                                                                      ^ - constant.other.placeholder - punctuation
//                                                                                       ^ punctuation.definition.placeholder.php
//                                                                                       ^^ constant.other.placeholder.php
//                                                                                         ^ - constant.other.placeholder - punctuation
//                                                                                          ^ punctuation.definition.placeholder.php
//                                                                                          ^^ constant.other.placeholder.php
//                                                                                            ^ - constant.other.placeholder - punctuation
//                                                                                             ^ punctuation.definition.placeholder.php
//                                                                                             ^^ constant.other.placeholder.php
//                                                                                               ^ - constant.other.placeholder - punctuation
//                                                                                                ^ punctuation.definition.placeholder.php
//                                                                                                ^^ constant.other.placeholder.php
//                                                                                                  ^ - constant.other.placeholder - punctuation
//                                                                                                   ^ punctuation.definition.placeholder.php
//                                                                                                   ^^ constant.other.placeholder.php
//                                                                                                     ^ - constant.other.placeholder - punctuation
//                                                                                                      ^ punctuation.definition.placeholder.php
//                                                                                                      ^^ constant.other.placeholder.php
//                                                                                                        ^ - constant.other.placeholder - punctuation
//                                                                                                         ^ punctuation.definition.placeholder.php
//                                                                                                         ^^ constant.other.placeholder.php
//                                                                                                           ^ - constant.other.placeholder - punctuation
//                                                                                                            ^ punctuation.definition.placeholder.php
//                                                                                                            ^^ constant.other.placeholder.php
//                                                                                                              ^ - constant.other.placeholder - punctuation
//                                                                                                               ^ punctuation.definition.placeholder.php
//                                                                                                               ^^ constant.other.placeholder.php
//                                                                                                                 ^ - constant.other.placeholder - punctuation
//                                                                                                                  ^ punctuation.definition.placeholder.php
//                                                                                                                  ^^ constant.other.placeholder.php
//                                                                                                                    ^ - constant.other.placeholder - punctuation
//                                                                                                                     ^^ constant.other.placeholder.php
//                                                                                                                       ^ - constant.other.placeholder - punctuation
//                                                                                                                        ^^ constant.other.placeholder.php
//                                                                                                                          ^ - constant.other.placeholder - punctuation
//                                                                                                                           ^ punctuation.definition.placeholder.php
//                                                                                                                           ^^ constant.other.placeholder.php
//                                                                                                                             ^ - constant.other.placeholder - punctuation
//                                                                                                                              ^ punctuation.definition.placeholder.php
//                                                                                                                              ^^ constant.other.placeholder.php
//                                                                                                                                ^ - constant.other.placeholder - punctuation
//                                                                                                                                 ^^ constant.other.placeholder.php
//                                                                                                                                   ^ - constant


   "strftime: %a %A %d %e %j %u %w %U %V %W %b %B %h %m %C %g %G %y %Y %H %k %I %l %M %p %P %r %R %S %T %X %z %Z %c %D %F %s %x %n %t"
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//            ^ punctuation.definition.placeholder.php
//            ^^ constant.other.placeholder.php
//              ^ - constant.other.placeholder - punctuation
//               ^ punctuation.definition.placeholder.php
//               ^^ constant.other.placeholder.php
//                 ^ - constant.other.placeholder - punctuation
//                  ^ punctuation.definition.placeholder.php
//                  ^^ constant.other.placeholder.php
//                    ^ - constant.other.placeholder - punctuation
//                     ^ punctuation.definition.placeholder.php
//                     ^^ constant.other.placeholder.php
//                       ^ - constant.other.placeholder - punctuation
//                        ^ punctuation.definition.placeholder.php
//                        ^^ constant.other.placeholder.php
//                          ^ - constant.other.placeholder - punctuation
//                           ^ punctuation.definition.placeholder.php
//                           ^^ constant.other.placeholder.php
//                             ^ - constant.other.placeholder - punctuation
//                              ^ punctuation.definition.placeholder.php
//                              ^^ constant.other.placeholder.php
//                                ^ - constant.other.placeholder - punctuation
//                                 ^ punctuation.definition.placeholder.php
//                                 ^^ constant.other.placeholder.php
//                                   ^ - constant.other.placeholder - punctuation
//                                    ^ punctuation.definition.placeholder.php
//                                    ^^ constant.other.placeholder.php
//                                      ^ - constant.other.placeholder - punctuation
//                                       ^ punctuation.definition.placeholder.php
//                                       ^^ constant.other.placeholder.php
//                                         ^ - constant.other.placeholder - punctuation
//                                          ^ punctuation.definition.placeholder.php
//                                          ^^ constant.other.placeholder.php
//                                            ^ - constant.other.placeholder - punctuation
//                                             ^ punctuation.definition.placeholder.php
//                                             ^^ constant.other.placeholder.php
//                                               ^ - constant.other.placeholder - punctuation
//                                                ^ punctuation.definition.placeholder.php
//                                                ^^ constant.other.placeholder.php
//                                                  ^ - constant.other.placeholder - punctuation
//                                                   ^ punctuation.definition.placeholder.php
//                                                   ^^ constant.other.placeholder.php
//                                                     ^ - constant.other.placeholder - punctuation
//                                                      ^ punctuation.definition.placeholder.php
//                                                      ^^ constant.other.placeholder.php
//                                                        ^ - constant.other.placeholder - punctuation
//                                                         ^ punctuation.definition.placeholder.php
//                                                         ^^ constant.other.placeholder.php
//                                                           ^ - constant.other.placeholder - punctuation
//                                                            ^ punctuation.definition.placeholder.php
//                                                            ^^ constant.other.placeholder.php
//                                                              ^ - constant.other.placeholder - punctuation
//                                                               ^^ constant.other.placeholder.php
//                                                                 ^ - constant.other.placeholder - punctuation
//                                                                  ^ punctuation.definition.placeholder.php
//                                                                  ^^ constant.other.placeholder.php
//                                                                    ^ - constant.other.placeholder - punctuation
//                                                                     ^ punctuation.definition.placeholder.php
//                                                                     ^^ constant.other.placeholder.php
//                                                                       ^ - constant.other.placeholder - punctuation
//                                                                        ^ punctuation.definition.placeholder.php
//                                                                        ^^ constant.other.placeholder.php
//                                                                          ^ - constant.other.placeholder - punctuation
//                                                                           ^ punctuation.definition.placeholder.php
//                                                                           ^^ constant.other.placeholder.php
//                                                                             ^ - constant.other.placeholder - punctuation
//                                                                              ^ punctuation.definition.placeholder.php
//                                                                              ^^ constant.other.placeholder.php
//                                                                                ^ - constant.other.placeholder - punctuation
//                                                                                 ^ punctuation.definition.placeholder.php
//                                                                                 ^^ constant.other.placeholder.php
//                                                                                   ^ - constant.other.placeholder - punctuation
//                                                                                    ^ punctuation.definition.placeholder.php
//                                                                                    ^^ constant.other.placeholder.php
//                                                                                      ^ - constant.other.placeholder - punctuation
//                                                                                       ^ punctuation.definition.placeholder.php
//                                                                                       ^^ constant.other.placeholder.php
//                                                                                         ^ - constant.other.placeholder - punctuation
//                                                                                          ^ punctuation.definition.placeholder.php
//                                                                                          ^^ constant.other.placeholder.php
//                                                                                            ^ - constant.other.placeholder - punctuation
//                                                                                             ^ punctuation.definition.placeholder.php
//                                                                                             ^^ constant.other.placeholder.php
//                                                                                               ^ - constant.other.placeholder - punctuation
//                                                                                                ^ punctuation.definition.placeholder.php
//                                                                                                ^^ constant.other.placeholder.php
//                                                                                                  ^ - constant.other.placeholder - punctuation
//                                                                                                   ^ punctuation.definition.placeholder.php
//                                                                                                   ^^ constant.other.placeholder.php
//                                                                                                     ^ - constant.other.placeholder - punctuation
//                                                                                                      ^ punctuation.definition.placeholder.php
//                                                                                                      ^^ constant.other.placeholder.php
//                                                                                                        ^ - constant.other.placeholder - punctuation
//                                                                                                         ^ punctuation.definition.placeholder.php
//                                                                                                         ^^ constant.other.placeholder.php
//                                                                                                           ^ - constant.other.placeholder - punctuation
//                                                                                                            ^ punctuation.definition.placeholder.php
//                                                                                                            ^^ constant.other.placeholder.php
//                                                                                                              ^ - constant.other.placeholder - punctuation
//                                                                                                               ^ punctuation.definition.placeholder.php
//                                                                                                               ^^ constant.other.placeholder.php
//                                                                                                                 ^ - constant.other.placeholder - punctuation
//                                                                                                                  ^ punctuation.definition.placeholder.php
//                                                                                                                  ^^ constant.other.placeholder.php
//                                                                                                                    ^ - constant.other.placeholder - punctuation
//                                                                                                                     ^^ constant.other.placeholder.php
//                                                                                                                       ^ - constant.other.placeholder - punctuation
//                                                                                                                        ^^ constant.other.placeholder.php
//                                                                                                                          ^ - constant.other.placeholder - punctuation
//                                                                                                                           ^ punctuation.definition.placeholder.php
//                                                                                                                           ^^ constant.other.placeholder.php
//                                                                                                                             ^ - constant.other.placeholder - punctuation
//                                                                                                                              ^ punctuation.definition.placeholder.php
//                                                                                                                              ^^ constant.other.placeholder.php
//                                                                                                                                ^ - constant.other.placeholder - punctuation
//                                                                                                                                 ^^ constant.other.placeholder.php
//                                                                                                                                   ^ - constant

    'foo "%'.urldecode($_REQUEST['searchterm']);
//  ^^^^^^^^ meta.string.php string.quoted.single.php - constant.other.placeholder
//          ^ keyword.operator.concatenation.php
//           ^^^^^^^^^ support.function.url.php

    '$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}'
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php - meta.interpolation
//  ^ punctuation.definition.string.begin.php
//                                                                                                      ^ punctuation.definition.string.end.php

    `$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}`
//  ^ meta.string.php string.quoted.other.php - meta.interpolation
//   ^^ meta.string.php meta.interpolation.php - string
//      ^^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//           ^^^^^ meta.string.php meta.interpolation.php - string
//                ^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//                    ^^^^ meta.string.php meta.interpolation.php - string
//                        ^^^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//                              ^^^^ meta.string.php meta.interpolation.php - string
//                                  ^^^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//                                        ^^^^^ meta.string.php meta.interpolation.php - string
//                                             ^^^^^^^^^^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//                                                          ^^^^^^ meta.string.php meta.interpolation.php - string
//                                                                ^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//                                                                    ^^^^^ meta.string.php meta.interpolation.php - string
//                                                                         ^^^^^^^^^^^^^ meta.string.php string.quoted.other.php - meta.interpolation
//                                                                                      ^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php - string
//                                                                                                      ^ meta.string.php string.quoted.other.php - meta.interpolation
//                                                                                                       ^ - meta.string - string
//  ^ punctuation.definition.string.begin.php
//   ^^ variable.other.php
//   ^ punctuation.definition.variable.php
//           ^^ variable.other.php
//           ^ punctuation.definition.variable.php
//             ^^ punctuation.accessor.arrow.php
//               ^ variable.other.member.php
//                    ^^^^ meta.interpolation.php meta.variable.php
//                    ^^ punctuation.definition.variable.begin.php
//                      ^ constant.other.php
//                       ^ punctuation.definition.variable.end.php
//                              ^ punctuation.section.interpolation.begin.php
//                               ^^ variable.other.php
//                               ^ punctuation.definition.variable.php
//                                 ^ punctuation.section.interpolation.end.php
//                                        ^^ variable.other.php
//                                        ^ punctuation.definition.variable.php
//                                          ^ punctuation.section.brackets.begin.php
//                                           ^ meta.number.integer.decimal constant.numeric.value.php
//                                            ^ punctuation.section.brackets.end.php
//                                                          ^^ variable.other.php
//                                                          ^ punctuation.definition.variable.php
//                                                            ^ punctuation.section.brackets.begin.php
//                                                             ^^ variable.other.php
//                                                             ^ punctuation.definition.variable.php
//                                                               ^ punctuation.section.brackets.end.php
//                                                                    ^^ variable.other.php
//                                                                    ^ punctuation.definition.variable.php
//                                                                      ^ punctuation.section.brackets.begin.php
//                                                                       ^ constant.other.php
//                                                                        ^ punctuation.section.brackets.end.php
//                                                                                      ^ punctuation.section.interpolation.begin.php
//                                                                                       ^^ variable.other.php
//                                                                                       ^ punctuation.definition.variable.php
//                                                                                          ^ keyword.operator.concatenation.php
//                                                                                            ^^ variable.other.php
//                                                                                            ^ punctuation.definition.variable.php
//                                                                                              ^^ punctuation.accessor.arrow.php
//                                                                                                ^ variable.other.member.php
//                                                                                                  ^ keyword.operator.concatenation.php
//                                                                                                    ^ constant.other.php
//                                                                                                     ^ punctuation.section.interpolation.end.php
//                                                                                                      ^ punctuation.definition.string.end.php

    "$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}"
//  ^ meta.string.php string.quoted.double.php - meta.interpolation
//   ^^ meta.string.php meta.interpolation.php - string
//      ^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//           ^^^^^ meta.string.php meta.interpolation.php - string
//                ^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                    ^^^^ meta.string.php meta.interpolation.php - string
//                        ^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                              ^^^^ meta.string.php meta.interpolation.php - string
//                                  ^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                        ^^^^^ meta.string.php meta.interpolation.php - string
//                                             ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                          ^^^^^^ meta.string.php meta.interpolation.php - string
//                                                                ^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                                    ^^^^^ meta.string.php meta.interpolation.php - string
//                                                                         ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                                                      ^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php - string
//                                                                                                      ^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                                                                       ^ - meta.string - string
//  ^ punctuation.definition.string.begin.php
//   ^^ variable.other.php
//   ^ punctuation.definition.variable.php
//           ^^ variable.other.php
//           ^ punctuation.definition.variable.php
//             ^^ punctuation.accessor.arrow.php
//               ^ variable.other.member.php
//                    ^^^^ meta.interpolation.php meta.variable.php
//                    ^^ punctuation.definition.variable.begin.php
//                      ^ constant.other.php
//                       ^ punctuation.definition.variable.end.php
//                              ^ punctuation.section.interpolation.begin.php
//                               ^^ variable.other.php
//                               ^ punctuation.definition.variable.php
//                                 ^ punctuation.section.interpolation.end.php
//                                        ^^ variable.other.php
//                                        ^ punctuation.definition.variable.php
//                                          ^ punctuation.section.brackets.begin.php
//                                           ^ meta.number.integer.decimal constant.numeric.value.php
//                                            ^ punctuation.section.brackets.end.php
//                                                          ^^ variable.other.php
//                                                          ^ punctuation.definition.variable.php
//                                                            ^ punctuation.section.brackets.begin.php
//                                                             ^^ variable.other.php
//                                                             ^ punctuation.definition.variable.php
//                                                               ^ punctuation.section.brackets.end.php
//                                                                    ^^ variable.other.php
//                                                                    ^ punctuation.definition.variable.php
//                                                                      ^ punctuation.section.brackets.begin.php
//                                                                       ^ constant.other.php
//                                                                        ^ punctuation.section.brackets.end.php
//                                                                                      ^ punctuation.section.interpolation.begin.php
//                                                                                       ^^ variable.other.php
//                                                                                       ^ punctuation.definition.variable.php
//                                                                                          ^ keyword.operator.concatenation.php
//                                                                                            ^^ variable.other.php
//                                                                                            ^ punctuation.definition.variable.php
//                                                                                              ^^ punctuation.accessor.arrow.php
//                                                                                                ^ variable.other.member.php
//                                                                                                  ^ keyword.operator.concatenation.php
//                                                                                                    ^ constant.other.php
//                                                                                                     ^ punctuation.section.interpolation.end.php
//                                                                                                      ^ punctuation.definition.string.end.php

// Won't work, outputs: This is { fantastic}
$great = 'fantastic';
echo "This is { $great}";
//   ^^^^^^^^^^^ meta.string.php string.quoted.double.php
//              ^^^^^^ meta.string.php meta.interpolation.php
//                    ^^ meta.string.php string.quoted.double.php
//              ^^^^^^ variable.other.php
//              ^ punctuation.definition.variable.php
//                     ^ punctuation.definition.string.end.php
//                      ^ punctuation.terminator.statement.php

// Works, outputs: This is fantastic
echo "This is {$great}";
//   ^^^^^^^^^ meta.string.php string.quoted.double.php
//            ^^^^^^^^ meta.string.php meta.interpolation.php
//                    ^ meta.string.php string.quoted.double.php
//            ^ punctuation.section.interpolation.begin.php
//             ^^^^^^ variable.other.php
//             ^ punctuation.definition.variable.php
//                   ^ punctuation.section.interpolation.end.php
//                    ^ punctuation.definition.string.end.php
//                     ^ punctuation.terminator.statement.php

// Works, outputs: This is fantastic, because constant `nice` is set to `great`
define('nice', "great");
echo "This is ${nice}";
//   ^^^^^^^^^ meta.string.php string.quoted.double.php
//            ^^^^^^^ meta.string.php meta.interpolation.php meta.variable.php
//                   ^ meta.string.php string.quoted.double.php
//            ^^ punctuation.definition.variable.begin.php
//              ^^^^ constant.other.php
//                  ^ punctuation.definition.variable.end.php
//                   ^ punctuation.definition.string.end.php
//                    ^ punctuation.terminator.statement.php

// Works
echo "This square is {$square->width}00 centimeters broad.";
//   ^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                   ^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php
//                                   ^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                   ^ punctuation.section.interpolation.begin.php
//                    ^^^^^^^ variable.other.php
//                           ^^ punctuation.accessor.arrow.php
//                             ^^^^^ variable.other.member.php
//                                  ^ punctuation.section.interpolation.end.php

// Works, quoted keys only work using the curly brace syntax
echo "This works: {$arr['key']}";
//   ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                ^^^^^^^^^^^^^ meta.string.php meta.interpolation.php
//                             ^ meta.string.php string.quoted.double.php
//                ^ punctuation.section.interpolation.begin.php
//                 ^^^^ variable.other.php
//                 ^ punctuation.definition.variable.php
//                     ^^^^^^^ meta.item-access.php
//                     ^ punctuation.section.brackets.begin.php
//                      ^^^^^ meta.string.php string.quoted.single.php
//                      ^ punctuation.definition.string.begin.php
//                          ^ punctuation.definition.string.end.php
//                           ^ punctuation.section.brackets.end.php
//                            ^ punctuation.section.interpolation.end.php
//                             ^ punctuation.definition.string.end.php
//                              ^ punctuation.terminator.statement.php

// Works
echo "This works: {$arr[4][3]}";
//   ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                ^^^^^^^^^^^^ meta.string.php meta.interpolation.php
//                            ^ meta.string.php string.quoted.double.php
//                ^ punctuation.section.interpolation.begin.php
//                 ^^^^ variable.other.php
//                 ^ punctuation.definition.variable.php
//                     ^^^^^^ meta.item-access.php
//                     ^ punctuation.section.brackets.begin.php
//                      ^ meta.number.integer.decimal.php constant.numeric.value.php
//                       ^ punctuation.section.brackets.end.php
//                        ^ punctuation.section.brackets.begin.php
//                         ^ meta.number.integer.decimal.php constant.numeric.value.php
//                          ^ punctuation.section.brackets.end.php
//                           ^ punctuation.section.interpolation.end.php
//                            ^ punctuation.definition.string.end.php
//                             ^ punctuation.terminator.statement.php

// This is wrong for the same reason as $foo[bar] is wrong  outside a string.
// In other words, it will still work, but only because PHP first looks for a
// constant named foo; an error of level E_NOTICE (undefined constant) will be
// thrown.
echo "This is wrong: {$arr[foo][3]}";
//   ^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                   ^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php
//                                 ^ meta.string.php string.quoted.double.php
//                   ^ punctuation.section.interpolation.begin.php
//                    ^^^^ variable.other.php
//                    ^ punctuation.definition.variable.php
//                        ^^^^^^^^ meta.item-access.php
//                        ^ punctuation.section.brackets.begin.php
//                         ^^^ constant.other.php
//                            ^ punctuation.section.brackets.end.php
//                             ^ punctuation.section.brackets.begin.php
//                              ^ meta.number.integer.decimal.php constant.numeric.value.php
//                               ^ punctuation.section.brackets.end.php
//                                ^ punctuation.section.interpolation.end.php
//                                 ^ punctuation.definition.string.end.php
//                                  ^ punctuation.terminator.statement.php

// Works. When using multi-dimensional arrays, always use braces around arrays
// when inside of strings
echo "This works: {$arr['foo'][3]}";
//   ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                ^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php
//                                ^ meta.string.php string.quoted.double.php
//                ^ punctuation.section.interpolation.begin.php
//                 ^^^^ variable.other.php
//                 ^ punctuation.definition.variable.php
//                     ^^^^^^^^^^ meta.item-access.php
//                     ^ punctuation.section.brackets.begin.php
//                      ^^^^^ meta.string.php string.quoted.single.php
//                      ^ punctuation.definition.string.begin.php
//                          ^ punctuation.definition.string.end.php
//                           ^ punctuation.section.brackets.end.php
//                            ^ punctuation.section.brackets.begin.php
//                             ^ meta.number.integer.decimal.php constant.numeric.value.php
//                              ^ punctuation.section.brackets.end.php
//                               ^ punctuation.section.interpolation.end.php
//                                ^ punctuation.definition.string.end.php
//                                 ^ punctuation.terminator.statement.php

// Works.
echo "This works: " . $arr['foo'][3];
//   ^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                 ^^^^^^^^^^^^^^^^^^^ - string.quoted.double
//                  ^ keyword.operator.concatenation.php
//                    ^^^^ variable.other.php
//                    ^ punctuation.definition.variable.php
//                        ^^^^^^^^^^ meta.item-access.php
//                        ^ punctuation.section.brackets.begin.php
//                         ^^^^^ meta.string.php string.quoted.single.php
//                         ^ punctuation.definition.string.begin.php
//                             ^ punctuation.definition.string.end.php
//                              ^ punctuation.section.brackets.end.php
//                               ^ punctuation.section.brackets.begin.php
//                                ^ meta.number.integer.decimal.php constant.numeric.value.php
//                                 ^ punctuation.section.brackets.end.php
//                                  ^ punctuation.terminator.statement.php

echo "This works too: {$obj->values[3]->name}";
//   ^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                    ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php - string
//                                           ^ meta.string.php string.quoted.double.php
//                    ^ punctuation.section.interpolation.begin.php
//                     ^^^^ variable.other.php
//                     ^ punctuation.definition.variable.php
//                         ^^ punctuation.accessor.arrow.php
//                           ^^^^^^ variable.other.member.php
//                                 ^^^ meta.item-access.php
//                                 ^ punctuation.section.brackets.begin.php
//                                  ^ constant.numeric.value.php
//                                   ^ punctuation.section.brackets.end.php
//                                    ^^ punctuation.accessor.arrow.php
//                                      ^^^^ variable.other.member.php
//                                          ^ punctuation.section.interpolation.end.php
//                                           ^ punctuation.definition.string.end.php
//                                            ^ punctuation.terminator.statement.php

echo "This is the value of the var named $name: {${$name}}";
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                                       ^^^^^ meta.string.php meta.interpolation.php
//                                            ^^ meta.string.php string.quoted.double.php
//                                              ^ meta.string.php meta.interpolation.php
//                                               ^^^^^^^^ meta.string.php meta.interpolation.php meta.variable.php
//                                                       ^ meta.string.php meta.interpolation.php
//                                                        ^ meta.string.php string.quoted.double.php
//                                       ^^^^^ variable.other.php
//                                       ^ punctuation.definition.variable.php
//                                              ^ punctuation.section.interpolation.begin.php
//                                               ^^ punctuation.definition.variable.begin.php
//                                                 ^^^^^ variable.other.php
//                                                 ^ punctuation.definition.variable.php
//                                                      ^ punctuation.definition.variable.end.php
//                                                       ^ punctuation.section.interpolation.end.php
//                                                        ^ punctuation.definition.string.end.php
//                                                         ^ punctuation.terminator.statement.php

echo "This is the value of the var named by the return value of getName(): {${getName()}}";
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                                                                         ^ meta.interpolation.php - meta.variable
//                                                                          ^^^^^^^^^^^^ meta.string.php meta.interpolation.php meta.variable.php
//                                                                                      ^ meta.string.php meta.interpolation.php - meta.variable
//                                                                                       ^ meta.string.php string.quoted.double.php
//                                                                         ^ punctuation.section.interpolation.begin.php
//                                                                          ^^ punctuation.definition.variable.begin.php
//                                                                            ^^^^^^^ variable.function.php
//                                                                                   ^ punctuation.section.group.begin.php
//                                                                                    ^ punctuation.section.group.end.php
//                                                                                     ^ punctuation.definition.variable.end.php
//                                                                                      ^ punctuation.section.interpolation.end.php
//                                                                                       ^ punctuation.definition.string.end.php
//                                                                                        ^ punctuation.terminator.statement.php

echo "This is the value of the var named by the return value of \$object->getName(): {${$object->getName()}}";
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                                                                                   ^ meta.interpolation.php - meta.variable
//                                                                                    ^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php meta.variable.php
//                                                                                                         ^ meta.string.php meta.interpolation.php - meta.variable
//                                                                                                          ^ meta.string.php string.quoted.double.php
//                                                              ^^ constant.character.escape.php
//                                                                                   ^ punctuation.section.interpolation.begin.php
//                                                                                    ^^ punctuation.definition.variable.begin.php
//                                                                                      ^^^^^^^ variable.other.php
//                                                                                      ^ punctuation.definition.variable.php
//                                                                                             ^^ punctuation.accessor.arrow.php
//                                                                                               ^^^^^^^ variable.function.php
//                                                                                                      ^ punctuation.section.group.begin.php
//                                                                                                       ^ punctuation.section.group.end.php
//                                                                                                        ^ punctuation.definition.variable.end.php
//                                                                                                         ^ punctuation.section.interpolation.end.php
//                                                                                                          ^ punctuation.definition.string.end.php
//                                                                                                           ^ punctuation.terminator.statement.php

// Won't work, outputs: This is the return value of getName(): {getName()}
echo "This is the return value of getName(): {getName()}";
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation

// Won't work, outputs: C:\folder\{fantastic}.txt
echo "C:\folder\{$great}.txt"
//   ^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//               ^^^^^^ meta.string.php meta.interpolation.php variable.other.php
//                     ^^^^^^ meta.string.php string.quoted.double.php

// Works, outputs: C:\folder\fantastic.txt
echo "C:\\folder\\{$great}.txt"
//   ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php
//                ^^^^^^^^ meta.string.php meta.interpolation.php
//                        ^^^^^ meta.string.php string.quoted.double.php
//              ^^ constant.character.escape.php
//                ^ punctuation.section.interpolation.begin.php
//                 ^^^^^^ variable.other.php
//                 ^ punctuation.definition.variable.php
//                       ^ punctuation.section.interpolation.end.php


/******************************************************************************
 * Regular Expression Tests
 *****************************************************************************/

    "/$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}/"
//  ^^ meta.string.php string.quoted.double.php - meta.interpolation
//    ^^ meta.string.php meta.interpolation.php - string
//       ^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//            ^^^^^ meta.string.php meta.interpolation.php - string
//                 ^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                     ^^^^ meta.string.php meta.interpolation.php - string
//                         ^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                               ^^^^ meta.string.php meta.interpolation.php - string
//                                   ^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                         ^^^^^ meta.string.php meta.interpolation.php - string
//                                              ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                           ^^^^^^ meta.string.php meta.interpolation.php - string
//                                                                 ^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                                     ^^^^^ meta.string.php meta.interpolation.php - string
//                                                                          ^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                                                       ^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php - string
//                                                                                                       ^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                                                                                         ^ - meta.string - string
//  ^ punctuation.definition.string.begin.php
//   ^ punctuation.definition.string.regex-delimiter.begin.php
//    ^^ variable.other.php
//    ^ punctuation.definition.variable.php
//            ^^ variable.other.php
//            ^ punctuation.definition.variable.php
//              ^^ punctuation.accessor.arrow.php
//                ^ variable.other.member.php
//                     ^^^^ meta.interpolation.php meta.variable.php
//                     ^^ punctuation.definition.variable.begin.php
//                       ^ constant.other.php
//                        ^ punctuation.definition.variable.end.php
//                               ^ punctuation.section.interpolation.begin.php
//                                ^^ variable.other.php
//                                ^ punctuation.definition.variable.php
//                                  ^ punctuation.section.interpolation.end.php
//                                         ^^ variable.other.php
//                                         ^ punctuation.definition.variable.php
//                                           ^ punctuation.section.brackets.begin.php
//                                            ^ meta.number.integer.decimal constant.numeric.value.php
//                                             ^ punctuation.section.brackets.end.php
//                                                           ^^ variable.other.php
//                                                           ^ punctuation.definition.variable.php
//                                                             ^ punctuation.section.brackets.begin.php
//                                                              ^^ variable.other.php
//                                                              ^ punctuation.definition.variable.php
//                                                                ^ punctuation.section.brackets.end.php
//                                                                     ^^ variable.other.php
//                                                                     ^ punctuation.definition.variable.php
//                                                                       ^ punctuation.section.brackets.begin.php
//                                                                        ^ constant.other.php
//                                                                         ^ punctuation.section.brackets.end.php
//                                                                                       ^ punctuation.section.interpolation.begin.php
//                                                                                        ^^ variable.other.php
//                                                                                        ^ punctuation.definition.variable.php
//                                                                                           ^ keyword.operator.concatenation.php
//                                                                                             ^^ variable.other.php
//                                                                                             ^ punctuation.definition.variable.php
//                                                                                               ^^ punctuation.accessor.arrow.php
//                                                                                                 ^ variable.other.member.php
//                                                                                                   ^ keyword.operator.concatenation.php
//                                                                                                     ^ constant.other.php
//                                                                                                      ^ punctuation.section.interpolation.end.php
//                                                                                                       ^ punctuation.definition.string.regex-delimiter.end.php
//                                                                                                        ^ punctuation.definition.string.end.php

preg_replace('/[a-zSOME_CHAR]*+\'\n  $justTxt  \1  \\1/m');
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php
//            ^ punctuation.definition.string.regex-delimiter.begin
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp
//             ^ punctuation.definition.character-class.begin.regexp
//              ^^^ constant.other.character-class.range.regexp
//                 ^^^^^^^^^ constant.other.character-class.set.regexp
//                          ^ punctuation.definition.character-class.end.regexp
//                           ^^ keyword.operator.quantifier
//                             ^^^^ constant.character.escape
//                                   ^ keyword.control.anchor.regexp
//                                             ^^ keyword.other.back-reference.regexp
//                                                 ^^^ keyword.other.back-reference.regexp
//                                                    ^ punctuation.definition.string.regex-delimiter.end
//                                                     ^ meta.regex.modifier
//                                                      ^ string.quoted.single

preg_replace("/[a-zSOME_CHAR]*+\'\n  $variable  \1  \\1/m");
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                   ^^^^^^^^^ meta.string.php meta.interpolation.php - string
//                                            ^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//            ^ punctuation.definition.string.regex-delimiter.begin
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp
//             ^ punctuation.definition.character-class.begin.regexp
//              ^^^ constant.other.character-class.range.regexp
//                 ^^^^^^^^^ constant.other.character-class.set.regexp
//                          ^ punctuation.definition.character-class.end.regexp
//                           ^^ keyword.operator.quantifier
//                             ^^^^ constant.character.escape
//                                   ^^^^^^^^^ variable.other.php
//                                   ^ punctuation.definition.variable
//                                              ^^ constant.character.escape
//                                                  ^^ constant.character.escape
//                                                     ^ punctuation.definition.string.regex-delimiter.end
//                                                      ^ meta.regex.modifier
//                                                       ^ string.quoted.double

preg_replace("/^(?=foo)|(?>a|b|\s*)|(?im:toggle)(?#comment)$/uxS");
//            ^ punctuation.definition.string.regex-delimiter.begin
//             ^ keyword.control.anchor.regexp
//               ^^ constant.other.assertion.regexp meta.assertion.look-ahead.regexp
//                     ^ keyword.operator.or.regexp
//                       ^^ constant.other.assertion.regexp meta.assertion.atomic-group.regexp
//                          ^ keyword.operator.or.regexp
//                            ^ keyword.operator.or.regexp
//                             ^^ constant.character.character-class.regexp
//                               ^ keyword.operator.quantifier.regexp
//                                   ^^^^ keyword.other.option-toggle.regexp
//                                              ^^^^^^^^^^^ comment.block
//                                              ^ punctuation.definition.comment.begin.regexp
//                                                        ^ punctuation.definition.comment.end.regexp
//                                                         ^ keyword.control.anchor.regexp
//                                                          ^ punctuation.definition.string.regex-delimiter.end
//                                                           ^^^ meta.regex.modifier

preg_replace('/(?P<name>foo|bar)\g{name}\k<name>/');
//             ^ punctuation.definition.group.begin.regexp
//              ^^ constant.other.assertion.regexp
//                ^ punctuation.definition.group.capture.begin.regexp
//                 ^^^^ entity.name.other.group.regexp
//                         ^ keyword.operator.or.regexp
//                             ^ punctuation.definition.group.end.regexp
//                              ^^^ keyword.other.back-reference.named.regexp
//                                 ^^^^ entity.name.other.group.regexp
//                                     ^ keyword.other.back-reference.named.regexp
//                                      ^^^ keyword.other.back-reference.named.regexp
//                                         ^^^^ entity.name.other.group.regexp

preg_replace("/a{,6}b{3,}c{3,6}/");
//              ^^^^ keyword.operator.quantifier.regexp
//                   ^^^^ keyword.operator.quantifier.regexp
//                        ^^^^^ keyword.operator.quantifier.regexp

preg_replace("/test$,bar$/");
//                 ^ keyword.control.anchor.regexp
//                      ^ keyword.control.anchor.regexp

$regex = '/
    c{3,6}#this is comment/ux';
//   ^^^^^ keyword.operator.quantifier.regexp
//        ^^^^^^^^^^^^^^^^ comment.regexp
//                        ^^^ - comment.regexp
//                         ^^ meta.regex.modifier

$regex = '/
    c{3,6}#this is com/ment/ux';
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment.regexp

$regex = '/
    a{,6}
/ux';
// <- meta.string.php string.quoted.single punctuation.definition.string.regex-delimiter.end
 // <- meta.string string.quoted.single meta.regex.modifier
//^ meta.string string.quoted.single meta.regex.modifier
// ^ meta.string string.quoted.single punctuation.definition.string.end

$regex = '/foo?/ux';
//            ^ keyword.operator.quantifier.regexp

$not_regex = 'foo?';
//               ^ string - source.regexp

$not_regex = '/foo?';
//                ^ string - source.regexp

$not_regex = '/foo/bar/'; // unescaped "/"
//           ^^^^^^^^^^^ string - source.regexp

// there is no "T" regex modifier
$not_regex = '/foo?/uTx';
//                ^ string - source.regexp


/******************************************************************************
 * Interpolation SQL String Tests
 *****************************************************************************/

$non_sql = "NO SELECT HIGHLIGHTING!";
//         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation - string string
//         ^ punctuation.definition.string.begin
//             ^ - source.sql
//                                 ^ punctuation.definition.string.end

$sql = "CREATE TABLE version";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.double.php
//                          ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string
//      ^^^^^^ keyword.other.ddl.sql

$sql = "
    CREATE TABLE `version`...
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.double.php
//  ^^^^^^ keyword.other.ddl.sql
";

// Do not highlight plain SQL indicator as SQL
$sql = "SELECT";
//      ^^^^^^ - keyword.other.dml

$sql = "
    SELECT
//  ^^^^^^ keyword.other.dml
    *
    FROM users
    WHERE first_name = 'Eric'
";

$sql = "SELECT * FROM users WHERE first_name = 'Eric'";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.double.php
//      ^ keyword.other.dml
//                                             ^^^^^^ string.quoted.single.sql
//                                                   ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string

// Ensure we properly exist from SQL when hitting PHP end-of-string
$sql = "SELECT * FROM users WHERE first_name = 'Eric";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.double.php
//      ^ keyword.other.dml
//                                             ^^^^^ string.quoted.single.sql
//                                                  ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = "
    SELECT * FROM users WHERE first_name = 'Eric'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.double.php
//  ^ keyword.other.dml
//                      ^^^^^ keyword.other.dml.sql
//                                         ^^^^^^ string.quoted.single.sql
";
// <- meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = "SELECT `$col` FROM 'my$table--name'";
//             ^^^^^^ meta.column-name.sql
//             ^ punctuation.definition.identifier.begin.sql
//              ^^^^ meta.interpolation.php variable.other.php
//                  ^ punctuation.definition.identifier.end.sql
//                    ^^^^ keyword.other.dml.sql
//                         ^^^^^^^^^^^^^^^^ meta.table-name.sql
//                         ^ punctuation.definition.identifier.begin.sql
//                            ^^^^^^ meta.interpolation.php variable.other.php
//                                        ^ punctuation.definition.identifier.end.sql

$sql = "SELECT * FROM users where first_name = $user_name";
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php - meta.interpolation
//                                             ^^^^^^^^^^ meta.string.php meta.interpolation.php variable.other.php - string.quoted.double
//                                                       ^ meta.string.php - meta.interpolation

$sql = "SELECT * FROM users where first_name = '$user_name'";
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php - meta.interpolation
//                                              ^^^^^^^^^^ meta.string.php meta.interpolation.php variable.other.php - string.quoted
//                                                        ^ meta.string.php - meta.interpolation

$sql = "SELECT * FROM users where first_name = `$user_name`";
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php - meta.interpolation
//                                              ^^^^^^^^^^ meta.string.php meta.interpolation.php variable.other.php - string
//                                                        ^ meta.string.php - meta.interpolation

$sql = "SELECT * FROM users where first_name = %r{^$user_name}";
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php - meta.interpolation
//                                                 ^^^^^^^^^^ meta.string.php meta.interpolation.php variable.other.php - string
//                                                           ^^ meta.string.php - meta.interpolation

$sql = "SELECT * FROM users where first_name LIKE $user_name";
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php - meta.interpolation
//                                                ^^^^^^^^^^ meta.string.php meta.interpolation.php variable.other.php - string
//                                                          ^ meta.string.php - meta.interpolation

$sql = "SELECT * FROM users where first_name LIKE '$user_name'";
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php - meta.interpolation
//                                                 ^^^^^^^^^^ meta.string.php meta.interpolation.php variable.other.php - string
//                                                           ^ meta.string.php - meta.interpolation

$sql = "SELECT " . $col . "FROM $table WHERE ( first_name =" . $name . ")" ; . "GROUP BY" ;
//     ^ meta.string.php - meta.interpolation
//      ^^^^^^^ meta.string.php source.sql.embedded.php
//             ^ meta.string.php - meta.interpolation
//              ^^^^^^^^^^ - meta.string
//                        ^ meta.string.php - meta.interpolation
//                         ^^^^^ meta.string.php source.sql.embedded.php - meta.interpolation
//                              ^^^^^^ meta.string.php source.sql.embedded.php meta.table-name.sql meta.interpolation.php
//                                    ^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - meta.interpolation
//                                           ^ punctuation.section.group.begin.sql
//                                             ^^^^^^^^^^ meta.column-name.sql - variable
//                                                        ^ keyword.operator.comparison.sql
//                                                         ^ string.quoted.double.php punctuation.definition.string.end.php
//                                                           ^ keyword.operator.concatenation.php
//                                                             ^^^^^ variable.other.php
//                                                                   ^ keyword.operator.concatenation.php
//                                                                     ^ string.quoted.double.php punctuation.definition.string.begin.php
//                                                                       ^ string.quoted.double.php punctuation.definition.string.end.php
//                                                                         ^ punctuation.terminator.statement.php
//                                                                           ^ keyword.operator.concatenation.php
//                                                                                        ^ punctuation.terminator.statement.php

$sql = "SELECT a WHERE id = $id -- id: $id";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ text.html.php meta.embedded.php source.php.embedded.html
//^^ variable.other.php
//   ^ keyword.operator.assignment.php
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php
//     ^ string.quoted.double.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.sql.embedded.php
//      ^^^^^^ keyword.other.dml.sql
//             ^ meta.column-name.sql
//               ^^^^^ keyword.other.dml.sql
//                     ^^ meta.column-name.sql
//                        ^ keyword.operator.comparison.sql
//                          ^^^ meta.interpolation.php variable.other.php
//                          ^ punctuation.definition.variable.php
//                              ^^^^^^^^^^ comment.line.double-dash.sql
//                              ^^ punctuation.definition.comment.sql
//                                     ^^^ meta.interpolation.php variable.other.php
//                                     ^ punctuation.definition.variable.php
//                                        ^ string.quoted.double.php punctuation.definition.string.end.php
//                                         ^ punctuation.terminator.statement.php

$sql = "DROP TABLE foo";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                    ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php

$sql = "IF NOT EXISTS CREATE TABLE foo";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                                    ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php

$sql = "WITH RECURSION SELECT *";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                             ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php

$sql = "MERGE INTO ";
//      ^^^^^^^^^^^ source.sql.embedded.php
//                 ^ punctuation.definition.string.end.php
$sql = "BEGIN ";
//      ^^^^^^ source.sql.embedded.php
//             ^ punctuation.terminator.statement.php

/******************************************************************************
 * SQL String Tests without interpolation
 *****************************************************************************/

$non_sql = 'NO SELECT HIGHLIGHTING!';
//         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php - meta.interpolation - string string
//         ^ punctuation.definition.string.begin
//             ^ - source.sql
//                                 ^ punctuation.definition.string.end

$sql = 'SELECT * FROM users WHERE first_name = \'Eric\'';
//     ^ meta.string.php string.quoted.single.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.single.php
//      ^ keyword.other.dml
//                                             ^^^^^^^^ meta.string.sql string.quoted.single.sql
//                                             ^^ constant.character.escape.php
//                                                   ^^ constant.character.escape.php
//                                                     ^ meta.string.php string.quoted.single.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = '
    SELECT * FROM users WHERE first_name = \'Eric\'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php - string.quoted.single.php
//  ^ keyword.other.dml
//                                         ^^ constant.character.escape.php
';
// <- meta.string.php string.quoted.single.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = 'SELECT ' . $col . 'FROM table WHERE ( first_name =' . $name . ')' ; . 'GROUP BY' ;
//     ^ meta.string.php - meta.interpolation
//      ^^^^^^^ meta.string.php source.sql.embedded.php
//             ^ meta.string.php - meta.interpolation
//              ^^^^^^^^^^ - meta.string
//                        ^ meta.string.php - meta.interpolation
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                                                        ^ meta.string.php - meta.interpolation
//                                                         ^^^^^^^^^^^ - meta.string
//                                                                    ^ meta.string.php - meta.interpolation
//                                                                     ^ meta.string.php source.sql.embedded.php
//                                                                      ^ meta.string.php - meta.interpolation
//                                                                       ^^^^^ - meta.string
//                                                                            ^^^^^^^^^^ meta.string.php string.quoted.single.php - meta.interpolation
//     ^ string.quoted.single.php punctuation.definition.string.begin.php
//      ^^^^^^ keyword.other.dml.sql
//             ^ string.quoted.single.php punctuation.definition.string.end.php
//               ^ keyword.operator.concatenation.php
//                 ^^^^ variable.other.php
//                      ^ keyword.operator.concatenation.php
//                        ^ string.quoted.single.php punctuation.definition.string.begin.php
//                                                        ^ string.quoted.single.php punctuation.definition.string.end.php
//                                                          ^ keyword.operator.concatenation.php
//                                                            ^^^^^ variable.other.php
//                                                                  ^ keyword.operator.concatenation.php
//                                                                    ^ string.quoted.single.php punctuation.definition.string.begin.php
//                                                                      ^ string.quoted.single.php punctuation.definition.string.end.php
//                                                                        ^ punctuation.terminator.statement.php
//                                                                          ^ keyword.operator.concatenation.php
//                                                                                       ^ punctuation.terminator.statement.php

$sql = 'DROP TABLE foo';
//     ^ meta.string.php string.quoted.single.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                    ^ meta.string.php string.quoted.single.php punctuation.definition.string.end.php

$sql = 'IF NOT EXISTS CREATE TABLE foo';
//     ^ meta.string.php string.quoted.single.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                                    ^ meta.string.php string.quoted.single.php punctuation.definition.string.end.php

$sql = 'WITH RECURSION SELECT *';
//     ^ meta.string.php string.quoted.single.php punctuation.definition.string.begin.php
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php source.sql.embedded.php
//                             ^ meta.string.php string.quoted.single.php punctuation.definition.string.end.php


/******************************************************************************
 * HEREDOC Tests
 *****************************************************************************/

echo <<<EOT
//   ^^^ keyword.operator.heredoc
//      ^^^ meta.string.heredoc meta.tag.heredoc - meta.string meta.string
//      ^^^ entity.name.tag.heredoc

This is a $var
//^^^^^^^^^^^^^ - meta.string meta.string
//^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc - meta.interpolation
//        ^^^^ meta.string.heredoc.php meta.interpolation.php variable.other.php - string
//            ^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation

This is an $array[0][ 1 ]->item[ get_index ( 1 + $idx [0] ) ]
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.php - string
//               ^^^^^^^^ meta.item-access.php
//                             ^^^^^^^^^^^^ meta.item-access.php - meta.function-call - meta.group
//                                         ^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//                                               ^^^^ meta.string.heredoc.php meta.interpolation.php variable.other.php - string
//                                                   ^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//         ^^^^^^ variable.other.php
//               ^ punctuation.section.brackets.begin.php
//                ^ meta.number.integer.decimal.php constant.numeric.value.php
//                 ^ punctuation.section.brackets.end.php
//                  ^ punctuation.section.brackets.begin.php
//                    ^ meta.number.integer.decimal.php constant.numeric.value.php
//                      ^ punctuation.section.brackets.end.php
//                       ^^ punctuation.accessor.arrow.php
//                         ^^^^ variable.other.member.php
//                             ^ punctuation.section.brackets.begin.php
//                               ^^^^^^^^^ constant.other.php - variable.function
//                                         ^ - punctuation.section.group
//                                           ^ - constant.numeric
//                                             ^ - keyword.operator
//                                               ^^^^ variable.other.php

This is an $array [0][ 1 ]->item[ 1 + $var ]
//^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//         ^^^^^^ meta.interpolation.php variable.other.php - string
//               ^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//                                    ^^^^ meta.interpolation.php variable.other.php - string
//                                        ^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation

This is an $array[0][ 1 ] ->item[ 1 + $var ]
//^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//         ^^^^^^^^^^^^^^ meta.interpolation.php - string
//                       ^^^^^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//                                    ^^^^ meta.interpolation.php variable.other.php - string
//                                        ^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation

This is not an $obj->no_method() call.
//^^^^^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
//             ^^^^^^^^^^^^^^^ meta.string.heredoc.php meta.interpolation.php
//             ^^^^ variable.other.php
//                 ^^ punctuation.accessor.arrow.php
//                   ^^^^^^^^^ variable.other.member.php
//                            ^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
EOT;
// <- entity.name.tag.heredoc

// PHP 7.3: Flexible Heredoc and Nowdoc Syntaxes
// see https://wiki.php.net/rfc/flexible_heredoc_nowdoc_syntaxes
echo <<<EOT
//   ^^^ keyword.operator.heredoc
//      ^^^ meta.string.heredoc meta.tag.heredoc - meta.string meta.string
//      ^^^ entity.name.tag.heredoc
    $var
    EOT;
//  ^^^ entity.name.tag.heredoc
//     ^ punctuation.terminator.statement
//      ^ meta.heredoc-end

echo <<<'EOT'
//   ^^^ keyword.operator.heredoc
//      ^ punctuation.definition.tag.begin
//      ^^^^^ meta.string.heredoc meta.tag.heredoc
//       ^^^ entity.name.tag.heredoc
This is a test! $var
//^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc - meta.string meta.string
//              ^^^^ - variable.other
EOT;
// <- entity.name.tag.heredoc

echo <<<HTML
//   ^^^ keyword.operator.heredoc
//      ^^^^ meta.string.heredoc meta.tag.heredoc
//      ^^^^ entity.name.tag.heredoc
This is a test!
<div class="foo-bar"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.html text.html
// <- punctuation.definition.tag.begin
//^^ entity.name.tag.block
//   ^^^^^ entity.other.attribute-name
//         ^^^^^^^^^ string.quoted.double
HTML;
// <- entity.name.tag.heredoc
//  ^ punctuation.terminator.statement
//   ^ meta.heredoc-end

echo <<< JAVASCRIPT
//   ^^^ keyword.operator.heredoc
//       ^^^^^^^^^^ meta.string.heredoc meta.tag.heredoc
//       ^^^^^^^^^^ entity.name.tag.heredoc
var foo = 1;
//^^^^^^^^^^ meta.embedded.js source.js
// <- keyword.declaration
//  ^^^ variable.other.readwrite
//        ^ constant.numeric
$var
// <- variable.other.php
//^^ variable.other.php
    ($var)
//   ^^^^ variable.other.php
JAVASCRIPT;
// <- entity.name.tag.heredoc
//        ^ punctuation.terminator.statement
//         ^ meta.heredoc-end

echo <<<CSS
//   ^^^ keyword.operator.heredoc
//      ^^^ meta.string.heredoc meta.tag.heredoc
//      ^^^ entity.name.tag.heredoc
h2 {font-family: 'Arial';}
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.css source.css
// <- entity.name.tag
// ^ punctuation.section.block
//               ^^^^^^^ string.quoted.single
h3 {font-size: "$h3_size";}
//              ^^^^^^^^ variable.other.php
CSS;
// <- entity.name.tag.heredoc
// ^ punctuation.terminator.statement
//  ^ meta.heredoc-end

echo <<< yml
//   ^^^ keyword.operator.heredoc
//       ^^^ meta.string.heredoc meta.tag.heredoc
//       ^^^ entity.name.tag.heredoc
one: two
//^^^^^^ meta.embedded.yaml source.yaml
//^ meta.mapping.key string
// ^       punctuation.separator.key-value.mapping
//   ^^^ string
three: "$four"
//^^^^^^^^^^^^ meta.embedded.yaml source.yaml
//^^^ meta.mapping.key string
//   ^ punctuation.separator.key-value
//     ^ meta.string.yaml string.quoted.double.yaml punctuation.definition.string.begin.yaml
//      ^^^^^ meta.string.yaml meta.interpolation.php variable.other.php - string
Yml;
// <- meta.embedded.yaml source.yaml string.unquoted.plain.out.yaml
//^^ meta.embedded.yaml source.yaml string.unquoted.plain.out.yaml
yml;
// <- entity.name.tag.heredoc
// ^ punctuation.terminator.statement
//  ^ meta.heredoc-end

echo <<<sql
//   ^^^ keyword.operator.heredoc
//      ^^^ meta.string.heredoc meta.tag.heredoc
//      ^^^ entity.name.tag.heredoc
SELECT * FROM users WHERE first_name = 'John' LIMIT $limit
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.sql source.sql.embedded.php
// <- keyword.other.dml
//     ^ constant.other.wildcard.asterisk
//                                     ^^^^^^ string.quoted.single
//                                                  ^^^^^^ variable.other.php
sql;
// <- entity.name.tag.heredoc
// ^ punctuation.terminator.statement
//  ^ meta.heredoc-end


echo <<<'SQL'
//   ^^^ keyword.operator.heredoc
//      ^ punctuation.definition.tag.begin
//      ^^^^^ meta.string.heredoc meta.tag.heredoc
//       ^^^ entity.name.tag.heredoc
SELECT * FROM users WHERE first_name = 'John'\n
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.sql source.sql.embedded.php
// <- keyword.other.dml
//     ^ constant.other.wildcard.asterisk
//                                     ^^^^^^ string.quoted.single
//                                           ^^ - constant.character.escape.php
SQL;
// <- entity.name.tag.heredoc
// ^ punctuation.terminator.statement
//  ^ meta.heredoc-end


/******************************************************************************
 * HTML Output Tests
 *****************************************************************************/

class OutputsHtml {
    function embedHtml() {
        if (1) {
//             ^ meta.function meta.block punctuation.section.block.begin
        }
//      ^ meta.function meta.block punctuation.section.block.end
        else {
//           ^ meta.function meta.block punctuation.section.block.begin
            ?>
//          ^^ meta.embedded punctuation.section.embedded.end - source.php
//            ^ meta.embedded meta.html-newline-after-php - punctuation.section.embedded - source.php
            <span></span>
//          ^^^^^^ meta.tag - source.php
            <?
//          ^^ meta.embedded punctuation.section.embedded.begin
        }
//      ^ meta.function meta.block punctuation.section.block.end
        ?>
//      ^^ meta.embedded punctuation.section.embedded.end - source.php
//        ^ meta.embedded meta.html-newline-after-php - punctuation.section.embedded - source.php

        <div class="acf-gallery-side-info acf-cf<?php if (true) { echo ' class-name'; } ?>" id="myid"></div>
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - source.php
//           ^^^^^ meta.attribute-with-value
//                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.php
//                                                                                        ^^^^^^^^^^^^^^^^^^ - source.php
//                                              ^^^^^ punctuation.section.embedded.begin - source.php
//                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.php
//                                                                                      ^^ punctuation.section.embedded.end - source.php
//                                                                                          ^^^^^^^^^ meta.attribute-with-value
//                 ^ punctuation.definition.string.begin.html
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.html
//                                                                                        ^ punctuation.definition.string.end.html
        <?= var_dump($foo)
//      ^^^^^^^^^^^^^^^^^^ meta.embedded
//      ^^^ punctuation.section.embedded.begin - source.php
//         ^^^^^^^^^^^^^^^ source.php
        ?>
//      ^^ meta.embedded punctuation.section.embedded.end - source.php
//        ^ meta.embedded meta.html-newline-after-php - punctuation.section.embedded - source.php

        <?php
//      ^^^^^ meta.embedded punctuation.section.embedded.begin - source.php
    }
}

function embedHtml() {
    if (1) {
//         ^ meta.function meta.block punctuation.section.block.begin
    }
//  ^ meta.function meta.block punctuation.section.block.end
    else {
//       ^ meta.function meta.block punctuation.section.block.begin
        ?>
//      ^^ meta.embedded.php punctuation.section.embedded.end - source.php
//        ^ meta.embedded.php meta.html-newline-after-php - punctuation.section.embedded.end
        <span></span>
//      ^^^^^^ meta.tag - source.php
        <?
//      ^^ punctuation.section.embedded.begin - source.php
    }
//  ^ meta.function meta.block punctuation.section.block.end

    $myClass = new class {
        function foo() {
            ?>
//          ^^ meta.embedded.php punctuation.section.embedded.end - source.php
//            ^ meta.embedded.php meta.html-newline-after-php - punctuation.section.embedded.end
            <div></div>
//          ^^^^^^^^^^^ meta.tag - source.php
            <?
        }
    };

    $myClosure = function() use ($var) {
        ?>
        <div></div>
//      ^^^^^^^^^^^ meta.tag - source.php
        <?
    };

    try {
        if (1) {
            if (1) {
                try {
// ^^^^^^^^^^^^^^^^^^ source.php
                    ?>
//                  ^^ punctuation.section.embedded.end - source.php

                    <div class="acf-gallery-side-info acf-cf<?php if (true) { echo ' class-name'; } ?>" id="myid"></div>
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//                       ^^^^^^ meta.attribute-with-value - meta.string
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value meta.string.html string.quoted.double.html - meta.embedded - meta.interpolation - source.php
//                             ^ punctuation.definition.string.begin.html
//                                                          ^^^^^ meta.attribute-with-value meta.string.html meta.embedded.php punctuation.section.embedded.begin.php - source.php - string.quoted.double
//                                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value meta.string.html meta.embedded.php source.php - string.quoted.double
//                                                                                                  ^^ meta.attribute-with-value meta.string.html meta.embedded.php punctuation.section.embedded.end.php - source.php - string.quoted.double
//                                                                                                    ^ meta.attribute-with-value meta.string.html string.quoted.double.html punctuation.definition.string.end.html - meta.embedded - meta.interpolation - source.php
//                                                                                                     ^ - meta.attribute-with-value
//                                                                                                      ^^^^^^^^^ meta.attribute-with-value
//                                                                                                               ^ - meta.attribute-with-value
                    <?php
//                  ^^^^^ punctuation.section.embedded.begin
//                       ^ source.php
                } finally {
                    if (1) {
                        if (1) {
                            ?>
//                          ^^ punctuation.section.embedded.end
                            <div>
//                          ^^^^^ meta.tag - source.php
                            </div>
                            <?
//                          ^^ punctuation.section.embedded.begin
                        }
                    }
                }
            }
        }
    } catch (Exception $e) {
//    ^^^^^^ meta.catch.php
//          ^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php
//    ^^^^^ keyword.control.exception.catch.php
//          ^ punctuation.section.group.begin.php
//           ^^^^^^^^^ support.class.builtin.php
//                     ^^ variable.other.php
//                       ^ punctuation.section.group.end.php
//                         ^ punctuation.section.block.begin.php
    }
//  ^ punctuation.section.block.end.php
}
// <- punctuation.section.block.end.php

?>

<div><?php include 'image.svg' ?></div>
//                             ^^ punctuation.section.embedded.end.php

// don't break php termination highlighting after incomplete item-access expression
<?php  { ?> <div> <? $var[9 + ?> </div> <? } ?>
//^^^^^^^^^ meta.embedded.php
//         ^^^^^^^ - meta.embedded
//                ^^^^^^^^^^^^^^ meta.embedded.php
//                              ^^^^^^^^ - meta.embedded
//                                      ^^^^^^^ meta.embedded.php
//^^^^^ - meta.block
//     ^^ meta.block.php - meta.block meta.block
//       ^^^^^^^^^^^ - meta.block
//                  ^^^^^^^^^^ meta.block.php - meta.block meta.block
//                            ^^^^^^^^^^^^ - meta.block
//                                        ^^ meta.block.php - meta.block meta.block
//                                          ^^^^ - meta.block
//     ^ punctuation.section.block.begin.php
//       ^^ punctuation.section.embedded.end.php
//          ^^^^^ meta.tag
//                ^^ punctuation.section.embedded.begin.php
//                   ^^^^ variable.other.php
//                       ^^^^^ meta.item-access
//                            ^^ punctuation.section.embedded.end.php
//                               ^^^^^^ meta.tag
//                                      ^^ punctuation.section.embedded.begin.php
//                                         ^ punctuation.section.block.end.php
//                                           ^^ punctuation.section.embedded.end.php

// don't break block termination highlighting after incomplete item-access expression
<?php  { ?> <div> <? $var[9 + } ?> </div>
//^^^^^^^^^ meta.embedded.php
//         ^^^^^^^ - meta.embedded
//                ^^^^^^^^^^^^^^^^ meta.embedded.php
//                                ^^^^^^^^ - meta.embedded
//^^^^^ - meta.block
//     ^^ meta.block.php - meta.block meta.block
//       ^^^^^^^^^^^ - meta.block
//                  ^^^^^^^^^^^ meta.block.php - meta.block meta.block
//                             ^^^^^^^^^^^ - meta.block
//     ^ punctuation.section.block.begin.php
//       ^^ punctuation.section.embedded.end.php
//          ^^^^^ meta.tag
//                ^^ punctuation.section.embedded.begin.php
//                   ^^^^ variable.other.php
//                       ^^^^^ meta.item-access
//                            ^ punctuation.section.block.end.php
//                              ^^ punctuation.section.embedded.end.php
//                                 ^^^^^^ meta.tag

// don't break block termination highlighting after incomplete item-access expression
<?php  { ?> <div> <? $var[9 + ; ?> </div> <? } } ?>
//^^^^^^^^^ meta.embedded.php
//         ^^^^^^^ - meta.embedded
//                ^^^^^^^^^^^^^^^^ meta.embedded.php
//                                ^^^^^^^^ - meta.embedded
//                                        ^^^^^^^ meta.embedded.php
//^^^^^ - meta.block
//     ^^ meta.block.php - meta.block meta.block
//       ^^^^^^^^^^^ - meta.block
//                  ^^^^^^^^^^^^ meta.block.php - meta.block meta.block
//                              ^^^^^^^^^^^^ - meta.block
//                                          ^^ meta.block.php - meta.block meta.block
//                                            ^^^^ - meta.block
//     ^ punctuation.section.block.begin.php
//       ^^ punctuation.section.embedded.end.php
//          ^^^^^ meta.tag
//                ^^ punctuation.section.embedded.begin.php
//                   ^^^^ variable.other.php
//                       ^^^^^ meta.item-access
//                            ^ punctuation.terminator.statement.php
//                              ^^ punctuation.section.embedded.end.php
//                                 ^^^^^^ meta.tag
//                                        ^^ punctuation.section.embedded.begin.php
//                                           ^ punctuation.section.block.end.php
//                                             ^ invalid.illegal.stray.php
//                                               ^^ punctuation.section.embedded.end.php

// don't break highlighting after incomplete catch parameter list
<?php try { ?> <div> <? } catch(  ?> </div>
//^^^^^^^^^^^^ meta.embedded.php
//            ^^^^^^^ - meta.embedded
//                   ^^^^^^^^^^^^^^^ meta.embedded.php
//                                  ^^^^^^^^ - meta.embedded
//^^^^^^^^ - meta.block
//        ^^ meta.block.php - meta.block meta.block
//          ^^^^^^^^^^^ - meta.block
//                     ^^ meta.block.php - meta.block meta.block
//                       ^^^^^^ - meta.block - meta.group
//                             ^^^ meta.group - meta.block
//                                ^^^^^^^^^^ - meta.block - meta.group
//    ^^^ keyword.control.exception.try.php
//        ^ punctuation.section.block.begin.php
//          ^^ punctuation.section.embedded.end.php
//             ^^^^^ meta.tag
//                   ^^ punctuation.section.embedded.begin.php
//                      ^ punctuation.section.block.end.php
//                        ^^^^^ keyword.control.exception.catch.php
//                             ^ punctuation.section.group.begin.php
//                                ^^ punctuation.section.embedded.end.php
//                                   ^^^^^^ meta.tag

<div attr-<?= $bar ?>-true=va<? $baz ?>l?ue></div>
//   ^^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name
//        ^^^ punctuation.section.embedded.begin
//                 ^^ punctuation.section.embedded.end
//                         ^^ meta.string.html string.unquoted.html - meta.embedded
//                           ^^^^^^^^^^ meta.string.html meta.embedded.php - string
//                                     ^^^^ meta.string.html string.unquoted.html - meta.embedded
//                           ^^ punctuation.section.embedded.begin.php
//                                   ^^ punctuation.section.embedded.end.php

<option<?php if($condition): ?> selected<?php endif; ?>></option>
//     ^^^^^ punctuation.section.embedded.begin
//                           ^^ punctuation.section.embedded.end
//                                      ^^^^^ punctuation.section.embedded.begin
//                                                   ^^ punctuation.section.embedded.end

  <tag-<?php $bar ?>na<?php $baz ?>me att<?php $bar ?>rib=false />
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.other.html
//^ punctuation.definition.tag.begin.html
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.other.html
//     ^^^^^ punctuation.section.embedded.begin.php
//     ^^^^^^^^^^^^^ meta.embedded.php
//                ^^ punctuation.section.embedded.end
//                    ^^^^^ punctuation.section.embedded.begin.php
//                    ^^^^^^^^^^^^^ meta.embedded.php
//                               ^^ punctuation.section.embedded.end
//                                    ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.html
//                                    ^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.html
//                                       ^^^^^ punctuation.section.embedded.begin.php
//                                       ^^^^^^^^^^^^^ meta.embedded.php
//                                                  ^^ punctuation.section.embedded.end
//                                                              ^^ punctuation.definition.tag.end.html

  <tag<?php $bar ?>na<?php $baz ?>me att<?php $bar ?>rib=false />
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.other.html
//^ punctuation.definition.tag.begin.html
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.other.html
//    ^^^^^ punctuation.section.embedded.begin.php
//    ^^^^^^^^^^^^^ meta.embedded.php
//               ^^ punctuation.section.embedded.end
//                   ^^^^^ punctuation.section.embedded.begin.php
//                   ^^^^^^^^^^^^^ meta.embedded.php
//                              ^^ punctuation.section.embedded.end
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.html
//                                   ^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.html
//                                      ^^^^^ punctuation.section.embedded.begin.php
//                                      ^^^^^^^^^^^^^ meta.embedded.php
//                                                 ^^ punctuation.section.embedded.end
//                                                             ^^ punctuation.definition.tag.end.html

<tag <? echo $attr; ?> = <? echo $value; ?> >
//^^^ meta.tag - meta.attribute-with-value
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value.html
//                                         ^^ meta.tag - meta.attribute-with-value
//   ^^^^^^^^^^^^^^^^^ meta.embedded.php
//                     ^ punctuation.separator.key-value.html
//                       ^^^^^^^^^^^^^^^^^^ meta.string.html meta.embedded.php

<div class="test <?= $foo ?>"></div>
//   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.class.html
//         ^ punctuation.definition.string.begin.html
//         ^^^^^^ meta.string.html - meta.embedded
//               ^^^^^^^^^^^ meta.string.html meta.embedded.php
//                          ^ meta.string.html string.quoted.double.html - meta.embedded
//               ^^^ punctuation.section.embedded.begin - source.php
//                  ^^^^^^ source.php
//                   ^^^^ variable.other
//                        ^^ punctuation.section.embedded.end - source.php
//                          ^ punctuation.definition.string.end.html
//                           ^ punctuation.definition.tag.end.html

<script>
//^^^^^^ text.html.php meta.tag
    var foo = 4;
// ^^^^^^^^^^^^^^ source.js.embedded - meta.embedded - meta.interpolation
//  ^ keyword.declaration
//      ^^^ variable.other.readwrite
//          ^ keyword.operator
//            ^ constant.numeric
    <?
//  ^^ punctuation.section.embedded.begin.php
    if ($minimal_increase) {
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ text.html.php source.js.embedded source.php.embedded.js
//     ^^^^^^^^^^^^^^^^^^^ meta.group.php
//                         ^^ meta.block.php
//  ^^ keyword.control.conditional.if.php
//     ^ punctuation.section.group.begin.php
//      ^^^^^^^^^^^^^^^^^ variable.other.php
//                       ^ punctuation.section.group.end.php
//                         ^ punctuation.section.block.begin.php
        ?>
//     ^^^^ text.html.php source.js.embedded
//     ^ source.php.embedded.js meta.block.php
//      ^^ punctuation.section.embedded.end.php - source.php
        foo += 1;
//      ^^^^^^^^^ source.js.embedded
//      ^^^ variable.other.readwrite
//          ^^ keyword.operator
//             ^ constant.numeric
        <?
//     ^^^^ text.html.php source.js.embedded.html
//      ^^ punctuation.section.embedded.begin.php - source.php
//        ^ source.php.embedded.js
    } else {
// ^^^^^^^^^^ text.html.php source.js.embedded source.php.embedded.js
//  ^ punctuation.section.block.end.php
//    ^^^^ keyword.control.conditional.else.php
//         ^ punctuation.section.block.begin.php
        ?>
//     ^^^^ text.html.php source.js.embedded
//     ^ source.php.embedded.js meta.block.php
//      ^^ punctuation.section.embedded.end.php - source.php
        foo *= 2;
//      ^^^^^^^^^ source.js.embedded
//      ^^^ variable.other.readwrite
//          ^^ keyword.operator
//             ^ constant.numeric
        <?
//     ^^^^ text.html.php source.js.embedded.html
//      ^^ punctuation.section.embedded.begin.php - source.php
//        ^ source.php.embedded.js
    }
// ^^^ text.html.php source.js.embedded.html
//  ^ punctuation.section.block.end.php
    ?>
// ^^^^ text.html.php source.js.embedded
// ^ source.php.embedded.js - meta.block
//  ^^ punctuation.section.embedded.end.php - source.php
</script>

 <script type="application/ld+json">
     {
         <? $key ?>: <? $SiteColor ?>,
     |  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.json.embedded.html
     |   ^^^^^^^^^^ meta.mapping.json meta.interpolation.php
     |             ^^ meta.mapping.json - meta.interpolation
     |               ^^^^^^^^^^^^^^^^ meta.mapping.value.json meta.interpolation.php
     |                               ^ meta.mapping.json - meta.interpolation

         "<? $key ?>": "<? $SiteColor ?>",
     |  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.json.embedded.html
     |   ^ meta.mapping.key.json string.quoted.double.json punctuation.definition.string.begin.json
     |    ^^^^^^^^^^ meta.mapping.key.json meta.interpolation.php - string
     |              ^ meta.mapping.key.json string.quoted.double.json punctuation.definition.string.end.json
     |               ^^ meta.mapping.json - meta.interpolation
     |                 ^ meta.mapping.value.json meta.string.json string.quoted.double.json punctuation.definition.string.begin.json
     |                  ^^^^^^^^^^^^^^^^ meta.mapping.value.json meta.interpolation.php - string
     |                                  ^ meta.mapping.value.json meta.string.json string.quoted.double.json punctuation.definition.string.end.json
     |                                   ^ meta.mapping.json - meta.interpolation
     }
 </script>

<style>
h1 {
    font-family: Arial;
// ^^^^^^^^^^^^^^^^^^^^^ text.html.php source.css.embedded
//  ^^^^^^^^^^^ support.type.property-name
//               ^^^^^ string.unquoted

    <? if ($minimal_increase) { ?>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ text.html.php source.css.embedded meta.block.css meta.embedded.php
//  ^^ - source.php
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.php.embedded.css
//                              ^^ - source.php
//  ^^ punctuation.section.embedded.begin.php
//     ^^ keyword.control.conditional.if.php
//        ^ punctuation.section.group.begin.php
//         ^^^^^^^^^^^^^^^^^ variable.other.php
//                          ^ punctuation.section.group.end.php
//                            ^ punctuation.section.block.begin.php
//                              ^^ punctuation.section.embedded.end.php

;       font-size: 2em;
//     ^^^^^^^^^^^^^^^^^ text.html.php source.css.embedded
//      ^^^^^^^^^ support.type.property-name
//                 ^ constant.numeric
    <? } else { ?>
//  ^^^^^^^^^^^^^^ text.html.php source.css.embedded meta.block.css meta.embedded.php
//  ^^ - source.php
//    ^^^^^^^^^^ source.php.embedded.css
//              ^^ - source.php
//  ^^ punctuation.section.embedded.begin.php
//     ^ punctuation.section.block.end.php
//       ^^^^ keyword.control.conditional.else.php
//            ^ punctuation.section.block.begin.php
//              ^^ punctuation.section.embedded.end.php

;       font-size: 3em;
//     ^^^^^^^^^^^^^^^^^ text.html.php source.css.embedded
//      ^^^^^^^^^ support.type.property-name
//                 ^ constant.numeric
    <? } ?>
//  ^^^^^^^ text.html.php source.css.embedded meta.block.css meta.embedded.php
//  ^^ - source.php
//    ^^^ source.php.embedded.css
//       ^^ - source.php
//  ^^ punctuation.section.embedded.begin.php
//     ^ punctuation.section.block.end.php
//       ^^ punctuation.section.embedded.end.php

}
// <- text.html.php source.css.embedded punctuation.section.block.end.css

@counter-style <?php $counter; ?> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.at-rule.counter-style.css - meta.block
//                                ^^ meta.at-rule.counter-style.css meta.property-list.css meta.block.css
//^^^^^^^^^^^^ keyword.control.directive.css - punctuation
//             ^^^^^^^^^^^^^^^^^^ entity.other.counter-style-name.css meta.embedded.php
//             ^^^^^ punctuation.section.embedded.begin.php
//                  ^^^^^^^^^^^ source.php.embedded.css
//                             ^^ punctuation.section.embedded.end.php

@counter-style my-<?php $counter; ?> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.at-rule.counter-style.css - meta.block
//                                   ^^ meta.at-rule.counter-style.css meta.property-list.css meta.block.css
//^^^^^^^^^^^^ keyword.control.directive.css - punctuation
//             ^^^ entity.other.counter-style-name.css - meta.embedded
//                ^^^^^^^^^^^^^^^^^^ entity.other.counter-style-name.css meta.embedded.php
//                ^^^^^ punctuation.section.embedded.begin.php
//                     ^^^^^^^^^^^ source.php.embedded.css
//                                ^^ punctuation.section.embedded.end.php

   .<? $selector ?> { <? $attr ?>: <? $value ?>; }
// ^^^^^^^^^^^^^^^^ source.css.embedded.html - meta.property-list - meta.block
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.css.embedded.html meta.property-list.css meta.block.css
// ^ meta.selector.css entity.other.attribute-name.class.css punctuation.definition.entity.css
//  ^^^^^^^^^^^^^^^ meta.selector.css entity.other.attribute-name.class.css meta.embedded.php
//  ^^ punctuation.section.embedded.begin.php
//    ^^^^^^^^^^^ source.php.embedded.css
//               ^^ punctuation.section.embedded.end.php
//                  ^ punctuation.section.block.begin.css
//                    ^^^^^^^^^^^ meta.property-name.css support.type.property-name.css meta.embedded.php
//                    ^^ punctuation.section.embedded.begin.php
//                      ^^^^^^^ source.php.embedded.css
//                             ^^ punctuation.section.embedded.end.php
//                               ^ punctuation.separator.key-value.css
//                                 ^^^^^^^^^^^^ meta.property-value.css meta.embedded.php
//                                 ^^ punctuation.section.embedded.begin.php
//                                   ^^^^^^^^ source.php.embedded.css
//                                           ^^ punctuation.section.embedded.end.php
//                                             ^ punctuation.terminator.rule.css
//                                               ^ punctuation.section.block.end.css

.my-<?php echo $class;?>-name:my-<?php echo $class;?>-class { my-<?php echo $class;?>-name: black }
// <- meta.selector.css entity.other.attribute-name.class.css punctuation.definition.entity.css
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.css.embedded.html meta.selector.css
//                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.css.embedded.html meta.property-list.css meta.block.css
//^^ entity.other.attribute-name.class.css - meta.embedded.php
//  ^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.class.css meta.embedded.php
//                      ^^^^^ entity.other.attribute-name.class.css - meta.embedded.php
//                           ^ punctuation.definition.pseudo-class.css
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.pseudo-class.css
//                                                          ^ punctuation.section.block.begin.css
//                                                            ^^^ meta.property-name.css support.type.property-name.css - meta.embedded
//                                                               ^^^^^^^^^^^^^^^^^^^^ meta.property-name.css support.type.property-name.css meta.embedded.php
//                                                                                   ^^^^^ meta.property-name.css support.type.property-name.css - meta.embedded
</style>

<p style="color: <?php echo "red" ?>">text</p>
//       ^ meta.attribute-with-value.style.html meta.string.html string.quoted.double.html punctuation.definition.string.begin.html - source
//        ^^^^^^^ meta.attribute-with-value.style.html meta.string.html source.css.embedded.html - meta.embedded.php - meta.interpolation
//               ^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.style.html meta.string.html source.css.embedded.html meta.embedded.php - meta.interpolation
//                                  ^ meta.attribute-with-value.style.html meta.string.html string.quoted.double.html punctuation.definition.string.end.html - source
//                                   ^ text.html.php meta.tag.block.any.html punctuation.definition.tag.end.html

<p style='color: <?php echo 'red' ?>'>text</p>
//       ^ meta.attribute-with-value.style.html meta.string.html string.quoted.single.html punctuation.definition.string.begin.html - source
//        ^^^^^^^ meta.attribute-with-value.style.html meta.string.html source.css.embedded.html - meta.embedded.php - meta.interpolation
//               ^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.style.html meta.string.html source.css.embedded.html meta.embedded.php - meta.interpolation
//                                  ^ meta.attribute-with-value.style.html meta.string.html string.quoted.single.html punctuation.definition.string.end.html - source
//                                   ^ text.html.php meta.tag.block.any.html punctuation.definition.tag.end.html

<p onclick="foo(<?php echo "red" ?>)">text</p>
//         ^ meta.attribute-with-value.event.html meta.string.html string.quoted.double.html punctuation.definition.string.begin.html - source
//          ^^^^ meta.attribute-with-value.event.html meta.string.html source.js.embedded.html meta.function-call - meta.embedded - meta.interpolation
//              ^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.event.html meta.string.html source.js.embedded.html meta.function-call meta.embedded.php - meta.interpolation
//                                 ^ meta.attribute-with-value.event.html meta.string.html source.js.embedded.html meta.function-call - meta.embedded - meta.interpolation
//                                  ^ meta.attribute-with-value.event.html meta.string.html string.quoted.double.html punctuation.definition.string.end.html - source

<p onclick='foo(<?php echo 'red' ?>)'>text</p>
//         ^ meta.attribute-with-value.event.html meta.string.html string.quoted.single.html punctuation.definition.string.begin.html - source
//          ^^^^ meta.attribute-with-value.event.html meta.string.html source.js.embedded.html meta.function-call - meta.embedded - meta.interpolation
//              ^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.event.html meta.string.html source.js.embedded.html meta.function-call meta.embedded.php - meta.interpolation
//                                 ^ meta.attribute-with-value.event.html meta.string.html source.js.embedded.html meta.function-call - meta.embedded - meta.interpolation
//                                  ^ meta.attribute-with-value.event.html meta.string.html string.quoted.single.html punctuation.definition.string.end.html - source

<![CDATA[Text with <? $php ?> interpolation.]]>
//       ^^^^^^^^^^ meta.tag.sgml.cdata.html meta.string.html string.unquoted.cdata.html
//                 ^^^^^^^^^^ meta.tag.sgml.cdata.html meta.string.html meta.embedded.php - string
//                           ^^^^^^^^^^^^^^^ meta.tag.sgml.cdata.html meta.string.html string.unquoted.cdata.html

  <<?php $tag ?> <?php $attr ?>=<?php $value ?> />
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ text.html.php meta.tag.other.html
//^ punctuation.definition.tag.begin.html
// ^^^^^^^^^^^^^ entity.name.tag.other.html meta.embedded.php
// ^^^^^ punctuation.section.embedded.begin.php
//       ^^^^ variable.other.php
//            ^^ punctuation.section.embedded.end.php
//               ^^^^^^^^^^^^^^ meta.attribute-with-value.html entity.other.attribute-name.html meta.embedded.php
//               ^^^^^ punctuation.section.embedded.begin.php
//                     ^^^^^ variable.other.php
//                           ^^ punctuation.section.embedded.end.php
//                             ^ meta.attribute-with-value.html punctuation.separator.key-value.html
//                              ^^^^^^^^^^^^^^^ meta.attribute-with-value.html meta.string.html meta.embedded.php
//                              ^^^^^ punctuation.section.embedded.begin.php
//                                    ^^^^^^ variable.other.php
//                                           ^^ punctuation.section.embedded.end.php
//                                              ^^ punctuation.definition.tag.end.html

  <<? $tag ?> <? $attr ?>=<? $value ?> />
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ text.html.php meta.tag.other.html
//^ punctuation.definition.tag.begin.html
// ^^^^^^^^^^ entity.name.tag.other.html meta.embedded.php
// ^^ punctuation.section.embedded.begin.php
//    ^^^^ variable.other.php
//         ^^ punctuation.section.embedded.end.php
//            ^^^^^^^^^^^ meta.attribute-with-value.html entity.other.attribute-name.html meta.embedded.php
//            ^^ punctuation.section.embedded.begin.php
//               ^^^^^ variable.other.php
//                     ^^ punctuation.section.embedded.end.php
//                       ^ meta.attribute-with-value.html punctuation.separator.key-value.html
//                        ^^^^^^^^^^^^ meta.attribute-with-value.html meta.string.html meta.embedded.php
//                        ^^ punctuation.section.embedded.begin.php
//                           ^^^^^^ variable.other.php
//                                  ^^ punctuation.section.embedded.end.php
//                                     ^^ punctuation.definition.tag.end.html

  <?phpzzzz
//^^ punctuation.section.embedded.begin.php
//  ^^^^^^^ constant.other.php

  ?>
//^^ punctuation.section.embedded.end.php

  <?php
  <?php
//^^^^^ punctuation.section.embedded.begin.php
