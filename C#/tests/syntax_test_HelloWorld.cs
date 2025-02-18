/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// A Hello World! program in C#.
///<- comment.line
using System;
///<- keyword.control.import
///    ^ meta.path
///         ^ punctuation.terminator.statement.cs

namespace HelloWorld
///^^^^^^^^^^^^^^^^^ meta.namespace - meta.path
///<- keyword.declaration.namespace
///        ^ entity.name.namespace
{
///<- meta.namespace meta.block punctuation.section.block.begin
    class Hello
/// ^ keyword.declaration.class
///       ^ entity.name.class
    {
/// ^ punctuation.section.block.begin
        static void Main()
///     ^ storage.modifier
///              ^ storage.type
///                  ^ entity.name.function
///                      ^ punctuation.section.parameters.end

        {
///     ^ punctuation.section.block.begin
            Console.WriteLine("Hello World!");
///                ^ punctuation.accessor.dot
///                      ^ variable.function
///                          ^ punctuation.section.group.begin
///                           ^ punctuation.definition.string
///                                        ^ punctuation.definition.string
///                                         ^ punctuation.section.group.end
///                                          ^ punctuation.terminator
            // Keep the console window open in debug mode.
///         ^ punctuation.definition.comment
///            ^ comment.line
            Console.WriteLine ("Press any key to exit.");
///                      ^ variable.function
///                           ^ punctuation.section.group.begin
            Console.ReadKey();
        }
///     ^ punctuation.section.block.end
    }
/// ^ punctuation.section.block.end
}
///<- meta.namespace meta.block punctuation.section.block.end
