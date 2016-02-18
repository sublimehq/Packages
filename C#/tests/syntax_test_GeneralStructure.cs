/// SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"

// A skeleton of a C# program
using System;

namespace YourNamespace
///<- storage.type.module
///        ^ entity.name.module
{
///<- punctuation.section.module
    class YourClass
/// ^ storage.type.class.class
///        ^ entity.name.class.class
    {
        Int x;
///      ^ variable.other.type.return.cs
///         ^ entity.name.variable.cs

        public Int YourProperty {
///             ^ variable.other.type.return.cs
///                  ^ entity.name.variable.property.cs
            get {return x;}
///          ^ storage.type.function.accessor.get.cs
            set {x = value;}
///          ^ storage.type.function.accessor.set.cs
///                    ^ variable.language
        }

        public bool IsConst(Type value) => this is Const && (this as Const).Value.Equals(value);
///                                     ^ punctuation.section.function.begin.cs
///                                              ^ keyword.operator.reflexion.cs
///                                                      ^ keyword.operator
///                                                               ^ keyword.operator.reflexion.cs
        public bool IsZero => IsConst(Numeric<Type>.Zero);
///                  ^ entity.name.variable.property.cs
///                        ^ storage.type.function.accessor.get.cs
///                         ^ storage.type.function.accessor.get.cs
    }

    struct YourStruct
/// ^ storage.type.class.struct
///         ^ entity.name.class.struct
    {
    }

    interface IYourInterface
/// ^ storage.type.class.interface
///           ^ entity.name.class.interface
    {
    }

    delegate int YourDelegate(int a);
///  ^ storage.type.type.delegate
///           ^ support.type
///                  ^ entity.name.function.type
///                            ^ support.type
///                               ^ variable.parameter

    enum YourEnum
/// ^ storage.type.class.enum
///        ^ entity.name.class.enum
    {
        A, B
///     ^ constant.numeric.enum
    };
//   ^ punctuation.terminator
    namespace YourNestedNamespace
///     ^ storage.type.module
///             ^ entity.name.module
    {
        struct YourStruct
///      ^ storage.type.class.struct
///              ^ entity.name.class.struct
        {
        }
    }

    class InheritingSomething: IYourInterface
    {
    }

    class WithGeneric<T1, T2> where T1: IEnumerable<T2> {}
///                  ^ punctuation.definition.parameters.type
///                     ^ punctuation.separator.type
///                         ^ punctuation.definition.parameters.type
///                             ^ storage.modifier
///                                         ^ entity.other.inherited-class

    class YourMainClass
///   ^ storage.type.class.class
///          ^ entity.name.class.class
    {
        static void Main(string[] args)
        {
            //Your program starts here...
            var f = 1e-3f;
///                  ^ constant.numeric.cs
///                     ^ constant.numeric.cs
            var l = 11545L;
///                  ^ constant.numeric.cs
///                      ^ constant.numeric.cs
            var d = 11545D;
///                  ^ constant.numeric.cs
///                      ^ constant.numeric.cs
            int x = 1, y = 0f;
///          ^ support.type.cs
///               ^ keyword.operator.assignment
            value = x;
            if(x == 1){

            }

            switche = 1;
///         ^ variable.other.cs
            switch(e){
///         ^ keyword.control.conditional
            }
        }
///     ^ punctuation.section.function

        private void MethodWith1Default(int max, string path = null) { }
///        ^ storage.modifier
///                                              ^ support.type.cs

        internal void MethodWith2Default(int max = -1, string path = null){ }
///        ^ storage.modifier
///                                                     ^ support.type.cs

        partial void MethodWithTypeParam<T>(){}
///        ^ storage.modifier
///                                     ^ punctuation.definition.parameters.type
///                                      ^ variable.parameter.type.cs

        List<List<List<List<float>>>>  reallyNestedTypes;
    }
/// ^ punctuation.section.class
}
///<- punctuation.section.module

