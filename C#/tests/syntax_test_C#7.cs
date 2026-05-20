/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class Foo {
/// <- meta.class keyword.declaration.class
 /// <- meta.class
  /// <- meta.class
///^^^^^^^^ meta.class
///       ^ meta.class.body

    public readonly double value;
/// ^^^^^^ storage.modifier.access
///        ^^^^^^^^ storage.modifier
///                 ^^^^^^ storage.type
///                        ^^^^^ variable.other.member

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
///             ^^ meta.number.integer.decimal constant.numeric.value
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
///                                ^ keyword.operator.arithmetic
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
///                            ^ keyword.operator.arithmetic
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
///                                      ^ keyword.operator.arithmetic
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
///                          ^ variable.parameter.type
///                           ^ punctuation.separator
///                             ^ variable.parameter.type
///                              ^ punctuation.definition.generic.end
///                               ^^^^^^^ meta.method.parameters
///                               ^ punctuation.section.parameters.begin
///                                ^^^ storage.type
///                                    ^ variable.parameter
///                                     ^ punctuation.section.parameters.end
///                                       ^^^^^^^^^^^^^^^ meta.method.body
///                                        ^^^^^^ keyword.control
///                                                 ^ keyword.operator.arithmetic
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
///                             ^ keyword.operator.assignment
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
///                           ^ meta.number.integer.decimal constant.numeric.value
///                            ^ punctuation.section.group.end
///                             ^ punctuation.section.group.end

        // https://github.com/dotnet/roslyn/pull/2950
        int bin = 0b1001_1010_0001_0100;
///               ^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary.cs
///               ^^ constant.numeric.base.cs
///                 ^^^^^^^^^^^^^^^^^^^ constant.numeric.value.cs
        int hex = 0x1b_a0_44_fe;
///               ^^^^^^^^^^^^^ meta.number.integer.hexadecimal.cs
///               ^^ constant.numeric.base.cs
///                 ^^^^^^^^^^^ constant.numeric.value.cs
        int dec = 33_554_432;
///               ^^^^^^^^^^ meta.number.integer.decimal.cs constant.numeric.value.cs
        int weird = 1_2__3___4____5_____6______7_______8________9;
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.decimal.cs constant.numeric.value.cs
        double real = 1_000.111_1e-1_000;
///                   ^^^^^^^^^^^^^^^^^^ meta.number.float.decimal.cs
///                   ^^^^^^^^^^^ constant.numeric.value.cs
///                        ^ punctuation.separator.decimal.cs
///                              ^^^^^^^ constant.numeric.value.exponent.cs
        double real = 1_000e-1_000;
///                   ^^^^^^^^^^^^ meta.number.float.decimal.cs
///                   ^^^^^ constant.numeric.value.cs
///                        ^^^^^^^ constant.numeric.value.exponent.cs
        double dbl = 33_554_432.5_2;
///                  ^^^^^^^^^^^^^^ meta.number.float.decimal.cs constant.numeric.value.cs
///                            ^ punctuation.separator.decimal.cs
        long lng = 33_554_4321L;
///                ^^^^^^^^^^^ meta.number.integer.decimal.cs
///                ^^^^^^^^^^^ constant.numeric.value.cs
///                           ^ constant.numeric.suffix.cs
        bin = _0b1001_1010_0001_0100;
///           ^^^^^^^^^^^^^^^^^^^^^^ variable.other
        bin = 0b1001_1010_0001_0100_;
///                                ^ - meta.number.integer.binary
        bin = 0b_1001_1010_0001_0100;
///           ^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary
        bin = 0b__1001__1010__0001__0_1_0_0;
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary
        hex = _0x1b_a0_44_fe;
///           ^^^^^^^^^^^^^^ variable.other
        hex = 0x_1b_a0_44_fe;
///           ^^^^^^^^^^^^^^ meta.number.integer.hexadecimal
        int abc = _123;
///               ^^^^ variable.other
        float abc = _0.5;
///                 ^^ variable.other
///                   ^ punctuation.accessor.dot.cs
///                    ^ meta.number.integer.decimal.cs constant.numeric.value.cs

        switch (sh) {
            case Shape shape when sh.Area == 0:
///         ^^^^ keyword.control.conditional.case
///              ^^^^^ support.type
///                    ^^^^^ variable.other
///                          ^^^^ keyword.control.conditional.when
///                               ^^ variable.other
///                                 ^ punctuation.accessor.dot
///                                  ^^^^ variable.other
///                                       ^^ keyword.operator.comparison
///                                          ^ meta.number.integer.decimal constant.numeric.value
///                                           ^ punctuation.separator.colon
                Console.WriteLine($"The shape: {sh.GetType().Name} with no dimensions");
                break;
            case int? example when example == 5:
///         ^^^^ keyword.control.conditional.case
///              ^^^ storage.type
///                 ^ storage.type.nullable
///                   ^^^^^^^ variable.other
///                           ^^^^ keyword.control.conditional.when
///                                ^^^^^^^ variable.other
///                                        ^^ keyword.operator.comparison
///                                           ^ meta.number.integer.decimal constant.numeric.value
///                                            ^ punctuation.separator.colon
            case Shape<Shape> shape when shape.Area > 0:
///         ^^^^ keyword.control.conditional.case
///              ^^^^^ support.type
///                   ^ punctuation.definition.generic.begin
///                    ^^^^^ support.type
///                         ^ punctuation.definition.generic.end
///                           ^^^^^ variable.other
///                                 ^^^^ keyword.control.conditional.when
///                                      ^^^^^ variable.other
///                                           ^ punctuation.accessor.dot
///                                            ^^^^ variable.other
///                                                 ^ keyword.operator.comparison
///                                                   ^ meta.number.integer.decimal constant.numeric.value
///                                                    ^ punctuation.separator.colon
        }

        // https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#out-variables
        if (int.TryParse(input, out var quantity))
///                             ^^^ storage.modifier.argument
///                                ^ - storage.modifier.argument
///                                 ^^^ storage.type
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
///                        ^^^ storage.modifier.cs
///                            ^^^^^^ variable.other
///                                  ^ punctuation.section.brackets.begin
///                                   ^ variable.other
///                                    ^ punctuation.separator.comma
///                                      ^ variable.other
///                                       ^ punctuation.section.brackets.end
///                                        ^ punctuation.terminator.statement
        throw new InvalidOperationException("Not found");
    }

    // https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#tuples

    public void testTupleLiterals()
    {
        var letters = ("a", "b");
///                   ^^^^^^^^^^ meta.sequence.tuple
///                   ^ punctuation.section.sequence.begin
///                       ^ punctuation.separator.comma
///                            ^ punctuation.section.sequence.end
///                             ^ punctuation.terminator.statement

        var alphabetStart = (Alpha: "a", Beta: "b");
///                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                         ^ punctuation.section.sequence.begin.cs
///                          ^^^^^ variable.other.member.cs
///                               ^ keyword.operator.assignment.cs
///                                 ^^^ meta.string.cs string.quoted.double.cs
///                                 ^ punctuation.definition.string.begin.cs
///                                   ^ punctuation.definition.string.end.cs
///                                    ^ punctuation.separator.comma.cs
///                                      ^^^^ variable.other.member.cs
///                                          ^ keyword.operator.assignment.cs
///                                            ^^^ meta.string.cs string.quoted.double.cs
///                                            ^ punctuation.definition.string.begin.cs
///                                              ^ punctuation.definition.string.end.cs
///                                               ^ punctuation.section.sequence.end.cs
///                                                ^ punctuation.terminator.statement.cs

        var abc = (this as object, input);
///               ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///               ^ punctuation.section.sequence.begin.cs
///                ^^^^ variable.language.this.cs
///                     ^^ keyword.operator.cast.cs
///                        ^^^^^^ storage.type.cs
///                              ^ punctuation.separator.comma.cs
///                                ^^^^^ variable.other.cs
///                                     ^ punctuation.section.sequence.end.cs
///                                      ^ punctuation.terminator.statement.cs

        var abc = (example.Alpha as SomeType);
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///               ^ punctuation.section.group.begin.cs
///                ^^^^^^^ variable.other.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^ variable.other.cs
///                              ^^ keyword.operator.cast.cs
///                                 ^^^^^^^^ support.type.cs
///                                         ^ punctuation.section.group.end.cs
///                                          ^ punctuation.terminator.statement.cs
        var abc = (any<T>(), fn())
///               ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///               ^ punctuation.section.sequence.begin.cs
///                ^^^^^^ meta.function-call.identifier.cs
///                ^^^ variable.function.cs
///                   ^^^ meta.generic.cs
///                   ^ punctuation.definition.generic.begin.cs
///                    ^ support.type.cs
///                     ^ punctuation.definition.generic.end.cs
///                      ^^ meta.function-call.arguments.cs meta.group.cs
///                      ^ punctuation.section.group.begin.cs
///                       ^ punctuation.section.group.end.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^ meta.function-call.identifier.cs variable.function.cs
///                            ^^ meta.function-call.arguments.cs meta.group.cs
///                            ^ punctuation.section.group.begin.cs
///                             ^ punctuation.section.group.end.cs
///                              ^ punctuation.section.sequence.end.cs
    }

    (vec3, vec3 vec) testTupleFunctionDefinitions()
    {
        (vec3, vec3) FuncName(in int i, in vec3 vec) => (ZERO3, ONE3);
///     ^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^^ support.type.cs
///                ^ punctuation.section.sequence.end.cs
///                  ^^^^^^^^ meta.method.cs entity.name.function.cs
///                          ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                          ^ punctuation.section.parameters.begin.cs
///                           ^^ storage.modifier.parameter.cs
///                              ^^^ storage.type.cs
///                                  ^ variable.parameter.cs
///                                   ^ punctuation.separator.comma.cs
///                                     ^^ storage.modifier.parameter.cs
///                                        ^^^^ support.type.cs
///                                             ^^^ variable.parameter.cs
///                                                ^ punctuation.section.parameters.end.cs
///                                                 ^^^ meta.method.cs
///                                                  ^^ keyword.declaration.function.arrow.cs
///                                                    ^^^^^^^^^^^^^^ meta.method.body.cs
///                                                     ^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                                                     ^ punctuation.section.sequence.begin.cs
///                                                      ^^^^^ variable.other.cs
///                                                           ^ punctuation.separator.comma.cs
///                                                             ^^^^ variable.other.cs
///                                                                 ^ punctuation.section.sequence.end.cs
///                                                                  ^ punctuation.terminator.statement.cs

        (vec3 foo, vec3) FuncName(in int i, in vec3 vec) => (ZERO3, ONE3);
///     ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///           ^^^ variable.other.cs
///              ^ punctuation.separator.comma.cs
///                ^^^^ support.type.cs
///                    ^ punctuation.section.sequence.end.cs
///                      ^^^^^^^^ meta.method.cs entity.name.function.cs
///                              ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                              ^ punctuation.section.parameters.begin.cs
///                               ^^ storage.modifier.parameter.cs
///                                  ^^^ storage.type.cs
///                                      ^ variable.parameter.cs
///                                       ^ punctuation.separator.comma.cs
///                                         ^^ storage.modifier.parameter.cs
///                                            ^^^^ support.type.cs
///                                                 ^^^ variable.parameter.cs
///                                                    ^ punctuation.section.parameters.end.cs
///                                                     ^^^ meta.method.cs
///                                                      ^^ keyword.declaration.function.arrow.cs
///                                                        ^^^^^^^^^^^^^^ meta.method.body.cs
///                                                         ^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                                                         ^ punctuation.section.sequence.begin.cs
///                                                          ^^^^^ variable.other.cs
///                                                               ^ punctuation.separator.comma.cs
///                                                                 ^^^^ variable.other.cs
///                                                                     ^ punctuation.section.sequence.end.cs
///                                                                      ^ punctuation.terminator.statement.cs
    }

    (vec3, vec3 vec) testTupleTypeVariableDefinitions()
/// ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
/// ^ punctuation.section.sequence.begin.cs
///  ^^^^ support.type.cs
///      ^ punctuation.separator.comma.cs
///        ^^^^ support.type.cs
///             ^^^ variable.other.cs
///                ^ punctuation.section.sequence.end.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                                  ^^ meta.method.parameters.cs
///                                                  ^ punctuation.section.parameters.begin.cs
///                                                   ^ punctuation.section.parameters.end.cs
///                                                    ^ meta.method.cs
    {
        (vec3 foo, vec3) var = FuncName();
///     ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///           ^^^ variable.other.cs
///              ^ punctuation.separator.comma.cs
///                ^^^^ support.type.cs
///                    ^ punctuation.section.sequence.end.cs
///                      ^^^ variable.other.cs
///                          ^ keyword.operator.assignment.cs
///                            ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                    ^^ meta.function-call.arguments.cs meta.group.cs
///                                    ^ punctuation.section.group.begin.cs
///                                     ^ punctuation.section.group.end.cs
///                                      ^ punctuation.terminator.statement.cs

        (vec3, vec3 bar) Var = FuncName();
///     ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^^ support.type.cs
///                 ^^^ variable.other.cs
///                    ^ punctuation.section.sequence.end.cs
///                      ^^^ variable.other.cs
///                          ^ keyword.operator.assignment.cs
///                            ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                    ^^ meta.function-call.arguments.cs meta.group.cs
///                                    ^ punctuation.section.group.begin.cs
///                                     ^ punctuation.section.group.end.cs
///                                      ^ punctuation.terminator.statement.cs

        (vec3, vec3) @var = FuncName();
///     ^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^^ support.type.cs
///                ^ punctuation.section.sequence.end.cs
///                  ^^^^ variable.other.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                 ^^ meta.function-call.arguments.cs meta.group.cs
///                                 ^ punctuation.section.group.begin.cs
///                                  ^ punctuation.section.group.end.cs
///                                   ^ punctuation.terminator.statement.cs

        (vec3, vec3)[]? var = FuncName();
///     ^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^^ support.type.cs
///                ^ punctuation.section.sequence.end.cs
///                 ^^ meta.brackets.cs
///                 ^ punctuation.section.brackets.begin.cs
///                  ^ punctuation.section.brackets.end.cs
///                   ^ storage.type.nullable.cs
///                     ^^^ variable.other.cs
///                         ^ keyword.operator.assignment.cs
///                           ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                   ^^ meta.function-call.arguments.cs meta.group.cs
///                                   ^ punctuation.section.group.begin.cs
///                                    ^ punctuation.section.group.end.cs
///                                     ^ punctuation.terminator.statement.cs

        ((int, int) itm1, (int itm2, type) itm3) var;
///     ^ meta.sequence.tuple.cs
///      ^^^^^^^^^^ meta.sequence.tuple.cs meta.sequence.tuple.cs
///                ^^^^^^^ meta.sequence.tuple.cs - meta.sequence meta.sequence
///                       ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs meta.sequence.tuple.cs
///                                       ^^^^^^ meta.sequence.tuple.cs - meta.sequence meta.sequence
///                                             ^^^^^^ - meta.sequence
///     ^ punctuation.section.sequence.begin.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^ storage.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^ storage.type.cs
///               ^ punctuation.section.sequence.end.cs
///                 ^^^^ variable.other.cs
///                     ^ punctuation.separator.comma.cs
///                       ^ punctuation.section.sequence.begin.cs
///                        ^^^ storage.type.cs
///                            ^^^^ variable.other.cs
///                                ^ punctuation.separator.comma.cs
///                                  ^^^^ support.type.cs
///                                      ^ punctuation.section.sequence.end.cs
///                                        ^^^^ variable.other.cs
///                                            ^ punctuation.section.sequence.end.cs
///                                              ^^^ variable.other.cs
///                                                 ^ punctuation.terminator.statement.cs

        ((int, int) itm1, (int itm2, type) itm3)[] var;
///     ^ meta.sequence.tuple.cs
///      ^^^^^^^^^^ meta.sequence.tuple.cs meta.sequence.tuple.cs
///                ^^^^^^^ meta.sequence.tuple.cs - meta.sequence meta.sequence
///                       ^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs meta.sequence.tuple.cs
///                                       ^^^^^^ meta.sequence.tuple.cs - meta.sequence meta.sequence
///                                             ^^^^^^^^ - meta.sequence
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^ storage.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^ storage.type.cs
///               ^ punctuation.section.sequence.end.cs
///                 ^^^^ variable.other.cs
///                     ^ punctuation.separator.comma.cs
///                       ^ punctuation.section.sequence.begin.cs
///                        ^^^ storage.type.cs
///                            ^^^^ variable.other.cs
///                                ^ punctuation.separator.comma.cs
///                                  ^^^^ support.type.cs
///                                      ^ punctuation.section.sequence.end.cs
///                                        ^^^^ variable.other.cs
///                                            ^ punctuation.section.sequence.end.cs
///                                             ^^ meta.brackets.cs
///                                             ^ punctuation.section.brackets.begin.cs
///                                              ^ punctuation.section.brackets.end.cs
///                                                ^^^ variable.other.cs
///                                                   ^ punctuation.terminator.statement.cs

        (string Alpha, MyString Beta) namedLetters = ("a", "b");
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^^^ storage.type.cs
///             ^^^^^ variable.other.cs
///                  ^ punctuation.separator.comma.cs
///                    ^^^^^^^^ support.type.cs
///                             ^^^^ variable.other.cs
///                                 ^ punctuation.section.sequence.end.cs
///                                   ^^^^^^^^^^^^ variable.other.cs
///                                                ^ keyword.operator.assignment.cs
///                                                  ^^^^^^^^^^ meta.sequence.tuple.cs
///                                                  ^ punctuation.section.sequence.begin.cs
///                                                   ^^^ meta.string.cs string.quoted.double.cs
///                                                   ^ punctuation.definition.string.begin.cs
///                                                     ^ punctuation.definition.string.end.cs
///                                                      ^ punctuation.separator.comma.cs
///                                                        ^^^ meta.string.cs string.quoted.double.cs
///                                                        ^ punctuation.definition.string.begin.cs
///                                                          ^ punctuation.definition.string.end.cs
///                                                           ^ punctuation.section.sequence.end.cs
///                                                            ^ punctuation.terminator.statement.cs

        (
///     ^ meta.sequence.tuple punctuation.section.sequence.begin
            string Alpha,
///         ^^^^^^ storage.type.cs
///                ^^^^^ variable.other.cs
///                     ^ punctuation.separator.comma.cs
            MyString Beta
///         ^^^^^^^^ support.type.cs
///                  ^^^^ variable.other.cs
        ) namedLetters = ("a", "b");
///^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.end.cs
///       ^^^^^^^^^^^^ variable.other.cs
///                    ^ keyword.operator.assignment.cs
///                      ^^^^^^^^^^ meta.sequence.tuple.cs
///                      ^ punctuation.section.sequence.begin.cs
///                       ^^^ meta.string.cs string.quoted.double.cs
///                       ^ punctuation.definition.string.begin.cs
///                         ^ punctuation.definition.string.end.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^ meta.string.cs string.quoted.double.cs
///                            ^ punctuation.definition.string.begin.cs
///                              ^ punctuation.definition.string.end.cs
///                               ^ punctuation.section.sequence.end.cs
///                                ^ punctuation.terminator.statement.cs

        (SomeType[] Alpha, SomeType<int> Beta) example = (a, b);
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^^^^^ support.type.cs
///              ^^ meta.brackets.cs
///              ^ punctuation.section.brackets.begin.cs
///               ^ punctuation.section.brackets.end.cs
///                 ^^^^^ variable.other.cs
///                      ^ punctuation.separator.comma.cs
///                        ^^^^^^^^ support.type.cs
///                                ^^^^^ meta.generic.cs
///                                ^ punctuation.definition.generic.begin.cs
///                                 ^^^ storage.type.cs
///                                    ^ punctuation.definition.generic.end.cs
///                                      ^^^^ variable.other.cs
///                                          ^ punctuation.section.sequence.end.cs
///                                            ^^^^^^^ variable.other.cs
///                                                    ^ keyword.operator.assignment.cs
///                                                      ^^^^^^ meta.sequence.tuple.cs
///                                                      ^ punctuation.section.sequence.begin.cs
///                                                       ^ variable.other.cs
///                                                        ^ punctuation.separator.comma.cs
///                                                          ^ variable.other.cs
///                                                           ^ punctuation.section.sequence.end.cs
///                                                            ^ punctuation.terminator.statement.cs

        (city, int, double area) QueryCityData(string name);
///     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^ storage.type.cs
///               ^ punctuation.separator.comma.cs
///                 ^^^^^^ storage.type.cs
///                        ^^^^ variable.other.cs
///                            ^ punctuation.section.sequence.end.cs
///                              ^^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                           ^^^^^^^^^^^^^ meta.method.parameters.cs
///                                           ^ punctuation.section.parameters.begin.cs
///                                            ^^^^^^ storage.type.cs
///                                                   ^^^^ variable.parameter.cs
///                                                       ^ punctuation.section.parameters.end.cs
///                                                        ^ punctuation.terminator.statement.cs
    }

    // https://docs.microsoft.com/en-us/dotnet/csharp/deconstruct
    public void testTupleTypeDeconstruction()
    {
        var (a, b, c) = (1, 2, 3);
///     ^^^ storage.type.variant.cs
///         ^^^^^^^^^ meta.sequence.tuple.cs
///         ^ punctuation.section.sequence.begin.cs
///          ^ variable.other.cs
///           ^ punctuation.separator.comma.cs
///             ^ variable.other.cs
///              ^ punctuation.separator.comma.cs
///                ^ variable.other.cs
///                 ^ punctuation.section.sequence.end.cs
///                   ^ keyword.operator.assignment.cs
///                     ^^^^^^^^^ meta.sequence.tuple.cs
///                     ^ punctuation.section.sequence.begin.cs
///                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^ punctuation.separator.comma.cs
///                         ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                          ^ punctuation.separator.comma.cs
///                            ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                             ^ punctuation.section.sequence.end.cs
///                              ^ punctuation.terminator.statement.cs

        var (_, _, _, pop1, _, pop2) = QueryCityDataForYears("New York City", 1960, 2010);
///     ^^^ storage.type.variant.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///         ^ punctuation.section.sequence.begin.cs
///          ^ variable.language.anonymous.cs
///           ^ punctuation.separator.comma.cs
///             ^ variable.language.anonymous.cs
///              ^ punctuation.separator.comma.cs
///                ^ variable.language.anonymous.cs
///                 ^ punctuation.separator.comma.cs
///                   ^^^^ variable.other.cs
///                       ^ punctuation.separator.comma.cs
///                         ^ variable.language.anonymous.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^^ variable.other.cs
///                                ^ punctuation.section.sequence.end.cs

        (city, _, double area) = QueryCityData("New York City");
///     ^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ variable.other.cs
///          ^ punctuation.separator.comma.cs
///            ^ variable.language.anonymous.cs
///             ^ punctuation.separator.comma.cs
///               ^^^^^^ storage.type.cs
///                      ^^^^ variable.other.cs
///                          ^ punctuation.section.sequence.end.cs

        (city, population, _) = QueryCityData("New York City");
///     ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ variable.other.cs
///          ^ punctuation.separator.comma.cs
///            ^^^^^^^^^^ variable.other.cs
///                      ^ punctuation.separator.comma.cs
///                        ^ variable.language.anonymous.cs
///                         ^ punctuation.section.sequence.end.cs

        (func<int, int> test1, vec test2) = ((int d) => d * 2, 5.ToString());
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^ support.type.cs
///          ^^^^^^^^^^ meta.generic.cs
///          ^ punctuation.definition.generic.begin.cs
///           ^^^ storage.type.cs
///              ^ punctuation.separator.comma.cs
///                ^^^ storage.type.cs
///                   ^ punctuation.definition.generic.end.cs
///                     ^^^^^ variable.other.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^ support.type.cs
///                                ^^^^^ variable.other.cs
///                                     ^ punctuation.section.sequence.end.cs
///                                       ^ keyword.operator.assignment.cs
///                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                                         ^ punctuation.section.sequence.begin.cs
///                                          ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                                          ^ punctuation.section.group.begin.cs
///                                           ^^^ storage.type.cs
///                                               ^ variable.parameter.cs
///                                                ^ punctuation.section.group.end.cs
///                                                 ^^^^ meta.function.anonymous.cs
///                                                  ^^ keyword.declaration.function.arrow.cs
///                                                     ^^^^^ meta.function.anonymous.body.cs
///                                                     ^ variable.other.cs
///                                                       ^ keyword.operator.arithmetic.cs
///                                                         ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                          ^ punctuation.separator.comma.cs
///                                                            ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                             ^ punctuation.accessor.dot.cs
///                                                              ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                                      ^^ meta.function-call.arguments.cs meta.group.cs
///                                                                      ^ punctuation.section.group.begin.cs
///                                                                       ^ punctuation.section.group.end.cs
///                                                                        ^ punctuation.section.sequence.end.cs
///                                                                         ^ punctuation.terminator.statement.cs

        ((int, var) arg, var arg) = getFoo();
///     ^ meta.sequence.tuple.cs - meta.sequence meta.sequence - meta group
///      ^^^^^^^^^^ meta.sequence.tuple.cs meta.sequence.tuple.cs - meta group
///                ^^^^^^^^^^^^^^ meta.sequence.tuple.cs - meta.sequence meta.sequence - meta group
///     ^ punctuation.section.sequence.begin.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^ storage.type.cs
///          ^ punctuation.separator.comma.cs
///            ^^^ storage.type.variant.cs
///               ^ punctuation.section.sequence.end.cs
///                 ^^^ variable.other.cs
///                    ^ punctuation.separator.comma.cs
///                      ^^^ storage.type.variant.cs
///                          ^^^ variable.other.cs
///                             ^ punctuation.section.sequence.end.cs
///                               ^ keyword.operator.assignment.cs

        (a, b) = (new Random().Next(), 15);
///     ^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^ variable.other.cs
///       ^ punctuation.separator.comma.cs
///         ^ variable.other.cs
///          ^ punctuation.section.sequence.end.cs
///            ^ keyword.operator.assignment.cs
///              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///              ^ punctuation.section.sequence.begin.cs
///               ^^^^^^^^^^^^ meta.instantiation.cs
///               ^^^ keyword.operator.new.cs
///                   ^^^^^^ meta.function-call.identifier.cs support.type.cs
///                         ^^ meta.function-call.arguments.cs meta.group.cs
///                         ^ punctuation.section.group.begin.cs
///                          ^ punctuation.section.group.end.cs
///                           ^ punctuation.accessor.dot.cs
///                            ^^^^ meta.function-call.identifier.cs variable.function.cs
///                                ^^ meta.function-call.arguments.cs meta.group.cs
///                                ^ punctuation.section.group.begin.cs
///                                 ^ punctuation.section.group.end.cs
///                                  ^ punctuation.separator.comma.cs
///                                    ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                      ^ punctuation.section.sequence.end.cs
///                                       ^ punctuation.terminator.statement.cs

        var dic = new Dictionary<string, int> { ["Bob"] = 32, ["Alice"] = 17 };
        foreach (var (name, age) in dic.Select(x => (x.Key, x.Value)))
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ storage.type.variant.cs
///                  ^^^^^^^^^^^ meta.sequence.tuple.cs
///                  ^ punctuation.section.sequence.begin.cs
///                   ^^^^ variable.other.cs
///                       ^ punctuation.separator.comma.cs
///                         ^^^ variable.other.cs
///                            ^ punctuation.section.sequence.end.cs
///                              ^^ keyword.control.loop.in.cs
///                                 ^^^ variable.other.cs
///                                    ^ punctuation.accessor.dot.cs
///                                     ^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                           ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                                           ^ punctuation.section.group.begin.cs
///                                            ^ meta.function.anonymous.parameters.cs variable.parameter.cs
///                                             ^^^^ meta.function.anonymous.cs
///                                              ^^ keyword.declaration.function.arrow.cs
///                                                 ^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.sequence.tuple.cs
///                                                 ^ punctuation.section.sequence.begin.cs
///                                                  ^ variable.other.cs
///                                                   ^ punctuation.accessor.dot.cs
///                                                    ^^^ variable.other.cs
///                                                       ^ punctuation.separator.comma.cs
///                                                         ^ variable.other.cs
///                                                          ^ punctuation.accessor.dot.cs
///                                                           ^^^^^ variable.other.cs
///                                                                ^ punctuation.section.sequence.end.cs
///                                                                 ^ punctuation.section.group.end.cs
///                                                                  ^ punctuation.section.group.end.cs
        {
            Console.WriteLine($"{name} is {age} years old.");
        }

        var positions = new List<(int, int)> { (0, 1), (1, 2), (2, 4) };
        foreach (var(x, y) in positions)
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ storage.type.variant.cs
///                 ^^^^^^ meta.sequence.tuple.cs
///                 ^ punctuation.section.sequence.begin.cs
///                  ^ variable.other.cs
///                   ^ punctuation.separator.comma.cs
///                     ^ variable.other.cs
///                      ^ punctuation.section.sequence.end.cs
///                        ^^ keyword.control.loop.in.cs
///                           ^^^^^^^^^ variable.other.cs
///                                    ^ punctuation.section.group.end.cs
        {
            Console.WriteLine($"x={x} y={y}");
        }

        foreach ((var a, int b) in positions)
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///              ^ punctuation.section.sequence.begin.cs
///               ^^^ storage.type.variant.cs
///                   ^ variable.other.cs
///                    ^ punctuation.separator.comma.cs
///                      ^^^ storage.type.cs
///                          ^ variable.other.cs
///                           ^ punctuation.section.sequence.end.cs
///                             ^^ keyword.control.loop.in.cs
///                                ^^^^^^^^^ variable.other.cs
///                                         ^ punctuation.section.group.end.cs
        ; // empty statement
///     ^ punctuation.terminator.statement
    }

    private static (int Max, int Min) Range(IEnumerable<int> numbers)
