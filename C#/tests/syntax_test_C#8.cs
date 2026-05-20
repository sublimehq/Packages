/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://devblogs.microsoft.com/dotnet/take-c-8-0-for-a-spin/
// https://devblogs.microsoft.com/dotnet/building-c-8-0/

using var
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.variant.cs

using var resp
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.variant.cs
///       ^^^^ variable.other.cs

using var resp =
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.variant.cs
///       ^^^^ variable.other.cs
///            ^ keyword.operator.assignment.cs

using var resp = await client.GetAsync(new Uri($"http://localhost:5000/events?start={start}&end={end}"));
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.variant.cs
///       ^^^^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^^^^^ keyword.control.flow.await.cs
///                    ^^^^^^ variable.other.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                   ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.begin.cs
///                                    ^^^^^^^ meta.function-call.arguments.cs meta.group.cs meta.instantiation.cs - meta.group meta.group
///                                    ^^^ keyword.operator.new.cs
///                                        ^^^ support.type.cs
///                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs meta.instantiation.cs meta.group.cs
///                                           ^ punctuation.section.group.begin.cs
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.cs
///                                            ^^ punctuation.definition.string.begin.cs
///                                                                                 ^^^^^^^ meta.interpolation.cs
///                                                                                 ^ punctuation.section.interpolation.begin.cs
///                                                                                  ^^^^^ source.cs variable.other.cs
///                                                                                       ^ punctuation.section.interpolation.end.cs
///                                                                                        ^^^^^ string.quoted.double.cs
///                                                                                             ^^^^^ meta.interpolation.cs
///                                                                                             ^ punctuation.section.interpolation.begin.cs
///                                                                                              ^^^ source.cs variable.other.cs
///                                                                                                 ^ punctuation.section.interpolation.end.cs
///                                                                                                  ^ string.quoted.double.cs punctuation.definition.string.end.cs
///                                                                                                   ^ punctuation.section.group.end.cs
///                                                                                                    ^ punctuation.section.group.end.cs
///                                                                                                     ^ punctuation.terminator.statement.cs

using var (item, item) = await client.GetAsync();
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.variant.cs
///       ^^^^^^^^^^^^ meta.sequence.tuple.cs
///       ^ punctuation.section.sequence.begin.cs
///        ^^^^ variable.other.cs
///            ^ punctuation.separator.comma.cs
///              ^^^^ variable.other.cs
///                  ^ punctuation.section.sequence.end.cs
///                    ^ keyword.operator.assignment.cs
///                      ^^^^^ keyword.control.flow.await.cs
///                            ^^^^^^ variable.other.cs
///                                  ^ punctuation.accessor.dot.cs
///                                   ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                           ^^ meta.function-call.arguments.cs meta.group.cs
///                                           ^ punctuation.section.group.begin.cs
///                                            ^ punctuation.section.group.end.cs
///                                             ^ punctuation.terminator.statement.cs

using List<int> item = await client.GetAsync();
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^ support.type.cs
///       ^^^^^ meta.generic.cs
///       ^ punctuation.definition.generic.begin.cs
///        ^^^ storage.type.primitive.cs
///           ^ punctuation.definition.generic.end.cs
///             ^^^^ variable.other.cs
///                  ^ keyword.operator.assignment.cs
///                    ^^^^^ keyword.control.flow.await.cs
///                          ^^^^^^ variable.other.cs
///                                ^ punctuation.accessor.dot.cs
///                                 ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                         ^^ meta.function-call.arguments.cs meta.group.cs
///                                         ^ punctuation.section.group.begin.cs
///                                          ^ punctuation.section.group.end.cs
///                                           ^ punctuation.terminator.statement.cs

