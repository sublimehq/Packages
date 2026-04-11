/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// https://learn.microsoft.com/en-gb/dotnet/csharp/whats-new/csharp-11#raw-string-literals

string longMessage = """
///                  ^^^ string.quoted.double.block punctuation.definition.string.begin
    This is a long message.
    It has several lines.
        Some are indented
                more than others.
    Some should start at the first column.
    Some have "quoted text" in them.
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block - punctuation

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    Literal placeholders {0,20:F3}}!
///                      ^^^^^^^^^ constant.other.placeholder.cs
///                      ^ punctuation.definition.placeholder.begin.cs
///                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                        ^^^^^^ meta.format-spec.cs
///                        ^ punctuation.separator.cs
///                         ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                           ^ punctuation.separator.cs
///                            ^^ constant.other.format-spec.cs
///                              ^ punctuation.definition.placeholder.end.cs
///                               ^ invalid.illegal.unescaped-placeholder.cs

    GMT is {{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}!
///        ^^ constant.character.escape.cs
///          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation
///                                               ^^ constant.character.escape.cs
    """;
/// ^^^ string.quoted.double.block punctuation.definition.string.end

longMessage = """""
This raw string literal has four """", count them: """" four!
embedded quote characters in a sequence. That's why it starts and ends
with five double quotes.

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    Literal placeholders {0,20:F3}}!
///                      ^^^^^^^^^ constant.other.placeholder.cs
///                      ^ punctuation.definition.placeholder.begin.cs
///                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                        ^^^^^^ meta.format-spec.cs
///                        ^ punctuation.separator.cs
///                         ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                           ^ punctuation.separator.cs
///                            ^^ constant.other.format-spec.cs
///                              ^ punctuation.definition.placeholder.end.cs
///                               ^ invalid.illegal.unescaped-placeholder.cs

    GMT is {{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}!
///        ^^ constant.character.escape.cs
///          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation
///                                               ^^ constant.character.escape.cs
"""""
// - no semi-colon on the line above

var location = $"""
///            ^^^^^ meta.string.interpolated string.quoted.double.block
///            ^^^^ punctuation.definition.string.begin
///                ^ - invalid

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {Longitude}} \t {{Latitude}}}
///^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                       ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^ punctuation.section.interpolation.begin.cs
///             ^^^^^^^^^ variable.other.cs
///                      ^ punctuation.section.interpolation.end.cs
///                       ^ invalid.illegal.unexpected-token.cs
///                         ^^ - constant.character
///                            ^^ invalid.illegal.unexpected-token.cs
///                                      ^^^ invalid.illegal.unexpected-token.cs

    GMT is {DateTime.Now,width:yyyyMMdd\THHmmss\Z}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                               ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^ punctuation.section.interpolation.begin.cs
///         ^^^^^^^^ variable.other.cs
///                 ^ punctuation.accessor.dot.cs
///                  ^^^ variable.other.cs
///                     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                     ^ punctuation.separator.cs
///                      ^^^^^ variable.other.cs
///                           ^ punctuation.separator.cs
///                            ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                    ^ invalid.illegal.lone-escape.cs
///                                            ^ invalid.illegal.lone-escape.cs
///                                              ^ punctuation.section.interpolation.end.cs

    "{In+"complete":F"} "{Incomplete:F\"} {Brace:{}}
///^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///      ^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs meta.string.cs
///                ^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs
///                  ^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                      ^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                    ^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                                       ^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^ punctuation.section.interpolation.begin.cs
///   ^^ variable.other.cs
///     ^ keyword.operator.arithmetic.cs
///      ^^^^^^^^^^ string.quoted.double.cs
///                ^^ meta.format-spec.cs
///                ^ punctuation.separator.cs
///                 ^ constant.other.format-spec.cs
///                   ^ invalid.illegal.unexpected-token.cs
///                      ^ punctuation.section.interpolation.begin.cs
///                       ^^^^^^^^^^ variable.other.cs
///                                 ^^^ meta.format-spec.cs
///                                 ^ punctuation.separator.cs
///                                  ^^ constant.other.format-spec.cs
///                                   ^ invalid.illegal.lone-escape.cs
///                                     ^ invalid.illegal.unexpected-token.cs
///                                       ^ punctuation.section.interpolation.begin.cs
///                                        ^^^^^ variable.other.cs
///                                             ^^ meta.format-spec.cs
///                                             ^ punctuation.separator.cs
///                                              ^ constant.other.format-spec.cs invalid.illegal.unescaped-placeholder.cs
///                                               ^ punctuation.section.interpolation.end.cs
///                                                ^ invalid.illegal.unexpected-token.cs
   """;
