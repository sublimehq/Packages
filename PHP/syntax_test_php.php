// SYNTAX TEST "Packages/PHP/PHP.sublime-syntax"
<?php
namespace MyNamespace;
// <- keyword.other.namespace
//        ^^^^^^^^^^^ entity.name.namespace
//                   ^ punctuation.terminator.expression.php - entity.name.namespace

use MyNamespace\Foo;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^^^^^^^ support.other.namespace
//             ^ punctuation.separator.namespace
//              ^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//                 ^ punctuation.terminator.expression.php - meta.use

use /* Comment */ \MyNamespace\Foo;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^^^^^^^^^ comment.block
//                ^ punctuation.separator.namespace
//                 ^^^^^^^^^^^ support.other.namespace
//                            ^ punctuation.separator.namespace
//                             ^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//                                ^ punctuation.terminator.expression.php - meta.use

use My\Full\Classname as /**/ Another # Foo baz
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^ support.other.namespace
//    ^ punctuation.separator.namespace
//     ^^^^ support.other.namespace
//         ^ punctuation.separator.namespace
//          ^^^^^^^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//                    ^^ keyword.other.use-as
//                       ^^^^ comment.block
//                            ^^^^^^^ entity.name.class
//                                    ^^^^^^^^^ comment.line
, My\Full\NSname;
//<- meta.use
//^^^^^^^^^^^^^^ meta.use
// <- punctuation.separator
//^^ support.other.namespace
//  ^ punctuation.separator.namespace
//   ^^^^ support.other.namespace
//       ^ punctuation.separator.namespace
//        ^ - constant.other
//        ^^^^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//              ^ punctuation.terminator.expression.php - meta.use

use function /**/ some\namespace\fn_a;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^^^^ storage.type
//           ^^^^ comment.block
//                ^^^^ support.other.namespace
//                    ^ punctuation.separator.namespace
//                      ^^^^^^^^ support.other.namespace
//                              ^ punctuation.separator.namespace
//                               ^^^^ support.function.php - entity.name - constant.other - support.class.php - support.other.namespace
//                                   ^ punctuation.terminator.expression.php - meta.use

use function some\namespace\fn_a /**/ as fn_b;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^^^^ storage.type
//           ^^^^ support.other.namespace
//               ^ punctuation.separator.namespace
//                ^^^^^^^^^ support.other.namespace
//                         ^ punctuation.separator.namespace
//                          ^^^^ support.function.php - entity.name - constant.other - support.class.php - support.other.namespace
//                               ^^^^ comment.block
//                                    ^^ keyword.other.use-as
//                                       ^^^^ entity.name.function
//                                           ^ punctuation.terminator.expression.php - meta.use

use const /**/ some\namespace\ConstA;
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^ storage.type
//        ^^^^ comment.block
//             ^^^^ support.other.namespace
//                 ^ punctuation.separator.namespace
//                  ^^^^^^^^^ support.other.namespace
//                            ^^^^^^ constant.other - support.function.php - entity.name - support.class.php - support.other.namespace
//                                  ^ punctuation.terminator.expression.php - meta.use

// Unfortunately we don't know if these identifiers are namespaces or classes
// so we can't disambiguate. Generally we are just going to assume an "as" is
// a class name so that the definition of the class can be found via the index.
use some\namespace\{ClassA, ClassB, ClassC as C};
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^ support.other.namespace
//      ^ punctuation.separator.namespace
//       ^^^^^^^^^ support.other.namespace
//                ^ punctuation.separator.namespace
//                 ^ punctuation.definition.block
//                  ^^^^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//                        ^ punctuation.separator
//                          ^^^^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//                                ^ punctuation.separator
//                                  ^^^^^^ support.class.php - constant.other - entity.name - support.function.php - support.other.namespace
//                                         ^^ keyword.other.use-as
//                                            ^ entity.name.class
//                                             ^ punctuation.definition.block
//                                              ^ punctuation.terminator.expression.php - meta.use

