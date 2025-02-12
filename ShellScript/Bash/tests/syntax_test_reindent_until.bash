# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Bash.sublime-syntax"

until (( var > 10 )); do echo $var; (( var += 1 )); done;

# ---

until (( var > 10 )); do echo $var; (( var += 1 ));
done;

# ---

until (( var > 10 )); do
    echo $var;
    (( var += 1 ));
done;

# ---

until (( var > 10 ))
do
    echo $var;
    (( var += 1 ));
done;

# ---

until
    (( var > 10 ))
do
    echo $var;
    (( var += 1 ));
done;