using MyClass<int>.SubList<int>[] item = await client.GetAsync();
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ support.type.cs
///          ^^^^^ meta.generic.cs
///          ^ punctuation.definition.generic.begin.cs
///           ^^^ storage.type.primitive.cs
///              ^ punctuation.definition.generic.end.cs
///               ^ punctuation.accessor.dot.cs
///                ^^^^^^^ support.type.cs
///                       ^^^^^ meta.generic.cs
///                       ^ punctuation.definition.generic.begin.cs
///                        ^^^ storage.type.primitive.cs
///                           ^ punctuation.definition.generic.end.cs
///                            ^^ meta.brackets.cs
///                            ^ punctuation.section.brackets.begin.cs
///                             ^ punctuation.section.brackets.end.cs
///                               ^^^^ variable.other.cs
///                                    ^ keyword.operator.assignment.cs
///                                      ^^^^^ keyword.control.flow.await.cs
///                                            ^^^^^^ variable.other.cs
///                                                  ^ punctuation.accessor.dot.cs
///                                                   ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                           ^^ meta.function-call.arguments.cs meta.group.cs
///                                                           ^ punctuation.section.group.begin.cs
///                                                            ^ punctuation.section.group.end.cs
///                                                             ^ punctuation.terminator.statement.cs

using int
/// <- meta.using.cs keyword.declaration.using.cs
///^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.primitive.cs

using int name = 0;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.primitive.cs
///       ^^^^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.terminator.statement.cs

using int[] name = (0, 1);
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ storage.type.primitive.cs
///      ^^ meta.brackets.cs
///      ^ punctuation.section.brackets.begin.cs
///       ^ punctuation.section.brackets.end.cs
///         ^^^^ variable.other.cs
///              ^ keyword.operator.assignment.cs
///                ^^^^^^ meta.sequence.tuple.cs
///                ^ punctuation.section.sequence.begin.cs
///                 ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                  ^ punctuation.separator.comma.cs
///                    ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                     ^ punctuation.section.sequence.end.cs
///                      ^ punctuation.terminator.statement.cs

numbers ??= new List<int>();
///     ^^^ keyword.operator.assignment.augmented
numbers.Add(i ??= 17);
numbers.Add(i ??= 20);

Console.WriteLine(string.Join(" ", numbers));  // output: 17 17

var test1 = $@"...";
///         ^^^ punctuation.definition.string.begin
var test2 = @$"...";
///         ^^^ punctuation.definition.string.begin

interface ILogger
{
    void Log(LogLevel level, string message);
    void Log(Exception ex) => Log(LogLevel.Error, ex.ToString()); // New overload
///                        ^^ keyword.declaration.function.arrow
}

public static decimal CalculateToll(object vehicle) =>
    vehicle switch
/// ^^^^^^^ variable.other
///         ^^^^^^ keyword.control.conditional.switch
    {
        DeliveryTruck t when t.GrossWeightClass > 5000 => 10.00m + 5.00m,
///     ^^^^^^^^^^^^^ support.type
///                   ^ variable.other
///                     ^^^^ keyword.control.conditional.when
///                          ^ variable.other
///                           ^ punctuation.accessor.dot
///                            ^^^^^^^^^^^^^^^^ variable.other
///                                             ^ keyword.operator.comparison
///                                               ^^^^ constant.numeric.value
///                                                    ^^ punctuation.separator.case-expression
///                                                                     ^ punctuation.terminator.case-expression
        DeliveryTruck t when t.GrossWeightClass < 3000 => 10.00m - 2.00m,
        DeliveryTruck _ => 10.00m,
///     ^^^^^^^^^^^^^ support.type
///                   ^ variable.language.anonymous
///                     ^^ meta.method meta.block punctuation.separator.case-expression

        _ => throw new ArgumentException("Not a known vehicle type", nameof(vehicle))
///     ^ variable.language.anonymous
///       ^^ punctuation.separator.case-expression
    };

IEnumerable<string> GetEnrollees()
{
    foreach (var p in People)
    {
        if (p is Student { Graduated: false, Name: string name }) yield return name;
///              ^^^^^^^ support.type
///                        ^^^^^^^^^ variable.other.member
///                                 ^ keyword.operator.assignment
///                                   ^^^^^ constant.language
///                                        ^ punctuation.separator.comma
///                                          ^^^^ variable.other.member
///                                              ^ keyword.operator.assignment
///                                                ^^^^^^ storage.type
///                                                       ^^^^ variable.other
///                                                               ^^^^^ keyword
    }
}

