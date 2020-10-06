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



Point p = new (3, 5);
