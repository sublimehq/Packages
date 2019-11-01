/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class Foo {
/// <- meta.class storage.type.class
 /// <- meta.class
  /// <- meta.class
///^^^^^^^^ meta.class
///       ^ meta.class.body

    void Main(string[] args) {
/// ^^^^ storage.type
///      ^^^^^^^^^^^^^^^^^^^^^ meta.method
///      ^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
///      ^^^^ entity.name.function
///          ^^^^^^^^^^^^^^^ meta.method.parameters
///          ^ punctuation.section.parameters.begin
///           ^^^^^^ storage.type
///                 ^^ meta.brackets
///                 ^ punctuation.section.brackets.begin
///                  ^ punctuation.section.brackets.end
///                    ^^^^ variable.parameter
///                        ^ punctuation.section.parameters.end
///                          ^ punctuation.section.block.begin

        int x = 37;
///     ^^^ storage.type
///         ^ - entity.name
///           ^ keyword.operator.assignment
///             ^^ constant.numeric.integer.decimal
///               ^ punctuation.terminator

        // simple nested function
        int[] add(int y) {return x + y;}
///     ^^^ storage.type
///        ^^ meta.brackets
///        ^ punctuation.section.brackets.begin
///         ^ punctuation.section.brackets.end
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.body meta.method
///           ^^^ entity.name.function
///              ^^^^^^^ meta.method.parameters
///              ^ punctuation.section.parameters.begin
///               ^^^ storage.type
///                   ^ variable.parameter
///                    ^ punctuation.section.parameters.end
///                      ^^^^^^^^^^^^^^^ meta.method.body meta.method.body
///                      ^ punctuation.section.block.begin
///                       ^^^^^^ keyword.control
///                                ^ keyword.operator
///                                   ^ punctuation.terminator
///                                    ^ punctuation.section.block.end

        T add(int y) {return x + y;};
///     ^ support.type
///       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///       ^^^ entity.name.function
///          ^^^^^^^ meta.method.parameters
///          ^ punctuation.section.parameters.begin
///           ^^^ storage.type
///               ^ variable.parameter
///                ^ punctuation.section.parameters.end
///                  ^^^^^^^^^^^^^^^ meta.method.body
///                   ^^^^^^ keyword.control
///                            ^ keyword.operator
///                               ^ punctuation.terminator
///                                ^ punctuation.section.block.end
///                                 ^ punctuation.terminator

        List<int>[] add(int y) {return x + y;};
///     ^^^^ support.type
///         ^^^^^ meta.generic
///         ^ punctuation.definition.generic.begin
///          ^^^ storage.type
///             ^ punctuation.definition.generic.end
///              ^^ meta.brackets
///              ^ punctuation.section.brackets.begin
///               ^ punctuation.section.brackets.end
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                 ^^^ entity.name.function
///                    ^^^^^^^ meta.method.parameters
///                    ^ punctuation.section.parameters.begin
///                     ^^^ storage.type
///                         ^ variable.parameter
///                          ^ punctuation.section.parameters.end
///                            ^^^^^^^^^^^^^^^ meta.method.body
///                             ^^^^^^ keyword.control
///                                      ^ keyword.operator
///                                         ^ punctuation.terminator
///                                          ^ punctuation.section.block.end
///                                           ^ punctuation.terminator

        List<T, List<T>> add<T, R>(int y) {return x + y;};
///     ^^^^ support.type
///         ^^^^^^^^^^^^ meta.generic
///          ^ support.type
///           ^ punctuation.separator
///                 ^^^ meta.generic meta.generic
///                  ^ support.type
///                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                      ^^^ entity.name.function
///                         ^^^^^^ meta.generic
///                         ^ punctuation.definition.generic.begin
///                          ^ support.type
///                           ^ punctuation.separator
///                             ^ support.type
///                              ^ punctuation.definition.generic.end
///                               ^^^^^^^ meta.method.parameters
///                               ^ punctuation.section.parameters.begin
///                                ^^^ storage.type
///                                    ^ variable.parameter
///                                     ^ punctuation.section.parameters.end
///                                       ^^^^^^^^^^^^^^^ meta.method.body
///                                        ^^^^^^ keyword.control
///                                                 ^ keyword.operator
///                                                    ^ punctuation.terminator
///                                                     ^ punctuation.section.block.end
///                                                      ^ punctuation.terminator

        // lambda
        Func<int, string> store = (x, y) => x + y;
///         ^^^^^^^^^^^^^ meta.generic
///          ^^^ storage.type
///             ^ punctuation.separator
///               ^^^^^^ storage.type
///                     ^ punctuation.definition.generic.end
///                       ^^^^^ variable.other
///                             ^ keyword.operator
///                               ^^^^^^ meta.group
///                               ^ punctuation.section.group.begin
///                                    ^ punctuation.section.group.end

        Console.Writeline(add(5));
///            ^ punctuation.accessor
///             ^^^^^^^^^^^^^^^^^ meta.function-call
///             ^^^^^^^^^ variable.function
///                      ^^^^^^^^ meta.group
///                      ^ punctuation.section.group.begin
///                       ^^^^^^ meta.function-call meta.function-call
///                       ^^^ variable.function
///                          ^^^ meta.group meta.group
///                          ^ punctuation.section.group.begin
///                           ^ constant.numeric.integer.decimal
///                            ^ punctuation.section.group.end
///                             ^ punctuation.section.group.end

        // https://github.com/dotnet/roslyn/pull/2950
        int bin = 0b1001_1010_0001_0100;
///               ^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.binary
///               ^^ punctuation.definition.numeric.base
        int hex = 0x1b_a0_44_fe;
///               ^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal
///               ^^ punctuation.definition.numeric.base
        int dec = 33_554_432;
///               ^^^^^^^^^^ constant.numeric.integer.decimal
        int weird = 1_2__3___4____5_____6______7_______8________9;
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.decimal
        double real = 1_000.111_1e-1_000;
///                   ^^^^^^^^^^^^^^^^^^ constant.numeric.float.decimal
///                        ^ punctuation.separator.decimal.cs
        double real = 1_000e-1_000;
///                   ^^^^^^^^^^^^ constant.numeric.float.decimal
        double dbl = 33_554_432.5_2;
///                  ^^^^^^^^^^^^^^ constant.numeric.float.decimal
        long lng = 33_554_4321L;
///                ^^^^^^^^^^^ constant.numeric.integer.decimal
///                           ^ storage.type.numeric
        bin = _0b1001_1010_0001_0100;
///           ^^^^^^^^^^^^^^^^^^^^^^ variable.other
        bin = 0b1001_1010_0001_0100_;
///                                ^ - constant.numeric.integer.binary
        bin = 0b_1001_1010_0001_0100;
///           ^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.binary
        bin = 0b__1001__1010__0001__0_1_0_0;
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.binary
        hex = _0x1b_a0_44_fe;
///           ^^^^^^^^^^^^^^ variable.other
        hex = 0x_1b_a0_44_fe;
///           ^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal
        int abc = _123;
///               ^^^^ variable.other

        switch (sh) {
            case Shape shape when sh.Area == 0:
///         ^^^^ keyword.control.switch.case
///              ^^^^^ support.type
///                    ^^^^^ variable.other
///                          ^^^^ keyword.control.switch.case.when
///                               ^^ variable.other
///                                 ^ punctuation.accessor.dot
///                                  ^^^^ variable.other
///                                       ^^ keyword.operator
///                                          ^ constant.numeric.integer.decimal
///                                           ^ punctuation.separator.case-statement
                Console.WriteLine($"The shape: {sh.GetType().Name} with no dimensions");
                break;
            case int? example when example == 5:
///         ^^^^ keyword.control.switch.case
///              ^^^ storage.type
///                 ^ storage.type.nullable
///                   ^^^^^^^ variable.other
///                           ^^^^ keyword.control.switch.case.when
///                                ^^^^^^^ variable.other
///                                        ^^ keyword.operator
///                                           ^ constant.numeric.integer.decimal
///                                            ^ punctuation.separator.case-statement
            case Shape<Shape> shape when shape.Area > 0:
///         ^^^^ keyword.control.switch.case
///              ^^^^^ support.type
///                   ^ punctuation.definition.generic.begin
///                    ^^^^^ support.type
///                         ^ punctuation.definition.generic.end
///                           ^^^^^ variable.other
///                                 ^^^^ keyword.control.switch.case.when
///                                      ^^^^^ variable.other
///                                           ^ punctuation.accessor.dot
///                                            ^^^^ variable.other
///                                                 ^ keyword.operator
///                                                   ^ constant.numeric.integer.decimal
///                                                    ^ punctuation.separator.case-statement
        }

        // https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#out-variables
        if (int.TryParse(input, out var quantity))
///                             ^^^ storage.modifier.argument
///                                ^ - storage.modifier.argument
///                                 ^^^ storage.type.variable
///                                     ^^^^^^^^ variable.other
///                                             ^^ punctuation.section.group.end
            WriteLine(quantity);
        else
            WriteLine("Quantity is not a valid integer!");

        Console.WriteLine($"{nameof(quantity)}: {quantity}"); // still valid
///     ^^^^^^^ variable.other
///            ^ punctuation.accessor.dot
///             ^^^^^^^^^ variable.function

        int.TryParse(input, out ref int quantity);
///     ^^^ storage.type
///        ^ punctuation.accessor.dot
///         ^^^^^^^^ variable.function
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
///                 ^ punctuation.section.group.begin
///                         ^^^ storage.modifier.argument
///                             ^^^ storage.modifier.argument
///                                 ^^^ storage.type
///                                     ^^^^^^^^ variable.other
///                                             ^ punctuation.section.group.end
    }
/// ^ meta.class.body meta.method.body punctuation.section.block.end

    // https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#local-functions
    public Task<string> PerformLongRunningWork(string address, int index, string name)
    {
        if (string.IsNullOrWhiteSpace(address))
            throw new ArgumentException(message: "An address is required", paramName: nameof(address));
        if (index < 0)
            throw new ArgumentOutOfRangeException(paramName: nameof(index), message: "The index must be non-negative");
        if (string.IsNullOrWhiteSpace(name))
            throw new ArgumentException(message: "You must supply a name", paramName: nameof(name));

        return longRunningWorkImplementation();

        async Task<string> longRunningWorkImplementation ()
///     ^^^^^ storage.modifier
///           ^^^^ support.type
///               ^ punctuation.definition.generic.begin
///                ^^^^^^ storage.type
///                      ^ punctuation.definition.generic.end
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function
///                                                      ^^ meta.method.parameters
        {
///     ^ punctuation.section.block.begin
///      ^ meta.class.body meta.method.body meta.method.body
            var interimResult = await FirstWork(address);
            var secondResult = await SecondStep(index, name);
            return $"The results are {interimResult} and {secondResult}. Enjoy.";
        }
///     ^ punctuation.section.block.end
///      ^ meta.class.body meta.method.body - meta.method.body meta.method.body
    }

    // https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#ref-locals-and-returns
    public static ref int Find3(int[,] matrix, Func<int, bool> predicate) {
/// ^^^^^^ storage.modifier.access
///        ^^^^^^ storage.modifier
///               ^^^ storage.modifier
///                   ^^^ storage.type
///                       ^^^^^ entity.name.function
///                            ^ punctuation.section.parameters.begin
///                             ^^^ storage.type
///                                ^ punctuation.section.brackets.begin
///                                 ^ punctuation.separator
///                                  ^ punctuation.section.brackets.end
///                                    ^^^^^^ variable.parameter
        for (int i = 0; i < matrix.GetLength(0); i++)
            for (int j = 0; j < matrix.GetLength(1); j++)
                if (predicate(matrix[i, j]))
                    return ref matrix[i, j];
///                 ^^^^^^ keyword.control.flow.return
///                        ^^^ keyword.other
///                            ^^^^^^ variable.other
///                                  ^ punctuation.section.brackets.begin
///                                   ^ variable.other
///                                    ^ punctuation.separator.accessor
///                                      ^ variable.other
///                                       ^ punctuation.section.brackets.end
///                                        ^ punctuation.terminator.statement
        throw new InvalidOperationException("Not found");
    }

    // https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#tuples
    public void TupleTest () {
        var letters = ("a", "b");
///                   ^^^^^^^^^^ meta.group.tuple
///                   ^ punctuation.section.group.begin
///                       ^ punctuation.separator.tuple
///                            ^ punctuation.section.group.end
///                             ^ punctuation.terminator.statement
        var (a, b, c) = (1, 2, 3);
///     ^^^ storage.type.variable
///         ^^^^^^^^^ meta.group.tuple
///          ^ variable.other
///           ^ punctuation.separator.tuple
///             ^ variable.other
///              ^ punctuation.separator.tuple
///                   ^ keyword.operator.assignment - meta.group
///                     ^^^^^^^^^ meta.group.tuple
///                      ^ constant.numeric.integer.decimal
///                       ^ punctuation.separator.tuple
        (string Alpha, string Beta) namedLetters = ("a", "b");
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///     ^ punctuation.section.group.begin
///      ^^^^^^ storage.type
///             ^^^^^ variable.other
///                  ^ punctuation.separator.tuple
///                    ^^^^^^ storage.type
///                           ^^^^ variable.other
///                               ^ punctuation.section.group.end
///                                 ^^^^^^^^^^^^ variable.other
///                                              ^ keyword.operator.assignment
///                                                ^ punctuation.section.group.begin
///                                                    ^ punctuation.separator.tuple
///                                                         ^ punctuation.section.group.end
///                                                          ^ punctuation.terminator.statement

        (SomeType[] Alpha, SomeType<int> Beta) example = (a, b);
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///     ^ punctuation.section.group.begin
///      ^^^^^^^^ support.type
///              ^ punctuation.section.brackets.begin
///               ^ punctuation.section.brackets.end
///                 ^^^^^ variable.other
///                      ^ punctuation.separator.tuple
///                        ^^^^^^^^ support.type
///                                ^ punctuation.definition.generic.begin
///                                 ^^^ storage.type
///                                    ^ punctuation.definition.generic.end
///                                      ^^^^ variable.other
///                                          ^ punctuation.section.group.end
///                                            ^^^^^^^ variable.other
///                                                    ^ keyword.operator.assignment
///                                                      ^^^^^^ meta.group.tuple
///                                                      ^ punctuation.section.group.begin
///                                                       ^ variable.other
///                                                        ^ punctuation.separator.tuple
///                                                           ^ punctuation.section.group.end
///                                                            ^ punctuation.terminator.statement
        var alphabetStart = (Alpha: "a", Beta: "b");
///                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///                         ^ punctuation.section.group.begin
///                          ^^^^^ variable.other
///                               ^ keyword.operator.assignment
///                                    ^ punctuation.separator.tuple
///                                      ^^^^ variable.other
///                                          ^ keyword.operator.assignment
///                                               ^ punctuation.section.group.end
///                                                ^ punctuation.terminator.statement
        var abc = (this as object, input);
///               ^ punctuation.section.group.begin
///                ^^^^ variable.language
///                     ^^ keyword.operator.reflection
///                        ^^^^^^ storage.type
///                              ^ punctuation.separator.tuple
///                                ^^^^^ variable.other
///                                     ^ punctuation.section.group.end
///                                      ^ punctuation.terminator.statement
        var abc = (example.Alpha as SomeType);
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group - meta.group.tuple
///               ^ punctuation.section.group.begin
///                ^^^^^^^ variable.other
///                       ^ punctuation.accessor.dot
///                        ^^^^^ variable.other
///                              ^^ keyword.operator.reflection
///                                 ^^^^^^^^ support.type
///                                         ^ punctuation.section.group.end
///                                          ^ punctuation.terminator.statement
        // https://docs.microsoft.com/en-us/dotnet/csharp/deconstruct
        (string city, _, double area) = QueryCityData("New York City");
///     ^ punctuation.section.group.begin
///      ^^^^^^ storage.type
///             ^^^^ variable.other
///                 ^ punctuation.separator.tuple
///                   ^ variable.language.deconstruction.discard
///                    ^ punctuation.separator.tuple
///                      ^^^^^^ storage.type
///                             ^^^^ variable.other
///                                 ^ punctuation.section.group.end
///                                   ^ keyword.operator.assignment
        (city, population, _) = QueryCityData("New York City");
///     ^ punctuation.section.group.begin
///      ^^^^ variable.other
///          ^ punctuation.separator.tuple
///            ^^^^^^^^^^ variable.other
///                      ^ punctuation.separator.tuple
///                        ^ variable.language.deconstruction
///                         ^ punctuation.section.group.end
///                           ^ keyword.operator.assignment
        var (_, _, _, pop1, _, pop2) = QueryCityDataForYears("New York City", 1960, 2010);
///     ^^^ storage.type.variable
///         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///                                 ^ - meta.group
///         ^ punctuation.definition.group.begin
///          ^ variable.language
///           ^ punctuation.separator.tuple
///             ^ variable.language
///              ^ punctuation.separator.tuple
///                   ^^^^ variable.other
///                       ^ punctuation.separator.tuple
///                         ^ variable.language
///                          ^ punctuation.separator.tuple
///                            ^^^^ variable.other
///                                ^ punctuation.definition.group.end
        (Func<int, int> test1, string test2) = ((int d) => d * 2, 5.ToString());
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///      ^^^^ support.type
///          ^^^^^^^^^^ meta.generic
///                     ^^^^^ variable.other
///                          ^ punctuation.separator.tuple
///                            ^^^^^^ storage.type
///                                   ^^^^^ variable.other
///                                          ^ keyword.operator.assignment - meta.group
///                                            ^ meta.group.tuple punctuation.section.group.begin
///                                             ^^^^^^^^^^^^^^^^ meta.function.anonymous
///                                                             ^ punctuation.separator.tuple - meta.function.anonymous
///                                                               ^ constant.numeric.integer.decimal
///                                                                ^ punctuation.accessor.dot
///                                                                 ^^^^^^^^ variable.function
///                                                                         ^ punctuation.section.group.begin
///                                                                          ^ punctuation.section.group.end
///                                                                           ^ punctuation.section.group.end
        (a, b) = (new Random().Next(), 15);
///               ^^^ keyword.operator.new
///                   ^^^^^^ support.type
///                                  ^ punctuation.separator.tuple
///                                    ^^ meta.group.tuple constant.numeric.integer.decimal
///                                      ^ punctuation.section.group.end

        var dic = new Dictionary<string, int> { ["Bob"] = 32, ["Alice"] = 17 };
        foreach (var (name, age) in dic.Select(x => (x.Key, x.Value)))
///              ^^^ storage.type.variable
///                  ^^^^^^^^^^^ meta.group.tuple
///                  ^ punctuation.definition.group.begin
///                   ^^^^ variable.other
///                       ^ punctuation.separator.tuple
///                         ^^^ variable.other
///                            ^ punctuation.definition.group.end
///                              ^^ keyword.control.flow
        {
            Console.WriteLine($"{name} is {age} years old.");
        }

        var positions = new List<(int, int)> { (0, 1), (1, 2), (2, 4) };
        foreach (var(x, y) in positions)
///             ^ punctuation.section.group.begin
///              ^^^storage.type.variable
///                 ^^^^^^ meta.group.tuple
///                 ^ punctuation.definition.group.begin
///                  ^ variable.other
///                   ^ punctuation.separator.tuple
///                     ^ variable.other
///                      ^ punctuation.definition.group.end
///                        ^^ keyword.control.flow
///                           ^^^^^^^^^ variable.other
///                                    ^ punctuation.section.group.end
        {
            Console.WriteLine($"x={x} y={y}");
        }
    }

    private static (int Max, int Min) Range(IEnumerable<int> numbers)
/// ^^^^^^^ storage.modifier.access
///         ^^^^^^ storage.modifier
///                ^ punctuation.section.group.begin
///                 ^^^ storage.type
///                     ^^^ variable.other
///                        ^ punctuation.separator.tuple
///                          ^^^ storage.type
///                              ^^^ variable.other
///                                 ^ punctuation.section.group.end
///                                   ^^^^^ entity.name.function - entity.name.function.constructor
///                                        ^ punctuation.section.parameters.begin
///                                         ^^^^^^^^^^^ support.type
///                                                    ^ punctuation.definition.generic.begin
///                                                     ^^^ storage.type
///                                                        ^ punctuation.definition.generic.end
///                                                          ^^^^^^^ variable.parameter
///                                                                 ^ punctuation.section.parameters.end
    {
        int min = int.MaxValue;
        int max = int.MinValue;
        foreach(var n in numbers)
        {
            min = (n < min) ? n : min;
            max = (n > max) ? n : max;
        }
        return (max, min);
///     ^^^^^^ keyword.control.flow.return
///            ^ punctuation.section.group.begin
///             ^^^ variable.other
///                ^ punctuation.separator.tuple
///                  ^^^ variable.other
///                     ^ punctuation.section.group.end
///                      ^ punctuation.terminator.statement

        Func<string, (string example1, int Example2)> test = s => (example1: "hello", Example2: "world");
///     ^^^^ support.type
///         ^ punctuation.definition.generic.begin
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///                  ^ punctuation.section.group.begin
///                   ^^^^^^ storage.type
///                          ^^^^^^^^ variable.other
///                                  ^ punctuation.separator.tuple
///                                    ^^^ storage.type
///                                        ^^^^^^^^ variable.other
///                                                ^ punctuation.section.group.end
///                                                 ^ punctuation.definition.generic.end
///                                                   ^^^^ variable.other
///                                                        ^ keyword.operator.assignment.variable
///                                                          ^ variable.parameter
///                                                            ^^ storage.type.function.lambda
///                                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///                                                               ^ punctuation.section.group.begin
///                                                                ^^^^^^^^ variable.other
///                                                                        ^ keyword.operator.assignment
///                                                                                 ^ punctuation.separator
///                                                                                   ^^^^^^^^ variable.other
///                                                                                           ^ keyword.operator.assignment
///                                                                                                    ^ punctuation.section.group.end
///                                                                                                     ^ punctuation.terminator.statement
    }

    public void Deconstruct(out string firstName, out string lastName, out int age)
    {
        firstName = FirstName;
        lastName = LastName;
        age = Age;
    }

    public void Example((int foo, float bar) val, (int foo, string bar) otherVal) {}
///             ^^^^^^^ entity.name.function
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters
///                    ^ punctuation.section.parameters.begin
///                     ^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///                     ^ punctuation.section.group.begin
///                      ^^^ storage.type
///                          ^^^ variable.other
///                             ^ punctuation.separator.tuple
///                               ^^^^^ storage.type
///                                     ^^^ variable.other
///                                        ^ punctuation.section.group.end
///                                          ^^^ variable.parameter
///                                             ^ punctuation.separator.parameter.function
///                                               ^^^^^^^^^^^^^^^^^^^^^ meta.group.tuple
///                                                                     ^^^^^^^^ variable.parameter
///                                                                             ^ punctuation.section.parameters.end
    public void Example((int , float ) val, (int, string) otherVal) {}
///             ^^^^^^^ entity.name.function
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters
///                     ^^^^^^^^^^^^^^ meta.group.tuple
///                      ^^^ storage.type
///                          ^ punctuation.separator.tuple
///                            ^^^^^ storage.type
///                                  ^ punctuation.section.group.end
///                                    ^^^ variable.parameter - meta.group.tuple
///                                       ^ punctuation.separator.parameter.function
///                                         ^^^^^^^^^^^^^ meta.group.tuple
///                                         ^ punctuation.section.group.begin
///                                          ^^^ storage.type
///                                             ^ punctuation.separator.tuple
///                                               ^^^^^^ storage.type
///                                                     ^ punctuation.section.group.end
///                                                       ^^^^^^^^ variable.parameter
///                                                               ^ punctuation.section.parameters.end
}
/// <- meta.class.body punctuation.section.block.end

