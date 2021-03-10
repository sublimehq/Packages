// SYNTAX TEST reindent "Packages/PHP/PHP.sublime-syntax"

https://github.com/sublimehq/Packages/issues/1924
<?php if (true): ?>
    asdfadf
<?php elseif(false): ?>
    asdf
<?php else: ?>
    qwfpg
<?php endif;?>

<?php
if (true) {
    ?>
    asdfadf
    <?php
}

if (a == 2) {
    echo 'test';
} elseif (b == 1) {
    echo b;
}
?>

https://github.com/sublimehq/Packages/issues/1175
<?php
if ('a:b') return;
if ('a:b') { return; }
if (true) echo('a:b');
?>

https://github.com/sublimehq/Packages/issues/901
<?
function test()
{
    if (true)
    {
        blah;
    }
    else
    {
        ok;
    }

    if (true)
    {
        blah;
    } else
    {
        ok;
    }

    if (true)
        blah;
    else {
        ok;
    }
}

for (expr1; expr2; expr3)
    statement;

for ($i = 1; $i <= 10; $i++) {
    echo $i;
}

for ($i = 1; $i <= 10; $i++)
{
    echo $i;
}

for ($i = 1, $j = 0; $i <= 10; $j += $i, print $i, $i++);

$people = array(
    array('name' => 'Kalle', 'salt' => 856412),
    array('name' => 'Pierre', 'salt' => 215863)
);

for($i = 0, $size = count($people); $i < $size; ++$i) {
    $people[$i]['salt'] = mt_rand(000000, 999999);
}

for (expr1; expr2; expr3):
    statement;
    statement;
endfor;

?>
