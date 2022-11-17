/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

#define DEBUG
///     ^^ entity.name.constant
#define MYTEST
#undef DEBUG

using System;
#pragma warning disable warning-list
/// ^ keyword.other.preprocessor
///       ^ keyword.other.preprocessor
#pragma warning restore warning-list
#pragma checksum "file.cs" "{3673e4ca-6098-4ec1-890f-8fceb2a794a2}" "{012345678AB}" // New checksum
///       ^ keyword.other.preprocessor
///                 ^ string.quoted.double
///                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal constant.numeric.value

#region
/// ^^ meta.preprocessor.region keyword.other.preprocessor meta.fold.begin
#region MyClass definition
/// ^^ meta.preprocessor.region keyword.other.preprocessor - meta.fold
///     ^^ meta.preprocessor.region entity.name.section meta.fold.begin
public class MyClass
{
    static void Main()
    {
#if (DEBUG && !MYTEST)
        Console.WriteLine("DEBUG is defined");
#elif (!DEBUG && MYTEST)
        Console.WriteLine("MYTEST is defined");
#elif (DEBUG && MYTEST)
///          ^^ keyword.operator
        Console.WriteLine("DEBUG and MYTEST are defined");
#else
        Console.WriteLine("DEBUG and MYTEST are not defined");
#endif

#   if DEBUG
/// ^^ meta.preprocessor keyword.control.preprocessor
///    ^^ constant.other.flag
#error DEBUG is defined // comment
/// ^^ meta.preprocessor keyword.other.preprocessor
///    ^^ string.unquoted
///                             ^^ string.unquoted
///                     ^ - comment

#warning Deprecated code in this method.
#endif

#line 200 "Special"
/// ^ meta.preprocessor keyword.other.preprocessor
///   ^^^ constant.numeric
///       ^^^^^^^^^ string
        int i;    // CS0168 on line 200
        int j;    // CS0168 on line 201
#line default
///   ^ meta.preprocessor keyword.other.preprocessor
        char c;   // CS0168 on line 31
        float f;  // CS0168 on line 32
#line hidden // numbering not affected
///   ^ meta.preprocessor keyword.other.preprocessor
        string s;
        double d; // CS0168 on line 35
    }
}
#endregion a / b
/// ^^ keyword.other.preprocessor
///        ^^^^^ variable.other.section
///             ^ meta.preprocessor.region meta.fold.end
#endregion
/// ^^ keyword.other.preprocessor
///       ^ meta.preprocessor.region meta.fold.end

#nullable enable
/// ^^ meta.preprocessor keyword.other.preprocessor
///       ^^ meta.preprocessor keyword.other.preprocessor

#nullable disable
/// ^^ meta.preprocessor keyword.other.preprocessor
///       ^^ meta.preprocessor keyword.other.preprocessor

#nullable restore
/// ^^ meta.preprocessor keyword.other.preprocessor
///       ^^ meta.preprocessor keyword.other.preprocessor

#nullable enable annotations
/// ^^ meta.preprocessor keyword.other.preprocessor
///       ^^ meta.preprocessor keyword.other.preprocessor
///              ^^ meta.preprocessor keyword.other.preprocessor

#nullable disable warnings
/// ^^ meta.preprocessor keyword.other.preprocessor
///       ^^ meta.preprocessor keyword.other.preprocessor
///               ^^ meta.preprocessor keyword.other.preprocessor
