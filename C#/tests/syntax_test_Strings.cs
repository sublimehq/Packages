/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

/**
 * Character Literals
 */

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


/**
 * Literal Strings
 */

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

var guid = "{32F31D43-81CC-4C15-9DE6-3FC5453562B6}";
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///        ^ punctuation.definition.string.begin.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.guid.cs
///                                               ^ punctuation.definition.string.end.cs

var literal = "foo";
///           ^^^^^ string.quoted.double - meta.string.interpolated


/**
 * Literal Format Strings
 */

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


/**
 * Verbatim Strings
 */

var verbatim_singleline = @"foo";
///                       ^^^^^^ meta.string.cs string.quoted.double.verbatim.cs - meta.string.interpolated

var verbatim_multiline = @"foo bar
///                      ^^^^^^^^^^ meta.string.cs string.quoted.double.verbatim.cs - meta.string.interpolated
baz";


/**
 * Verbatim Format Strings
 */

var verbatim_singleline_interpolated_none = $@"foo bar";
///                                         ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
var verbatim_singleline_interpolated_yes = $@"foo {bar} foo";
///                                        ^^^^^^^ string.quoted.double.verbatim.cs
///                                        ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
var verbatim_multiline_interpolated_none = $@"foo bar
///                                        ^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
baz";
var verbatim_multiline_interpolated_yes = $@"foo {bar}
///                                       ^^^^^^ string.quoted.double.verbatim.cs
///                                       ^^^^^^^^^^^^ meta.string.interpolated.cs
baz";


/**
 * Verbatim SQL strings
 */

var query = @"SELECT * """;
///         ^^^^^^^^^^^^^^ meta.string.cs
///         ^^ string.quoted.double.verbatim.cs punctuation.definition.string.begin.cs
///           ^^^^^^^^^^^ source.sql.embedded.cs - string.quoted.double.verbatim
///                    ^^ punctuation.definition.string.begin.sql
///                      ^ string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
///                       ^ punctuation.terminator.statement.cs

var query = @"SELECT * """"";
///         ^^^^^^^^^^^^^^^^ meta.string.cs
///         ^^ string.quoted.double.verbatim.cs punctuation.definition.string.begin.cs
///           ^^^^^^^^^^^^^ source.sql.embedded.cs
///                    ^^^^ meta.string.sql string.quoted.double.sql
///                    ^^ punctuation.definition.string.begin.sql
///                      ^^ punctuation.definition.string.end.sql
///                        ^ string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
///                         ^ punctuation.terminator.statement.cs

var query = @"
    SELECT  *
    FROM    foo
    WHERE   SQLi='{0}'";
///^^^^^^^^^^^^^^^^^^^ meta.string.cs source.sql.embedded.cs - meta.string.interpolated - string.quoted.double.verbatim
///                   ^ meta.string.cs string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
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

var query = @"SELECT * from `{table}` WHERE foo LIKE ""{value}"" AND bar LIKE ""{value}"" GROUP BY `{colname}`";
/// ^^^^^ variable.other.cs
///       ^ keyword.operator.assignment.cs
///         ^^ meta.string.cs string.quoted.double.verbatim.cs punctuation.definition.string.begin.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs source.sql.embedded.cs - string.quoted.double.verbatim
///                                                                                                           ^ meta.string.cs string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
///           ^^^^^^ keyword.other.dml.sql
///                  ^ constant.other.wildcard.asterisk.sql
///                    ^^^^ keyword.other.dml.sql
///                         ^^^^^^^^^ meta.table-name.sql
///                         ^ punctuation.definition.identifier.begin.sql
///                                 ^ punctuation.definition.identifier.end.sql
///                                   ^^^^^ keyword.other.dml.sql
///                                         ^^^ meta.column-name.sql
///                                             ^^^^ keyword.operator.comparison.sql
///                                                  ^^^^^^^^^^^ meta.string.sql string.quoted.double.sql
///                                                  ^^ punctuation.definition.string.begin.sql
///                                                           ^^ punctuation.definition.string.end.sql
///                                                              ^^^ keyword.operator.logical.sql
///                                                                  ^^^ meta.column-name.sql
///                                                                      ^^^^ keyword.operator.comparison.sql
///                                                                           ^^^^^^^^^^^ meta.string.sql string.quoted.double.sql
///                                                                           ^^ punctuation.definition.string.begin.sql
///                                                                                    ^^ punctuation.definition.string.end.sql
///                                                                                       ^^^^^^^^ keyword.other.dml.sql
///                                                                                                ^^^^^^^^^^^ meta.column-name.sql
///                                                                                                ^ punctuation.definition.identifier.begin.sql
///                                                                                                          ^ punctuation.definition.identifier.end.sql
///                                                                                                            ^ punctuation.terminator.statement.cs


/**
 * Verbatim SQL format strings
 */

var query = @$"SELECT * """;
///         ^^^^^^^^^^^^^^^ meta.string.interpolated.cs
///         ^^^ string.quoted.double.verbatim.cs punctuation.definition.string.begin.cs
///            ^^^^^^^^^^^ source.sql.embedded.cs
///                     ^^ meta.string.sql string.quoted.double.sql punctuation.definition.string.begin.sql
///                       ^ string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
///                        ^ punctuation.terminator.statement.cs

