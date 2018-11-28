/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

"short unicode \u1234";
///<- string.quoted.double.cs
///            ^^^^^^ constant.character.escape.cs

"long unicode \U12345678";
///<- string.quoted.double.cs
///           ^^^^^^^^^^ constant.character.escape.cs

"invalid escape \u12";
///<- string.quoted.double.cs
///             ^ invalid.illegal.lone-escape.cs

"simple escapes \' \" \\ \0 \a \b \f \n \r \t \v";
///<- string.quoted.double.cs
///             ^^ constant.character.escape.cs
///                ^^ constant.character.escape.cs
///                   ^^ constant.character.escape.cs
///                      ^^ constant.character.escape.cs
///                         ^^ constant.character.escape.cs
///                            ^^ constant.character.escape.cs
///                               ^^ constant.character.escape.cs
///                                  ^^ constant.character.escape.cs
///                                     ^^ constant.character.escape.cs
///                                        ^^ constant.character.escape.cs
///                                           ^^ constant.character.escape.cs

var literal = "foo";
///           ^^^^^ string.quoted.double
var interpolated_none = $"foo";
///                     ^^^^^^ meta.string.interpolated.cs string.quoted.double.cs
var interpolated_yes = $"foo {bar} foo";
///                    ^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
var verbatim_singleline = @"foo";
///                       ^^^^^^ string.quoted.double.raw.cs
var verbatim_singleline_interpolated_none = $@"foo bar";
///                                         ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.raw.cs
var verbatim_singleline_interpolated_yes = $@"foo {bar} foo";
///                                        ^^^^^^^ string.quoted.double.raw.cs
///                                        ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
var verbatim_multiline = @"foo bar
///                      ^^^^^^^^^^ string.quoted.double.raw.cs
baz";
var verbatim_multiline_interpolated_none = $@"foo bar
///                                        ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.raw.cs
baz";
var verbatim_multiline_interpolated_yes = $@"foo {bar}
///                                       ^^^^^^ string.quoted.double.raw.cs
///                                       ^^^^^^^^^^^^ meta.string.interpolated.cs
baz";

    "{32F31D43-81CC-4C15-9DE6-3FC5453562B6}"
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
///  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.guid

