/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/
// https://daveabrock.com/2020/07/06/c-sharp-9-deep-dive-records#create-your-first-record

public record Person
/// ^^ storage.modifier.access
///    ^^^^^^ keyword.declaration.record
///           ^^^^^^ entity.name.class
{
    private readonly string lastName;
    public string FirstName { get; init; }
///                           ^^^ keyword.declaration.function.accessor.get
///                              ^ punctuation.terminator
///                                ^^^^ keyword.declaration.function.accessor.init
///                                    ^ punctuation.terminator
    public string LastName
    {
        get => lastName;
        init => lastName = (value ?? throw new ArgumentNullException(nameof(LastName)));
///     ^^^^ keyword.declaration.function.accessor.init
///          ^^ keyword.declaration.function.arrow
///             ^^^^^^^^ variable.other
///                               ^^ keyword.operator.null-coalescing
    }
}

var otherPerson = person with { LastName = "Hanselman" };
///                      ^^^^ keyword.operator.with
///                           ^ punctuation.section.braces.begin

public record Student : Person { int ID; }
///                   ^ meta.record punctuation.separator.colon
///                     ^^^^^^ entity.other.inherited-class
Person person = new Student { FirstName = "Scott", LastName = "Hunter", ID = GetNewId() };
otherPerson = person with { LastName = "Hanselman" };

// https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/#improved-pattern-matching
// https://dotnetcoretutorials.com/2020/08/10/relational-pattern-matching-in-c-9/
// https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-9.0/patterns3

switch (myValue)
{
    case <= 0:
/// ^^^^ keyword.control.conditional.case
///      ^^ keyword.operator.comparison
///         ^ constant.numeric.value
///          ^ punctuation.separator.colon
        Console.WriteLine("Less than or equal to 0");
        break;
    case > 0 and <= 10:
/// ^^^^ keyword.control.conditional.case
///      ^ keyword.operator.comparison
///        ^ constant.numeric.value
///          ^^^ keyword.operator.logical
///              ^^ keyword.operator.comparison
///                 ^^ constant.numeric.value
///                   ^ punctuation.separator.colon
        Console.WriteLine("More than 0 but less than or equal to 10");
        break;
    default:
        Console.WriteLine("More than 10");
        break;
}

var myValue = (args.Length > 0) switch { true => int.Parse(args[0]), _ => 4 };
///                             ^^^^^^ keyword.control.conditional.switch.cs
///                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
///                                    ^ punctuation.section.block.begin.cs
///                                      ^^^^^ meta.case.pattern.cs
///                                      ^^^^ constant.language.boolean.true.cs
///                                           ^^ meta.case.cs punctuation.separator.case-expression.cs
///                                              ^^^ storage.type.cs
///                                                 ^ punctuation.accessor.dot.cs
///                                                  ^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                       ^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                                                       ^ punctuation.section.group.begin.cs
///                                                        ^^^^ variable.other.cs
///                                                            ^^^ meta.brackets.cs
///                                                            ^ punctuation.section.brackets.begin.cs
///                                                             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                              ^ punctuation.section.brackets.end.cs
///                                                               ^ punctuation.section.group.end.cs
///                                                                ^ punctuation.terminator.case-expression.cs
///                                                                  ^^ meta.case.pattern.cs
///                                                                  ^ variable.language.anonymous.cs
///                                                                    ^^ meta.case.cs punctuation.separator.case-expression.cs
///                                                                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                                         ^ punctuation.section.block.end.cs
///                                                                          ^ punctuation.terminator.statement.cs

var message = myValue switch
///                   ^^^^^^ keyword.control.conditional.switch.cs
{
/// <- meta.block.cs punctuation.section.block.begin.cs
    <= 0 => "Less than or equal to 0",
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^^^^ meta.case.pattern.cs
///      ^^ meta.case.cs
/// ^^ keyword.operator.comparison.cs
///    ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///      ^^ punctuation.separator.case-expression.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///                                  ^ punctuation.terminator.case-expression.cs
    > 0 and <= 10 => "More than 0 but less than or equal to 10",
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^^^^^^^^^^^^^ meta.case.pattern.cs
///               ^^ meta.case.cs
/// ^ keyword.operator.comparison.cs
///   ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///     ^^^ keyword.operator.logical.cs
///         ^^ keyword.operator.comparison.cs
///            ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^^ punctuation.separator.case-expression.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                            ^ punctuation.terminator.case-expression.cs
    _ => "More than 10"
///^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
/// ^^ meta.case.pattern.cs
///   ^^ meta.case.cs
/// ^ variable.language.anonymous.cs
///   ^^ punctuation.separator.case-expression.cs
///      ^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///      ^ punctuation.definition.string.begin.cs
///                   ^ punctuation.definition.string.end.cs
} + ".";
/// <- meta.block.cs punctuation.section.block.end.cs
///    ^ punctuation.terminator.statement.cs

