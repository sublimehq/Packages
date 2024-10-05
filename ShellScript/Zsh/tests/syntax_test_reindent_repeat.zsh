# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Zsh.sublime-syntax"

##
## Bash compatible syntax
##

repeat var; do echo $var; (( var += 1 )); done;

# ---

repeat var; do echo $var; (( var += 1 ));
done;

# ---

repeat var; do
    echo $var;
    (( var += 1 ));
done;

# ---

repeat var
do
    echo $var;
    (( var += 1 ));
done;

# ---

repeat
    var
do
    echo $var;
    (( var += 1 ));
done;

##
## ZSH specific syntax
##

repeat var; { echo $var; (( var += 1 )); }

# ---

repeat var; { echo $var; (( var += 1 ));
}

# ---

repeat var; {
    echo $var; (( var += 1 ));
}

# ---

repeat var; {
    echo $var;
    (( var += 1 ));
}

# ---

repeat var
{
    echo $var;
    (( var += 1 ));
}

# ---

repeat var; {
    # comment
    echo $var; (( var += 1 ));
}

# ---

repeat var; {
    # comment
    echo $var;
    # comment
    (( var += 1 ));
}

# ---

repeat var
{
    # comment
    echo $var;
    # comment
    (( var += 1 ));
}

# ---

repeat var; { # comment
    echo $var; (( var += 1 )); # comment
} # comment

# ---

repeat var; { # comment
    echo $var; # comment
    (( var += 1 )); # comment
} # comment

# ---

repeat var # comment
{ # comment
    echo $var; # comment
    (( var += 1 )); # comment
} # comment

# ---

repeat var
    echo $(( var += 1 ))
echo done!
