// SYNTAX TEST "Packages/PHP/PHP.sublime-syntax"
<?php
namespace MyNamespace;
// <- meta.namespace.php keyword.declaration.namespace.php
//^^^^^^^^ meta.namespace.php - meta.path
//        ^^^^^^^^^^^ meta.namespace.php meta.path.php
//                   ^ - meta.namespace
//^^^^^^^ keyword.declaration.namespace.php
//        ^^^^^^^^^^^ entity.name.namespace.php
//                   ^ punctuation.terminator.statement.php - entity.name.namespace

use
// <- meta.use.php keyword.other.use.php
//^ meta.use.php keyword.other.use.php

use \MyClass
// <- meta.use.php keyword.other.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^ meta.use.php meta.path.php
//          ^ meta.use.php - meta.path
//^ keyword.other.use.php
//  ^ punctuation.separator.namespace.php
//   ^^^^^^^ support.class.php

use
    \MyClass
//^^ meta.use.php - meta.path
//  ^^^^^^^^ meta.use.php meta.path.php
//          ^ meta.use.php - meta.path
//  ^ punctuation.separator.namespace.php
//   ^^^^^^^ support.class.php

use \FilterIterator
// <- meta.use.php keyword.other.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                 ^ meta.use.php - meta.path
//^ keyword.other.use.php
//  ^ punctuation.separator.namespace.php
//   ^^^^^^^^^^^^^^ support.class.builtin.php

use MyNamespace\Foo ;
// <- meta.use.php keyword.other.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                 ^ meta.use.php - meta.path
//                  ^ - meta.use
//^ keyword.other.use.php
//  ^^^^^^^^^^^ support.other.namespace.php
//             ^ punctuation.separator.namespace.php
//              ^^^ support.class.php - constant - entity - support.function - support.other
//                  ^ punctuation.terminator.statement.php

use /* Comment */ \MyNamespace\Bar;
// <- meta.use.php keyword.other.use.php
//^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                ^ - meta.use
//^ keyword.other.use.php
//  ^^^^^^^^^^^^^ comment.block.php
//                ^ punctuation.separator.namespace.php
//                 ^^^^^^^^^^^ support.other.namespace.php
//                            ^ punctuation.separator.namespace.php
//                             ^^^ support.class.php - constant - entity - support.function - support.other
//                                ^ punctuation.terminator.statement.php

use /**/ My\Full\Classname /**/ as /**/ Another # Foo baz
// <- meta.use.php keyword.other.use.php
//^^^^^^^ meta.use.php - meta.path
//       ^^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//^ keyword.other.use.php
//  ^^^^ comment.block.php
//       ^^ support.other.namespace.php
//         ^ punctuation.separator.namespace.php
//          ^^^^ support.other.namespace.php
//              ^ punctuation.separator.namespace.php
//               ^^^^^^^^^ support.class.php - constant - entity - support.function - support.other
//                         ^^^^ comment.block.php
//                              ^^ keyword.other.use-as.php
//                                 ^^^^ comment.block.php
//                                      ^^^^^^^ entity.name.class.php
//                                              ^^^^^^^^^^ comment.line.number-sign.php
, My\Full\NSname;
// <- meta.use.php punctuation.separator.comma.php
//^^^^^^^^^^^^^^ meta.use.php meta.path.php
//              ^ - meta.use - meta.path
//^^ support.other.namespace.php
//  ^ punctuation.separator.namespace.php
//   ^^^^ support.other.namespace.php
//       ^ punctuation.separator.namespace.php
//        ^^^^^^ support.class.php - constant - entity - support.function - support.other
//              ^ punctuation.terminator.statement.php

use function /**/ some\nspace\fn_a;
// <- meta.use.php keyword.other.use.php
//^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                ^ - meta.use - meta.path
//^ keyword.other.use.php
//  ^^^^^^^^ keyword.declaration.function.php
//           ^^^^ comment.block.php
//                ^^^^ support.other.namespace.php
//                    ^ punctuation.separator.namespace.php
//                      ^^^^^ support.other.namespace.php
//                           ^ punctuation.separator.namespace.php
//                            ^^^^ support.function.php - constant - entity support.class - support.other
//                                ^ punctuation.terminator.statement.php

use
    function /**/ some\nspace\fn_a;
//^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                ^ - meta.use - meta.path
//  ^^^^^^^^ keyword.declaration.function.php
//           ^^^^ comment.block.php
//                ^^^^ support.other.namespace.php
//                    ^ punctuation.separator.namespace.php
//                      ^^^^^ support.other.namespace.php
//                           ^ punctuation.separator.namespace.php
//                            ^^^^ support.function.php - constant - entity support.class - support.other
//                                ^ punctuation.terminator.statement.php

use /**/ function /**/ some\nspace\fn_a /**/ as /**/ fn_b;
// <- meta.use.php keyword.other.use.php
//^^^^^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                     ^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                     ^^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                                                       ^ - meta.use - meta.path
//^ keyword.other.use.php
//  ^^^^ comment.block.php
//       ^^^^^^^^ keyword.declaration.function.php
//                ^^^^ comment.block.php
//                     ^^^^ support.other.namespace.php
//                         ^ punctuation.separator.namespace.php
//                          ^^^^^^ support.other.namespace.php
//                                ^ punctuation.separator.namespace.php
//                                 ^^^^ support.function.php - constant - entity support.class - support.other
//                                      ^^^^ comment.block.php
//                                           ^^ keyword.other.use-as.php
//                                              ^^^^ comment.block.php
//                                                   ^^^^ entity.name.function.php
//                                                       ^ punctuation.terminator.statement.php

use const /**/ some\nspace\ConstValue /**/ as /**/ Foo;
// <- meta.use.php keyword.other.use.php
//^^^^^^^^^^^^^ meta.use.php - meta.path
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                   ^^^^^^^^^^^^^^^^^ meta.use.php - meta.path
//                                                    ^ - meta.use - meta.path
//^ keyword.other.use.php
//  ^^^^^ storage.modifier.php
//        ^^^^ comment.block.php
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.path.php
//             ^^^^ support.other.namespace.php
//                 ^ punctuation.separator.namespace.php
//                  ^^^^^^ support.other.namespace.php
//                        ^ punctuation.separator.namespace.php
//                         ^^^^^^^^^^ constant.other.php - support.function.php - entity.name - support.class.php - support.other.namespace
//                                    ^^^^ comment.block.php
//                                         ^^ keyword.other.use-as.php
//                                            ^^^^ comment.block.php
//                                                 ^^^ entity.name.constant.php
//                                                    ^ punctuation.terminator.statement.php

use
    const /**/ some\nspace\ConstValue /**/
//^^^^^^^^^^^^^ meta.use.php - meta.path
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.path.php
//                                   ^^^^^^ meta.use.php - meta.path
//  ^^^^^ storage.modifier.php
//        ^^^^ comment.block.php
//             ^^^^^^^^^^^^^^^^^^^^^^ meta.path.php
//             ^^^^ support.other.namespace.php
//                 ^ punctuation.separator.namespace.php
//                  ^^^^^^ support.other.namespace.php
//                        ^ punctuation.separator.namespace.php
//                         ^^^^^^^^^^ constant.other.php - support.function.php - entity.name - support.class.php - support.other.namespace
//                                    ^^^^ comment.block.php
    as /**/ Foo;
// ^^^^^^^^^^^^ meta.use.php - meta.path
//             ^ - meta.use - meta.path
//  ^^ keyword.other.use-as.php
//     ^^^^ comment.block.php
//          ^^^ entity.name.constant.php
//             ^ punctuation.terminator.statement.php

// Unfortunately we don't know if these identifiers are namespaces or classes
// so we can't disambiguate. Generally we are just going to assume an "as" is
// a class name so that the definition of the class can be found via the index.
use some\nspace\{ClassA, ClassB, ClassC as C};
// <- meta.use.php keyword.other.use.php
//^^ meta.use.php - meta.path
//  ^^^^^^^^^^^^ meta.use.php meta.path.php - meta.sequence
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.sequence.list.php
//                                           ^ - meta.use - meta.path
//  ^^^^ support.other.namespace.php
//      ^ punctuation.separator.namespace.php
//       ^^^^^^ support.other.namespace.php
//             ^ punctuation.separator.namespace.php
//              ^ punctuation.section.sequence.begin.php
//               ^^^^^^ support.class.php - constant - entity - support.function - support.other
//                     ^ punctuation.separator.comma.php
//                       ^^^^^^ support.class.php - constant - entity - support.function - support.other
//                             ^ punctuation.separator.comma.php
//                               ^^^^^^ support.class.php - constant - entity - support.function - support.other
//                                      ^^ keyword.other.use-as.php
//                                         ^ entity.name.class.php
//                                          ^ punctuation.section.sequence.end.php
//                                           ^ punctuation.terminator.statement.php

use function some\nspace\{fn_d, fn_e, fn_f as fn_g};
// <- meta.use.php keyword.other.use.php
//^^^^^^^^^^^ meta.use.php - meta.path
//           ^^^^^^^^^^^^ meta.use.php meta.path.php - meta.sequence
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.sequence.list.php
//                                                 ^ - meta.use - meta.path
//  ^^^^^^^^ keyword.declaration.function.php
//           ^^^^ support.other.namespace.php
//               ^ punctuation.separator.namespace.php
//                ^^^^^^ support.other.namespace.php
//                      ^ punctuation.separator.namespace.php
//                       ^ punctuation.section.sequence.begin.php
//                        ^^^^ support.function.php - constant - entity - support.class - support.other
//                            ^ punctuation.separator.comma.php
//                              ^^^^ support.function.php - constant - entity - support.class - support.other
//                                  ^ punctuation.separator.comma.php
//                                    ^^^^ support.function.php - constant - entity - support.class - support.other
//                                         ^^ keyword.other.use-as.php
//                                            ^^^^ entity.name.function.php
//                                                ^ punctuation.section.sequence.end.php
//                                                 ^ punctuation.terminator.statement.php

