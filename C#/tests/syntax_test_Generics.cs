/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

List<int> l;
/// <- support.type
///   ^ storage.type
///       ^ variable.other
List<List<int>> ll;
/// <- support.type
///   ^ support.type
///         ^ storage.type
///             ^ variable.other
List<List<List<int>>> lll;
/// <- support.type
///   ^ support.type
///         ^ support.type
///             ^ storage.type
///                    ^ variable.other
     x = 1;
///  ^ variable.other.cs
     int x = 1;
///  ^ storage.type
///      ^ variable.other
     int x1 = 1, x2 = 2;
///  ^ storage.type
///      ^ variable.other
///               ^ variable.other

     foo<int>(a);
///   ^ variable.function
///       ^ storage.type

Foo.List<a> l;
///         ^ variable.other
Foo.l + 1;
/// ^ variable.other
Foo<a>.List l;
///    ^^ support.type
///         ^ variable.other

List<int> bar = new List<int>();
/// <- support.type
///  ^^^ storage.type
///                 ^^^^ support.type
///                      ^^^ storage.type

string verbatim = @"This is a test "" of a verbatim string literal - C:\User";
///               ^^ string.quoted.double punctuation.definition.string
///                                ^^ constant.character.escape
///                                                                    ^ string.quoted.double - constant
///                                                                         ^ string.quoted.double punctuation.definition.string

string interpolated = $"{t.Word}";
string interpolated = $"inner {t.Word,-30} {t.Responsibility,8:F2} {{";
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated
///                            ^ variable.other
///                                  ^ punctuation.separator
///                                   ^^^ constant.numeric
///                                      ^ punctuation.section.interpolation.end
///                                        ^ punctuation.section.interpolation.begin
///                                         ^ variable.other
///                                                         ^ punctuation.separator
///                                                          ^ constant.numeric
///                                                           ^ punctuation.separator
///                                                            ^^ constant.other.format-spec
///                                                                ^^ constant.character.escape
///                                                                  ^ punctuation.definition.string.end

string unclosed_string = "inner ;
///                             ^ invalid.string.newline
string bar = "bar"
/// <- storage.type

string unclosed_interpolation = $"inner {t.Word};
///                                             ^ invalid.string.newline
string foo = "foo";
/// <- storage.type

string long_interpolation = $@"
    inner {t.Word}
///       ^ punctuation.section.interpolation.begin
///        ^ variable.other
///              ^ punctuation.section.interpolation.end
    {t.Responsibility,8:F2}
";
/// <- punctuation.definition.string.end

string format_string = "{0} and {1} like to go {{crazy}}";
///                    ^ string
///                     ^^^ constant.other.placeholder.cs
///                             ^^^ constant.other.placeholder.cs
///                                            ^^ constant.character.escape.cs
///                                                   ^^ constant.character.escape.cs

string format_string _2 = "{}";
///                        ^^ string constant.other.placeholder.cs


x[10][5] = 2;
f(5)[2] = 10;
/// ^ punctuation.section.brackets.begin
///   ^ punctuation.section.brackets.end

int? foo = 4;

string Permute(string input)
///    ^^^ entity.name.function
{
    char[] charArray = input.ToCharArray();
    Array.Reverse(charArray);
    return new string(charArray);
}

private string DontPermute(string input)
/// ^^^ storage.modifier
///            ^^^ entity.name.function
{
    return input;
}


string Frag
{
/// <- punctuation.section.block.begin
    get
/// ^^^ - storage.type.function
    {
/// ^ punctuation.section.block.begin
        var list = new List<string>();
        return list;
    } // <-- This and the next "}" are marked "invalid"
/// ^ punctuation.section.block.end - invalid
}
/// <- punctuation.section.block.end
