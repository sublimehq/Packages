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

List<Nullable<System.Int16>> list;
///^ support.type
/// ^ punctuation.definition.generic.begin
///  ^^^^^^^^ support.type
///          ^ punctuation.definition.generic.begin
///           ^^^^^^ support.type
///                 ^ punctuation.accessor.dot
///                  ^^^^^ support.type
///                       ^^ punctuation.definition.generic.end
///                          ^^^^ variable.other

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
///                                   ^^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                   ^ keyword.operator.arithmetic.cs
///                                      ^ punctuation.section.interpolation.end
///                                        ^ punctuation.section.interpolation.begin
///                                         ^ variable.other
///                                                         ^ punctuation.separator
///                                                          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                           ^ punctuation.separator
///                                                            ^^ constant.other.format-spec
///                                                                ^^ constant.character.escape
///                                                                  ^ punctuation.definition.string.end

string unclosed_string = "inner ;
///                              ^ invalid.illegal.unclosed-string
string bar = "bar"
/// <- storage.type

string unclosed_interpolation = $"inner {t.Word};
///                                              ^ invalid.illegal.unclosed-string.cs
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

string unclosed_interpolation = $"inner {
///                                     ^ punctuation.section.interpolation.begin.cs
///                                      ^ invalid.illegal.unclosed-string.cs

/// <- - string

string unclosed_interpolation = $"inner {2}
///                                     ^ punctuation.section.interpolation.begin.cs
///                                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                       ^ punctuation.section.interpolation.end.cs
///                                        ^ invalid.illegal.unclosed-string.cs

string format_string = "{0} and {1} like to go {{crazy}}";
///                    ^ string
///                     ^^^ constant.other.placeholder.cs
///                             ^^^ constant.other.placeholder.cs
///                                            ^^ constant.character.escape.cs
///                                                   ^^ constant.character.escape.cs

string format_string_long = @"{0} and
///                         ^^ string
///                           ^^^ constant.other.placeholder.cs
foo {1} like to go {{crazy}}";
/// ^^^ constant.other.placeholder.cs
///                ^^ constant.character.escape.cs
///                       ^^ constant.character.escape.cs

string format_string_2 = "{}";
///                       ^^ string - constant.other.placeholder.cs


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