use const some\nspace\{ConstA, ConstB AS ConstD, TRUE};
// <- meta.use.php keyword.other.use.php
//^^^^^^^^ meta.use.php - meta.path
//        ^^^^^^^^^^^^ meta.use.php meta.path.php - meta.sequence
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.sequence.list.php
//                                                    ^ - meta.use - meta.path
//  ^^^^^ storage.modifier.php
//        ^^^^ support.other.namespace.php
//            ^ punctuation.separator.namespace.php
//             ^^^^^^ support.other.namespace.php
//                   ^ punctuation.separator.namespace.php
//                    ^ punctuation.section.sequence.begin.php
//                     ^^^^^^ constant.other - entity - support.class - support.function - support.other
//                           ^ punctuation.separator.comma.php
//                             ^^^^^^ constant.other - entity - support.class - support.function - support.other
//                                    ^^ keyword.other.use-as.php
//                                       ^^^^^^ entity.name.constant.php - constant - support.class - support.function - support.other
//                                             ^ punctuation.separator.comma.php
//                                               ^^^^ constant.language.boolean - entity - support.class - support.function - support.other
//                                                   ^ punctuation.section.sequence.end.php
//                                                    ^ punctuation.terminator.statement.php

/**
 * Function Definition Tests
 */

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
//                     ^ punctuation.separator.comma.php
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
//                                     ^ punctuation.separator.comma.php
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

$var = function(array $ar=array(), ClassName $cls) use ($var1, $var2) {
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//     ^^^^^^^^ meta.function.php - meta.group
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.php meta.group.php
//                                                ^ meta.function.php
//                                                 ^^^^ meta.function.use.php - meta.group
//                                                     ^^^^^^^^^^^^^^ meta.function.use.php meta.group.php
//                                                                   ^ meta.function.php - meta.block
//                                                                    ^^ meta.function.php meta.block.php
//     ^^^^^^^^ keyword.declaration.function.php
//             ^ meta.group.php punctuation.section.group.begin.php
//              ^^^^^ storage.type.php
//                    ^^^ variable.parameter.php
//                       ^ keyword.operator.assignment.php
//                        ^^^^^ support.function.array.php
//                             ^ punctuation.section.group.begin.php
//                              ^ punctuation.section.group.end.php
//                               ^ punctuation.separator.comma.php
//                                 ^^^^^^^^^ support.class.php
//                                           ^^^^ variable.parameter.php
//                                               ^ punctuation.section.group.end.php
//                                                 ^^^ keyword.other.function.use.php
//                                                     ^ punctuation.section.group.begin.php
//                                                      ^^^^^ variable.parameter.php
//                                                           ^ punctuation.separator.comma.php
//                                                             ^^^^^ variable.parameter.php
//                                                                  ^ punctuation.section.group.end.php
//                                                                    ^ punctuation.section.block.begin.php

};
// <- meta.function.php meta.block.php punctuation.section.block.end.php

function bye(): never {
//^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
// <- meta.function.php keyword.declaration.function.php
//^^^^^^^^^^ meta.function.php
//          ^^ meta.function.parameters.php meta.group.php
//            ^^^^^^^^ meta.function.return-type.php
//                    ^^ meta.function.php meta.block.php
//            ^ punctuation.separator.colon.php
//              ^^^^^ storage.type.php
//                    ^ punctuation.section.block.begin.php
  exit();
}
// <- meta.function.php meta.block.php punctuation.section.block.end.php

function foo(?stinrg ...$args) {}
//           ^ storage.type.nullable
//            ^^^^^^ support.class
//                   ^^^ keyword.operator.spread
//                      ^^^^^ variable.parameter

$a = $b ? $c::MY_CONST : $d * 5;
//      ^ keyword.operator.ternary
//        ^^ variable.other
//          ^^ punctuation.accessor.double-colon
//            ^^^^^^^^ constant.other
//                     ^ keyword.operator.ternary
//                          ^ keyword.operator.arithmetic

$a = $b ? : $c::MY_CONST;
//      ^ keyword.operator.ternary
//        ^ keyword.operator.ternary
//          ^^ variable.other
//            ^^ punctuation.accessor.double-colon
//              ^^^^^^^^ constant.other

$arr3 = array('a', ...$arr1, 'b', ...$arr2, 'c',);
//      ^^^^^ support.function.array
//           ^ punctuation.section.group.begin
//                 ^^^ keyword.operator.spread
//                    ^^^^^ variable.other
//                                ^^^ keyword.operator.spread
//                                             ^ punctuation.separator.comma
//                                              ^ punctuation.section.group.end

$arr4 = ['a', ...$arr1, 'b', ...$arr2, 'c',];
//      ^ punctuation.section.sequence.begin
//          ^ punctuation.separator.comma
//            ^^^ keyword.operator.spread
//               ^^^^^ variable.other
//                           ^^^ keyword.operator.spread
//                                        ^ punctuation.separator.comma
//                                         ^ punctuation.section.sequence.end

$array = [   ];
//       ^ meta.sequence.array.empty.php punctuation.section.sequence.begin.php
//           ^ meta.sequence.array.empty.php punctuation.section.sequence.end.php
   [];
// ^ meta.sequence.array.empty.php punctuation.section.sequence.begin.php
//  ^ meta.sequence.array.empty.php punctuation.section.sequence.end.php

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
//    ^ punctuation.section.brackets.begin.php
//       ^ punctuation.section.brackets.end.php

$var?->meth()[10];
//  ^ punctuation.accessor.nullsafe
//   ^^ punctuation.accessor.arrow
//           ^^^^ meta.item-access
//           ^ punctuation.section.brackets.begin
//              ^ punctuation.section.brackets.end

  # [WithoutArgument]
//^^^^^^^^^^^^^^^^^^^ comment
  ##[WithoutArgument]
//^^^^^^^^^^^^^^^^^^^ comment

  #[WithoutArgument]
//^^^^^^^^^^^^^^^^^^ meta.attribute.php - comment
//                  ^ - meta.attribute
//^^ punctuation.definition.attribute.begin.php
//  ^^^^^^^^^^^^^^^ support.class.php - meta.path
//                 ^ punctuation.definition.attribute.end.php
  #[WithoutArgument()]
//^^^^^^^^^^^^^^^^^ meta.attribute.php - meta.group
//                 ^^ meta.attribute.arguments.php meta.group.php
//                   ^ meta.attribute.php - meta.group
//                    ^ - meta.attribute
//^^ punctuation.definition.attribute.begin.php
//  ^^^^^^^^^^^^^^^ support.class.php - meta.path
//                 ^ punctuation.section.group.begin.php
//                  ^ punctuation.section.group.end.php
//                   ^ punctuation.definition.attribute.end
  #[SingleArgument(0)]
//^^^^^^^^^^^^^^^^ meta.attribute.php - meta.group
//                ^^^ meta.attribute.arguments.php meta.group.php
//                   ^ meta.attribute.php - meta.group
//                    ^ - meta.attribute
//^^ punctuation.definition.attribute.begin.php
//  ^^^^^^^^^^^^^^ support.class.php - meta.path
//                ^ punctuation.section.group.begin.php
//                 ^ constant.numeric.value.php
//                  ^ punctuation.section.group.end.php
//                   ^ punctuation.definition.attribute.end
  #[FewArguments('Hello', 'World')]
//^^^^^^^^^^^^^^ meta.attribute.php - meta.group
//              ^^^^^^^^^^^^^^^^^^ meta.attribute.arguments.php meta.group.php
//                                ^ meta.attribute.php - meta.group
//                                 ^ - meta.attribute
//^^ punctuation.definition.attribute.begin.php
//  ^^^^^^^^^^^^ support.class.php - meta.path
//              ^ punctuation.section.group.begin.php
//               ^^^^^^^ string.quoted.single.php
//                      ^ punctuation.separator.comma.php
//                        ^^^^^^^ string.quoted.single.php
//                               ^ punctuation.section.group.end.php
//                                ^ punctuation.definition.attribute.end.php
  #[FewArguments(PDO::class, PHP_VERSION_ID), SecondOne(0)]
//^^^^^^^^^^^^^^ meta.attribute.php - meta.group
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.arguments.php meta.group.php
//                                          ^^^^^^^^^^^ meta.attribute.php - meta.group
//                                                     ^^^ meta.attribute.arguments.php meta.group.php
//                                                        ^ meta.attribute.php - meta.group
//                                                         ^ - meta.attribute
//^^ punctuation.definition.attribute.begin
//  ^^^^^^^^^^^^ support.class.php - meta.path
//              ^ punctuation.section.group.begin.php
//               ^^^ support.class.builtin.php
//                  ^^ punctuation.accessor.double-colon.php
//                    ^^^^^ constant.class.php
//                         ^ punctuation.separator.comma.php
//                           ^^^^^^^^^^^^^^ support.constant.core.php
//                                         ^ punctuation.section.group.end.php
//                                          ^ punctuation.separator.comma.php
//                                            ^^^^^^^^^ support.class.php
//                                                     ^ punctuation.section.group.begin.php
//                                                      ^ constant.numeric.value.php
//                                                       ^ punctuation.section.group.end.php
//                                                        ^ punctuation.definition.attribute.end.php
  #[\My\Attributes\FewArguments("foo", "bar")]
