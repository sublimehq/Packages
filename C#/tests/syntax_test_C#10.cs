/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

global using Newtonsoft.Json;
/// <- meta.using.cs storage.modifier.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^^ storage.modifier.cs
///    ^^^^^ keyword.declaration.using.cs
///          ^^^^^^^^^^^^^^^ meta.path.cs
///                    ^ punctuation.accessor.dot.cs
///                         ^ punctuation.terminator.statement.cs
global using static Console.WriteLine;
/// <- meta.using.cs storage.modifier.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^^ storage.modifier.cs
///    ^^^^^ keyword.declaration.using.cs
///          ^^^^^^ storage.modifier.static.cs
///                 ^^^^^^^^^^^^^^^^^ meta.path.cs
///                        ^ punctuation.accessor.dot.cs
///                                  ^ punctuation.terminator.statement.cs

namespace Example;
///^^^^^^ meta.namespace keyword.declaration.namespace
///       ^^^^^^^ meta.namespace entity.name.namespace
///              ^ punctuation.terminator.statement

/**
 * Record Classes
 */

public record Person;
///^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^^ entity.name.class.cs
///                 ^ punctuation.terminator.statement.cs

public record { };
///^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^ meta.record.body.cs meta.block.cs
///           ^ punctuation.section.block.begin.cs
///             ^ punctuation.section.block.end.cs
///              ^ punctuation.terminator.statement.cs

public record class Person;
///^^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^ keyword.declaration.class.cs
///                 ^^^^^^ entity.name.class.cs
///                       ^ punctuation.terminator.statement.cs

public record class Person(string Name);
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^ keyword.declaration.class.cs
///                 ^^^^^^ entity.name.class.cs
///                       ^^^^^^^^^^^^^ meta.record.parameters.cs
///                       ^ punctuation.section.parameters.begin.cs
///                        ^^^^^^ storage.type.cs
///                               ^^^^ variable.parameter.cs
///                                   ^ punctuation.section.parameters.end.cs
///                                    ^ punctuation.terminator.statement.cs

public record class { };
///^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^ keyword.declaration.class.cs
///                 ^^^ meta.record.body.cs meta.block.cs
///                 ^ punctuation.section.block.begin.cs
///                   ^ punctuation.section.block.end.cs
///                    ^ punctuation.terminator.statement.cs

public record class Person { };
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^ keyword.declaration.class.cs
///                 ^^^^^^ entity.name.class.cs
///                        ^^^ meta.record.body.cs meta.block.cs
///                        ^ punctuation.section.block.begin.cs
///                          ^ punctuation.section.block.end.cs
///                           ^ punctuation.terminator.statement.cs

/**
 * Record Structs
 */

public record struct Person;
///^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^^ keyword.declaration.struct.cs
///                  ^^^^^^ entity.name.struct.cs
///                        ^ punctuation.terminator.statement.cs

public record struct {  };
///^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^^ keyword.declaration.struct.cs
///                  ^^^^ meta.record.body.cs meta.block.cs
///                  ^ punctuation.section.block.begin.cs
///                     ^ punctuation.section.block.end.cs
///                      ^ punctuation.terminator.statement.cs

public record struct Person(string Name);
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^ meta.record.cs
///    ^^^^^^ keyword.declaration.record.cs
///           ^^^^^^ keyword.declaration.struct.cs
///                  ^^^^^^ entity.name.struct.cs
///                        ^^^^^^^^^^^^^ meta.record.parameters.cs
///                        ^ punctuation.section.parameters.begin.cs
///                         ^^^^^^ storage.type.cs
///                                ^^^^ variable.parameter.cs
///                                    ^ punctuation.section.parameters.end.cs
///                                     ^ punctuation.terminator.statement.cs

public readonly record struct Person(string Name) {  };
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.record meta.record
///^^^ storage.modifier.access.cs
///    ^^^^^^^^ storage.modifier.cs
///             ^^^^^^^^^^^^^^^^^^^^ meta.record.cs
///             ^^^^^^ keyword.declaration.record.cs
///                    ^^^^^^ keyword.declaration.struct.cs
///                           ^^^^^^ entity.name.struct.cs
///                                 ^^^^^^^^^^^^^ meta.record.parameters.cs
///                                 ^ punctuation.section.parameters.begin.cs
///                                  ^^^^^^ storage.type.cs
///                                         ^^^^ variable.parameter.cs
///                                             ^ punctuation.section.parameters.end.cs
///                                              ^ meta.record.cs
///                                               ^^^^ meta.record.body.cs meta.block.cs
///                                               ^ punctuation.section.block.begin.cs
///                                                  ^ punctuation.section.block.end.cs
///                                                   ^ punctuation.terminator.statement.cs

/**
 * Reflections and member pattern matching
 */

if (obj is Person { Address: { City: "Seattle" } })
///     ^^ keyword.operator.comparison
///        ^^^^^^ support.type
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body
///                 ^^^^^^^ variable.other.member
///                        ^ keyword.operator.assignment
///                          ^ punctuation.section.block.begin
///                            ^^^^ variable.other.member
///                                ^ keyword.operator.assignment
///                                  ^^^^^^^^^ string.quoted.double
///                                            ^ punctuation.section.block.end
///                                              ^ punctuation.section.block.end
    Console.WriteLine("Seattle");

if (obj is Person { Address.City: "Seattle" }) // Extended property pattern
///     ^^ keyword.operator.comparison
///        ^^^^^^ support.type
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body
///                 ^^^^^^^ variable.other.member
///                        ^ punctuation.accessor.dot
///                         ^^^^ variable.other.member
///                             ^ keyword.operator.assignment
///                               ^^^^^^^^^ string.quoted.double
///                                         ^ punctuation.section.block.end
    Console.WriteLine("Seattle");

static bool IsConferenceDay(DateTime date) => date is { Year: 2020, Month: 5, Day: 19 or 20 or 21 };
///^^^ storage.modifier
///    ^^^^ storage.type
///         ^^^^^^^^^^^^^^^ meta.method entity.name.function
///                        ^ meta.method.parameters punctuation.section.parameters.begin
///                         ^^^^^^^^ meta.method.parameters support.type
///                                  ^^^^ meta.method.parameters variable.parameter
///                                      ^ meta.method.parameters punctuation.section.parameters.end
///                                        ^^ meta.method keyword.declaration.function.arrow
///                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                                           ^^^^ variable.other
///                                                ^^ keyword.operator.comparison
///                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body meta.block
///                                                   ^ punctuation.section.block.begin
///                                                     ^^^^ variable.other.member
///                                                         ^ keyword.operator.assignment
///                                                           ^^^^ meta.number.integer.decimal constant.numeric.value
///                                                               ^ punctuation.separator.property
///                                                                 ^^^^^ variable.other.member
///                                                                      ^ keyword.operator.assignment
///                                                                        ^ meta.number.integer.decimal constant.numeric.value
///                                                                         ^ punctuation.separator.property
///                                                                           ^^^ variable.other.member
///                                                                              ^ keyword.operator.assignment
///                                                                                ^^ meta.number.integer.decimal constant.numeric.value
///                                                                                   ^^ keyword.operator.logical
///                                                                                      ^^ meta.number.integer.decimal constant.numeric.value
///                                                                                         ^^ keyword.operator.logical
///                                                                                            ^^ meta.number.integer.decimal constant.numeric.value
///                                                                                               ^ punctuation.section.block.end
///                                                                                                ^ punctuation.terminator.statement
