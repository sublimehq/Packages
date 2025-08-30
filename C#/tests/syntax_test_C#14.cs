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
