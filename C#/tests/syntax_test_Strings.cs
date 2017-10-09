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
