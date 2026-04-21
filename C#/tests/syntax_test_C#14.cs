// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

namespace CustomExtensionMembers;

public static class MyExtensions
{
    extension(string str)
//  ^^^^^^^^^ meta.extension.cs keyword.declaration.trait.cs
//           ^^^^^^^^^^^^ meta.extension.parameters.cs
//           ^ punctuation.section.parameters.begin.cs
//            ^^^^^^ storage.type.cs
//                   ^^^ variable.parameter.cs
//                      ^ punctuation.section.parameters.end.cs
    {
//^^ meta.extension.cs
//  ^^ meta.extension.body.cs meta.block.cs
//  ^ punctuation.section.block.begin.cs
        public int WordCount() =>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.body.cs meta.block.cs
//      ^^^^^^ storage.modifier.access.cs
//             ^^^ storage.type.cs
//                 ^^^^^^^^^ meta.method.cs entity.name.function.cs
//                          ^^ meta.method.parameters.cs
//                          ^ punctuation.section.parameters.begin.cs
//                           ^ punctuation.section.parameters.end.cs
//                            ^^^ meta.method.cs
//                             ^^ keyword.declaration.function.arrow.cs
            str.Split([' ', '.', '?'], StringSplitOptions.RemoveEmptyEntries).Length;
    }
}


public static class IntExtensions
{
    extension(int number)
    {
        public void Increment()
            => number++;
    }

    // Take note of the extra ref keyword here
    extension(ref int number)
//  ^^^^^^^^^ meta.extension.cs keyword.declaration.trait.cs
//           ^^^^^^^^^^^^^^^^ meta.extension.parameters.cs
//           ^ punctuation.section.parameters.begin.cs
//            ^^^ storage.modifier.parameter.cs
//                ^^^ storage.type.cs
//                    ^^^^^^ variable.parameter.cs
//                          ^ punctuation.section.parameters.end.cs
    {
        public void RefIncrement()
            => number++;
//^^^^^^^^^^^^ meta.extension.body.cs meta.block.cs meta.method.cs
//            ^^^^^^^^^ meta.extension.body.cs meta.block.cs meta.method.body.cs
//          ^^ keyword.declaration.function.arrow.cs
//             ^^^^^^ variable.other.cs
//                   ^^ keyword.operator.arithmetic.cs
//                     ^ punctuation.terminator.statement.cs
    }
//^^^ meta.extension.body.cs meta.block.cs
//  ^ punctuation.section.block.end.cs
}

public static class EnumerableExtensions
{
    extension<T>(IEnumerable<T> target)
//  ^^^^^^^^^^^^ meta.extension.cs
//  ^^^^^^^^^ keyword.declaration.trait.cs
//           ^^^ meta.generic.cs
//           ^ punctuation.definition.generic.begin.cs
//            ^ variable.parameter.type.cs
//             ^ punctuation.definition.generic.end.cs
//              ^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.parameters.cs
//              ^ punctuation.section.parameters.begin.cs
//               ^^^^^^^^^^^ support.type.cs
//                          ^^^ meta.generic.cs
//                          ^ punctuation.definition.generic.begin.cs
//                           ^ support.type.cs
//                            ^ punctuation.definition.generic.end.cs
//                              ^^^^^^ variable.parameter.cs
//                                    ^ punctuation.section.parameters.end.cs
        where T : IEquatable<T>
//^^^^^^ meta.extension.cs
//      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.cs meta.constraints.cs
//      ^^^^^ storage.modifier.where.cs
//            ^ support.type.cs
//              ^ punctuation.separator.type.cs
//                ^^^^^^^^^^ support.type.cs
//                          ^^^ meta.generic.cs
//                          ^ punctuation.definition.generic.begin.cs
//                           ^ support.type.cs
//                            ^ punctuation.definition.generic.end.cs
    {
//^^ meta.extension.cs meta.constraints.cs
//  ^^ meta.extension.body.cs meta.block.cs
//  ^ punctuation.section.block.begin.cs
        public bool IsEmpty() => !target.Any();
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.body.cs meta.block.cs
//                  ^^^^^^^ meta.method.cs
//                         ^^ meta.method.parameters.cs
//                           ^^^ meta.method.cs
//                              ^^^^^^^^^^^^^^ meta.method.body.cs
//      ^^^^^^ storage.modifier.access.cs
//             ^^^^ storage.type.cs
//                  ^^^^^^^ entity.name.function.cs
//                         ^^ meta.method.parameters.cs
//                         ^ punctuation.section.parameters.begin.cs
//                          ^ punctuation.section.parameters.end.cs
//                            ^^ keyword.declaration.function.arrow.cs
//                               ^ keyword.operator.logical.cs
//                                ^^^^^^ variable.other.cs
//                                      ^ punctuation.accessor.dot.cs
//                                       ^^^^^ meta.function-call.cs
//                                       ^^^ variable.function.cs
//                                          ^^ meta.group.cs
//                                          ^ punctuation.section.group.begin.cs
//                                           ^ punctuation.section.group.end.cs
//                                            ^ punctuation.terminator.statement.cs
    }
//^^^ meta.extension.body.cs meta.block.cs
//  ^ punctuation.section.block.end.cs
}
//  <- meta.class.body.cs meta.block.cs punctuation.section.block.end.cs