/// <- meta.string.interpolated string.quoted.double.block
///^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.end
///   ^ punctuation.terminator.statement - string

// Note: Verbatim strings may look like raw strings when starting with escaped double-quotes
var location = @$"""
///            ^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///            ^^^ punctuation.definition.string.begin.cs
///               ^^ constant.character.escape.cs

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation
///                             ^^ constant.character.escape.cs
///                               ^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{Longitude}} \t {{Latitude}}}
///^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///              ^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                         ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///            ^^ constant.character.escape.cs
///              ^ punctuation.section.interpolation.begin.cs
///               ^^^^^^^^^ variable.other.cs
///                        ^ punctuation.section.interpolation.end.cs
///                         ^^^^^ - constant
///                              ^^ constant.character.escape.cs
///                                        ^^ constant.character.escape.cs
///                                          ^ - constant

    GMT is {DateTime.Now,width:yyyyMMdd\THHmmss\Z}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                               ^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///        ^ punctuation.section.interpolation.begin.cs
///         ^^^^^^^^ variable.other.cs
///                 ^ punctuation.accessor.dot.cs
///                  ^^^ variable.other.cs
///                     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                     ^ punctuation.separator.cs
///                      ^^^^^ variable.other.cs
///                           ^ punctuation.separator.cs
///                            ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs
///                                    ^^ constant.character.escape.cs
///                                            ^^ constant.character.escape.cs
///                                              ^ punctuation.section.interpolation.end.cs
   """;
/// <- meta.string.interpolated.cs string.quoted.double.verbatim.cs
///^^^ meta.string.interpolated.cs string.quoted.double.verbatim.cs
///^^ constant.character.escape.cs
///  ^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var location = $$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{Longitude}}} \t {Latitude}} }
///^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///             ^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                          ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^ - constant - invalid - punctuation
///             ^^ punctuation.section.interpolation.begin.cs
///               ^^^^^^^^^ variable.other.cs
///                        ^^ punctuation.section.interpolation.end.cs
///                          ^^^^^^ - constant - invalid - punctuation
///                                        ^^ invalid.illegal.unexpected-token.cs
///                                           ^ - constant - invalid - punctuation

    GMT is {{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                 ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^ punctuation.section.interpolation.begin.cs
///          ^^^^^^^^ variable.other.cs
///                  ^ punctuation.accessor.dot.cs
///                   ^^^ variable.other.cs
///                      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                      ^ punctuation.separator.cs
///                       ^^^^^ variable.other.cs
///                            ^ punctuation.separator.cs
///                             ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                     ^ invalid.illegal.lone-escape.cs
///                                             ^ invalid.illegal.lone-escape.cs
///                                               ^^ punctuation.section.interpolation.end.cs

    "{{In+"complete":F"}} "{{Incomplete:F\"}} {{Brace:{}}}
