// SYNTAX TEST "Packages/C++/C++.sublime-syntax"

namespace N {

class X
{
  public:
    int a;
    int b;
};

} // namespace N

int main()
{
    N::
//   ^^ punctuation.accessor
}

int main()
{
    N::X x;
    x.
//   ^ punctuation.accessor
}

int main()
{
    N::X x;
    x..
//   ^^ - punctuation.accessor
}

int main()
{
    N::X x;
    x...
//   ^^^ keyword - punctuation.accessor
}

int main()
{
    N::X* x = new X();
    x->
//   ^^ punctuation.accessor
}