// <- - meta.block

public static class EnumExtensions
{
    private static Grades minimumPassingGrade = Grades.D;

    extension(Grades grade)
//  ^^^^^^^^^ meta.extension.cs keyword.declaration.trait.cs
//           ^^^^^^^^^^^^^^ meta.extension.parameters.cs
//           ^ punctuation.section.parameters.begin.cs
//            ^^^^^^ support.type.cs
//                   ^^^^^ variable.parameter.cs
//                        ^ punctuation.section.parameters.end.cs
//                         ^ meta.extension.cs
    {
//^^ meta.extension.cs
//  ^^ meta.extension.body.cs meta.block.cs
//  ^ punctuation.section.block.begin.cs
        public static Grades MinimumPassingGrade
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.body.cs meta.block.cs
//      ^^^^^^ storage.modifier.access.cs
//             ^^^^^^ storage.modifier.cs
//                    ^^^^^^ support.type.cs
//                           ^^^^^^^^^^^^^^^^^^^ meta.property.cs variable.other.member.cs
        {
            get => minimumPassingGrade;
            set => minimumPassingGrade = value;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.body.cs meta.block.cs meta.property.accessors.cs meta.block.cs
//          ^^^^^^ meta.method.cs
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.body.cs
//          ^^^ keyword.declaration.function.accessor.set.cs
//              ^^ keyword.declaration.function.arrow.cs
//                 ^^^^^^^^^^^^^^^^^^^ variable.other.cs
//                                     ^ keyword.operator.assignment.cs
//                                       ^^^^^ variable.language.cs
//                                            ^ punctuation.terminator.statement.cs
        }
//^^^^^^^ meta.extension.body.cs meta.block.cs meta.property.accessors.cs meta.block.cs
//      ^ punctuation.section.block.end.cs
//       ^ meta.extension.body.cs meta.block.cs meta.property.cs - meta.block meta.block meta.block

        public bool Passing => grade >= minimumPassingGrade;
// <- - meta.property
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.body.cs meta.block.cs
//      ^^^^^^ storage.modifier.access.cs
//             ^^^^ storage.type.cs
//                  ^^^^^^^^^^ meta.property.cs
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.property.body.cs
//                  ^^^^^^^ variable.other.member.cs
//                          ^^ keyword.declaration.function.accessor.get.cs
//                             ^^^^^ variable.other.cs
//                                   ^^ keyword.operator.comparison.cs
//                                      ^^^^^^^^^^^^^^^^^^^ variable.other.cs
//                                                         ^ punctuation.terminator.statement.cs
    }
//^^^ meta.extension.body.cs meta.block.cs
//  ^ punctuation.section.block.end.cs
}
// <- meta.class.body.cs meta.block.cs punctuation.section.block.end.cs

// ----------------------------------
// https://learn.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-14

delegate bool TryParse<T>(string text, out T result);
//^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate.cs
//^^^^^^ keyword.declaration.delegate.cs
//       ^^^^ storage.type.cs
//            ^^^^^^^^ entity.name.type.delegate.cs
//                    ^^^ meta.generic.cs
//                    ^ punctuation.definition.generic.begin.cs
//                     ^ variable.parameter.type.cs
//                      ^ meta.delegate.cs meta.generic.cs punctuation.definition.generic.end.cs
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate.parameters.cs
//                       ^ punctuation.section.parameters.begin.cs
//                        ^^^^^^ storage.type.cs
//                               ^^^^ variable.parameter.cs
//                                   ^ punctuation.separator.parameter.cs
//                                     ^^^ storage.modifier.parameter.cs
//                                         ^ support.type.cs
//                                           ^^^^^^ variable.parameter.cs
//                                                 ^ punctuation.section.parameters.end.cs
//                                                  ^ punctuation.terminator.statement.cs