//^^ meta.attribute.php - meta.path - meta.group
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.php meta.path.php - meta.group
//                             ^^^^^^^^^^^^^^ meta.attribute.arguments.php meta.group.php - meta.path
//                                           ^ meta.attribute.php - meta.group
//                                            ^ - meta.attribute
//^^ punctuation.definition.attribute.begin
//  ^ punctuation.separator.namespace.php
//   ^^ support.other.namespace.php
//     ^ punctuation.separator.namespace.php
//      ^^^^^^^^^^ support.other.namespace.php
//                ^ punctuation.separator.namespace.php
//                 ^^^^^^^^^^^^ support.class.php
//                             ^ punctuation.section.group.begin.php
//                              ^^^^^ string.quoted.double.php
//                                   ^ punctuation.separator.comma.php
//                                     ^^^^^ string.quoted.double.php
//                                          ^ punctuation.section.group.end.php
//                                           ^ punctuation.definition.attribute.end.php
/** docblock */
// <- comment.block
  #[BitShiftExample(4 >> 1, 4 << 1)]
//^^^^^^^^^^^^^^^^^ meta.attribute.php - meta.group
//                 ^^^^^^^^^^^^^^^^ meta.attribute.arguments.php meta.group.php
//                                 ^ meta.attribute.php - meta.group
//                                  ^ - meta.attribute
//^^ punctuation.definition.attribute.begin
//  ^^^^^^^^^^^^^^^ support.class.php
//                 ^ punctuation.section.group.begin.php
//                  ^ constant.numeric.value.php
//                    ^^ keyword.operator.bitwise.php
//                       ^ constant.numeric.value.php
//                        ^ punctuation.separator.comma.php
//                          ^ constant.numeric.value.php
//                            ^^ keyword.operator.bitwise.php
//                               ^ constant.numeric.value.php
//                                ^ punctuation.section.group.end.php
//                                 ^ punctuation.definition.attribute.end.php
function foo() {}
// <- keyword.declaration.function

  #[ExampleAttribute]
//^^^^^^^^^^^^^^^^^^^ meta.attribute
//^^ punctuation.definition.attribute.begin
//  ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                  ^ punctuation.definition.attribute.end
class Foo
{
    #[ExampleAttribute]
//  ^^^^^^^^^^^^^^^^^^^ meta.attribute
//  ^^ punctuation.definition.attribute.begin
//    ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                    ^ punctuation.definition.attribute.end
    public const FOO = 'foo';

    #[ExampleAttribute]
//  ^^^^^^^^^^^^^^^^^^^ meta.attribute
//  ^^ punctuation.definition.attribute.begin
//    ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                    ^ punctuation.definition.attribute.end
    #[ORM\Column("string", ORM\Column::UNIQUE)]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute
//  ^^ punctuation.definition.attribute.begin
//    ^^^^^^^^^^ meta.path
//              ^ punctuation.section.group.begin
//               ^^^^^^^^ string.quoted.double
//                       ^ punctuation.separator
//                         ^^^^^^^^^^ meta.path
//                                   ^^ punctuation.accessor.double-colon
//                                     ^^^^^^ constant.other
//                                           ^ punctuation.section.group.end
//                                            ^ punctuation.definition.attribute.end
    #[Assert\Email(["message" => "The email '{{ value }}' is not a valid email."])]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute
//  ^^ punctuation.definition.attribute.begin
//    ^^^^^^^^^^^^ meta.path
//                ^ punctuation.section.group.begin
//                 ^ punctuation.section.sequence.begin
//                  ^^^^^^^^^ string.quoted.double
//                            ^^ keyword.operator.key
//                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                                                                              ^ punctuation.section.sequence.end
//                                                                               ^ punctuation.section.group.end
//                                                                                ^ punctuation.definition.attribute.end
    public $x;

