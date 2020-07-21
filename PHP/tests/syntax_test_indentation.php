// SYNTAX TEST reindent "Packages/PHP/PHP.sublime-syntax"

https://github.com/sublimehq/Packages/issues/1924
<?php if (true): ?>
    asdfadf
<?php elseif(false): ?>
    asdf
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
?>
