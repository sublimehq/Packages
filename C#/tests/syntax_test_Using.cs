/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"
using System.Text;
/// <- keyword.control.import.cs
///    ^ variable.namespace.cs
///         ^ punctuation.separator.namespace.cs
///            ^ variable.namespace.cs
///              ^ punctuation.terminator.cs
using static System.Math.Foo;
/// <- keyword.control.import.cs
///      ^ keyword.control.import.cs
///                  ^ variable.namespace.cs
using Project = PC.MyCompany.Project;
/// <- keyword.control.import.cs
///    ^ entity.name.type
///           ^ keyword.operator.assignment.cs
using Wrapped = PC.MyCompany.Project.Wrapper<float>;
/// <- keyword.control.import.cs
///    ^ entity.name.type
///           ^ keyword.operator.assignment.cs
///                                            ^ support.type.cs

class Foo {

    static void UsingFont([Usage("help text")] string x)
///                        ^^^^^ entity.name.tag
///                                  ^ string
///                                              ^ support.type
///                                                   ^ variable.parameter
    {
        using (Font font3 = new Font("Arial", 10.0f))
///     ^ keyword.control.trycatch.using.cs
///           ^ punctuation.definition.expression.trycatch
///             ^ variable.other.type
///                       ^ keyword.operator.assignment
///                                                 ^ punctuation.definition.expression.trycatch
        {
///     ^ punctuation.section.trycatch
            // Use font3
            global::System.Console.WriteLine("foo");
///         ^ support.namespace.cs
///               ^ punctuation.accessor.double-colon
        }
///     ^ punctuation.section.trycatch

        using (Font font3 = new Font("Arial", 10.0f),
///     ^ keyword.control.trycatch.using.cs
///           ^ punctuation.definition.expression.trycatch
///                                                 ^ punctuation.separator
            font4 = new Font("Arial", 10.0f))
///                                         ^ punctuation.definition.expression.trycatch
        {
///     ^ punctuation.section.trycatch
            // Use font3 and font4.
        }
///     ^ punctuation.section.trycatch
    }

    public void dcsrmm(double[] val, int offsetval, int[] indx, int offsetindx, int[] pntrb, int offsetpntrb, double[] b, int offsetb, int ldb, double beta, double[] c, int offsetc, int ldc)
    {
        fixed (Double* bp = &b[offsetb])
///      ^ keyword.control.other.fixed
///           ^ punctuation.definition.expression.other
///              ^ variable.other.type
///                  ^ support.type
///                                    ^ punctuation.definition.expression.other
        fixed (var cp = &c[offsetc])
///      ^ keyword.control.other.fixed
///             ^ storage.type.variable
        fixed (double* valp = &val[offsetval], bp = &b[offsetb], cp = &c[offsetc])
///      ^ keyword.control.other.fixed
///           ^ punctuation.definition.expression.other
///              ^ support.type
///                                          ^ punctuation.separator.variables
///                                                                              ^ punctuation.definition.expression.other
        {
            cblas_dcsrmm(valp, indxp, pntrbp, bp, ldb, beta, cp, ldc);
        }
    }
}


[global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
///  ^ support.namespace.cs
///    ^^ punctuation.accessor.double-colon
internal sealed partial class Test : global::System.Configuration.ApplicationSettingsBase {
///                                    ^ support.namespace.cs
///                                        ^^ punctuation.accessor.double-colon

    private static Test defaultInstance = ((Test)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Test())));
///                                                ^ support.namespace.cs
///                                                     ^^ punctuation.accessor.double-colon

    public static Test Default {
        [Tag]
///       ^ entity.name.tag
        get {
///       ^ storage.type.function.accessor.get.cs
            return defaultInstance;
        }
    }
}