///^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///       ^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs meta.string.cs
///                 ^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs
///                   ^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                        ^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                       ^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                                           ^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                      ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^ punctuation.section.interpolation.begin.cs
///    ^^ variable.other.cs
///      ^ keyword.operator.arithmetic.cs
///       ^^^^^^^^^^ string.quoted.double.cs
///                 ^^ meta.format-spec.cs
///                 ^ punctuation.separator.cs
///                  ^ constant.other.format-spec.cs
///                    ^^ invalid.illegal.unexpected-token.cs
///                        ^^ punctuation.section.interpolation.begin.cs
///                          ^^^^^^^^^^ variable.other.cs
///                                    ^^^ meta.format-spec.cs
///                                    ^ punctuation.separator.cs
///                                     ^^ constant.other.format-spec.cs
///                                      ^ invalid.illegal.lone-escape.cs
///                                        ^^ invalid.illegal.unexpected-token.cs
///                                           ^^ punctuation.section.interpolation.begin.cs
///                                             ^^^^^ variable.other.cs
///                                                  ^^ meta.format-spec.cs
///                                                  ^ punctuation.separator.cs
///                                                   ^ constant.other.format-spec.cs invalid.illegal.unescaped-placeholder.cs
///                                                    ^^ punctuation.section.interpolation.end.cs
///                                                      ^ - invalid.illegal
   """;
///^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///^^^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var location = @$$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^ invalid.illegal.reserved-char.cs
///             ^^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{Longitude}}} \t {Latitude}} }
///^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///             ^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                          ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^ - constant - invalid - punctuation
///             ^^ punctuation.section.interpolation.begin.cs
///               ^^^^^^^^^ variable.other.cs
///                        ^^ punctuation.section.interpolation.end.cs
///                          ^^^^^^ - constant - invalid - punctuation
///                                        ^^ invalid.illegal.unexpected-token.cs
///                                           ^ - constant - invalid - punctuation

    GMT is {{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                 ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^ punctuation.section.interpolation.begin.cs
///          ^^^^^^^^ variable.other.cs
///                  ^ punctuation.accessor.dot.cs
///                   ^^^ variable.other.cs
///                      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                      ^ punctuation.separator.cs
///                       ^^^^^ variable.other.cs
///                            ^ punctuation.separator.cs
///                             ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                     ^ invalid.illegal.lone-escape.cs
///                                             ^ invalid.illegal.lone-escape.cs
///                                               ^^ punctuation.section.interpolation.end.cs
   """;
///^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///^^^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var location = $$$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{{{Longitude}}}}} \t {{Latitude}}} }}
///^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///              ^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                             ^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^^ - constant - invalid - punctuation
///              ^^^ punctuation.section.interpolation.begin.cs
///                 ^^^^^^^^^ source.cs variable.other.cs
///                          ^^^ punctuation.section.interpolation.end.cs
///                             ^^^^^^^^ - constant - invalid - punctuation
///                                             ^^^ invalid.illegal.unexpected-token.cs
///                                                 ^^ - constant - invalid - punctuation

    GMT is {{{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                   ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^ punctuation.section.interpolation.begin.cs
///           ^^^^^^^^ variable.other.cs
///                   ^ punctuation.accessor.dot.cs
///                    ^^^ variable.other.cs
///                       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                       ^ punctuation.separator.cs
///                        ^^^^^ variable.other.cs
///                             ^ punctuation.separator.cs
///                              ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                      ^ invalid.illegal.lone-escape.cs
///                                              ^ invalid.illegal.lone-escape.cs
///                                                ^^^ punctuation.section.interpolation.end.cs

    "{{{In+"complete":F"}}} "{{{Incomplete:F\"}}} {{{Brace:{}}}}
