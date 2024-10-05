# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Bash.sublime-syntax"

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