    #[ExampleAttribute] // comment
//  ^^^^^^^^^^^^^^^^^^^ meta.attribute
//  ^^ punctuation.definition.attribute.begin
//    ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                    ^ punctuation.definition.attribute.end
//                      ^^^^^^^^^^ comment
    public function foo(#[ExampleAttribute] \Foo\Bar $bar) { }
//                      ^^^^^^^^^^^^^^^^^^^ meta.attribute
//                      ^^ punctuation.definition.attribute.begin
//                        ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                                        ^ punctuation.definition.attribute.end
//                                          ^^^^^^^^ meta.path
//                                                   ^^^^ variable.parameter

    #[Route("/api/posts/{id}", methods: ["GET", "HEAD"])]
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute
//  ^^ punctuation.definition.attribute.begin
//    ^^^^^ support.class.php - meta.path
//         ^ punctuation.section.group.begin
//                           ^ punctuation.separator
//                             ^^^^^^^ variable.parameter.named
//                                    ^ keyword.operator.assignment.php
//                                                     ^ punctuation.section.group.end
//                                                      ^ punctuation.definition.attribute.end
    public function show(int $id) { }
}

$object = new #[ExampleAttribute] class () { };
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php
//            ^^^^^^^^^^^^^^^^^^^ meta.attribute
//            ^^ punctuation.definition.attribute.begin
//              ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                              ^ punctuation.definition.attribute.end
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
//    ^^^^^^^^^^^^^^^^^^^ meta.attribute
//    ^^ punctuation.definition.attribute.begin
//      ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                      ^ punctuation.definition.attribute.end
//                        ^^^^^^^^ keyword.declaration.function

$f3 = #[ExampleAttribute] fn () => 1;
//    ^^^^^^^^^^^^^^^^^^^ meta.attribute
//    ^^ punctuation.definition.attribute.begin
//      ^^^^^^^^^^^^^^^^ support.class.php - meta.path
//                      ^ punctuation.definition.attribute.end
//                        ^^ keyword.declaration.function
//                              ^^ keyword.declaration.function.arrow

/**
   No longer a phpdoc comment since no leading *
 * @return
//   ^ comment.block - keyword.other.phpdoc
 */
// ^ source - comment.block

/**
    *
//  ^ comment.block.documentation.phpdoc.php punctuation.definition.comment.php
*/

/** @var Properties: class properties. */
//  ^ keyword.other.phpdoc
//       ^ - keyword.other.phpdoc

/** @var @var Properties: class properties. */
//  ^ keyword.other.phpdoc
//       ^ - keyword.other.phpdoc

/**@var Properties: class properties. */
// ^^^^ - keyword.other.phpdoc

/** @var@var Properties: class properties. */
//  ^^^^^^^^ - keyword.other.phpdoc

/* No phpdoc highlight since there are not two * after the opening /
 * @return
//   ^ comment.block - keyword.other.phpdoc
 */

/**
 * @api Methods: declares that elements are suitable for consumption by third parties.
//  ^ keyword.other.phpdoc
 */

/**
 * @author Any: documents the author of the associated element.
//  ^ keyword.other.phpdoc
 */

/**
 * @category File, Class: groups a series of packages together.
//  ^ keyword.other.phpdoc
 */

/**
 * @copyright Any: documents the copyright information for the associated element.
//  ^ keyword.other.phpdoc
 */

/**
 * @deprecated Any: indicates that the associated element is deprecated and can be removed in a future version.
//  ^ keyword.other.phpdoc
 */

/**
 * @example Any: shows the code of a specified example file or, optionally, just a portion of it.
//  ^ keyword.other.phpdoc
 */

/**
 * @filesource File: includes the source of the current file for use in the output.
//  ^ keyword.other.phpdoc
 */

/**
 * @global Variable: informs phpDocumentor of a global variable or its usage.
//  ^ keyword.other.phpdoc
 */

/**
 * @ignore Any: tells phpDocumentor that the associated element is not to be included in the documentation.
//  ^ keyword.other.phpdoc
 */

/**
 * @internal Any: denotes that the associated elements is internal to this application or library and hides it by default.
//  ^ keyword.other.phpdoc
 */

/**
 * @license File, Class: indicates which license is applicable for the associated element.
//  ^ keyword.other.phpdoc
 */

/**
 * @link Any: indicates a relation between the associated element and a page of a website.
//  ^ keyword.other.phpdoc
 */

/**
 * @method Class: allows a class to know which ‘magic’ methods are callable.
//  ^ keyword.other.phpdoc
 */

/**
 * @package File, Class: categorizes the associated element into a logical grouping or subdivision.
//  ^ keyword.other.phpdoc
 */

/**
 * @param Method, Function: documents a single argument of a function or method.
//  ^ keyword.other.phpdoc
 */

/**
 * @property Class: allows a class to know which ‘magic’ properties are present.
//  ^ keyword.other.phpdoc
 */

/**
 * @property-read Class: allows a class to know which ‘magic’ properties are present that are read-only.
//  ^^^^^^^^^^^^^ keyword.other.phpdoc
 */

/**
 * @property-write Class: allows a class to know which ‘magic’ properties are present that are write-only.
//  ^^^^^^^^^^^^^^ keyword.other.phpdoc
 */

/**
 * @return Method, Function: documents the return value of functions or methods.
//  ^ keyword.other.phpdoc
 */

/**
 * @see Any: indicates a reference from the associated element to a website or other elements.
//  ^ keyword.other.phpdoc
 */

/**
 * @since Any: indicates at which version the associated element became available.
//  ^ keyword.other.phpdoc
 */

/**
 * @source Any, except File: shows the source code of the associated element.
//  ^ keyword.other.phpdoc
 */

/**
 * @subpackage File, Class: categorizes the associated element into a logical grouping or subdivision.
//  ^ keyword.other.phpdoc
 */

/**
 * @throws Method, Function: indicates whether the associated element could throw a specific type of exception.
//  ^ keyword.other.phpdoc
 */

/**
 * @todo Any: indicates whether any development activity should still be executed on the associated element.
//  ^ keyword.other.phpdoc
 */

/**
 * @uses Any: indicates a reference to (and from) a single associated element.
//  ^ keyword.other.phpdoc
 */

/**
 * @var Properties: class properties.
//  ^ keyword.other.phpdoc
 */

/**
 * @version Any: indicates the current version of Structural Elements.
//  ^ keyword.other.phpdoc
 */

/**
 * @after
//  ^ keyword.other.phpunit
 */

/**
 * @afterClass
//  ^ keyword.other.phpunit
 */

/**
 * @backupGlobals
//  ^ keyword.other.phpunit
 */

/**
 * @backupStaticAttributes
//  ^ keyword.other.phpunit
 */

/**
 * @before
//  ^ keyword.other.phpunit
 */

/**
 * @beforeClass
//  ^ keyword.other.phpunit
 */

/**
 * @codeCoverageIgnore
//  ^ keyword.other.phpunit
 */

/**
 * @covers
//  ^ keyword.other.phpunit
 */

/**
 * @coversDefaultClass
//  ^ keyword.other.phpunit
 */

/**
 * @coversNothing
//  ^ keyword.other.phpunit
 */

/**
 * @dataProvider
//  ^ keyword.other.phpunit
 */

/**
 * @depends
//  ^ keyword.other.phpunit
 */

/**
 * @doesNotPerformAssertions
//  ^ keyword.other.phpunit
 */

/**
 * @expectedException
//  ^ keyword.other.phpunit
 */

/**
 * @expectedExceptionCode
//  ^ keyword.other.phpunit
 */

/**
 * @expectedExceptionMessage
//  ^ keyword.other.phpunit
 */

/**
 * @expectedExceptionMessageRegExp
//  ^ keyword.other.phpunit
 */

/**
 * @group
//  ^ keyword.other.phpunit
 */

/**
 * @large
//  ^ keyword.other.phpunit
 */

/**
 * @medium
//  ^ keyword.other.phpunit
 */

/**
 * @preserveGlobalState
//  ^ keyword.other.phpunit
 */

/**
 * @requires
//  ^ keyword.other.phpunit
 */

/**
 * @runTestsInSeparateProcesses
//  ^ keyword.other.phpunit
 */

/**
 * @runInSeparateProcess
//  ^ keyword.other.phpunit
 */

/**
 * @small
//  ^ keyword.other.phpunit
 */

/**
 * @test
//  ^ keyword.other.phpunit
 */

/**
 * @testdox
//  ^ keyword.other.phpunit
 */

/**
 * @testWith
//  ^ keyword.other.phpunit
 */

/**
 * @ticket
//  ^ keyword.other.phpunit
 */

/**
 * @param @param
// ^^ keyword.other.phpdoc
//        ^^ - keyword.other.phpdoc
 */

/**
 * @param@param
// ^^^^^^^^^^^^ - keyword.other.phpdoc
 */

/**
 *@param
// ^ - keyword.other.phpdoc
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
//         ^^^^^^ storage.type.php
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
//         ^^^^^^ storage.type.php
//                ^ punctuation.separator.type.union.php
//                  ^^^^^ storage.type.php
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
//         ^^^^^^ storage.type.php
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
//                           ^^^^^^ storage.type.php
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
//                                        ^ punctuation.separator.comma.php
//                                          ^^^ entity.other.inherited-class.php
//                                              ^ punctuation.section.block.begin.php
//                                               ^ punctuation.section.block.end.php

    class
//  ^^^^^ meta.class.php keyword.declaration.class.php
//       ^ meta.class.php - keyword

    class Test1
//  ^^^^^^^^^^^^ meta.class.php - meta.block - meta.class meta.class
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php

    class Test1 extends implements {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                 ^^ meta.class.php meta.block.php
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^^^^^^^^^^ storage.modifier.implements.php

    class Test1 extends stdClass implements Countable {}
// ^ - meta.class
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                                    ^^ meta.class.php meta.block.php
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^^^^^^^^ entity.other.inherited-class.php support.class.builtin.php - meta.path
//                               ^^^^^^^^^^ storage.modifier.implements.php
//                                          ^^^^^^^^^ entity.other.inherited-class.php support.class.builtin.php - meta.path

    class Test1 extends Foo, Bar implements Foo, Bar {}
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
//                                             ^ punctuation.separator.comma.php
//                                               ^^^ entity.other.inherited-class.php
//                                                   ^ punctuation.section.block.begin.php
//                                                    ^ punctuation.section.block.end.php

    class Test1 extends \Foo\ implements \Bar\ {}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.class meta.class, - meta.block meta.block
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.php - meta.block
//                                             ^^ meta.class.php meta.block.php
//  ^^^^^ keyword.declaration.class.php
//        ^^^^^ entity.name.class.php
//              ^^^^^^^ storage.modifier.extends.php
//                      ^ punctuation.separator.namespace.php
//                       ^^^ support.other.namespace.php
//                          ^ punctuation.separator.namespace.php
//                            ^^^^^^^^^^ storage.modifier.implements.php
//                                       ^ punctuation.separator.namespace.php
//                                        ^^^ support.other.namespace.php
//                                           ^ punctuation.separator.namespace.php

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
//                            ^ punctuation.separator.namespace.php
//                             ^^^^^^^^^^^ support.other.namespace.php
//                                        ^ punctuation.separator.namespace.php
//                                         ^^^ entity.other.inherited-class.php
//                                             ^^^^^^^^^^ storage.modifier.implements.php
//                                                        ^^^^^^^^^^^^^^^^ meta.path.php
//                                                        ^ punctuation.separator.namespace.php
//                                                         ^^^^^^^^^^^ support.other.namespace.php
//                                                                    ^ punctuation.separator.namespace.php
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
//                         ^ punctuation.separator.namespace.php - entity - support
//                          ^^^^^^^^^^^ support.other.namespace.php
//                                     ^ punctuation.separator.namespace.php - entity - support
//                                      ^^^ entity.other.inherited-class.php
//                                         ^ punctuation.separator.comma.php
//                                           ^^^^ comment.block.php
//                                                ^^^^^^^^^^^^ meta.path.php
//                                                ^ punctuation.separator.namespace.php - entity - support
//                                                 ^^^^^^^^^^^ entity.other.inherited-class.php support.class.builtin.php
}


/**
 * Label Tests
 */
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
//  ^^^^^ storage.type.php - entity.name
    as: ;
//  ^^ keyword.operator.logical.php - entity.name
    break: ;
//  ^^^^^ keyword.control.flow.break.php - entity.name
    callable: ;
//  ^^^^^^^^ storage.type.php  - entity.name
    case: ;
//  ^^^^ keyword.control.conditional.case.php - entity.name
    catch: ;
//  ^^^^^ keyword.control.exception.catch.php - entity.name
    class: ;
//  ^^^^^ keyword.declaration.class.php - entity.name
    clone: ;
//  ^^^^^ keyword.other.clone.php - entity.name
    const: ;
//  ^^^^^ storage.modifier.php - entity.name
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
//  ^^^^^^^ storage.modifier.php - entity.name
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
//  ^^^^^^ storage.modifier.php - entity.name
    goto: ;
//  ^^^^ keyword.control.flow.goto.php - entity.name
    if: ;
//  ^^ keyword.control.conditional.if.php - entity.name
    implements: ;
//  ^^^^^^^^^^ storage.modifier.php - entity.name
    include: ;
//  ^^^^^^^ keyword.control.import.include.php - entity.name
    include_once: ;
//  ^^^^^^^^^^^^ keyword.control.import.include.php - entity.name
    instanceof: ;
//  ^^^^^^^^^^ keyword.other.storage.instanceof.php - entity.name
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
//  ^^^^^^^ storage.modifier.php - entity.name
    protected: ;
//  ^^^^^^^^^ storage.modifier.php - entity.name
    public: ;
//  ^^^^^^ storage.modifier.php - entity.name
    readonly: ;
//  ^^^^^^^^ storage.modifier.php - entity.name
    require: ;
//  ^^^^^^^ keyword.control.import.include.php - entity.name
    require_once: ;
//  ^^^^^^^^^^^^ keyword.control.import.include.php - entity.name
    return: ;
//  ^^^^^^ keyword.control.flow.return.php - entity.name
    static: ;
//  ^^^^^^ storage.modifier.php - entity.name
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
//  ^^^ keyword.other.use.php - entity.name
    var: ;
//  ^^^ storage.modifier.php - entity.name
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


if ($foo instanceof \Mynamespace\ClassName) {
//  ^ variable.other
//       ^^^^^^^^^^ keyword.other.storage.instanceof.php
//                  ^^^^^^^^^^^^^^^^^^^^^^ meta.path.php
//                  ^ punctuation.separator.namespace.php
//                   ^ support.other.namespace.php
//                              ^ punctuation.separator.namespace.php
//                               ^^^^^^^^^ support.class.php
}

$var = new \MyNamespce\ClassName();
// <- variable.other
//     ^ keyword.other
//         ^^^^^^^^^^^^^^^^^^^^^ meta.path
//         ^ punctuation.separator.namespace
//          ^ support.other.namespace
//                    ^ punctuation.separator.namespace
//                     ^ support.class

\MyNamespace\Foo::BAR;
// <- punctuation.separator.namespace
 // <- support.other.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.separator.namespace
//           ^ support.class
//              ^^ punctuation.accessor
//                ^^^ constant.other

\MyNamespace\Foo::bar();
// <- punctuation.separator.namespace
 // <- support.other.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.separator.namespace
//           ^^^ support.class
//              ^^ punctuation.accessor
//                ^^^^^ meta.function-call
//                ^^^ variable.function
//                   ^^ meta.group
//                   ^ punctuation.section.group.begin
//                    ^ punctuation.section.group.end

\MyNamespace\Foo ();
//^^^^^^^^^^^^^^ meta.function-call.identifier.php meta.path.php - meta.function-call meta.function-call
//              ^ meta.function-call.identifier.php - meta.path.php - meta.function-call meta.function-call
//               ^^ meta.function-call.arguments.php - meta.function-call meta.function-call
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace
//           ^^^ variable.function
//               ^^ meta.group
//               ^ punctuation.section.group.begin
//                ^ punctuation.section.group.end

\MyNamespace\Foo;
// <- punctuation.separator.namespace
 // <- support.other.namespace
//^^^^^^^^^^^^^^ meta.path
//          ^ punctuation.separator.namespace
//           ^ constant.other

func_call(true, 1, "string");
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                          ^ - meta.function-call
//^^^^^^^ variable.function
//       ^^^^^^^^^^^^^^^^^^^ meta.group
//                          ^ - meta.group
//       ^ punctuation.section.group.begin
//                         ^ punctuation.section.group.end
//        ^^^^ constant.language
//            ^ punctuation.separator.comma
//              ^ meta.number.integer.decimal constant.numeric.value
//               ^ punctuation.separator.comma
//                 ^^^^^^^^ string.quoted.double

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

strval($foo);
//^^^^^^^^^^ meta.function-call
//^^^^ support.function.var - variable.function
//    ^^^^^^ meta.group

array_slice($array, $offset, $length, preserve_keys: true);
//                                    ^^^^^^^^^^^^^ variable.parameter.named
//                                                 ^ keyword.operator.assignment.php
//                                                   ^^^^ constant.language

$test = new Test1;
//      ^^^^^^^^^ meta.instantiation.php
//      ^ keyword.other.new.php
//          ^^^^^ support.class.php - meta.path
//          ^ support.class.php

$anon = new class{};
//      ^^^^^^^^^^^ - meta.class meta.class
//      ^^^^ meta.instantiation.php - meta.class
//          ^^^^^ meta.instantiation.php meta.class.php - meta.block
//               ^^ meta.instantiation.php meta.class.php meta.block.php
//                 ^ - meta.instantiation - meta.class - meta.block
//      ^ keyword.other.new.php
//          ^ keyword.declaration.class
//               ^^ meta.class.php
//               ^^ meta.block.php
//               ^ punctuation.section.block.begin.php
//                ^ punctuation.section.block.end.php

$anon = new class};
//      ^^^^^^^^^^ - meta.class meta.class
//      ^^^^ meta.instantiation.php - meta.class
//          ^^^^^ meta.instantiation.php meta.class.php - meta.block
//               ^ - meta.instantiation - meta.class - meta.block
//      ^ keyword.other.new.php
//          ^ keyword.declaration.class
//               ^ punctuation.section.block.end.php

