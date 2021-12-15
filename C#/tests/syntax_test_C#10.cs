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
///^^^^^^ meta.namespace storage.type.namespace
///       ^^^^^^^ meta.namespace entity.name.namespace
///              ^ punctuation.terminator.statement

public record struct Person(string Name);
/// ^^ storage.modifier.access
///    ^^^^^^^^^^^^^^^^^^^^ meta.class.record
///    ^^^^^^ storage.type.class.record
///           ^^^^^^ storage.type.struct.record
///                  ^^^^^^ entity.name.class
///                        ^ punctuation.section.group.begin
///                         ^^^^^^^^^^^^ meta.class.body meta.method.parameters
///                         ^^^^^^ storage.type
///                                ^^^^ variable.parameter
///                                    ^ punctuation.section.parameters.end
///                                     ^ punctuation.terminator.statement

public readonly record struct Person(string Name);
///^^^ storage.modifier.access
///    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.record
///    ^^^^^^^^ storage.modifier
///             ^^^^^^ storage.type.class.record
///                    ^^^^^^ storage.type.struct.record
///                           ^^^^^^ entity.name.class
///                                 ^ punctuation.section.group.begin
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
