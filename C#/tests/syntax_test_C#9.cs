/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://devblogs.microsoft.com/dotnet/welcome-to-c-9-0/
// https://daveabrock.com/2020/07/06/c-sharp-9-deep-dive-records#create-your-first-record

public record Person
/// ^^ storage.modifier.access
///    ^^^^^^ storage.type.class
///           ^^^^^^ entity.name.class
{
    private readonly string lastName;
    public string FirstName { get; init; }
///                           ^^^ storage.type.function.accessor.get
///                              ^ punctuation.terminator
///                                ^^^^ storage.type.function.accessor.set
///                                    ^ punctuation.terminator
    public string LastName
    {
        get => lastName;
        init => lastName = (value ?? throw new ArgumentNullException(nameof(LastName)));
///     ^^^^ storage.type.function.accessor.set
///          ^^ storage.type.function
///             ^^^^^^^^ variable.other
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

var message = myValue switch
///                   ^^^^^^ keyword.other
{
    <= 0 => "Less than or equal to 0",
/// ^^ keyword.operator
///    ^ constant.numeric.value
///      ^^ TODO
///         ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
///                                  ^ TODO
    > 0 and <= 10 => "More than 0 but less than or equal to 10",
/// ^ keyword.operator
///   ^ constant.numeric.value
///     ^^^ keyword.operator.logical
///         ^^ keyword.operator
///            ^^ constant.numeric.value
///               ^^ TODO
    _ => "More than 10"
/// ^ TODO
///   ^^ storage.type.function.lambda
};

Point p = new (3, 5);
