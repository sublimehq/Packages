/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/
// https://daveabrock.com/2020/07/06/c-sharp-9-deep-dive-records#create-your-first-record

public record Person
/// ^^ storage.modifier.access
///    ^^^^^^ keyword.declaration.class
///           ^^^^^^ entity.name.class
{
    private readonly string lastName;
    public string FirstName { get; init; }
///                           ^^^ keyword.declaration.function.accessor.get
///                              ^ punctuation.terminator
///                                ^^^^ keyword.declaration.function.accessor.set
///                                    ^ punctuation.terminator
    public string LastName
    {
        get => lastName;
        init => lastName = (value ?? throw new ArgumentNullException(nameof(LastName)));
///     ^^^^ keyword.declaration.function.accessor.set
///          ^^ keyword.declaration.function.arrow
///             ^^^^^^^^ variable.other
///                               ^^ keyword.operator.null-coalescing
    }
}

var otherPerson = person with { LastName = "Hanselman" };
///                      ^^^^ keyword.operator.with
///                           ^ punctuation.section.braces.begin

public record Student : Person { int ID; }
///                   ^ meta.class punctuation.separator.type
///                     ^^^^^^ entity.other.inherited-class
Person person = new Student { FirstName = "Scott", LastName = "Hunter", ID = GetNewId() };
otherPerson = person with { LastName = "Hanselman" };

// https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/#improved-pattern-matching
// https://dotnetcoretutorials.com/2020/08/10/relational-pattern-matching-in-c-9/
// https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-9.0/patterns3
if (myValue is > 0 and <= 10)
/// ^^^^^^^ variable.other
///         ^^ keyword.operator
///            ^ keyword.operator
///              ^ constant.numeric.value
///                ^^^ keyword.operator.logical
///                    ^^ keyword.operator
///                       ^^ constant.numeric.value
    Console.WriteLine("More than 0 but less than or equal to 10");

switch (myValue)
{
    case <= 0:
/// ^^^^ keyword.control.switch.case
///      ^^ keyword.operator
///         ^ constant.numeric.value
///          ^ punctuation.separator.case-statement
        Console.WriteLine("Less than or equal to 0");
        break;
    case > 0 and <= 10:
/// ^^^^ keyword.control.switch.case
///      ^ keyword.operator
///        ^ constant.numeric.value
///          ^^^ keyword.operator.logical
///              ^^ keyword.operator
///                 ^^ constant.numeric.value
///                   ^ punctuation.separator.case-statement
        Console.WriteLine("More than 0 but less than or equal to 10");
        break;
    default:
        Console.WriteLine("More than 10");
        break;
}

var myValue = (args.Length > 0) switch { true => int.Parse(args[0]), _ => 4 };
Console.WriteLine(myValue);

var message = myValue switch
///                   ^^^^^^ keyword.control.flow
{
    <= 0 => "Less than or equal to 0",
/// ^^ keyword.operator
///    ^ constant.numeric.value
///      ^^ punctuation.separator.case-expression
///         ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
///                                  ^ punctuation.terminator.case-expression
    > 0 and <= 10 => "More than 0 but less than or equal to 10",
/// ^ keyword.operator
///   ^ constant.numeric.value
///     ^^^ keyword.operator.logical
///         ^^ keyword.operator
///            ^^ constant.numeric.value
///               ^^ punctuation.separator.case-expression
    _ => "More than 10"
/// ^ variable.language.anonymous
///   ^^ punctuation.separator.case-expression
} + ".";
/// <- punctuation.section.block.end
///    ^ punctuation.terminator.statement

// https://dotnetcoretutorials.com/2019/06/25/switch-expressions-in-c-8/
static bool CheckIfCanWalkIntoBank(Bank bank, bool isVip)
{
    return bank.Status switch
    {
        BankBranchStatus.Open => true,
///     ^^^^^^^^^^^^^^^^ variable.other
///                     ^ punctuation.accessor.dot
///                      ^^^^ variable.other
///                           ^^ punctuation.separator.case-expression
///                              ^^^^ constant.language
///                                  ^ punctuation.terminator.case-expression
        BankBranchStatus.Closed => false,
        BankBranchStatus.VIPCustomersOnly when isVip => true,
        BankBranchStatus.VIPCustomersOnly when !isVip => false
///     ^^^^^^^^^^^^^^^^ variable.other
///                     ^ punctuation.accessor.dot
///                      ^^^^^^^^^^^^^^^^ variable.other
///                                       ^^^^ keyword.control.switch.case.when
///                                            ^ keyword.operator
///                                             ^^^^^ variable.other
///                                                   ^^ punctuation.separator.case-expression
///                                                      ^^^^^ constant.language
    };
}

