# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Zsh.sublime-syntax"

##
## Bash compatible syntax
##

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

##
## ZSH specific syntax
##

while (( var < 10 )); { echo $var; (( var += 1 )); }

# ---

while (( var < 10 )); { echo $var; (( var += 1 ));
}

# ---

while (( var < 10 )); {
    echo $var; (( var += 1 ));
}

# ---

while (( var < 10 )); {
    echo $var;
    (( var += 1 ));
}

# ---

while (( var < 10 ))
{
    echo $var;
    (( var += 1 ));
}

# ---

while (( var < 10 )); {
    # comment
    echo $var; (( var += 1 ));
}

# ---

while (( var < 10 )); {
    # comment
    echo $var;
    # comment
    (( var += 1 ));
}

# ---

while (( var < 10 ))
{
    # comment
    echo $var;
    # comment
    (( var += 1 ));
}

# ---

while (( var < 10 )); { # comment
    echo $var; (( var += 1 )); # comment
} # comment

# ---

while (( var < 10 )); { # comment
    echo $var; # comment
    (( var += 1 )); # comment
} # comment

# ---

while (( var < 10 )) # comment
{ # comment
    echo $var; # comment
    (( var += 1 )); # comment
} # comment

# ---

while (( var < 10 ))
    echo $(( var += 1 ))
echo done!

# ---

while running
    echo $(( var += 1 ))
echo done!
