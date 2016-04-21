// SYNTAX TEST "Packages/PHP/PHP.sublime-syntax"
<?php
namespace MyNamespace;
// <- keyword.other.namespace
//        ^^^^^^^^^^^ entity.name.namespace
//                   ^ - entity.name.namespace

use MyNamespace\Foo;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^ meta.use
//  ^ support.other.namespace
//             ^ punctuation.separator.namespace
//              ^ - constant.other

use /* Comment */ \MyNamespace\Foo;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^^^^^^^^^ comment.block
//                ^ punctuation.separator.namespace
//                 ^ support.other.namespace
//                            ^ punctuation.separator.namespace
//                             ^ - constant.other

use My\Full\Classname as /**/ Another # Foo baz
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^ support.other.namespace
//         ^ punctuation.separator.namespace
//          ^ - constant.other
//                    ^ keyword.other.use-as
//                       ^^^^ comment.block
//                            ^ entity.name.class
//                                    ^^^^^^^^^ comment.line
, My\Full\NSname;
// <- punctuation.separator
//^ support.other.namespace
//  ^ punctuation.separator.namespace
//        ^ - constant.other

use function /**/ some\namespace\fn_a;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^ storage.type
//           ^^^^ comment.block
//                ^ support.other.namespace
//                    ^ punctuation.separator.namespace
//                               ^ - entity.name.function

use function some\namespace\fn_a /**/ as fn_b;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^ storage.type
//           ^ support.other.namespace
//               ^ punctuation.separator.namespace
//                          ^ - entity.name.function
//                               ^^^^ comment.block
//                                    ^ keyword.other.use-as
//                                       ^ entity.name.function

use const /**/ some\namespace\ConstA;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^ storage.type
//        ^^^^ comment.block
//             ^ support.other.namespace
//                 ^ punctuation.separator.namespace
//                            ^ constant.other

// Unfortunately we don't know if these identifiers are namespaces or classes
// so we can't disambiguate. Generally we are just going to assume an "as" is
// a class name so that the definition of the class can be found via the index.
use some\namespace\{ClassA, ClassB, ClassC as C};
// <- keyword.other.use
//                 ^ punctuation.definition.block
//                  ^ - entity.name.class
//                                         ^ keyword.other.use-as
//                                            ^ entity.name.class
//                                             ^ punctuation.definition.block

use function some\namespace\{fn_a, fn_b, fn_c as fn_d};
// <- keyword.other.use
//                          ^ punctuation.definition.block
//                           ^ - entity.name.function
//                                            ^ keyword.other.use-as
//                                               ^ entity.name.function
//                                                   ^ punctuation.definition.block


use const some\namespace\{ConstA, ConstB AS ConstD, ConstC};
// <- keyword.other.use
//                       ^ punctuation.definition.block
//                        ^ constant.other
//                                ^ constant.other
//                                       ^ keyword.other.use-as
//                                          ^ constant.other
//                                                        ^ punctuation.definition.block


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
//        ^ entity.name.class.php
//              ^ storage.modifier.extends.php
//                       ^ entity.other.inherited-class.php
//                               ^ storage.modifier.implements.php
//                                           ^ entity.other.inherited-class.php

class ClassName extends /* */ \MyNamespace\Foo implements \MyNamespace\Baz {
//    ^ entity.name.class
//              ^ storage.modifier
//                      ^ comment.block
//                            ^^^^^^^^^^^^^^^^ entity.other.inherited-class
//                            ^ punctuation.separator.namespace
//                                        ^ punctuation.separator.namespace
//                                             ^ storage.modifier
//                                                        ^^^^^^^^^^^^^^^^ entity.other.inherited-class
//                                                        ^ punctuation.separator.namespace
//                                                                    ^ punctuation.separator.namespace
}

interface MyInter {}
// <- storage.type
//        ^ entity.name.interface

interface MyInter2 extends \MyNamespace\Foo {
// <- storage.type
//        ^ entity.name.interface
//                 ^ storage.modifier
//                         ^^^^^^^^^^^^^^^^ entity.other.inherited-class
//                         ^ punctuation.separator.namespace
//                                     ^ punctuation.separator.namespace
}