public readonly struct S
/// ^^ storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^^^^ storage.type.struct
///                    ^ entity.name.struct
{
/// <- meta.struct.body meta.block punctuation.section.block.begin
    public readonly int Age;
/// ^^^^^^ storage.modifier.access
///        ^^^^^^^^ storage.modifier
///                 ^^^ storage.type
///                     ^^^ variable.other.member
    public string Name { get; }

    public readonly int X, Y;    // All fields must be readonly
///                     ^ variable.other.member
///                      ^ punctuation.separator.variables
///                        ^ variable.other.member
///                         ^ punctuation.terminator.statement

    public S(int age, string name)
    {
        this.Age = age;
        this.Name = name;
    }

    public S(S other)
    {
        this = other;
    }
}

// "private protected" is now a valid modifier. It's equivalent to protected, except that it can only be
// accessed inside the current assembly.
class BaseClass           { private protected void Foo() {} }
///                         ^^^^^^^ storage.modifier.access
///                                 ^^^^^^^^^ storage.modifier.access
///                                           ^^^^ storage.type
///                                                ^^^ entity.name.function
class Derived : BaseClass { void Bar() => Foo();            }

// You can now place the "in" keyword before parameters to prevent them from being modified. This is
// particularly useful with structs, because the compiler avoids the overhead of having to copy the value:
void Foo (in string s, in int x, in Point point)
///^ storage.type
///  ^^^ entity.name.function
///       ^^ storage.modifier.parameter
///          ^^^^^^ storage.type
///                 ^ variable.parameter
///                  ^ punctuation.separator.parameter
{
    // s = "new";  // error
    // x++;        // error
    // point.X++;  // error
}
// Note that you don't specify the 'in' modifier when calling the method:
void TestFoo() => Foo ("hello", 123, new Point (2, 3));

