/// SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"
using System.Text;
/// <- keyword.control.import.cs
///    ^ variable.module.cs
///         ^ punctuation.separator.module.cs
///            ^ variable.module.cs
///              ^ punctuation.definition.module.end
using static System.Math.Foo;
/// <- keyword.control.import.cs
///      ^ storage.modifier.module.cs
///                  ^ variable.module.cs
using Project = PC.MyCompany.Project;
/// <- keyword.control.import.cs
///    ^ entity.name.type
///           ^ storage.modifier.module.as
using Wrapped = PC.MyCompany.Project.Wrapper<float>;
/// <- keyword.control.import.cs
///    ^ entity.name.type
///           ^ storage.modifier.module.as
///                                            ^ support.type.cs

class Foo {

    static void UsingFont()
    {
        using (Font font3 = new Font("Arial", 10.0f))
///     ^ keyword.control.other.using.cs
///           ^ punctuation.definition.expression.other
///             ^ variable.other.type
///                       ^ keyword.operator.assignment
///                                                 ^ punctuation.definition.expression.other
        {
///     ^ punctuation.section.other
            // Use font3
            global::System.Console.WriteLine("foo");
///         ^ support.module.cs
///               ^ keyword.operator.accessor.module.cs
        }
///     ^ punctuation.section.other

        using (Font font3 = new Font("Arial", 10.0f),
///     ^ keyword.control.other.using.cs
///           ^ punctuation.definition.expression.other
///                                                 ^ punctuation.separator
            font4 = new Font("Arial", 10.0f))
///                                         ^ punctuation.definition.expression.other
        {
///     ^ punctuation.section.other
            // Use font3 and font4.
        }
///     ^ punctuation.section.other
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
///  ^ support.module.cs
///    ^ keyword.operator.accessor.module.cs
internal sealed partial class Test : global::System.Configuration.ApplicationSettingsBase {
///                                    ^ support.module.cs
///                                         ^ keyword.operator.accessor.module.cs

    private static Test defaultInstance = ((Test)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Test())));
///                                                ^ support.module.cs
///                                                      ^ keyword.operator.accessor.module.cs

    public static Test Default {
        [Tag]
///       ^ entity.name.tag
        get {
///       ^ storage.type.function.accessor.get.cs
            return defaultInstance;
        }
    }
}
