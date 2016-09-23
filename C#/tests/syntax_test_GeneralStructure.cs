/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// A skeleton of a C# program
using System;

namespace YourNamespace
///<- storage.type.namespace
///        ^ entity.name.namespace
{
///<- punctuation.section.namespace
    class YourClass
/// ^ storage.type.class
///        ^ entity.name.type.class
    {
        Int x;
///      ^ variable.other.type.return.cs
///         ^ entity.name.variable.cs
        Int x0 = 0, y0 = 0;
///      ^ variable.other.type.return.cs
///         ^ entity.name.variable.cs
///                  ^ entity.name.variable.cs

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
///                                              ^ keyword.operator.reflection.cs
///                                                      ^ keyword.operator
///                                                               ^ keyword.operator.reflection.cs
        public bool IsZero => IsConst(Numeric<Type>.Zero);
///                  ^ entity.name.variable.property.cs
///                        ^ storage.type.function.accessor.get.cs
///                         ^ storage.type.function.accessor.get.cs

        public bool InlineProperty {get; private set; } = false;
///                                 ^^^ storage.type.function.accessor.get
///                                      ^^^^^^^ storage.modifier.access
///                                              ^^^ storage.type.function.accessor.set
///                                                     ^ keyword.operator.assignment
///                                                       ^^^^^ constant.language

        public new bool NewMethod() => false;
///            ^^^ storage.modifier
    }

    struct YourStruct
/// ^ storage.type.class.struct
///         ^ entity.name.type.struct
    {
    }

    interface IYourInterface
/// ^ storage.type.class.interface
///           ^ entity.name.type.interface
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
///        ^ entity.name.type.enum
    {
        A, B
///     ^ constant.numeric.enum
    };
//   ^ punctuation.terminator
    namespace YourNestedNamespace
///     ^ storage.type.namespace
///             ^ entity.name.namespace
    {
        struct YourStruct
///      ^ storage.type.class.struct
///              ^ entity.name.type.struct
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
///   ^ storage.type.class
///          ^ entity.name.type.class
    {
        static void Main(string[] args)
///                      ^^^^^^   support.type.cs
///                            ^^ support.type.cs
        {
            //Your program starts here...
            var f = 1e-3f;
///                  ^ constant.numeric.cs
///                     ^ storage.type.numeric.cs
            var l = 11545L;
///                  ^ constant.numeric.cs
///                      ^ storage.type.numeric.cs
            var d = 11545D;
///                  ^ constant.numeric.cs
///                      ^ storage.type.numeric.cs
            int x = 1, y = 0;
///          ^ support.type.cs
///               ^ keyword.operator.assignment
            value = x;
            const int x = 1;
///         ^ storage.modifier
///               ^ support.type
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
///                    ^^^^ variable.other.type
///                         ^^^^^ support.type

        IEnumerator<int> IEnumerable<int>.GetEnumerator()
///                         ^^^^ entity.other.inherited-class
///                                       ^^^^ entity.name.function
        {
            return new MyCustomIterator(this);
        }

        IEnumerable<int> Traverse()
        {
            yield return 7;
///         ^ keyword.control.flow.return
///                ^ keyword.control.flow.return
            yield return 42;
            yield return 314;
        }

        List<int>.this[int key]{ get; set; }
///               ^^^^ variable.language
///                        ^^^ variable.parameter


        /////////////////////////////
        // methods with attributes //
        /////////////////////////////

        [Route("api/helloworld")]
///      ^^^^^ entity.name.tag
///           ^ punctuation.definition.arguments
///            ^^^^^^^^^^^ string
        string Get([FromUri] string name) => $"Hello {name}";
///                 ^^^^^^^ entity.name.tag
///                           ^^^^^   support.type.cs

        // examples from: https://msdn.microsoft.com/en-us/library/mt653979.aspx
        // applies to method
        [method: SomeAttr]
///      ^^^^^^  storage.modifier.target
///              ^^^^^^  entity.name.tag
        int Method2() { return 0; }

        // applies to return value
        [return: SomeAttr]
        int Method3() { return 0; }

        int Method4 => 5;

        delegate int del(int i);

        void CodeContainingLambdas(){

            del square = x => x * x;
///         ^^^ variable.other.type
///              ^^^ entity.name.variable
///                    ^ keyword.operator.assignment
///                        ^^ keyword.operator
            Func<float, float> times2 = x => x + x;
///         ^^^ variable.other.type
///                            ^^^ entity.name.variable
///                                   ^ keyword.operator.assignment
///                                       ^^ keyword.operator

        }

        void CodeContainingConstructors(){
            var array = new []{ "foo" };
///                           ^ punctuation.definition.array.begin
///                                   ^ punctuation.definition.array.end
            var arrayWithType = new string<Foo>[] { "foobar" };
///                                               ^ punctuation.definition.array.begin
///                                                          ^ punctuation.definition.array.end
            var list = new List<Foo> { "coconuts", "horses" };
///                                  ^ punctuation.definition.array.begin
///                                                         ^ punctuation.definition.array.end
            var dictionary = new Dictionary<string, string>
            {
///         ^ punctuation.definition.array.begin
                ["woman"] = "floating",
                ["floating"] = "wood"
            };
///         ^ punctuation.definition.array.end

            var anonymous = new {
///                             ^ punctuation.definition.class.begin
                Wood = "burning",
                Burning = "sorcerer"
            };
///         ^ punctuation.definition.class.end

            var anonArray = new[]
            {
                new { name = "apple", diam = 4 },
///                 ^ punctuation.definition.class.begin
///                                            ^ punctuation.definition.class.end
                new { name = "grape", diam = 1 }
///                 ^ punctuation.definition.class.begin
///                                            ^ punctuation.definition.class.end
            };
///         ^ punctuation.definition.array.end
        }
///     ^ punctuation.section.function

        #region Empty region 01 // some comment
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
///       ^^  storage.type.section
///             ^^^^^^^^^^^^^^^ entity.name.section.cs
///                             ^^^^^^^ comment

        #endregion Empty region 01 // another comment
///       ^^  storage.type.section
///                ^^^^^^^^^^^^^^^ variable.other.section.cs
///                                ^^^^^^^ comment
    }
/// ^ punctuation.section.class
}
///<- punctuation.section.namespace

