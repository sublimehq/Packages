// SYNTAX TEST "Packages/C++/C++.sublime-syntax"

namespace N {

class X
{
  public:
    int a;
    int b;
};

class Y : public X
{
  public:
    int c;
}

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

int main()
{
    N::Y y;
    y.X::
//   ^ punctuation.accessor
//     ^^ punctuation.accessor
}

int main()
{
    N::Y* y = new Y();
    y->X::
//   ^^ punctuation.accessor
//      ^^ punctuation.accessor
}
