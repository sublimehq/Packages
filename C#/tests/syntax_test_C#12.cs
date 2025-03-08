/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

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
