/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

var character = 'y';
/// ^^^^^^^^^ variable.other.cs
///           ^ keyword.operator.assignment.cs
///             ^^^ meta.string.cs string.quoted.single.cs
///             ^ punctuation.definition.string.begin.cs
///              ^ constant.character.literal.cs
///               ^ punctuation.definition.string.end.cs
///                ^ punctuation.terminator.statement.cs

var escape = '\'';
///          ^^^^ meta.string.cs string.quoted.single.cs
///          ^ punctuation.definition.string.begin.cs
///           ^^ constant.character.escape.cs
///             ^ punctuation.definition.string.end.cs
///              ^ punctuation.terminator.statement.cs

var short_unicode = '\u1234';
///                 ^^^^^^^^ meta.string.cs string.quoted.single.cs
///                 ^ punctuation.definition.string.begin.cs
///                  ^^^^^^ constant.character.escape.unicode.16bit.cs
///                        ^ punctuation.definition.string.end.cs

var long_unicode = '\U12345678';
///                ^^^^^^^^^^^^ meta.string.cs string.quoted.single.cs
///                ^ punctuation.definition.string.begin.cs
///                 ^^^^^^^^^^ constant.character.escape.unicode.32bit.cs
///                           ^ punctuation.definition.string.end.cs

var invalid_empty = '';
///                 ^^ invalid.illegal.character.cs

var invalid_quote = ''';
///                 ^^^ invalid.illegal.character.cs

var invalid_escape = '\';
///                  ^^^ invalid.illegal.character.cs

var character_too_long = 'no';
/// ^^^^^^^^^^^^^^^^^^ variable.other.cs
///                    ^ keyword.operator.assignment.cs
///                      ^^^^ invalid.illegal.character.cs
///                          ^ punctuation.terminator.statement.cs

"hex \x1 \x12 \x123 \xADF0"
///  ^^^ constant.character.escape.hex.cs
///     ^ - constant
///      ^^^^ constant.character.escape.hex.cs
///          ^ - constant
///           ^^^^^ constant.character.escape.hex.cs
///                ^ - constant
///                 ^^^^^^ constant.character.escape.hex.cs
///                       ^ punctuation.definition.string.end.cs

"short unicode \u1234";
///<- string.quoted.double.cs
///            ^^^^^^ constant.character.escape.unicode.16bit.cs

"long unicode \U12345678";
///<- string.quoted.double.cs
///           ^^^^^^^^^^ constant.character.escape.unicode.32bit.cs

"invalid escape \u12 \1";
///<- string.quoted.double.cs
///             ^ invalid.illegal.lone-escape.cs
///                  ^ invalid.illegal.lone-escape.cs

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
var interpolated_quotes = $"|{"Left",-7}|{"Right",7}|";
///                       ^^^ meta.string.interpolated.cs
///                          ^ meta.string.interpolated.cs meta.interpolation.cs punctuation.section.interpolation.begin.cs
///                           ^^^^^^ meta.string.interpolated.cs meta.interpolation.cs meta.string.cs string.quoted.double.cs
///                                 ^^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs - string
///                                    ^ meta.string.interpolated.cs meta.interpolation.cs punctuation.section.interpolation.end.cs
///                                     ^ meta.string.interpolated.cs string.quoted.double.cs
///                                      ^ meta.string.interpolated.cs meta.interpolation.cs punctuation.section.interpolation.begin.cs
///                                       ^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs meta.string.cs string.quoted.double.cs
///                                              ^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs - string
///                                                ^ meta.string.interpolated.cs meta.interpolation.cs punctuation.section.interpolation.end.cs
///                                                 ^^ meta.string.interpolated.cs string.quoted.double.cs
var verbatim_singleline = @"foo";
///                       ^^^^^^ meta.string.cs string.quoted.double.verbatim.cs - meta.string.interpolated
var verbatim_singleline_interpolated_none = $@"foo bar";
///                                         ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
var verbatim_singleline_interpolated_yes = $@"foo {bar} foo";
///                                        ^^^^^^^ string.quoted.double.verbatim.cs
///                                        ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
var verbatim_multiline = @"foo bar
///                      ^^^^^^^^^^ meta.string.cs string.quoted.double.verbatim.cs - meta.string.interpolated
baz";
var verbatim_multiline_interpolated_none = $@"foo bar
///                                        ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
baz";
var verbatim_multiline_interpolated_yes = $@"foo {bar}
///                                       ^^^^^^ string.quoted.double.verbatim.cs
///                                       ^^^^^^^^^^^^ meta.string.interpolated.cs
baz";

var verbatim_singleline_sql = @"
    SELECT  *
    FROM    foo
    WHERE   SQLi='{0}'";
///^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.verbatim.cs - meta.string.interpolated
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
///^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
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
/// ^^^^ meta.string.cs string.quoted.double.block.cs source.sql keyword.other.dml.sql
""";
/// <- meta.string.cs string.quoted.double.block.cs punctuation.definition.string.end.cs

"""
    no sql here
/// ^^^^^^^^^^^^ meta.string.cs string.quoted.double.block.cs - source.sql
""";

Regex rx = new Regex(@"\b(?<word>\w+)\s+(\k<word>)\b", RegexOptions.Compiled | RegexOptions.IgnoreCase);
///            ^^^^^ meta.instance support.type
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string source.regexp
///                                                 ^ meta.string punctuation.definition.string.end - source.regexp
///                    ^^ keyword.control.anchor
Match m = Regex.Match(input, @"\ba\w*\b", RegexOptions.IgnoreCase);
///       ^^^^^ meta.function-call support.type
///            ^ meta.function-call punctuation.accessor.dot
///             ^^^^^ meta.function-call variable.function
///                  ^ meta.group punctuation.section.group.begin
///                            ^^^^^^^^ meta.string source.regexp
///                                    ^ meta.string string.quoted.double punctuation.definition.string.end - source.regexp

replaced = Regex.Replace(some_value, "(?!^)([A-Z])", " $1");
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
///        ^^^^^ support.type
///             ^ punctuation.accessor.dot
///              ^^^^^^^ variable.function
///                     ^ punctuation.section.group.begin
///                      ^^^^^^^^^^ variable.other
///                                ^ punctuation.separator.argument
///                                  ^ meta.string string.quoted.double punctuation.definition.string.begin
///                                   ^^^^^^^^^^^^ meta.string source.regexp
///                                               ^ meta.string string.quoted.double punctuation.definition.string.end - source.regexp
///                                                ^ punctuation.separator.argument

Regex rx = new Regex(@"\bincomplete-missing-paren\b"
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance
///        ^^^ keyword.operator.new
///            ^^^^^ support.type
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string
///                  ^^ string.quoted.double punctuation.definition.string.begin
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp
///                                                ^ punctuation.definition.string.end - source.regexp
///                    ^^ keyword.control.anchor