if ($foo instanceof \Mynamespace\ClassName) {
//  ^ variable.other
//       ^ keyword.operator
//                  ^ punctuation.separator.namespace
//                   ^ support.other.namespace
//                              ^ punctuation.separator.namespace
//                               ^^^^^^^^^ support.class
}

$var = new \MyNamespce\ClassName();
// <- variable.other
//     ^ keyword.other
//         ^ punctuation.separator.namespace
//          ^ support.other.namespace
//                    ^ punctuation.separator.namespace
//                     ^ support.class

\MyNamespace\Foo::BAR;
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace
//           ^ support.class
//              ^^ keyword.operator.class
//                ^^^ constant.other

\MyNamespace\Foo::bar();
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace
//           ^^^ support.class
//              ^^ keyword.operator.class
//                ^^^ meta.function-call

\MyNamespace\Foo();
//^^^^^^^^^^^^^^ meta.function-call
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace

\MyNamespace\Foo;
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace
//           ^ constant.other

$test = new Test1;
//      ^ keyword.other.new.php
//          ^ support.class.php

$anon = new class extends Test1 implements Countable {};
//      ^ keyword.other.new.php
//          ^ storage.type.class.php
//                ^ storage.modifier.extends.php
//                         ^ entity.other.inherited-class.php
//                              ^ storage.modifier.implements.php
//                                         ^ entity.other.inherited-class.php

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
//                                     ^ support.other.namespace.php
//                                                 ^ support.class.php

$test = "\0 \12 \345g \x0f \u{a} \u{9999} \u{999}";
//       ^^ constant.character.escape.octal.php
//          ^^^ constant.character.escape.octal.php
//              ^^^^ constant.character.escape.octal.php
//                  ^ meta.string-contents.quoted.double.php
//                    ^^^^ constant.character.escape.hex.php
//                         ^^^^^ constant.character.escape.unicodepoint.php
//                               ^^^^^^^^ constant.character.escape.unicodepoint.php
//                                        ^^^^^^^ meta.string-contents.quoted.double.php

trait A
// ^ storage.type.trait
//    ^ entity.name.trait
{

}

class B
//    ^ entity.name.class
{
    use MyNamespace\Xyz,
//  ^^^^^^^^^^^^^^^^^^^^ meta.use
//      ^^^^^^^^^^^^^^^ entity.other.inherited-class
//                 ^ punctuation.separator.namespace
    Y,
//  ^ meta.use entity.other.inherited-class
    Z {
//  ^^^ meta.use
//    ^ meta.block punctuation.definition.block
        X::method1 as another1;
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.use meta.block
//       ^^ keyword.operator.class
//                 ^ keyword.other.use-as
        Y::method2 insteadof X;
//                 ^ keyword.other.insteadof
        X::method2 as another2;
//                 ^ keyword.other.use-as
    } protected $pro1;
//  ^ meta.use meta.block punctuation.definition.block
//   ^ - meta.use
//    ^ storage.modifier

    public function abc(callable $var, int $var2, string $var3)
//                  ^^^ entity.name.function
//                      ^ storage.type
//                                     ^ storage.type
//                                                ^ storage.type
    {
        echo B::class;
//              ^ constant.class
    }
}