static bool CheckIfCanWalkIntoBank(Bank bank, bool isVip)
{
    return (bank.Status, isVip) switch
/// ^^^^^^ keyword.control.flow.return
///        ^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple
///                             ^^^^^^ keyword.control.flow
    {
        (BankBranchStatus.Open, _) => true,
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple
///     ^ punctuation.section.sequence.begin
///      ^^^^^^^^^^^^^^^^ variable.other
///                      ^ punctuation.accessor.dot
///                       ^^^^ variable.other
///                           ^ punctuation.separator.sequence
///                             ^ variable.language.anonymous
///                              ^ punctuation.section.sequence.end
///                                ^^ punctuation.separator.case-expression
///                                   ^^^^ constant.language
///                                       ^ punctuation.terminator.case-expression
        (BankBranchStatus.Closed, _) => false,
        (BankBranchStatus.VIPCustomersOnly, true) => true,
        (BankBranchStatus.VIPCustomersOnly, false) => false
    };
}

static bool CheckIfCanWalkIntoBank(Bank bank, bool isVip)
{
    return bank switch
    {
        { Status: BankBranchStatus.Open } => true,
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance.property-subpattern meta.class.body.anonymous meta.block
///     ^ punctuation.section.block.begin
///       ^^^^^^ variable.other.member
///             ^ keyword.operator.assignment
///               ^^^^^^^^^^^^^^^^ variable.other
///                               ^ punctuation.accessor.dot
///                                ^^^^ variable.other
///                                     ^ punctuation.section.block.end
///                                       ^^ punctuation.separator.case-expression
///                                          ^^^^ constant.language
///                                              ^ punctuation.terminator.case-expression
        { Status: BankBranchStatus.Closed } => false,
        { Status: BankBranchStatus.VIPCustomersOnly } => isVip
    };
}

// https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/pattern-matching
public class TollCalculator
{
    public decimal CalculateToll(object vehicle) =>
        vehicle switch
    {
        Car c           => 2.00m,
///     ^^^ support.type
///         ^ variable.other
///                     ^^ punctuation.separator.case-expression
///                        ^^^^ constant.numeric.value
///                            ^ constant.numeric.suffix
///                             ^ punctuation.terminator.case-expression
        Taxi t          => 3.50m,
        Bus b           => 5.00m,
        DeliveryTruck t => 10.00m,
        { }             => throw new ArgumentException(message: "Not a known vehicle type", paramName: nameof(vehicle)),
///     ^^^ meta.instance.property-subpattern meta.class.body.anonymous
///     ^ punctuation.section.block.begin
///       ^ punctuation.section.block.end
///                     ^^ punctuation.separator.case-expression
///                        ^^^^^ keyword.other
///                              ^^^ keyword.operator.new
///                                  ^^^^^^^^^^^^^^^^^ support.type
        not null        => throw new ArgumentException(message: "Not a known vehicle type", paramName: nameof(vehicle)), // https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/#logical-patterns
///     ^^^ keyword.operator.logical
///         ^^^^ constant.language
        null            => throw new ArgumentNullException(nameof(vehicle))
///     ^^^^ constant.language
    };

    public decimal CalculateToll(object vehicle) =>
        vehicle switch
        {
            Car {Passengers: 0}        => 2.00m + 0.50m,
///         ^^^ support.type
///             ^^^^^^^^^^^^^^^ meta.instance.property-subpattern meta.class.body.anonymous meta.block
///              ^^^^^^^^^^ variable.other.member
///                        ^ keyword.operator.assignment
///                          ^ constant.numeric.value
///                                    ^^ punctuation.separator.case-expression

            Car {Passengers: 1}        => 2.0m,
            Car {Passengers: 2}        => 2.0m - 0.50m,
            Car c                      => 2.00m - 1.0m,

            Taxi {Fares: 0}  => 3.50m + 1.00m,
            Taxi {Fares: 1}  => 3.50m,
            Taxi {Fares: 2}  => 3.50m - 0.50m,
            Taxi t           => 3.50m - 1.00m,

            Bus b when ((double)b.Riders / (double)b.Capacity) < 0.50 => 5.00m + 2.00m,
///         ^^^ support.type
///             ^ variable.other
///               ^^^^ keyword.control.switch.case.when
///                      ^^^^^^ meta.cast storage.type
            Bus b when ((double)b.Riders / (double)b.Capacity) > 0.90 => 5.00m - 1.00m,
            Bus b => 5.00m,

            DeliveryTruck t when (t.GrossWeightClass > 5000) => 10.00m + 5.00m,
            DeliveryTruck t when (t.GrossWeightClass < 3000) => 10.00m - 2.00m,
            DeliveryTruck t => 10.00m,

            { }     => throw new ArgumentException(message: "Not a known vehicle type", paramName: nameof(vehicle)),
            null    => throw new ArgumentNullException(nameof(vehicle))
        };