TryParse<int> parse2 = (string text, out int result) => Int32.TryParse(text, out result);
//^^^^^^ support.type.cs
//      ^^^^^ meta.generic.cs
//      ^ punctuation.definition.generic.begin.cs
//       ^^^ storage.type.cs
//          ^ punctuation.definition.generic.end.cs
//            ^^^^^^ variable.other.cs
//                   ^ keyword.operator.assignment.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs meta.group.cs - meta.function meta.function
//                     ^ punctuation.section.group.begin.cs
//                      ^^^^^^ storage.type.cs
//                             ^^^^ variable.parameter.cs
//                                 ^ punctuation.separator.parameter.cs
//                                   ^^^ storage.modifier.parameter.cs
//                                       ^^^ storage.type.cs
//                                           ^^^^^^ variable.parameter.cs
//                                                 ^ punctuation.section.group.end.cs
//                                                  ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs - meta.function meta.function - meta.group
//                                                   ^^ keyword.declaration.function.arrow.cs
//                                                      ^^^^^ variable.other.cs
//                                                           ^ punctuation.accessor.dot.cs
//                                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                                                            ^^^^^^^^ variable.function.cs
//                                                                    ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs meta.group.cs - meta.function meta.function
//                                                                    ^ punctuation.section.group.begin.cs
//                                                                     ^^^^ variable.other.cs
//                                                                         ^ punctuation.separator.argument.cs
//                                                                           ^^^ storage.modifier.argument.cs
//                                                                               ^^^^^^ variable.other.cs
//                                                                                     ^ punctuation.section.group.end.cs
//                                                                                      ^ punctuation.terminator.statement.cs

TryParse<int> parse1 = (text, out result) => Int32.TryParse(text, out result);
//^^^^^^ support.type.cs
//      ^^^^^ meta.generic.cs
//      ^ punctuation.definition.generic.begin.cs
//       ^^^ storage.type.cs
//          ^ punctuation.definition.generic.end.cs
//            ^^^^^^ variable.other.cs
//                   ^ keyword.operator.assignment.cs
//                     ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs meta.group.cs - meta.function meta.function
//                     ^ punctuation.section.group.begin.cs
//                      ^^^^ variable.parameter.cs
//                          ^ punctuation.separator.parameter.cs
//                            ^^^ storage.modifier.parameter.cs
//                               ^^^^^^^^^^^ - storage
//                                ^^^^^^ variable.parameter.cs
//                                      ^ punctuation.section.group.end.cs
//                                       ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs - meta.function meta.function - meta.group
//                                        ^^ keyword.declaration.function.arrow.cs
//                                           ^^^^^ variable.other.cs
//                                                ^ punctuation.accessor.dot.cs
//                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                                                 ^^^^^^^^ variable.function.cs
//                                                         ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs meta.group.cs - meta.function meta.function
//                                                         ^ punctuation.section.group.begin.cs
//                                                          ^^^^ variable.other.cs
//                                                              ^ punctuation.separator.argument.cs
//                                                                ^^^ storage.modifier.argument.cs
//                                                                    ^^^^^^ variable.other.cs
//                                                                          ^ punctuation.section.group.end.cs
//                                                                           ^ punctuation.terminator.statement.cs

TryParse<int> parse1 = (text, out Int32 result) => Int32.TryParse(text, out result);
//^^^^^^ support.type.cs
//      ^^^^^ meta.generic.cs
//      ^ punctuation.definition.generic.begin.cs
//       ^^^ storage.type.cs
//          ^ punctuation.definition.generic.end.cs
//            ^^^^^^ variable.other.cs
//                   ^ keyword.operator.assignment.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
//                     ^ punctuation.section.group.begin.cs
//                      ^^^^ variable.parameter.cs
//                          ^ punctuation.separator.parameter.cs
//                            ^^^ storage.modifier.parameter.cs
//                               ^^^^^^^^^^^^^^ - storage
//                                ^^^^^ support.type.cs
//                                      ^^^^^^ variable.parameter.cs
//                                            ^ meta.group.cs punctuation.section.group.end.cs
//                                              ^^ keyword.declaration.function.arrow.cs
//                                                 ^^^^^ variable.other.cs
//                                                      ^ punctuation.accessor.dot.cs
//                                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                                                       ^^^^^^^^ variable.function.cs
//                                                               ^^^^^^^^^^^^^^^^^^ meta.group.cs
//                                                               ^ punctuation.section.group.begin.cs
//                                                                ^^^^ variable.other.cs
//                                                                    ^ punctuation.separator.argument.cs
//                                                                      ^^^ storage.modifier.argument.cs
//                                                                          ^^^^^^ variable.other.cs
//                                                                                ^ punctuation.section.group.end.cs
//                                                                                 ^ punctuation.terminator.statement.cs

customer?.Order = GetCurrentOrder();
//^^^^^^ variable.other.cs
//      ^^ punctuation.accessor.null-coalescing.cs
//        ^^^^^ variable.other.cs
//              ^ keyword.operator.assignment.cs
//                ^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                ^^^^^^^^^^^^^^^ variable.function.cs
//                               ^^ meta.group.cs
//                               ^ punctuation.section.group.begin.cs
//                                ^ punctuation.section.group.end.cs
//                                 ^ punctuation.terminator.statement.cs