/// ^^^^^^^ storage.modifier.access.cs
///         ^^^^^^ storage.modifier.cs
///                ^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                ^ punctuation.section.sequence.begin.cs
///                 ^^^ storage.type.cs
///                     ^^^ variable.other.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^^ storage.type.cs
///                              ^^^ variable.other.cs
///                                 ^ punctuation.section.sequence.end.cs
///                                   ^^^^^ meta.method.cs
///                                   ^^^^^ entity.name.function.cs
///                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                                        ^ punctuation.section.parameters.begin.cs
///                                         ^^^^^^^^^^^ support.type.cs
///                                                    ^^^^^ meta.generic.cs
///                                                    ^ punctuation.definition.generic.begin.cs
///                                                     ^^^ storage.type.cs
///                                                        ^ punctuation.definition.generic.end.cs
///                                                          ^^^^^^^ variable.parameter.cs
///                                                                 ^ punctuation.section.parameters.end.cs
///                                                                  ^ meta.method.cs
    {
        int min = int.MaxValue;
        int max = int.MinValue;
        foreach(var n in numbers)
///     ^^^^^^^ keyword.control.loop.foreach.cs
///            ^^^^^^^^^^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^ storage.type.variant.cs
///                 ^ variable.other.cs
///                   ^^ keyword.control.loop.in.cs
///                      ^^^^^^^ variable.other.cs
///                             ^ punctuation.section.group.end.cs
        {
            min = (n < min) ? n : min;
            max = (n > max) ? n : max;
        }
        return (max, min);
///     ^^^^^^ keyword.control.flow.return.cs
///            ^^^^^^^^^^ meta.sequence.tuple.cs
///            ^ punctuation.section.sequence.begin.cs
///             ^^^ variable.other.cs
///                ^ punctuation.separator.comma.cs
///                  ^^^ variable.other.cs
///                     ^ punctuation.section.sequence.end.cs
///                      ^ punctuation.terminator.statement.cs

        Func<string, (string example1, int Example2)> test = s => (example1: "hello", Example2: "world");
///     ^^^^ support.type.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.cs
///         ^ punctuation.definition.generic.begin.cs
///          ^^^^^^ storage.type.cs
///                ^ punctuation.separator.comma.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                  ^ punctuation.section.sequence.begin.cs
///                   ^^^^^^ storage.type.cs
///                          ^^^^^^^^ variable.other.cs
///                                  ^ punctuation.separator.comma.cs
///                                    ^^^ storage.type.cs
///                                        ^^^^^^^^ variable.other.cs
///                                                ^ punctuation.section.sequence.end.cs
///                                                 ^ punctuation.definition.generic.end.cs
///                                                   ^^^^ variable.other.cs
///                                                        ^ keyword.operator.assignment.cs
///                                                          ^ meta.function.anonymous.parameters.cs variable.parameter.cs
///                                                           ^^^^ meta.function.anonymous.cs
///                                                            ^^ keyword.declaration.function.arrow.cs
///                                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.sequence.tuple.cs
///                                                               ^ punctuation.section.sequence.begin.cs
///                                                                ^^^^^^^^ variable.other.member.cs
///                                                                        ^ keyword.operator.assignment.cs
///                                                                          ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                                          ^ punctuation.definition.string.begin.cs
///                                                                                ^ punctuation.definition.string.end.cs
///                                                                                 ^ punctuation.separator.comma.cs
///                                                                                   ^^^^^^^^ variable.other.member.cs
///                                                                                           ^ keyword.operator.assignment.cs
///                                                                                             ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                                                             ^ punctuation.definition.string.begin.cs
///                                                                                                   ^ punctuation.definition.string.end.cs
///                                                                                                    ^ punctuation.section.sequence.end.cs
///                                                                                                     ^ punctuation.terminator.statement.cs
    }

    public void Example((int foo, float bar) val, (int foo, string bar) otherVal) {}
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                    ^ punctuation.section.parameters.begin.cs
///                     ^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                     ^ punctuation.section.sequence.begin.cs
///                      ^^^ storage.type.cs
///                          ^^^ variable.other.cs
///                             ^ punctuation.separator.comma.cs
///                               ^^^^^ storage.type.cs
///                                     ^^^ variable.other.cs
///                                        ^ punctuation.section.sequence.end.cs
///                                          ^^^ variable.parameter.cs
///                                             ^ punctuation.separator.comma.cs
///                                               ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                                               ^ punctuation.section.sequence.begin.cs
///                                                ^^^ storage.type.cs
///                                                    ^^^ variable.other.cs
///                                                       ^ punctuation.separator.comma.cs
///                                                         ^^^^^^ storage.type.cs
///                                                                ^^^ variable.other.cs
///                                                                   ^ punctuation.section.sequence.end.cs
///                                                                     ^^^^^^^^ variable.parameter.cs
///                                                                             ^ punctuation.section.parameters.end.cs

    public void Example((int , float ) val, (int, string) otherVal) {}
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                    ^ punctuation.section.parameters.begin.cs
///                     ^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                     ^ punctuation.section.sequence.begin.cs
///                      ^^^ storage.type.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^^^ storage.type.cs
///                                  ^ punctuation.section.sequence.end.cs
///                                    ^^^ variable.parameter.cs
///                                       ^ punctuation.separator.comma.cs
///                                         ^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                                         ^ punctuation.section.sequence.begin.cs
///                                          ^^^ storage.type.cs
///                                             ^ punctuation.separator.comma.cs
///                                               ^^^^^^ storage.type.cs
///                                                     ^ punctuation.section.sequence.end.cs
///                                                       ^^^^^^^^ variable.parameter.cs
///                                                               ^ punctuation.section.parameters.end.cs

    delegate (int foo, string bar) TypeName((int foo, string bar) arg);
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate.cs
/// ^^^^^^^^ keyword.declaration.delegate.cs
///          ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///          ^ punctuation.section.sequence.begin.cs
///           ^^^ storage.type.cs
///               ^^^ variable.other.cs
///                  ^ punctuation.separator.comma.cs
///                    ^^^^^^ storage.type.cs
///                           ^^^ variable.other.cs
///                              ^ punctuation.section.sequence.end.cs
///                                ^^^^^^^^ entity.name.type.delegate.cs
///                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate.parameters.cs
///                                        ^ punctuation.section.parameters.begin.cs
///                                         ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///                                         ^ punctuation.section.sequence.begin.cs
///                                          ^^^ storage.type.cs
///                                              ^^^ variable.other.cs
///                                                 ^ punctuation.separator.comma.cs
///                                                   ^^^^^^ storage.type.cs
///                                                          ^^^ variable.other.cs
///                                                             ^ punctuation.section.sequence.end.cs
///                                                               ^^^ variable.parameter.cs
///                                                                  ^ punctuation.section.parameters.end.cs
///                                                                   ^ punctuation.terminator.statement.cs
}
/// <- meta.class.body punctuation.section.block.end

