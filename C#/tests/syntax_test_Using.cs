/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"
using System.Text;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^^^^^ meta.path.cs
///         ^ punctuation.accessor.dot.cs
///              ^ punctuation.terminator.statement.cs
using static System.Math.Foo;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ storage.modifier.static.cs
///          ^^^^^^^^^^^^^^^ meta.path.cs
///                ^ punctuation.accessor.dot.cs
///                     ^ punctuation.accessor.dot.cs
///                         ^ punctuation.terminator.statement.cs
using Project = PC.MyCompany.Project;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ meta.path.cs
///           ^ keyword.operator.assignment.cs
///             ^^^^^^^^^^^^^^^^^^^^ meta.path.cs
///               ^ punctuation.accessor.dot.cs
///                         ^ punctuation.accessor.dot.cs
///                                 ^ punctuation.terminator.statement.cs
using Wrapped = PC.MyCompany.Project.Wrapper<float>;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^^ meta.path.cs
///           ^ keyword.operator.assignment.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.cs
///               ^ punctuation.accessor.dot.cs
///                         ^ punctuation.accessor.dot.cs
///                                 ^ punctuation.accessor.dot.cs
///                                         ^^^^^^^ meta.generic.cs
///                                         ^ punctuation.definition.generic.begin.cs
///                                          ^^^^^ storage.type.cs
///                                               ^ punctuation.definition.generic.end.cs
///                                                ^ punctuation.terminator.statement.cs
using col = global::System.Collections;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ meta.path.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.cs
///         ^^^^^^ support.namespace.global.cs
///               ^^ punctuation.accessor.double-colon.namespace.cs
///                       ^ punctuation.accessor.dot.cs
///                                   ^ punctuation.terminator.statement.cs
using sys = global::System;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ meta.path.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^^^^^^^^^ meta.path.cs
///         ^^^^^^ support.namespace.global.cs
///               ^^ punctuation.accessor.double-colon.namespace.cs
///                       ^ punctuation.terminator.statement.cs
using sys = custom::System;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ meta.path.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^^^^^^^^^ meta.path.cs
///         ^^^^^^ variable.namespace.cs
///               ^^ punctuation.accessor.double-colon.namespace.cs
///                       ^ punctuation.terminator.statement.cs
using abc = global:test;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^^^^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^ meta.path.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^ meta.path.cs
///               ^^^^^ invalid.illegal.expected-namespace.cs
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

        using (Font font3 = new Font("Arial", 10.0f))
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs
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
///     ^^^^^^ meta.using.cs - meta.group
///     ^^^^^ keyword.declaration.using.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ support.type.cs
///                 ^^^^^ variable.other.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///                                                 ^ punctuation.separator.variables.cs
            font4 = new Font("Arial", 10.0f))
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.using.cs meta.group.cs
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
///      ^ keyword.control.other.fixed
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///           ^ punctuation.section.group.begin
///              ^ support.type
///                  ^ keyword.operator.pointer
///                                    ^ punctuation.section.group.end

        fixed (var cp = &c[offsetc])
///      ^ keyword.control.other.fixed
///           ^^^^^^^^^^^^^^^^^^^^^^ meta.group
///           ^ punctuation.section.group.begin
///             ^ storage.type
///                                ^ punctuation.section.group.end

        fixed (double* valp = &val[offsetval], bp = &b[offsetb], cp = &c[offsetc])
///      ^ keyword.control.other.fixed
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///           ^ punctuation.section.group.begin
///              ^ storage.type
///                                          ^ punctuation.separator.variables
///                                                                              ^ punctuation.section.group.end
        {
            cblas_dcsrmm(valp, idxp, pntrbp, bp, ldb, beta, cp, ldc);
        }
    }
}


[global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.cs
///^^^^^^ meta.path.cs
///^^^^ support.namespace.global.cs
///    ^^ punctuation.accessor.double-colon.namespace.cs
///      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.annotation.cs
///            ^ punctuation.accessor.dot.cs
///                    ^ punctuation.accessor.dot.cs
///                                     ^ punctuation.accessor.dot.cs
///                                                                ^^ meta.group.cs
///                                                                ^ punctuation.section.group.begin.cs
///                                                                 ^ punctuation.section.group.end.cs
///                                                                  ^ punctuation.definition.annotation.end.cs
internal sealed partial class Test : sys::Configuration.ApplicationSettingsBase {
///                                  ^^^ meta.path
///                                     ^^ punctuation.accessor.double-colon
///                                       ^^^^^^^^^^^^^ meta.path
///                                                    ^ punctuation.accessor.dot
///                                                     ^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class

    private static Test defaultInstance = ((Test)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Test())));
///                                       ^ meta.group.cs - meta.group meta.group
///                                        ^^^^^^ meta.group.cs meta.cast.cs meta.group.cs
///                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs meta.group.cs - meta.group meta.group meta.group - meta.cast
///                                                                                                                ^^^^^^^^^^^^ meta.group.cs meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                                                                                                                            ^ meta.group.cs meta.group.cs - meta.group meta.group meta.group
///                                                                                                                             ^ meta.group.cs - meta.group meta.group
///                                                                                                                              ^ - meta.group
///                                       ^ punctuation.section.group.begin.cs
///                                        ^ punctuation.section.group.begin.cs
///                                         ^^^^ support.type.cs
///                                             ^ punctuation.section.group.end.cs
///                                              ^ punctuation.section.group.begin.cs
///                                               ^^^^^^^^ meta.path.cs
///                                               ^^^^^^ support.namespace.global.cs
///                                                     ^^ punctuation.accessor.double-colon.namespace.cs
///                                                       ^^^^^^ variable.other.cs
///                                                             ^ punctuation.accessor.dot.cs
///                                                              ^^^^^^^^^^^^^ variable.other.cs
///                                                                           ^ punctuation.accessor.dot.cs
///                                                                            ^^^^^^^^^^^^^^^^^^^^^^^ variable.other.cs
///                                                                                                   ^ punctuation.accessor.dot.cs
///                                                                                                    ^^^^^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                                                                                ^ punctuation.section.group.begin.cs
///                                                                                                                 ^^^^^^^^^^ meta.instantiation.cs
///                                                                                                                 ^^^ keyword.operator.new.cs
///                                                                                                                    ^^^^^ meta.function-call.identifier.cs
///                                                                                                                     ^^^^ support.type.cs
///                                                                                                                         ^^ meta.function-call.arguments.cs meta.group.cs
///                                                                                                                         ^ punctuation.section.group.begin.cs
///                                                                                                                          ^^^^ punctuation.section.group.end.cs
///                                                                                                                              ^ punctuation.terminator.statement.cs

    public static Test Default {
        [Tag]
///     ^^^^^ meta.annotation
///       ^ variable.annotation
        get {
///       ^ keyword.declaration.function.accessor.get
            return defaultInstance;
        }
    }
}

class Bar {
    public void Main ()
    {
        using(var reader = SomeCodeThatGetsAnIDisposable())
///     ^^^^^ keyword.declaration.using.cs
///          ^ punctuation.section.group.begin.cs
///           ^^^ storage.type.cs
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
///            ^^^ storage.type.cs
///                                                        ^ punctuation.section.group.end.cs
        {
            foreach (var line in reader)
            {
                DoStuff(line);
            }
        }
    }
}