$anon = new class($param1, $param2) extends Test1 implements Countable {};
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.class.php - meta.class meta.class
//      ^ keyword.other.new.php
//          ^ keyword.declaration.class
//               ^^^^^^^^^^^^^^^^^^ meta.group.php
//               ^ punctuation.section.group.begin.php
//                ^ variable.other.php
//                       ^ punctuation.separator.comma
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
//                        ^^^^^^^ meta.attribute.php
//                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.class.php - meta.class meta.class
//                                ^^^^^ keyword.declaration.class
//                                     ^^^^^^^^^^^^^^^^^^ meta.group.php
//                                     ^ punctuation.section.group.begin.php
//                                      ^ variable.other.php
//                                             ^ punctuation.separator.comma
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
//                       ^ punctuation.separator.comma
//                         ^^^^^^^^^ meta.string.php string.quoted.double.php
//                                  ^ punctuation.section.group.end.php
//                                   ^ punctuation.terminator.statement.php

$user_1 = new /* comment */ #[anno] User("John", "a@b.com");
//        ^^^^^^^^^^^^^^^^^^ meta.instantiation.php - meta.attribute
//                          ^^^^^^^ meta.instantiation.php meta.attribute.php
//                                 ^^^^^  meta.instantiation.php - meta.attribute - meta.group
//                                      ^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.group.php
//                                                         ^ - meta.instantiation - meta.group
//        ^^^ keyword.other.new.php
//            ^^^^^^^^^^^^^ comment.block.php
//                          ^^^^^^^ meta.attribute.php
//                                  ^^^^ support.class.php
//                                      ^ punctuation.section.group.begin.php
//                                       ^^^^^^ meta.string.php string.quoted.double.php
//                                             ^ punctuation.separator.comma
//                                               ^^^^^^^^^ meta.string.php string.quoted.double.php
//                                                        ^ punctuation.section.group.end.php
//                                                         ^ punctuation.terminator.statement.php

$user_1 = new /* comment */ #[anno] $cls("John", "a@b.com");
//        ^^^^^^^^^^^^^^^^^^ meta.instantiation.php - meta.attribute
//                          ^^^^^^^ meta.instantiation.php meta.attribute.php
//                                 ^^^^^  meta.instantiation.php - meta.attribute - meta.group
//                                      ^^^^^^^^^^^^^^^^^^^ meta.instantiation.php meta.group.php
//                                                         ^ - meta.instantiation - meta.group
//        ^^^ keyword.other.new.php
//            ^^^^^^^^^^^^^ comment.block.php
//                          ^^^^^^^ meta.attribute.php
//                                  ^^^^ variable.other.php
//                                      ^ punctuation.section.group.begin.php
//                                       ^^^^^^ meta.string.php string.quoted.double.php
//                                             ^ punctuation.separator.comma
//                                               ^^^^^^^^^ meta.string.php string.quoted.double.php
//                                                        ^ punctuation.section.group.end.php
//                                                         ^ punctuation.terminator.statement.php

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
//                                      ^ storage.type.php

    function classReturnType($param1): stringSpace\Test1 {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                          ^ punctuation.section.group.begin.php
//                                  ^ punctuation.section.group.end.php
//                                     ^^^^^^^^^^^^^^^^^ meta.path
//                                     ^ support.other.namespace.php
//                                                 ^ support.class.php

    function nullableReturnType(?int $param1): ?bool {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                             ^ punctuation.section.group.begin.php
//                              ^ storage.type.nullable.php
//                               ^ meta.function.parameters
//                                          ^ punctuation.section.group.end.php
//                                             ^ storage.type.nullable.php
//                                              ^ storage.type.php

    function nullableObjectReturnType(?int $param1): ?object {}
//  ^ keyword.declaration.function
//           ^ entity.name.function.php
//                                   ^ punctuation.section.group.begin.php
//                                    ^ storage.type.nullable.php
//                                     ^ meta.function.parameters
//                                                ^ punctuation.section.group.end.php
//                                                   ^ storage.type.nullable.php
//                                                    ^ storage.type.php

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
//            ^ punctuation.separator.namespace
//             ^^^ support.other.namespace
//                ^ punctuation.separator.namespace
//                 ^^^ support.class
//                     ^ punctuation.separator.type
//                       ^ storage.type.nullable
//                        ^^^ storage.type
//                            ^ punctuation.definition.variable
//                             ^^^^^^ variable.parameter
        Foo|\Foo\Bar|?int $param2,
//      ^^^ support.class
//         ^ punctuation.separator.type
//          ^ punctuation.separator.namespace
//           ^^^ support.other.namespace
//              ^ punctuation.separator.namespace
//               ^^^ support.class
//                  ^ punctuation.separator.type
//                   ^ storage.type.nullable
//                    ^^^ storage.type
//                        ^ punctuation.definition.variable
//                         ^^^^^^ variable.parameter
        string $param3,
//      ^^^^^^ storage.type
//             ^ punctuation.definition.variable
//              ^^^^^^ variable.parameter
        $param4
//      ^ punctuation.definition.variable
//       ^^^^^^ variable.parameter
    ): Foo|\Foo\Bar|?int|static {}
//     ^^^ support.class
//        ^ punctuation.separator.type
//         ^ punctuation.separator.namespace
//          ^^^ support.other.namespace
//             ^ punctuation.separator.namespace
//              ^^^ support.class
//                 ^ punctuation.separator.type
//                  ^ storage.type.nullable
//                   ^^^ storage.type
//                      ^ punctuation.separator.type
//                       ^^^^^^ variable.language.static.php

$test = "\0 \12 \345g \x0f \u{a} \u{9999} \u{999}";
//       ^^ constant.character.escape.octal.php
//          ^^^ constant.character.escape.octal.php
//              ^^^^ constant.character.escape.octal.php
//                  ^ - constant.character.escape
//                    ^^^^ constant.character.escape.hex.php
//                         ^^^^^ constant.character.escape.unicodepoint.php
//                               ^^^^^^^^ constant.character.escape.unicodepoint.php
//

"$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}"
 // <- variable.other punctuation.definition.variable
//^ variable.other
//       ^^ variable.other
//       ^ punctuation.definition.variable
//         ^^ punctuation.accessor
//           ^ variable.other.member
//                ^^^^ variable.other
//                ^^ punctuation.definition.variable
//                   ^ punctuation.definition.variable
//                          ^ punctuation.definition.expression
//                           ^^ variable.other
//                           ^ punctuation.definition.variable
//                             ^ punctuation.definition.expression
//                                    ^^ variable.other
//                                    ^ punctuation.definition.variable
//                                      ^ punctuation.section.brackets.begin
//                                       ^ meta.number.integer.decimal constant.numeric.value
//                                        ^ punctuation.section.brackets.end
//                                                      ^^ variable.other
//                                                      ^ punctuation.definition.variable
//                                                        ^ punctuation.section.brackets.begin
//                                                         ^^ variable.other
//                                                         ^ punctuation.definition.variable
//                                                           ^ punctuation.section.brackets.end
//                                                                ^^ variable.other
//                                                                ^ punctuation.definition.variable
//                                                                  ^ punctuation.section.brackets.begin
//                                                                   ^ constant.other
//                                                                    ^ punctuation.section.brackets.end
//                                                                                  ^ punctuation.definition.expression
//                                                                                   ^^ variable.other
//                                                                                   ^ punctuation.definition.variable
//                                                                                      ^ keyword.operator
//                                                                                        ^^ variable.other
//                                                                                        ^ punctuation.definition.variable
//                                                                                          ^^ punctuation.accessor
//                                                                                            ^ variable.other.member
//                                                                                              ^ keyword.operator
//                                                                                                ^ constant.other

`$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}`
 // <- variable.other punctuation.definition.variable
//^ variable.other
//       ^^ variable.other
//       ^ punctuation.definition.variable
//         ^^ punctuation.accessor
//           ^ variable.other.member
//                ^^^^ variable.other
//                ^^ punctuation.definition.variable
//                   ^ punctuation.definition.variable
//                          ^ punctuation.definition.expression
//                           ^^ variable.other
//                           ^ punctuation.definition.variable
//                             ^ punctuation.definition.expression
//                                    ^^ variable.other
//                                    ^ punctuation.definition.variable
//                                      ^ punctuation.section.brackets.begin
//                                       ^ constant.numeric
//                                        ^ punctuation.section.brackets.end
//                                                      ^^ variable.other
//                                                      ^ punctuation.definition.variable
//                                                        ^ punctuation.section.brackets.begin
//                                                         ^^ variable.other
//                                                         ^ punctuation.definition.variable
//                                                           ^ punctuation.section.brackets.end
//                                                                ^^ variable.other
//                                                                ^ punctuation.definition.variable
//                                                                  ^ punctuation.section.brackets.begin
//                                                                   ^ constant.other
//                                                                    ^ punctuation.section.brackets.end
//                                                                                  ^ punctuation.definition.expression
//                                                                                   ^^ variable.other
//                                                                                   ^ punctuation.definition.variable
//                                                                                      ^ keyword.operator
//                                                                                        ^^ variable.other
//                                                                                        ^ punctuation.definition.variable
//                                                                                          ^^ punctuation.accessor
//                                                                                            ^ variable.other.member
//                                                                                              ^ keyword.operator
//                                                                                                ^ constant.other

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
    public static ?Foo $str = '';
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait.php meta.block.php
//  ^^^^^^ storage.modifier.php
//         ^^^^^^ storage.modifier.php
//                ^ storage.type.nullable.php
//                 ^^^ support.class.php
//                     ^ variable.other.php punctuation.definition.variable.php
//                      ^^^ variable.other.php - punctuation
//                          ^ keyword.operator.assignment.php
//                            ^^ string.quoted.single.php
}

