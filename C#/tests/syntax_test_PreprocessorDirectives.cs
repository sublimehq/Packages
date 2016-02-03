/// SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"

// preprocessor_if.cs
#define DEBUG
#define MYTEST
#undef DEBUG

using System;
#pragma pragma-name pragma-arguments
#pragma warning disable warning-list
#pragma warning restore warning-list
#pragma checksum "file.cs" "{3673e4ca-6098-4ec1-890f-8fceb2a794a2}" "{012345678AB}" // New checksum

#region MyClass definition
public class MyClass
{
    static void Main()
    {
#if (DEBUG && !MYTEST)
        Console.WriteLine("DEBUG is defined");
#elif (!DEBUG && MYTEST)
        Console.WriteLine("MYTEST is defined");
#elif (DEBUG && MYTEST)
        Console.WriteLine("DEBUG and MYTEST are defined");
#else
        Console.WriteLine("DEBUG and MYTEST are not defined");
#endif

#if DEBUG
#error DEBUG is defined
#warning Deprecated code in this method.
#endif

#line 200 "Special"
        int i;    // CS0168 on line 200
        int j;    // CS0168 on line 201
#line default
        char c;   // CS0168 on line 31
        float f;  // CS0168 on line 32
#line hidden // numbering not affected
        string s;
        double d; // CS0168 on line 35
    }
}
#endregion