public readonly struct S
/// ^^ storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^^^^ keyword.declaration.struct
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
///                      ^ punctuation.separator.comma
///                        ^ variable.other.member
///                         ^ punctuation.terminator.statement

    public readonly int X = 0, Y = 1;    // All fields must be readonly
///                     ^ variable.other.member
///                       ^ keyword.operator.assignment.cs
///                         ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                          ^ punctuation.separator.comma
///                            ^ variable.other.member
///                              ^ keyword.operator.assignment.cs
///                                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                 ^ punctuation.terminator.statement

    public S(int age, string name)
    {
        this.Age = age;
        this.Name = name;
///     ^^^^ variable.language.this.cs
    }

    public S(S other)
    {
        this = other;
///     ^^^^ variable.language.this.cs
    }
}

public readonly partial struct MyStruct
/// ^^ storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^^^^^ storage.modifier
///                     ^^^^^^ keyword.declaration.struct
///                            ^^^^^^^^ entity.name.struct
{}

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
///                  ^ punctuation.separator.comma
{
    // s = "new";  // error
    // x++;        // error
    // point.X++;  // error
}
// Note that you don't specify the 'in' modifier when calling the method:
void TestFoo() => Foo ("hello", 123, new Point (2, 3));

// https://msdn.microsoft.com/en-us/magazine/mt814808.aspx
Span<byte> bytes = length > 128 ? new byte[length] : stackalloc byte[length];
///                             ^ keyword.operator.ternary.cs
///                               ^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                               ^^^ keyword.operator.new.cs
///                                   ^^^^ storage.type.cs
///                                       ^^^^^^^^ meta.brackets.cs
///                                       ^ punctuation.section.brackets.begin.cs
///                                        ^^^^^^ variable.other.cs
///                                              ^ punctuation.section.brackets.end.cs
///                                                ^ keyword.operator.ternary.cs
///                                                  ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                                                  ^^^^^^^^^^ keyword.operator.stackalloc.cs
///                                                             ^^^^ storage.type.cs
///                                                                 ^^^^^^^^ meta.brackets.cs
///                                                                 ^ punctuation.section.brackets.begin.cs
///                                                                  ^^^^^^ variable.other.cs
///                                                                        ^ punctuation.section.brackets.end.cs
///                                                                         ^ punctuation.terminator.statement.cs
bytes[0] = 42;
bytes[1] = 43;
Assert.Equal(42, bytes[0]);
Assert.Equal(43, bytes[1]);
bytes[2] = 44; // throws IndexOutOfRangeException

