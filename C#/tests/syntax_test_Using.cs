/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

usi
/// <- variable.other.cs

using
/// <- meta.using.cs keyword.declaration.using.cs
///^^ meta.using.cs keyword.declaration.using.cs
using System
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ variable.namespace.cs
using System.
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ variable.namespace.cs
///         ^ punctuation.accessor.dot.cs
using System.Text;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ variable.namespace.cs
///         ^ punctuation.accessor.dot.cs
///          ^^^^ variable.namespace.cs
///              ^ punctuation.terminator.statement.cs
using static
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ storage.modifier.static.cs
using static System.Math.Foo;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ storage.modifier.static.cs
///          ^^^^^^ variable.namespace.cs
///                ^ punctuation.accessor.dot.cs
///                 ^^^^ variable.namespace.cs
///                     ^ punctuation.accessor.dot.cs
///                      ^^^ variable.namespace.cs
///                         ^ punctuation.terminator.statement.cs
using Project =
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ variable.other.import.cs
///           ^ keyword.operator.assignment.cs
using Project = PC.MyCompany.Project;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ variable.other.import.cs
///           ^ keyword.operator.assignment.cs
///             ^^ variable.namespace.cs
///               ^ punctuation.accessor.dot.cs
///                ^^^^^^^^^ variable.namespace.cs
///                         ^ punctuation.accessor.dot.cs
///                          ^^^^^^^ variable.namespace.cs
///                                 ^ punctuation.terminator.statement.cs
using Wrapped = PC.MyCompany.Project.Wrapper<float>;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ variable.other.import.cs
///           ^ keyword.operator.assignment.cs
///             ^^ variable.namespace.cs
///               ^ punctuation.accessor.dot.cs
///                ^^^^^^^^^ variable.namespace.cs
///                         ^ punctuation.accessor.dot.cs
///                          ^^^^^^^ variable.namespace.cs
///                                 ^ punctuation.accessor.dot.cs
///                                  ^^^^^^^ variable.namespace.cs
///                                         ^^^^^^^ meta.generic.cs
///                                         ^ punctuation.definition.generic.begin.cs
///                                          ^^^^^ storage.type.cs
///                                               ^ punctuation.definition.generic.end.cs
///                                                ^ punctuation.terminator.statement.cs
using col = global::System.Collections;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ variable.other.import.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^ support.namespace.global.cs
///               ^^ punctuation.accessor.double-colon.namespace.cs
///                 ^^^^^^ variable.namespace.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^^^^^^ variable.namespace.cs
///                                   ^ punctuation.terminator.statement.cs
using sys = global::System;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ variable.other.import.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^ support.namespace.global.cs
///               ^^ punctuation.accessor.double-colon.namespace.cs
///                 ^^^^^^ variable.namespace.cs
///                       ^ punctuation.terminator.statement.cs
using sys = custom::System;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ variable.other.import.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^ variable.namespace.cs
///               ^^ punctuation.accessor.double-colon.namespace.cs
///                 ^^^^^^ variable.namespace.cs
///                       ^ punctuation.terminator.statement.cs
using abc = global:test;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^ meta.using.cs
///               ^^^^^^^ - meta.using
///^^ keyword.declaration.using.cs
///   ^^^ variable.other.import.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^ variable.namespace.cs
///                ^^^^ variable.other.cs
///                    ^ punctuation.terminator.statement.cs

class Foo {

    static void UsingFont([Usage("help text")] string x)
///                        ^^^^^ variable.annotation
///                                  ^ string
///                                              ^ storage.type
///                                                   ^ variable.parameter
    {
        usingFoo = 0;
///     ^^^^^^^^ variable.other.cs - keyword

        using
///     ^^^^^ keyword.declaration.using.cs

        using var
///     ^^^^^ keyword.declaration.using.cs
///           ^^^ storage.type.variant.cs

        using var foo
///     ^^^^^ keyword.declaration.using.cs
///           ^^^ storage.type.variant.cs
///               ^^^ variable.other.cs

        using var foo, bar = true, baz = 0;
///     ^^^^^ keyword.declaration.using.cs
///           ^^^ storage.type.variant.cs
///               ^^^ variable.other.cs
///                  ^ punctuation.separator.comma.cs
///                    ^^^ variable.other.cs
///                        ^ keyword.operator.assignment.cs
///                          ^^^^ constant.language.boolean.true.cs
///                              ^ punctuation.separator.comma.cs
///                                ^^^ variable.other.cs
///                                    ^ keyword.operator.assignment.cs
///                                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                       ^ punctuation.terminator.statement.cs

        using (var foo, bar = true, baz = 0)
///     ^^^^^ keyword.declaration.using.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^ storage.type.variant.cs
///                ^^^ variable.other.cs
///                   ^ punctuation.separator.comma.cs
///                     ^^^ variable.other.cs
///                         ^ keyword.operator.assignment.cs
///                           ^^^^ constant.language.boolean.true.cs
///                               ^ punctuation.separator.comma.cs
///                                 ^^^ variable.other.cs
///                                     ^ keyword.operator.assignment.cs
///                                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                        ^ punctuation.section.group.end.cs

        using (Font font3 = new Font("Arial", 10.0f))
///     ^^^^^ keyword.declaration.using.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ support.type.cs
///                 ^^^^^ variable.other.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                                                 ^ punctuation.section.group.end.cs
        {
///     ^ meta.method meta.block meta.block punctuation.section.block.begin
            // Use font3
            global::System.Console.WriteLine("foo");
///         ^^^^^^ support.namespace
///               ^^ punctuation.accessor.double-colon
///                       ^ punctuation.accessor.dot
///                        ^^^^^^^ variable.other
///                               ^ punctuation.accessor.dot
///                                ^^^^^^^^^ variable.function
        }
///     ^ meta.method meta.block meta.block punctuation.section.block.end

        using (Font font3 = new Font("Arial", 10.0f),
///     ^^^^^ keyword.declaration.using.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ support.type.cs
///                 ^^^^^ variable.other.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                                                 ^ punctuation.separator.comma.cs
            font4 = new Font("Arial", 10.0f))
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^^^^^ variable.other.cs
///               ^ keyword.operator.assignment.cs
///                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                                         ^ punctuation.section.group.end.cs
        {
///     ^ meta.method meta.block meta.block punctuation.section.block.begin
            // Use font3 and font4.
        }
///     ^ meta.method meta.block meta.block punctuation.section.block.end
    }