use function some\namespace\{fn_a, fn_b, fn_c as fn_d};
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^^^^ storage.type.php
//           ^^^^ support.other.namespace
//               ^ punctuation.separator.namespace
//                ^^^^^^^^^ support.other.namespace
//                         ^ punctuation.separator.namespace
//                          ^ punctuation.definition.block
//                           ^^^^ support.function.php - constant.other - entity.name - support.class.php - support.other.namespace
//                               ^ punctuation.separator
//                                 ^^^^ support.function.php - constant.other - entity.name - support.class.php - support.other.namespace
//                                     ^ punctuation.separator
//                                       ^^^^ support.function.php - constant.other - entity.name - support.class.php - support.other.namespace
//                                            ^^ keyword.other.use-as
//                                               ^^^^ entity.name.function
//                                                   ^ punctuation.definition.block
//                                                    ^ punctuation.terminator.expression.php - meta.use


use const some\namespace\{ConstA, ConstB AS ConstD, ConstC};
// <- keyword.other.use
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use
//  ^^^^^ storage.type.php
//        ^^^^ support.other.namespace
//            ^ punctuation.separator.namespace
//             ^^^^^^^^^ support.other.namespace
//                      ^ punctuation.separator.namespace
//                       ^ punctuation.definition.block
//                        ^^^^^^ constant.other - support.function.php - entity.name - support.class.php - support.other.namespace
//                              ^ punctuation.separator
//                                ^^^^^^ constant.other - support.function.php - entity.name - support.class.php - support.other.namespace
//                                       ^^ keyword.other.use-as
//                                          ^^^^^^ constant.other - support.function.php - entity.name - support.class.php - support.other.namespace
//                                                ^ punctuation.separator
//                                                  ^^^^^^ constant.other - support.function.php - entity.name - support.class.php - support.other.namespace
//                                                        ^ punctuation.definition.block
//                                                         ^ punctuation.terminator.expression.php - meta.use


function a($a = array(),             $b = "hi") {};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//       ^ entity.name.function
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.group
//        ^ punctuation.definition.group.begin
//                                            ^ punctuation.definition.group.end
function b($a = [],                  $b = "hi") {};
function c(array $a = array(),       $b = "hi") {};
//                    ^ meta.array.empty
//                          ^ punctuation.definition.array.end
function d(array $a = [],            $b = "hi") {};
//                    ^ punctuation.section.array.begin
//                     ^ punctuation.section.array.end
function e(array $a = [1, 2, 3, 4],  $b = "hi") {};
//                    ^ punctuation.section.array.begin
//                               ^ punctuation.section.array.end
function f(array $a = null,          $b = "hi") {};
function i(
    $a,
//  ^^ variable.parameter
//    ^ punctuation.separator
    $b
//  ^^ variable.parameter
) {};


$var = function(array $ar=array(), ClassName $cls) use ($var1, $var2) {
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//     ^^^^^^^^ meta.function.closure
//             ^^ meta.function.parameters meta.group
//             ^ punctuation.definition.group.begin
//              ^^^^^ storage.type
//                    ^^^ variable.parameter
//                       ^ keyword.operator.assignment
//                        ^^^^^^^ meta.array.empty
//                               ^ punctuation.separator
//                                 ^^^^^^^^^ support.class
//                                           ^^^^ variable.parameter
//                                               ^ punctuation.definition.group.end
//                                                 ^^^^^^^^^^^^^^^^^^ meta.function.closure.use
//                                                                    ^ meta.block punctuation.definition.block.begin

}
// <- meta.function meta.block punctuation.definition.block.end

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
//                ^^^^^ meta.function-call
//                ^^^ variable.function
//                   ^^ meta.group
//                   ^ punctuation.definition.group.begin
//                    ^ punctuation.definition.group.end

\MyNamespace\Foo();
//^^^^^^^^^^^^^^^^ meta.function-call
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace
//           ^^^ variable.function
//              ^^ meta.group
//              ^ punctuation.definition.group.begin
//               ^ punctuation.definition.group.end

