/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

/**
 * https://learn.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-13
 */

/**
 * `\e` escape sequence (U+001B)
 */

string escapeString = "\e[1;32m";
///                    ^^ constant.character.escape.cs

char escapeChar = '\e';
///                ^^ constant.character.escape.cs

/**
 * `allows ref struct` anti-constraint
 */

class AllowsRefStruct<T> where T : allows ref struct
///                      ^^^^^ storage.modifier.where.cs
///                                ^^^^^^ storage.modifier.cs
///                                       ^^^ storage.modifier.cs
///                                           ^^^^^^ storage.type.primitive.cs
{
}
