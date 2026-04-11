/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

// A skeleton of a C# program
using System;
/// <- meta.using.cs keyword.declaration.using.cs
///^^^^^^^^^ meta.using.cs
///^^ keyword.declaration.using.cs
///   ^^^^^^ meta.path.cs
///         ^ punctuation.terminator.statement.cs - meta.using

namespace YourNamespace
///^^^^^^^^^^^^^^^^^^^^^ meta.namespace.cs - meta.path
///<- keyword.declaration.namespace
///^^^^^^ keyword.declaration.namespace.cs
///       ^^^^^^^^^^^^^ entity.name.namespace.cs
{
///<- punctuation.section.block.begin

    abstract
/// ^^^^^^^^ storage.modifier.cs

    new
/// ^^^ storage.modifier.cs

    partial
/// ^^^^^^^ storage.modifier.cs

    readonly
/// ^^^^^^^^ storage.modifier.cs

    required
/// ^^^^^^^^ storage.modifier.cs

    sealed
/// ^^^^^^ storage.modifier.cs

    static
/// ^^^^^^ storage.modifier.cs

    unsafe
/// ^^^^^^ storage.modifier.cs

    public
/// ^^^^^^ storage.modifier.access.cs

    protected
/// ^^^^^^^^^ storage.modifier.access.cs

    private
/// ^^^^^^^ storage.modifier.access.cs

    internal
/// ^^^^^^^^ storage.modifier.access.cs

    class
/// ^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs

;   class YourClass
/// ^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs

    class YourClass :
///^^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^ meta.class.base.cs
///                 ^ punctuation.separator.type.cs

;   class YourClass : any
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^^^^^ meta.class.base.cs
///                 ^ punctuation.separator.type.cs
///                   ^^^ entity.other.inherited-class.cs

;   class YourClass : char
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^^^^^^ meta.class.base.cs
///                 ^ punctuation.separator.type.cs
///                   ^^^^ storage.type.cs

;   class YourClass : Foo, Bar  {}
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^^^^^^^^^^^ meta.class.base.cs
///                 ^ punctuation.separator.type.cs
///                   ^^^ entity.other.inherited-class.cs
///                      ^ punctuation.separator.inherited-class.cs
///                        ^^^ entity.other.inherited-class.cs
///                             ^^ meta.class.body.cs meta.block.cs
///                             ^ punctuation.section.block.begin.cs
///                              ^ punctuation.section.block.end.cs

;   class YourClass<T1, T2> : Foo<T1>, Bar<T2> {}
/// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                ^^^^^^^^ meta.generic.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^^ variable.parameter.type.cs
///                   ^ punctuation.separator.type.cs
///                     ^^ variable.parameter.type.cs
///                       ^ punctuation.definition.generic.end.cs
///                         ^^^^^^^^^^^^^^^^^^^ meta.class.base.cs
///                         ^ punctuation.separator.type.cs
///                           ^^^ entity.other.inherited-class.cs
///                              ^^^^ meta.generic.cs
///                              ^ punctuation.definition.generic.begin.cs
///                               ^^ support.type.cs
///                                 ^ punctuation.definition.generic.end.cs
///                                  ^ punctuation.separator.inherited-class.cs
///                                    ^^^ entity.other.inherited-class.cs
///                                       ^^^^ meta.generic.cs
///                                       ^ punctuation.definition.generic.begin.cs
///                                        ^^ support.type.cs
///                                          ^ punctuation.definition.generic.end.cs
///                                            ^^ meta.class.body.cs meta.block.cs
///                                            ^ punctuation.section.block.begin.cs
///                                             ^ punctuation.section.block.end.cs

;   class YourClass<T1, T2>
        where T1: class
///^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
///     ^^^^^^^^^^^^^^^^ meta.constraints.cs
///     ^^^^^ storage.modifier.where.cs
///           ^^ support.type.cs
///             ^ punctuation.separator.type.cs
///               ^^^^^ storage.type.cs
        where T1: struct
///^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs meta.constraints.cs
///     ^^^^^ storage.modifier.where.cs
///           ^^ support.type.cs
///             ^ punctuation.separator.type.cs
///               ^^^^^^ storage.type.cs
        where T2: Printable, IKeyProvider<T1>, new()
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs meta.constraints.cs
///     ^^^^^ storage.modifier.where.cs
///           ^^ support.type.cs
///             ^ punctuation.separator.type.cs
///               ^^^^^^^^^ support.type.cs
///                        ^ punctuation.separator.types.cs
///                          ^^^^^^^^^^^^ support.type.cs
///                                      ^^^^ meta.generic.cs
///                                      ^ punctuation.definition.generic.begin.cs
///                                       ^^ support.type.cs
///                                         ^ punctuation.definition.generic.end.cs
///                                          ^ punctuation.separator.types.cs
///                                            ^^^^^ meta.constructor.cs
///                                            ^^^ keyword.operator.new.cs
///                                               ^^ meta.group.cs
///                                               ^ punctuation.section.group.begin.cs
///                                                ^ punctuation.section.group.end.cs

    class YourClass<[attr] T1[], [attr] T2[]> where T1: IEnumerable<[attr] T2[]> {
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^^^^^^ meta.annotation.cs
///                 ^ punctuation.definition.annotation.begin.cs
///                  ^^^^ variable.annotation.cs
///                      ^ punctuation.definition.annotation.end.cs
///                        ^^ variable.parameter.type.cs
///                          ^ meta.brackets.cs punctuation.section.brackets.begin.cs
///                           ^ meta.brackets.cs punctuation.section.brackets.end.cs
///                            ^ punctuation.separator.type.cs
///                              ^^^^^^ meta.annotation.cs
///                              ^ punctuation.definition.annotation.begin.cs
///                               ^^^^ variable.annotation.cs
///                                   ^ punctuation.definition.annotation.end.cs
///                                     ^^ variable.parameter.type.cs
///                                       ^ meta.brackets.cs punctuation.section.brackets.begin.cs
///                                        ^ meta.brackets.cs punctuation.section.brackets.end.cs
///                                         ^ punctuation.definition.generic.end.cs
///                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constraints.cs
///                                           ^^^^^ storage.modifier.where.cs
///                                                 ^^ support.type.cs
///                                                   ^ punctuation.separator.type.cs
///                                                     ^^^^^^^^^^^ support.type.cs
///                                                                ^^^^^^^^^^^^^ meta.generic.cs
///                                                                ^ punctuation.definition.generic.begin.cs
///                                                                 ^^^^^^ meta.annotation.cs
///                                                                 ^ punctuation.definition.annotation.begin.cs
///                                                                  ^^^^ variable.annotation.cs
///                                                                      ^ punctuation.definition.annotation.end.cs
///                                                                        ^^ support.type.cs
///                                                                          ^^ meta.brackets.cs
///                                                                          ^ punctuation.section.brackets.begin.cs
///                                                                           ^ punctuation.section.brackets.end.cs
///                                                                            ^ punctuation.definition.generic.end.cs
///                                                                              ^^ meta.class.body.cs meta.block.cs
///                                                                              ^ punctuation.section.block.begin.cs

    }
///^^ meta.class.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs

    class YourClass
/// ^ keyword.declaration.class
///        ^ entity.name.class
    {
        Int;
///     ^^^ support.type.cs
///        ^ punctuation.terminator.statement.cs

        Int x;
///     ^^^ support.type
///         ^ variable.other.member
        Int x0 = 0, y0 = 0;
///      ^ support.type
///         ^ variable.other.member
///            ^ keyword.operator.assignment
///               ^ punctuation.separator
///                  ^ variable.other.member
///                    ^ keyword.operator.assignment
        string[][] test = new[] { new[] { "hello", "world" }, new[] { "foo", "bar" }};
///     ^^^^^^ storage.type
///           ^ punctuation.section.brackets.begin
///            ^ punctuation.section.brackets.end
///             ^ punctuation.section.brackets.begin
///              ^ punctuation.section.brackets.end
///                ^^^^ variable.other.member
///                     ^ keyword.operator.assignment

        Some.Thing sumthin = new();  // #4494
///     ^^^^ support.type.cs
///         ^ punctuation.accessor.dot.cs
///          ^^^^^ support.type.cs
///                ^^^^^^^ variable.other.member.cs

        [ServiceBehavior(Namespace = "http://test/", InstanceContextMode = InstanceContextMode.PerCall)]
///                      ^ variable.parameter
///                                ^ keyword.operator.assignment
///                                  ^^^^^^^^^^^^^^ string.quoted.double
///                                                ^ punctuation.separator
///                                                  ^ variable.parameter
///                                                                      ^ keyword.operator.assignment
///                                                                        ^ - variable.parameter
        public Int YourProperty {
///     ^ storage.modifier
///            ^^^ support.type
///                  ^ variable.other.member
///                             ^ meta.property punctuation.section.block.begin
            get {return x;}
///         ^^^^^^^^^^^^^^^ meta.property meta.method
///          ^ keyword.declaration.function.accessor.get
///             ^^^^^^^^^^^ meta.property meta.method.body meta.block
///             ^ punctuation.section.block.begin
///                      ^ punctuation.terminator
///                       ^ punctuation.section.block.end
            set {x = value;}
///         ^^^^^^^^^^^^^^^^ meta.property meta.method
///          ^ keyword.declaration.function.accessor.set
///             ^^^^^^^^^^^^ meta.property meta.method.body meta.block
///             ^ punctuation.section.block.begin
///              ^ variable.other
///                    ^ variable.language
///                       ^ punctuation.terminator
///                        ^ punctuation.section.block.end
        }
///     ^ meta.property punctuation.section.block.end

        public bool IsConst(Type value) => this is Const && (this as Const).Value.Equals(value);
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.method
///                 ^^^^^^^ entity.name.function
///                        ^^^^^^^^^^^^ meta.method.parameters
///                        ^ punctuation.section.parameters.begin
///                         ^^^^ support.type
///                              ^^^^^ variable.parameter
///                                   ^ punctuation.section.parameters.end
///                                     ^^ keyword.declaration.function.arrow.cs
///                                        ^^^^ variable.language.this
///                                             ^^ keyword.operator.reflection
///                                                ^^^^^ support.type
///                                                      ^^ keyword.operator.logical.cs
///                                                         ^^^^^^^^^^^^^^^ meta.group
///                                                         ^ punctuation.section.group.begin
///                                                          ^^^^ variable.language.this
///                                                               ^^ keyword.operator.reflection
///                                                                  ^^^^^ support.type
///                                                                       ^ punctuation.section.group.end
///                                                                        ^ punctuation.accessor
///                                                                              ^ punctuation.accessor
///                                                                               ^^^^^^^^^^^^^ meta.function-call
///                                                                               ^^^^^^ variable.function
///                                                                                     ^^^^^^^ meta.group
///                                                                                     ^ punctuation.section.group.begin
///                                                                                      ^^^^^ variable.language
///                                                                                           ^ punctuation.section.group.end
///                                                                                            ^ punctuation.terminator
        // see: https://github.com/sublimehq/Packages/issues/4491
        internal static void SetFrom(this   s8[]   A,   int   I,  params);
///     ^^^^^^^^ storage.modifier.access.cs
///              ^^^^^^ storage.modifier.cs
///                     ^^^^ storage.type.cs
///                          ^^^^^^^ meta.method.cs entity.name.function.cs
///                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
///                                 ^ punctuation.section.parameters.begin.cs
///                                  ^^^^ storage.modifier.parameter.cs
///                                         ^^ support.type.cs
///                                           ^^ meta.brackets.cs
///                                           ^ punctuation.section.brackets.begin.cs
///                                            ^ punctuation.section.brackets.end.cs
///                                                ^ variable.parameter.cs
///                                                 ^ punctuation.separator.parameter.function.cs
///                                                     ^^^ storage.type.cs
///                                                           ^ variable.parameter.cs
///                                                            ^ punctuation.separator.parameter.function.cs
///                                                               ^^^^^^ storage.modifier.parameter.cs
///                                                                     ^ punctuation.section.parameters.end.cs
///                                                                      ^ meta.method.cs punctuation.terminator.statement.cs

        public bool IsZero => IsConst(Numeric<Type>.Zero);
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.property
///                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                  ^ variable.other.member
///                        ^^ keyword.declaration.function.accessor.get
///                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
///                                   ^^^^^^^ support.type
///                                          ^^^^^^ meta.generic
///                                          ^ punctuation.definition.generic.begin
///                                           ^^^^ support.type
///                                               ^ punctuation.definition.generic.end

        public bool InlineProperty {get; private set; } = false;
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.property
///                 ^^^^^^^^^^^^^^ variable.other.member
///                                ^^^^^^^^^^^^^^^^^^^^ meta.property meta.block
///                                 ^^^ keyword.declaration.function.accessor.get
///                                      ^^^^^^^ storage.modifier.access
///                                              ^^^ keyword.declaration.function.accessor.set
///                                                     ^ keyword.operator.assignment
///                                                       ^^^^^ constant.language

        public new bool NewMethod() => false;
///            ^^^ storage.modifier
///                ^^^^ storage.type
///                     ^^^^^^^^^^^^^^^^^^^^ meta.method
///                     ^^^^^^^^^ entity.name.function
///                              ^^ meta.method.parameters
///                                 ^^ keyword.declaration.function.arrow.cs
///                                    ^^^^^ constant.language
    }

    struct
/// ^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs

;   struct YourStruct
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs

;   struct YourStruct :
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^ meta.struct.base.cs
///                   ^ punctuation.separator.type.cs

;   struct YourStruct : any
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.type.cs
///                     ^^^ entity.other.inherited-class.cs

;   struct YourStruct : char
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.type.cs
///                     ^^^^ storage.type.cs

;   struct YourStruct : nint
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.type.cs
///                     ^^^^ storage.type.cs

;   struct YourStruct : Foo, Bar  {}
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.type.cs
///                     ^^^ entity.other.inherited-class.cs
///                        ^ punctuation.separator.inherited-class.cs
///                          ^^^ entity.other.inherited-class.cs
///                               ^^ meta.struct.body.cs meta.block.cs
///                               ^ punctuation.section.block.begin.cs
///                                ^ punctuation.section.block.end.cs

    struct YourStruct
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
    {
///^^ meta.struct
//  ^ meta.block punctuation.section.block.begin
    }
///^^ meta.struct meta.block
//  ^ punctuation.section.block.end

    interface
/// ^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs

;   interface IInterface
/// ^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs
///           ^^^^^^^^^^ entity.name.interface.cs

;   interface IInterface :
/// ^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs
///           ^^^^^^^^^^ entity.name.interface.cs
///                      ^^ meta.interface.base.cs
///                      ^ punctuation.separator.type.cs

;   partial interface IInterface : IBase1, IBase2
/// ^^^^^^^ storage.modifier.cs
///         ^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
///         ^^^^^^^^^ keyword.declaration.interface.cs
///                   ^^^^^^^^^^ entity.name.interface.cs
///                              ^^^^^^^^^^^^^^^^^ meta.interface.base.cs
///                              ^ punctuation.separator.type.cs
///                                ^^^^^^ entity.other.inherited-class.cs
///                                      ^ punctuation.separator.inherited-class.cs
///                                        ^^^^^^ entity.other.inherited-class.cs

;   interface IInterface<in T1, [attr] out T2> : IBase1<T1>, IBase2<T2> where T1 : class, IBase2<T2> where T2 : unmanaged
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs
///           ^^^^^^^^^^ entity.name.interface.cs
///                     ^^^^^^^^^^^^^^^^^^^^^^ meta.generic.cs
///                     ^ punctuation.definition.generic.begin.cs
///                      ^^ storage.modifier.cs
///                         ^^ variable.parameter.type.cs
///                           ^ punctuation.separator.type.cs
///                             ^^^^^^ meta.annotation.cs
///                             ^ punctuation.definition.annotation.begin.cs
///                              ^^^^ variable.annotation.cs
///                                  ^ punctuation.definition.annotation.end.cs
///                                    ^^^ storage.modifier.cs
///                                        ^^ variable.parameter.type.cs
///                                          ^ punctuation.definition.generic.end.cs
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.base.cs
///                                            ^ punctuation.separator.type.cs
///                                              ^^^^^^ entity.other.inherited-class.cs
///                                                    ^^^^ meta.generic.cs
///                                                    ^ punctuation.definition.generic.begin.cs
///                                                     ^^ support.type.cs
///                                                       ^ punctuation.definition.generic.end.cs
///                                                        ^ punctuation.separator.inherited-class.cs
///                                                          ^^^^^^ entity.other.inherited-class.cs
///                                                                ^^^^ meta.generic.cs
///                                                                ^ punctuation.definition.generic.begin.cs
///                                                                 ^^ support.type.cs
///                                                                   ^ punctuation.definition.generic.end.cs
///                                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs meta.constraints.cs
///                                                                     ^^^^^ storage.modifier.where.cs
///                                                                           ^^ support.type.cs
///                                                                              ^ punctuation.separator.type.cs
///                                                                                ^^^^^ storage.type.cs
///                                                                                     ^ punctuation.separator.types.cs
///                                                                                       ^^^^^^ support.type.cs
///                                                                                             ^^^^ meta.generic.cs
///                                                                                             ^ punctuation.definition.generic.begin.cs
///                                                                                              ^^ support.type.cs
///                                                                                                ^ punctuation.definition.generic.end.cs
///                                                                                                  ^^^^^ storage.modifier.where.cs
///                                                                                                        ^^ support.type.cs
///                                                                                                           ^ punctuation.separator.type.cs
///                                                                                                             ^^^^^^^^^ storage.type.cs

;   interface IInterface : nint
/// ^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs
///           ^^^^^^^^^^ entity.name.interface.cs
///                      ^^^^^^^ meta.interface.base.cs
///                      ^ punctuation.separator.type.cs
///                        ^^^^ storage.type.cs

;   interface IYourInterface
/// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface
/// ^ keyword.declaration.interface
///           ^ entity.name.interface
    {
///^^ meta.interface
//  ^ meta.block punctuation.section.block.begin
    }
///^^ meta.interface meta.block
//  ^ punctuation.section.block.end

    delegate FooBar YourDelegate(int a);
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate
///  ^ keyword.declaration.delegate
///           ^ support.type
///                  ^ entity.name.type.delegate
///                             ^^^^^^^ meta.delegate.parameters
///                              ^ storage.type
///                                  ^ variable.parameter
///                                    ^ punctuation.terminator

    public delegate FooBar YourDelegate (int a);
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate
///        ^^^^^^^^ keyword.declaration.delegate
///                 ^^^^^^ support.type
///                        ^^^^^^^^^^^^ entity.name.type.delegate
///                                     ^^^^^^^ meta.delegate.parameters
///                                     ^ punctuation.section.parameters.begin
///                                      ^^^ storage.type
///                                          ^ variable.parameter
///                                           ^ punctuation.section.parameters.end
///                                            ^ punctuation.terminator

    enum
/// ^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs

    enum YourEnum
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs

    enum YourEnum :
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^ meta.enum.base.cs
///               ^ punctuation.separator.type.cs

    enum YourEnum : ResolvesToInt
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^^^^^^^^^^^ meta.enum.base.cs
///               ^ punctuation.separator.type.cs
///                 ^^^^^^^^^^^^^ support.type.cs

    enum YourEnum : char
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^^ meta.enum.base.cs
///               ^ punctuation.separator.type.cs
///                 ^^^^ invalid.illegal.type.cs

    enum YourEnum : nint
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^^ meta.enum.base.cs
///               ^ punctuation.separator.type.cs
///                 ^^^^ storage.type.cs

    enum YourEnum : int {}
///^^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^ meta.enum.base.cs
///                    ^ meta.enum.cs
///               ^ punctuation.separator.type.cs
///                 ^^^ storage.type.cs
///                     ^^ meta.enum.body.cs meta.block.cs
///                     ^ punctuation.section.block.begin.cs
///                      ^ punctuation.section.block.end.cs

    enum YourEnum
/// ^^^^^^^^^^^^^ meta.enum
/// ^ keyword.declaration.enum
///        ^ entity.name.enum
    {
///^^ meta.enum
/// ^ meta.block punctuation.section.block.begin
/// ^ - meta.enum meta.enum
        A, B
///     ^ entity.name.constant
    };
///^^ meta.enum meta.block
/// ^ punctuation.section.block.end
///  ^ punctuation.terminator

    public enum Things : sbyte
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^^^^^^^^^ meta.enum.cs
///        ^^^^ keyword.declaration.enum.cs
///             ^^^^^^ entity.name.enum.cs
///                    ^^^^^^^ meta.enum.base.cs
///                    ^ punctuation.separator.type.cs
///                      ^^^^^ storage.type.cs
    {
        [Stuff("1")]
///^^^^^^^^^^^^^^^^^^ meta.enum.body.cs meta.block.cs
///     ^^^^^^^^^^^^ meta.annotation.cs
///     ^ punctuation.definition.annotation.begin.cs
///                ^ punctuation.definition.annotation.end.cs
        Item1 = 0,
///^^^^^^^^^^^^^^^^ meta.enum.body.cs meta.block.cs
///     ^^^^^ entity.name.constant.cs
///           ^ keyword.operator.assignment.cs
///             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^ punctuation.separator.enum.cs
        Item2,
///^^^^^^^^^^^^ meta.enum.body.cs meta.block.cs
///     ^^^^^ entity.name.constant.cs
///          ^ punctuation.separator.enum.cs
        [Stuff]
///^^^^^^^^^^^^^ meta.enum.body.cs meta.block.cs
///     ^^^^^^^ meta.annotation.cs
///     ^ punctuation.definition.annotation.begin.cs
///      ^^^^^ variable.annotation.cs
///           ^ punctuation.definition.annotation.end.cs
        Item3
///^^^^^^^^^^^ meta.enum.body.cs meta.block.cs
///     ^^^^^ entity.name.constant.cs
    }
///^^ meta.enum.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs

    namespace YourNestedNamespace
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace meta.namespace
///     ^ keyword.declaration.namespace
///             ^ entity.name.namespace
    {
///^^ meta.namespace
/// ^ meta.block punctuation.section.block.begin
        struct YourStruct
/// ^^^^^^^^^^^^^^^^^^^^^ meta.namespace
///     ^^^^^^^^^^^^^^^^^ meta.struct
///      ^ keyword.declaration.struct
///              ^ entity.name.struct
        {
///     ^ meta.struct meta.block punctuation.section.block.begin
        }
///     ^ meta.struct meta.block punctuation.section.block.end
    }
/// ^ meta.namespace meta.block meta.namespace meta.block punctuation.section.block.end

    class InheritingSomething: IYourInterface
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
/// ^ keyword.declaration.class
///       ^ entity.name.class
///                          ^ punctuation.separator
///                            ^ entity.other.inherited-class
    {
///^^ meta.class
/// ^ meta.block punctuation.section.block.begin
    }
///^^ meta.class meta.block
/// ^ punctuation.section.block.end

namespace TestNamespace . Test
///^^^^^^^ meta.namespace.body.cs meta.namespace.cs - meta.path
///       ^^^^^^^^^^^^^^^^^^^^ meta.namespace.body.cs meta.namespace.cs meta.path.cs
///                           ^ meta.namespace.body.cs meta.namespace.cs - meta.path
///<- keyword.declaration.namespace
///^^^^^^ keyword.declaration.namespace.cs
///       ^^^^^^^^^^^^^ variable.namespace.cs
///                     ^ punctuation.accessor.dot.cs
///                       ^^^^ entity.name.namespace.cs
{
/// <- meta.namespace.body.cs meta.namespace.body.cs meta.block.cs punctuation.section.block.begin.cs

    using NodeName = SomeNamespace.SomeClass;

    public class Derived : Base
    {
        public Derived(DateTime exportDate) : base(exportDate) {
///            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///            ^^^^^^^ entity.name.function.constructor
///                                         ^^^^^^^^^^^^^^^^^^ meta.method.constructor
///                                           ^^^^ variable.language.super
///                                               ^^^^^^^^^^^^ meta.group
            if (true)
///         ^ keyword.control
///            ^^^^^^ meta.group
///            ^ punctuation.section.group.begin
///                 ^ punctuation.section.group.end
                a = 5;
///                 ^ constant.numeric

            if (false) {
///         ^ keyword.control
///            ^^^^^^^ meta.group
///            ^ punctuation.section.group.begin
///                  ^ punctuation.section.group.end
///                    ^ meta.method meta.block meta.block punctuation.section.block.begin

            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end

            if (false) {
///         ^ keyword.control
///            ^^^^^^^ meta.group
///            ^ punctuation.section.group.begin
///                  ^ punctuation.section.group.end
///                    ^ meta.method meta.block meta.block punctuation.section.block.begin

            } else {
///         ^ meta.method meta.block meta.block punctuation.section.block.end
///           ^ keyword.control
///                ^ meta.method meta.block meta.block punctuation.section.block.begin

            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end

            switch (foo) {
///         ^^^^^^ keyword.control.conditional.switch
///                ^^^^^ meta.group
///                ^ punctuation.section.group.begin
///                 ^^^ variable.other
///                    ^ punctuation.section.group.end
///                      ^ meta.method meta.block meta.block punctuation.section.block.begin
                case 1:
///             ^ keyword.control
///                  ^ constant.numeric
///                   ^ punctuation.separator
                    do_something();
///                 ^ variable.function
                    break;
///                 ^ keyword.control
                case BLBodyBattleLibrary.ContextType.TapUp:
///             ^^^^ keyword.control.conditional.case
///                  ^^^^^^^^^^^^^^^^^^^ variable.other
///                                     ^ punctuation.accessor.dot
///                                      ^^^^^^^^^^^ variable.other
///                                                 ^ punctuation.accessor.dot
///                                                  ^^^^^ constant.other
///                                                       ^ punctuation.separator.case-statement
                case BindingFlags.Static:
///             ^^^^ keyword.control.conditional.case
///                  ^^^^^^^^^^^^ variable.other
///                              ^ punctuation.accessor.dot
///                               ^^^^^^ constant.other
///                                     ^ punctuation.separator.case-statement
                case test:
///             ^^^^ keyword.control.conditional.case
///                  ^^^^ constant.other
///                      ^ punctuation.separator.case-statement
                case this.test;
///             ^^^^ keyword.control.conditional.case
///                  ^^^^ variable.language.this
///                      ^ punctuation.accessor.dot
                case 1*2:
///             ^^^^ keyword.control.conditional.case
///                  ^ constant.numeric
///                   ^ keyword.operator
///                    ^ constant.numeric
///                     ^ punctuation.separator.case-statement
                case bar("hello"):
///             ^^^^ keyword.control.conditional.case
///                  ^^^ variable.function
///                     ^ punctuation.section.group.begin
///                      ^^^^^^^ string.quoted.double
///                             ^ punctuation.section.group.end
///                              ^ punctuation.separator.case-statement
                    break;
                case abc.def:
///             ^^^^ keyword.control.conditional.case
///                  ^^^ variable.other
///                     ^ punctuation.accessor.dot
///                      ^^^ constant.other
///                         ^ punctuation.separator.case-statement
                default:
///             ^ keyword.control
///                    ^ punctuation.separator
                    do_something_else();
///                 ^ variable.function
                    break;
///                 ^ keyword.control
            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end

            while (true) {
///         ^ keyword.control
///               ^^^^^ meta.group
///               ^ punctuation.section.group.begin
///                ^^^^ constant.language
///                    ^ punctuation.section.group.end
///                      ^ meta.method meta.block meta.block punctuation.section.block.begin
                if (!something())
///             ^ keyword.control
///                ^^^^^^^^^^^^^^ meta.group
                    break;
            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end

            do {
///         ^ keyword.control
///            ^ meta.method meta.block meta.block punctuation.section.block.begin
                something();
            } while (true);
///         ^ meta.method meta.block meta.block punctuation.section.block.end
///           ^ keyword.control
///                 ^^^^^ meta.group
///                 ^ punctuation.section.group.begin
///                  ^^^^ constant.language
///                      ^ punctuation.section.group.end

            try {
///         ^ keyword.control
///             ^ meta.method meta.block meta.block punctuation.section.block.begin
            } catch (ArgumentException e)
///         ^ meta.method meta.block meta.block punctuation.section.block.end
///           ^ keyword.control
///                 ^^^^^^^^^^^^^^^^^^^^^ meta.group
///                 ^ punctuation.section.group.begin
///                                     ^ punctuation.section.group.end
///                  ^^^^^^^^^^^^^^^^^ support.type
///                                    ^ variable.other
            {
///         ^ meta.method meta.block meta.block punctuation.section.block.begin
            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end
            catch (FaultException<ServiceFault>)
///         ^^^^^ keyword.control.exception.catch
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///               ^ punctuation.section.group.begin
///                ^^^^^^^^^^^^^^ support.type
///                              ^ punctuation.definition.generic.begin
///                               ^^^^^^^^^^^^ support.type
///                                           ^ punctuation.definition.generic.end
///                                            ^ punctuation.section.group.end
            {
///         ^ punctuation.section.block.begin
                throw;
///             ^^^^^ keyword.control.flow.throw
///                  ^ punctuation
            }
            catch (FaultException<ServiceFault> e)
///         ^^^^^ keyword.control.exception.catch
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///               ^ punctuation.section.group.begin
///                ^^^^^^^^^^^^^^ support.type
///                              ^ punctuation.definition.generic.begin
///                               ^^^^^^^^^^^^ support.type
///                                           ^ punctuation.definition.generic.end
///                                            ^ - support - variable
///                                             ^ variable.other
///                                              ^ punctuation.section.group.end
            {
///         ^ punctuation.section.block.begin
                throw;
///             ^^^^^ keyword.control.flow.throw
///                  ^ punctuation
            }
///         ^ punctuation.section.block.end

            try {
///         ^ keyword.control
///             ^ meta.method meta.block meta.block punctuation.section.block.begin
            } catch (ArgumentException e) when (e.ParamName == "foo")
///         ^ meta.method meta.block meta.block punctuation.section.block.end
///           ^ keyword.control
///                 ^^^^^^^^^^^^^^^^^^^^^ meta.group
///                 ^ punctuation.section.group.begin
///                                     ^ punctuation.section.group.end
///                                       ^ keyword.control
///                                            ^^^^^^^^^^^^^^^^^^^^^^ meta.group
///                                            ^ punctuation.section.group.begin
///                                                         ^^ keyword.operator
///                                                            ^^^^ string.quoted.double
///                                                                 ^ punctuation.section.group.end
            {
///         ^ meta.method meta.block meta.block punctuation.section.block.begin
            } catch (System.ArgumentException e) {
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///                                             ^ - meta.group
///                 ^ punctuation.section.group.begin
///                  ^^^^^^ support.type
///                        ^ punctuation.accessor.dot
///                         ^^^^^^^^^^^^^^^^^ support.type
///                                           ^ variable.other
///                                            ^ punctuation.section.group.end
                System.String blah = "test";
///             ^^^^^^ support.type
///                   ^ punctuation.accessor.dot
///                    ^^^^^^ support.type
///                           ^^^^ variable.other
            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end

            finally {
///         ^ keyword.control
///                 ^ meta.method meta.block meta.block punctuation.section.block.begin
                var foo = "";
///             ^ storage.type.variable
///                       ^^ string.quoted.double
            }
///         ^ meta.method meta.block meta.block punctuation.section.block.end
        }

        public TestForLoops() {

            for (i = 0; i < items.Count; i++) {}
///         ^^^ keyword.control.loop.for.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^ variable.other.cs
///                ^ keyword.operator.assignment.cs
///                  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                   ^ punctuation.terminator.statement.cs
///                     ^ variable.other.cs
///                       ^ keyword.operator.comparison.cs
///                         ^^^^^ variable.other.cs
///                              ^ punctuation.accessor.dot.cs
///                               ^^^^^ variable.other.cs
///                                    ^ punctuation.terminator.statement.cs
///                                      ^ variable.other.cs
///                                       ^^ keyword.operator.arithmetic.cs
///                                         ^ punctuation.section.group.end.cs
///                                           ^^ meta.block.cs
///                                           ^ punctuation.section.block.begin.cs
///                                            ^ punctuation.section.block.end.cs

            for (i = 0, k = 0; i < items.Count; i++) {}
///         ^^^ keyword.control.loop.for.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^ variable.other.cs
///                ^ keyword.operator.assignment.cs
///                  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                   ^ punctuation.separator.expression.cs
///                     ^ variable.other.cs
///                       ^ keyword.operator.assignment.cs
///                         ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                          ^ punctuation.terminator.statement.cs
///                            ^ variable.other.cs
///                              ^ keyword.operator.comparison.cs
///                                ^^^^^ variable.other.cs
///                                     ^ punctuation.accessor.dot.cs
///                                      ^^^^^ variable.other.cs
///                                           ^ punctuation.terminator.statement.cs
///                                             ^ variable.other.cs
///                                              ^^ keyword.operator.arithmetic.cs
///                                                ^ punctuation.section.group.end.cs
///                                                  ^^ meta.block.cs
///                                                  ^ punctuation.section.block.begin.cs
///                                                   ^ punctuation.section.block.end.cs

            for (int i = 0; i < items.Count; ++i) {}
///         ^^^ keyword.control.loop.for.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ storage.type.cs
///                  ^ variable.other.cs
///                    ^ keyword.operator.assignment.cs
///                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^ punctuation.terminator.statement.cs
///                         ^ variable.other.cs
///                           ^ keyword.operator.comparison.cs
///                             ^^^^^ variable.other.cs
///                                  ^ punctuation.accessor.dot.cs
///                                   ^^^^^ variable.other.cs
///                                        ^ punctuation.terminator.statement.cs
///                                          ^^ keyword.operator.arithmetic.cs
///                                            ^ variable.other.cs
///                                             ^ punctuation.section.group.end.cs
///                                               ^^ meta.block.cs
///                                               ^ punctuation.section.block.begin.cs
///                                                ^ punctuation.section.block.end.cs

            for (int i = 0, k = 0; i < items.Count; ++i, k += 2) {}
///         ^^^ keyword.control.loop.for.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ storage.type.cs
///                  ^ variable.other.cs
///                    ^ keyword.operator.assignment.cs
///                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^ punctuation.separator.expression.cs
///                         ^ variable.other.cs
///                           ^ keyword.operator.assignment.cs
///                             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                              ^ punctuation.terminator.statement.cs
///                                ^ variable.other.cs
///                                  ^ keyword.operator.comparison.cs
///                                    ^^^^^ variable.other.cs
///                                         ^ punctuation.accessor.dot.cs
///                                          ^^^^^ variable.other.cs
///                                               ^ punctuation.terminator.statement.cs
///                                                 ^^ keyword.operator.arithmetic.cs
///                                                   ^ variable.other.cs
///                                                    ^ punctuation.separator.expression.cs
///                                                      ^ variable.other.cs
///                                                        ^^ keyword.operator.assignment.augmented.cs
///                                                           ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                            ^ punctuation.section.group.end.cs
///                                                              ^^ meta.block.cs
///                                                              ^ punctuation.section.block.begin.cs
///                                                               ^ punctuation.section.block.end.cs

            foreach (int test in collection) {}
///         ^^^^^^^ keyword.control.loop.foreach.cs
///                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                 ^ punctuation.section.group.begin.cs
///                  ^^^ storage.type.cs
///                      ^^^^ variable.other.cs
///                           ^^ keyword.control.loop.in.cs
///                              ^^^^^^^^^^ variable.other.cs
///                                        ^ punctuation.section.group.end.cs
///                                          ^^ meta.block.cs
///                                          ^ punctuation.section.block.begin.cs
///                                           ^ punctuation.section.block.end.cs
        }

        public virtual void Instantiate<T>(string componentId, out T component)
///                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///     ^ storage.modifier
///            ^ storage.modifier
///                    ^ storage.type
///                         ^ entity.name.function
///                         ^^^^^^^^^^^ - meta.generic
///                                    ^^^ meta.generic
///                                       ^ punctuation.section.parameters.begin
///                                        ^^^^^^ storage.type
///                                               ^^^^^^^^^^^ variable.parameter
///                                                          ^ punctuation.separator
///                                                            ^^^ storage.modifier
///                                                                ^ support.type
///                                                                  ^^^^^^^^^ variable.parameter

            where T : BaseComponent
///         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.constraints.cs
///         ^^^^^ storage.modifier.where.cs
///               ^ support.type.cs
///                 ^ punctuation.separator.type.cs
///                   ^^^^^^^^^^^^^ support.type.cs
        {
            var test = "Test";
///         ^ storage.type.variable
///             ^ variable.other
///                  ^ keyword.operator.assignment
///                    ^ string.quoted.double
///                          ^ punctuation.terminator
        }
    }
}


    class YourMainClass
/// ^^^^^^^^^^^^^^^^^^^ meta.class
///   ^ keyword.declaration.class
///          ^ entity.name.class
    {
/// ^ meta.class meta.block punctuation.section.block.begin

        public DateTime test1;
///     ^ storage.modifier
///            ^^^^^^^^ support.type
///                     ^^^^^ variable.other.member

        public DateTime? test2;
///     ^ storage.modifier
///            ^^^^^^^^ support.type
///                    ^ storage.type.nullable
///                      ^^^^^ variable.other.member

        private const string _bar = "bar";
///     ^ storage.modifier
///             ^^^^^ storage.modifier
///                   ^ storage.type
///                          ^^^^ variable.other.member
///                               ^ keyword.operator.assignment
///                                 ^^^^^ string.quoted.double
///                                 ^ punctuation.definition.string.begin
///                                     ^ punctuation.definition.string.end

        static void Main(string[] args)
///                 ^^^^^^^^^^^^^^^^^^^ meta.method
///                      ^^^^^^   storage.type
///                            ^^ meta.brackets
///                            ^ punctuation.section.brackets.begin
///                             ^ punctuation.section.brackets.end
///                               ^^^^ variable.parameter
        {
///     ^ meta.class meta.block meta.method meta.block punctuation.section.block.begin
            //Your program starts here...
            var f = 1e-3f;
///         ^^^ storage.type.variable
///             ^ variable.other
///                 ^^^^ constant.numeric
///                     ^ constant.numeric.suffix
            var l = 11545L;
///         ^^^ storage.type.variable
///             ^ variable.other
///                 ^^^^^ constant.numeric
///                      ^ constant.numeric.suffix
            var d = 11545D;
///         ^^^ storage.type.variable
///             ^ variable.other
///                 ^^^^^ constant.numeric
///                      ^ constant.numeric.suffix
            int x = 1, y = 0;
///         ^^^ storage.type
///             ^ variable.other
///               ^ keyword.operator.assignment
///                 ^ constant.numeric
///                  ^ punctuation.separator
///                    ^ variable.other
///                      ^ keyword.operator.assignment
///                        ^ constant.numeric
///                         ^ punctuation.terminator
            value = x;
///         ^^^^^ variable.language
///               ^ keyword.operator.assignment
///                 ^ variable.other
///                  ^ punctuation.terminator
            const int x = 1;
///         ^ storage.modifier
///               ^ storage.type
///                   ^ variable.other
///                     ^ keyword.operator.assignment
///                       ^ constant.numeric
///                        ^ punctuation.terminator
        }
///     ^ punctuation.section.block.end

        private void MethodWith1Default(int max, string path = null) { }
///        ^ storage.modifier
///                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                  ^ entity.name.function
///                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters
///                                     ^^^ storage.type
///                                         ^^^ variable.parameter
///                                            ^ punctuation.separator
///                                              ^^^^^^ storage.type
///                                                     ^^^^ variable.parameter
///                                                          ^ keyword.operator.assignment
///                                                            ^^^^ constant.language

        internal void MethodWith2Default(int max = -1, string path = null){ }
///        ^ storage.modifier
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                   ^ entity.name.function
///                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters
///                                      ^^^ storage.type
///                                          ^^^ variable.parameter
///                                              ^ keyword.operator.assignment
///                                                 ^ constant.numeric
///                                                  ^ punctuation.separator
///                                                    ^^^^^^ storage.type
///                                                           ^^^^ variable.parameter
///                                                                ^ keyword.operator.assignment
///                                                                  ^^^^ constant.language

        partial void MethodWithTypeParam<T>(T x){ do_something(); }
///        ^ storage.modifier
///                      ^^^ entity.name.function
///                                     ^^^ meta.generic
///                                     ^ punctuation.definition.generic.begin
///                                      ^ variable.parameter.type
///                                         ^ support.type
///                                           ^ variable.parameter
///                                               ^ variable.function

        List<List<List<List<float>>>> reallyNestedTypes;
///     ^^^^ support.type
///         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
///          ^^^^ support.type
///              ^^^^^^^^^^^^^^^^^^^ meta.generic meta.generic
///               ^^^^ support.type
///                   ^^^^^^^^^^^^^ meta.generic meta.generic meta.generic
///                    ^^^^ support.type
///                        ^^^^^^^ meta.generic meta.generic meta.generic meta.generic
///                         ^^^^^ storage.type
///                                   ^ variable.other.member

        IEnumerator<int> IEnumerable<int>.GetEnumerator()
///                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///                      ^^^^^^^^^^^ entity.other.inherited-class
///                                 ^^^^^ meta.generic
///                                  ^^^ storage.type
///                                       ^^^^ entity.name.function
        {
            return new MyCustomIterator(this);
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance
///                ^ keyword.operator.new
///                    ^^^^^^^^^^^^^^^^ support.type
///                                    ^^^^^^ meta.group
///                                    ^ punctuation.section.group.begin
///                                     ^^^^ variable.language.this
///                                         ^ punctuation.section.group.end
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
///     ^ support.type
///         ^^^^^ meta.generic
///         ^ punctuation.definition.generic.begin
///             ^ punctuation.definition.generic.end
///              ^ punctuation.accessor
///               ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.property
///               ^^^^^^^^^^^^^^^ - meta.method
///                                  ^ - meta.method
///                                       ^^^ - meta.method
///               ^^^^ variable.language.this
///                   ^^^^^^^^^ meta.brackets
///                   ^ punctuation.section.brackets.begin
///                           ^ punctuation.section.brackets.end
///                    ^^^ storage.type
///                        ^^^ variable.parameter
///                              ^^^ keyword.declaration.function.accessor
///                                   ^^^ keyword.declaration.function.accessor


        /////////////////////////////
        // methods with attributes //
        /////////////////////////////

        [Route("api/helloworld")]
///     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
///     ^ punctuation.definition.annotation.begin
///      ^^^^^ variable.annotation
///           ^^^^^^^^^^^^^^^^^^ meta.group
///           ^ punctuation.section.group.begin
///            ^^^^^^^^^^^^^^^^ string
///                            ^ punctuation.section.group.end
///                             ^ punctuation.definition.annotation.end
        string Get([FromUri] string name) => $"Hello {name}";
///                ^^^^^^^^^ meta.annotation
///                ^ punctuation.definition.annotation.begin
///                 ^^^^^^^ variable.annotation
///                        ^ punctuation.definition.annotation.end
///                           ^^^^^   storage.type

        // examples from: https://msdn.microsoft.com/en-us/library/mt653979.aspx
        // applies to method
        [method: SomeAttr]
///     ^^^^^^^^^^^^^^^^^^ meta.annotation
///     ^ punctuation.definition.annotation.begin
///      ^^^^^^  storage.modifier.target
///            ^ punctuation.separator
///              ^^^^^^^^ variable.annotation
///                      ^ punctuation.definition.annotation.end
        int Method2() { return 0; }

        // applies to return value
        [return: SomeAttr]
///     ^^^^^^^^^^^^^^^^^^ meta.annotation
///     ^ punctuation.definition.annotation.begin
///      ^^^^^^  storage.modifier.target
///            ^ punctuation.separator
///              ^^^^^^^^ variable.annotation
///                      ^ punctuation.definition.annotation.end
        int Method3() { return 0; }

        [AcceptVerbs(HttpVerbs.Post)]
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
///      ^^^^^^^^^^^ variable.annotation
///                 ^ punctuation.section.group.begin
///                                ^ punctuation.section.group.end
        [ValidateAntiForgeryToken]
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
///      ^^^^^^^^^^^^^^^^^^^^^^^^ variable.annotation
        [JsonHandleError]
///     ^^^^^^^^^^^^^^^^^ meta.annotation
///      ^^^^^^^^^^^^^^^ variable.annotation
        public virtual ActionResult Process([ModelBinder(typeof(MyModelBinder))]
///                                 ^ entity.name.function
///                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
///                                                     ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
///                                                      ^^^^^^ keyword.operator
///                                                            ^^^^^^^^^^^^^^^ meta.group meta.group
///                                                             ^^^^^^^^^^^^^ support.type
                                            [Bind(Prefix = "MyContent")] MyProcessModel model)
///                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
///                                          ^^^^ variable.annotation
///                                              ^^^^^^^^^^^^^^^^^^^^^^ meta.group
///                                               ^^^^^^ variable.parameter
///                                                      ^ keyword.operator.assignment
///                                                        ^^^^^^^^^^^ string.quoted.double
        {
        }

        [SomeAttribute (Url="//")]
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation - comment
///     ^ punctuation.definition.annotation.begin
///      ^^^^^^^^^^^^^ variable.annotation
///                    ^ punctuation.section.group.begin
///                     ^^^ variable.parameter
///                        ^ keyword.operator.assignment
///                         ^^^^ string.quoted.double
///                             ^ punctuation.section.group.end
///                              ^ punctuation.definition.annotation.end
///                               ^ - meta.annotation
        void Test() {
        }


        int Method4 => 5;
///     ^^^ storage.type
///         ^^^^^^^ variable.other.member
///                 ^^^^ meta.method
///                 ^^ keyword.declaration.function
///                    ^ constant.numeric
///                     ^ punctuation.terminator

        delegate int del(int i);
///     ^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate
///     ^ keyword.declaration.delegate
///              ^ storage.type
///                  ^ entity.name.type.delegate
///                     ^^^^^^^ meta.delegate.parameters
///                      ^ storage.type
///                          ^ variable.parameter

        public delegate TOutput Converter<TInput, TOutput> (TInput from);
///     ^ storage.modifier
///            ^ keyword.declaration.delegate
///                     ^ support.type
///                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.delegate
///                             ^ entity.name.type.delegate
///                                      ^^^^^^^^^^^^^^^^^ meta.generic
///                                      ^ punctuation.definition.generic.begin
///                                       ^^^^^^ variable.parameter.type
///                                             ^ punctuation.separator
///                                               ^^^^^^^ variable.parameter.type
///                                                      ^ punctuation.definition.generic.end
///                                                        ^^^^^^^^^^^^^ meta.delegate.parameters
///                                                        ^ - meta.delegate meta.delegate
///                                                         ^ support.type
///                                                                ^ variable.parameter

        void CodeContainingLambdas(){

            del square = x => x * x;
///         ^^^ support.type
///              ^^^ variable.other
///                    ^ keyword.operator.assignment
///                        ^^^^^^^^ meta.function.anonymous
///                        ^^ keyword.declaration.function.arrow
            Func<float, float> times2 = x => x + x;
///         ^^^ support.type
///                            ^^^ variable.other
///                                   ^ keyword.operator.assignment
///                                     ^^^^^^^^^^ meta.function.anonymous
///                                       ^^ keyword.declaration.function.arrow

            var changes = refs.ToDictionary(kvp => kvp.key, arg => k + 5);
///                                         ^^^^^^^^^^^^^^ meta.function.anonymous.cs
///                                         ^^^ variable.parameter.cs
///                                             ^^ keyword.declaration.function.arrow.cs
///                                                ^^^ variable.other.cs
///                                                       ^ punctuation.separator.argument.cs
///                                                       ^^ - meta.function.anonymous
///                                                         ^^^^^^^^^^^^ meta.function.anonymous.cs
///                                                         ^^^ variable.parameter.cs
///                                                             ^^ keyword.declaration.function.arrow.cs
///                                                                ^ variable.other.cs
///                                                                  ^ keyword.operator.arithmetic.cs
///                                                                    ^ meta.number.integer.decimal.cs
///                                                                     ^ - meta.function.anonymous

            var shortDigits = digits.Where((digit, index) => digit.Length < index);
///                                       ^ - meta.function.anonymous
///                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.cs
///                                                                              ^ - meta.function.anonymous
///                                        ^ punctuation.section.group.begin.cs
///                                        ^^^^^^^^^^^^^^ meta.group.cs
///                                         ^^^^^ variable.parameter.cs
///                                              ^ punctuation.separator.parameter.function.cs
///                                                ^^^^^ variable.parameter.cs
///                                                     ^ punctuation.section.group.end.cs
///                                                       ^^ keyword.declaration.function.arrow.cs
///                                                          ^^^^^ variable.other.cs

        }

        void CodeContainingConstructors(){
            var array = new []{ "foo" };
///                     ^^^^^^^^^^^^^^^ meta.instance
///                         ^^ meta.brackets.cs
///                           ^^^^^^^^^ meta.braces
///                           ^ punctuation.section.braces.begin
///                                   ^ punctuation.section.braces.end

            var arrayWithType = new string<Foo>[] { "foobar" };
///                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance
///                                               ^^^^^^^^^^^^ meta.braces
///                                               ^ punctuation.section.braces.begin
///                                                          ^ punctuation.section.braces.end

            var list = new List<Foo> { "coconuts", "horses" };
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance
///                                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces
///                                  ^ punctuation.section.braces.begin
///                                                         ^ punctuation.section.braces.end
            var dictionary = new Dictionary<string, string>
///                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instance
            {
///         ^ meta.instance meta.braces punctuation.section.braces.begin
                ["woman"] = "floating",
                ["floating"] = "wood"
            };
///         ^ meta.instance meta.braces punctuation.section.braces.end

            var anonymous = new {
///                         ^^^^^ meta.instance
///                             ^ meta.class.body punctuation.section.block.begin
                Wood = "burning",
///             ^^^^ variable.other.member
///                  ^ keyword.operator.assignment
///                    ^^^^^^^^^ string.quoted.double
///                             ^ punctuation.separator
                Burning = "sorcerer"
///             ^^^^^^^ variable.other.member
///                     ^ keyword.operator.assignment
///                       ^^^^^^^^^^ string.quoted.double
            };
///         ^ meta.instance meta.class.body punctuation.section.block.end

            var anonArray = new[]
///                         ^^^^^ meta.instance
///                            ^^ meta.brackets
            {
///         ^ meta.instance meta.braces punctuation.section.braces.begin
                new { name = "apple", diam = 4 },
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.anonymous
///                 ^punctuation.section.block.begin
///                   ^^^^ variable.other.member
///                        ^ keyword.operator.assignment
///                          ^^^^^^^ string.quoted.double
///                                 ^ punctuation.separator
///                                   ^^^^ variable.other.member
///                                        ^ keyword.operator.assignment
///                                          ^ constant.numeric
///                                            ^ punctuation.section.block.end
                new { name = "grape", diam = 1 }
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.anonymous
///                 ^ punctuation.section.block.begin
///                   ^^^^ variable.other.member
///                        ^ keyword.operator.assignment
///                          ^^^^^^^ string.quoted.double
///                                 ^ punctuation.separator
///                                   ^^^^ variable.other.member
///                                        ^ keyword.operator.assignment
///                                          ^ constant.numeric
///                                            ^ punctuation.section.block.end
            };
///         ^ meta.instance meta.braces punctuation.section.braces.end

            new System.Drawing.Point(6, 11) { X = 5, Y = 10 };
///             ^^^^^^ support.type
///                   ^ punctuation
///                    ^^^^^^^ support.type
///                           ^ punctuation
///                            ^^^^^ support.type
///                                 ^ punctuation.section.group.begin
///                                  ^ constant.numeric
///                                   ^ punctuation.separator.argument
///                                     ^^ constant.numeric
///                                       ^ punctuation.section.group.end
///                                         ^ punctuation.section.braces.begin
///                                           ^ variable.other
///                                             ^ keyword.operator.assignment
///                                               ^ constant.numeric
///                                                ^ punctuation.separator
///                                                  ^ variable.other
///                                                    ^ keyword.operator.assignment
///                                                      ^^ constant.numeric
///                                                         ^ punctuation.section.braces.end
///                                                          ^ punctuation.terminator.statement
            new System.Drawing.Point(6, 11)
                { X = 5, Y = 10 };
///             ^ punctuation.section.braces.begin
///               ^ variable.other
///                 ^ keyword.operator.assignment
///                   ^ constant.numeric
///                    ^ punctuation.separator
///                      ^ variable.other
///                        ^ keyword.operator.assignment
///                          ^^ constant.numeric
///                             ^ punctuation.section.braces.end
///                              ^ punctuation.terminator.statement
        }
///     ^ punctuation.section.block

        void TestMethod(int argument) {
            if (argument <= 0)
                throw new ArgumentException("Value must be positive", nameof(argument));
///                                                                   ^ keyword.other
///                                                                          ^ variable.other
            nameof(TestMethod);
///         ^ keyword.other
///                ^ support.type
            nameof(int);
///         ^ keyword.other
///                ^ storage.type
            nameof(YourNamespace<Foo>.foo);
///         ^ keyword.other
///                ^ support.type
///                             ^^^^^ meta.generic
///                                  ^ punctuation.accessor
///                                   ^ variable.other
        }

        #region Empty region 01 // not a comment !
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor
///     ^ punctuation.definition.preprocessor - keyword
///      ^^^^^^ keyword.control.directive.region
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.section
///                             ^^^^^^^ - comment

        #endregion Empty region 01
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
///     ^ punctuation.definition.preprocessor - keyword
///      ^^^^^^^^^ keyword.control.directive.endregion
///                ^^^^^^^^^^^^^^^ variable.other.section
    }
/// ^ punctuation.section.block.end


    void TestMe () {
        a = b => b * 2;
///           ^^ keyword.declaration.function.arrow
///           ^^^^^^^^ meta.function.anonymous
///                   ^ punctuation.terminator.statement - meta.function.anonymous

        try
///     ^^^ keyword.control.exception.try
        {

        }
        catch (InvalidOperationException ex)
///     ^^^^^ keyword.control.exception.catch
        {

        }
        finally
///     ^^^^^^^ keyword.control.exception.finally
        {

        }

        a = b => { return b * 2; };
///           ^^ meta.function.anonymous keyword.declaration.function.arrow
///              ^ meta.function.anonymous punctuation.section.block.begin
///                              ^ punctuation.section.block.end
///                               ^ punctuation.terminator.statement - meta.function.anonymous

        try
///     ^^^ keyword.control.exception.try
        {

        }
        catch (InvalidOperationException ex)
///     ^^^^^ keyword.control.exception.catch
        {

        }
        finally
///     ^^^^^^^ keyword.control.exception.finally
        {
        }

        a = (b, c) => { return b * c; };
///          ^ variable.parameter
///           ^ punctuation.separator
///             ^ variable.parameter
///                ^^ keyword.declaration.function.arrow
///                   ^ meta.function.anonymous punctuation.section.block.begin
///                                   ^ punctuation.section.block.end
///                                    ^ punctuation.terminator.statement - meta.function.anonymous

        try
///     ^^^ keyword.control.exception.try
        {

        }
        catch (InvalidOperationException)
///     ^^^^^ keyword.control.exception.catch
///            ^^^^^^^^^^^^^^^^^^^^^^^^^ support.type
        {

        }
        finally
///     ^^^^^^^ keyword.control.exception.finally
        {
        }

        Func<string, bool, int> test = (a, b) => a.len();
///                                    ^^^^^^^^^^^^^^^^^ meta.function.anonymous
///                                    ^^^^^^ meta.group
///                                     ^ variable.parameter
///                                      ^ punctuation.separator.parameter.function
///                                        ^ variable.parameter
///                                           ^^ keyword.declaration.function.arrow
///                                                     ^ punctuation.terminator.statement
///                                                      ^ - meta.function.anonymous

        goto abc;
///     ^^^^ keyword.control.flow.goto
///          ^^^ constant.other.label
    abc:
/// ^^^ entity.name.label
///    ^ punctuation.separator

        switch (test[0])
        {
            case 'a':
                result += 4;
                goto case 'b';
///             ^^^^ keyword.control.flow.goto
///                  ^^^^ keyword.control.conditional.case
///                       ^^^ meta.string string.quoted.single
///                       ^ punctuation.definition.string.begin
///                        ^ constant.character.literal
///                         ^ punctuation.definition.string.end
///                          ^ punctuation.terminator.statement
            case 'b':
///         ^^^^ keyword.control.conditional.case - invalid
///              ^^^ meta.string string.quoted.single
///              ^ punctuation.definition.string.begin
///               ^ constant.character.literal
///                ^ punctuation.definition.string.end
                result += 6;
                break;
            case 'c':
                result += 8;
                break;

            default:
///         ^^^^^^^ keyword.control.conditional.default
///                ^ punctuation.separator.case-statement
                break;
///             ^^^^^ keyword.control.flow.break
///                  ^ punctuation.terminator.statement
        }

    int foo;
    int.TryParse(input, out foo);
///                     ^^^ storage.modifier.argument
///                         ^^^ variable.other - support.type
    int.TryParse(input, out foo /* comment */);
///                     ^^^ storage.modifier.argument
///                         ^^^ variable.other - support.type

        "hello".OfType<char>().Where(c => c == 'l').Count());
///                                                        ^ invalid.illegal.stray.brace

        var test = (Action)(() => "hello".Dump());
///                 ^^^^^^ meta.cast support.type
///                        ^ punctuation.section.group.begin
///                         ^^ meta.function.anonymous meta.group
///                            ^^ keyword.declaration.function.arrow
///                                             ^ punctuation.section.group.end
        test = (Action)(() => {});
///            ^^^^^^^^ meta.cast
///                    ^ meta.group punctuation.section.group.begin
///                     ^^^^^^^ meta.function.anonymous
///                     ^ meta.group punctuation.section.group.begin
///                      ^ meta.group punctuation.section.group.end
///                        ^^ keyword.declaration.function.arrow
///                           ^ punctuation.section.block.begin
///                            ^ punctuation.section.block.end
///                             ^ meta.group punctuation.section.group.end
        test.Invoke();

        // https://msdn.microsoft.com/en-us/library/txafckwd(v=vs.110).aspx
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
        formatted = string.Format("date {0:dddd MMMM}.", DateTime.Now);
///                                     ^^^^^^^^^^^^^ constant.other.placeholder
///                                                  ^ - constant

        string[] names = { "Adam", "Bridgette", "Carla", "Daniel",
                         "Ebenezer", "Francine", "George" };
        decimal[] hours = { 40, 6.667m, 40.39m, 82, 40.333m, 80, 16.75m };
///     ^^^^^^^ storage.type
///            ^^ meta.brackets
///               ^^^^^ variable.other

        int?[] test;
///     ^^^^ storage.type
///         ^^ meta.brackets
///            ^^^^ variable.other

        test[ hello] = 2;
///     ^^^^ variable.other
///           ^^^^^ variable.other
///         ^ punctuation.section.brackets.begin
///                ^ punctuation.section.brackets.end
        test[ 5 ] = 2;
///     ^^^^ variable.other
///           ^ constant.numeric
///         ^ punctuation.section.brackets.begin
///             ^ punctuation.section.brackets.end

        Console.WriteLine("{0,-20} {1,width}\n", "Name", "Hours");
///                        ^^^^^^^ constant.other.placeholder - invalid
///                               ^ string - constant
///                                ^^ constant.other.placeholder - invalid
///                                  ^^^^^^ constant.other.placeholder.cs invalid.illegal.unexpected-character-in-placeholder.cs
///                                        ^ constant.other.placeholder - invalid
///                                         ^^ constant.character.escape

        for (int ctr = 0; ctr < names.Length; ctr++)
            Console.WriteLine("{0,-20} {1,5:N1}", names[ctr], hours[ctr]);
///                           ^^^^^^^^^^^^^^^^^^ string.quoted.double - invalid
///                            ^^^^^^^ constant.other.placeholder
///                                   ^ - constant
///                                    ^^^^^^^^ constant.other.placeholder

        for (; ctr < names.Length; ctr++)
///          ^ punctuation.terminator.statement
///                              ^ punctuation.terminator.statement
            continue;
///         ^^^^^^^^ keyword.control.flow.break

        int MyInt = 100;
        Console.WriteLine("{0:C}", MyInt);
///                        ^^^^^ constant.other.placeholder - invalid
///                        ^ punctuation.definition.placeholder.begin
///                            ^ punctuation.definition.placeholder.end
///                             ^ punctuation.definition.string.end
        // The example displays the following output
        // if en-US is the current culture:
        //        $100.00
        formatted = string.Format(@"Price = |{0,-10:C}|", myInt);
///                               ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
///                                          ^^^^^^^^^ constant.other.placeholder - invalid
///                                          ^ punctuation.definition.placeholder.begin
///                                                  ^ punctuation.definition.placeholder.end
        formatted = string.Format("{00}G}}", myInt);
///                                ^^^^ constant.other.placeholder - invalid
///                                    ^ - constant
///                                     ^^ constant.character.escape
        formatted = string.Format("{0{{G{}", myInt);
///                                ^ punctuation.definition.placeholder.begin
///                                  ^^^^ invalid.illegal.unexpected-character-in-placeholder
///                                      ^ punctuation.definition.placeholder.end

        formatted = string.Format("{0}{1:D}{2}\"{1:", "{", myInt, "}");
///                                ^^^^^^^^^^^ constant.other.placeholder - invalid
///                                           ^^ constant.character.escape
///                                             ^^ constant.other.placeholder - invalid
///                                               ^ invalid.illegal.unclosed-string-placeholder
///                                                ^ punctuation.definition.string.end
///                                                    ^ string - invalid - constant.other - punctuation
///                                                                ^ string - invalid - constant.other - punctuation
        formatted = string.Format("{0", myInt);
///                                ^^ constant.other.placeholder
///                                 ^ invalid.illegal.unclosed-string-placeholder
        formatted = string.Format("{1:\", {", myInt, "}");
///                                ^^^^^^^^ constant.other.placeholder
///                                   ^^ constant.character.escape
///                                     ^^^ invalid.illegal.unclosed-string-placeholder
///                                        ^ punctuation.definition.string.end
///                                                   ^ string - invalid - constant.other - punctuation
        formatted = string.Format("{1:\",{{}} {}", myInt, "}");
///                                ^^^^^^^^^^^^^ constant.other.placeholder
///                                ^ punctuation.definition.placeholder.begin
///                                   ^^ constant.character.escape
///                                      ^^^^ constant.character.escape
///                                           ^ invalid.illegal.unescaped-placeholder
///                                            ^ punctuation.definition.placeholder.end
///                                                        ^ string - invalid - constant.other - punctuation

        formatted = string.Format(@"{0:00.00000{{}}test""} me", 5);
///                                 ^^^^^^^^^^^^^^^^^^^^^^ constant.other.placeholder - invalid
///                                            ^^^^ constant.character.escape
///                                                      ^ punctuation.definition.placeholder.end
        formatted = string.Format(test, hello == true, world);
///                                     ^^^^^ variable.other - variable.parameter
///                                                    ^^^^^ variable.other - variable.parameter
///                                           ^^ keyword.operator - keyword.operator.assignment

        formatted = string.Format(@"GMT is {{ } }}");
///                                        ^^ constant.character.escape.cs
///                                           ^ - invalid
///                                             ^^ constant.character.escape.cs
        formatted = string.Format("GMT is {{ } }}");
///                                       ^^ constant.character.escape.cs
///                                          ^ - invalid
///                                            ^^ constant.character.escape.cs

        formatted = string.Format(@"GMT is {0:yyyyMMdd\THHmmss\Z}", DateTime.Now.ToUniversalTime());
///                                        ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.verbatim constant.other.placeholder
        formatted = string.Format("GMT is {0:yyyyMMdd\\THHmmss\\Z}", DateTime.Now.ToUniversalTime());
///                                       ^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double constant.other.placeholder

        Console.WriteLine($@"GMT is {DateTime.Now:yyyyMMdd\THHmmss\Z}");
///                                 ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                 ^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^ punctuation.separator - constant.other.format-spec
///                                               ^^^^^^^^^^^^^^^^^^ constant.other.format-spec
///                                                                 ^ punctuation.section.interpolation.end
///                                                                  ^ punctuation.definition.string.end
        Console.WriteLine($"GMT is {DateTime.Now:yyyyMMdd\THHmmss\Z}");
///                                ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                             ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                ^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                             ^ punctuation.separator - constant.other.format-spec
///                                              ^^^^^^^^^^^^^^^^^^ constant.other.format-spec
///                                                      ^ invalid.illegal.lone-escape
///                                                              ^ invalid.illegal.lone-escape
///                                                                ^ punctuation.section.interpolation.end
///                                                                 ^ punctuation.definition.string.end
        Console.WriteLine(@$"GMT is {{ } }}");
///                                 ^^ constant.character.escape.cs
///                                    ^ invalid.illegal.unescaped-placeholder.cs
///                                      ^^ constant.character.escape.cs
        Console.WriteLine(@$"GMT is {DateTime.Now:");
///                                 ^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^ invalid.illegal.unclosed-string-placeholder.cs
///                                               ^ meta.string.interpolated punctuation.definition.string.end - meta.interpolation - meta.format-spec
        Console.WriteLine(@$"GMT is {DateTime.Now:""");
///                                 ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^^^ meta.string.interpolated.cs meta.interpolation.cs meta.format-spec.cs
///                                                 ^ meta.string.interpolated punctuation.definition.string.end - meta.interpolation - meta.format-spec
        Console.WriteLine(@$"GMT is {DateTime.Now:yyyyMMdd\THHmmss\Z");
///                                 ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                 ^ meta.string.interpolated - meta.interpolation - meta.format-spec
///                                              ^ punctuation.separator - constant.other.format-spec
///                                               ^^^^^^^^^^^^^^^^^^ invalid.illegal.unclosed-string-placeholder.cs
///                                                                 ^ punctuation.definition.string.end
        Console.WriteLine($"GMT is {{ } }}");
///                                ^^ constant.character.escape.cs
///                                   ^ invalid.illegal.unescaped-placeholder.cs
///                                     ^^ constant.character.escape.cs
        Console.WriteLine($"GMT is {DateTime.Now:");
///                                ^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                             ^ invalid.illegal.unclosed-string-placeholder.cs
///                                              ^ meta.string.interpolated punctuation.definition.string.end - meta.interpolation - meta.format-spec
        Console.WriteLine($"GMT is {DateTime.Now:""");
///                                ^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                             ^ invalid.illegal.unclosed-string-placeholder.cs
///                                              ^ meta.string.interpolated punctuation.definition.string.end - meta.interpolation - meta.format-spec
///                                               ^^ meta.string.cs string.quoted.double.cs punctuation
        Console.WriteLine($"GMT is {DateTime.Now:yyyyMMdd\THHmmss\Z");
///                                ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                             ^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                ^ meta.string.interpolated - meta.interpolation - meta.format-spec
///                                             ^ punctuation.separator - constant.other.format-spec
///                                              ^^^^^^^^^^^^^^^^^^ invalid.illegal.unclosed-string-placeholder.cs
///                                                                ^ punctuation.definition.string.end
        Console.WriteLine($@"GMT is {DateTime.Now:yyyyMMdd\T\""\x1043HHmmss\Z}");
///                                 ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                          ^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^ punctuation.separator - constant.other.format-spec
///                                               ^^^^^^^^^^^^^^^^^^ constant.other.format-spec
///                                                       ^^^^^^^ constant.character.escape
///                                                              ^^^^^^^^^^ - constant.character.escape
///                                                                        ^^ constant.character.escape
///                                                                          ^ punctuation.section.interpolation.end
///                                                                           ^ punctuation.definition.string.end
        Console.WriteLine($@"GMT is {DateTime.Now,-20:yyyyMMdd\THHmmss\Z}");
///                                 ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                     ^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                                  ^ punctuation.separator - constant.other.format-spec
///                                                   ^^^^^^^^^^^^^^^^^^ constant.other.format-spec
///                                                                     ^ punctuation.section.interpolation.end
///                                                                      ^ punctuation.definition.string.end
        Console.WriteLine($@"GMT is {DateTime.Now,anyWidth:yyyyMMdd\THHmmss\Z}");
///                                 ^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated meta.interpolation meta.format-spec
///                                                                          ^ meta.string.interpolated meta.interpolation - meta.format-spec
///                                                       ^ punctuation.separator - constant.other.format-spec
///                                                        ^^^^^^^^^^^^^^^^^^ constant.other.format-spec
///                                                                          ^ punctuation.section.interpolation.end
///                                                                           ^ punctuation.definition.string.end
    }
}
///<- punctuation.section.block.end
}
/// <- invalid.illegal.stray.brace

class Test
{
    void Abc()
    {
        Something.SomeMethod(];
///                         ^ meta.function-call meta.group punctuation.section.group.begin
///                          ^ invalid.illegal.stray.brace
///                           ^ invalid.illegal.expected-close-paren
    }
/// ^ - invalid.illegal.stray.brace
}

void Main () { // method outside a class, i.e. a LINQPad script
///^ storage.type
///  ^^^^ entity.name.function
}
/// <- punctuation.section.block.end

public class AfterTopLevelMethod : IDrawingObject {
///^^^ storage.modifier.access
///    ^^^^^ keyword.declaration.class
///          ^^^^^^^^^^^^^^^^^^^ entity.name.class
///                              ^ punctuation.separator.type.cs
///                                ^^^^^^^^^^^^^^ entity.other.inherited-class.cs

    Global.Type var = null;
/// ^^^^^^ support.type.cs
///       ^ punctuation.accessor.dot.cs
///        ^^^^ support.type.cs
///             ^^^ variable.other.member.cs
///                 ^ keyword.operator.assignment.cs
///                   ^^^^ constant.language.null.cs
///                       ^ punctuation.terminator.statement.cs

    void IDrawingObject.DoInternalStuff() {}
///      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                                    ^^ meta.method.parameters.cs
///                                      ^ meta.method.cs
///                                       ^^ meta.method.body.cs meta.block.cs
///      ^^^^^^^^^^^^^^ entity.other.inherited-class.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^^^^^^^^^^^^^ entity.name.function.cs
///                                    ^ punctuation.section.parameters.begin.cs
///                                     ^ punctuation.section.parameters.end.cs
///                                       ^ punctuation.section.block.begin.cs
///                                        ^ punctuation.section.block.end.cs

    // https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/events/how-to-implement-custom-event-accessors
    protected event EventHandler IDrawingObject.OnDraw
/// ^^^^^^^^^ storage.modifier.access
///           ^^^^^ storage.modifier
///                 ^^^^^^^^^^^^ support.type
///                              ^^^^^^^^^^^^^^ entity.other.inherited-class
///                                            ^ punctuation.accessor.dot
///                                             ^^^^^^ variable.other.member
    {
/// ^ punctuation.section.block.begin
        add
///     ^^^ meta.method keyword.declaration.function.accessor.add
        {
///     ^ punctuation.section.block.begin
            lock (objectLock)
///         ^^^^ keyword.control.other.lock
///               ^^^^^^^^^^ variable.other
            {
                PreDrawEvent += value;
            }
        }
///     ^ punctuation.section.block.end
///      ^ - meta.method
        remove
///     ^^^^^^ meta.method keyword.declaration.function.accessor.remove
        {
            lock (objectLock)
            {
                PreDrawEvent -= value;
            }
        }
    }
/// ^ punctuation.section.block.end

    public event SampleEventHandler SampleEvent;
/// ^^^^^^ storage.modifier.access
///        ^^^^^ storage.modifier
///              ^^^^^^^^^^^^^^^^^^ support.type
///                                 ^^^^^^^^^^^ variable.other.member
///                                            ^ punctuation.terminator.statement

    public static implicit operator AfterTopLevelMethod(int[] some_ints)
///        ^^^^^^ storage.modifier
///               ^^^^^^^^ storage.modifier
///                        ^^^^^^^^ storage.modifier
///                                                     ^^^ meta.method.parameters storage.type
///                                                           ^^^^^^^^^ meta.method.parameters variable.parameter
    {
        return new AfterTopLevelMethod(some_ints);
    }

    Action<float> actionDelegate = delegate { };
///                              ^ keyword.operator.assignment
///                                ^^^^^^^^ keyword.other
///                                         ^ punctuation.section.block.begin
///                                           ^ punctuation.section.block.end
    event Action<float> eventAction;
/// ^^^^^ storage.modifier
    event Action<float> eventActionDelegate = delegate { };
///                                         ^ keyword.operator.assignment
///                                           ^^^^^^^^ keyword.other
///                                                    ^ punctuation.section.block.begin
///                                                      ^ punctuation.section.block.end
}

struct Example
{
    // https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/struct#readonly-instance-members
    private int counter;
    public int Counter
    {
        readonly get => counter;
///     ^^^^^^^^ storage.modifier
///              ^^^ keyword.declaration.function.accessor.get
        set => counter = value;
    }
}

public class MyClass
{
    Dictionary<MyEnum, List<uint>> myDict
/// ^^^^^^^^^^ support.type
///           ^ punctuation.definition.generic.begin
///            ^^^^^^ support.type
///                  ^ punctuation.separator.type
///                    ^^^^ support.type
///                        ^ punctuation.definition.generic.begin
///                         ^^^^ storage.type
///                             ^^ punctuation.definition.generic.end
///                                ^^^^^^ variable.other.member
        = new Dictionary<MyEnum, List<uint>>
///     ^ keyword.operator.assignment
///       ^^^ keyword.operator.new
        {
            [One] = new List<uint>
            {
                1, 2, 3
            },
            [Two] = new List<uint>
            {
                4, 5, 6
            }
        };
///     ^ punctuation.section.braces.end - invalid
///      ^ punctuation.terminator.statement - invalid
}

public class MyClass
{
    bool var // missing semi-colon
/// ^^^^ storage.type
///      ^^^ variable.other.member

    bool var => return 0;
/// ^^^^ storage.type
///      ^^^ variable.other.member
///          ^^ keyword.declaration.function.accessor.get
///             ^^^^^^ keyword.other
///                    ^ meta.number.integer.decimal constant.numeric.value
///                     ^ punctuation.terminator.statement

    bool var // missing semi-colon
/// ^^^^ storage.type
///      ^^^ variable.other.member

    bool var
        => return 0;
///     ^^ keyword.declaration.function.accessor.get
///        ^^^^^^ keyword.other
///               ^ meta.number.integer.decimal constant.numeric.value
///                ^ punctuation.terminator.statement

    bool var // missing semi-colon
/// ^^^^ storage.type
///      ^^^ variable.other.member
}
/// <- meta.class.body meta.block punctuation.section.block.end
/// ^ - meta

public class TestModifierOrder
{
    async static Task OnExportCommand(FileInfo outputfile, CancellationToken token) => await Task.CompletedTask;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
/// ^^^^^ storage.modifier
///       ^^^^^^ storage.modifier
///              ^^^^ support.type
///                   ^^^^^^^^^^^^^^^ entity.name.function
///                                  ^ punctuation.section.parameters.begin.cs
///                                                                               ^ punctuation.section.parameters.end.cs
    static async Task OnExportCommand(FileInfo outputfile, CancellationToken token)
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
/// ^^^^^^ storage.modifier
///        ^^^^^ storage.modifier
///              ^^^^ support.type
///                   ^^^^^^^^^^^^^^^ entity.name.function
///                                  ^ punctuation.section.parameters.begin.cs
///                                                                               ^ punctuation.section.parameters.end.cs
    {
        await NestedMethod();

        async static Task NestedMethod();
///     ^^^^^ storage.modifier.cs
///           ^^^^^^ storage.modifier.cs
///                  ^^^^ support.type.cs
///                       ^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                   ^^ meta.method.parameters.cs

        static async Task NestedMethod();
///     ^^^^^^ storage.modifier.cs
///            ^^^^^ storage.modifier.cs
///                  ^^^^ support.type.cs
///                       ^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                   ^^ meta.method.parameters.cs
    }
}
