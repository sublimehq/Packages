/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// A Hello World! program in C#.
///<- comment.line
using System;
///<- keyword.control.import
///    ^ variable.namespace
///         ^ punctuation.definition.namespace.end

namespace HelloWorld
///<- storage.type.namespace
///        ^ entity.name.namespace
{
///<- punctuation.section.namespace
    class Hello
/// ^ storage.type.class
///       ^ entity.name.type
    {
/// ^ punctuation.section.class
        static void Main()
///     ^ storage.modifier
///              ^ support.type.cs
///                  ^ entity.name.function
///                      ^ punctuation.definition.parameters

        {
///     ^ punctuation.section.function
            Console.WriteLine("Hello World!");
///          ^ variable
///                ^ keyword.operator.accessor
///                      ^ variable.function
///                          ^ punctuation.definition.arguments
///                           ^ punctuation.definition.string
///                                        ^ punctuation.definition.string
///                                         ^ punctuation.definition.arguments
///                                          ^ punctuation.separator.statement
            // Keep the console window open in debug mode.
///         ^ punctuation.definition.comment
///            ^ comment.line
            Console.WriteLine ("Press any key to exit.");
///                      ^ variable.function
///                           ^ punctuation.definition.arguments
            Console.ReadKey();
        }
///     ^ punctuation.section.function
    }
/// ^ punctuation.section.class
}
///<- punctuation.section.namespace
