# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Zsh.sublime-syntax"

##
## Bash compatible syntax
##

select var in foo bar baz; do echo $var; done;

# ---

select var in foo bar baz; do echo $var;
done;

# ---

select var in foo bar baz; do
    echo $var;
done;

# ---

select var in foo bar baz;
do echo $var;
done;

# ---

select var in foo bar baz;
do
    echo $var;
done;

# ---

select \
    var \
in \
    foo bar baz;
do
    echo $var;
done;

##
## ZSH specific syntax
##

select var in (foo bar baz) ; { echo $i }

# ---

select var in (foo bar baz) ; {
    echo $i
}

# ---

select var \
in (foo bar baz) ; {
    echo $i
}

# ---

select var in (foo bar baz)
{
    echo $i
}

# ---

select var \
in (foo bar baz)
{
    echo $i
}

# ---

select var in (
    foo
    bar
    baz
) ; {
    echo $i
}

# ---

select \
    var \
in (
    foo
    bar
    baz
) ; {
    echo $i
}

# ---

select \
    var \
in (
    foo
    bar
    baz
)
{
    echo $i
}

# ---

select var (foo bar baz)
    echo $i
echo done!

# ---

select var $list
    echo $i
echo done!