\MyNamespace\Foo;
// <- punctuation.separator.namespace
 // <- support.other.namespace
//          ^ punctuation.separator.namespace
//           ^ constant.other

func_call(true, 1, "string");
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                          ^ - meta.function-call
//^^^^^^^ variable.function
//       ^^^^^^^^^^^^^^^^^^^ meta.group
//                          ^ - meta.group
//       ^ punctuation.definition.group.begin
//                         ^ punctuation.definition.group.end
//        ^^^^ constant.language
//            ^ punctuation.separator.php
//              ^ constant.numeric
//               ^ punctuation.separator.php
//                 ^^^^^^^^ string.quoted.double

$object->method(func_call());
//     ^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//       ^^^^^^ variable.function
//             ^^^^^^^^^^^^^ meta.group
//              ^^^^^^^^^^^ meta.function-call meta.function-call
//              ^^^^^^^^^ variable.function
//                       ^^ meta.group meta.group

strval($foo);
//^^^^^^^^^^ meta.function-call
//^^^^ support.function.var - variable.function
//    ^^^^^^ meta.group

$test = new Test1;
//      ^ keyword.other.new.php
//          ^ support.class.php

$anon = new class{};
//      ^^^^^^^^^^^ meta.class
//      ^ keyword.other.new.php
//          ^ storage.type.class.php
//               ^^ meta.block.php
//               ^ punctuation.definition.block.php - meta.class meta.class
//                ^ punctuation.definition.block.php

$anon = new class extends Test1 implements Countable {};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class - meta.class meta.class
//      ^ keyword.other.new.php
//          ^ storage.type.class.php
//                ^ storage.modifier.extends.php
//                         ^ entity.other.inherited-class.php
//                              ^ storage.modifier.implements.php
//                                         ^ entity.other.inherited-class.php
//                                                   ^^ meta.block.php

    function noReturnType(array $param1, int $param2) {}
//  ^ storage.type.function.php
//           ^ entity.name.function.php
//                       ^ punctuation.definition.group.begin.php
//                        ^ meta.function.parameters
//                              ^ punctuation.definition.variable.php
//                                       ^ meta.function.parameters
//                                           ^ punctuation.definition.variable.php
//                                                  ^ punctuation.definition.group.end.php
//                                                    ^^ meta.block.php
//                                                    ^ punctuation.definition.block.begin.php
//                                                     ^ punctuation.definition.block.end.php

    function scalarReturnType($param1): bool {}
//  ^ storage.type.function.php
//           ^ entity.name.function.php
//                           ^ punctuation.definition.group.begin.php
//                                   ^ punctuation.definition.group.end.php
//                                      ^ storage.type.php

    function classReturnType($param1): stringSpace\Test1 {}
//  ^ storage.type.function.php
//           ^ entity.name.function.php
//                          ^ punctuation.definition.group.begin.php
//                                  ^ punctuation.definition.group.end.php
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

"$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}"
 // <- variable.other punctuation.definition.variable
//^ variable.other
//       ^^ variable.other
//       ^ punctuation.definition.variable
//         ^^ keyword.operator.class
//           ^ variable.other.property
//                ^^^^ variable.other
//                ^^ punctuation.definition.variable
//                   ^ punctuation.definition.variable
//                          ^ punctuation.definition.expression
//                           ^^ variable.other
//                           ^ punctuation.definition.variable
//                             ^ punctuation.definition.expression
//                                    ^^ variable.other
//                                    ^ punctuation.definition.variable
//                                      ^ punctuation.section.array.begin
//                                       ^ constant.numeric
//                                        ^ punctuation.section.array.end
//                                                      ^^ variable.other
//                                                      ^ punctuation.definition.variable
//                                                        ^ punctuation.section.array.begin
//                                                         ^^ variable.other
//                                                         ^ punctuation.definition.variable
//                                                           ^ punctuation.section.array.end
//                                                                ^^ variable.other
//                                                                ^ punctuation.definition.variable
//                                                                  ^ punctuation.section.array.begin
//                                                                   ^ constant.other
//                                                                    ^ punctuation.section.array.end
//                                                                                  ^ punctuation.definition.expression
//                                                                                   ^^ variable.other
//                                                                                   ^ punctuation.definition.variable
//                                                                                      ^ keyword.operator
//                                                                                        ^^ variable.other
//                                                                                        ^ punctuation.definition.variable
//                                                                                          ^^ keyword.operator.class
//                                                                                            ^ variable.other.property
//                                                                                              ^ keyword.operator
//                                                                                                ^ constant.other

