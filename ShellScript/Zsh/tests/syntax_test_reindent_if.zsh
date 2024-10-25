# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Zsh.sublime-syntax"

##
## Bash compatible syntax
##

if [[ $var == 1 ]]; then echo 1; elif [[ $var == 2 ]]; then echo 2; else echo nothing; fi;

# ---

if [[ $var == 1 ]]; then echo 1; elif [[ $var == 2 ]]; then echo 2; else echo nothing;
fi;

# ---

if [[ $var == 1 ]]; then echo 1; elif [[ $var == 2 ]]; then echo 2;
else echo nothing;
fi;

# ---

if [[ $var == 1 ]]; then echo 1; elif [[ $var == 2 ]]; then
    echo 2;
else echo nothing;
fi;

# ---

if [[ $var == 1 ]]; then echo 1;
elif [[ $var == 2 ]]; then
    echo 2;
else
    echo nothing;
fi;

# ---

if [[ $var == 1 ]]; then
    echo 1;
elif [[ $var == 2 ]]; then
    echo 2;
else
    echo nothing;
fi;

# ---

if [[ $var == 1 ]]
then
    echo 1;
elif [[ $var == 2 ]]
then
    echo 2;
else
    echo nothing;
fi;

# ---

if
    [[ $var == 1 ]]
then
    echo 1;
elif
    [[ $var == 2 ]]
then
    echo 2;
else
    echo nothing;
fi;

# ---

if [[ $var1 == 1 ]]
then
    if [[ $var2 == 1 ]]
    then
        if [[ $var3 == 1 ]]
        then
            echo 1.1.1;
        elif [[ $var3 == 2 ]]
        then
            echo 1.1.2;
        else
            echo 1.1.n;
        fi;
    elif [[ $var2 == 2 ]]
    then
        echo 2.2;
    else
        echo 2.n;
    fi;
elif [[ $var1 == 2 ]]
then
    echo 2;
else
    echo n;
fi;

# ---

if
    if
        if
            [[ $var1 == 1 ]]
        then
            true
        else
            false
        fi
    then
        false
    elif
        [[ $var2 == 1 ]]
    then
        true
    else
        false
    fi
then
    echo success
else
    echo failed
fi

##
## ZSH specific syntax
##

# note: no semicolon between test-commands and `then` required

if [[ $var == 1 ]] then echo 1; elif [[ $var == 2 ]] then echo 2; else echo nothing; fi;

# ---

if [[ $var == 1 ]] then echo 1; elif [[ $var == 2 ]] then echo 2; else echo nothing;
fi;

# ---

if [[ $var == 1 ]] then echo 1; elif [[ $var == 2 ]] then echo 2;
else echo nothing;
fi;

# ---

if [[ $var == 1 ]] then echo 1; elif [[ $var == 2 ]] then
    echo 2;
else echo nothing;
fi;

# ---

if [[ $var == 1 ]] then echo 1;
elif [[ $var == 2 ]] then
    echo 2;
else
    echo nothing;
fi;

# ---

if [[ $var == 1 ]] then
    echo 1;
elif [[ $var == 2 ]] then
    echo 2;
else
    echo nothing;
fi;

# ---

if [[ $var == 1 ]] then { echo 1; } elif [[ $var == 2 ]] then { echo 2; } else { echo nothing; } fi

# ---

if [[ $var == 1 ]] then
    { echo 1; }
elif [[ $var == 2 ]] then
    { echo 2; }
else
    { echo nothing; }
fi

# ---

if [[ $var == 1 ]] then
    {
        echo 1;
    }
elif [[ $var == 2 ]] then
    {
        echo 2;
    }
else
    {
        echo nothing;
    }
fi
