# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Bash.sublime-syntax"

# ---

for ((i = 0; i < 10; i++)); do echo $i; done;

# ---

for ((i = 0; i < 10; i++)); do echo $i;
done;

# ---

for ((i = 0; i < 10; i++)); do
    echo $i;
done;

# ---

for ((i = 0; i < 10; i++))
do
    echo $i;
done;

# ---

for
    ((i = 0; i < 10; i++))
do
    echo $i;
done;

# ---

for ((
    i = 0;
    i < 10;
    i++
))
do
    echo $i;
done;

# ---

for
    ((
        i = 0;
        i < 10;
        i++
    ))
do
    echo $i;
done;

# ---

for ((i = 0; i < 10; i++)); do
    for ((k = 0; k < 10; k++)); do
        echo \[$i,$k\];
    done;
done;

# ---

for var in foo bar baz; do echo $var; done;

# ---

for var in foo bar baz; do echo $var;
done;

# ---

for var in foo bar baz; do
    echo $var;
done;

# ---

for var \
in foo bar baz;
do
    echo $var;
done;

# ---

for var in foo bar baz;
do echo $var;
done;

# ---

for var \
in foo bar baz;
do echo $var;
done;

# ---

for var in foo bar baz;
do
    echo $var;
done;

# ---

for \
    var \
in \
    foo bar baz;
do
    echo $var;
done;
