/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

List<int> l;
/// <- variable.other.type
///   ^ support.type
///       ^ entity.name.variable
List<List<int>> ll;
/// <- variable.other.type
///   ^ variable.other.type
///         ^ support.type
///             ^ entity.name.variable
List<List<List<int>>> lll;
/// <- variable.other.type
///   ^ variable.other.type
///         ^ variable.other.type
///             ^ support.type
///                    ^ entity.name.variable
     x = 1;
///  ^ variable.other.cs
     int x = 1;
///  ^ support.type
///      ^ entity.name.variable
     int x1 = 1, x2 = 2;
///  ^ support.type
///      ^ entity.name.variable
///               ^ entity.name.variable

     foo<int>(a);
///   ^ variable.function
///       ^ support.type

Foo.List<a> l;
///         ^ entity.name.variable
Foo.l + 1;
/// ^ variable.other
Foo<a>.List l;
///    ^^ variable.other.type
///         ^ entity.name.variable

List<int> bar = new List<int>();
/// <- variable.other.type
///  ^^^ support.type
///                 ^^^^ variable.other.type
///                      ^^^ support.type

string verbatim = @"This is a test "" of a verbatim string literal - C:\User";
///               ^^ string.quoted.double punctuation.definition.string
///                                ^^ constant.character.escape
///                                                                    ^ string.quoted.double - constant
///                                                                         ^ string.quoted.double punctuation.definition.string

string interpolated = $"{t.Word}";
string interpolated = $"inner {t.Word,-30} {t.Responsibility,8:F2} {{";
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated
///                            ^ variable.other
///                                      ^ punctuation.definition.string.interpolated.element.end
///                                        ^ punctuation.definition.string.interpolated.element.begin
///                                         ^ variable.other
///                                                                ^^ constant.character.escape
///                                                                  ^ punctuation.definition.string.interpolated.end
///                                                                  ^ punctuation.definition.string.interpolated.end

string unclosed_string = "inner ;
///                             ^ invalid.string.newline
string bar = "bar"
/// <- support.type.cs

string unclosed_interpolation = $"inner {t.Word};
///                                             ^ invalid.string.newline
string foo = "foo";
/// <- support.type.cs

string long_interpolation = $@"
    inner {t.Word}
///       ^ punctuation.definition.string.interpolated.element.begin
///        ^ variable.other
///              ^ punctuation.definition.string.interpolated.element.end
    {t.Responsibility,8:F2}
";
/// <- punctuation.definition.string.interpolated.end

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
/// ^ punctuation.definition.accessor
///   ^ punctuation.definition.accessor

int? foo = 4;

string Permute(string input)
///    ^^^ entity.name.function
{
    char[] charArray = input.ToCharArray();
    Array.Reverse(charArray);
    return new string(charArray);
}

string DontPermute(string input)
///    ^^^ entity.name.function
{
    return input;
}


string Frag
{
/// <- punctuation.section.function.begin
    get
/// ^^^ storage.type.function
    {
/// ^ punctuation.section.function.begin
        var list = new List<string>();
        return list;
    } // <-- This and the next "}" are marked "invalid"
/// ^ punctuation.section.function.end -invalid
}
/// <- punctuation.section.function.end