class B
// ^ keyword.declaration.class
//    ^ entity.name.class
{
    use MyNamespace\Xyz,
//  ^^^^ meta.class.php meta.block.php meta.use.php - meta.path
//      ^^^^^^^^^^^^^^^ meta.class.php meta.block.php meta.use.php meta.path.php
//                     ^^ meta.class.php meta.block.php meta.use.php - meta.path
//      ^^^^^^^^^^^ support.other.namespace.php
//                 ^ punctuation.separator.namespace.php
//                  ^^^ entity.other.inherited-class.php
//                     ^ punctuation.separator.comma.php
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
//                 ^^ keyword.other.use-as.php
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
//                 ^^ keyword.other.use-as
//                    ^^^^^^^^ entity.name.function.php
//                            ^ punctuation.terminator.statement.php
        \Foo\Bar\X::method as another3;
//      ^^^^^^^^^^ meta.use.php meta.block.php meta.path.php
//                ^^^^^^^^^^^^^^^^^^^^ meta.use.php meta.block.php - meta.path
//      ^ punctuation.separator.namespace.php
//       ^^^ support.other.namespace.php
//          ^ punctuation.separator.namespace.php
//           ^^^ support.other.namespace.php
//              ^ punctuation.separator.namespace.php
//               ^ support.class.php
//                ^^ punctuation.accessor.double-colon.php
//                  ^^^^^^ variable.function.php
//                         ^^ keyword.other.use-as.php
//                            ^^^^^^^^ entity.name.function.php
//                                    ^ punctuation.terminator.statement.php
    } protected $pro1;
//  ^ meta.class.php meta.block.php meta.use.php meta.block.php punctuation.section.block.end.php
//   ^^^^^^^^^^^^^^^^^^ meta.class.php meta.block.php - meta.use
//    ^ storage.modifier

    public static ?Foo|\My\Bar|int $str = '';
//  ^^^^^^ storage.modifier
//         ^^^^^^ storage.modifier
//                ^ storage.type.nullable
//                 ^^^ support.class
//                    ^ punctuation.separator.type
//                     ^ punctuation.separator.namespace
//                      ^^ support.other.namespace
//                        ^ punctuation.separator.namespace
//                         ^^^ support.class
//                            ^ punctuation.separator.type
//                             ^^^ storage.type
//                                 ^ punctuation.definition.variable
//                                  ^^^ variable.other
//                                      ^ keyword.operator.assignment

    public const STR_1 = '';
//  ^^^^^^ storage.modifier
//         ^^^^^ storage.modifier
//               ^^^^^ entity.name.constant.php
//                     ^ keyword.operator.assignment

    const STR_2 = '';
//  ^^^^^ storage.modifier
//        ^^^^^ entity.name.constant.php
//              ^ keyword.operator.assignment

    CONST #[attr] /**/ STR_3 = array();
//  ^^^^^ storage.modifier
//        ^^^^^^^ meta.attribute.php
//                ^^^^ comment.block.php
//                     ^^^^^ entity.name.constant.php
//                           ^ keyword.operator.assignment
//                             ^^^^^ support.function.array.php

    public function abc(
//         ^ keyword.declaration.function
//                  ^ entity.name.function.php
        Foo|\Foo\Bar|?int $param1,
//      ^^^ support.class
//         ^ punctuation.separator.type
//          ^ punctuation.separator.namespace
//           ^^^ support.other.namespace
//              ^ punctuation.separator.namespace
//               ^^^ support.class
//                  ^ punctuation.separator.type
//                   ^ storage.type.nullable
//                    ^^^ storage.type
//                        ^ punctuation.definition.variable
//                         ^^^^^^ variable.parameter
        Foo|\Foo\Bar|?int $param2,
//      ^^^ support.class
//         ^ punctuation.separator.type
//          ^ punctuation.separator.namespace
//           ^^^ support.other.namespace
//              ^ punctuation.separator.namespace
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
//     ^^^ support.class
//        ^ punctuation.separator.type
//         ^ punctuation.separator.namespace
//          ^^^ support.other.namespace
//             ^ punctuation.separator.namespace
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
//              ^^^^^ constant.class

        echo $this->pro1::FOO;
//      ^^^^ support.function.builtin.php
//           ^^^^^ variable.language.this.php
//                ^^ punctuation.accessor
//                  ^^^^ variable.other.member
//                      ^^ punctuation.accessor
//                        ^^^ constant.other

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
//            ^^ punctuation.accessor

        self
//      ^^^^ variable.language.this.php
        self::abc($var, $var2, $var3);
//      ^^^^ variable.language.this.php
//          ^^ punctuation.accessor

        static
//      ^^^^^^ storage.modifier.php
        static::abc($var, $var2, $var3);
//      ^^^^^^ variable.language.static.php
//            ^^ punctuation.accessor

        $this->undo();
//      ^^^^^ variable.language.this.php
//      ^ punctuation.definition.variable

        $var2 = 'test';
//      ^^^^^ variable.other
//      ^ punctuation.definition.variable

        foreach (A::B() as $c => $d) {}
        //        ^^ punctuation.accessor
        //          ^ variable.function
        //              ^^ keyword.operator.logical.php
        //                    ^^ keyword.operator.key.php

        return new self();
//                 ^^^^ variable.language.this.php
    }
}


try {
// <- keyword.control.exception
    echo inverse(5) . "\n";
    throw new \Exception('Error!');
//  ^^^^^ keyword.control.flow.throw.php
//            ^^^^^^^^^^ meta.path.php
//            ^ punctuation.separator.namespace.php - support.class
//             ^^^^^^^^^ support.class.builtin.php
    throw new \Custom\Exception('Error!');
//  ^^^^^ keyword.control.flow.throw.php
//            ^^^^^^^^^^^^^^^^^ meta.path.php
//            ^ punctuation.separator.namespace.php
//             ^^^^^^ support.other.namespace.php
//                   ^ punctuation.separator.namespace.php
//                    ^^^^^^^^^ support.class.builtin.php
} catch (/* comment */ ExceptionExample $e) {
// <- punctuation.section.block.end.php
//^^^^^^ meta.catch.php
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php - meta.path
//^^^^^ keyword.control.exception.catch.php
//      ^ punctuation.section.group.begin.php
//       ^^^^^^^^^^^^^ comment.block.php
//                     ^^^^^^^^^^^^^^^^ support.class.php
//                                      ^^ variable.other.php
//                                        ^ punctuation.section.group.end.php
//                                          ^ punctuation.section.block.begin.php
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
//       ^ punctuation.separator.namespace.php
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
//       ^ punctuation.separator.namespace.php
//        ^^^^^^ support.other.namespace.php
//              ^ punctuation.separator.namespace.php
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
//       ^ punctuation.separator.namespace.php
//        ^^^^^^ support.other.namespace.php
//              ^ punctuation.separator.namespace.php
//               ^^^^^^^^^^ support.class.php
//                          ^ punctuation.separator.type.union.php
//                            ^ punctuation.separator.namespace.php
//                             ^^^^^^ support.other.namespace.php
//                                   ^ punctuation.separator.namespace.php
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
//  ^ punctuation.separator.namespace.php
//   ^^^^^^ support.other.namespace.php
//         ^ punctuation.separator.namespace.php
//          ^^^^^^^^^^ support.class.php
//                     ^ punctuation.separator.type.union.php
    \Custom\Exception2 $e
// ^ meta.catch.arguments.php meta.group.php - meta.path
//  ^^^^^^^^^^^^^^^^^^ meta.catch.arguments.php meta.group.php meta.path.php
//                    ^^^^ meta.catch.arguments.php meta.group.php - meta.path
//  ^ punctuation.separator.namespace.php
//   ^^^^^^ support.other.namespace.php
//         ^ punctuation.separator.namespace.php
//          ^^^^^^^^^^ support.class.php
//                     ^^ variable.other.php
) {
// <- meta.catch.arguments.php meta.group.php punctuation.section.group.end.php
    echo 'Caught exception: ', $e->getMessage(), "\n";
} finally {
//^ keyword.control.exception
    echo "First finally.\n";
}