var query = @$"SELECT * """"";
///         ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs
///         ^^^ string.quoted.double.verbatim.cs punctuation.definition.string.begin.cs
///            ^^^^^^^^^^^^^ source.sql.embedded.cs
///                     ^^^^ meta.string.sql string.quoted.double.sql
///                     ^^ punctuation.definition.string.begin.sql
///                       ^^ punctuation.definition.string.end.sql
///                         ^ string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
///                          ^ punctuation.terminator.statement.cs

var query = $@"
    SELECT  *
    FROM    foo
    WHERE   SQLi='{bar}'";
///^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs source.sql.embedded.cs - meta.string.cs - string-quoted.double.verbatim
///                     ^ meta.string.interpolated.cs string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
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

var query = @$"SELECT * from `{table}` WHERE foo LIKE ""{value}"" AND bar LIKE ""{value}"" GROUP BY `{colname}`";
/// ^^^^^ variable.other.cs
///       ^ keyword.operator.assignment.cs
///         ^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs punctuation.definition.string.begin.cs
///            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs source.sql.embedded.cs - string.quoted.double.verbatim
///                                                                                                            ^ meta.string.interpolated.cs string.quoted.double.verbatim.cs punctuation.definition.string.end.cs
///            ^^^^^^ keyword.other.dml.sql
///                   ^ constant.other.wildcard.asterisk.sql
///                     ^^^^ keyword.other.dml.sql
///                          ^ meta.table-name.sql punctuation.definition.identifier.begin.sql
///                           ^^^^^^^ meta.interpolation.cs
///                            ^^^^^ source.cs variable.other.cs
///                                  ^ meta.table-name.sql punctuation.definition.identifier.end.sql
///                                    ^^^^^ keyword.other.dml.sql
///                                          ^^^ meta.column-name.sql
///                                              ^^^^ keyword.operator.comparison.sql
///                                                   ^^^^^^^^^^^ meta.string.sql
///                                                   ^^ string.quoted.double.sql punctuation.definition.string.begin.sql
///                                                     ^^^^^^^ meta.interpolation.cs
///                                                      ^^^^^ source.cs variable.language.cs
///                                                            ^^ string.quoted.double.sql punctuation.definition.string.end.sql
///                                                               ^^^ keyword.operator.logical.sql
///                                                                   ^^^ meta.column-name.sql
///                                                                       ^^^^ keyword.operator.comparison.sql
///                                                                            ^^^^^^^^^^^ meta.string.sql
///                                                                            ^^ string.quoted.double.sql punctuation.definition.string.begin.sql
///                                                                              ^^^^^^^ meta.interpolation.cs
///                                                                               ^^^^^ source.cs variable.language.cs
///                                                                                     ^^ string.quoted.double.sql punctuation.definition.string.end.sql
///                                                                                        ^^^^^^^^ keyword.other.dml.sql
///                                                                                                 ^ meta.column-name.sql punctuation.definition.identifier.begin.sql
///                                                                                                  ^^^^^^^^^ meta.interpolation.cs
///                                                                                                   ^^^^^^^ source.cs variable.other.cs
///                                                                                                           ^ meta.column-name.sql punctuation.definition.identifier.end.sql
///                                                                                                             ^ punctuation.terminator.statement.cs


/**
 * Raw SQL strings
 */

"""
    SELECT *
    FROM some_table