///^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///        ^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs meta.string.cs
///                  ^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs
///                    ^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                          ^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                          ^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                                               ^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                            ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^^ punctuation.section.interpolation.begin.cs
///     ^^ variable.other.cs
///       ^ keyword.operator.arithmetic.cs
///        ^^^^^^^^^^ string.quoted.double.cs
///                  ^^ meta.format-spec.cs
///                  ^ punctuation.separator.cs
///                   ^ constant.other.format-spec.cs
///                     ^^^ invalid.illegal.unexpected-token.cs
///                          ^^^ punctuation.section.interpolation.begin.cs
///                             ^^^^^^^^^^ variable.other.cs
///                                       ^^^ meta.format-spec.cs
///                                       ^ punctuation.separator.cs
///                                        ^^ constant.other.format-spec.cs
///                                         ^ invalid.illegal.lone-escape.cs
///                                           ^^^ invalid.illegal.unexpected-token.cs
///                                               ^^^ punctuation.section.interpolation.begin.cs
///                                                  ^^^^^ variable.other.cs
///                                                       ^^ meta.format-spec.cs
///                                                       ^ punctuation.separator.cs
///                                                        ^ constant.other.format-spec.cs invalid.illegal.unescaped-placeholder.cs
///                                                         ^^^ punctuation.section.interpolation.end.cs
///                                                            ^ - invalid.illegal
   """;
///^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///^^^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var location = @$$$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^ invalid.illegal.reserved-char.cs
///             ^^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{{{Longitude}}}}} \t {{Latitude}}} }}
///^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///              ^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                             ^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^^ - constant - invalid - punctuation
///              ^^^ punctuation.section.interpolation.begin.cs
///                 ^^^^^^^^^ source.cs variable.other.cs
///                          ^^^ punctuation.section.interpolation.end.cs
///                             ^^^^^^^^ - constant - invalid - punctuation
///                                             ^^^ invalid.illegal.unexpected-token.cs
///                                                 ^^ - constant - invalid - punctuation

    GMT is {{{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                   ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^ punctuation.section.interpolation.begin.cs
///           ^^^^^^^^ variable.other.cs
///                   ^ punctuation.accessor.dot.cs
///                    ^^^ variable.other.cs
///                       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                       ^ punctuation.separator.cs
///                        ^^^^^ variable.other.cs
///                             ^ punctuation.separator.cs
///                              ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                      ^ invalid.illegal.lone-escape.cs
///                                              ^ invalid.illegal.lone-escape.cs
///                                                ^^^ punctuation.section.interpolation.end.cs
   """;
///^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///^^^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var location = $$$$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{{{{{Longitude}}}}}}} \t {{{Latitude}}}} }}}
///^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///               ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^^^ - constant - invalid - punctuation
///               ^^^^ punctuation.section.interpolation.begin.cs
///                   ^^^^^^^^^ source.cs variable.other.cs
///                            ^^^^ punctuation.section.interpolation.end.cs
///                                ^^^^^^^^^^ - constant - invalid - punctuation
///                                                  ^^^^ invalid.illegal.unexpected-token.cs
///                                                       ^^^ - constant - invalid - punctuation

    GMT is {{{{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}}}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                     ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^ punctuation.section.interpolation.begin.cs
///            ^^^^^^^^ variable.other.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^ variable.other.cs
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                        ^ punctuation.separator.cs
///                         ^^^^^ variable.other.cs
///                              ^ punctuation.separator.cs
///                               ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                       ^ invalid.illegal.lone-escape.cs
///                                               ^ invalid.illegal.lone-escape.cs
///                                                 ^^^^ punctuation.section.interpolation.end.cs

    "{{{{In+"complete":F"}}}} "{{{{Incomplete:F\"}}}} {{{{Brace:{}}}}}
///^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///         ^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs meta.string.cs
///                   ^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs
///                     ^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                            ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                             ^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///                                                   ^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                                  ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///  ^^^^ punctuation.section.interpolation.begin.cs
///      ^^ variable.other.cs
///        ^ keyword.operator.arithmetic.cs
///         ^^^^^^^^^^ string.quoted.double.cs
///                   ^^ meta.format-spec.cs
///                   ^ punctuation.separator.cs
///                    ^ constant.other.format-spec.cs
///                      ^^^^ invalid.illegal.unexpected-token.cs
///                            ^^^^ punctuation.section.interpolation.begin.cs
///                                ^^^^^^^^^^ variable.other.cs
///                                          ^^^ meta.format-spec.cs
///                                          ^ punctuation.separator.cs
///                                           ^^ constant.other.format-spec.cs
///                                            ^ invalid.illegal.lone-escape.cs
///                                              ^^^^ invalid.illegal.unexpected-token.cs
///                                                   ^^^^ punctuation.section.interpolation.begin.cs
///                                                       ^^^^^ variable.other.cs
///                                                            ^^ meta.format-spec.cs
///                                                            ^ punctuation.separator.cs
///                                                             ^ constant.other.format-spec.cs invalid.illegal.unescaped-placeholder.cs
///                                                              ^^^ punctuation.section.interpolation.end.cs
///                                                                 ^ - invalid.illegal
   """;
///^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///^^^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var location = @$$$$"""
/// <- storage.type.variable
/// ^^^^^^^^ variable.other
///            ^ invalid.illegal.reserved-char.cs
///             ^^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin

    Escapes like \0 \a \f \n \t "" are literals.
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - invalid - punctuation

    You are at {{{{{{{Longitude}}}}}}} \t {{{Latitude}}}} }}}
