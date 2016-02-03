//* SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"

// A Hello World! program in C#.
//*<- comment.line
using System;

namespace HelloWorld
{
    /// <summary>
//*  ^ punctuation.definition.comment.documentation.cs
//*    ^ comment.block.documentation
//*     ^ punctuation.definition.tag.begin
//*      ^ entity.name.tag.begin
//*             ^ punctuation.definition.tag.end
    /// This class is testing comments
//*  ^ comment.block.documentation
    /// </summary>
//*       ^ entity.name.tag.end
    /// <see href="http://foo.com">Reference</see>
//*     ^ punctuation.definition.tag.begin
//*       ^ entity.name.tag
//*           ^ variable.parameter
//*              ^ punctuation.separator.argument.value
//*                               ^ punctuation.definition.tag.end
    class Hello
    {
        /// <summary>
        /// Computes matrix-matrix product of a sparse matrix stored in the CSC format.
        /// </summary>
        void dcscmm(Transpose TransA, int m, int n, int k,
            double alpha,
            double[] val, int offsetval,
            int[] indx, int offsetindx,
            int[] pntrb, int offsetpntrb,
            //int[] pntre, int offsetpntre,
            double[] b, int offsetb, int ldb,
            double beta,
            double[] c, int offsetc, int ldc);
    }
}
