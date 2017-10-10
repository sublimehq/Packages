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
///             ^^ constant.numeric
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
///                           ^ constant.numeric
///                            ^ punctuation.section.group.end
///                             ^ punctuation.section.group.end

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
///                                          ^ constant.numeric
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
///                                           ^ constant.numeric
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
///                                                   ^ constant.numeric
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

        WriteLine($"{nameof(quantity)}: {quantity}"); // still valid

        int.TryParse(input, out ref int quantity);
///                         ^^^ storage.modifier.argument
///                             ^^^ storage.modifier.argument
///                                 ^^^ storage.type
///                                     ^^^^^^^^ variable.other
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
    }
}
/// <- meta.class.body punctuation.section.block.end