///^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///               ^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///            ^^^ - constant - invalid - punctuation
///               ^^^^ punctuation.section.interpolation.begin.cs
///                   ^^^^^^^^^ source.cs variable.other.cs
///                            ^^^^ punctuation.section.interpolation.end.cs
///                                ^^^^^^^^^^ - constant - invalid - punctuation
///                                                  ^^^^ invalid.illegal.unexpected-token.cs
///                                                       ^^^ - constant - invalid - punctuation

    GMT is {{{{DateTime.Now,width:yyyyMMdd\THHmmss\Z}}}}!
///^^^^^^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated.cs meta.interpolation.cs - string
///                                                     ^^ meta.string.interpolated.cs string.quoted.double.block.cs
///        ^^^^ punctuation.section.interpolation.begin.cs
///            ^^^^^^^^ variable.other.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^ variable.other.cs
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.format-spec.cs
///                        ^ punctuation.separator.cs
///                         ^^^^^ variable.other.cs
///                              ^ punctuation.separator.cs
///                               ^^^^^^^^^^^^^^^^^^ constant.other.format-spec.cs - constant.character
///                                       ^ invalid.illegal.lone-escape.cs
///                                               ^ invalid.illegal.lone-escape.cs
///                                                 ^^^^ punctuation.section.interpolation.end.cs
   """;
///^^^ meta.string.interpolated.cs string.quoted.double.block.cs
///^^^ punctuation.definition.string.end.cs
///   ^ punctuation.terminator.statement.cs

var pointMessage = $"""The point "{X}, {Y}" is {Math.Sqrt(X * X + Y * Y)} from the origin""";
///                ^^^^ meta.string.interpolated string.quoted.double.block punctuation.definition.string.begin
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated
///                    ^^^^^^^^^^^ string.quoted.double.block - meta.interpolation
///                               ^^^ meta.interpolation - string
///                                  ^^ string.quoted.double.block - meta.interpolation
///                                    ^^^ meta.interpolation - string
///                                       ^^^^^ string.quoted.double.block - meta.interpolation
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation - string
///                                                                      ^^^^^^^^^^^^^^^^^^^ string.quoted.double.block - meta.interpolation
///                               ^ punctuation.section.interpolation.begin
///                                ^ variable.other
///                                 ^ punctuation.section.interpolation.end
///                                    ^ punctuation.section.interpolation.begin
///                                     ^ variable.other
///                                      ^ punctuation.section.interpolation.end
///                                                                                         ^ punctuation.terminator.statement - meta.string

nint intptr = IntPtr.Zero;
/// <- storage.type

public static void M(string myString)
{
    ArgumentNullException.ThrowIfNull(myString);
    // method
}

// https://learn.microsoft.com/en-gb/dotnet/csharp/language-reference/tokens/interpolated
/* Beginning with C# 11, the interpolated expressions can include newlines. The text between
   the { and } must be valid C#, therefore it can include newlines that improve readability.
   The following example shows how newlines can improve the readability of an expression
   involving pattern matching:
*/
string message = $"The usage policy for {safetyScore} is {
    safetyScore switch
///             ^^^^^^ meta.string.interpolated source keyword.control.conditional.switch
    {
        > 90 => "Unlimited usage",
        > 80 => "General usage, with daily safety check",
        > 70 => "Issues must be addressed within 1 week",
        > 50 => "Issues must be addressed within 1 day",
        _ => "Issues must be addressed before continued use",
    }
    }";
/// ^ meta.string.interpolated punctuation.section.interpolation.end
///  ^ meta.string.interpolated string.quoted.double punctuation.definition.string.end
///   ^ punctuation.terminator.statement

string name = "Horace";
int age = 34;
Console.WriteLine($"He asked, \"Is your name {name}?\", but didn't wait for a reply :-{{");
///                           ^^ meta.function-call meta.group meta.string.interpolated string.quoted.double constant.character.escape
Console.WriteLine($"{name} is {age} year{(age == 1 ? "" : "s")} old.");
///                                                     ^ keyword.operator.ternary
// Expected output is:
// He asked, "Is your name Horace?", but didn't wait for a reply :-{
// Horace is 34 years old.

string s2 = @$"He said, ""This is the last \u0063hance\x0021""";
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated string.quoted.double.verbatim
///         ^^^ punctuation.definition.string.begin
///                     ^^ constant.character.escape
///                                        ^^^^^^^^^^^^^^^^^ - constant