function generate()
{
    yield 1;
//  ^ keyword.control
}

function generate2()
{
    yield from generate();
//  ^ keyword.control
//        ^ keyword.control
}

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

// class name should be case-insensitive
$object = new ArRaYoBjEcT();
//            ^^^^^^^^^^^ support.class.builtin

// constant name should be case-sensitive
$const = E_aLL;
//       ^^^^^ - support.constant.core - meta.path.php

// function name should be case-sensitive
$random = ArRaY_RaNd($array);
//        ^^^^^^^^^^ support.function.array

// test for constants for each group in the syntax definition
$const = \PHP_VERSION_ID;
//       ^ meta.path.php punctuation.separator.namespace.php
//        ^^^^^^^^^^^^^^ meta.path.php support.constant.core.php - punctuation
$const = E_ALL;
//       ^^^^^ support.constant.core.php - punctuation
$const = CASE_LOWER;
//       ^^^^^^^^^^ support.constant.std - meta.path.php
$const = CURLAUTH_BASIC;
//       ^^^^^^^^^^^^^^ support.constant.ext - meta.path.php
$const = T_ABSTRACT;
//       ^^^^^^^^^^ support.constant.parser-token - meta.path.php

  foo_bar:
//^^^^^^^ entity.name.label.php - keyword.control.php

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
//                          ^^^^ constant.language.boolean.php
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
//                         ^^^^ constant.language.boolean.php
//                             ^ punctuation.section.group.end.php
//                               ^ punctuation.section.block.begin.php
}
// <- punctuation.section.block.end.php

$
# <- punctuation.definition.variable

$a += .5;
// ^^ keyword.operator.assignment.augmented.php
//    ^^ constant.numeric

$a .= 1;
// ^^ keyword.operator.assignment.augmented.php

$a ??= 1;
// ^^^ keyword.operator.assignment.augmented.php

$a = $b ?? 1;
//      ^^ keyword.operator.null-coalescing.php

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

$statement = match ($this->lexer->lookahead['type']) {
//           ^^^^^ keyword.control.conditional.match.php
    Lexer::T_UPDATE => $this->UpdateStatement(),
//  ^^^^^ support.class
//       ^^ punctuation.accessor.double-colon
//         ^^^^^^^^ constant.other
//                  ^^ keyword.operator.key
//                     ^^^^^ variable.language
//                          ^^ punctuation.accessor.arrow
//                            ^^^^^^^^^^^^^^^ variable.function
//                                           ^^ meta.group
    Lexer::T_DELETE => $this->DeleteStatement(),
//                  ^^ keyword.operator.key
    default => $this->syntaxError('UPDATE or DELETE'),
//  ^^^^^^^ keyword.control.conditional.default.php
//          ^^ keyword.operator.key
//                               ^^^^^^^^^^^^^^^^^^^^ meta.group.php
//                               ^ punctuation.section.group.begin.php
//                                ^^^^^^^^^^^^^^^^^^ meta.string.php
//                                                  ^ punctuation.section.group.end.php
};


/**
 * Type Cast Tests
 */
function testTypeCasts()
{
$foo = (array) $bar;
//     ^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^ storage.type.php
//           ^ punctuation.section.cast.end.php
        array
//      ^^^^^ storage.type.php

$foo = (binary) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.php
//            ^ punctuation.section.cast.end.php
        binary
//      ^^^^^^ constant.other.php

$foo = (bool) $bar;
//     ^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^ storage.type.php
//          ^ punctuation.section.cast.end.php
        bool
//      ^^^^ storage.type.php

$foo = (boolean) $bar;
//     ^^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^^ storage.type.php
//             ^ punctuation.section.cast.end.php
        boolean
//      ^^^^^^^ storage.type.php

$foo = (double) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.php
//            ^ punctuation.section.cast.end.php
        double
//      ^^^^^^ storage.type.php

$foo = (float) $bar;
//     ^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^ storage.type.php
//           ^ punctuation.section.cast.end.php
        float
//      ^^^^^ storage.type.php

$foo = (int) $bar;
//     ^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^ storage.type.php
//         ^ punctuation.section.cast.end.php
        int
//      ^^^ storage.type.php

$foo = (integer) $bar;
//     ^^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^^ storage.type.php
//             ^ punctuation.section.cast.end.php
        integer
//      ^^^^^^^ storage.type.php

$foo = (object) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.php
//            ^ punctuation.section.cast.end.php
        object
//      ^^^^^^ storage.type.php

$foo = (real) $bar;
//     ^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^ storage.type.php
//          ^ punctuation.section.cast.end.php
        real
//      ^^^^ storage.type.php

$foo = (string) $bar;
//     ^^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^^ storage.type.php
//            ^ punctuation.section.cast.end.php
        string
//      ^^^^^^ storage.type.php

$foo = (unset) $bar;
//     ^^^^^^^ meta.cast.php
//     ^ punctuation.section.cast.begin.php
//      ^^^^^ storage.type.php
//           ^ punctuation.section.cast.end.php
        unset
//      ^^^^^ support.function.builtin.php
}


/**
 * SQL String Tests
 */

$non_sql = "NO SELECT HIGHLIGHTING!";
//         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation - string string
//         ^ punctuation.definition.string.begin
//             ^ - source.sql
//                                 ^ punctuation.definition.string.end

$sql = "CREATE TABLE version";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.double.php
//                          ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string
//      ^^^^^^ keyword.other.create.sql

$sql = "
    CREATE TABLE `version`...
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.double.php
//  ^^^^^^ keyword.other.create.sql
";

// Do not highlight plain SQL indicator as SQL
$sql = "SELECT";
//      ^^^^^^ - keyword.other.DML

$sql = "
    SELECT
//  ^^^^^^ keyword.other.DML
    *
    FROM users
    WHERE first_name = 'Eric'
";

$sql = "SELECT * FROM users WHERE first_name = 'Eric'";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.double.php
//      ^ keyword.other.DML
//                                             ^^^^^^ string.quoted.single.sql
//                                                   ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string

// Ensure we properly exist from SQL when hitting PHP end-of-string
$sql = "SELECT * FROM users WHERE first_name = 'Eric";
//     ^ meta.string.php string.quoted.double.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.double.php
//      ^ keyword.other.DML
//                                             ^^^^^ string.quoted.single.sql
//                                                  ^ meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = "
    SELECT * FROM users WHERE first_name = 'Eric'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.double.php
//  ^ keyword.other.DML
//                                         ^^^^^^ string.quoted.single.sql
";
// <- meta.string.php string.quoted.double.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = "SELECT " . $col . "FROM $table WHERE ( first_name =" . $name . ")" ; . "GROUP BY" ;
//     ^ meta.string.php - meta.interpolation
//      ^^^^^^^ meta.string.php meta.interpolation.php source.sql.embedded.php
//             ^ meta.string.php - meta.interpolation
//              ^^^^^^^^^^ - meta.string
//                        ^ meta.string.php - meta.interpolation
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql.embedded.php
//                                                         ^ meta.string.php - meta.interpolation
//                                                          ^^^^^^^^^^^ - meta.string
//                                                                     ^ meta.string.php - meta.interpolation
//                                                                      ^ meta.string.php meta.interpolation.php source.sql.embedded.php
//                                                                       ^ meta.string.php - meta.interpolation
//                                                                        ^^^^^ - meta.string
//                                                                             ^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//     ^ string.quoted.double.php punctuation.definition.string.begin.php
//      ^^^^^^ keyword.other.DML.sql
//             ^ string.quoted.double.php punctuation.definition.string.end.php
//               ^ keyword.operator.string.php
//                 ^^^^ variable.other.php
//                      ^ keyword.operator.string.php
//                        ^ string.quoted.double.php punctuation.definition.string.begin.php
//                              ^^^^^^ variable.other.php
//                                                         ^ string.quoted.double.php punctuation.definition.string.end.php
//                                                           ^ keyword.operator.string.php
//                                                             ^^^^^ variable.other.php
//                                                                   ^ keyword.operator.string.php
//                                                                     ^ string.quoted.double.php punctuation.definition.string.begin.php
//                                                                       ^ string.quoted.double.php punctuation.definition.string.end.php
//                                                                         ^ punctuation.terminator.statement.php
//                                                                           ^ keyword.operator.string.php
//                                                                                        ^ punctuation.terminator.statement.php

$non_sql = 'NO SELECT HIGHLIGHTING!';
//         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.single.php - meta.interpolation - string string
//         ^ punctuation.definition.string.begin
//             ^ - source.sql
//                                 ^ punctuation.definition.string.end

$sql = 'SELECT * FROM users WHERE first_name = \'Eric\'';
//     ^ meta.string.php string.quoted.single.php punctuation.definition.string.begin.php - meta.interpolation - string string
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.single.php
//      ^ keyword.other.DML
//                                             ^^^^^^^^ meta.string.sql string.quoted.single.sql
//                                             ^^ constant.character.escape.php
//                                                   ^^ constant.character.escape.php
//                                                     ^ meta.string.php string.quoted.single.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = '
    SELECT * FROM users WHERE first_name = \'Eric\'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql - string.quoted.single.php
//  ^ keyword.other.DML
//                                         ^^ constant.character.escape.php
';
// <- meta.string.php string.quoted.single.php punctuation.definition.string.end.php - meta.interpolation - string string

