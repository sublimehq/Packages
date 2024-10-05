# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Zsh.sublime-syntax"

##
## Bash compatible syntax
##

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

##
## ZSH specific syntax
##

until (( var > 10 )); { echo $var; (( var += 1 )); }

# ---

until (( var > 10 )); { echo $var; (( var += 1 ));
}

# ---

until (( var > 10 )); {
    echo $var; (( var += 1 ));
}

# ---

until (( var > 10 )); {
    echo $var;
    (( var += 1 ));
}

# ---

until (( var > 10 ))
{
    echo $var;
    (( var += 1 ));
}

# ---

until (( var > 10 )); {
    # comment
    echo $var; (( var += 1 ));
}

# ---

until (( var > 10 )); {
    # comment
    echo $var;
    # comment
    (( var += 1 ));
}

# ---

until (( var > 10 ))
{
    # comment
    echo $var;
    # comment
    (( var += 1 ));
}

# ---

until (( var > 10 )); { # comment
    echo $var; (( var += 1 )); # comment
} # comment

# ---

until (( var > 10 )); { # comment
    echo $var; # comment
    (( var += 1 )); # comment
} # comment

# ---

until (( var > 10 )) # comment
{ # comment
    echo $var; # comment
    (( var += 1 )); # comment
} # comment

# ---

until (( var > 10 ))
    echo $(( var += 1 ))
echo done!

# ---

until finished
    echo $(( var += 1 ))
echo done!