static bool testSwitchExpressionMemberPatterns(Bank bank, bool isVip)
{
    return bank switch
///^^^^^^^^^^^^^^^^^^^^ meta.method.body.cs meta.block.cs
/// ^^^^^^ keyword.control.flow.return.cs
///        ^^^^ variable.other.cs
///             ^^^^^^ keyword.control.conditional.switch.cs
    {
///^^^ meta.method.body.cs meta.block.cs
/// ^^ meta.block.cs
/// ^ punctuation.section.block.begin.cs
        { Status: BankStatus.Open } => true,
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///                                 ^^ meta.case.cs
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^^ variable.other.member.cs
///             ^ keyword.operator.assignment.cs
///               ^^^^^^^^^^ support.type.cs
///                         ^ punctuation.accessor.dot.cs
///                          ^^^^ variable.other.member.cs
///                               ^ punctuation.section.block.end.cs
///                                 ^^ punctuation.separator.case-expression.cs
///                                    ^^^^ constant.language.boolean.true.cs
///                                        ^ punctuation.terminator.case-expression.cs
        { Status: BankStatus.VIPCustomersOnly } => isVip,
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///                                             ^^ meta.case.cs
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^^ variable.other.member.cs
///             ^ keyword.operator.assignment.cs
///               ^^^^^^^^^^ support.type.cs
///                         ^ punctuation.accessor.dot.cs
///                          ^^^^^^^^^^^^^^^^ variable.other.member.cs
///                                           ^ punctuation.section.block.end.cs
///                                             ^^ punctuation.separator.case-expression.cs
///                                                ^^^^^ variable.other.cs
///                                                     ^ punctuation.terminator.case-expression.cs
        { Status: { Foo: true }, Bar: var item } => false
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.cs
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///                                              ^^ meta.case.cs
///     ^^^^^^^^^^ meta.class.body.cs meta.block.cs - meta.class.body meta.class.body
///               ^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.class.body.cs meta.block.cs
///                            ^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs - meta.class.body meta.class.body
///     ^ punctuation.section.block.begin.cs
///       ^^^^^^ variable.other.member.cs
///             ^ keyword.operator.assignment.cs
///               ^ punctuation.section.block.begin.cs
///                 ^^^ variable.other.member.cs
///                    ^ keyword.operator.assignment.cs
///                      ^^^^ constant.language.boolean.true.cs
///                           ^ punctuation.section.block.end.cs
///                            ^ punctuation.separator.comma.cs
///                              ^^^ variable.other.member.cs
///                                 ^ keyword.operator.assignment.cs
///                                   ^^^ storage.type.cs
///                                       ^^^^ variable.other.cs
///                                            ^ punctuation.section.block.end.cs
///                                              ^^ punctuation.separator.case-expression.cs
///                                                 ^^^^^ constant.language.boolean.false.cs
    };
///^^^^ meta.method.body.cs meta.block.cs
///^^ meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ punctuation.terminator.statement.cs
}

