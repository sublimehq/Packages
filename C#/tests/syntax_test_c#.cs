// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class X
// ^ storage.type.class
{
    X () {
//  ^ entity.name.function.constructor
//  ^^^^ meta.method
    }

    X (string test) : base () {
//  ^ entity.name.function.constructor
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.constructor
//  ^^^^^^^^^^^^^^^ meta.method.constructor - meta.method.constructor.prebody
//                    ^^^^ variable.language
//                  ^^^^^^^^^^ meta.method.constructor.prebody
//                         ^ meta.group punctuation.section.group.begin
//                          ^ meta.group punctuation.section.group.end
    }

    [Usage("Foo bar")]
//  ^^^^^^^^^^^^^^^^^^ meta.annotation
    // ^ variable.annotation
    void Run([Usage("help text")] int x, int y)
//  ^^^^ storage.type
    //    ^ entity.name.function
    //        ^^^^^ variable.annotation
    //                 ^ string.quoted.double
    //                             ^ storage.type
    //                                    ^ storage.type
    {
    }
}

string verbatim = @"This is a test "" of a verbatim string literal - C:\User";
//                ^^ string.quoted.double.raw punctuation.definition.string.begin
//                                 ^^ constant.character.escape
//                                                                     ^ string.quoted.double.raw - constant
//                                                                          ^ string.quoted.double.raw punctuation.definition.string.end

class A
{
   public A(int x, int y) {}
   // ^ storage.modifier
   //     ^ entity.name.function.constructor
}
class B: A
{
   public B(int x, int y): base(x + y, x - y) {}
   //                       ^ variable.language
}


public class GenericList<T>
{
    void Add(T input) { }
}

class TestGenericList
{
    private class ExampleClass { }
    static void Main()
    {
        GenericList<int> list1 = new GenericList<int>();
        //           ^ storage.type

        GenericList<string> list2 = new GenericList<string>();

        GenericList<ExampleClass> list3 = new GenericList<ExampleClass>();

        string hello, wow = "test", test;
//      ^^^^^^ storage.type
//             ^^^^^ variable.other
//                  ^ punctuation.separator.variables
//                    ^^^ variable.other
//                        ^ keyword.operator.assignment
//                          ^^^^^^ string.quoted.double
//                                ^ punctuation.separator.variables
//                                  ^^^^ variable.other
//                                      ^ punctuation.terminator.statement
        System . String test1;
//      ^^^^^^ support.type
//             ^ punctuation.accessor.dot
//               ^^^^^^ support.type
//                      ^^^^^ variable.other
        List <int ?> . Enumerator a;
//      ^^^^ support.type
//           ^ punctuation.definition.generic.begin
//            ^^^ storage.type
//                ^ storage.type.nullable
//                 ^ punctuation.definition.generic.end
//                   ^ punctuation.accessor.dot.namespace
//                     ^^^^^^^^^^ support.type
//                                ^ variable.other
        int ? test2 = 4;
//      ^^^ storage.type
//          ^ storage.type.nullable
//            ^^^^^ variable.other
//                  ^ keyword.operator.assignment.variable
//                    ^ constant.numeric.integer.decimal
    }
}

public partial class Employee
//     ^ storage.modifier
//                   ^ entity.name.class
{
    public void DoWork()
    {
        var group = MakeGroup();
        //  ^^^^^ variable.other.cs - keyword

        var contents1 = group.GetContents();
        //              ^^^^^ variable.other.cs - keyword

        var contents2 = @group.GetContents();
        //              ^^^^^^ variable.other.cs - keyword

        var @void = MakeGroup();
        //  ^^^^^ variable.other.cs - keyword

        var void = MakeGroup();
        //  ^^^^ invalid.illegal - variable - keyword

        var subvoid1 = void.GetContents();
        //             ^^^^ - variable # Technically illegal in this context, but at least it's not marked as a variable.

        var subvoid2 = @void.GetContents();
        //             ^^^^^ variable.other.cs - keyword

        var msg = from + " " + to;
        //        ^^^^ variable.other.cs - keyword
    }
}

public class Coo
{
    public Object text = ObjectMaker.MakeSomeText ("In order to publish your text, you need to do some texty things 'Like this' and then say hello.");
    //                               ^ variable.function
    //                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
    //                                                                                                                                              ^ - string
    public Vector curves;
    //            ^ variable.other.member
    int Zoo()
    //  ^ entity.name.function
    {}
}

class Syntax
{
    public decimal decimal1 = 1.0m;
    //                        ^^^^ constant.numeric.float.decimal
    //                         ^ punctuation.separator.decimal.cs
    //                           ^ storage.type.numeric
    public decimal decimal2 = 2.0M;
    //                        ^^^^ constant.numeric.float.decimal
    //                         ^ punctuation.separator.decimal.cs
    //                           ^ storage.type.numeric
    public double double1 = 1.0d;
    //                      ^^^^ constant.numeric.float.decimal
    //                       ^ punctuation.separator.decimal.cs
    //                         ^ storage.type.numeric
    public double double2 = 2.0D;
    //                      ^^^^ constant.numeric.float.decimal
    //                       ^ punctuation.separator.decimal.cs
    //                         ^ storage.type.numeric
    public double double3 = 2D;
    //                      ^^ constant.numeric.float.decimal
    //                       ^ storage.type.numeric
    public float float1 = 1.0f;
    //                    ^^^^ constant.numeric.float.decimal
    //                     ^ punctuation.separator.decimal.cs
    //                       ^ storage.type.numeric
    public float float2 = 2.0F;
    //                    ^^^^ constant.numeric.float.decimal
    //                     ^ punctuation.separator.decimal.cs
    //                       ^ storage.type.numeric
    public double double3 = 2f;
    //                      ^^ constant.numeric.float.decimal
    //                       ^ storage.type.numeric
    public long long1 = 1l;
    //                  ^^ constant.numeric
    //                   ^ storage.type.numeric
    public long long2 = 2L;
    //                  ^^ constant.numeric
    //                   ^ storage.type.numeric
    public ulong ulong1 = 1ul;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong2 = 2UL;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong3 = 3lu;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong4 = 4LU;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong5 = 5uL;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong6 = 6Ul;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong7 = 7lU;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong ulong8 = 8Lu;
    //                    ^^^ constant.numeric
    //                     ^^ storage.type.numeric
    public ulong bad = 1UU;
    //                   ^ - storage.type.numeric
}

class Car
{
    ~Car() /* test */ // destructor
//  ^^^^ entity.name.function.destructor
    {
    }
}

public interface IObjectRepository
{
    bool CanGetObjects(IGetObjectsRequest request);
    dynamic GetObjects(IGetObjectsRequest request);
//  ^^^^^^^ support.type
//          ^^^^^^^^^^ entity.name.function
//                                                ^ punctuation.terminator
}