Point p = new (3, 5);
///       ^^^^^^^^^^ meta.instantiation.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ constant.numeric.value.cs
///             ^ punctuation.separator.comma.cs
///               ^ constant.numeric.value.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

Point[] ps = { new (1, 4), new (3,-2), new (9, 5) }; // all Points
///            ^^^^^^^^^^ meta.instantiation.cs
///                ^^^^^^ meta.group.cs
///                      ^ punctuation.separator.comma.cs

// https://docs.microsoft.com/en-us/dotnet/csharp/write-safe-efficient-code
public struct Point3D
{
    private static Point3D origin = new Point3D(0,0,0);

    public static ref readonly Point3D Origin => ref origin;
/// ^^^^^^ storage.modifier.access
///        ^^^^^^ storage.modifier
///               ^^^ storage.modifier
///                   ^^^^^^^^ storage.modifier
///                            ^^^^^^^ support.type
///                                    ^^^^^^ variable.other.member
///                                           ^^ keyword.declaration.function.accessor.get
///                                              ^^^ storage.modifier.cs
///                                                  ^^^^^^ variable.other
///                                                        ^ punctuation.terminator.statement - meta.property - meta.method

    public int P1
        => M1 (M2 ());
///     ^^ keyword.declaration.function.accessor.get.cs
///        ^^^ meta.function-call.identifier.cs
///           ^ meta.function-call.arguments.cs meta.group.cs - meta.function-call meta.function-call
///            ^^^ meta.function-call.arguments.cs meta.group.cs meta.function-call.identifier.cs - meta.group meta.group
///               ^^ meta.function-call.arguments.cs meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                 ^ meta.function-call.arguments.cs meta.group.cs - meta.function-call meta.function-call
///                  ^ - meta.function-call
///        ^^ variable.function.cs
///           ^ punctuation.section.group.begin.cs
///            ^^ variable.function.cs
///               ^ punctuation.section.group.begin.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.section.group.end.cs
///                  ^ punctuation.terminator.statement.cs - meta.property - meta.method

    // other members removed for space

    private static double CalculateDistance(in Point3D point1, in Point3D point2)
    {
        double xDifference = point1.X - point2.X;
        double yDifference = point1.Y - point2.Y;
        double zDifference = point1.Z - point2.Z;

        return Math.Sqrt(xDifference * xDifference + yDifference * yDifference + zDifference * zDifference);
    }
}

void Example() {
    var originValue = Point3D.Origin;
/// ^^^ storage.type.variant.cs
///     ^^^^^^^^^^^ variable.other.cs
///                 ^ keyword.operator.assignment.cs
///                   ^^^^^^^ variable.other.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^^ variable.other.cs
///                                 ^ punctuation.terminator.statement.cs

    ref readonly var originReference = ref Point3D.Origin;
/// ^^^ storage.modifier.cs
///     ^^^^^^^^ storage.modifier.cs
///              ^^^ storage.type.variant.cs
///                  ^^^^^^^^^^^^^^^ variable.other.cs
///                                  ^ keyword.operator.assignment.cs
///                                    ^^^ storage.modifier.cs
///                                        ^^^^^^^ variable.other.cs
///                                               ^ punctuation.accessor.dot.cs
///                                                ^^^^^^ variable.other.cs
///                                                      ^ punctuation.terminator.statement.cs
}

// https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-8#static-local-functions
int M()
{
    int y = 5;
    int x = 7;
    return Add(x, y);

    static int Add(int left, int right) => left + right;
/// ^^^^^^ storage.modifier
///        ^^^ storage.type
///            ^^^ entity.name.function
}

public static async System.Collections.Generic.IAsyncEnumerable<int> GenerateSequence()
{
    for (int i = 0; i < 20; i++)
    {
        await Task.Delay(100);
        yield return i;
    }
}

await foreach (var number in GenerateSequence())
/// <- keyword.control.flow.await.cs
/// ^ keyword.control.flow.await.cs
///   ^^^^^^^ keyword.control.loop.foreach
{
    Console.WriteLine(number);
}