// https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/pattern-matching
public class TollCalculator
{
    public decimal testSwitchExpressionPatternMatching(object vehicle) =>
        vehicle switch
    {
        Car c           => 2.00m,
///     ^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///                     ^^ meta.case.cs
///     ^^^ support.type.cs
///         ^ variable.other.cs
///                     ^^ punctuation.separator.case-expression.cs
///                             ^ punctuation.terminator.case-expression.cs

        Car {Passengers: 0} => 2.00m + 0.50m,
///     ^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///     ^^^ support.type.cs
///         ^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///         ^ punctuation.section.block.begin.cs
///          ^^^^^^^^^^ variable.other.member.cs
///                    ^ keyword.operator.assignment.cs
///                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^ punctuation.section.block.end.cs
///                         ^^ meta.case.cs punctuation.separator.case-expression.cs
///                                         ^ punctuation.terminator.case-expression.cs

        not Car {Passengers: > 0} => 2.00m + 0.50m,
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///     ^^^ keyword.operator.logical.cs
///         ^^^ support.type.cs
///             ^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///             ^ punctuation.section.block.begin.cs
///              ^^^^^^^^^^ variable.other.member.cs
///                        ^ keyword.operator.assignment.cs
///                          ^ keyword.operator.comparison.cs
///                            ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                             ^ punctuation.section.block.end.cs
///                               ^^ meta.case.cs punctuation.separator.case-expression.cs
///                                               ^ punctuation.terminator.case-expression.cs

        Bus b when ((double)b.Riders / (double)b.Capacity) < 0.50 => 5.00m + 2.00m,
///     ^^^^^^ meta.case.pattern.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.guard.cs
///                                                               ^^ meta.case.cs
///     ^^^ support.type.cs
///         ^ variable.other.cs
///           ^^^^ keyword.control.conditional.when.cs
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^^^^^^ meta.cast.cs meta.group.cs
///                 ^ punctuation.section.group.begin.cs
///                  ^^^^^^ storage.type.cs
///                        ^ punctuation.section.group.end.cs
///                         ^ variable.other.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^^ variable.other.cs
///                                  ^ keyword.operator.arithmetic.cs
///                                    ^^^^^^^^ meta.cast.cs meta.group.cs
///                                    ^ punctuation.section.group.begin.cs
///                                     ^^^^^^ storage.type.cs
///                                           ^ punctuation.section.group.end.cs
///                                            ^ variable.other.cs
///                                             ^ punctuation.accessor.dot.cs
///                                              ^^^^^^^^ variable.other.cs
///                                                      ^ punctuation.section.group.end.cs
///                                                        ^ keyword.operator.comparison.cs
///                                                          ^^^^ meta.number.float.decimal.cs constant.numeric.value.cs
///                                                               ^^ punctuation.separator.case-expression.cs
///                                                                               ^ punctuation.terminator.case-expression.cs

        Taxi t => 3.50m + (t.Fares) switch
///     ^^^^^^^ meta.case.pattern.cs
///            ^^ meta.case.cs
///     ^^^^ support.type.cs
///          ^ variable.other.cs
///            ^^ punctuation.separator.case-expression.cs
///               ^^^^^ meta.number.float.decimal.cs
///               ^^^^ constant.numeric.value.cs
///                ^ punctuation.separator.decimal.cs
///                   ^ constant.numeric.suffix.cs
///                     ^ keyword.operator.arithmetic.cs
///                       ^^^^^^^^^ meta.group.cs
///                       ^ punctuation.section.group.begin.cs
///                        ^ variable.other.cs
///                         ^ punctuation.accessor.dot.cs
///                          ^^^^^ variable.other.cs
///                               ^ punctuation.section.group.end.cs
///                                 ^^^^^^ keyword.control.conditional.switch.cs
        {
///     ^ punctuation.section.block.begin.cs
            0 => 1.00m,
///         ^^ meta.case.pattern.cs
///         ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///           ^^ meta.case.cs punctuation.separator.case-expression.cs
///              ^^^^^ meta.number.float.decimal.cs
///                   ^ punctuation.terminator.case-expression.cs
            _ => -1.00m
///         ^^ meta.case.pattern.cs
///         ^ variable.language.anonymous.cs
///           ^^ meta.case.cs punctuation.separator.case-expression.cs
///               ^^^^^ meta.number.float.decimal.cs
        },
///      ^ meta.block.cs - meta.case
///     ^ punctuation.section.block.end.cs
///      ^ punctuation.terminator.case-expression.cs

        not { } => 2.4m,
///     ^^^^^^^^ meta.case.pattern.cs
///     ^^^ keyword.operator.logical.cs
///         ^^^ meta.class.body.cs meta.block.cs
///         ^ punctuation.section.block.begin.cs
///           ^ punctuation.section.block.end.cs
///             ^^ meta.case.cs punctuation.separator.case-expression.cs
///                    ^ punctuation.terminator.case-expression.cs

        { }             => throw new ArgumentException(message: "Not a known vehicle type", paramName: nameof(vehicle)),
///     ^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///                     ^^ meta.case.cs
///     ^^^ meta.class.body.cs meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^ punctuation.section.block.end.cs
///                     ^^ punctuation.separator.case-expression.cs

        // https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/#logical-patterns

        not null        => throw new ArgumentException(message: "Not a known vehicle type", paramName: nameof(vehicle)),
///     ^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///     ^^^ keyword.operator.logical.cs
///         ^^^^ constant.language.null.cs
///                     ^^ meta.case.cs punctuation.separator.case-expression.cs
        null            => throw new ArgumentNullException(nameof(vehicle))
///     ^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///     ^^^^ constant.language.null.cs
///                     ^^ meta.case.cs punctuation.separator.case-expression.cs
    }
/// ^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs punctuation.section.block.end.cs
}
/// <- meta.class.body.cs meta.block.cs punctuation.section.block.end.cs

if (value is > 0 and <= 10 local) Console.Write($"Value is {local}.");
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///^ punctuation.section.group.begin.cs
/// ^^^^^ variable.language.cs
///       ^^ keyword.operator.comparison.type.cs
///          ^ keyword.operator.comparison.cs
///            ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^^^ keyword.operator.logical.cs
///                  ^^ keyword.operator.comparison.cs
///                     ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                        ^^^^^ variable.other.cs
///                             ^ punctuation.section.group.end.cs

if (input is null) { }
/// ^^^^^ variable.other
///       ^^ keyword.operator.comparison.type.cs
///          ^^^^ constant.language.null.cs

if (input is not null) { }
/// ^^^^^ variable.other
///       ^^ keyword.operator.comparison.type.cs
///          ^^^ keyword.operator.logical.cs
///              ^^^^ constant.language.null.cs

if (e is Customer) { }
///^^^^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^^^^^^ support.type

if (e is Customer f) { }
///^^^^^^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^^^^^^ support.type
///               ^ variable.other.cs

if (e is not Customer { Member: "value" }) { }
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^ keyword.operator.logical.cs
///          ^^^^^^^^ support.type
///                   ^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///                   ^ punctuation.section.block.begin.cs
///                     ^^^^^^ variable.other.member.cs
///                           ^ keyword.operator.assignment.cs
///                             ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                     ^ punctuation.section.block.end.cs

