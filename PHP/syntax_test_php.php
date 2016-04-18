// SYNTAX TEST "Packages/PHP/PHP.sublime-syntax"
<?php

function a($a = array(),             $b = "hi") {};
function b($a = [],                  $b = "hi") {};
function c(array $a = array(),       $b = "hi") {};
//                    ^ meta.function.argument.array
//                          ^ punctuation.definition.array.end
function d(array $a = [],            $b = "hi") {};
//                    ^ meta.function.argument.array
//                     ^ punctuation.definition.array.end
function e(array $a = [1, 2, 3, 4],  $b = "hi") {};
//                    ^ meta.function.argument.array
//                               ^ punctuation.definition.array.end
function f(array $a = null,          $b = "hi") {};
function g(array $a = (),            $b = "hi") {};
//                    ^ invalid.illegal.non-null-typehinted
function h(array $a = 1234,          $b = "hi") {};
//                    ^ invalid.illegal.non-null-typehinted
function i(
    $a,
    $b
//  ^ meta.function.argument.no-default.php variable.other.php
) {};


/**
   No longer a phpdoc comment since no leading *
 * @return
//   ^ comment.block - keyword.other.phpdoc
 */
// ^ source - comment.block

/**
 * @return
//  ^ keyword.other.phpdoc
 */

/* No phpdoc highlight since there are not two * after the opening /
 * @return
//   ^ comment.block - keyword.other.phpdoc
 */


    class Test1 extends stdClass implements Countable {}
//  ^ storage.type.class.php
//        ^ entity.name.type.class.php
//              ^ storage.modifier.extends.php
//                       ^ meta.other.inherited-class.php
//                               ^ storage.modifier.implements.php
//                                           ^ meta.other.inherited-class.php

$test = new Test1;
//      ^ keyword.other.new.php
//          ^ support.class.php

$anon = new class extends Test1 implements Countable {};
//      ^ keyword.other.new.php
//          ^ storage.type.class.php
//                ^ storage.modifier.extends.php
//                         ^ meta.other.inherited-class.php
//                              ^ storage.modifier.implements.php
//                                         ^ meta.other.inherited-class.php

    function noReturnType(array $param1, int $param2) {}
//  ^ storage.type.function.php
//           ^ entity.name.function.php
//                       ^ punctuation.definition.parameters.begin.php
//                        ^ meta.function.arguments
//                              ^ punctuation.definition.variable.php
//                                       ^ meta.function.arguments
//                                           ^ punctuation.definition.variable.php
//                                                  ^ punctuation.definition.parameters.end.php

    function scalarReturnType($param1): bool {}
//  ^ storage.type.function.php
//           ^ entity.name.function.php
//                           ^ punctuation.definition.parameters.begin.php
//                                   ^ punctuation.definition.parameters.end.php
//                                      ^ storage.type.php

    function classReturnType($param1): stringSpace\Test1 {}
//  ^ storage.type.function.php
//           ^ entity.name.function.php
//                          ^ punctuation.definition.parameters.begin.php
//                                  ^ punctuation.definition.parameters.end.php
//                                     ^ support.class.php
//                                                 ^ support.class.php
