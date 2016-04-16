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

$test = "\0 \12 \345g \x0f \u{aa} \u{9999} \u{999}";
//       ^^ constant.numeric.octal.php
//          ^^^ constant.numeric.octal.php
//              ^^^^ constant.numeric.octal.php
//                  ^ meta.string-contents.quoted.double.php
//                    ^^^^ constant.numeric.hex.php
//                         ^^^^^^ constant.numeric.unicodepoint.php
//                                ^^^^^^^^ constant.numeric.unicodepoint.php
//                                         ^^^^^^^ meta.string-contents.quoted.double.php
