/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

global using Newtonsoft.Json;
/// ^^ storage.modifier
///    ^^^^^ keyword.control.import
///          ^^^^^^^^^^^^^^^ meta.path
///                    ^ punctuation.separator.namespace
///                         ^ punctuation.terminator - meta.path
global using static Console.WriteLine;
/// ^^ storage.modifier
///    ^^^^^ keyword.control.import
///          ^^^^^^ keyword.control.import
///                 ^^^^^^^^^^^^^^^^^ meta.path
///                        ^ punctuation.separator.namespace
///                                  ^ punctuation.terminator

namespace Example;
///^^^^^^ meta.namespace keyword.declaration.namespace
///       ^^^^^^^ meta.namespace entity.name.namespace
///              ^ punctuation.terminator.statement

public record struct Person(string Name);
/// ^^ storage.modifier.access
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

public readonly record struct Person(string Name);
///^^^ storage.modifier.access
///             ^^^^^^^^^^^^^^^^^^^^ meta.class.record - meta.class.record meta.class.record
///                                 ^^^^^^^^^^^^^ meta.class.constructor.parameters - meta.class.record meta.class.record
///    ^^^^^^^^ storage.modifier
///             ^^^^^^ keyword.declaration.class.record
///                    ^^^^^^ keyword.declaration.struct.record
///                           ^^^^^^ entity.name.class
///                                 ^ punctuation.section.parameters.begin
///                                  ^^^^^^ storage.type
///                                         ^^^^ variable.parameter
///                                             ^ punctuation.section.parameters.end
///                                              ^ punctuation.terminator.statement

if (obj is Person { Address: { City: "Seattle" } })
///     ^^ keyword.operator.reflection
///        ^^^^^^ support.type
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance.property-subpattern meta.class.body.anonymous
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
///     ^^ keyword.operator.reflection
///        ^^^^^^ support.type
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance.property-subpattern meta.class.body.anonymous
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
///                                                ^^ keyword.operator.reflection
///                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance.property-subpattern meta.class.body.anonymous meta.block
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
