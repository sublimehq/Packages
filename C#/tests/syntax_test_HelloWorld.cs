/// SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"

// A Hello World! program in C#.
///<- comment.line
using System;
///<- keyword.control.import
///    ^ variable.module
///         ^ punctuation.definition.module.end

namespace HelloWorld
///<- storage.type.module
///        ^ entity.name.module
{
///<- punctuation.section.module
    class Hello
/// ^ storage.type.class
///       ^ entity.name.class
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
///                                          ^ punctuation.terminator.statement
            // Keep the console window open in debug mode.
///         ^ punctuation.definition.comment
///            ^ comment.line
            Console.WriteLine("Press any key to exit.");
            Console.ReadKey();
        }
///     ^ punctuation.section.function
    }
/// ^ punctuation.section.class
}
///<- punctuation.section.module
