// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

namespace CustomExtensionMembers;

public static class MyExtensions
{
    extension(string str)
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
//  ^^^^^^^^^ keyword.declaration.trait.cs
//           ^ punctuation.section.parameters.begin.cs
//            ^^^^^^^^^^^ meta.method.parameters.cs
//            ^^^^^^ storage.type.cs
//                   ^^^ variable.parameter.cs
//                      ^ punctuation.section.parameters.end.cs
    {
//  ^ meta.block.cs punctuation.section.block.begin.cs
        public int WordCount() =>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
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
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
//  ^^^^^^^^^ keyword.declaration.trait.cs
//           ^^^^^^^^^^^^^^^^ meta.method.cs
//           ^ punctuation.section.parameters.begin.cs
//            ^^^^^^^^^^^^^^^ meta.method.parameters.cs
//            ^^^ storage.modifier.parameter.cs
//                ^^^ storage.type.cs
//                    ^^^^^^ variable.parameter.cs
//                          ^ punctuation.section.parameters.end.cs
    {
        public void RefIncrement()
            => number++;
//^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
//^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
//          ^^ keyword.declaration.function.arrow.cs
//             ^^^^^^ variable.other.cs
//                   ^^ keyword.operator.cs
//                     ^ punctuation.terminator.statement.cs
    }
}

public static class EnumerableExtensions
{
    extension<T>(IEnumerable<T> target)
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
//  ^^^^^^^^^ keyword.declaration.trait.cs
//           ^^^ meta.generic.cs
//           ^ punctuation.definition.generic.begin.cs
//            ^ support.type.cs
//             ^ punctuation.definition.generic.end.cs
//              ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
//              ^ punctuation.section.parameters.begin.cs
//               ^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
//               ^^^^^^^^^^^ support.type.cs
//                          ^^^ meta.generic.cs
//                          ^ punctuation.definition.generic.begin.cs
//                           ^ support.type.cs
//                            ^ punctuation.definition.generic.end.cs
//                              ^^^^^^ variable.parameter.cs
//                                    ^ punctuation.section.parameters.end.cs
    {
// ^^ meta.class.body.cs meta.block.cs
// ^ meta.method.cs
//  ^ meta.method.body.cs meta.block.cs punctuation.section.block.begin.cs
        public bool IsEmpty() => !target.Any();
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
//      ^^^^^^ storage.modifier.access.cs
//             ^^^^ storage.type.cs
//                  ^^^^^^^ meta.method.cs entity.name.function.cs
//                         ^^ meta.method.parameters.cs
//                         ^ punctuation.section.parameters.begin.cs
//                          ^ punctuation.section.parameters.end.cs
//                           ^^^^^^^^^^^^^^^^^ meta.method.cs
//                            ^^ keyword.declaration.function.arrow.cs
//                               ^ keyword.operator.cs
//                                ^^^^^^ variable.other.cs
//                                      ^ punctuation.accessor.dot.cs
//                                       ^^^^^ meta.function-call.cs
//                                       ^^^ variable.function.cs
//                                          ^^ meta.group.cs
//                                          ^ punctuation.section.group.begin.cs
//                                           ^ punctuation.section.group.end.cs
//                                            ^ punctuation.terminator.statement.cs
    }
// ^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
//  ^ punctuation.section.block.end.cs
}
//  <- meta.class.body.cs meta.block.cs punctuation.section.block.end.cs

// <- - meta.block

// ----------------------------------
// https://learn.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-14

delegate bool TryParse<T>(string text, out T result);
//^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate.cs
//^^^^^^ storage.type.delegate.cs
//       ^^^^ storage.type.cs
//            ^^^^^^^^ variable.other.member.delegate.cs
//                    ^^^ meta.generic.cs
//                    ^ punctuation.definition.generic.begin.cs
//                     ^ support.type.cs
//                      ^ meta.delegate.cs meta.generic.cs punctuation.definition.generic.end.cs
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate.parameters.cs
//                       ^ punctuation.section.parameters.begin.cs
//                        ^^^^^^ storage.type.cs
//                               ^^^^ variable.parameter.cs
//                                   ^ punctuation.separator.parameter.function.cs
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
//                   ^ keyword.operator.assignment.variable.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
//                     ^ punctuation.section.group.begin.cs
//                      ^^^^^^ storage.type.cs
//                             ^^^^ variable.parameter.cs
//                                 ^ punctuation.separator.parameter.function.cs
//                                   ^^^ storage.modifier.parameter.cs
//                                       ^^^ storage.type.cs
//                                           ^^^^^^ variable.parameter.cs
//                                                 ^ meta.group.cs punctuation.section.group.end.cs
//                                                   ^^ keyword.declaration.function.arrow.cs
//                                                      ^^^^^ variable.other.cs
//                                                           ^ punctuation.accessor.dot.cs
//                                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                                                            ^^^^^^^^ variable.function.cs
//                                                                    ^^^^^^^^^^^^^^^^^^ meta.group.cs
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
//                   ^ keyword.operator.assignment.variable.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs
//                     ^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
//                     ^ punctuation.section.group.begin.cs
//                      ^^^^ variable.parameter.cs
//                          ^ punctuation.separator.parameter.function.cs
//                            ^^^^ storage.modifier.parameter.cs
//                                ^^^^^^ variable.parameter.cs
//                                      ^ meta.group.cs punctuation.section.group.end.cs
//                                        ^^ keyword.declaration.function.arrow.cs
//                                           ^^^^^ variable.other.cs
//                                                ^ punctuation.accessor.dot.cs
//                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                                                 ^^^^^^^^ variable.function.cs
//                                                         ^^^^^^^^^^^^^^^^^^ meta.group.cs
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
//                   ^ keyword.operator.assignment.variable.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
//                     ^ punctuation.section.group.begin.cs
//                      ^^^^ variable.parameter.cs
//                          ^ punctuation.separator.parameter.function.cs
//                            ^^^^ storage.modifier.parameter.cs
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
