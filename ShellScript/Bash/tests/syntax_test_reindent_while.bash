# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Bash.sublime-syntax"

while (( var < 10 )); do echo $var; (( var += 1 )); done;

# ---

while (( var < 10 )); do echo $var; (( var += 1 ));
done;

# ---

while (( var < 10 )); do
    echo $var;
    (( var += 1 ));
done;

# ---

while (( var < 10 ))
do
    echo $var;
    (( var += 1 ));
done;

# ---

while
    (( var < 10 ))
do
    echo $var;
    (( var += 1 ));
done;
