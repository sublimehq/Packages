# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Zsh.sublime-syntax"

foreach var in foo bar baz; do echo $var; done;

# ---

foreach var in foo bar baz; do echo $var;
done;

# ---

foreach var in foo bar baz; do
    echo $var;
done;

# ---

foreach \
    var in foo bar baz;
do
    echo $var;
done;

# ---

foreach \
    var \
in foo bar baz;
do
    echo $var;
done;

# ---

foreach \
    var \
in \
    foo bar baz;
do
    echo $var;
done;

# ---

foreach \
    var \
in \
    foo \
    bar \
    baz;
do
    echo $var;
done;

# ---

foreach var (foo bar baz) echo $i; end;

# ---

foreach var (foo bar baz) echo $i;
end;

# ---

foreach var (foo bar baz)
    echo $i;
end;

# ---

foreach \
    var \
    (foo bar baz)
    echo $i;
end;

# ---

foreach var (foo bar baz)
    echo $i
    echo ...
end;
echo done!
