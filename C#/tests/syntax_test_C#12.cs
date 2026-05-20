/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

using MyTuple = (float x, vec3 y);
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ entity.name.type.cs
///           ^ keyword.operator.assignment.cs
///             ^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///             ^ punctuation.section.sequence.begin.cs
///              ^^^^^ storage.type.primitive.cs
///                    ^ variable.other.cs
///                     ^ punctuation.separator.comma.cs
///                       ^^^^ support.type.cs
///                            ^ variable.other.cs
///                             ^ punctuation.section.sequence.end.cs
///                              ^ punctuation.terminator.statement.cs

public class InvalidException(string _message) : Exception(_message);
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
///    ^^^^^ keyword.declaration.class.cs
///          ^^^^^^^^^^^^^^^^ entity.name.class.cs
///                          ^^^^^^^^^^^^^^^^^ meta.class.parameters.cs
///                          ^ punctuation.section.parameters.begin.cs
///                           ^^^^^^ storage.type.primitive.cs
///                                  ^^^^^^^^ variable.parameter.cs
///                                          ^ punctuation.section.parameters.end.cs
///                                           ^ meta.class.cs
///                                            ^^^^^^^^^^^^^^^^^^^^^ meta.class.base.cs
///                                            ^ punctuation.separator.colon.cs
///                                              ^^^^^^^^^ entity.other.inherited-class.cs
///                                                       ^^^^^^^^^^ meta.constructor.arguments.cs meta.group.cs
///                                                       ^ punctuation.section.group.begin.cs
///                                                        ^^^^^^^^ variable.other.cs
///                                                                ^ punctuation.section.group.end.cs
///                                                                 ^ punctuation.terminator.statement.cs

public class YourClass<T1, T2>(string[] args) : BaseClass<T1<T2>>(args) where T1 : class<T2> {}
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
///    ^^^^^ keyword.declaration.class.cs
///          ^^^^^^^^^ entity.name.class.cs
///                   ^^^^^^^^ meta.generic.cs
///                   ^ punctuation.definition.generic.begin.cs
///                    ^^ variable.parameter.type.cs
///                      ^ punctuation.separator.comma.cs
///                        ^^ variable.parameter.type.cs
///                          ^ punctuation.definition.generic.end.cs
///                           ^^^^^^^^^^^^^^^ meta.class.parameters.cs
///                           ^ punctuation.section.parameters.begin.cs
///                            ^^^^^^ storage.type.primitive.cs
///                                  ^^ meta.brackets.cs
///                                  ^ punctuation.section.brackets.begin.cs
///                                   ^ punctuation.section.brackets.end.cs
///                                     ^^^^ variable.parameter.cs
///                                         ^ punctuation.section.parameters.end.cs
///                                          ^ meta.class.cs
///                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.base.cs
///                                           ^ punctuation.separator.colon.cs
///                                             ^^^^^^^^^ entity.other.inherited-class.cs
///                                                      ^^^^^^^^ meta.generic.cs
///                                                      ^ punctuation.definition.generic.begin.cs
///                                                       ^^ support.type.cs
///                                                         ^^^^ meta.generic.cs
///                                                         ^ punctuation.definition.generic.begin.cs
///                                                          ^^ support.type.cs
///                                                            ^ punctuation.definition.generic.end.cs
///                                                             ^ punctuation.definition.generic.end.cs
///                                                              ^^^^^^ meta.constructor.arguments.cs meta.group.cs
///                                                              ^ punctuation.section.group.begin.cs
///                                                               ^^^^ variable.other.cs
///                                                                   ^ punctuation.section.group.end.cs
///                                                                     ^^^^^^^^^^^^^^^^^^^^^ meta.class.cs meta.constraints.cs
///                                                                     ^^^^^ storage.modifier.where.cs
///                                                                           ^^ support.type.cs
///                                                                              ^ punctuation.separator.colon.cs
///                                                                                ^^^^^ storage.type.primitive.cs
///                                                                                     ^^^^ meta.generic.cs
///                                                                                     ^ punctuation.definition.generic.begin.cs
///                                                                                      ^^ support.type.cs
///                                                                                        ^ punctuation.definition.generic.end.cs
///                                                                                          ^^ meta.class.body.cs meta.block.cs
///                                                                                          ^ punctuation.section.block.begin.cs
///                                                                                           ^ punctuation.section.block.end.cs