string s2 = @$$"""He said, ""This is the last \u0063hance\x0021""";
///         ^ invalid.illegal.reserved-char.cs
///          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated string.quoted.double.block - constant
///          ^^^^^ punctuation.definition.string.begin
///                        ^^ - constant.character
///                                           ^^^^^^^^^^^^^^^^^ - constant
///                                                            ^^^ punctuation.definition.string.end

public class C2 {
/// <- storage.modifier.access
///    ^^^^^ keyword.declaration.class
///          ^^ entity.name.class

    public required string FirstName { get; init; }
/// ^^^^^^ storage.modifier.access
///        ^^^^^^^^ storage.modifier
///                 ^^^^^^ storage.type
}

public readonly required struct S2 {
/// <- storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^^^^^^ storage.modifier
///                      ^^^^^^ keyword.declaration.struct
///                             ^^ entity.name.struct

    public required string FirstName { get; init; }
/// ^^^^^^ storage.modifier.access
///        ^^^^^^^^ storage.modifier
///                 ^^^^^^ storage.type
}

public class CompanyFeaturesService(
/// ^^ storage.modifier.access
///    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
///    ^^^^^ keyword.declaration.class
///          ^^^^^^^^^^^^^^^^^^^^^^ entity.name.class
///                                ^ meta.class.constructor.parameters punctuation.section.parameters.begin
  ILogger<CompanyFeaturesService> logger) : ICompanyFeaturesService
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.constructor.parameters
/// ^^^^^ support.type
///      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
///      ^ punctuation.definition.generic.begin
///       ^^^^^^^^^^^^^^^^^^^^^^ support.type
///                             ^ punctuation.definition.generic.end
///                               ^^^^^^ variable.parameter - meta.generic
///                                     ^ punctuation.section.parameters.end
///                                       ^ meta.class punctuation.separator.type - meta.class.constructor
{
/// <- meta.class.body meta.block punctuation.section.block.begin
}
/// <- meta.class.body meta.block punctuation.section.block.end

public readonly struct Distance(double dx, double dy)
/// ^^ storage.modifier.access
///    ^^^^^^^^ storage.modifier
///             ^^^^^^^^^^^^^^^ meta.struct
///                            ^^^^^^^^^^^^^^^^^^^^^^ meta.class.constructor.parameters
///                            ^ punctuation.section.parameters.begin
///                             ^^^^^^ storage.type
///                                    ^^ variable.parameter
///                                      ^ punctuation.separator.parameter.function
///                                        ^^^^^^ storage.type
///                                               ^^ variable.parameter
///                                                 ^ punctuation.section.parameters.end
///                                                  ^ meta.struct - meta.class.constructor
{
/// <- meta.struct.body meta.block punctuation.section.block.begin
    public readonly double Magnitude { get; } = Math.Sqrt(dx * dx + dy * dy);
    public readonly double Direction { get; } = Math.Atan2(dy, dx);
}

  file record struct Person(string Name);