public readonly ref struct Span<T>
///                 ^^^^^^^^^^^^^^^ meta.struct
///  ^ storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^ storage.modifier
///                 ^^^^^^ keyword.declaration.struct
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

public delegate void SpanAction<T, in TArg>(Span<T> span, TArg arg) ;
///    ^^^^^^^^ keyword.declaration.delegate
///             ^^^^ storage.type
///                  ^^^^^^^^^^ entity.name.type.delegate
///                            ^^^^^^^^^^^^ meta.generic
///                             ^ variable.parameter.type
///                              ^ punctuation.separator.comma
///                                ^^ storage.modifier
///                                   ^^^^ variable.parameter.type
///                                                                 ^ punctuation.terminator.statement.cs

void Test ()
{
    int[] array = { 1, 15, -39, 0, 7, 14, -12 };
///                 ^ meta.number.integer.decimal constant.numeric.value
///                  ^ punctuation.separator.comma
///                                            ^ punctuation.terminator.statement
    ref int place = ref Find (7, array); // aliases 7's place in the array
/// ^^^ storage.modifier
///     ^^^ storage.type
///         ^^^^^ variable.other
///               ^ keyword.operator.assignment
///                 ^^^ storage.modifier.cs
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
///                ^^^ storage.modifier.cs
///                    ^^^^^^^ variable.other
        }
    }
    throw new IndexOutOfRangeException ($"{nameof (number)} not found");
}