if (e is not Customer { Member: "value" } f) { }
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^ keyword.operator.logical.cs
///          ^^^^^^^^ support.type
///                   ^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
///                   ^ punctuation.section.block.begin.cs
///                     ^^^^^^ variable.other.member.cs
///                           ^ keyword.operator.assignment.cs
///                             ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                     ^ punctuation.section.block.end.cs
///                                       ^ variable.other.cs
///                                        ^ punctuation.section.group.end.cs

if (e is { Member: {Member: "value"}}) { }
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^^^^^^^^ meta.class.body.cs meta.block.cs - meta.class.body meta.class.body
///                ^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.class.body.cs meta.block.cs
///                                 ^ meta.class.body.cs meta.block.cs - meta.class.body meta.class.body
///      ^ punctuation.section.block.begin.cs
///        ^^^^^^ variable.other.member.cs
///              ^ keyword.operator.assignment.cs
///                ^ punctuation.section.block.begin.cs
///                 ^^^^^^ variable.other.member.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                ^^ punctuation.section.block.end.cs
///                                  ^ punctuation.section.group.end.cs

if (e is var f) { }
///^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^ storage.type.cs
///          ^ variable.other.cs
///           ^ punctuation.section.group.end.cs

if (e is not var f) { }
///^^^^^^^^^^^^^^^^ meta.group.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^ keyword.operator.logical.cs
///          ^^^ storage.type.cs
///              ^ variable.other.cs
///               ^ punctuation.section.group.end.cs

if (e is var (int i, k)) { }
///^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///^ punctuation.section.group.begin.cs
/// ^ variable.other.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^ storage.type.cs
///          ^^^^^^^^^^ meta.sequence.tuple.cs
///          ^ punctuation.section.sequence.begin.cs
///           ^^^ storage.type.cs
///               ^ variable.other.cs
///                ^ punctuation.separator.comma.cs
///                  ^ variable.other.cs
///                   ^ punctuation.section.sequence.end.cs
///                    ^ punctuation.section.group.end.cs

if (e is (int i, k)) { }
///^^^^^^^^^^^^^^^^^ meta.group.cs
///^ punctuation.section.group.begin.cs
/// ^ variable.other.cs
///   ^^ keyword.operator.comparison.type.cs
///      ^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^ storage.type.cs
///           ^ variable.other.cs
///            ^ punctuation.separator.comma.cs
///              ^ variable.other.cs
///               ^ punctuation.section.sequence.end.cs
///                ^ punctuation.section.group.end.cs

public record A(int Num);
///    ^^^^^^^^ meta.record
///            ^^^^^^^^^ meta.record.parameters
///                     ^ - meta.class
///    ^^^^^^ keyword.declaration.record
///           ^ entity.name.class
///            ^ punctuation.section.parameters.begin
///             ^^^ storage.type
///                 ^^^ variable.parameter
///                    ^ punctuation.section.parameters.end
///                     ^ punctuation.terminator.statement
public record B<T>(T Num)<NoGeneric>;
///    ^^^^^^^^^^^ meta.record
///               ^^^^^^^ meta.record.parameters
///                      ^^^^^^^^^^^^^ - meta.record
///    ^^^^^^ keyword.declaration.record
///           ^ entity.name.class
///            ^^^ meta.generic
///            ^ punctuation.definition.generic.begin
///             ^ variable.parameter.type
///              ^ punctuation.definition.generic.end
///               ^ punctuation.section.parameters.begin
///                     ^ punctuation.section.parameters.end
///                                 ^ punctuation.terminator.statement
public record C<TNum> (TNum Num) where TNum : class;
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^ entity.name.class.cs
///            ^^^^^^ meta.generic.cs
///            ^ punctuation.definition.generic.begin.cs
///             ^^^^ variable.parameter.type.cs
///                 ^ punctuation.definition.generic.end.cs
///                   ^^^^^^^^^^ meta.record.parameters.cs
///                   ^ punctuation.section.parameters.begin.cs
///                    ^^^^ support.type.cs
///                         ^^^ variable.parameter.cs
///                            ^ punctuation.section.parameters.end.cs
///                             ^ meta.record.cs - meta.constraints
///                              ^^^^^^^^^^^^^^^^^^ meta.record.cs meta.constraints.cs
///                              ^^^^^ storage.modifier.where.cs
///                                    ^^^^ support.type.cs
///                                         ^ punctuation.separator.colon.cs
///                                           ^^^^^ storage.type.cs
///                                                ^ punctuation.terminator.statement.cs
public record D<TNum> (TNum Num) where TNum : class { public const int TEST = 4; }
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^ entity.name.class.cs
///            ^^^^^^ meta.generic.cs
///            ^ punctuation.definition.generic.begin.cs
///             ^^^^ variable.parameter.type.cs
///                 ^ punctuation.definition.generic.end.cs
///                   ^^^^^^^^^^ meta.record.parameters.cs
///                   ^ punctuation.section.parameters.begin.cs
///                    ^^^^ support.type.cs
///                         ^^^ variable.parameter.cs
///                            ^ punctuation.section.parameters.end.cs
///                             ^ meta.record.cs
///                              ^^^^^^^^^^^^^^^^^^^ meta.record.cs meta.constraints.cs
///                              ^^^^^ storage.modifier.where.cs
///                                    ^^^^ support.type.cs
///                                         ^ punctuation.separator.colon.cs
///                                           ^^^^^ storage.type.cs
///                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.body.cs meta.block.cs
///                                                 ^ punctuation.section.block.begin.cs
///                                                   ^^^^^^ storage.modifier.access.cs
///                                                          ^^^^^ storage.modifier.cs
///                                                                ^^^ storage.type.cs
///                                                                    ^^^^ variable.other.member.cs
///                                                                         ^ keyword.operator.assignment.cs
///                                                                           ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                                            ^ punctuation.terminator.statement.cs
///                                                                              ^ punctuation.section.block.end.cs
public record Person(
///^^^ storage.modifier.access
///    ^^^^^^ meta.record keyword.declaration.record
///           ^^^^^^ meta.record entity.name.class
///                 ^ punctuation.section.parameters.begin
    [property: JsonPropertyName("firstName")]string FirstName,
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.parameters meta.annotation
/// ^ punctuation.definition.annotation.begin
///                                         ^ punctuation.definition.annotation.end
///                                          ^^^^^^ storage.type
///                                                 ^^^^^^^^^ variable.parameter
///                                                          ^ punctuation.separator.comma
    [property: JsonPropertyName("lastName")]string LastName);
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.parameters meta.annotation
/// ^ punctuation.definition.annotation.begin
///                                        ^ punctuation.definition.annotation.end
///                                         ^^^^^^ storage.type
///                                                ^^^^^^^^ variable.parameter
///                                                        ^ punctuation.section.parameters.end
///                                                         ^ punctuation.terminator.statement

