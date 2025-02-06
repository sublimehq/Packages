/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://devblogs.microsoft.com/dotnet/take-c-8-0-for-a-spin/
// https://devblogs.microsoft.com/dotnet/building-c-8-0/

using var resp = await client.GetAsync(new Uri($"http://localhost:5000/events?start={start}&end={end}"));
/// <- keyword.control.using.cs
///   ^^^ storage.type.variable.cs
///       ^^^^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^^^^^ keyword.control.other.cs
///                    ^^^^^^ variable.other.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^^^^ meta.function-call.cs variable.function.cs
///                                   ^ meta.function-call.cs meta.group.cs punctuation.section.group.begin.cs
///                                    ^^^^^^^ meta.function-call.cs meta.group.cs meta.instance.cs - meta.group meta.group
///                                    ^^^ keyword.operator.new.cs
///                                        ^^^ support.type.cs
///                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs meta.group.cs meta.instance.cs meta.group.cs
///                                           ^ punctuation.section.group.begin.cs
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
///                                                                                                   ^ punctuation.section.group.end.cs
///                                                                                                    ^ meta.function-call.cs meta.group.cs punctuation.section.group.end.cs
///                                                                                                     ^ punctuation.terminator.statement.cs

List<int> numbers = null;
int? i = null;

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
///         ^^^^^^ keyword.control.flow
    {
        DeliveryTruck t when t.GrossWeightClass > 5000 => 10.00m + 5.00m,
///     ^^^^^^^^^^^^^ support.type
///                   ^ variable.other
///                     ^^^^ keyword.control.switch.case.when
///                          ^ variable.other
///                           ^ punctuation.accessor.dot
///                            ^^^^^^^^^^^^^^^^ variable.other
///                                             ^ keyword.operator
///                                               ^^^^ constant.numeric.value
///                                                    ^^ punctuation.separator.case-expression
///                                                                     ^ punctuation.terminator.case-expression
        DeliveryTruck t when t.GrossWeightClass < 3000 => 10.00m - 2.00m,
        DeliveryTruck _ => 10.00m, // TODO: scope the _ as a discard?
///     ^^^^^^^^^^^^^ support.type
///                   ^ variable.other
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
///                                        ^ punctuation.separator.property
///                                          ^^^^ variable.other.member
///                                              ^ keyword.operator.assignment
///                                                ^^^^^^ storage.type
///                                                       ^^^^ variable.other
///                                                               ^^^^^ keyword
    }
}

Point[] ps = { new (1, 4), new (3,-2), new (9, 5) }; // all Points
///            ^^^ keyword.operator.new
///                ^ punctuation.section.group.begin
///                      ^ punctuation.separator.array-element

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
///                                              ^^^ keyword.other
///                                                  ^^^^^^ variable.other
///                                                        ^ punctuation.terminator.statement

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
/// ^^^ storage.type.variable

    ref readonly var originReference = ref Point3D.Origin;
/// ^^^^^^^^^^^^ storage.modifier
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
/// ^ keyword.control.other
///   ^^^^^^^ keyword.control.loop.foreach
{
    Console.WriteLine(number);
}

