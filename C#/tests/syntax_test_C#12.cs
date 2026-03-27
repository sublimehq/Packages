/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

using MyTuple = (float x, vec3 y);
/// <- keyword.control.using.cs
///   ^^^^^^^ entity.name.type.cs
///           ^ keyword.operator.assignment.cs
///             ^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///             ^ punctuation.section.sequence.begin.cs
///              ^^^^^ storage.type.cs
///                    ^ variable.other.cs
///                     ^ punctuation.separator.sequence.cs
///                       ^^^^ support.type.cs
///                            ^ variable.other.cs
///                             ^ punctuation.section.sequence.end.cs
///                              ^ punctuation.terminator.statement.cs

public class InvalidException(string _message) : Exception(_message);
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
///    ^^^^^ keyword.declaration.class.cs
///          ^^^^^^^^^^^^^^^^ entity.name.class.cs
///                          ^^^^^^^^^^^^^^^^^ meta.class.constructor.parameters.cs
///                          ^ punctuation.section.parameters.begin.cs
///                           ^^^^^^ storage.type.cs
///                                  ^^^^^^^^ variable.parameter.cs
///                                          ^ punctuation.section.parameters.end.cs
///                                           ^^^^^^^^^^^^ meta.class.cs
///                                            ^ punctuation.separator.type.cs
///                                              ^^^^^^^^^ entity.other.inherited-class.cs
///                                                       ^^^^^^^^^^ meta.class.constructor.arguments.cs meta.group.cs
///                                                       ^ punctuation.section.group.begin.cs
///                                                        ^^^^^^^^ variable.other.cs
///                                                                ^ punctuation.section.group.end.cs
///                                                                 ^ punctuation.terminator.statement.cs
///                                                                  ^ - meta.class

public class NotFoundException(string _message) : Exception(_message);
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
///    ^^^^^ keyword.declaration.class.cs
///          ^^^^^^^^^^^^^^^^^ entity.name.class.cs
///                           ^^^^^^^^^^^^^^^^^ meta.class.constructor.parameters.cs
///                           ^ punctuation.section.parameters.begin.cs
///                            ^^^^^^ storage.type.cs
///                                   ^^^^^^^^ variable.parameter.cs
///                                           ^ punctuation.section.parameters.end.cs
///                                            ^^^^^^^^^^^^ meta.class.cs
///                                             ^ punctuation.separator.type.cs
///                                               ^^^^^^^^^ entity.other.inherited-class.cs
///                                                        ^^^^^^^^^^ meta.class.constructor.arguments.cs meta.group.cs
///                                                        ^ punctuation.section.group.begin.cs
///                                                         ^^^^^^^^ variable.other.cs
///                                                                 ^ punctuation.section.group.end.cs
///                                                                  ^ punctuation.terminator.statement.cs
