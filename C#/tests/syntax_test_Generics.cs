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
string interpolated = $"inner {t.Word,-30} {t.Responsibility,8:F2}";
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated
///                                      ^ punctuation.definition.string.interpolated.element.end
///                                        ^ punctuation.definition.string.interpolated.element.begin
///                                                               ^ punctuation.definition.string.interpolated.end
x[10][5] = 2;
f(5)[2] = 10;
/// ^ punctuation.definition.accessor
///   ^ punctuation.definition.accessor

int? foo = 4;
