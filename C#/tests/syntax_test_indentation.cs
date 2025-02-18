/// SYNTAX TEST reindent-unchanged "Packages/C#/C#.sublime-syntax"
namespace Sublime {
    class Hq {
        void IndentationTest (int arg1) {
            if (true) {
                do_something();
            } else {
                something_else();
            }
            
            switch (myValue)
            {
                case <= 0:
                // NOTE: indentation rules can't indent the contents of case statements one level further...
                Console.WriteLine("Less than or equal to 0");
                break;
                case > 0 and <= 10:
                Console.WriteLine("More than 0 but less than or equal to 10");
                break;
                default:
                Console.WriteLine("More than 10");
                break;
                // NOTE (continuation)... because they can only unindent one level at a time and here would need 2 levels
            }

            var myValue = (args.Length > 0) switch { true => int.Parse(args[0]), _ => 4 };
            Console.WriteLine(myValue);

            var message = myValue switch
            {
                <= 0 => "Less than or equal to 0",

                > 0 and <= 10 => "More than 0 but less than or equal to 10",
                _ => "More than 10"
            } + ".";
        }
    }
}

namespace Namespace;

public record Person
{
    private readonly string lastName;
    public string FirstName { get; init; }
    public string LastName
    {
        get => lastName;
        init => lastName = (value ?? throw new ArgumentNullException(nameof(LastName)));
    }
}

void Main ()
{
    var otherPerson = person with { LastName = "Hanselman" };

}

static bool CheckIfCanWalkIntoBank(Bank bank, bool isVip)
{
    return (bank.Status, isVip) switch
    {
        (BankBranchStatus.Open, _) => true,
        (BankBranchStatus.Closed, _) => false,
        (BankBranchStatus.VIPCustomersOnly, true) => true,
        (BankBranchStatus.VIPCustomersOnly, false) => false
    };
}

public record Person(
    [property: JsonPropertyName("firstName")]string FirstName,
    [property: JsonPropertyName("lastName")]string LastName);

while (blah) {
    if (abc) {
        def ++;
    } el // NOTE: imagine user is typing else here
}

foreach (var x in y) {
    continue;
}
