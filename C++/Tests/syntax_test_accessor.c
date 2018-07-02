// SYNTAX TEST "Packages/C++/C.sublime-syntax"

typedef struct _X
{
    int a;
    int b;
} X;

int main()
{
    X x;
    x.
//   ^ punctuation.accessor
}

int main()
{
    X x;
    x..
//   ^^ invalid.illegal - punctuation.accessor
}

int main()
{
    X x;
    x...
//   ^^^ keyword - punctuation.accessor
}

int main()
{
    X* x = malloc(sizeof(X));
    x->
//   ^^ punctuation.accessor
}