public class MyClass { public record MyRecord <T> (int nums) { public const int TEST = 4; } }
///^^^^ - meta.class
///    ^^^^^^^^^^^^^^ meta.class - meta.class.body
///                  ^^^^^^^^^ meta.class.body meta.block
///                           ^^^^^^^^^^^^^^^^^^^^ meta.class.body meta.block meta.record - meta.record.parameters
///                                               ^^^^^^^^^^ meta.class.body meta.block meta.record.parameters
///                                                         ^ meta.class.body meta.block meta.record - meta.class.constructor.parameters
///                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body meta.block meta.record.body meta.block
///                                                                                        ^^ meta.class.body meta.block - meta.class meta.class
///                                                                                          ^ - meta.class
///^^^ storage.modifier.access
///    ^^^^^ keyword.declaration.class
///          ^^^^^^^ entity.name.class
///                  ^ punctuation.section.block.begin
///                    ^^^^^^ storage.modifier.access
///                           ^^^^^^ keyword.declaration.record
///                                  ^^^^^^^^ entity.name.class
///                                           ^ punctuation.definition.generic.begin
///                                            ^ variable.parameter.type
///                                             ^ punctuation.definition.generic.end
///                                               ^ punctuation.section.parameters.begin
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
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^^^^^^^^^ support.type.cs
///                   ^^ variable.other.cs
///                      ^ keyword.operator.assignment.cs
///                        ^^^^^^^^ variable.other.cs
///                                ^ punctuation.accessor.dot.cs
///                                 ^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                     ^^ meta.function-call.arguments.cs meta.group.cs
///                                                     ^ punctuation.section.group.begin.cs
///                                                      ^ punctuation.section.group.end.cs
///                                                       ^ punctuation.terminator.statement.cs

using IDisposable sub = pageContentObservable.Subscribe(Console.WriteLine);
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^^^^^ support.type.cs
///               ^^^ variable.other.cs
///                   ^ keyword.operator.assignment.cs
///                     ^^^^^^^^^^^^^^^^^^^^^ variable.other.cs
///                                          ^ punctuation.accessor.dot.cs
///                                           ^^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                    ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                                                    ^ punctuation.section.group.begin.cs
///                                                     ^^^^^^^ variable.other.cs
///                                                            ^ punctuation.accessor.dot.cs
///                                                             ^^^^^^^^^ variable.other.cs
///                                                                      ^ punctuation.section.group.end.cs
///                                                                       ^ punctuation.terminator.statement.cs

// https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-9.0/function-pointers

delegate*<delegate*<string, int>, delegate*<string, int>>;
///^^^^^^ meta.type.funcptr.cs - meta.generic
///      ^ meta.type.funcptr.cs meta.generic.cs - meta.type.funcptr meta.type.funcptr
///       ^^^^^^^^^ meta.type.funcptr.cs meta.generic.cs meta.type.funcptr.cs
///                ^^^^^^^^^^^^^ meta.type.funcptr.cs meta.generic.cs meta.type.funcptr.cs meta.generic.cs
///                             ^^ meta.type.funcptr.cs meta.generic.cs - meta.type.funcptr meta.type.funcptr
///                               ^^^^^^^^^ meta.type.funcptr.cs meta.generic.cs meta.type.funcptr.cs
///                                        ^^^^^^^^^^^^^ meta.type.funcptr.cs meta.generic.cs meta.type.funcptr.cs meta.generic.cs
///                                                     ^ meta.type.funcptr.cs meta.generic.cs - meta.type.funcptr meta.type.funcptr
///                                                      ^ - meta.type
///^^^^^ keyword.declaration.delegate.cs
///     ^ keyword.operator.pointer.cs
///      ^ punctuation.definition.generic.begin.cs
///       ^^^^^^^^ keyword.declaration.delegate.cs
///               ^ keyword.operator.pointer.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^^^^^^ storage.type.cs
///                       ^ punctuation.separator.comma.cs
///                         ^^^ storage.type.cs
///                            ^ punctuation.definition.generic.end.cs
///                             ^ punctuation.separator.comma.cs
///                               ^^^^^^^^ keyword.declaration.delegate.cs
///                                       ^ keyword.operator.pointer.cs
///                                        ^ punctuation.definition.generic.begin.cs
///                                         ^^^^^^ storage.type.cs
///                                               ^ punctuation.separator.comma.cs
///                                                 ^^^ storage.type.cs
///                                                    ^ punctuation.definition.generic.end.cs
///                                                     ^ punctuation.definition.generic.end.cs
///                                                      ^ punctuation.terminator.statement.cs