static async Task Main()
{
    var exampleAsyncDisposable = new ExampleAsyncDisposable();
    await using (exampleAsyncDisposable.ConfigureAwait(false))
/// ^^^^^ keyword.control.flow.await.cs
///       ^^^^^ keyword.declaration.using
    {
        // Interact with the exampleAsyncDisposable instance.
    }

    Console.ReadLine();

    // https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/using-statement#example
    using var socket = new ClientWebSocket();
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.body.cs meta.block.cs
/// ^^^^^ keyword.declaration.using
///       ^^^ storage.type
///           ^^^^^^ variable.other
///                  ^ keyword.operator.assignment
///                    ^^^ keyword.operator.new
///                        ^^^^^^^^^^^^^^^ support.type
///                                       ^ punctuation.section.group.begin
///                                        ^ punctuation.section.group.end
///                                         ^ punctuation.terminator.statement
}

// https://docs.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-8#indices-and-ranges
Index i1 = 3;  // number 3 from beginning
Index i2 = ^4; // number 4 from end
///        ^ keyword.operator.bitwise
///         ^ constant.numeric.value
int[] a = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
Console.WriteLine($"{a[i1]}, {a[i2]}"); // "3, 6"
var slice = a[i1..i2]; // { 3, 4, 5 }
///             ^^ keyword.operator.range

var lazyDog = words[^2..^0];
///                 ^ keyword.operator.bitwise
///                   ^^ keyword.operator.range
var allWords = words[..]; // contains "The" through "dog".
///                  ^^ keyword.operator.range
var firstPhrase = words[..4]; // contains "The" through "fox"
///                     ^^ keyword.operator.range
var lastPhrase = words[6..]; // contains "the", "lazy" and "dog"
///                     ^^ keyword.operator.range
Range phrase = 1..4;
///             ^^ keyword.operator.range

// https://devblogs.microsoft.com/dotnet/do-more-with-patterns-in-c-8-0/

public static RGBColor testSwitchExpressionEnumPatterns(Rainbow colorBand) =>
    colorBand switch
/// ^^^^^^^^^ variable.other.cs
///           ^^^^^^ keyword.control.conditional.switch.cs
    {
/// ^^ meta.block.cs
/// ^ punctuation.section.block.begin.cs
        Rainbow.Red    => new RGBColor(0xFF, 0x00, 0x00),
///     ^^^^^^^^^^^^^^^ meta.case.pattern.cs
///                    ^^ meta.case.cs
///     ^^^^^^^ support.type.cs
///            ^ punctuation.accessor.dot.cs
///             ^^^ variable.other.member.cs
///                    ^^ punctuation.separator.case-expression.cs
///                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                       ^^^ keyword.operator.new.cs
///                           ^^^^^^^^ support.type.cs
///                                   ^^^^^^^^^^^^^^^^^^ meta.group.cs
///                                                     ^ punctuation.terminator.case-expression.cs
        _              => throw new ArgumentException(),
///     ^^^^^^^^^^^^^^^ meta.case.pattern.cs
///     ^ variable.language.anonymous.cs
///                    ^^ meta.case.cs
///                    ^^ punctuation.separator.case-expression.cs
///                       ^^^^^ keyword.control.flow.throw.cs
///                             ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                             ^^^ keyword.operator.new.cs
///                                 ^^^^^^^^^^^^^^^^^ meta.function-call.identifier.cs support.type.cs
///                                                  ^^ meta.function-call.arguments.cs meta.group.cs
///                                                    ^ punctuation.terminator.case-expression.cs
    };
///^^ meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ punctuation.terminator.statement.cs - meta.switch

public static string testSwitchExpressionStringTuplePatterns(string first, string second)
    => (first, second) switch
