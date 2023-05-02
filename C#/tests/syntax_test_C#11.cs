/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://learn.microsoft.com/en-gb/dotnet/csharp/whats-new/csharp-11#raw-string-literals

string longMessage = """
///                  ^^^ string.quoted.triple punctuation.definition.string.begin
    This is a long message.
    It has several lines.
        Some are indented
                more than others.
    Some should start at the first column.
    Some have "quoted text" in them.
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple - punctuation
    """;
/// ^^^ string.quoted.triple punctuation.definition.string.end

longMessage = """""
This raw string literal has four """", count them: """" four!
embedded quote characters in a sequence. That's why it starts and ends
with five double quotes.

You could extend this example with as many embedded quotes as needed for your text.
"""""
// - no semi-colon on the line above

var location = $$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^^^^^ meta.string.interpolated string.quoted.triple punctuation.definition.string.begin
   You are at {{{Longitude}}, {{Latitude}}}
///           ^^ meta.string.interpolated string.quoted.triple constant.character.escape
///             ^ - constant
///                       ^^ meta.string.interpolated string.quoted.triple constant.character.escape
///                           ^^ meta.string.interpolated string.quoted.triple constant.character.escape
///                                     ^^ meta.string.interpolated string.quoted.triple constant.character.escape
///                                       ^ - constant
   """;

var pointMessage = $"""The point "{X}, {Y}" is {Math.Sqrt(X * X + Y * Y)} from the origin""";
///                ^^^^ meta.string.interpolated string.quoted.triple punctuation.definition.string.begin
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated
///                    ^^^^^^^^^^^ string.quoted.triple - meta.interpolation
///                               ^^^ meta.interpolation - string
///                                  ^^ string.quoted.triple - meta.interpolation
///                                    ^^^ meta.interpolation - string
///                                       ^^^^^ string.quoted.triple - meta.interpolation
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation - string
///                                                                      ^^^^^^^^^^^^^^^^^^^ string.quoted.triple - meta.interpolation
///                               ^ punctuation.section.interpolation.begin
///                                ^ variable.other
///                                 ^ punctuation.section.interpolation.end
///                                    ^ punctuation.section.interpolation.begin
///                                     ^ variable.other
///                                      ^ punctuation.section.interpolation.end
///                                                                                         ^ punctuation.terminator.statement - meta.string

nint intptr = IntPtr.Zero;
/// <- storage.type

public static void M(string myString)
{
    ArgumentNullException.ThrowIfNull(myString);
    // method
}

// https://learn.microsoft.com/en-gb/dotnet/csharp/language-reference/tokens/interpolated
/* Beginning with C# 11, the interpolated expressions can include newlines. The text between
   the { and } must be valid C#, therefore it can include newlines that improve readability.
   The following example shows how newlines can improve the readability of an expression
   involving pattern matching:
*/
string message = $"The usage policy for {safetyScore} is {
    safetyScore switch
///             ^^^^^^ meta.string.interpolated source keyword.control.flow
    {
        > 90 => "Unlimited usage",
        > 80 => "General usage, with daily safety check",
        > 70 => "Issues must be addressed within 1 week",
        > 50 => "Issues must be addressed within 1 day",
        _ => "Issues must be addressed before continued use",
    }
    }";
/// ^ meta.string.interpolated punctuation.section.interpolation.end
///  ^ meta.string.interpolated string.quoted.double punctuation.definition.string.end
///   ^ punctuation.terminator.statement

string name = "Horace";
int age = 34;
Console.WriteLine($"He asked, \"Is your name {name}?\", but didn't wait for a reply :-{{");
///                           ^^ meta.function-call meta.group meta.string.interpolated string.quoted.double constant.character.escape
Console.WriteLine($"{name} is {age} year{(age == 1 ? "" : "s")} old.");
///                                                     ^ keyword.operator.ternary
// Expected output is:
// He asked, "Is your name Horace?", but didn't wait for a reply :-{
// Horace is 34 years old.

string s2 = @$"He said, ""This is the last \u0063hance\x0021""";
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated string.quoted.double.raw
///         ^^^ punctuation.definition.string.begin
///                     ^^ constant.character.escape
///                                        ^^^^^^^^^^^^^^^^^ - constant


string s2 = @$$"""He said, ""This is the last \u0063hance\x0021""";
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated string.quoted.triple
///         ^^^^^^ punctuation.definition.string.begin
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant
///                                                            ^^^ punctuation.definition.string.end