try {
// <- keyword.control.exception
    echo inverse(5) . "\n";
    throw new Exception('Error!');
//  ^ keyword.control.exception
} catch (Exception $e) {
//^ keyword.control.exception
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

$var = 0;
//     ^ constant.numeric

$var2 = -123.456e10;
//       ^^^^^^^^^^ constant.numeric

$var3 = 0x0f;
//      ^^^^ constant.numeric

$var4 = 0b0111;
//      ^^^^^^ constant.numeric

$non_sql = "NO SELECT HIGHLIGHTING!";
//         ^ string.quoted.double punctuation.definition.string.begin - meta.string-contents
//          ^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents
//             ^ - source.sql
//                                 ^ string.quoted.double punctuation.definition.string.end - meta.string-contents

$sql = "SELECT * FROM users WHERE first_name = 'Eric'";
//     ^ string.quoted.double punctuation.definition.string.begin - meta.string-contents
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents source.sql
//      ^ keyword.other.DML
//                                             ^^^^^^ string.quoted.single.sql
//                                                   ^ string.quoted.double punctuation.definition.string.end - meta.string-contents

// Ensure we properly exist from SQL when hitting PHP end-of-string
$sql = "SELECT * FROM users WHERE first_name = 'Eric";
//     ^ string.quoted.double punctuation.definition.string.begin - meta.string-contents
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents source.sql
//      ^ keyword.other.DML
//                                             ^^^^^ string.quoted.single.sql
//                                                  ^ string.quoted.double punctuation.definition.string.end - meta.string-contents

$sql = "
    SELECT * FROM users WHERE first_name = 'Eric'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents source.sql
//  ^ keyword.other.DML
//                                         ^^^^^^ string.quoted.single.sql
";
// <- string.quoted.double punctuation.definition.string.end - meta.string-contents

$non_sql = 'NO SELECT HIGHLIGHTING!';
//         ^ string.quoted.single punctuation.definition.string.begin - meta.string-contents
//          ^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents
//             ^ - source.sql
//                                 ^ string.quoted.single punctuation.definition.string.end - meta.string-contents

$sql = 'SELECT * FROM users WHERE first_name = \'Eric\'';
//     ^ string.quoted.single punctuation.definition.string.begin - meta.string-contents
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents source.sql
//      ^ keyword.other.DML
//                                             ^^ constant.character.escape.php
//                                                     ^ string.quoted.single punctuation.definition.string.end - meta.string-contents

$sql = '
    SELECT * FROM users WHERE first_name = \'Eric\'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string-contents source.sql
//  ^ keyword.other.DML
//                                         ^^ constant.character.escape.php
';
// <- string.quoted.single punctuation.definition.string.end - meta.string-contents

preg_replace('/(foo|bar)a{1,4}[a-z]*\'\n/m')
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.single-quoted
//                                 ^ keyword.operator

preg_replace("/(foo|bar)a{1,4}[a-z]*\'\n/m")
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.double-quoted
//                                 ^ keyword.operator

echo <<<EOT
//   ^^^^^^ punctuation.definition.string
//      ^^^ keyword.operator.heredoc
This is a test! $var
//^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc
//              ^^^^ variable.other
EOT;
// <- keyword.operator.heredoc

echo <<<'EOT'
//   ^^^^^^^^ punctuation.definition.string
//       ^^^ keyword.operator.heredoc
This is a test! $var
//^^^^^^^^^^^^^^^^^^ string.unquoted.nowdoc
//              ^^^^ - variable.other
EOT;
// <- keyword.operator.heredoc

echo <<<HTML
//   ^^^^^^^ punctuation.section.embedded.begin punctuation.definition.string
//      ^^^ keyword.operator.heredoc
This is a test!
<div class="foo-bar"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.html text.html
// <- punctuation.definition.tag.begin
//^^ entity.name.tag.block
//   ^^^^^ entity.other.attribute-name
//         ^^^^^^^^^ string.quoted.double
HTML;
// <- punctuation.section.embedded.end keyword.operator.heredoc

echo <<< JAVASCRIPT
//   ^^^^^^^^^^^^^^ punctuation.section.embedded.begin punctuation.definition.string
//       ^^^^^^^^^^ keyword.operator.heredoc
var foo = 1;
//^^^^^^^^^^ meta.embedded.js source.js
// <- storage.type
//  ^^^ variable.other.readwrite
//        ^ constant.numeric
$var
// <- variable.other.php
//^^ variable.other.php
JAVASCRIPT;
// <- punctuation.section.embedded.end keyword.operator.heredoc

echo <<<CSS
//   ^^^^^^ punctuation.section.embedded.begin punctuation.definition.string
//      ^^^ keyword.operator.heredoc
h2 {font-family: 'Arial';}
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.css source.css
// <- entity.name.tag
// ^ punctuation.section.property-list
//               ^^^^^^^ string.quoted.single
h3 {}
CSS;
// <- punctuation.section.embedded.end keyword.operator.heredoc

echo <<<SQL
//   ^^^^^^ punctuation.section.embedded.begin punctuation.definition.string
//      ^^^ keyword.operator.heredoc
SELECT * FROM users WHERE first_name = 'John'
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.sql source.sql
// <- keyword.other.DML
//     ^ keyword.operator.star
//                                     ^^^^^^ string.quoted.single
SQL;
// <- punctuation.section.embedded.end keyword.operator.heredoc