    public void dcsrmm(double[] val, int offsetval, int[] idx, int offsetidx, int[] pntrb, int offsetpntrb, double[] b, int offsetb, int ldb, double beta, double[] c, int offsetc, int ldc)
    {
        fixed (Double* bp = &b[offsetb])
///     ^^^^^ keyword.declaration.fixed.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^ support.type.cs
///                  ^ keyword.operator.pointer.cs
///                    ^^ variable.other.cs
///                       ^ keyword.operator.assignment.cs
///                         ^ keyword.operator.pointer.cs
///                          ^ variable.other.cs
///                           ^^^^^^^^^ meta.brackets.cs
///                           ^ punctuation.section.brackets.begin.cs
///                            ^^^^^^^ variable.other.cs
///                                   ^ punctuation.section.brackets.end.cs
///                                    ^ punctuation.section.group.end.cs

        fixed (var cp = &c[offsetc])
///     ^^^^^ keyword.declaration.fixed.cs
///           ^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^ storage.type.variant.cs
///                ^^ variable.other.cs
///                   ^ keyword.operator.assignment.cs
///                     ^ keyword.operator.pointer.cs
///                      ^ variable.other.cs
///                       ^^^^^^^^^ meta.brackets.cs
///                       ^ punctuation.section.brackets.begin.cs
///                        ^^^^^^^ variable.other.cs
///                               ^ punctuation.section.brackets.end.cs
///                                ^ punctuation.section.group.end.cs

        fixed (double* valp = &val[offsetval], bp = &b[offsetb], cp = &c[offsetc])
///     ^^^^^ keyword.declaration.fixed.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^ storage.type.cs
///                  ^ keyword.operator.pointer.cs
///                    ^^^^ variable.other.cs
///                         ^ keyword.operator.assignment.cs
///                           ^ keyword.operator.pointer.cs
///                            ^^^ variable.other.cs
///                               ^^^^^^^^^^^ meta.brackets.cs
///                               ^ punctuation.section.brackets.begin.cs
///                                ^^^^^^^^^ variable.other.cs
///                                         ^ punctuation.section.brackets.end.cs
///                                          ^ punctuation.separator.comma.cs
///                                            ^^ variable.other.cs
///                                               ^ keyword.operator.assignment.cs
///                                                 ^ keyword.operator.pointer.cs
///                                                  ^ variable.other.cs
///                                                   ^^^^^^^^^ meta.brackets.cs
///                                                   ^ punctuation.section.brackets.begin.cs
///                                                    ^^^^^^^ variable.other.cs
///                                                           ^ punctuation.section.brackets.end.cs
///                                                            ^ punctuation.separator.comma.cs
///                                                              ^^ variable.other.cs
///                                                                 ^ keyword.operator.assignment.cs
///                                                                   ^ keyword.operator.pointer.cs
///                                                                    ^ variable.other.cs
///                                                                     ^^^^^^^^^ meta.brackets.cs
///                                                                     ^ punctuation.section.brackets.begin.cs
///                                                                      ^^^^^^^ variable.other.cs
///                                                                             ^ punctuation.section.brackets.end.cs
///                                                                              ^ punctuation.section.group.end.cs
        {
            cblas_dcsrmm(valp, idxp, pntrbp, bp, ldb, beta, cp, ldc);
        }
    }
}

class Bar {
    public void Main ()
    {
        using(var reader = SomeCodeThatGetsAnIDisposable())
///     ^^^^^ keyword.declaration.using.cs
///          ^ punctuation.section.group.begin.cs
///           ^^^ storage.type.variant.cs
///                                                       ^ punctuation.section.group.end.cs
        {
            foreach(var line in reader)
            {
                DoStuff(line);
            }
        }
        using (var reader = SomeCodeThatGetsAnIDisposable())
///     ^^^^^ keyword.declaration.using.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^ storage.type.variant.cs
///                                                        ^ punctuation.section.group.end.cs
        {
            foreach (var line in reader)
            {
                DoStuff(line);
            }
        }
    }
}