// https://msdn.microsoft.com/en-us/magazine/mt814808.aspx
Span<byte> bytes = length <= 128 ? stackalloc byte[length] : new byte[length];
///                                ^^^^^^^^^^ keyword.other
///                                           ^^^^ variable.other
bytes[0] = 42;
bytes[1] = 43;
Assert.Equal(42, bytes[0]);
Assert.Equal(43, bytes[1]);
bytes[2] = 44; // throws IndexOutOfRangeException

public readonly ref struct Span<T>
///    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
///  ^ storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^ storage.modifier
///                 ^^^^^^ storage.type.struct
///                        ^^^^ entity.name.struct
{
    private readonly ref T _pointer;
/// ^^^^^^^ storage.modifier.access
///         ^^^^^^^^ storage.modifier
///                  ^^^ storage.modifier
///                      ^ support.type
///                        ^^^^^^^^ variable.other.member
    private readonly int _length;
}

public delegate void SpanAction<T, in TArg>(Span<T> span, TArg arg);
///    ^^^^^^^^ storage.type.delegate
///             ^^^^ storage.type
///                  ^^^^^^^^^^ variable.other.member.delegate
///                            ^^^^^^^^^^^^ meta.generic
///                             ^ support.type
///                              ^ punctuation.separator.type
///                                ^^ storage.modifier
///                                   ^^^^ support.type

