# SYNTAX TEST reindent "Packages/Perl/Perl.sublime-syntax"

my $asd => {
    foo => (
        "val"
    ),
    bar => {
        "val"
    },
    baz => [
        "val"
    ]
}

if (
    $foo == TRUE
) {
    $foo = FALSE;
} else {
    $foo = TRUE;
    if (
        $bar[
            0
        ] == TRUE
    ) {
        $bar[
            0
        ] = FALSE;
    } else {
        $bar[
            0
        ] = TRUE;
    }
}