//This method has a managed calling convention. This is the same as leaving the managed keyword off.
delegate* managed<int, int>;
/// <- meta.type.funcptr.cs keyword.declaration.delegate.cs
///^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///^^^^^ keyword.declaration.delegate.cs
///     ^ keyword.operator.pointer.cs
///      ^ - keyword - storage
///       ^^^^^^^ storage.modifier.delegate.cs
///              ^^^^^^^^^^ meta.generic.cs
///              ^ punctuation.definition.generic.begin.cs
///               ^^^ storage.type.cs
///                  ^ punctuation.separator.comma.cs
///                    ^^^ storage.type.cs
///                       ^ punctuation.definition.generic.end.cs
///                        ^ punctuation.terminator.statement.cs

// This method will be invoked using whatever the default unmanaged calling convention on the runtime
// platform is. This is platform and architecture dependent and is determined by the CLR at runtime.
delegate* unmanaged<int, int>;
/// <- meta.type.funcptr.cs keyword.declaration.delegate.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///^^^^^ keyword.declaration.delegate.cs
///     ^ keyword.operator.pointer.cs
///      ^ - keyword - storage
///       ^^^^^^^^^ storage.modifier.delegate.cs
///                ^^^^^^^^^^ meta.generic.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^^^ storage.type.cs
///                    ^ punctuation.separator.comma.cs
///                      ^^^ storage.type.cs
///                         ^ punctuation.definition.generic.end.cs
///                          ^ punctuation.terminator.statement.cs

// This method will be invoked using the cdecl calling convention
// Cdecl maps to System.Runtime.CompilerServices.CallConvCdecl
delegate* unmanaged[Cdecl] <int, int>;
/// <- meta.type.funcptr.cs keyword.declaration.delegate.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///^^^^^ keyword.declaration.delegate.cs
///     ^ keyword.operator.pointer.cs
///      ^ - keyword - storage
///       ^^^^^^^^^ storage.modifier.delegate.cs
///                ^^^^^^^ meta.brackets.cs
///                ^ punctuation.section.brackets.begin.cs
///                 ^^^^^ storage.modifier.funcptr.cs
///                      ^ punctuation.section.brackets.end.cs
///                        ^^^^^^^^^^ meta.generic.cs
///                        ^ punctuation.definition.generic.begin.cs
///                         ^^^ storage.type.cs
///                            ^ punctuation.separator.comma.cs
///                              ^^^ storage.type.cs
///                                 ^ punctuation.definition.generic.end.cs
///                                  ^ punctuation.terminator.statement.cs

// This method will be invoked using the stdcall calling convention, and suppresses GC transition
// Stdcall maps to System.Runtime.CompilerServices.CallConvStdcall
// SuppressGCTransition maps to System.Runtime.CompilerServices.CallConvSuppressGCTransition
delegate* unmanaged[Stdcall, SuppressGCTransition] <in int, out int, readonly ref char>;
/// <- meta.type.funcptr.cs keyword.declaration.delegate.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///^^^^^ keyword.declaration.delegate.cs
///     ^ keyword.operator.pointer.cs
///      ^ - keyword - storage
///       ^^^^^^^^^ storage.modifier.delegate.cs
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.cs
///                ^ punctuation.section.brackets.begin.cs
///                 ^^^^^^^ storage.modifier.funcptr.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^^^^^^^^^^^^^^^^^^^ support.type.cs
///                                              ^ punctuation.section.brackets.end.cs
///                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.cs
///                                                ^ punctuation.definition.generic.begin.cs
///                                                 ^^ storage.modifier.cs
///                                                    ^^^ storage.type.cs
///                                                       ^ punctuation.separator.comma.cs
///                                                         ^^^ storage.modifier.cs
///                                                             ^^^ storage.type.cs
///                                                                ^ punctuation.separator.comma.cs
///                                                                  ^^^^^^^^ storage.modifier.cs
///                                                                           ^^^ storage.modifier.cs
///                                                                               ^^^^ storage.type.cs
///                                                                                   ^ punctuation.definition.generic.end.cs
///                                                                                    ^ punctuation.terminator.statement.cs