static async Task Main()
{
    var exampleAsyncDisposable = new ExampleAsyncDisposable();
    await using (exampleAsyncDisposable.ConfigureAwait(false))
/// ^^^^^ keyword.control.other
///       ^^^^^ keyword.control.using
    {
        // Interact with the exampleAsyncDisposable instance.
    }

    Console.ReadLine();

    // https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/using-statement#example
    using var socket = new ClientWebSocket();
/// ^^^^^ keyword.control.using
///       ^^^ storage.type.variable
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
///        ^ keyword.operator
///         ^ constant.numeric.value
int[] a = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
Console.WriteLine($"{a[i1]}, {a[i2]}"); // "3, 6"
var slice = a[i1..i2]; // { 3, 4, 5 }
///             ^^ keyword.operator.range

var lazyDog = words[^2..^0];
///                 ^ keyword.operator
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
public static RGBColor FromRainbow(Rainbow colorBand) =>
    colorBand switch
    {
        Rainbow.Red    => new RGBColor(0xFF, 0x00, 0x00),
        Rainbow.Orange => new RGBColor(0xFF, 0x7F, 0x00),
        Rainbow.Yellow => new RGBColor(0xFF, 0xFF, 0x00),
        Rainbow.Green  => new RGBColor(0x00, 0xFF, 0x00),
        Rainbow.Blue   => new RGBColor(0x00, 0x00, 0xFF),
        Rainbow.Indigo => new RGBColor(0x4B, 0x00, 0x82),
        Rainbow.Violet => new RGBColor(0x94, 0x00, 0xD3),
        _              => throw new ArgumentException(message: "invalid enum value", paramName: nameof(colorBand)),
    };

public static string RockPaperScissors(string first, string second)
    => (first, second) switch
    {
        ("rock", "paper") => "rock is covered by paper. Paper wins.",
        ("rock", "scissors") => "rock breaks scissors. Rock wins.",
        ("paper", "rock") => "paper covers rock. Paper wins.",
        ("paper", "scissors") => "paper is cut by scissors. Scissors wins.",
        ("scissors", "rock") => "scissors is broken by rock. Rock wins.",
        ("scissors", "paper") => "scissors cuts paper. Scissors wins.",
        (_, _) => "tie"
    };

static Quadrant GetQuadrant(Point point) => point switch
{
    (0, 0) => Quadrant.Origin,
    var (x, y) when x > 0 && y > 0 => Quadrant.One,
/// ^^^ storage.type.variable
///     ^^^^^^ meta.sequence.tuple
///            ^^^^ keyword.control.switch.case.when
///                 ^ variable.other
///                   ^ keyword.operator
///                     ^ constant.numeric.value
///                       ^^ keyword.operator
///                          ^ variable.other
///                            ^ keyword.operator
///                              ^ constant.numeric.value
///                                ^^ punctuation.separator.case-expression
///                                   ^^^^^^^^ variable.other
///                                           ^ punctuation.accessor.dot
///                                            ^^^ variable.other
///                                               ^ punctuation.terminator.case-expression
    var (x, y) when x < 0 && y > 0 => Quadrant.Two,
    var (x, y) when x < 0 && y < 0 => Quadrant.Three,
    var (x, y) when x > 0 && y < 0 => Quadrant.Four,
    var (_, _) => Quadrant.OnBorder,
/// ^^^ storage.type.variable
///     ^^^^^^ meta.sequence.tuple
///      ^ variable.language.anonymous
///       ^ punctuation.separator.sequence
///         ^ variable.language.anonymous
    _ => Quadrant.Unknown
/// ^ variable.language.anonymous
///   ^^ punctuation.separator.case-expression
};
/// <- punctuation.section.block.end
/// ^ - meta.block

    using var socket = new ClientWebSocket();
/// ^^^^^ keyword.control.using
///       ^^^ storage.type.variable
///           ^^^^^^ variable.other
///                  ^ keyword.operator.assignment
///                    ^^^ keyword.operator.new
///                        ^^^^^^^^^^^^^^^ support.type
///                                       ^ punctuation.section.group.begin
///                                        ^ punctuation.section.group.end
///                                         ^ punctuation.terminator.statement
    if (true) {
        using var socket = new ClientWebSocket();
///     ^^^^^ keyword.control.using
///           ^^^ storage.type.variable
///               ^^^^^^ variable.other
///                      ^ keyword.operator.assignment
///                        ^^^ keyword.operator.new
///                            ^^^^^^^^^^^^^^^ support.type
///                                           ^ punctuation.section.group.begin
///                                            ^ punctuation.section.group.end
///                                             ^ punctuation.terminator.statement
    } else {
        using var socket = new ClientWebSocket();
///     ^^^^^ keyword.control.using
///           ^^^ storage.type.variable
///               ^^^^^^ variable.other
///                      ^ keyword.operator.assignment
///                        ^^^ keyword.operator.new
///                            ^^^^^^^^^^^^^^^ support.type
///                                           ^ punctuation.section.group.begin
///                                            ^ punctuation.section.group.end
///                                             ^ punctuation.terminator.statement
    }
    try {
        using var socket = new ClientWebSocket();
///     ^^^^^ keyword.control.using
///           ^^^ storage.type.variable
///               ^^^^^^ variable.other
///                      ^ keyword.operator.assignment
///                        ^^^ keyword.operator.new
///                            ^^^^^^^^^^^^^^^ support.type
///                                           ^ punctuation.section.group.begin
///                                            ^ punctuation.section.group.end
///                                             ^ punctuation.terminator.statement
    }

using AutoFixture;
using AutoFixture.Xunit2;

namespace CommonTests.Attributes;

[AttributeUsage(AttributeTargets.Method)]
public class CustomAutoDataAttribute() : AutoDataAttribute(
    () =>
///^^^^^^^ meta.class.constructor.arguments.cs meta.group.cs
/// ^^^^^ meta.function.anonymous.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^ punctuation.section.group.end.cs
///    ^^ keyword.declaration.function.arrow.cs
    {
        var fixture = new Fixture();
        fixture.Customizations.Add(new DateOnlySpecimenBuilder());
        return fixture;
    });
///^^^ meta.class.constructor.arguments.cs meta.group.cs
/// ^ punctuation.section.block.end.cs
///  ^ punctuation.section.group.end.cs
///   ^ meta.class.cs punctuation.terminator.statement.cs



var payload = JsonConverter.Deserialize<SomeType>(serializedData);
var for_same_value = (payload is { SomeProperty: var propValue } && propValue == compare);
/// ^^^^^^^^^^^^^^ variable.other.cs
///                ^ keyword.operator.assignment.variable.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                  ^ punctuation.section.group.begin.cs
///                   ^^^^^^^ variable.other.cs
///                           ^^ keyword.operator.reflection.cs
///                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance.property-subpattern.cs meta.class.body.anonymous.cs meta.block.cs
///                              ^ punctuation.section.block.begin.cs
///                                ^^^^^^^^^^^^ variable.other.member.cs
///                                            ^ keyword.operator.assignment.cs
///                                              ^^^ storage.type.variable.cs
///                                                  ^^^^^^^^^ variable.other.cs
///                                                            ^ punctuation.section.block.end.cs
///                                                              ^^ keyword.operator.cs
///                                                                 ^^^^^^^^^ variable.other.cs
///                                                                           ^^ keyword.operator.cs
///                                                                              ^^^^^^^ variable.other.cs
///                                                                                     ^ punctuation.section.group.end.cs
///                                                                                      ^ punctuation.terminator.statement.cs