`$a then $b->c or ${d} with {$e} then $f[0] followed by $g[$h] or $i[k] and finally {$l . $m->n . o}`
 // <- variable.other punctuation.definition.variable
//^ variable.other
//       ^^ variable.other
//       ^ punctuation.definition.variable
//         ^^ keyword.operator.class
//           ^ variable.other.property
//                ^^^^ variable.other
//                ^^ punctuation.definition.variable
//                   ^ punctuation.definition.variable
//                          ^ punctuation.definition.expression
//                           ^^ variable.other
//                           ^ punctuation.definition.variable
//                             ^ punctuation.definition.expression
//                                    ^^ variable.other
//                                    ^ punctuation.definition.variable
//                                      ^ punctuation.section.array.begin
//                                       ^ constant.numeric
//                                        ^ punctuation.section.array.end
//                                                      ^^ variable.other
//                                                      ^ punctuation.definition.variable
//                                                        ^ punctuation.section.array.begin
//                                                         ^^ variable.other
//                                                         ^ punctuation.definition.variable
//                                                           ^ punctuation.section.array.end
//                                                                ^^ variable.other
//                                                                ^ punctuation.definition.variable
//                                                                  ^ punctuation.section.array.begin
//                                                                   ^ constant.other
//                                                                    ^ punctuation.section.array.end
//                                                                                  ^ punctuation.definition.expression
//                                                                                   ^^ variable.other
//                                                                                   ^ punctuation.definition.variable
//                                                                                      ^ keyword.operator
//                                                                                        ^^ variable.other
//                                                                                        ^ punctuation.definition.variable
//                                                                                          ^^ keyword.operator.class
//                                                                                            ^ variable.other.property
//                                                                                              ^ keyword.operator
//                                                                                                ^ constant.other

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

        parent::abc($var, $var2, $var3);
//      ^^^^^^ variable.language
//            ^^ keyword.operator.class

        $this->undo();
//      ^^^^^ variable.language
//      ^ punctuation.definition.variable

        $var2 = 'test';
//      ^^^^^ variable.other
//      ^ punctuation.definition.variable

        return new self();
//                 ^^^^ variable.language
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

  foo_bar:
//^^^^^^^ entity.name.label.php - keyword.control.php

switch (1) {
//^ keyword.control
    case 1:
  //^^^^ keyword.control.php - entity.name.label.php
    default:
  //^^^^^^^ keyword.control.php - entity.name.label.php
}

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


class OutputsHtml {
    function embedHtml() {
        if (1) {
//             ^ meta.function meta.block punctuation.definition.block.begin
        }
//      ^ meta.function meta.block punctuation.definition.block.end
        else {
//           ^ meta.function meta.block punctuation.definition.block.begin
            ?>
//          ^^ punctuation.section.embedded.end
            <span></span>
//          ^^^^^^ meta.tag - source.php
            <?
//          ^^ punctuation.section.embedded.begin
        }
//      ^ meta.function meta.block punctuation.definition.block.end
        ?>
//      ^^ punctuation.section.embedded.end

        <div class="acf-gallery-side-info acf-cf<?php if () { echo ' class-name'; } ?>" id="myid"></div>
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.tag - source.php
//           ^^^^^ meta.attribute-with-value
//                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.line.nested.php
//                                              ^^^^^ punctuation.section.embedded.begin - source.php
//                                                                                  ^^ punctuation.section.embedded.end - source.php
//                                                                                    ^^^^^^^^^^^^^^^^^^ meta.tag
//                                                                                      ^^^^^^^^^ meta.attribute-with-value
        <?= var_dump($foo)
//      ^^^^^^^^^^^^^^^^^^ meta.embedded.line.nested
//      ^^^ punctuation.section.embedded.begin - source.php
//         ^^^^^^^^^^^^^^^ source.php
        ?>
//      ^^ punctuation.section.embedded.end - source.php

        <?php
//      ^^^^^ punctuation.section.embedded.begin
    }
}