public class MyClass {
    object obj;
    public MyClass () => obj = null;
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.constructor.cs - meta.method meta.method
///        ^^^^^^^^ meta.method.cs
///                ^^ meta.method.parameters.cs
///                  ^^^ meta.method.cs
///                     ^^^^^^^^^^^ meta.method.body.cs
///        ^^^^^^^ entity.name.function.constructor.cs
///                ^ punctuation.section.parameters.begin.cs
///                 ^ punctuation.section.parameters.end.cs
///                   ^^ keyword.declaration.function.arrow.cs
///                      ^^^ variable.other.cs
///                          ^ keyword.operator.assignment.cs
///                            ^^^^ constant.language.null.cs
///                                ^ punctuation.terminator.statement.cs
}
/// <- meta.class.body meta.block punctuation.section.block.end

public class Person // https://stackoverflow.com/a/41974829/4473405
{
    public string Name { get; }
    public int Age { get; }

    public Person(string name, int age) => (Name, Age) = (name, age);
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constructor.cs - meta.method meta.method
///        ^^^^^^ meta.method.cs entity.name.function.constructor.cs
///              ^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                                    ^^^ meta.method.cs
///                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.body.cs
///              ^ punctuation.section.parameters.begin.cs
///               ^^^^^^ storage.type.cs
///                      ^^^^ variable.parameter.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^ storage.type.cs
///                                ^^^ variable.parameter.cs
///                                   ^ punctuation.section.parameters.end.cs
///                                     ^^ keyword.declaration.function.arrow.cs
///                                        ^^^^^^^^^^^ meta.sequence.tuple.cs
///                                        ^ punctuation.section.sequence.begin.cs
///                                         ^^^^ variable.other.cs
///                                             ^ punctuation.separator.comma.cs
///                                               ^^^ variable.other.cs
///                                                  ^ punctuation.section.sequence.end.cs
///                                                    ^ keyword.operator.assignment.cs
///                                                      ^^^^^^^^^^^ meta.sequence.tuple.cs
///                                                      ^ punctuation.section.sequence.begin.cs
///                                                       ^^^^ variable.other.cs
///                                                           ^ punctuation.separator.comma.cs
///                                                             ^^^ variable.other.cs
///                                                                ^ punctuation.section.sequence.end.cs
///                                                                 ^ punctuation.terminator.statement.cs

}

// https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-7#pattern-matching
if (input is int count)
/// ^^^^^ variable.other
///       ^^ keyword.operator.comparison.type.cs
///          ^^^ storage.type
///              ^^^^^ variable.other
    sum += count;