void Test ()
{
    int[] array = { 1, 15, -39, 0, 7, 14, -12 };
///                 ^ constant.numeric.integer.decimal
///                  ^ punctuation.separator.array-element
///                                            ^ punctuation.terminator.statement
    ref int place = ref Find (7, array); // aliases 7's place in the array
/// ^^^ storage.modifier
///     ^^^ storage.type
///         ^^^^^ variable.other
///               ^ keyword.operator.assignment.variable
///                 ^^^ keyword.other
///                     ^^^^ variable.function
    place = 9; // replaces 7 with 9 in the array
    Console.WriteLine (array [4]); // prints 9
}

public ref int Find (int number, int[] numbers)
/// ^^ storage.modifier.access
///    ^^^ storage.modifier
///        ^^^ storage.type
///            ^^^^ entity.name.function
{
    for (int i = 0; i < numbers.Length; i++)
    {
        if (numbers [i] == number)
        {
            return ref numbers [i]; // return the storage location, not the value
///         ^^^^^^ keyword.control.flow.return
///                ^^^ keyword.other
///                    ^^^^^^^ variable.other
        }
    }
    throw new IndexOutOfRangeException ($"{nameof (number)} not found");
}

public class MyClass {
    object obj;
    public MyClass () => obj = null;
///        ^^^^^^^ meta.method.constructor entity.name.function.constructor
///               ^^^^^^^^^^^^^^^^^ meta.class.body meta.block meta.method
///                   ^^ storage.type.function
///                      ^^^ variable.other
///                          ^ keyword.operator.assignment
///                            ^^^^ constant.language
///                                ^ punctuation.terminator.statement - meta.method
}
/// <- meta.class.body meta.block punctuation.section.block.end

public class Person // https://stackoverflow.com/a/41974829/4473405
{
    public string Name { get; }
    public int Age { get; }

    public Person(string name, int age) => (Name, Age) = (name, age);
/// ^^^^^^ storage.modifier.access
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.constructor
///        ^^^^^^ entity.name.function.constructor
///              ^ punctuation.section.parameters.begin
///               ^^^^^^ storage.type
///                      ^^^^ variable.parameter
///                          ^ punctuation.separator.parameter.function
///                            ^^^ storage.type
///                                ^^^ variable.parameter
///                                   ^ punctuation.section.parameters.end
///                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                                     ^^ storage.type.function
///                                        ^ meta.group punctuation.section.group.begin
///                                         ^^^^ meta.group variable.other
///                                             ^ meta.group punctuation.separator.tuple
///                                               ^^^ meta.group variable.other
///                                                  ^ meta.group punctuation.section.group.end
///                                                    ^ keyword.operator.assignment
///                                                      ^ meta.group punctuation.section.group.begin
///                                                       ^^^^ meta.group variable.other
///                                                           ^ punctuation.separator.tuple
///                                                             ^^^ meta.group variable.other
///                                                                ^ meta.group punctuation.section.group.end
///                                                                 ^ punctuation.terminator.statement
}