function embedHtml() {
    if (1) {
//         ^ meta.function meta.block punctuation.definition.block.begin
    }
//  ^ meta.function meta.block punctuation.definition.block.end
    else {
//       ^ meta.function meta.block punctuation.definition.block.begin
        ?>
//      ^^ punctuation.section.embedded.end - source.php
        <span></span>
//      ^^^^^^ meta.tag - source.php
        <?
//      ^^ punctuation.section.embedded.begin - source.php
    }
//  ^ meta.function meta.block punctuation.definition.block.end

    try {
        if (1) {
            if (1) {
                try {
// ^^^^^^^^^^^^^^^^^^ source.php
                    ?>
//                  ^^ punctuation.section.embedded.end - source.php

                    <div class="acf-gallery-side-info acf-cf<?php if () { echo ' class-name'; } ?>" id="myid"></div>
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.tag - source.php
//                       ^^^^^ meta.attribute-with-value
//                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.line.nested.php
//                                                          ^^^^^ punctuation.section.embedded.begin
//                                                                                              ^^ punctuation.section.embedded.end
//                                                                                                ^^^^^^^^^^^^^^^^^^ meta.tag
//                                                                                                  ^^^^^^^^^ meta.attribute-with-value
                    <?php
//                  ^^^^^ punctuation.section.embedded.begin
                } finally {
                    // This tests maxing out the standard handling of block
                    // nesting in a function. As we can see, the HTML is still
                    // highlighted properly, but the background doesn't lose
                    // the highlighting of being inside of source.* scope.
                    // Additionally, snippets and completions will trigger for
                    // PHP inside of this scope, and HTML will not trigger.
                    if (1) {
                        if (1) {
                            ?>
                            <div>
                            </div>
                            <?
                        }
                    }
                }
            }
        }
    } catch (Exception $e) {

    }
}

class C {
    private $prop;

    public function __construct($val) {
//                  ^^^^^^^^^^^ entity.name.function.php support.function.magic.php
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
    {
        return $this->prop;
    }

    public function __test()
//                  ^^^^^^ entity.name.function.php - support.function.magic.php
    {
    }
}

var_dump(new C(42));

?>

<div class="test <?= $foo ?>"></div>
//               ^^^^^^^^^^^ meta.embedded.line
//               ^^^ punctuation.section.embedded.begin - source.php
//                  ^^^^^^ source.php
//                   ^^^^ variable.other
//                        ^^ punctuation.section.embedded.end - source.php

<script>
    var foo = 4;
//  ^ storage.type
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
//      ^^ meta.embedded.block.php - source.php
        foo *= 2;
//      ^^^^^^^^^ source.js.embedded
//      ^^^ variable.other.readwrite
//          ^^ keyword.operator
//             ^ constant.numeric
        <?
//      ^^ meta.embedded.block.php - source.php
    }
    ?>
</script>
<style>
h1 {
    font-family: Arial;
//  ^^^^^^^^^^^ support.type.property-name
//               ^^^^^ support.constant
    <? if ($minimal_increase) { ?>
//  ^^ meta.embedded.line.php - source.php
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.php
//                              ^^ meta.embedded.line.php - source.php
        size: 2em;
//      ^^^^ support.type.property-name
//            ^ constant.numeric
    <? } else { ?>
//  ^^ meta.embedded.line.php - source.php
//    ^^^^^^^^^^ source.php
//       ^^^^ keyword.control
//              ^^ meta.embedded.line.php - source.php
        size: 3em;
//      ^^^^ support.type.property-name
//            ^ constant.numeric
    <? } ?>
}
</style>