///    ^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///    ^ punctuation.section.sequence.begin.cs
///     ^^^^^ variable.other.cs
///          ^ punctuation.separator.comma.cs
///            ^^^^^^ variable.other.cs
///                  ^ punctuation.section.sequence.end.cs
///                    ^^^^^^ keyword.control.conditional.switch.cs
    {
/// ^^ meta.block.cs
/// ^ punctuation.section.block.begin.cs
        ("rock", "paper") => "rock is covered by paper. Paper wins.",
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
///     ^^^^^^^^^^^^^^^^^ meta.case.pattern.cs meta.sequence.tuple.cs
///                      ^ meta.case.pattern.cs - meta.sequence
///                       ^^ meta.case.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^^^^^^ meta.string.cs string.quoted.double.cs
///            ^ punctuation.separator.comma.cs
///              ^^^^^^^ meta.string.cs string.quoted.double.cs
///                     ^ punctuation.section.sequence.end.cs
///                       ^^ punctuation.separator.case-expression.cs
///                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                                 ^ punctuation.terminator.case-expression.cs
        (_, _) => "tie"
///^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
///     ^^^^^^ meta.case.pattern.cs meta.sequence.tuple.cs
///           ^ meta.case.pattern.cs - meta.sequence
///            ^^ meta.case.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^ variable.language.anonymous.cs
///       ^ punctuation.separator.comma.cs
///         ^ variable.language.anonymous.cs
///          ^ punctuation.section.sequence.end.cs
///            ^^ punctuation.separator.case-expression.cs
///               ^^^^^ meta.string.cs string.quoted.double.cs
    };
/// ^ meta.block.cs - meta.case
/// ^ punctuation.section.block.end.cs
///  ^ punctuation.terminator.statement.cs - meta.switch

static Quadrant testSwitchExpressionNumberTuplePatterns(Point point) => point switch
{
    (0, 0) => Quadrant.Origin,
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^^^^^^ meta.case.pattern.cs
///        ^^ meta.case.cs
/// ^^^^^^ meta.sequence.tuple.cs
/// ^ punctuation.section.sequence.begin.cs
///  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///   ^ punctuation.separator.comma.cs
///     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///      ^ punctuation.section.sequence.end.cs
///        ^^ punctuation.separator.case-expression.cs
///           ^^^^^^^^ variable.other.cs
///                   ^ punctuation.accessor.dot.cs
///                    ^^^^^^ variable.other.cs
///                          ^ punctuation.terminator.case-expression.cs
    var (x, y) when x > 0 && y > 0 => Quadrant.One,
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^^^^^^^^^^ meta.case.pattern.cs
///            ^^^^^^^^^^^^^^^^^^^^ meta.case.guard.cs
///                                ^^ meta.case.cs
/// ^^^ storage.type.variant.cs
///     ^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^ variable.other.cs
///       ^ punctuation.separator.comma.cs
///         ^ variable.other.cs
///          ^ punctuation.section.sequence.end.cs
///            ^^^^ keyword.control.conditional.when.cs
///                 ^ variable.other.cs
///                   ^ keyword.operator.comparison.cs
///                     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^^ keyword.operator.logical.cs
///                          ^ variable.other.cs
///                            ^ keyword.operator.comparison.cs
///                              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                ^^ punctuation.separator.case-expression.cs
///                                   ^^^^^^^^ variable.other.cs
///                                           ^ punctuation.accessor.dot.cs
///                                            ^^^ variable.other.cs
///                                               ^ punctuation.terminator.case-expression.cs
    var (_, _) => Quadrant.OnBorder,
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^^^^^^^^^^ meta.case.pattern.cs
///            ^^ meta.case.cs
/// ^^^ storage.type.variant.cs
///     ^^^^^^ meta.sequence.tuple.cs
///     ^ punctuation.section.sequence.begin.cs
///      ^ variable.language.anonymous.cs
///       ^ punctuation.separator.comma.cs
///         ^ variable.language.anonymous.cs
///          ^ punctuation.section.sequence.end.cs
///            ^^ punctuation.separator.case-expression.cs
///               ^^^^^^^^ variable.other.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^^^ variable.other.cs
///                                ^ punctuation.terminator.case-expression.cs
    _ => Quadrant.Unknown
///^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^ meta.case.pattern.cs
/// ^ variable.language.anonymous.cs
///   ^^ meta.case.cs
///   ^^ punctuation.separator.case-expression.cs
///      ^^^^^^^^ variable.other.cs
///              ^ punctuation.accessor.dot.cs
///               ^^^^^^^ variable.other.cs
};
/// <- meta.block.cs punctuation.section.block.end.cs
 /// <- punctuation.terminator.statement.cs - meta.switch - meta.block

    using var socket = new ClientWebSocket();
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
/// ^^^^^ keyword.declaration.using.cs
///       ^^^ storage.type.variant.cs
///           ^^^^^^ variable.other.cs
///                  ^ keyword.operator.assignment.cs
///                    ^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                    ^^^ keyword.operator.new.cs
///                        ^^^^^^^^^^^^^^^ support.type.cs
///                                       ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.begin.cs
///                                        ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.end.cs
///                                         ^ punctuation.terminator.statement.cs - meta.using

    if (true) {
        using var socket = new ClientWebSocket();
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///     ^^^^^ keyword.declaration.using.cs
///           ^^^ storage.type.variant.cs
///               ^^^^^^ variable.other.cs
///                      ^ keyword.operator.assignment.cs
///                        ^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                        ^^^ keyword.operator.new.cs
///                            ^^^^^^^^^^^^^^^ support.type.cs
///                                           ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.begin.cs
///                                            ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.end.cs
///                                             ^ punctuation.terminator.statement.cs - meta.using
    } else {
        using var socket = new ClientWebSocket();
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///     ^^^^^ keyword.declaration.using.cs
///           ^^^ storage.type.variant.cs
///               ^^^^^^ variable.other.cs
///                      ^ keyword.operator.assignment.cs
///                        ^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                        ^^^ keyword.operator.new.cs
///                            ^^^^^^^^^^^^^^^ support.type.cs
///                                           ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.begin.cs
///                                            ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.end.cs
///                                             ^ punctuation.terminator.statement.cs - meta.using
    }
    try {
        using var socket = new ClientWebSocket();
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///     ^^^^^ keyword.declaration.using.cs
///           ^^^ storage.type.variant.cs
///               ^^^^^^ variable.other.cs
///                      ^ keyword.operator.assignment.cs
///                        ^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                        ^^^ keyword.operator.new.cs
///                            ^^^^^^^^^^^^^^^ support.type.cs
///                                           ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.begin.cs
///                                            ^ meta.function-call.arguments.cs meta.group.cs punctuation.section.group.end.cs
///                                             ^ punctuation.terminator.statement.cs - meta.using
    }