    public decimal CalculateToll(object vehicle) =>
        vehicle switch
        {
            Car c => c.Passengers switch
            {
                0 => 2.00m + 0.5m,
                1 => 2.0m,
                2 => 2.0m - 0.5m,
                _ => 2.00m - 1.0m
            },

            Taxi t => 3.50m + (t.Fares) switch
///         ^^^^ support.type
///              ^ variable.other
///                ^^ punctuation.separator.case-expression
///                   ^^^^ constant.numeric.value
///                       ^ constant.numeric.suffix
///                         ^ keyword.operator
///                           ^ punctuation.section.group.begin
///                            ^ variable.other
///                             ^ punctuation.accessor.dot
///                              ^^^^^ variable.other
///                                   ^ punctuation.section.group.end
///                                     ^^^^^^ keyword.control.flow
            {
///         ^ punctuation.section.block.begin
                0 => 1.00m,
///             ^ constant.numeric.value
///               ^^ punctuation.separator.case-expression
///                  ^^^^^ meta.number.float.decimal
///                       ^ punctuation.terminator.case-expression
                1 => 0m,
                2 => -0.50m,
                _ => -1.00m
            },

            Bus b when ((double)b.Riders / (double)b.Capacity) < 0.50 => 5.00m + 2.00m,
            Bus b when ((double)b.Riders / (double)b.Capacity) > 0.90 => 5.00m - 1.00m,
            Bus b => 5.00m,

            DeliveryTruck t when (t.GrossWeightClass > 5000) => 10.00m + 5.00m,
            DeliveryTruck t when (t.GrossWeightClass < 3000) => 10.00m - 2.00m,
            DeliveryTruck t => 10.00m,

            { }  => throw new ArgumentException(message: "Not a known vehicle type", paramName: nameof(vehicle)),
            null => throw new ArgumentNullException(nameof(vehicle))
        };
}


Point p = new (3, 5);
///       ^^^ keyword.operator.new
///           ^ punctuation.section.group.begin
///            ^ constant.numeric.value
///             ^ punctuation.separator.argument
///               ^ constant.numeric.value
///                ^ punctuation.section.group.end
///                 ^ punctuation.terminator.statement

if (e is not Customer) { }
///   ^^^^^^ keyword.operator.reflection
///          ^^^^^^^^ support.type

public record A(int Num);
///    ^^^^^^^^ meta.class.record
///            ^^^^^^^^^ meta.class.constructor.parameters
///                     ^ - meta.class
///    ^^^^^^ keyword.declaration.class.record
///           ^ entity.name.class
///            ^ punctuation.section.parameters.begin
///             ^^^ storage.type
///                 ^^^ variable.parameter
///                    ^ punctuation.section.parameters.end
///                     ^ punctuation.terminator.statement
public record B<T>(T Num)<NoGeneric>;
///    ^^^^^^^^^^^ meta.class.record
///               ^^^^^^^ meta.class.constructor.parameters
///                      ^^^^^^^^^^^ meta.class.record - meta.generic
///                                 ^ - meta.class
///    ^^^^^^ keyword.declaration.class.record
///           ^ entity.name.class
///            ^^^ meta.generic
///            ^ punctuation.definition.generic.begin
///             ^ support.type
///              ^ punctuation.definition.generic.end
///               ^ punctuation.section.parameters.begin
///                     ^ punctuation.section.parameters.end
///                                 ^ punctuation.terminator.statement
public record C<TNum> (TNum Num) where TNum : class;
///    ^^^^^^^^^^^^^^^ meta.class.record.cs
///                   ^^^^^^^^^^ meta.class.constructor.parameters.cs
///                             ^^^^^^^^^^^^^^^^^^^ meta.class.record.cs
///                                                ^ - meta.class
///    ^^^^^^ keyword.declaration.class.record
///           ^ entity.name.class
///            ^ punctuation.definition.generic.begin
///             ^^^^ support.type
///                 ^ punctuation.definition.generic.end
///                   ^ punctuation.section.parameters.begin
///                    ^^^^ support.type
///                         ^^^ variable.parameter
///                            ^ punctuation.section.parameters.end
///                              ^^^^^ storage.modifier
///                                    ^^^^ support.type
///                                         ^ punctuation.separator.type
///                                           ^^^^^ storage.type
///                                                ^ punctuation.terminator.statement
public record D<TNum> (TNum Num) where TNum : class { public const int TEST = 4; }
///    ^^^^^^^^^^^^^^^ meta.class.record.cs
///                   ^^^^^^^^^^ meta.class.constructor.parameters.cs
///                             ^^^^^^^^^^^^^^^^^^^^ meta.class.record.cs
///                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.record.body.cs meta.block.cs
///    ^^^^^^ keyword.declaration.class.record
///           ^ entity.name.class
///            ^ punctuation.definition.generic.begin
///             ^^^^ support.type
///                 ^ punctuation.definition.generic.end
///                   ^ punctuation.section.parameters.begin
///                    ^^^^ support.type
///                         ^^^ variable.parameter
///                            ^ punctuation.section.parameters.end
///                              ^^^^^ storage.modifier
///                                    ^^^^ support.type
///                                         ^ punctuation.separator.type
///                                           ^^^^^ storage.type
///                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
///                                                 ^ punctuation.section.block.begin
///                                                   ^^^^^^ storage.modifier.access
///                                                          ^^^^^ storage.modifier
///                                                                ^^^ storage.type
///                                                                    ^^^^ variable.other
///                                                                         ^ keyword.operator.assignment.variable
///                                                                           ^ constant.numeric.value
///                                                                            ^ punctuation.terminator.statement
///                                                                              ^ punctuation.section.block.end
public record Person(
///^^^ storage.modifier.access
///    ^^^^^^ meta.class.record keyword.declaration.class.record
///           ^^^^^^ meta.class.record entity.name.class
///                 ^ punctuation.section.parameters.begin
    [property: JsonPropertyName("firstName")]string FirstName,
/// ^ punctuation.definition.annotation.begin
///                                         ^ punctuation.definition.annotation.end
///                                          ^^^^^^ storage.type
///                                                 ^^^^^^^^^ variable.parameter
///                                                          ^ punctuation.separator.parameter.function
    [property: JsonPropertyName("lastName")]string LastName);