$sql = 'SELECT ' . $col . 'FROM table WHERE ( first_name =' . $name . ')' ; . 'GROUP BY' ;
//     ^ meta.string.php - meta.interpolation
//      ^^^^^^^ meta.string.php meta.interpolation.php source.sql.embedded.php
//             ^ meta.string.php - meta.interpolation
//              ^^^^^^^^^^ - meta.string
//                        ^ meta.string.php - meta.interpolation
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php meta.interpolation.php source.sql.embedded.php
//                                                        ^ meta.string.php - meta.interpolation
//                                                         ^^^^^^^^^^^ - meta.string
//                                                                    ^ meta.string.php - meta.interpolation
//                                                                     ^ meta.string.php meta.interpolation.php source.sql.embedded.php
//                                                                      ^ meta.string.php - meta.interpolation
//                                                                       ^^^^^ - meta.string
//                                                                            ^^^^^^^^^^ meta.string.php string.quoted.single.php - meta.interpolation
//     ^ string.quoted.single.php punctuation.definition.string.begin.php
//      ^^^^^^ keyword.other.DML.sql
//             ^ string.quoted.single.php punctuation.definition.string.end.php
//               ^ keyword.operator.string.php
//                 ^^^^ variable.other.php
//                      ^ keyword.operator.string.php
//                        ^ string.quoted.single.php punctuation.definition.string.begin.php
//                                                        ^ string.quoted.single.php punctuation.definition.string.end.php
//                                                          ^ keyword.operator.string.php
//                                                            ^^^^^ variable.other.php
//                                                                  ^ keyword.operator.string.php
//                                                                    ^ string.quoted.single.php punctuation.definition.string.begin.php
//                                                                      ^ string.quoted.single.php punctuation.definition.string.end.php
//                                                                        ^ punctuation.terminator.statement.php
//                                                                          ^ keyword.operator.string.php
//                                                                                       ^ punctuation.terminator.statement.php

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

preg_replace("/[a-zSOME_CHAR]*+\'\n  $vairble  \1  \\1/m");
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//                                   ^^^^^^^^ meta.string.php meta.interpolation.php - string
//                                           ^^^^^^^^^^^^ meta.string.php string.quoted.double.php - meta.interpolation
//            ^ punctuation.definition.string.regex-delimiter.begin
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp
//             ^ punctuation.definition.character-class.begin.regexp
//              ^^^ constant.other.character-class.range.regexp
//                 ^^^^^^^^^ constant.other.character-class.set.regexp
//                          ^ punctuation.definition.character-class.end.regexp
//                           ^^ keyword.operator.quantifier
//                             ^^^^ constant.character.escape
//                                   ^ punctuation.definition.variable
//                                             ^^ constant.character.escape
//                                                 ^^ constant.character.escape
//                                                    ^ punctuation.definition.string.regex-delimiter.end
//                                                     ^ meta.regex.modifier
//                                                      ^ string.quoted.double

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
    a{,6}
//   ^^^^ keyword.operator.quantifier.regexp
    b{3,} # this is comment
//   ^^^^ keyword.operator.quantifier.regexp
//        ^^^^^^^^^^^^^^^^^ comment.regexp
    c{3,6}
//   ^^^^^ keyword.operator.quantifier.regexp
/ux';

$regex = '/foo?/ux';
//            ^ keyword.operator.quantifier.regexp

$not_regex = 'foo?';
//               ^ string - source.regexp

$not_regex = '/foo?';
//                ^ string - source.regexp

// there is no "T" regex modifier
$not_regex = '/foo?/uTx';
//                ^ string - source.regexp

echo <<<EOT
//   ^^^ keyword.operator.heredoc
//      ^^^ meta.string.heredoc meta.tag.heredoc - meta.string meta.string
//      ^^^ entity.name.tag.heredoc
This is a test! $var
//^^^^^^^^^^^^^^^^^^^ - meta.string meta.string
//^^^^^^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc - meta.interpolation
//              ^^^^ meta.string.heredoc.php meta.interpolation.php variable.other.php - string
//                  ^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
EOT;
// <- entity.name.tag.heredoc

// PHP 7.3: Flexible Heredoc and Nowdoc Syntaxes
// see https://wiki.php.net/rfc/flexible_heredoc_nowdoc_syntaxes
echo <<<EOT
//   ^^^ keyword.operator.heredoc
//      ^^^ meta.string.heredoc meta.tag.heredoc - meta.string meta.string
//      ^^^ entity.name.tag.heredoc
    This is a test! $var
// ^^^^^^^^^^^^^^^^^ - meta.string meta.string
//  ^^^^^^^^^^^^^^^^ meta.string.heredoc.php string.unquoted.heredoc - meta.interpolation
//                  ^^^^ meta.string.heredoc.php meta.interpolation.php variable.other.php - string
//                      ^ meta.string.heredoc.php string.unquoted.heredoc.php - meta.interpolation
    $var2
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
// <- keyword.other.DML
//     ^ variable.language.wildcard.asterisk
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
// <- keyword.other.DML
//     ^ variable.language.wildcard.asterisk
//                                     ^^^^^^ string.quoted.single
//                                           ^^ - constant.character.escape.php
SQL;
// <- entity.name.tag.heredoc
// ^ punctuation.terminator.statement
//  ^ meta.heredoc-end



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

class D {
    private readonly $prop;
//          ^^^^^^^^ storage.modifier

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
}

class E {
    public function __construct(
        public readonly int $val = 1
//      ^^^^^^ storage.modifier
//             ^^^^^^^^ storage.modifier
    ) {}
}

var_dump(new C(42));
//           ^ support.class - meta.path

// test for https://github.com/sublimehq/Packages/issues/3134
$array = array_reduce(
    $items,
    function ($array, $item) {
        return $array;
    },
    $initial
);
// <- punctuation.section.group.end

?>

<div><?php include 'image.svg' ?></div>
//                             ^^ punctuation.section.embedded.end.php

// don't break php termination highlighting after incomplete item-access expression
<?php  { ?> <div> <? $var[9 + ?> </div>
//^^^^^^^^^ meta.embedded.php
//         ^^^^^^^ - meta.embedded
//                ^^^^^^^^^^^^^^ meta.embedded.php
//                              ^^^^^^^^ - meta.embedded
//     ^ punctuation.section.block.begin.php
//       ^^ punctuation.section.embedded.end.php
//          ^^^^^ meta.tag
//                ^^ punctuation.section.embedded.begin.php
//                   ^^^^ variable.other.php
//                       ^^^^^ meta.item-access
//                            ^^ punctuation.section.embedded.end.php
//                               ^^^^^^ meta.tag

// don't break block termination highlighting after incomplete item-access expression
<?php  { ?> <div> <? $var[9 + } ?> </div>
//^^^^^^^^^ meta.embedded.php
//         ^^^^^^^ - meta.embedded
//                ^^^^^^^^^^^^^^^^ meta.embedded.php
//                                ^^^^^^^^ - meta.embedded
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
<?php  { ?> <div> <? $var[9 + ; ?> </div>
//^^^^^^^^^ meta.embedded.php
//         ^^^^^^^ - meta.embedded
//                ^^^^^^^^^^^^^^^^ meta.embedded.php
//                                ^^^^^^^^ - meta.embedded
//     ^ punctuation.section.block.begin.php
//       ^^ punctuation.section.embedded.end.php
//          ^^^^^ meta.tag
//                ^^ punctuation.section.embedded.begin.php
//                   ^^^^ variable.other.php
//                       ^^^^^ meta.item-access
//                            ^ punctuation.terminator.statement.php
//                              ^^ punctuation.section.embedded.end.php
//                                 ^^^^^^ meta.tag

// don't break highlighting after incomplete catch parameter list
<?php try { ?> <div> <? } catch(  ?> </div>
//^^^^^^^^^^^^ meta.embedded.php
//            ^^^^^^^ - meta.embedded
//                   ^^^^^^^^^^^^^^^ meta.embedded.php
//                                  ^^^^^^^^ - meta.embedded
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
    var foo = 4;
//  ^ keyword.declaration
//      ^^^ variable.other.readwrite
//          ^ keyword.operator
//            ^ constant.numeric
    <?
    if ($minimal_increase) {
        ?>
        foo += 1;
//      ^^^^^^^^^ source.js.embedded
//      ^^^ variable.other.readwrite
//          ^^ keyword.operator
//             ^ constant.numeric
        <?
    } else {
//  ^^^^^^^^ source.php
        ?>
//      ^^ meta.embedded.php - source.php
        foo *= 2;
//      ^^^^^^^^^ source.js.embedded
//      ^^^ variable.other.readwrite
//          ^^ keyword.operator
//             ^ constant.numeric
        <?
//      ^^ meta.embedded.php - source.php
    }
    ?>
</script>
<style>
h1 {
    font-family: Arial;
//  ^^^^^^^^^^^ support.type.property-name
//               ^^^^^ string.unquoted
    <? if ($minimal_increase) { ?>
//  ^^ meta.embedded.php - source.php
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.php
//                              ^^ meta.embedded.php - source.php
        font-size: 2em;
//      ^^^^^^^^^ support.type.property-name
//                 ^ constant.numeric
    <? } else { ?>
//  ^^ meta.embedded.php - source.php
//    ^^^^^^^^^^ source.php
//       ^^^^ keyword.control
//              ^^ meta.embedded.php - source.php
        font-size: 3em;
//      ^^^^^^^^^ support.type.property-name
//                 ^ constant.numeric
    <? } ?>
}
</style>

<?php
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
 ?>

  <?phpzzzz
//^^ punctuation.section.embedded.begin.php
//  ^^^^^^^ constant.other.php

  ?>
//^^ punctuation.section.embedded.end.php

  <?php
  <?php
//^^^^^ punctuation.section.embedded.begin.php
