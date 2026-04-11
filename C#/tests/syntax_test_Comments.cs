//* SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// A Hello World! program in C#.
//*<- comment.line
using System;

namespace HelloWorld
{
    /// <summary>
//* <- comment.line.documentation
//* ^^^ punctuation.definition.comment.documentation
//* ^^^^^^^^^^^^^^ comment.line.documentation
//*     ^^^^^^^^^ meta.tag.xml
//*     ^ punctuation.definition.tag.begin
//*      ^^^^^^^ entity.name.tag.begin
//*             ^ punctuation.definition.tag.end
    /// This class is testing comments
//* <- comment.line.documentation
//*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation
    /// </summary>
//* <- comment.line.documentation
//*^^^^^^^^^^^^^^^^ comment.line.documentation
//*     ^^^^^^^^^^ meta.tag.xml
//*     ^^ punctuation.definition.tag.begin
//*       ^^^^^^^ entity.name.tag.end
//*              ^ punctuation.definition.tag.end
    /// <see href="http://foo.com">Reference</see>
//* <- comment.line.documentation
//*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation
//*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xml
//*     ^ punctuation.definition.tag.begin
//*      ^^^ entity.name.tag
//*          ^^^^ entity.other.attribute-name
//*              ^ punctuation.separator.key-value
//*               ^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
//*               ^ punctuation.definition.string.begin
//*                              ^ punctuation.definition.string.end
//*                               ^ punctuation.definition.tag.end
//*                                         ^^^^^^ meta.tag.xml
//*                                         ^^ punctuation.definition.tag.begin
//*                                              ^ punctuation.definition.tag.end
    /// <see
    ///    href="http://foo.com">Reference</see>
//* <- comment.line.documentation
//*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation
//*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xml
//* ^^^ punctuation.definition.comment.documentation
//*        ^^^^ entity.other.attribute-name
//*            ^ punctuation.separator.key-value
//*             ^^^^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
//*             ^ punctuation.definition.string.begin
//*                            ^ punctuation.definition.string.end
//*                             ^ punctuation.definition.tag.end
//*                                       ^^^^^^ meta.tag.xml
//*                                       ^^ punctuation.definition.tag.begin
//*                                            ^ punctuation.definition.tag.end

    /// ftp://
//*     ^^^^^^ - markup.underline

    /// http://
//*     ^^^^^^^ - markup.underline

    /// https://
//*     ^^^^^^^^ - markup.underline

    /// ftp://s
//*     ^^^^^^^ markup.underline.link.cs

    /// ftp://server/
//*     ^^^^^^^^^^^^^ markup.underline.link.cs

    /// ftp://server:21
//*     ^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// https://todo.com/
//*     ^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// https://todo.com:
//*     ^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// https://todo.com:443#
//*     ^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// https://todo.com:443#anchor?
//*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// https://todo.com:443#anchor?foo=bar&
//*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// https://to-do%204.com:443/api#anchor?foo=bar&arg=no_ne
//*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /// git+https://hoster.com/user/repo
//*     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.cs

    /**
        *
//*     ^ meta.namespace meta.block comment.block punctuation.definition.comment
    */
    class Hello
    {
        /// <summary>
        /// Computes matrix-matrix product of a sparse matrix stored in the CSC format.
        /// </summary>
        void dcscmm(Transpose TransA, int m, int n, int k,
            double alpha,
            double[] val, int offsetval,
            int[] idx, int offsetidx,
            int[] pntrb, int offsetpntrb,
            //int[] pntre, int offsetpntre,
            double[] b, int offsetb, int ldb,
            double beta,
            double[] c, int offsetc, int ldc);
    }
}