delegate*
///^^^^^^^ meta.type.funcptr.cs
///^^^^^ keyword.declaration.delegate.cs
///     ^ keyword.operator.pointer.cs
    unmanaged
///^^^^^^^^^^^ meta.type.funcptr.cs
///^ - storage
/// ^^^^^^^^^ storage.modifier.delegate.cs
    [
///^ meta.type.funcptr.cs - meta.brackets
/// ^^ meta.type.funcptr.cs meta.brackets.cs
/// ^ punctuation.section.brackets.begin.cs
        Cdecl,
///^^^^^^^^^^^^ meta.type.funcptr.cs meta.brackets.cs
///     ^^^^^ storage.modifier.funcptr.cs
///          ^ punctuation.separator.comma.cs
        SuppressGCTransition
///^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs meta.brackets.cs
///     ^^^^^^^^^^^^^^^^^^^^ support.type.cs
    ]
///^^ meta.type.funcptr.cs meta.brackets.cs
/// ^ punctuation.section.brackets.end.cs
///  ^ meta.type.funcptr.cs - meta.brackets
    <
/// <- meta.type.funcptr.cs - meta.brackets - meta.generic
///^ meta.type.funcptr.cs - meta.brackets - meta.generic
/// ^^ meta.type.funcptr.cs meta.generic.cs
/// ^ punctuation.definition.generic.begin.cs
        in int,
///^^^^^^^^^^^^^ meta.type.funcptr.cs meta.generic.cs
///     ^^ storage.modifier.cs
///        ^^^ storage.type.cs
///           ^ punctuation.separator.comma.cs
        out int
///^^^^^^^^^^^^^ meta.type.funcptr.cs meta.generic.cs
///     ^^^ storage.modifier.cs
///         ^^^ storage.type.cs
    >;
///^^ meta.type.funcptr.cs meta.generic.cs
/// ^ punctuation.definition.generic.end.cs
///  ^ punctuation.terminator.statement.cs

unsafe class TestFunctionPointers {
    public static void Log() { }

    void M(Action<int> a, delegate*<int, void> f) {
///                       ^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///                       ^^^^^^^^ keyword.declaration.delegate.cs
///                               ^ keyword.operator.pointer.cs
///                                ^^^^^^^^^^^ meta.generic.cs
///                                ^ punctuation.definition.generic.begin.cs
///                                 ^^^ storage.type.cs
///                                    ^ punctuation.separator.comma.cs
///                                      ^^^^ storage.type.cs
///                                          ^ punctuation.definition.generic.end.cs
///                                            ^ variable.parameter.cs
///                                             ^ punctuation.section.parameters.end.cs

        delegate*<int, int, int> p1 = &TestFunctionPointers.Log;
///     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///     ^^^^^^^^ keyword.declaration.delegate.cs
///             ^ keyword.operator.pointer.cs
///              ^^^^^^^^^^^^^^^ meta.generic.cs
///              ^ punctuation.definition.generic.begin.cs
///               ^^^ storage.type.cs
///                  ^ punctuation.separator.comma.cs
///                    ^^^ storage.type.cs
///                       ^ punctuation.separator.comma.cs
///                         ^^^ storage.type.cs
///                            ^ punctuation.definition.generic.end.cs
///                              ^^ variable.other.cs
///                                 ^ keyword.operator.assignment.cs
///                                   ^ keyword.operator.pointer.cs
///                                    ^^^^^^^^^^^^^^^^^^^^ variable.other.cs
///                                                        ^ punctuation.accessor.dot.cs
///                                                         ^^^ variable.other.cs
///                                                            ^ punctuation.terminator.statement.cs

        delegate* managed<int, int, int> p2 = &TestFunctionPointers.Log;
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///     ^^^^^^^^ keyword.declaration.delegate.cs
///             ^ keyword.operator.pointer.cs
///              ^ - keyword - storage
///               ^^^^^^^ storage.modifier.delegate.cs
///                      ^^^^^^^^^^^^^^^ meta.generic.cs
///                      ^ punctuation.definition.generic.begin.cs
///                       ^^^ storage.type.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^ storage.type.cs
///                               ^ punctuation.separator.comma.cs
///                                 ^^^ storage.type.cs
///                                    ^ punctuation.definition.generic.end.cs
///                                      ^^ variable.other.cs
///                                         ^ keyword.operator.assignment.cs
///                                           ^ keyword.operator.pointer.cs
///                                            ^^^^^^^^^^^^^^^^^^^^ variable.other.cs
///                                                                ^ punctuation.accessor.dot.cs
///                                                                 ^^^ variable.other.cs
///                                                                    ^ punctuation.terminator.statement.cs

        delegate* unmanaged<int, int, int> p3 = &TestFunctionPointers.Log;
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///     ^^^^^^^^ keyword.declaration.delegate.cs
///             ^ keyword.operator.pointer.cs
///              ^ - keyword - storage
///               ^^^^^^^^^ storage.modifier.delegate.cs
///                        ^^^^^^^^^^^^^^^ meta.generic.cs
///                        ^ punctuation.definition.generic.begin.cs
///                         ^^^ storage.type.cs
///                            ^ punctuation.separator.comma.cs
///                              ^^^ storage.type.cs
///                                 ^ punctuation.separator.comma.cs
///                                   ^^^ storage.type.cs
///                                      ^ punctuation.definition.generic.end.cs
///                                        ^^ variable.other.cs
///                                           ^ keyword.operator.assignment.cs
///                                             ^ keyword.operator.pointer.cs
///                                              ^^^^^^^^^^^^^^^^^^^^ variable.other.cs
///                                                                  ^ punctuation.accessor.dot.cs
///                                                                   ^^^ variable.other.cs
///                                                                      ^ punctuation.terminator.statement.cs
    }
/// <- meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
///^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs

    static IntPtr X (delegate*<void> callback) {}
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                 ^ punctuation.section.parameters.begin.cs
///                  ^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///                  ^^^^^^^^ keyword.declaration.delegate.cs
///                          ^ keyword.operator.pointer.cs
///                           ^^^^^^ meta.generic.cs
///                           ^ punctuation.definition.generic.begin.cs
///                            ^^^^ storage.type.cs
///                                ^ punctuation.definition.generic.end.cs
///                                  ^^^^^^^^ variable.parameter.cs
///                                          ^ punctuation.section.parameters.end.cs

    static IntPtr X (delegate* <void> callback) {}
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                 ^ punctuation.section.parameters.begin.cs
///                  ^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///                  ^^^^^^^^ keyword.declaration.delegate.cs
///                          ^ keyword.operator.pointer.cs
///                            ^^^^^^ meta.generic.cs
///                            ^ punctuation.definition.generic.begin.cs
///                             ^^^^ storage.type.cs
///                                 ^ punctuation.definition.generic.end.cs
///                                   ^^^^^^^^ variable.parameter.cs
///                                           ^ punctuation.section.parameters.end.cs

    static IntPtr X (delegate* unmanaged<void> callback) {}
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                 ^ punctuation.section.parameters.begin.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///                  ^^^^^^^^ keyword.declaration.delegate.cs
///                          ^ keyword.operator.pointer.cs
///                           ^ - keyword - storage
///                            ^^^^^^^^^ storage.modifier.delegate.cs
///                                     ^^^^^^ meta.generic.cs
///                                     ^ punctuation.definition.generic.begin.cs
///                                      ^^^^ storage.type.cs
///                                          ^ punctuation.definition.generic.end.cs
///                                            ^^^^^^^^ variable.parameter.cs
///                                                    ^ punctuation.section.parameters.end.cs

    // Don't require unsafe at declaration
    // -----------------------------------

    delegate*<void> _ptr;
/// ^^^^^^^^^ meta.type.funcptr.cs - meta.generic
///          ^^^^^^ meta.type.funcptr.cs meta.generic.cs
/// ^^^^^^^^ keyword.declaration.delegate.cs
///         ^ keyword.operator.pointer.cs
///          ^ punctuation.definition.generic.begin.cs
///           ^^^^ storage.type.cs
///               ^ punctuation.definition.generic.end.cs
///                 ^^^^ variable.other.member.cs
///                     ^ punctuation.terminator.statement.cs

    TestFunctionPointers(delegate*<void> ptr) => _ptr = ptr;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constructor.cs - meta.method meta.method
/// ^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                     ^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                                          ^^^ meta.method.cs
///                                             ^^^^^^^^^^^ meta.method.body.cs
/// ^^^^^^^^^^^^^^^^^^^^ entity.name.function.constructor.cs
///                     ^ punctuation.section.parameters.begin.cs
///                      ^^^^^^^^^^^^^^^ meta.type.funcptr.cs
///                      ^^^^^^^^ keyword.declaration.delegate.cs
///                              ^ keyword.operator.pointer.cs
///                               ^^^^^^ meta.generic.cs
///                               ^ punctuation.definition.generic.begin.cs
///                                ^^^^ storage.type.cs
///                                    ^ punctuation.definition.generic.end.cs
///                                      ^^^ variable.parameter.cs
///                                         ^ punctuation.section.parameters.end.cs
///                                           ^^ keyword.declaration.function.arrow.cs
///                                              ^^^^ variable.other.cs
///                                                   ^ keyword.operator.assignment.cs
///                                                     ^^^ variable.other.cs
///                                                        ^ punctuation.terminator.statement.cs

    public void Invoke() => _ptr();
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^ storage.type.cs
///             ^^^^^^ entity.name.function.cs
///                   ^^ meta.method.parameters.cs
///                   ^ punctuation.section.parameters.begin.cs
///                    ^ punctuation.section.parameters.end.cs
///                      ^^ keyword.declaration.function.arrow.cs
///                         ^^^^ meta.function-call.identifier.cs variable.function.cs
///                             ^^ meta.function-call.arguments.cs meta.group.cs
///                             ^ punctuation.section.group.begin.cs
///                              ^ punctuation.section.group.end.cs
///                               ^ punctuation.terminator.statement.cs

}
/// <- meta.class.body.cs meta.block.cs punctuation.section.block.end.cs