/// ^^^^ meta.string.cs source.sql keyword.other.dml.sql
""";
/// <- meta.string.cs string.quoted.double.block.cs punctuation.definition.string.end.cs

"""
    no sql here
/// ^^^^^^^^^^^^ meta.string.cs string.quoted.double.block.cs - source.sql
""";


/**
 * Literal Regular Expressions
 */

Regex rx = new Regex("^\"escaped[\"]{1,}-(?:\"quotes[^\"]*\")+\"");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                   ^ keyword.control.anchor.regexp
///                    ^^ constant.character.escape.cs
///                             ^^^^ meta.set.regexp
///                             ^ punctuation.definition.set.begin.regexp
///                              ^^ constant.character.escape.cs
///                                ^ punctuation.definition.set.end.regexp
///                                 ^^^^ keyword.operator.quantifier.regexp
///                                      ^^^^^^^^^^^^^^^^^^^^ meta.group.regexp
///                                      ^ punctuation.section.group.begin.regexp
///                                       ^^ constant.other.assertion.regexp
///                                         ^^ constant.character.escape.cs
///                                                 ^^^^^ meta.set.regexp
///                                                 ^ punctuation.definition.set.begin.regexp
///                                                  ^ keyword.operator.logical.regexp
///                                                   ^^ constant.character.escape.cs
///                                                     ^ punctuation.definition.set.end.regexp
///                                                      ^ keyword.operator.quantifier.regexp
///                                                       ^^ constant.character.escape.cs
///                                                         ^ punctuation.section.group.end.regexp
///                                                          ^ keyword.operator.quantifier.regexp
///                                                           ^^ constant.character.escape.cs
///                                                             ^ punctuation.definition.string.end.cs
///                                                              ^ punctuation.section.group.end.cs
///                                                               ^ punctuation.terminator.statement.cs

Regex rx = new Regex("\\b\u0048ell\x6f\\b");
///                  ^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs meta.mode.basic.regexp
///                   ^^^ keyword.control.anchor.regexp
///                      ^^^^^^ constant.character.escape.unicode.16bit.cs
///                               ^^^^ constant.character.escape.hex.cs
///                                   ^^^ keyword.control.anchor.regexp
///                                      ^ punctuation.definition.string.end.cs

Regex rx = new Regex("\\b\\u0048ell\\x6f\\b");
///                  ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs meta.mode.basic.regexp
///                   ^^^ keyword.control.anchor.regexp
///                      ^^^^^^^ constant.character.escape.regexp
///                                ^^^^^ constant.character.escape.regexp
///                                     ^^^ keyword.control.anchor.regexp
///                                        ^ punctuation.definition.string.end.cs

Regex rx = new Regex("\\bincomplete-missing-quote\b
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                   ^^^ keyword.control.anchor.regexp
///                                              ^^ constant.character.escape.cs
///                                                ^ invalid.illegal.unclosed-string.cs
;

Regex rx = new Regex("\bincomplete-missing-paren\\b" ;
///                 ^ punctuation.section.group.begin.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                   ^^ constant.character.escape.cs
///                                             ^^^ keyword.control.anchor.regexp
///                                                ^ punctuation.definition.string.end.cs
///                                                  ^ punctuation.terminator.statement.cs

Regex rx = new Regex("\\b(?<word>\\w+)\\s+(\\k<word>)\\b", RegexOptions.Compiled | RegexOptions.IgnoreCase);
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                   ^^^ keyword.control.anchor.regexp
///                      ^^^^^^^^^^^^^ meta.group.regexp
///                      ^ punctuation.section.group.begin.regexp
///                       ^^^^^^^ keyword.other.named-capture-group.regexp
///                        ^ punctuation.definition.capture-group-name.begin.regexp
///                         ^^^^ entity.name.capture-group.regexp
///                             ^ punctuation.definition.capture-group-name.end.regexp
///                              ^^^ keyword.control.character-class.regexp
///                                 ^ keyword.operator.quantifier.regexp
///                                  ^ punctuation.section.group.end.regexp
///                                   ^^^ keyword.control.character-class.regexp
///                                      ^ keyword.operator.quantifier.regexp
///                                       ^^^^^^^^^^^ meta.group.regexp
///                                       ^ punctuation.section.group.begin.regexp
///                                        ^^^^^^^^^ keyword.other.backref-and-recursion.regexp
///                                           ^ punctuation.definition.capture-group-name.begin.regexp
///                                            ^^^^ variable.other.capture-group.regexp
///                                                ^ punctuation.definition.capture-group-name.end.regexp
///                                                 ^ punctuation.section.group.end.regexp
///                                                  ^^^ keyword.control.anchor.regexp
///                                                     ^ punctuation.definition.string.end.cs
///                                                      ^ punctuation.separator.comma.cs
///                                                        ^^^^^^^^^^^^ variable.other.cs
///                                                                    ^ punctuation.accessor.dot.cs
///                                                                     ^^^^^^^^ variable.other.cs
///                                                                              ^ keyword.operator.bitwise.cs
///                                                                                ^^^^^^^^^^^^ variable.other.cs
///                                                                                            ^ punctuation.accessor.dot.cs
///                                                                                             ^^^^^^^^^^ variable.other.cs
///                                                                                                       ^ punctuation.section.group.end.cs
///                                                                                                        ^ punctuation.terminator.statement.cs

/**
 * Verbatim Regular Expressions
 */

Regex rx = new Regex(@"^""escaped[""]{1,}-(?:""quotes[^""]*"")+""");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.verbatim.cs
///                  ^^ punctuation.definition.string.begin.cs
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                    ^ keyword.control.anchor.regexp
///                     ^^ constant.character.escape.cs
///                              ^^^^ meta.set.regexp
///                              ^ punctuation.definition.set.begin.regexp
///                               ^^ constant.character.escape.cs
///                                 ^ punctuation.definition.set.end.regexp
///                                  ^^^^ keyword.operator.quantifier.regexp
///                                       ^^^^^^^^^^^^^^^^^^^^ meta.group.regexp
///                                       ^ punctuation.section.group.begin.regexp
///                                        ^^ constant.other.assertion.regexp
///                                          ^^ constant.character.escape.cs
///                                                  ^^^^^ meta.set.regexp
///                                                  ^ punctuation.definition.set.begin.regexp
///                                                   ^ keyword.operator.logical.regexp
///                                                    ^^ constant.character.escape.cs
///                                                      ^ punctuation.definition.set.end.regexp
///                                                       ^ keyword.operator.quantifier.regexp
///                                                        ^^ constant.character.escape.cs
///                                                          ^ punctuation.section.group.end.regexp
///                                                           ^ keyword.operator.quantifier.regexp
///                                                            ^^ constant.character.escape.cs
///                                                              ^ punctuation.definition.string.end.cs
///                                                               ^ punctuation.section.group.end.cs
///                                                                ^ punctuation.terminator.statement.cs