///^^^ storage.modifier.access
///    ^^^^^^^^^^^^^^^^^^^^ meta.class.record - meta.class.constructor.parameters
///                        ^^^^^^^^^^^^^ meta.class.constructor.parameters
///    ^^^^^^ keyword.declaration.class.record
///           ^^^^^^ keyword.declaration.struct.record
///                  ^^^^^^ entity.name.class
///                        ^ punctuation.section.parameters.begin
///                         ^^^^^^ storage.type
///                                ^^^^ variable.parameter
///                                    ^ punctuation.section.parameters.end
///                                     ^ punctuation.terminator.statement


class SomeClass
{
    // https://learn.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-source-generators#source-generation
    [GeneratedRegex("abc|def", RegexOptions.IgnoreCase, "en-US")]
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.cs
/// ^ punctuation.definition.annotation.begin.cs
///  ^^^^^^^^^^^^^^ variable.annotation.cs
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^ punctuation.definition.string.begin.cs
///                  ^^^^^^^ meta.string.cs meta.regexp.cs source.regexp meta.mode.basic.regexp
///                     ^ keyword.operator.alternation.regexp
///                         ^ punctuation.definition.string.end.cs
///                          ^ punctuation.separator.argument.cs
///                            ^^^^^^^^^^^^ variable.other.cs
///                                        ^ punctuation.accessor.dot.cs
///                                         ^^^^^^^^^^ variable.other.cs
///                                                   ^ punctuation.separator.argument.cs
///                                                     ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                     ^ punctuation.definition.string.begin.cs
///                                                           ^ punctuation.definition.string.end.cs
///                                                            ^ punctuation.section.group.end.cs
///                                                             ^ punctuation.definition.annotation.end.cs
    private static partial Regex AbcOrDefGeneratedRegex();
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
/// ^^^^^^^ storage.modifier.access.cs
///         ^^^^^^ storage.modifier.cs
///                ^^^^^^^ storage.modifier.cs
///                        ^^^^^ support.type.cs
///                              ^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                                    ^^ meta.method.parameters.cs
///                                                    ^ punctuation.section.parameters.begin.cs
///                                                     ^ punctuation.section.parameters.end.cs
///                                                      ^ meta.method.cs punctuation.terminator.statement.cs

    [GeneratedRegex(@"^some(?<named_capture>[^/]{1,100})$")]
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.cs
/// ^ punctuation.definition.annotation.begin.cs
///  ^^^^^^^^^^^^^^ variable.annotation.cs
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^ punctuation.definition.string.begin.cs
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs meta.regexp.cs source.regexp
///                   ^^^^^ meta.mode.basic.regexp
///                   ^ keyword.control.anchor.regexp
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.regexp meta.mode.basic.regexp
///                        ^ punctuation.section.group.begin.regexp
///                         ^^^^^^^^^^^^^^^^ keyword.other.named-capture-group.regexp
///                          ^ punctuation.definition.capture-group-name.begin.regexp
///                           ^^^^^^^^^^^^^ entity.name.capture-group.regexp
///                                        ^ punctuation.definition.capture-group-name.end.regexp
///                                         ^^^^ meta.set.regexp
///                                         ^ punctuation.definition.set.begin.regexp
///                                          ^ keyword.operator.logical.regexp
///                                            ^ punctuation.definition.set.end.regexp
///                                             ^^^^^^^ keyword.operator.quantifier.regexp
///                                                    ^ punctuation.section.group.end.regexp
///                                                     ^ meta.mode.basic.regexp keyword.control.anchor.regexp
///                                                      ^ punctuation.definition.string.end.cs
///                                                       ^ punctuation.section.group.end.cs
///                                                        ^ punctuation.definition.annotation.end.cs
    private static partial Regex SomeRegex();

}
