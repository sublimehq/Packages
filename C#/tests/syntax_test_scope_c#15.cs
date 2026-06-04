/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

/**
 * Collection expression arguments
 */

string[] values = ["one", "two", "three"];

// Pass capacity argument to List<T> constructor
List<string> names = [with(capacity: values.Length * 2), .. values];
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.cs
///                  ^ punctuation.section.brackets.begin.cs
///                   ^^^^ meta.function-call.identifier.cs keyword.other.with.cs
///                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                       ^ punctuation.section.group.begin.cs
///                        ^^^^^^^^ variable.parameter.cs
///                                ^ keyword.operator.assignment.cs
///                                  ^^^^^^ variable.other.cs
///                                        ^ punctuation.accessor.dot.cs
///                                         ^^^^^^ variable.other.cs
///                                                ^ keyword.operator.arithmetic.cs
///                                                  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                   ^ punctuation.section.group.end.cs
///                                                    ^ punctuation.separator.comma.cs
///                                                      ^^ keyword.operator.range.cs
///                                                         ^^^^^^ variable.other.cs
///                                                               ^ punctuation.section.brackets.end.cs
///                                                                ^ punctuation.terminator.statement.cs

// Pass comparer argument to HashSet<T> constructor
HashSet<string> set = [with(StringComparer.OrdinalIgnoreCase), "Hello", "HELLO", "hello"];
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.cs
///                   ^ punctuation.section.brackets.begin.cs
///                    ^^^^ meta.function-call.identifier.cs keyword.other.with.cs
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                        ^ punctuation.section.group.begin.cs
///                         ^^^^^^^^^^^^^^ variable.other.cs
///                                       ^ punctuation.accessor.dot.cs
///                                        ^^^^^^^^^^^^^^^^^ variable.other.cs
///                                                         ^ punctuation.section.group.end.cs
///                                                          ^ punctuation.separator.comma.cs
///                                                            ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                                   ^ punctuation.separator.comma.cs
///                                                                     ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                                            ^ punctuation.separator.comma.cs
///                                                                              ^^^^^^^ meta.string.cs string.quoted.double.cs
///                                                                                     ^ punctuation.section.brackets.end.cs
///                                                                                      ^ punctuation.terminator.statement.cs

/**
 * Union Types
 */

public record class Cat(string Name);
public record class Dog(string Name);
public record class Bird(string Name);

public union Pet(Cat, Dog, Bird);
/// <- storage.modifier.access.cs
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^ meta.union.cs
///    ^^^^^ keyword.declaration.union.cs
///          ^^^ entity.name.union.cs
///             ^^^^^^^^^^^^^^^^ meta.union.parameters.cs meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ support.type.cs
///                 ^ punctuation.separator.comma.cs
///                   ^^^ support.type.cs
///                      ^ punctuation.separator.comma.cs
///                        ^^^^ support.type.cs
///                            ^ punctuation.section.group.end.cs
///                             ^ punctuation.terminator.statement.cs

public record class None;
public record class Some<T>(T Value);

public union Option<T>(None, Some<T>);
/// <- storage.modifier.access.cs
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^ meta.union.cs
///    ^^^^^ keyword.declaration.union.cs
///          ^^^^^^ entity.name.union.cs
///                ^^^ meta.generic.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^ variable.parameter.type.cs
///                  ^ punctuation.definition.generic.end.cs
///                   ^^^^^^^^^^^^^^^ meta.union.parameters.cs meta.group.cs
///                   ^ punctuation.section.group.begin.cs
///                    ^^^^ support.type.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^^^ support.type.cs
///                              ^^^ meta.generic.cs
///                              ^ punctuation.definition.generic.begin.cs
///                               ^ support.type.cs
///                                ^ punctuation.definition.generic.end.cs
///                                 ^ punctuation.section.group.end.cs
///                                  ^ punctuation.terminator.statement.cs

public union OneOrMore<T>(T, IEnumerable<T>) where T : notnull
/// <- storage.modifier.access.cs
///^^^ storage.modifier.access.cs
///    ^^^^^^^^^^^^^^^^^^ meta.union.cs
///                      ^^^^^^^^^^^^^^^^^^^ meta.union.parameters.cs meta.group.cs
///                                         ^^^^^^^^^^^^^^^^^^^ meta.union.cs
///    ^^^^^ keyword.declaration.union.cs
///          ^^^^^^^^^ entity.name.union.cs
///                   ^^^ meta.generic.cs
///                   ^ punctuation.definition.generic.begin.cs
///                    ^ variable.parameter.type.cs
///                     ^ punctuation.definition.generic.end.cs
///                      ^ punctuation.section.group.begin.cs
///                       ^ support.type.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^^^^^^^^^^ support.type.cs
///                                     ^^^ meta.generic.cs
///                                     ^ punctuation.definition.generic.begin.cs
///                                      ^ support.type.cs
///                                       ^ punctuation.definition.generic.end.cs
///                                        ^ punctuation.section.group.end.cs
///                                          ^^^^^^^^^^^^^^^^^^ meta.constraints.cs
///                                          ^^^^^ storage.modifier.where.cs
///                                                ^ support.type.cs
///                                                  ^ punctuation.separator.colon.cs
///                                                    ^^^^^^^ storage.modifier.cs
{
/// <- meta.union.body.cs meta.block.cs punctuation.section.block.begin.cs

    public IEnumerable<T> AsEnumerable() => this switch
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.union.body.cs meta.block.cs
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^^^^^^^^ support.type.cs
///                   ^^^ meta.generic.cs
///                   ^ punctuation.definition.generic.begin.cs
///                    ^ support.type.cs
///                     ^ punctuation.definition.generic.end.cs
///                       ^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                   ^^ meta.method.parameters.cs meta.group.cs
///                                   ^ punctuation.section.group.begin.cs
///                                    ^ punctuation.section.group.end.cs
///                                     ^^^ meta.method.cs
///                                      ^^ keyword.declaration.function.arrow.cs
///                                        ^^^^^^^^^^^^^ meta.method.body.cs
///                                         ^^^^ variable.language.this.cs
///                                              ^^^^^^ keyword.control.conditional.switch.cs
    {
        T single => [single],
        IEnumerable<T> multiple => multiple
    };
///^^^^ meta.union.body.cs meta.block.cs
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ punctuation.terminator.statement.cs
}
/// <- meta.union.body.cs meta.block.cs punctuation.section.block.end.cs