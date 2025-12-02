/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

var character = 'y';
/// ^^^^^^^^^ variable.other.cs
///           ^ keyword.operator.assignment.variable.cs
///             ^^^ meta.string.cs string.quoted.single.cs
///             ^ punctuation.definition.string.begin.cs
///              ^ constant.character.literal.cs
///               ^ punctuation.definition.string.end.cs
///                ^ punctuation.terminator.statement.cs
var character_too_long = 'no';
/// ^^^^^^^^^^^^^^^^^^ variable.other.cs
///                    ^ keyword.operator.assignment.variable.cs
///                      ^^^^ invalid.illegal.not_a_char.cs
///                          ^ punctuation.terminator.statement.cs

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
///           ^^^^^ string.quoted.double - meta.string.interpolated
var interpolated_none = $"foo";
///                     ^^^^^^ meta.string.interpolated.cs string.quoted.double.cs
var interpolated_yes = $"foo {bar} foo";
///                    ^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
var verbatim_singleline = @"foo";
///                       ^^^^^^ meta.string.cs string.quoted.double.raw.cs - meta.string.interpolated
var verbatim_singleline_interpolated_none = $@"foo bar";
///                                         ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.raw.cs
var verbatim_singleline_interpolated_yes = $@"foo {bar} foo";
///                                        ^^^^^^^ string.quoted.double.raw.cs
///                                        ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
var verbatim_multiline = @"foo bar
///                      ^^^^^^^^^^ meta.string.cs string.quoted.double.raw.cs - meta.string.interpolated
baz";
var verbatim_multiline_interpolated_none = $@"foo bar
///                                        ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.raw.cs
baz";
var verbatim_multiline_interpolated_yes = $@"foo {bar}
///                                       ^^^^^^ string.quoted.double.raw.cs
///                                       ^^^^^^^^^^^^ meta.string.interpolated.cs
baz";

var verbatim_singleline_sql = @"
    SELECT  *
    FROM    foo
    WHERE   SQLi='{0}'";
///^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.raw.cs - meta.string.interpolated
///^^^^^^^^^^^^^^^^^^^ source.sql
/// ^^^^^ keyword.other.dml.sql
///         ^^^^ meta.column-name.sql
///             ^ keyword.operator.comparison.sql
///              ^^^^^ meta.string.sql string.quoted.single.sql
///              ^ punctuation.definition.string.begin.sql
///               ^^^ constant.other.placeholder.cs
///               ^ punctuation.definition.placeholder.begin.cs
///                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                 ^ punctuation.definition.placeholder.end.cs
///                  ^ punctuation.definition.string.end.sql
///                   ^ punctuation.definition.string.end.cs
///                    ^ punctuation.terminator.statement.cs

var verbatim_singleline_sql_interpolated = $@"
    SELECT  *
    FROM    foo
    WHERE   SQLi='{bar}'";
///^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.raw.cs
///^^^^^^^^^^^^^^^^^^^^^ source.sql
/// ^^^^^ keyword.other.dml.sql
///         ^^^^ meta.column-name.sql
///             ^ keyword.operator.comparison.sql
///              ^^^^^^^ meta.string.sql
///              ^ string.quoted.single.sql punctuation.definition.string.begin.sql
///               ^^^^^ meta.interpolation.cs
///               ^ punctuation.section.interpolation.begin.cs
///                ^^^ source.cs variable.other.cs
///                   ^ punctuation.section.interpolation.end.cs
///                    ^ string.quoted.single.sql punctuation.definition.string.end.sql
///                     ^ punctuation.definition.string.end.cs
///                      ^ punctuation.terminator.statement.cs

    "{32F31D43-81CC-4C15-9DE6-3FC5453562B6}"
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
///  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.guid

"""
    SELECT *
    FROM some_table
/// ^^^^ meta.string.cs string.quoted.triple.cs source.sql keyword.other.dml.sql
""";
/// <- meta.string.cs string.quoted.triple.cs punctuation.definition.string.end.cs

"""
    no sql here
/// ^^^^^^^^^^^^ meta.string.cs string.quoted.triple.cs meta.string.cs string.quoted.triple.cs - source.sql
""";