Regex rx = new Regex(@"\b\u0048ell\x6f\b");
///                  ^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.verbatim.cs
///                  ^^ punctuation.definition.string.begin.cs
///                    ^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs meta.mode.basic.regexp
///                    ^^ keyword.control.anchor.regexp
///                      ^^^^^^ constant.character.escape.regexp
///                               ^^^^ constant.character.escape.regexp
///                                   ^^ keyword.control.anchor.regexp
///                                     ^ punctuation.definition.string.end.cs

Regex rx = new Regex(@"\bincomplete
    -continued\b");
///^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.verbatim.cs
///^^^^^^^^^^^^^ source.regexp.embedded.cs
///           ^^ keyword.control.anchor.regexp
///             ^ punctuation.definition.string.end.cs
///              ^ punctuation.section.group.end.cs
///               ^ punctuation.terminator.statement.cs

Regex rx = new Regex(@"\bincomplete-missing-paren\b" ;
///                 ^ punctuation.section.group.begin.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.verbatim.cs
///                  ^^ punctuation.definition.string.begin.cs
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                    ^^ keyword.control.anchor.regexp
///                                              ^^ keyword.control.anchor.regexp
///                                                ^ punctuation.definition.string.end.cs
///                                                  ^ punctuation.terminator.statement.cs

Regex rx = new Regex(@"\b(?<word>\w+)\s+(\k<word>)\b", RegexOptions.Compiled | RegexOptions.IgnoreCase);
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                 ^ punctuation.section.group.begin.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.verbatim.cs
///                  ^^ punctuation.definition.string.begin.cs
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.regexp.embedded.cs
///                    ^^ keyword.control.anchor.regexp
///                      ^^^^^^^^^^^^ meta.group.regexp
///                      ^ punctuation.section.group.begin.regexp
///                       ^^^^^^^ keyword.other.named-capture-group.regexp
///                        ^ punctuation.definition.capture-group-name.begin.regexp
///                         ^^^^ entity.name.capture-group.regexp
///                             ^ punctuation.definition.capture-group-name.end.regexp
///                              ^^ keyword.control.character-class.regexp
///                                ^ keyword.operator.quantifier.regexp
///                                 ^ punctuation.section.group.end.regexp
///                                  ^^ keyword.control.character-class.regexp
///                                    ^ keyword.operator.quantifier.regexp
///                                     ^^^^^^^^^^ meta.group.regexp
///                                     ^ punctuation.section.group.begin.regexp
///                                      ^^^^^^^^ keyword.other.backref-and-recursion.regexp
///                                        ^ punctuation.definition.capture-group-name.begin.regexp
///                                         ^^^^ variable.other.capture-group.regexp
///                                             ^ punctuation.definition.capture-group-name.end.regexp
///                                              ^ punctuation.section.group.end.regexp
///                                               ^^ keyword.control.anchor.regexp
///                                                 ^ punctuation.definition.string.end.cs
///                                                  ^ punctuation.separator.comma.cs
///                                                    ^^^^^^^^^^^^ variable.other.cs
///                                                                ^ punctuation.accessor.dot.cs
///                                                                 ^^^^^^^^ variable.other.cs
///                                                                          ^ keyword.operator.bitwise.cs
///                                                                            ^^^^^^^^^^^^ variable.other.cs
///                                                                                        ^ punctuation.accessor.dot.cs
///                                                                                         ^^^^^^^^^^ variable.other.cs
///                                                                                                   ^ punctuation.section.group.end.cs
///                                                                                                    ^ punctuation.terminator.statement.cs

Match m = Regex.Match(input, @"\ba\w*\b", RegexOptions.IgnoreCase);
///       ^^^^^ support.type.cs
///            ^ punctuation.accessor.dot.cs
///             ^^^^^ meta.function-call.identifier.cs variable.function.cs
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                  ^ punctuation.section.group.begin.cs
///                   ^^^^^ variable.other.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.verbatim.cs
///                          ^^ punctuation.definition.string.begin.cs
///                            ^^^^^^^^ source.regexp
///                            ^^ keyword.control.anchor.regexp
///                               ^^ keyword.control.character-class.regexp
///                                 ^ keyword.operator.quantifier.regexp
///                                  ^^ keyword.control.anchor.regexp
///                                    ^ punctuation.definition.string.end.cs
///                                     ^ punctuation.separator.comma.cs
///                                       ^^^^^^^^^^^^ variable.other.cs
///                                                   ^ punctuation.accessor.dot.cs
///                                                    ^^^^^^^^^^ variable.other.cs
///                                                              ^ punctuation.section.group.end.cs
///                                                               ^ punctuation.terminator.statement.cs

replaced = Regex.Replace(some_value, "(?!^)([A-Z])", " $1");
///        ^^^^^ support.type.cs
///             ^ punctuation.accessor.dot.cs
///              ^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                     ^ punctuation.section.group.begin.cs
///                      ^^^^^^^^^^ variable.other.cs
///                                ^ punctuation.separator.comma.cs
///                                  ^^^^^^^^^^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                                  ^ punctuation.definition.string.begin.cs
///                                   ^^^^^^^^^^^^ source.regexp meta.group.regexp
///                                                ^ punctuation.separator.comma.cs
///                                                  ^^^^^ meta.string.regexp.cs string.quoted.double.cs
///                                                       ^ punctuation.section.group.end.cs
///                                                        ^ punctuation.terminator.statement.cs


/**
 * Format String Regular Expressions
 * (no regexp highlighting)
 */

Regex rx = new Regex($"^\"escaped[\"]{{1,}}-(?:\"quotes[^\"]*\")+\"");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.cs
///                  ^^ punctuation.definition.string.begin.cs
///                     ^^ constant.character.escape.cs
///                               ^^ constant.character.escape.cs
///                                  ^^ constant.character.escape.cs
///                                      ^^ constant.character.escape.cs
///                                            ^^ constant.character.escape.cs
///                                                      ^^ constant.character.escape.cs
///                                                          ^^ constant.character.escape.cs
///                                                              ^^ constant.character.escape.cs
///                                                                ^ punctuation.definition.string.end.cs


/**
 * Verbatim Format String Regular Expressions
 * (no regexp highlighting)
 */

Regex rx = new Regex(@$"^""escaped[""]{{1,}}-(?:""quotes[^""]*"")+""");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///                  ^^^ punctuation.definition.string.begin.cs
///                      ^^ constant.character.escape.cs
///                                ^^ constant.character.escape.cs
///                                   ^^ constant.character.escape.cs
///                                       ^^ constant.character.escape.cs
///                                             ^^ constant.character.escape.cs
///                                                       ^^ constant.character.escape.cs
///                                                           ^^ constant.character.escape.cs
///                                                               ^^ constant.character.escape.cs
///                                                                 ^ punctuation.definition.string.end.cs


/**
 * Raw Regular Expressions
 * (no regexp highlighting)
 */

Regex rx = new Regex("""^\"escaped[\"]{{1,}}-(?:\"quotes[^\"]*\")+\""");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.block.cs - source.regexp
///                  ^^^ punctuation.definition.string.begin.cs
///                                                                ^^^ punctuation.definition.string.end.cs

Regex rx = new Regex(""""^\"escaped[\"]{{1,}}-(?:\"quotes[^\"]*\")+\"""");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.block.cs - source.regexp
///                  ^^^^ punctuation.definition.string.begin.cs
///                                                                 ^^^^ punctuation.definition.string.end.cs


/**
 * Raw Format String Regular Expressions
 * (no regexp highlighting)
 */

Regex rx = new Regex($$"""^\"escaped[\"]{1,}-(?:\"quotes[^\"]*\")+\""");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs - source.regexp
///                  ^^^^^ punctuation.definition.string.begin.cs
///                                                                ^^^ punctuation.definition.string.end.cs

Regex rx = new Regex($$$""""^\"escaped[\"]{1,}-(?:\"quotes[^\"]*\")+\"""");
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs - source.regexp
///                  ^^^^^^^ punctuation.definition.string.begin.cs
///                                                                  ^^^^ punctuation.definition.string.end.cs
