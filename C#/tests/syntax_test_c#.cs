// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class X
// ^ keyword.declaration.class
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
//                    ^ meta.number.integer.decimal constant.numeric.value
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
    //                        ^^^^ meta.number.float.decimal.cs
    //                        ^^^ constant.numeric.value.cs
    //                         ^ punctuation.separator.decimal.cs
    //                           ^ constant.numeric.suffix.cs
    public decimal decimal2 = 2.0M;
    //                        ^^^^ meta.number.float.decimal.cs
    //                        ^^^ constant.numeric.value.cs
    //                         ^ punctuation.separator.decimal.cs
    //                           ^ constant.numeric.suffix.cs
    public double double1 = 1.0d;
    //                      ^^^^ meta.number.float.decimal.cs
    //                      ^^^ constant.numeric.value.cs
    //                       ^ punctuation.separator.decimal.cs
    //                         ^ constant.numeric.suffix.cs
    public double double2 = 2.0D;
    //                      ^^^^ meta.number.float.decimal.cs
    //                      ^^^ constant.numeric.value.cs
    //                       ^ punctuation.separator.decimal.cs
    //                         ^ constant.numeric.suffix.cs
    public double double3 = 2D;
    //                      ^^ meta.number.float.decimal.cs
    //                      ^ constant.numeric.value.cs
    //                       ^ constant.numeric.suffix.cs
    public float float1 = 1.0f;
    //                    ^^^^ meta.number.float.decimal.cs
    //                    ^^^ constant.numeric.value.cs
    //                     ^ punctuation.separator.decimal.cs
    //                       ^ constant.numeric.suffix.cs
    public float float2 = 2.0F;
    //                    ^^^^ meta.number.float.decimal.cs
    //                    ^^^ constant.numeric.value.cs
    //                     ^ punctuation.separator.decimal.cs
    //                       ^ constant.numeric.suffix.cs
    public double double3 = 2f;
    //                      ^^ meta.number.float.decimal.cs
    //                      ^ constant.numeric.value.cs
    //                       ^ constant.numeric.suffix.cs
    public long long1 = 1l;
    //                  ^^ meta.number.integer.decimal.cs
    //                  ^ constant.numeric.value.cs
    //                   ^ constant.numeric.suffix.cs
    public long long2 = 2L;
    //                  ^^ meta.number.integer.decimal.cs
    //                  ^ constant.numeric.value.cs
    //                   ^ constant.numeric.suffix.cs
    public ulong ulong1 = 1ul;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong2 = 2UL;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong3 = 3lu;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong4 = 4LU;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong5 = 5uL;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong6 = 6Ul;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong7 = 7lU;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong ulong8 = 8Lu;
    //                    ^^^ meta.number.integer.decimal.cs
    //                    ^ constant.numeric.value.cs
    //                     ^^ constant.numeric.suffix.cs
    public ulong bad = 1UU;
    //                  ^ constant.numeric.suffix.cs
    //                   ^ - constant.numeric.suffix.cs
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

// https://github.com/sublimehq/Packages/issues/4187
public class Program {
    public static int Main (string [] args)
    {
        var xml = new XmlDocument ();
        var outcome = xml.SelectSingleNode ("/whatever")?.Attributes? ["nope"];
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
//      ^^^ storage.type.variable.cs
//          ^^^^^^^ variable.other.cs
//                  ^ keyword.operator.assignment.variable.cs
//                    ^^^ variable.other.cs
//                       ^ punctuation.accessor.dot.cs
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                        ^^^^^^^^^^^^^^^^ variable.function.cs
//                                         ^^^^^^^^^^^^^ meta.group.cs
//                                         ^ punctuation.section.group.begin.cs
//                                          ^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
//                                          ^ punctuation.definition.string.begin.cs
//                                                    ^ punctuation.definition.string.end.cs
//                                                     ^ punctuation.section.group.end.cs
//                                                      ^^ punctuation.accessor.null-coalescing.cs
//                                                        ^^^^^^^^^^ variable.other.cs
//                                                                  ^ keyword.operator.null-coalescing.cs
//                                                                    ^^^^^^^^ meta.brackets.cs
//                                                                    ^ punctuation.section.brackets.begin.cs
//                                                                     ^^^^^^ meta.string.cs string.quoted.double.cs
//                                                                     ^ punctuation.definition.string.begin.cs
//                                                                          ^ punctuation.definition.string.end.cs
//                                                                           ^ punctuation.section.brackets.end.cs
//                                                                            ^ punctuation.terminator.statement.cs
        if (outcome is not null) {
            Console.WriteLine ("true");
        } else {
//^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
//^^^^^^^ meta.block.cs
//      ^ punctuation.section.block.end.cs
//        ^^^^^ keyword.control.conditional.else.cs
//             ^ meta.block.cs punctuation.section.block.begin.cs
            Console.WriteLine ("false");
        }
        return 0;
    }
}

[Obsolete]
class C {
    [Obsolete]
    event EventHandler E {
        [Obsolete]
//^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.block.cs
//      ^^^^^^^^^^ meta.annotation.cs
//      ^ punctuation.definition.annotation.begin.cs
//       ^^^^^^^^ variable.annotation.cs
//               ^ punctuation.definition.annotation.end.cs
        add {}
//^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.block.cs
//      ^^^^ meta.method.cs
//      ^^^ keyword.declaration.function.accessor.add.cs
//          ^^ meta.method.body.cs meta.block.cs
//          ^ punctuation.section.block.begin.cs
//           ^ punctuation.section.block.end.cs
        [Obsolete]
        remove {}
    }
}