namespace CommonTests.Attributes;

[AttributeUsage(AttributeTargets.Method)]
public class CustomAutoDataAttribute() : AutoDataAttribute(
    () =>
///^^^^^^^ meta.class.base.cs meta.constructor.arguments.cs meta.group.cs
/// ^^ meta.function.anonymous.parameters.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^ punctuation.section.group.end.cs
///   ^^^^ meta.function.anonymous.cs
///    ^^ keyword.declaration.function.arrow.cs
    {
        var fixture = new Fixture();
        fixture.Customizations.Add(new DateOnlySpecimenBuilder());
        return fixture;
    });
///^^^ meta.class.base.cs meta.constructor.arguments.cs meta.group.cs
/// ^ punctuation.section.block.end.cs
///  ^ punctuation.section.group.end.cs
///   ^ punctuation.terminator.statement.cs



var payload = JsonConverter.Deserialize<SomeType>(serializedData);
var for_same_value = (payload is { SomeProperty: var propValue } && propValue == compare);
/// ^^^^^^^^^^^^^^ variable.other.cs
///                ^ keyword.operator.assignment.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                  ^ punctuation.section.group.begin.cs
///                   ^^^^^^^ variable.other.cs
///                           ^^ keyword.operator.comparison.type.cs
///                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///                              ^ punctuation.section.block.begin.cs
///                                ^^^^^^^^^^^^ variable.other.member.cs
///                                            ^ keyword.operator.assignment.cs
///                                              ^^^ storage.type.variant.cs
///                                                  ^^^^^^^^^ variable.other.cs
///                                                            ^ punctuation.section.block.end.cs
///                                                              ^^ keyword.operator.logical.cs
///                                                                 ^^^^^^^^^ variable.other.cs
///                                                                           ^^ keyword.operator.comparison.cs
///                                                                              ^^^^^^^ variable.other.cs
///                                                                                     ^ punctuation.section.group.end.cs
///                                                                                      ^ punctuation.terminator.statement.cs
