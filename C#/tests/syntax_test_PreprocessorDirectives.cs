/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

#def
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs
 /// <- meta.preprocessor.cs - keyword - punctuation
///^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor - keyword - punctuation

#define DEBUG
///^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor - meta.fold
///^^^^ keyword.control.directive.define.cs
///     ^^^^^ entity.name.constant.preprocessor.cs
#define MYTEST
///^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^ keyword.control.directive.define.cs
///     ^^^^^^ entity.name.constant.preprocessor.cs
#undef DEBUG    // comment
///^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor
///^^^ keyword.control.directive.undefine.cs
///    ^^^^^ entity.name.constant.preprocessor.cs
///         ^^^^ - comment - meta.preprocessor
///             ^^^^^^^^^^^ comment.line.double-slash.cs
///             ^^ punctuation.definition.comment.cs

using System;
#pragma warning disable warning-list
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^ keyword.control.directive.pragma.cs
///     ^^^^^^^ entity.name.pragma.warning.cs
///             ^^^^^^^ keyword.control.directive.other.cs
///                     ^^^^^^^^^^^^ meta.string.cs string.unquoted.cs

#pragma warning restore CS8618
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^ keyword.control.directive.pragma.cs
///     ^^^^^^^ entity.name.pragma.warning.cs
///             ^^^^^^^ keyword.control.directive.other.cs
///                     ^^^^^^ meta.string.cs string.unquoted.cs

#pragma checksum "file.cs" "{3673e4ca-6098-4ec1-890f-8fceb2a794a2}" "{012345678AB}" // New checksum
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^ keyword.control.directive.pragma.cs
///     ^^^^^^^^ entity.name.pragma.checksum.cs
///              ^^^^^^^^^ meta.string.cs string.quoted.double.cs
///              ^ punctuation.definition.string.begin.cs
///                      ^ punctuation.definition.string.end.cs
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.hash.cs string.quoted.double.cs
///                        ^^ punctuation.definition.string.begin.cs
///                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.cs constant.numeric.value.cs
///                                                              ^^ punctuation.definition.string.end.cs
///                                                                 ^^^^^^^^^^^^^^^ meta.string.hash.cs string.quoted.double.cs
///                                                                 ^^ punctuation.definition.string.begin.cs
///                                                                   ^^^^^^^^^^^ meta.number.integer.hexadecimal.cs constant.numeric.value.cs
///                                                                              ^^ punctuation.definition.string.end.cs
///                                                                                ^ - comment - meta.preprocessor
///                                                                                 ^^^^^^^^^^^^^^^^ comment.line.double-slash.cs
///                                                                                 ^^ punctuation.definition.comment.cs

#pragma unknown value
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs
///^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
///^^^^ keyword.control.directive.pragma.cs
///     ^^^^^^^ entity.name.pragma.other.cs
///             ^^^^^ meta.string.cs string.unquoted.cs

#region
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^ meta.preprocessor.cs keyword.control.directive.region.cs - meta.fold
///    ^ meta.preprocessor.cs meta.fold.block.begin.cs - keyword
#region MyClass definition
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^ keyword.control.directive.region.cs
///     ^^^^^^^^^^^^^^^^^^ entity.name.section.cs
///                       ^ meta.preprocessor.cs meta.fold.block.begin.cs - entity
public class MyClass
{
    static void Main()
    {
#if (DEBUG && !MYTEST)
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
        Console.WriteLine("DEBUG is defined");
#elif (!DEBUG && MYTEST)
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
        Console.WriteLine("MYTEST is defined");
#elif (DEBUG && MYTEST)
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
///          ^^ keyword.operator
        Console.WriteLine("DEBUG and MYTEST are defined");
#else
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
        Console.WriteLine("DEBUG and MYTEST are not defined");
#endif
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
///^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^ keyword.control.directive.conditional.end.cs

#   if DEBUG
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
/// ^^ keyword.control.directive.conditional.if.cs
///    ^^^^^ constant.other.preprocessor.cs
///         ^ meta.preprocessor.cs meta.fold.block.begin.cs
#error DEBUG is defined // comment
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^  keyword.control.directive.error.cs
///    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.unquoted.cs - comment

#warning Deprecated code in this method.
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^ keyword.control.directive.warning.cs
///      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.cs string.unquoted.cs
#endif
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
///^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^ keyword.control.directive.conditional.end.cs

#line 200 "Special"
/// <- punctuation.definition.preprocessor.cs
///^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^ keyword.control.directive.line.cs
///   ^^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///       ^^^^^^^^^ meta.string.cs string.quoted.double.cs
///       ^ punctuation.definition.string.begin.cs
///               ^ punctuation.definition.string.end.cs
        int i;    // CS0168 on line 200
        int j;    // CS0168 on line 201
#line default
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^ keyword.control.directive.line.cs
///   ^^^^^^^ constant.language.preprocessor.cs
        char c;   // CS0168 on line 31
        float f;  // CS0168 on line 32
#line hidden // numbering not affected
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^ keyword.control.directive.line.cs
///   ^^^^^^ constant.language.preprocessor.cs
///         ^ - comment - meta.preprocessor
///          ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.cs - meta.preprocessor
        string s;
        double d; // CS0168 on line 35
    }
}
#endregion a / b
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
///^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^^^ keyword.control.directive.endregion.cs
///       ^ - keyword - variable
///        ^^^^^ variable.other.section.cs
///             ^ - variable
#endregion
/// <- meta.preprocessor.cs meta.fold.block.end.cs punctuation.definition.preprocessor.cs - keyword
///^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^^^ keyword.control.directive.endregion.cs

#nullable enable
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^ meta.preprocessor.cs
///^^^^^^ keyword.control.directive.nullable.cs
///       ^^^^^^ keyword.control.directive.other.cs

#nullable disable // comment
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^^ keyword.control.directive.nullable.cs
///       ^^^^^^^ keyword.control.directive.other.cs
///              ^ - comment - meta.preprocessor
///               ^^^^^^^^^^^ comment.line.double-slash.cs - meta.preprocessor
///               ^^ punctuation.definition.comment.cs

#nullable restore
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^^ keyword.control.directive.nullable.cs
///       ^^^^^^^ keyword.control.directive.other.cs

#nullable enable annotations
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^^ keyword.control.directive.nullable.cs
///       ^^^^^^ keyword.control.directive.other.cs
///              ^^^^^^^^^^^ constant.language.messages.cs

#nullable disable warnings
/// <- meta.preprocessor.cs punctuation.definition.preprocessor.cs - meta.fold - keyword
///^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs - meta.preprocessor meta.preprocessor  - meta.fold
///^^^^^^ keyword.control.directive.nullable.cs
///       ^^^^^^^ keyword.control.directive.other.cs
///               ^^^^^^^^ constant.language.messages.cs