/// ^ punctuation.definition.annotation.begin
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.constructor.parameters meta.annotation
///                                         ^^^^^^ storage.type
///                                                ^^^^^^^^ variable.parameter
///                                                        ^ punctuation.section.parameters.end
///                                                         ^ punctuation.terminator.statement

public class MyClass { public record MyRecord <T> (int nums) { public const int TEST = 4; } }
///^^^^ - meta.class
///    ^^^^^^^^^^^^^^ meta.class - meta.class.body
///                  ^^^^^^^^^ meta.class.body meta.block
///                           ^^^^^^^^^^^^^^^^^^^^ meta.class.body meta.block meta.class.record - meta.class.constructor.parameters
///                                               ^^^^^^^^^^ meta.class.body meta.block meta.class.constructor.parameters
///                                                         ^ meta.class.body meta.block meta.class.record - meta.class.constructor.parameters
///                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body meta.block meta.class.record.body meta.block
///                                                                                        ^^ meta.class.body meta.block - meta.class meta.class
///                                                                                          ^ - meta.class
///^^^ storage.modifier.access
///    ^^^^^ keyword.declaration.class
///          ^^^^^^^ entity.name.class
///                  ^ punctuation.section.block.begin
///                    ^^^^^^ storage.modifier.access
///                           ^^^^^^ keyword.declaration.class.record
///                                  ^^^^^^^^ entity.name.class
///                                           ^ punctuation.definition.generic.begin
///                                            ^ support.type
///                                             ^ punctuation.definition.generic.end
///                                               ^ meta.class.constructor.parameters punctuation.section.parameters.begin
///                                                ^^^ storage.type
///                                                    ^^^^ variable.parameter
///                                                        ^ punctuation.section.parameters.end
///                                                          ^ punctuation.section.block.begin
///                                                            ^^^^^^ storage.modifier.access
///                                                                   ^^^^^ storage.modifier
///                                                                         ^^^ storage.type
///                                                                             ^^^^ variable.other.member
///                                                                                       ^ punctuation.section.block.end
///                                                                                         ^ punctuation.section.block.end

using ServiceProvider sp = services.BuildServiceProvider();
/// ^ keyword.control.using
///   ^^^^^^^^^^^^^^^ support.type
///                   ^^ variable.other
///                      ^ keyword.operator.assignment
///                        ^^^^^^^^ variable.other
///                                ^ punctuation.accessor.dot
///                                 ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
///                                 ^^^^^^^^^^^^^^^^^^^^ variable.function
///                                                     ^ punctuation.section.group.begin - invalid
///                                                      ^ punctuation.section.group.end - invalid
using IDisposable sub = pageContentObservable.Subscribe(Console.WriteLine);
/// ^ keyword.control.using
///   ^^^^^^^^^^^ support.type
///               ^^^ variable.other
///                   ^ keyword.operator.assignment
///                     ^^^^^^^^^^^^^^^^^^^^^ variable.other
