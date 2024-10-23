# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Bash.sublime-syntax"

# ---

case $var in foo) echo yes ;; *) echo no ;; esac

# ---

case $var in
foo)
    echo yes
    ;;
*)
    echo no
    ;;
esac

# ---

case
    $var
in
foo)
    echo yes
    ;;
*)
    echo no
    ;;
esac

# ---

case          # comment
    $var      # comment
in            # comment
foo)          # comment
    echo yes  # comment
    ;;        # comment
*)            # comment
    echo no   # comment
    ;;        # comment
esac          # comment

# ---

case $var1 in
1)
    case $var2 in
    1)
        # comment
        case $var3 in
        1)
            # comment
            echo 1.1.1
            ;;
        *)
            # comment
            echo 1.1.n
            ;;
        esac
        ;;
    *)
        case $var3 in
        1) # comment
            echo 1.n.1
            ;;
        *) # comment
            echo 1.n.n
            ;;
        esac && foo
        ;;
    esac > foo
    ;;
*)
    case $var2 in
    1)
        case $var3 in
        1)
            echo n.1.1
            ;;
        *)
            echo n.1.n
            ;;
        esac
        ;;
    *)
        case $var3 in
        1)
            echo n.n.1
            ;;
        *)
            echo n.n.n
            ;;
        esac
        ;;
    esac
    ;;
esac

