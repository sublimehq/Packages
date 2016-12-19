/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class Foo {

    void Main(string[] args){

        int x = 37;

        // simple nested function
        int[] add(int y) {return x + y;}
///           ^^^ entity.name.function

        T add(int y) {return x + y;};
///       ^^^ entity.name.function
///           ^^^ support.type
///               ^ variable.parameter

        List<int>[] add(int y) {return x + y;};
///                 ^^^ entity.name.function
///                     ^^^ support.type
///                         ^ variable.parameter

        List<T, List<T>> add<T, R>(int y) {return x + y;};
///                      ^^^ entity.name.function
///                                ^^^ support.type
///                                    ^ variable.parameter

        // lambda
        Func<int, string> store = (x, y) => x + y;

        Console.Writeline(add(5));
    }
}
