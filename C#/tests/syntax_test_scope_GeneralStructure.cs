/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

namespace YourNamespace
///^^^^^^^^^^^^^^^^^^^^^ meta.namespace.cs - meta.path
///<- keyword.declaration.namespace
///^^^^^^ keyword.declaration.namespace.cs
///       ^^^^^^^^^^^^^ entity.name.namespace.cs
{
///<- punctuation.section.block.begin

    abstract
/// ^^^^^^^^ storage.modifier.cs

    file
/// ^^^^ storage.modifier.access.cs

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
///                 ^ punctuation.separator.colon.cs

;   class YourClass : any
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^^^^^ meta.class.base.cs
///                 ^ punctuation.separator.colon.cs
///                   ^^^ entity.other.inherited-class.cs

;   class YourClass : char
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^^^^^^ meta.class.base.cs
///                 ^ punctuation.separator.colon.cs
///                   ^^^^ storage.type.primitive.cs

;   class YourClass : Foo, Bar  {}
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
///                 ^^^^^^^^^^^^ meta.class.base.cs
///                 ^ punctuation.separator.colon.cs
///                   ^^^ entity.other.inherited-class.cs
///                      ^ punctuation.separator.comma.cs
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
///                   ^ punctuation.separator.comma.cs
///                     ^^ variable.parameter.type.cs
///                       ^ punctuation.definition.generic.end.cs
///                         ^^^^^^^^^^^^^^^^^^^ meta.class.base.cs
///                         ^ punctuation.separator.colon.cs
///                           ^^^ entity.other.inherited-class.cs
///                              ^^^^ meta.generic.cs
///                              ^ punctuation.definition.generic.begin.cs
///                               ^^ support.type.cs
///                                 ^ punctuation.definition.generic.end.cs
///                                  ^ punctuation.separator.comma.cs
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
///             ^ punctuation.separator.colon.cs
///               ^^^^^ storage.type.primitive.cs
        where T1: struct
///^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs meta.constraints.cs
///     ^^^^^ storage.modifier.where.cs
///           ^^ support.type.cs
///             ^ punctuation.separator.colon.cs
///               ^^^^^^ storage.type.primitive.cs
        where T2: Printable, IKeyProvider<T1>, new()
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs meta.constraints.cs
///     ^^^^^ storage.modifier.where.cs
///           ^^ support.type.cs
///             ^ punctuation.separator.colon.cs
///               ^^^^^^^^^ support.type.cs
///                        ^ punctuation.separator.comma.cs
///                          ^^^^^^^^^^^^ support.type.cs
///                                      ^^^^ meta.generic.cs
///                                      ^ punctuation.definition.generic.begin.cs
///                                       ^^ support.type.cs
///                                         ^ punctuation.definition.generic.end.cs
///                                          ^ punctuation.separator.comma.cs
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
///                            ^ punctuation.separator.comma.cs
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
///                                                   ^ punctuation.separator.colon.cs
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

        YourClass(T1 arg, int num) : this(arg) {  }
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constructor.cs
///     ^^^^^^^^^ meta.method.cs entity.name.function.constructor.cs
///              ^^^^^^^^^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///              ^ punctuation.section.group.begin.cs
///               ^^ support.type.cs
///                  ^^^ variable.parameter.cs
///                     ^ punctuation.separator.comma.cs
///                       ^^^ storage.type.primitive.cs
///                           ^^^ variable.parameter.cs
///                              ^ punctuation.section.group.end.cs
///                               ^^^^^^^^^^^^^ meta.method.cs
///                                ^ punctuation.separator.colon.cs
///                                  ^^^^ meta.initializer.cs variable.language.this.cs
///                                      ^^^^^ meta.initializer.arguments.cs meta.group.cs
///                                      ^ punctuation.section.group.begin.cs
///                                       ^^^ variable.other.cs
///                                          ^ punctuation.section.group.end.cs
///                                            ^^^^ meta.method.body.cs meta.block.cs
///                                            ^ punctuation.section.block.begin.cs
///                                               ^ punctuation.section.block.end.cs

    }
///^^ meta.class.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs

    class YourClass
/// ^^^^^^^^^^^^^^^^ meta.class.cs
/// ^^^^^ keyword.declaration.class.cs
///       ^^^^^^^^^ entity.name.class.cs
    {
        Int;
///     ^^^ support.type.cs
///        ^ punctuation.terminator.statement.cs

        Int x;
///     ^^^ support.type.cs
///         ^ meta.field.cs variable.other.member.cs
///          ^ punctuation.terminator.statement.cs

        Int x0 = 0, y0 = [];
///     ^^^ support.type.cs
///         ^^^^^^^^^^^^^^^ meta.field.cs
///         ^^ variable.other.member.cs
///            ^ keyword.operator.assignment.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.separator.comma.cs
///                 ^^ variable.other.member.cs
///                    ^ keyword.operator.assignment.cs
///                      ^^ meta.brackets.cs
///                      ^ punctuation.section.brackets.begin.cs
///                       ^ punctuation.section.brackets.end.cs
///                        ^ punctuation.terminator.statement.cs

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

        public Item[] items = [new Item(), new Item()];
///     ^^^^^^ storage.modifier.access.cs
///            ^^^^ support.type.cs
///                ^^ meta.brackets.cs
///                ^ punctuation.section.brackets.begin.cs
///                 ^ punctuation.section.brackets.end.cs
///                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.cs
///                   ^^^^^ variable.other.member.cs
///                         ^ keyword.operator.assignment.cs
///                           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.cs
///                           ^ punctuation.section.brackets.begin.cs
///                            ^^^^^^^^^^ meta.instantiation.cs
///                            ^^^ keyword.operator.new.cs
///                                ^^^^ meta.function-call.identifier.cs support.type.cs
///                                    ^^ meta.function-call.arguments.cs meta.group.cs
///                                    ^ punctuation.section.group.begin.cs
///                                     ^ punctuation.section.group.end.cs
///                                      ^ punctuation.separator.comma.cs
///                                        ^^^^^^^^^^ meta.instantiation.cs
///                                        ^^^ keyword.operator.new.cs
///                                            ^^^^ meta.function-call.identifier.cs support.type.cs
///                                                ^^ meta.function-call.arguments.cs meta.group.cs
///                                                ^ punctuation.section.group.begin.cs
///                                                 ^ punctuation.section.group.end.cs
///                                                  ^ punctuation.section.brackets.end.cs
///                                                   ^ punctuation.terminator.statement.cs

        public Dictionary prop { get; set; } = [];
///     ^^^^^^ storage.modifier.access.cs
///            ^^^^^^^^^^ support.type.cs
///                       ^^^^^^^^^^^^^^^^^^^^^^^ meta.field.cs
///                       ^^^^ variable.other.member.cs
///                            ^^^^^^^^^^^^^ meta.accessors.cs meta.block.cs
///                            ^ punctuation.section.block.begin.cs
///                              ^^^ meta.method.cs keyword.declaration.function.accessor.get.cs
///                                 ^ punctuation.terminator.statement.cs
///                                   ^^^ meta.method.cs keyword.declaration.function.accessor.set.cs
///                                      ^ punctuation.terminator.statement.cs
///                                        ^ punctuation.section.block.end.cs
///                                          ^ keyword.operator.assignment.cs
///                                            ^^ meta.brackets.cs
///                                            ^ punctuation.section.brackets.begin.cs
///                                             ^ punctuation.section.brackets.end.cs
///                                              ^ punctuation.terminator.statement.cs

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
///                             ^ meta.accessors punctuation.section.block.begin
            get {return x;}
///         ^^^^ meta.accessors.cs meta.method.cs
///          ^ keyword.declaration.function.accessor.get
///             ^^^^^^^^^^^ meta.accessors.cs meta.method.body.cs meta.block.cs
///             ^ punctuation.section.block.begin
///                      ^ punctuation.terminator
///                       ^ punctuation.section.block.end
            set {x = value;}
///         ^^^^ meta.accessors.cs meta.method.cs
///          ^ keyword.declaration.function.accessor.set
///             ^^^^^^^^^^^^ meta.accessors.cs meta.method.body.cs meta.block.cs
///             ^ punctuation.section.block.begin
///              ^ variable.other
///                    ^ variable.language
///                       ^ punctuation.terminator
///                        ^ punctuation.section.block.end
        }
///     ^ meta.accessors.cs meta.block.cs punctuation.section.block.end.cs

        YourClass () {
///     ^^^^^^^^^^^^^^^ meta.constructor.cs - meta.method meta.method
///     ^^^^^^^^^^ meta.method.cs
///               ^^ meta.method.parameters.cs meta.group.cs
///                 ^ meta.method.cs
///                  ^^ meta.method.body.cs meta.block.cs
///     ^^^^^^^^^ entity.name.function.constructor.cs
///               ^ punctuation.section.group.begin.cs
///                ^ punctuation.section.group.end.cs
///                  ^ punctuation.section.block.begin.cs
        }
///^^^^^^ meta.constructor.cs meta.method.body.cs meta.block.cs
///     ^ punctuation.section.block.end.cs

        public file YourClass ( int arg ) : this( arg ) {
///     ^^^^^^ storage.modifier.access.cs
///            ^^^^ storage.modifier.access.cs
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constructor.cs
///                 ^^^^^^^^^^ meta.method.cs
///                           ^^^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                                      ^^^^^^^^^^^^^^^ meta.method.cs
///                                                     ^^ meta.method.body.cs meta.block.cs
///                 ^^^^^^^^^ entity.name.function.constructor.cs
///                           ^ punctuation.section.group.begin.cs
///                             ^^^ storage.type.primitive.cs
///                                 ^^^ variable.parameter.cs
///                                     ^ punctuation.section.group.end.cs
///                                       ^ punctuation.separator.colon.cs
///                                         ^^^^ meta.initializer.cs variable.language.this.cs
///                                             ^^^^^^^ meta.initializer.arguments.cs meta.group.cs
///                                             ^ punctuation.section.group.begin.cs
///                                               ^^^ variable.other.cs
///                                                   ^ punctuation.section.group.end.cs
///                                                     ^ punctuation.section.block.begin.cs

            readFrom(file, contents);  // `file` is not a modfifier here
///         ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                 ^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                 ^ punctuation.section.group.begin.cs
///                  ^^^^ variable.other.cs
///                      ^ punctuation.separator.comma.cs
///                        ^^^^^^^^ variable.other.cs
///                                ^ punctuation.section.group.end.cs
///                                 ^ punctuation.terminator.statement.cs
        }
///^^^^^^ meta.constructor.cs meta.method.body.cs meta.block.cs
///     ^ punctuation.section.block.end.cs

        ~YourClass () {
///     ^^^^^^^^^^^^^^^^ meta.destructor.cs - meta.method meta.method
///     ^^^^^^^^^^^ meta.method.cs
///                ^^ meta.method.parameters.cs meta.group.cs
///                  ^ meta.method.cs
///                   ^^ meta.method.body.cs meta.block.cs
///     ^^^^^^^^^^ entity.name.function.destructor.cs
///                ^ punctuation.section.group.begin.cs
///                 ^ punctuation.section.group.end.cs
///                   ^ punctuation.section.block.begin.cs
        }
///^^^^^^ meta.destructor.cs meta.method.body.cs meta.block.cs
///     ^ punctuation.section.block.end.cs

        public bool IsConst(Type value) => this is Const && (this as Const).Value.Equals(value);
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.method
///                 ^^^^^^^ entity.name.function
///                        ^^^^^^^^^^^^ meta.method.parameters
///                        ^ punctuation.section.group.begin
///                         ^^^^ support.type
///                              ^^^^^ variable.parameter
///                                   ^ punctuation.section.group.end
///                                     ^^ keyword.declaration.function.arrow.cs
///                                        ^^^^ variable.language.this
///                                             ^^ keyword.operator.comparison.type.cs
///                                                ^^^^^ support.type
///                                                      ^^ keyword.operator.logical.cs
///                                                         ^^^^^^^^^^^^^^^ meta.group
///                                                         ^ punctuation.section.group.begin
///                                                          ^^^^ variable.language.this
///                                                               ^^ keyword.operator.cast.cs
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
///                     ^^^^ storage.type.primitive.cs
///                          ^^^^^^^ meta.method.cs entity.name.function.cs
///                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                                 ^ punctuation.section.group.begin.cs
///                                  ^^^^ storage.modifier.parameter.cs
///                                         ^^ support.type.cs
///                                           ^^ meta.brackets.cs
///                                           ^ punctuation.section.brackets.begin.cs
///                                            ^ punctuation.section.brackets.end.cs
///                                                ^ variable.parameter.cs
///                                                 ^ punctuation.separator.comma.cs
///                                                     ^^^ storage.type.primitive.cs
///                                                           ^ variable.parameter.cs
///                                                            ^ punctuation.separator.comma.cs
///                                                               ^^^^^^ storage.modifier.parameter.cs
///                                                                     ^ punctuation.section.group.end.cs
///                                                                      ^ punctuation.terminator.statement.cs

        public bool IsZero => IsConst(Numeric<Type>.Zero);
///     ^^^^^^ storage.modifier.access.cs
///            ^^^^ storage.type.primitive.cs
///                 ^^^^^^ variable.other.member.cs
///                        ^^ keyword.declaration.function.accessor.get.cs
///                           ^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                  ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                                  ^ punctuation.section.group.begin.cs
///                                   ^^^^^^^ support.type.cs
///                                          ^^^^^^ meta.generic.cs
///                                          ^ punctuation.definition.generic.begin.cs
///                                           ^^^^ support.type.cs
///                                               ^ punctuation.definition.generic.end.cs
///                                                ^ punctuation.accessor.dot.cs
///                                                 ^^^^ variable.other.cs
///                                                     ^ punctuation.section.group.end.cs
///                                                      ^ punctuation.terminator.statement.cs

        public bool InlineProperty {get; private set; } = false;
///     ^^^^^^ storage.modifier.access.cs
///            ^^^^ storage.type.primitive.cs
///                 ^^^^^^^^^^^^^^ variable.other.member.cs
///                                ^^^^^^^^^^^^^^^^^^^^ meta.accessors.cs meta.block.cs
///                                ^ punctuation.section.block.begin.cs
///                                 ^^^ meta.method.cs keyword.declaration.function.accessor.get.cs
///                                    ^ punctuation.terminator.statement.cs
///                                      ^^^^^^^ storage.modifier.access.cs
///                                              ^^^ meta.method.cs keyword.declaration.function.accessor.set.cs
///                                                 ^ punctuation.terminator.statement.cs
///                                                   ^ punctuation.section.block.end.cs
///                                                     ^ keyword.operator.assignment.cs
///                                                       ^^^^^ constant.language.boolean.false.cs
///                                                            ^ punctuation.terminator.statement.cs

        public new bool NewMethod() => false;
///     ^^^^^^ storage.modifier.access.cs
///            ^^^ storage.modifier.cs
///                ^^^^ storage.type.primitive.cs
///                     ^^^^^^^^^ meta.method.cs
///                     ^^^^^^^^^ entity.name.function.cs
///                              ^^ meta.method.parameters.cs meta.group.cs
///                              ^ punctuation.section.group.begin.cs
///                               ^ punctuation.section.group.end.cs
///                                ^^^ meta.method.cs
///                                 ^^ keyword.declaration.function.arrow.cs
///                                   ^^^^^^ meta.method.body.cs
///                                    ^^^^^ constant.language.boolean.false.cs
///                                         ^ punctuation.terminator.statement.cs
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
///                   ^ punctuation.separator.colon.cs

;   struct YourStruct : any
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.colon.cs
///                     ^^^ entity.other.inherited-class.cs

;   struct YourStruct : char
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.colon.cs
///                     ^^^^ storage.type.primitive.cs

;   struct YourStruct : nint
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.colon.cs
///                     ^^^^ storage.type.primitive.cs

;   struct YourStruct : Foo, Bar  {}
/// ^^^^^^^^^^^^^^^^^^ meta.struct.cs
/// ^^^^^^ keyword.declaration.struct.cs
///        ^^^^^^^^^^ entity.name.struct.cs
///                   ^^^^^^^^^^^^ meta.struct.base.cs
///                   ^ punctuation.separator.colon.cs
///                     ^^^ entity.other.inherited-class.cs
///                        ^ punctuation.separator.comma.cs
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
///                      ^ punctuation.separator.colon.cs

;   partial interface IInterface : IBase1, IBase2
/// ^^^^^^^ storage.modifier.cs
///         ^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
///         ^^^^^^^^^ keyword.declaration.interface.cs
///                   ^^^^^^^^^^ entity.name.interface.cs
///                              ^^^^^^^^^^^^^^^^^ meta.interface.base.cs
///                              ^ punctuation.separator.colon.cs
///                                ^^^^^^ entity.other.inherited-class.cs
///                                      ^ punctuation.separator.comma.cs
///                                        ^^^^^^ entity.other.inherited-class.cs

;   interface IInterface<in T1, [attr] out T2> : IBase1<T1>, IBase2<T2> where T1 : class, IBase2<T2> where T2 : unmanaged
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs
///           ^^^^^^^^^^ entity.name.interface.cs
///                     ^^^^^^^^^^^^^^^^^^^^^^ meta.generic.cs
///                     ^ punctuation.definition.generic.begin.cs
///                      ^^ storage.modifier.cs
///                         ^^ variable.parameter.type.cs
///                           ^ punctuation.separator.comma.cs
///                             ^^^^^^ meta.annotation.cs
///                             ^ punctuation.definition.annotation.begin.cs
///                              ^^^^ variable.annotation.cs
///                                  ^ punctuation.definition.annotation.end.cs
///                                    ^^^ storage.modifier.cs
///                                        ^^ variable.parameter.type.cs
///                                          ^ punctuation.definition.generic.end.cs
///                                            ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.base.cs
///                                            ^ punctuation.separator.colon.cs
///                                              ^^^^^^ entity.other.inherited-class.cs
///                                                    ^^^^ meta.generic.cs
///                                                    ^ punctuation.definition.generic.begin.cs
///                                                     ^^ support.type.cs
///                                                       ^ punctuation.definition.generic.end.cs
///                                                        ^ punctuation.separator.comma.cs
///                                                          ^^^^^^ entity.other.inherited-class.cs
///                                                                ^^^^ meta.generic.cs
///                                                                ^ punctuation.definition.generic.begin.cs
///                                                                 ^^ support.type.cs
///                                                                   ^ punctuation.definition.generic.end.cs
///                                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs meta.constraints.cs
///                                                                     ^^^^^ storage.modifier.where.cs
///                                                                           ^^ support.type.cs
///                                                                              ^ punctuation.separator.colon.cs
///                                                                                ^^^^^ storage.type.primitive.cs
///                                                                                     ^ punctuation.separator.comma.cs
///                                                                                       ^^^^^^ support.type.cs
///                                                                                             ^^^^ meta.generic.cs
///                                                                                             ^ punctuation.definition.generic.begin.cs
///                                                                                              ^^ support.type.cs
///                                                                                                ^ punctuation.definition.generic.end.cs
///                                                                                                  ^^^^^ storage.modifier.where.cs
///                                                                                                        ^^ support.type.cs
///                                                                                                           ^ punctuation.separator.colon.cs
///                                                                                                             ^^^^^^^^^ storage.modifier.cs

;   interface IInterface : nint
/// ^^^^^^^^^^^^^^^^^^^^^ meta.interface.cs
/// ^^^^^^^^^ keyword.declaration.interface.cs
///           ^^^^^^^^^^ entity.name.interface.cs
///                      ^^^^^^^ meta.interface.base.cs
///                      ^ punctuation.separator.colon.cs
///                        ^^^^ storage.type.primitive.cs

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
///                                     ^ punctuation.section.group.begin
///                                      ^^^ storage.type
///                                          ^ variable.parameter
///                                           ^ punctuation.section.group.end
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
///               ^ punctuation.separator.colon.cs

    enum YourEnum : ResolvesToInt
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^^^^^^^^^^^ meta.enum.base.cs
///               ^ punctuation.separator.colon.cs
///                 ^^^^^^^^^^^^^ entity.other.inherited-class.cs

    enum YourEnum : char
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^^ meta.enum.base.cs
///               ^ punctuation.separator.colon.cs
///                 ^^^^ invalid.illegal.type.cs

    enum YourEnum : nint
/// ^^^^^^^^^^^^^^ meta.enum.cs
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^^ meta.enum.base.cs
///               ^ punctuation.separator.colon.cs
///                 ^^^^ storage.type.primitive.cs

    enum YourEnum : int {

    enum YourEnum : int {}
/// <- meta.enum.body.cs meta.block.cs
///^ meta.enum.body.cs meta.block.cs
/// ^^^^^^^^^^^^^^ meta.enum.cs - meta.enum.body
/// ^^^^ keyword.declaration.enum.cs
///      ^^^^^^^^ entity.name.enum.cs
///               ^^^^^ meta.enum.base.cs
///                    ^ meta.enum.cs
///               ^ punctuation.separator.colon.cs
///                 ^^^ storage.type.primitive.cs
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
///                    ^ punctuation.separator.colon.cs
///                      ^^^^^ storage.type.primitive.cs
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
///              ^ punctuation.separator.comma.cs
        Item2,
///^^^^^^^^^^^^ meta.enum.body.cs meta.block.cs
///     ^^^^^ entity.name.constant.cs
///          ^ punctuation.separator.comma.cs
        [string.stuff]
///^^^^^^^^^^^^^^^^^^^^ meta.namespace.body.cs meta.block.cs meta.enum.body.cs meta.block.cs
///     ^^^^^^^^^^^^^^ meta.annotation.cs
///     ^ punctuation.definition.annotation.begin.cs
///      ^^^^^^ variable.annotation.cs
///            ^ punctuation.accessor.dot.cs
///             ^^^^^ variable.annotation.cs
///                  ^ punctuation.definition.annotation.end.cs
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
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.body.cs meta.block.cs meta.namespace.cs
///<- keyword.declaration.namespace
///^^^^^^ keyword.declaration.namespace.cs
///       ^^^^^^^^^^^^^ variable.namespace.cs
///                     ^ punctuation.accessor.dot.cs
///                       ^^^^ entity.name.namespace.cs
{
/// <- meta.namespace.body.cs meta.namespace.body.cs meta.block.cs punctuation.section.block.begin.cs

    public class Derived<T> : Other<T>.Base<T>
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^^^^^^^^^^^^^^ meta.class.cs
///        ^^^^^ keyword.declaration.class.cs
///              ^^^^^^^ entity.name.class.cs
///                     ^^^ meta.generic.cs
///                     ^ punctuation.definition.generic.begin.cs
///                      ^ variable.parameter.type.cs
///                       ^ punctuation.definition.generic.end.cs
///                         ^^^^^^^^^^^^^^^^^^^ meta.class.base.cs
///                         ^ punctuation.separator.colon.cs
///                           ^^^^^ support.type.cs
///                                ^^^ meta.generic.cs
///                                ^ punctuation.definition.generic.begin.cs
///                                 ^ support.type.cs
///                                  ^ punctuation.definition.generic.end.cs
///                                   ^ punctuation.accessor.dot.cs
///                                    ^^^^ entity.other.inherited-class.cs
///                                        ^^^ meta.generic.cs
///                                        ^ punctuation.definition.generic.begin.cs
///                                         ^ support.type.cs
///                                          ^ punctuation.definition.generic.end.cs
    {
        public Derived(DateTime exportDate) : base(exportDate) {
///     ^^^^^^ storage.modifier.access.cs
///            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constructor.cs
///            ^^^^^^^ meta.method.cs
///                   ^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                                        ^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                                                            ^^ meta.method.body.cs meta.block.cs
///            ^^^^^^^ entity.name.function.constructor.cs
///                   ^ punctuation.section.group.begin.cs
///                    ^^^^^^^^ support.type.cs
///                             ^^^^^^^^^^ variable.parameter.cs
///                                       ^ punctuation.section.group.end.cs
///                                         ^ punctuation.separator.colon.cs
///                                           ^^^^ meta.initializer.cs variable.language.super.cs
///                                               ^^^^^^^^^^^^ meta.initializer.arguments.cs meta.group.cs
///                                               ^ punctuation.section.group.begin.cs
///                                                ^^^^^^^^^^ variable.other.cs
///                                                          ^ punctuation.section.group.end.cs
///                                                            ^ punctuation.section.block.begin.cs
        }

        public virtual void Instantiate<T>(string componentId, out T component)
///                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
///     ^ storage.modifier
///            ^ storage.modifier
///                    ^ storage.type
///                         ^ entity.name.function
///                         ^^^^^^^^^^^ - meta.generic
///                                    ^^^ meta.generic
///                                       ^ punctuation.section.group.begin
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
///                 ^ punctuation.separator.colon.cs
///                   ^^^^^^^^^^^^^ support.type.cs
        {
            var test = "Test";
///         ^ storage.type
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
///                    ^ storage.modifier.nullable
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
///         ^^^ storage.type
///             ^ variable.other
///                 ^^^^ constant.numeric
///                     ^ constant.numeric.suffix
            var l = 11545L;
///         ^^^ storage.type
///             ^ variable.other
///                 ^^^^^ constant.numeric
///                      ^ constant.numeric.suffix
            var d = 11545D;
///         ^^^ storage.type
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
///                                       ^^^^^^^^^^^^^^^ meta.method
///                      ^^^^^^^^^^^ entity.other.inherited-class
///                                 ^^^^^ meta.generic
///                                  ^^^ storage.type
///                                       ^^^^ entity.name.function
        {
            return new MyCustomIterator(this);
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation
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

        ////////////////////////////
        // Indexer Declarations
        ////////////////////////////

        Item this[int key] => expression;
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.indexer meta.indexer
///          ^^^^ meta.indexer.cs
///              ^^^^^^^^^ meta.indexer.parameters.cs meta.brackets.cs
///                       ^^^ meta.indexer.cs
///                          ^^^^^^^^^^^ meta.indexer.body.cs
///     ^^^^ support.type.cs
///          ^^^^ variable.language.this.cs
///              ^ punctuation.section.brackets.begin.cs
///               ^^^ storage.type.primitive.cs
///                   ^^^ variable.parameter.cs
///                      ^ punctuation.section.brackets.end.cs
///                        ^^ keyword.declaration.function.accessor.get.cs
///                           ^^^^^^^^^^ variable.other.cs
///                                     ^ punctuation.terminator.statement.cs

        Item this[int key]{ get; set; }
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.indexer meta.indexer
///          ^^^^ meta.indexer.cs
///              ^^^^^^^^^ meta.indexer.parameters.cs meta.brackets.cs
///                       ^^^^^^^^^^^^^ meta.indexer.cs meta.accessors.cs meta.block.cs
///     ^^^^ support.type.cs
///          ^^^^ variable.language.this.cs
///              ^ punctuation.section.brackets.begin.cs
///               ^^^ storage.type.primitive.cs
///                   ^^^ variable.parameter.cs
///                      ^ punctuation.section.brackets.end.cs
///                       ^ punctuation.section.block.begin.cs
///                         ^^^ meta.method.cs keyword.declaration.function.accessor.get.cs
///                            ^ punctuation.terminator.statement.cs
///                              ^^^ meta.method.cs keyword.declaration.function.accessor.set.cs
///                                 ^ punctuation.terminator.statement.cs
///                                   ^ punctuation.section.block.end.cs

        Item IList<int>.this [int key] { internal get; protected set {  } }
///                     ^^^^^ meta.indexer.cs
///                          ^^^^^^^^^ meta.indexer.parameters.cs meta.brackets.cs
///                                   ^ meta.indexer.cs
///                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.indexer.cs meta.accessors.cs meta.block.cs
///     ^^^^ support.type.cs
///          ^^^^^ entity.other.inherited-class.cs
///               ^^^^^ meta.generic.cs
///               ^ punctuation.definition.generic.begin.cs
///                ^^^ storage.type.primitive.cs
///                   ^ punctuation.definition.generic.end.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^^ variable.language.this.cs
///                          ^ punctuation.section.brackets.begin.cs
///                           ^^^ storage.type.primitive.cs
///                               ^^^ variable.parameter.cs
///                                  ^ punctuation.section.brackets.end.cs
///                                    ^ punctuation.section.block.begin.cs
///                                      ^^^^^^^^ storage.modifier.access.cs
///                                               ^^^ meta.method.cs keyword.declaration.function.accessor.get.cs
///                                                  ^ punctuation.terminator.statement.cs
///                                                    ^^^^^^^^^ storage.modifier.access.cs
///                                                              ^^^^ meta.method.cs
///                                                              ^^^ keyword.declaration.function.accessor.set.cs
///                                                                  ^^^^ meta.method.body.cs meta.block.cs
///                                                                  ^ punctuation.section.block.begin.cs
///                                                                     ^ punctuation.section.block.end.cs
///                                                                       ^ punctuation.section.block.end.cs

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
///                                                      ^^^^^^ keyword.other.cs
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
        void Test() {}


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
        int Method4 => 5;
///     ^^^ storage.type.primitive.cs
///         ^^^^^^^ variable.other.member.cs
///                 ^^ keyword.declaration.function.accessor.get.cs
///                    ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                     ^ punctuation.terminator.statement.cs

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

        void CodeContainingConstructors(){
            var array = new []{ "foo" };
///                     ^^^^^^^^^^^^^^^ meta.instantiation
///                         ^^ meta.brackets.cs
///                           ^^^^^^^^^ meta.braces
///                           ^ punctuation.section.braces.begin
///                                   ^ punctuation.section.braces.end

            var arrayWithType = new string<Foo>[] { "foobar" };
///                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation
///                                               ^^^^^^^^^^^^ meta.braces
///                                               ^ punctuation.section.braces.begin
///                                                          ^ punctuation.section.braces.end

            var list = new List<Foo> { "coconuts", "horses" };
///                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation
///                                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces
///                                  ^ punctuation.section.braces.begin
///                                                         ^ punctuation.section.braces.end
            var dictionary = new Dictionary<string, string>
///                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation
            {
///         ^ meta.instantiation meta.braces punctuation.section.braces.begin
                ["woman"] = "floating",
///            ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.braces.cs
///             ^^^^^^^^^ meta.brackets.cs
///             ^ punctuation.section.brackets.begin.cs
///              ^^^^^^^ meta.string.cs string.quoted.double.cs
///              ^ punctuation.definition.string.begin.cs
///                    ^ punctuation.definition.string.end.cs
///                     ^ punctuation.section.brackets.end.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///                         ^ punctuation.definition.string.begin.cs
///                                  ^ punctuation.definition.string.end.cs
///                                   ^ punctuation.separator.comma.cs
                ["floating"] = "wood"
///            ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.braces.cs
///             ^^^^^^^^^^^^ meta.brackets.cs
///             ^ punctuation.section.brackets.begin.cs
///              ^^^^^^^^^^ meta.string.cs string.quoted.double.cs
///              ^ punctuation.definition.string.begin.cs
///                       ^ punctuation.definition.string.end.cs
///                        ^ punctuation.section.brackets.end.cs
///                          ^ keyword.operator.assignment.cs
///                            ^^^^^^ meta.string.cs string.quoted.double.cs
///                            ^ punctuation.definition.string.begin.cs
///                                 ^ punctuation.definition.string.end.cs
            };
///         ^ meta.instantiation meta.braces punctuation.section.braces.end

            var anonymous = new {
///                         ^^^^^^ meta.instantiation.cs - meta.instantiation meta.instantiation
///                             ^ meta.braces.cs punctuation.section.braces.begin.cs
                Wood = "burning",
///            ^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.braces.cs - meta.instantiation meta.instantiation
///             ^^^^ variable.other.member
///                  ^ keyword.operator.assignment
///                    ^^^^^^^^^ string.quoted.double
///                             ^ punctuation.separator
                Burning = "sorcerer"
///            ^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.braces.cs - meta.instantiation meta.instantiation
///             ^^^^^^^ variable.other.member
///                     ^ keyword.operator.assignment
///                       ^^^^^^^^^^ string.quoted.double
            };
///         ^ meta.instantiation.cs meta.braces.cs punctuation.section.braces.end.cs

            var array = new[counter];
///                     ^^^^^^^^^^^^ meta.instantiation.cs
///                     ^^^ keyword.operator.new.cs
///                        ^^^^^^^^^ meta.brackets.cs
///                        ^ punctuation.section.brackets.begin.cs
///                         ^^^^^^^ variable.other.cs
///                                ^ punctuation.section.brackets.end.cs
///                                 ^ punctuation.terminator.statement.cs

            var anonArray = new[]
///                         ^^^^^ meta.instantiation
///                            ^^ meta.brackets
            {
///         ^ meta.instantiation meta.braces punctuation.section.braces.begin
                new { name = "apple", diam = 4 },
///             ^^^^ meta.instantiation.cs meta.braces.cs meta.instantiation.cs - meta.braces meta.braces
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.braces.cs meta.instantiation.cs meta.braces.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.other.member.cs
///                        ^ keyword.operator.assignment.cs
///                          ^^^^^^^ meta.string.cs string.quoted.double.cs
///                          ^ punctuation.definition.string.begin.cs
///                                ^ punctuation.definition.string.end.cs
///                                 ^ punctuation.separator.comma.cs
///                                   ^^^^ variable.other.member.cs
///                                        ^ keyword.operator.assignment.cs
///                                          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                            ^ punctuation.section.braces.end.cs
///                                             ^ punctuation.separator.comma.cs
                new { name = "grape", diam = 1 }
///             ^^^^ meta.instantiation.cs meta.braces.cs meta.instantiation.cs - meta.braces meta.braces
///                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.braces.cs meta.instantiation.cs meta.braces.cs
///             ^^^ keyword.operator.new.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.other.member.cs
///                        ^ keyword.operator.assignment.cs
///                          ^^^^^^^ meta.string.cs string.quoted.double.cs
///                          ^ punctuation.definition.string.begin.cs
///                                ^ punctuation.definition.string.end.cs
///                                 ^ punctuation.separator.comma.cs
///                                   ^^^^ variable.other.member.cs
///                                        ^ keyword.operator.assignment.cs
///                                          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                            ^ punctuation.section.braces.end.cs

                // Anonymous class instantiation with base access

                new { base }
///             ^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.super.cs
///                        ^ punctuation.section.braces.end.cs

                new { base[arguments] }
///             ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.super.cs
///                       ^^^^^^^^^^^ meta.brackets.cs
///                       ^ punctuation.section.brackets.begin.cs
///                        ^^^^^^^^^ variable.other.cs
///                                 ^ punctuation.section.brackets.end.cs
///                                   ^ punctuation.section.braces.end.cs

                new { base.member }
///             ^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.super.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^ variable.other.member.cs
///                               ^ punctuation.section.braces.end.cs

                new { base.member<int> }
///             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.super.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^ support.type.cs
///                              ^^^^^ meta.generic.cs
///                              ^ punctuation.definition.generic.begin.cs
///                               ^^^ storage.type.primitive.cs
///                                  ^ punctuation.definition.generic.end.cs
///                                    ^ punctuation.section.braces.end.cs

                // Anonymous class instantiation with this access

                new { this }
///             ^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.this.cs
///                        ^ punctuation.section.braces.end.cs

                new { this[arguments] }
///             ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.this.cs
///                       ^^^^^^^^^^^ meta.brackets.cs
///                       ^ punctuation.section.brackets.begin.cs
///                        ^^^^^^^^^ variable.other.cs
///                                 ^ punctuation.section.brackets.end.cs
///                                   ^ punctuation.section.braces.end.cs

                new { this.member }
///             ^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.this.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^ variable.other.member.cs
///                               ^ punctuation.section.braces.end.cs

                new { this.member<int> }
///             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ variable.language.this.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^ support.type.cs
///                              ^^^^^ meta.generic.cs
///                              ^ punctuation.definition.generic.begin.cs
///                               ^^^ storage.type.primitive.cs
///                                  ^ punctuation.definition.generic.end.cs
///                                    ^ punctuation.section.braces.end.cs

                // Anonymous class instantiation with member access

                new { byte.member }
///             ^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ storage.type.primitive.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^ variable.other.member.cs
///                               ^ punctuation.section.braces.end.cs

                new { byte.member<int> }
///             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^^^ storage.type.primitive.cs
///                       ^ punctuation.accessor.dot.cs
///                        ^^^^^^ support.type.cs
///                              ^^^^^ meta.generic.cs
///                              ^ punctuation.definition.generic.begin.cs
///                               ^^^ storage.type.primitive.cs
///                                  ^ punctuation.definition.generic.end.cs
///                                    ^ punctuation.section.braces.end.cs

                // Anonymous class instantiation with qualified alias member access

                new { ns::alias }
///             ^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^ variable.namespace.cs
///                     ^^ punctuation.accessor.double-colon.namespace.cs
///                       ^^^^^ variable.other.cs
///                             ^ punctuation.section.braces.end.cs

                new { ns::alias<int> }
///             ^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///             ^^^ keyword.operator.new.cs
///                 ^^^^^^^^^^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                   ^^ variable.namespace.cs
///                     ^^ punctuation.accessor.double-colon.namespace.cs
///                       ^^^^^ support.type.cs
///                            ^^^^^ meta.generic.cs
///                            ^ punctuation.definition.generic.begin.cs
///                             ^^^ storage.type.primitive.cs
///                                ^ punctuation.definition.generic.end.cs
///                                  ^ punctuation.section.braces.end.cs

            };
///         ^ meta.instantiation meta.braces punctuation.section.braces.end

            new System.Drawing.Point(6, 11) { X = 5, Y = 10 };
///             ^^^^^^ support.type
///                   ^ punctuation
///                    ^^^^^^^ support.type
///                           ^ punctuation
///                            ^^^^^ support.type
///                                 ^ punctuation.section.group.begin
///                                  ^ constant.numeric
///                                   ^ punctuation.separator.comma
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

            // Array creation expressions

            // 'new' non_array_type '[' expression_list ']' rank_specifier* array_initializer?
            new byte[,];
///         ^^^^^^^^^^^ meta.instantiation.cs
///         ^^^ keyword.operator.new.cs
///             ^^^^ storage.type.primitive.cs
///                 ^^^ meta.brackets.cs
///                 ^ punctuation.section.brackets.begin.cs
///                  ^ punctuation.separator.comma.cs
///                   ^ punctuation.section.brackets.end.cs
///                    ^ punctuation.terminator.statement.cs

            new byte[length,10];
///         ^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///         ^^^ keyword.operator.new.cs
///             ^^^^ storage.type.primitive.cs
///                 ^^^^^^^^^^^ meta.brackets.cs
///                 ^ punctuation.section.brackets.begin.cs
///                  ^^^^^^ variable.other.cs
///                        ^ punctuation.separator.comma.cs
///                         ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                           ^ punctuation.section.brackets.end.cs
///                            ^ punctuation.terminator.statement.cs

            new byte[length][,] {1, 2, 3};
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///         ^^^ keyword.operator.new.cs
///             ^^^^ storage.type.primitive.cs
///                 ^^^^^^^^^^^ meta.brackets.cs
///                 ^ punctuation.section.brackets.begin.cs
///                  ^^^^^^ variable.other.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ punctuation.section.brackets.begin.cs
///                          ^ punctuation.separator.comma.cs
///                           ^ punctuation.section.brackets.end.cs
///                             ^^^^^^^^^ meta.braces.cs
///                             ^ punctuation.section.braces.begin.cs
///                              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                               ^ punctuation.separator.comma.cs
///                                 ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                  ^ punctuation.separator.comma.cs
///                                    ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                     ^ punctuation.section.braces.end.cs
///                                      ^ punctuation.terminator.statement.cs

            // 'new' rank_specifier array_initializer
            new [,] {1, 2, 3};
///         ^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///         ^^^ keyword.operator.new.cs
///             ^^^ meta.brackets.cs
///             ^ punctuation.section.brackets.begin.cs
///              ^ punctuation.separator.comma.cs
///               ^ punctuation.section.brackets.end.cs
///                 ^^^^^^^^^ meta.braces.cs
///                 ^ punctuation.section.braces.begin.cs
///                  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                   ^ punctuation.separator.comma.cs
///                     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                      ^ punctuation.separator.comma.cs
///                        ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                         ^ punctuation.section.braces.end.cs
///                          ^ punctuation.terminator.statement.cs

            new(member: "value", other: new GroupPolicyApply(entry));
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs - meta.instantiation meta.instantiation
///                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs meta.instantiation.cs
///                                                                ^  meta.instantiation.cs - meta.instantiation meta.instantiation
///         ^^^ keyword.operator.new.cs
///            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                                         ^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs meta.function-call.identifier.cs
///                                                         ^^^^^^^ meta.function-call.arguments.cs meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                                                                ^ meta.function-call.arguments.cs meta.group.cs - meta.function-call meta.function-call
///            ^ punctuation.section.group.begin.cs
///             ^^^^^^ variable.parameter.cs
///                   ^ keyword.operator.assignment.cs
///                     ^^^^^^^ meta.string.cs string.quoted.double.cs
///                     ^ punctuation.definition.string.begin.cs
///                           ^ punctuation.definition.string.end.cs
///                            ^ punctuation.separator.comma.cs
///                              ^^^^^ variable.parameter.cs
///                                   ^ keyword.operator.assignment.cs
///                                     ^^^ keyword.operator.new.cs
///                                         ^^^^^^^^^^^^^^^^ support.type.cs
///                                                         ^ punctuation.section.group.begin.cs
///                                                          ^^^^^ variable.other.cs
///                                                               ^ punctuation.section.group.end.cs
///                                                                ^ punctuation.section.group.end.cs
///                                                                 ^ punctuation.terminator.statement.cs

            new(rules: [RuleSet.DefaultRules]);
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///         ^^^ keyword.operator.new.cs
///            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^ variable.parameter.cs
///                  ^ keyword.operator.assignment.cs
///                    ^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.cs
///                    ^ punctuation.section.brackets.begin.cs
///                     ^^^^^^^ variable.other.cs
///                            ^ punctuation.accessor.dot.cs
///                             ^^^^^^^^^^^^ variable.other.cs
///                                         ^ punctuation.section.brackets.end.cs
///                                          ^ punctuation.section.group.end.cs
///                                           ^ punctuation.terminator.statement.cs

            new(rules: [RulSet.Rules]RuleSet.GetRules());
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.cs
///         ^^^ keyword.operator.new.cs
///            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^ variable.parameter.cs
///                  ^ keyword.operator.assignment.cs
///                    ^^^^^^^^^^^^^^ meta.annotation.cs
///                    ^ punctuation.definition.annotation.begin.cs
///                     ^^^^^^ variable.annotation.cs
///                           ^ punctuation.accessor.dot.cs
///                            ^^^^^ variable.annotation.cs
///                                 ^ punctuation.definition.annotation.end.cs
///                                  ^^^^^^^ variable.other.cs
///                                         ^ punctuation.accessor.dot.cs
///                                          ^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                  ^^ meta.function-call.arguments.cs meta.group.cs
///                                                  ^ punctuation.section.group.begin.cs
///                                                   ^ punctuation.section.group.end.cs
///                                                    ^ punctuation.section.group.end.cs
///                                                     ^ punctuation.terminator.statement.cs
        }
///     ^ punctuation.section.block


        /////////////////////////////////////////////////
        // invalid class-level keywords and statements //
        /////////////////////////////////////////////////

        and
///     ^^^ keyword.operator.logical.cs

        for
///     ^^^ keyword.control.loop.for.cs

        if
///     ^^ keyword.control.conditional.if.cs

        while
///     ^^^^^ keyword.control.loop.while.cs
    }
/// ^ meta.class.body.cs meta.block.cs punctuation.section.block.end.cs
///  ^ - meta.class

    void testMisc()
    {
        int foo;
        int.TryParse(input, out var);
///                         ^^^ storage.modifier.argument
///                             ^^^ variable.other - storage.type - support.type
        int.TryParse(input, out var foo /* comment */);
///                         ^^^ storage.modifier.argument
///                             ^^^ storage.type.variant.cs
///                                 ^^^ variable.other - storage.type - support.type
        int.TryParse(input, out vec foo /* comment */);
///                         ^^^ storage.modifier.argument
///                             ^^^ support.type.cs
///                                 ^^^ variable.other - storage.type - support.type

        // https://msdn.microsoft.com/en-us/library/txafckwd(v=vs.110).aspx
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
        string[] names = { "Adam", "Bridgette", "Carla", "Daniel",
                         "Ebenezer", "Francine", "George" };
        decimal[] hours = { 40, 6.667m, 40.39m, 82, 40.333m, 80, 16.75m };
///     ^^^^^^^ storage.type
///            ^^ meta.brackets
///               ^^^^^ variable.other

        int?[] test;
///     ^^^ storage.type
///        ^ storage.modifier.nullable
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
    }
}
///<- punctuation.section.block.end
}
/// <- invalid.illegal.stray

class Test
{
    void Abc()
    {
        Something.SomeMethod(];
///                         ^ meta.function-call meta.group punctuation.section.group.begin
///                          ^ invalid.illegal.stray
///                           ^ punctuation.terminator.statement.cs
    }
/// ^ - invalid.illegal.stray
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
///                              ^ punctuation.separator.colon.cs
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
///                     ^^^^^^^^^^^^^^^ meta.method.cs
///                                    ^^ meta.method.parameters.cs meta.group.cs
///                                      ^ meta.method.cs
///                                       ^^ meta.method.body.cs meta.block.cs
///      ^^^^^^^^^^^^^^ entity.other.inherited-class.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^^^^^^^^^^^^^ entity.name.function.cs
///                                    ^ punctuation.section.group.begin.cs
///                                     ^ punctuation.section.group.end.cs
///                                       ^ punctuation.section.block.begin.cs
///                                        ^ punctuation.section.block.end.cs

    // https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/events/how-to-implement-custom-event-accessors
    protected event EventHandler IDrawingObject.OnDraw
/// ^^^^^^^^^ storage.modifier.access.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.event.cs - meta.event meta.event
///           ^^^^^ keyword.declaration.event.cs
///                 ^^^^^^^^^^^^ support.type.cs
///                              ^^^^^^^^^^^^^^ entity.other.inherited-class.cs
///                                            ^ punctuation.accessor.dot.cs
///                                             ^^^^^^ variable.other.member.cs
    {
///^ meta.event.cs - meta.accessors
/// ^^ meta.event.cs meta.accessors.cs meta.block.cs
/// ^ punctuation.section.block.begin.cs
        add
///     ^^^^ meta.method.cs
///     ^^^ keyword.declaration.function.accessor.add.cs
        {
///^^^^^^^ meta.event.cs meta.accessors.cs meta.block.cs
///^^^^^ meta.method.cs
///     ^^ meta.method.body.cs meta.block.cs
///     ^ punctuation.section.block.begin.cs
            lock (objectLock)
///         ^^^^ keyword.control.flow.lock.cs
///              ^^^^^^^^^^^^ meta.group.cs
///              ^ punctuation.section.group.begin.cs
///               ^^^^^^^^^^ variable.other.cs
///                         ^ punctuation.section.group.end.cs
            {
                PreDrawEvent += value;
            }
        }
///     ^ punctuation.section.block.end
///      ^ - meta.method
        remove
///     ^^^^^^ meta.event.cs meta.accessors.cs meta.method keyword.declaration.function.accessor.remove
        {
///^^^^^^^ meta.event.cs meta.accessors.cs meta.block.cs
///^^^^^ meta.method.cs
///     ^^ meta.method.body.cs meta.block.cs
///     ^ punctuation.section.block.begin.cs
            lock (objectLock)
            {
                PreDrawEvent -= value;
            }
        }
///^^^^^^^ meta.event.cs meta.accessors.cs meta.block.cs
///^^^^^^ meta.method.body.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
    }
///^^ meta.event.cs meta.accessors.cs meta.block.cs
/// ^ punctuation.section.block.end.cs

    public event SampleEventHandler IDrawingObject.SampleEvent, IDrawingObject.AnotherEvent;
/// ^^^^^^ storage.modifier.access.cs
///        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.event.cs
///        ^^^^^ keyword.declaration.event.cs
///              ^^^^^^^^^^^^^^^^^^ support.type.cs
///                                 ^^^^^^^^^^^^^^ entity.other.inherited-class.cs
///                                               ^ punctuation.accessor.dot.cs
///                                                ^^^^^^^^^^^ variable.other.member.cs
///                                                           ^ punctuation.separator.comma.cs
///                                                             ^^^^^^^^^^^^^^ entity.other.inherited-class.cs
///                                                                           ^ punctuation.accessor.dot.cs
///                                                                            ^^^^^^^^^^^^ variable.other.member.cs
///                                                                                        ^ punctuation.terminator.statement.cs

    Action<float> actionDelegate = delegate { };
///                                ^^^^^^^^^ meta.function.anonymous.cs
///                                         ^^^ meta.function.anonymous.body.cs meta.block.cs
///                                ^^^^^^^^ keyword.declaration.delegate.cs
///                                         ^ punctuation.section.block.begin.cs
///                                           ^ punctuation.section.block.end.cs
///                                            ^ punctuation.terminator.statement.cs

    event Action<float> eventAction;
/// ^^^^^ keyword.declaration.event.cs
    event Action<float> eventActionDelegate = delegate { };
///                                           ^^^^^^^^^ meta.function.anonymous.cs
///                                                    ^^^ meta.function.anonymous.body.cs meta.block.cs
///                                           ^^^^^^^^ keyword.declaration.delegate.cs
///                                                    ^ punctuation.section.block.begin.cs
///                                                      ^ punctuation.section.block.end.cs
///                                                       ^ punctuation.terminator.statement.cs
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
///                  ^ punctuation.separator.comma
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
///         ^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^^^ variable.other.cs
///             ^ punctuation.section.brackets.end.cs
///               ^ keyword.operator.assignment.cs
///                 ^^^^^^^^^^^^^^^ meta.instantiation.cs
///                 ^^^ keyword.operator.new.cs
///                     ^^^^^^^^^^^ meta.function-call.identifier.cs
///                     ^^^^ support.type.cs
///                         ^^^^^^ meta.generic.cs
///                         ^ punctuation.definition.generic.begin.cs
///                          ^^^^ storage.type.primitive.cs
///                              ^ punctuation.definition.generic.end.cs
            {
                1, 2, 3
            },
            [Two] = new List<uint>
///         ^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^^^ variable.other.cs
///             ^ punctuation.section.brackets.end.cs
///               ^ keyword.operator.assignment.cs
///                 ^^^^^^^^^^^^^^^ meta.instantiation.cs
///                 ^^^ keyword.operator.new.cs
///                     ^^^^^^^^^^^ meta.function-call.identifier.cs
///                     ^^^^ support.type.cs
///                         ^^^^^^ meta.generic.cs
///                         ^ punctuation.definition.generic.begin.cs
///                          ^^^^ storage.type.primitive.cs
///                              ^ punctuation.definition.generic.end.cs
            {
                4, 5, 6
            }
        };
///     ^ punctuation.section.braces.end - invalid
///      ^ punctuation.terminator.statement - invalid
}

public class MyClass
{
    public bool var // missing semi-colon
/// ^^^^^^ storage.modifier
///        ^^^^ storage.type
///             ^^^ variable.other.member

    public bool var => return 0;
/// ^^^^^^ storage.modifier
///        ^^^^ storage.type
///             ^^^ variable.other.member
///                 ^^ keyword.declaration.function.accessor.get
///                    ^^^^^^ keyword.control.flow.return.cs
///                           ^ meta.number.integer.decimal constant.numeric.value
///                            ^ punctuation.terminator.statement

    public bool var // missing semi-colon
/// ^^^^^^ storage.modifier
///        ^^^^ storage.type
///             ^^^ variable.other.member

    public bool var
        => return 0;
///     ^^ keyword.declaration.function.accessor.get
///        ^^^^^^ keyword.control.flow.return.cs
///               ^ meta.number.integer.decimal constant.numeric.value
///                ^ punctuation.terminator.statement

    public bool var // missing semi-colon
/// ^^^^^^ storage.modifier
///        ^^^^ storage.type
///             ^^^ variable.other.member
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
///                                  ^ punctuation.section.group.begin.cs
///                                                                               ^ punctuation.section.group.end.cs
    static async Task OnExportCommand(FileInfo outputfile, CancellationToken token)
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
/// ^^^^^^ storage.modifier
///        ^^^^^ storage.modifier
///              ^^^^ support.type
///                   ^^^^^^^^^^^^^^^ entity.name.function
///                                  ^ punctuation.section.group.begin.cs
///                                                                               ^ punctuation.section.group.end.cs
    {
        await NestedMethod();

        async static Task NestedMethod();
///     ^^^^^ storage.modifier.cs
///           ^^^^^^ storage.modifier.cs
///                  ^^^^ support.type.cs
///                       ^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                   ^^ meta.method.parameters.cs meta.group.cs

        static async Task NestedMethod();
///     ^^^^^^ storage.modifier.cs
///            ^^^^^ storage.modifier.cs
///                  ^^^^ support.type.cs
///                       ^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
///                                   ^^ meta.method.parameters.cs meta.group.cs
    }
}

[global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
///^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.cs
///^^^^ support.namespace.global.cs
///    ^^ punctuation.accessor.double-colon.namespace.cs
///      ^^^^^^ variable.annotation.cs
///            ^ punctuation.accessor.dot.cs
///             ^^^^^^^ variable.annotation.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^^^^^^^^^^^^^^ variable.annotation.cs
///                                     ^ punctuation.accessor.dot.cs
///                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.annotation.cs
///                                                                ^^ meta.group.cs
///                                                                ^ punctuation.section.group.begin.cs
///                                                                 ^ punctuation.section.group.end.cs
///                                                                  ^ punctuation.definition.annotation.end.cs
internal sealed partial class Test : sys::Configuration.ApplicationSettingsBase {
///                                  ^^^ variable.namespace.cs
///                                     ^^ punctuation.accessor.double-colon.namespace.cs
///                                       ^^^^^^^^^^^^^ support.type.cs
///                                                    ^ punctuation.accessor.dot.cs
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
///                                                                                                                     ^^^^ meta.function-call.identifier.cs support.type.cs
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


class TestControlStatements
{
    public void testExceptions()
    {
        catch
///     ^^^^^ keyword.control.exception.catch.cs

        catch ( {}
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///             ^^ meta.block.cs
///             ^ punctuation.section.block.begin.cs
///              ^ punctuation.section.block.end.cs

        catch ( ;
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///             ^ punctuation.terminator.statement.cs

        catch ) ;
///     ^^^^^ keyword.control.exception.catch.cs
///           ^ invalid.illegal.stray.cs
///             ^ punctuation.terminator.statement.cs

        { catch ( }
///     ^^^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^ keyword.control.exception.catch.cs
///             ^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///               ^ punctuation.section.block.end.cs

        { catch ) }
///     ^^^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^ keyword.control.exception.catch.cs
///             ^ invalid.illegal.stray.cs
///               ^ punctuation.section.block.end.cs

        catch (test exc)
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ support.type.cs
///                 ^^^ variable.other.cs
///                    ^ punctuation.section.group.end.cs

        catch (exc exc, err)    // Note: only one identifier allowed!!
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^ support.type.cs
///                ^^^ variable.other.cs
///                   ^ - punctuation
///                     ^^^ variable.other.cs
///                        ^ invalid.illegal.stray.cs

        catch when
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^^^ keyword.control.conditional.when.cs

        catch () when ()
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^ keyword.control.conditional.when.cs
///                   ^^ meta.group.cs
///                   ^ punctuation.section.group.begin.cs
///                    ^ punctuation.section.group.end.cs

        finally
///     ^^^^^^^ keyword.control.exception.finally.cs

        try
///     ^^^ keyword.control.exception.try.cs

        try {
///     ^^^ keyword.control.exception.try.cs
///         ^^ meta.block.cs
///         ^ punctuation.section.block.begin.cs
        } catch (ArgumentException e)
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///       ^^^^^ keyword.control.exception.catch.cs
///             ^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^^^^^^^^^^^^^^^ support.type.cs
///                                ^ variable.other.cs
///                                 ^ punctuation.section.group.end.cs
        {
///     ^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
        }
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
        catch (FaultException<ServiceFault>)
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^^^^^^^^^ support.type.cs
///                          ^^^^^^^^^^^^^^ meta.generic.cs
///                          ^ punctuation.definition.generic.begin.cs
///                           ^^^^^^^^^^^^ support.type.cs
///                                       ^ punctuation.definition.generic.end.cs
///                                        ^ punctuation.section.group.end.cs
        {
///     ^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
            throw;
///        ^^^^^^^^ meta.block.cs
///         ^^^^^ keyword.control.flow.throw.cs
///              ^ punctuation.terminator.statement.cs
        }
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
        catch (FaultException<ServiceFault> e)
///     ^^^^^ keyword.control.exception.catch.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^^^^^^^^^ support.type.cs
///                          ^^^^^^^^^^^^^^ meta.generic.cs
///                          ^ punctuation.definition.generic.begin.cs
///                           ^^^^^^^^^^^^ support.type.cs
///                                       ^ punctuation.definition.generic.end.cs
///                                         ^ variable.other.cs
///                                          ^ punctuation.section.group.end.cs
        {
///     ^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
            throw;
///        ^^^^^^^^ meta.block.cs
///         ^^^^^ keyword.control.flow.throw.cs
///              ^ punctuation.terminator.statement.cs
        }
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs

        try {
///     ^^^ keyword.control.exception.try.cs
///         ^^ meta.block.cs
///         ^ punctuation.section.block.begin.cs
        } catch (ArgumentException e) when (e.ParamName == "foo")
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///       ^^^^^ keyword.control.exception.catch.cs
///             ^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^^^^^^^^^^^^^^^ support.type.cs
///                                ^ variable.other.cs
///                                 ^ punctuation.section.group.end.cs
///                                   ^^^^ keyword.control.conditional.when.cs
///                                        ^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                                        ^ punctuation.section.group.begin.cs
///                                         ^ variable.other.cs
///                                          ^ punctuation.accessor.dot.cs
///                                           ^^^^^^^^^ variable.other.cs
///                                                     ^^ keyword.operator.comparison.cs
///                                                        ^^^^^ meta.string.cs string.quoted.double.cs
///                                                        ^ punctuation.definition.string.begin.cs
///                                                            ^ punctuation.definition.string.end.cs
///                                                             ^ punctuation.section.group.end.cs
        {
///     ^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
        } catch (System.ArgumentException e) {
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///       ^^^^^ keyword.control.exception.catch.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^^^^ support.type.cs
///                    ^ punctuation.accessor.dot.cs
///                     ^^^^^^^^^^^^^^^^^ support.type.cs
///                                       ^ variable.other.cs
///                                        ^ punctuation.section.group.end.cs
///                                          ^^ meta.block.cs
///                                          ^ punctuation.section.block.begin.cs
            System.String blah = "test";
///         ^^^^^^ support.type
///               ^ punctuation.accessor.dot
///                ^^^^^^ support.type
///                       ^^^^ variable.other
        }
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs

        finally {
///^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
///             ^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^^^^^^^ keyword.control.exception.finally.cs
///             ^ punctuation.section.block.begin.cs
            var foo = "";
///         ^ storage.type
///                   ^^ string.quoted.double
        }
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testIfStatements()
    {
        if
///     ^^ keyword.control.conditional.if.cs

        else
///     ^^^^ keyword.control.conditional.else.cs

        else if
///     ^^^^^^^ keyword.control.conditional.elseif.cs

        if (true)
///     ^^ keyword.control.conditional.if.cs
///        ^^^^^^ meta.group.cs
///        ^ punctuation.section.group.begin.cs
///         ^^^^ constant.language.boolean.true.cs
///             ^ punctuation.section.group.end.cs
            a = 5;
///         ^ variable.other.cs
///           ^ keyword.operator.assignment.cs
///             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^ punctuation.terminator.statement.cs

        if (false) {
///     ^^ keyword.control.conditional.if.cs
///        ^^^^^^^ meta.group.cs
///        ^ punctuation.section.group.begin.cs
///         ^^^^^ constant.language.boolean.false.cs
///              ^ punctuation.section.group.end.cs
///                ^^ meta.method.body.cs meta.block.cs meta.block.cs
///                ^ punctuation.section.block.begin.cs
        }
///^^^^^^ meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs

        if (false) {
///     ^ keyword.control
///        ^^^^^^^ meta.group
///        ^ punctuation.section.group.begin
///              ^ punctuation.section.group.end
///                ^ meta.method meta.block meta.block punctuation.section.block.begin
        } else if (foo) {
///^^^^^^ meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///       ^^^^^^^ keyword.control.conditional.elseif.cs
///               ^^^^^ meta.group.cs
///               ^ punctuation.section.group.begin.cs
///                ^^^ variable.other.cs
///                   ^ punctuation.section.group.end.cs
///                     ^^ meta.method.body.cs meta.block.cs meta.block.cs
///                     ^ punctuation.section.block.begin.cs
        } else {
///^^^^^^ meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///       ^^^^ keyword.control.conditional.else.cs
///            ^^ meta.method.body.cs meta.block.cs meta.block.cs
///            ^ punctuation.section.block.begin.cs
        }
///^^^^^^ meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    public void testForLoops()
    {
        for
///     ^^^ keyword.control.loop.for.cs

        for {}
///     ^^^ keyword.control.loop.for.cs
///         ^^ meta.block.cs
///         ^ punctuation.section.block.begin.cs
///          ^ punctuation.section.block.end.cs

        for ( ; ; ;
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///           ^ punctuation.terminator.statement.cs
///             ^ punctuation.terminator.statement.cs
///               ^ punctuation.terminator.statement.cs

        for )
///     ^^^ keyword.control.loop.for.cs
///         ^ invalid.illegal.stray.cs

        { for ( }
///     ^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^ keyword.control.loop.for.cs
///           ^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///             ^ punctuation.section.block.end.cs - meta.group

        { for ) }
///     ^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^ keyword.control.loop.for.cs
///           ^ invalid.illegal.stray.cs
///             ^ punctuation.section.block.end.cs

        for ()
///     ^^^ keyword.control.loop.for.cs
///         ^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^ punctuation.section.group.end.cs

        for (;;)
///     ^^^ keyword.control.loop.for.cs
///         ^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^ punctuation.terminator.statement.cs
///            ^ punctuation.section.group.end.cs

        for (i = 0; i < items.Count; i++) {}
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.terminator.statement.cs
///                 ^ variable.other.cs
///                   ^ keyword.operator.comparison.cs
///                     ^^^^^ variable.other.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^ variable.other.cs
///                                ^ punctuation.terminator.statement.cs
///                                  ^ variable.other.cs
///                                   ^^ keyword.operator.arithmetic.cs
///                                     ^ punctuation.section.group.end.cs
///                                       ^^ meta.block.cs
///                                       ^ punctuation.section.block.begin.cs
///                                        ^ punctuation.section.block.end.cs

        for (i = 0, k = 0; i < items.Count; i++) {}
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.separator.comma.cs
///                 ^ variable.other.cs
///                   ^ keyword.operator.assignment.cs
///                     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                      ^ punctuation.terminator.statement.cs
///                        ^ variable.other.cs
///                          ^ keyword.operator.comparison.cs
///                            ^^^^^ variable.other.cs
///                                 ^ punctuation.accessor.dot.cs
///                                  ^^^^^ variable.other.cs
///                                       ^ punctuation.terminator.statement.cs
///                                         ^ variable.other.cs
///                                          ^^ keyword.operator.arithmetic.cs
///                                            ^ punctuation.section.group.end.cs
///                                              ^^ meta.block.cs
///                                              ^ punctuation.section.block.begin.cs
///                                               ^ punctuation.section.block.end.cs

        for (int i = 0; i < items.Count; ++i) {}
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ storage.type.primitive.cs
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
///                                      ^^ keyword.operator.arithmetic.cs
///                                        ^ variable.other.cs
///                                         ^ punctuation.section.group.end.cs
///                                           ^^ meta.block.cs
///                                           ^ punctuation.section.block.begin.cs
///                                            ^ punctuation.section.block.end.cs

        for (int i = 0, k = 0; i < items.Count; ++i, k += 2) {}
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ storage.type.primitive.cs
///              ^ variable.other.cs
///                ^ keyword.operator.assignment.cs
///                  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                   ^ punctuation.separator.comma.cs
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
///                                             ^^ keyword.operator.arithmetic.cs
///                                               ^ variable.other.cs
///                                                ^ punctuation.separator.comma.cs
///                                                  ^ variable.other.cs
///                                                    ^^ keyword.operator.assignment.augmented.cs
///                                                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                        ^ punctuation.section.group.end.cs
///                                                          ^^ meta.block.cs
///                                                          ^ punctuation.section.block.begin.cs
///                                                           ^ punctuation.section.block.end.cs

        for (Any.Number<int> var = 0; var < 10; var += 10) {}
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ support.type.cs
///             ^ punctuation.accessor.dot.cs
///              ^^^^^^ support.type.cs
///                    ^^^^^ meta.generic.cs
///                    ^ punctuation.definition.generic.begin.cs
///                     ^^^ storage.type.primitive.cs
///                        ^ punctuation.definition.generic.end.cs
///                          ^^^ variable.other.cs
///                              ^ keyword.operator.assignment.cs
///                                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                 ^ punctuation.terminator.statement.cs
///                                   ^^^ variable.other.cs
///                                       ^ keyword.operator.comparison.cs
///                                         ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                           ^ punctuation.terminator.statement.cs
///                                             ^^^ variable.other.cs
///                                                 ^^ keyword.operator.assignment.augmented.cs
///                                                    ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                                      ^ punctuation.section.group.end.cs
///                                                        ^^ meta.block.cs
///                                                        ^ punctuation.section.block.begin.cs
///                                                         ^ punctuation.section.block.end.cs

        for (var++; var > 0; var--) {}
///     ^^^ keyword.control.loop.for.cs
///         ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ variable.other.cs
///             ^^ keyword.operator.arithmetic.cs
///               ^ punctuation.terminator.statement.cs
///                 ^^^ variable.other.cs
///                     ^ keyword.operator.comparison.cs
///                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                        ^ punctuation.terminator.statement.cs
///                          ^^^ variable.other.cs
///                             ^^ keyword.operator.arithmetic.cs
///                               ^ punctuation.section.group.end.cs
///                                 ^^ meta.block.cs
///                                 ^ punctuation.section.block.begin.cs
///                                  ^ punctuation.section.block.end.cs
    }

    public void testForeachLoops()
    {
        foreach
///     ^^^^^^^ keyword.control.loop.foreach.cs

        foreach ( {}
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///               ^^ meta.block.cs - meta.group
///               ^ punctuation.section.block.begin.cs
///                ^ punctuation.section.block.end.cs

        foreach ( ;
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///               ^ punctuation.terminator.statement.cs - meta.group

        foreach ) ;
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^ invalid.illegal.stray.cs
///               ^ punctuation.terminator.statement.cs

        { foreach ( }
///     ^^^^^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^^^ keyword.control.loop.foreach.cs
///               ^^ meta.group.cs
///               ^ punctuation.section.group.begin.cs
///                 ^ punctuation.section.block.end.cs - meta.group

        { foreach ) }
///     ^^^^^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^^^ keyword.control.loop.foreach.cs
///               ^ invalid.illegal.stray.cs
///                 ^ punctuation.section.block.end.cs

        foreach (test in )
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^^ support.type.cs
///                   ^^ keyword.control.loop.in.cs
///                      ^ punctuation.section.group.end.cs

        foreach (int test in collection) {}
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ storage.type.primitive.cs
///                  ^^^^ variable.other.cs
///                       ^^ keyword.control.loop.in.cs
///                          ^^^^^^^^^^ variable.other.cs
///                                    ^ punctuation.section.group.end.cs
///                                      ^^ meta.block.cs
///                                      ^ punctuation.section.block.begin.cs
///                                       ^ punctuation.section.block.end.cs

        foreach (var test in collection) {}
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^ storage.type.variant.cs
///                  ^^^^ variable.other.cs
///                       ^^ keyword.control.loop.in.cs
///                          ^^^^^^^^^^ variable.other.cs
///                                    ^ punctuation.section.group.end.cs
///                                      ^^ meta.block.cs
///                                      ^ punctuation.section.block.begin.cs
///                                       ^ punctuation.section.block.end.cs

        foreach (Class<T>[,]? obj in (List<Class<T>>)items) {}
///     ^^^^^^^ keyword.control.loop.foreach.cs
///             ^^^^^^^^^^^^^^^^^^^^^ meta.group.cs - meta.group meta.group
///                   ^^^ meta.generic.cs
///                      ^^^ meta.brackets.cs
///                                  ^^^^^^^^^^^^^^^^ meta.group.cs meta.cast.cs meta.group.cs
///                                       ^^^^^^ meta.generic.cs - meta.generic meta.generic
///                                             ^^^ meta.generic.cs meta.generic.cs
///                                                ^ meta.generic.cs - meta.generic meta.generic
///                                                  ^^^^^^ meta.group.cs - meta.group meta.group
///             ^ punctuation.section.group.begin.cs
///              ^^^^^ support.type.cs
///                   ^ punctuation.definition.generic.begin.cs
///                    ^ support.type.cs
///                     ^ punctuation.definition.generic.end.cs
///                      ^ punctuation.section.brackets.begin.cs
///                       ^ punctuation.separator.comma.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ storage.modifier.nullable.cs
///                           ^^^ variable.other.cs
///                               ^^ keyword.control.loop.in.cs
///                                  ^ punctuation.section.group.begin.cs
///                                   ^^^^ support.type.cs
///                                       ^ punctuation.definition.generic.begin.cs
///                                        ^^^^^ support.type.cs
///                                             ^ punctuation.definition.generic.begin.cs
///                                              ^ support.type.cs
///                                               ^ punctuation.definition.generic.end.cs
///                                                ^ punctuation.definition.generic.end.cs
///                                                 ^ punctuation.section.group.end.cs
///                                                  ^^^^^ variable.other.cs
///                                                       ^ punctuation.section.group.end.cs
///                                                         ^^ meta.block.cs
///                                                         ^ punctuation.section.block.begin.cs
///                                                          ^ punctuation.section.block.end.cs
    }

    public void testDoWhileLoops()
    {
        do
///     ^^ keyword.control.loop.do.cs

        do ;
///     ^^ keyword.control.loop.do.cs
///        ^ punctuation.terminator.statement.cs

        do ();
///     ^^ keyword.control.loop.do.cs
///        ^^ meta.group.cs
///        ^ punctuation.section.group.begin.cs
///         ^ punctuation.section.group.end.cs
///          ^ punctuation.terminator.statement.cs

        do {
///     ^^ keyword.control.loop.do.cs
///        ^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///        ^ punctuation.section.block.begin.cs
            something();
        } while (true);
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///       ^^^^^ keyword.control.loop.while.cs
///             ^^^^^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^^^^ constant.language.boolean.true.cs
///                  ^ punctuation.section.group.end.cs
///                   ^ punctuation.terminator.statement.cs

        while
///     ^^^^^ keyword.control.loop.while.cs

        while ()
///     ^^^^^ keyword.control.loop.while.cs
///           ^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ punctuation.section.group.end.cs

        while (;)
///     ^^^^^ keyword.control.loop.while.cs
///           ^ meta.group.cs punctuation.section.group.begin.cs
///            ^ punctuation.terminator.statement.cs
///             ^ invalid.illegal.stray.cs

        while ( {} )
///     ^^^^^ keyword.control.loop.while.cs
///           ^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///             ^^ meta.block.cs
///             ^ punctuation.section.block.begin.cs
///              ^ punctuation.section.block.end.cs
///                ^ invalid.illegal.stray.cs
        { while ( }
///     ^^^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^ keyword.control.loop.while.cs
///             ^^ meta.group.cs
///             ^ punctuation.section.group.begin.cs
///               ^ punctuation.section.block.end.cs

        { while ) }
///     ^^^^^^^^^^^ meta.block.cs
///     ^ punctuation.section.block.begin.cs
///       ^^^^^ keyword.control.loop.while.cs
///             ^ invalid.illegal.stray.cs
///               ^ punctuation.section.block.end.cs

        while (true) {
///     ^ keyword.control
///           ^^^^^ meta.group
///           ^ punctuation.section.group.begin
///            ^^^^ constant.language
///                ^ punctuation.section.group.end
///                  ^ meta.method meta.block meta.block punctuation.section.block.begin
            if (!something())
///         ^^ keyword.control.conditional.if.cs
///            ^^^^^^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^ keyword.operator.logical.cs
///              ^^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                       ^^ meta.function-call.arguments.cs meta.group.cs
///                       ^ punctuation.section.group.begin.cs
///                        ^^ punctuation.section.group.end.cs
                break;
///             ^^^^^ keyword.control.flow.break.cs
///                  ^ punctuation.terminator.statement.cs
        }
///^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testGotoStatements()
    {
        goto
///     ^^^^ keyword.control.flow.goto.cs

        goto abc;
///     ^^^^ keyword.control.flow.goto.cs
///          ^^^ constant.other.label.cs
///             ^ punctuation.terminator.statement.cs
        abc:
///     ^^^ entity.name.label.cs
///        ^ punctuation.separator.colon.cs

        switch (test[0])
        {
            case 'a':
                goto case 'b';
///             ^^^^ keyword.control.flow.goto.cs
///                  ^^^^ keyword.control.conditional.case.cs
///                       ^^^ meta.string.cs string.quoted.single.cs
///                       ^ punctuation.definition.string.begin.cs
///                        ^ constant.character.literal.cs
///                         ^ punctuation.definition.string.end.cs
///                          ^ punctuation.terminator.statement.cs
            case 'b':
                break;
///             ^^^^^ keyword.control.flow.break.cs
///                  ^ punctuation.terminator.statement.cs
        }
///^^^^^^ meta.block.cs
///     ^ punctuation.section.block.end.cs
///      ^ - meta.switch
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testSwitchCaseStatements()
    {
        switch
///     ^^^^^^ keyword.control.conditional.switch.cs

        switch (foo) {
///     ^^^^^^ keyword.control.conditional.switch.cs
///            ^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^ variable.other.cs
///                ^ punctuation.section.group.end.cs
///                  ^^ meta.block.cs
///                  ^ punctuation.section.block.begin.cs
            case 1:
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^ meta.case.pattern.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ meta.case.cs punctuation.separator.colon.cs
                do_something();
///             ^ variable.function
                break;
///             ^^^^^ keyword.control.flow.break.cs
///                  ^ punctuation.terminator.statement.cs
            case BLBodyBattleLibrary.ContextType.TapUp:
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///              ^^^^^^^^^^^^^^^^^^^ support.type.cs
///                                 ^ punctuation.accessor.dot.cs
///                                  ^^^^^^^^^^^ variable.other.member.cs
///                                             ^ punctuation.accessor.dot.cs
///                                              ^^^^^ variable.other.member.cs
///                                                   ^ punctuation.separator.colon.cs
            case BindingFlags.Static:
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^^^^^^^^^^^^^^^^^ meta.case.pattern.cs
///              ^^^^^^^^^^^^ support.type.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^^ variable.other.member.cs
///                                 ^ meta.case.cs punctuation.separator.colon.cs
            case test:
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^^ meta.case.pattern.cs
///              ^^^^ variable.other.cs
///                  ^ meta.case.cs punctuation.separator.colon.cs
            case this.test;
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^^^^^^^ meta.case.pattern.cs
///              ^^^^ variable.language.this.cs
///                  ^ punctuation.accessor.dot.cs
///                   ^^^^ variable.other.member.cs
///                       ^ punctuation.terminator.statement.cs
            case 1*2:
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^ meta.case.pattern.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ keyword.operator.arithmetic.cs
///                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                 ^ meta.case.cs punctuation.separator.colon.cs
            case bar("hello"):
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^^^^^^^^^^ meta.case.pattern.cs
///              ^^^ meta.function-call.identifier.cs variable.function.cs
///                 ^^^^^^^^^ meta.function-call.arguments.cs meta.group.cs
///                 ^ punctuation.section.group.begin.cs
///                  ^^^^^^^ meta.string.cs string.quoted.double.cs
///                  ^ punctuation.definition.string.begin.cs
///                        ^ punctuation.definition.string.end.cs
///                         ^ punctuation.section.group.end.cs
///                          ^ meta.case.cs punctuation.separator.colon.cs
                break;
///             ^^^^^ keyword.control.flow.break.cs
///                  ^ punctuation.terminator.statement.cs
            case abc.def:
///         ^^^^ meta.case.cs keyword.control.conditional.case.cs
///             ^^^^^^^^ meta.case.pattern.cs
///              ^^^ variable.other.cs
///                 ^ punctuation.accessor.dot.cs
///                  ^^^ variable.other.cs
///                     ^ meta.case.cs punctuation.separator.colon.cs
            default:
///         ^^^^^^^ keyword.control.conditional.default.cs
///                ^ punctuation.separator.colon.cs
                do_something_else();
///             ^^^^^^^^^^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                              ^^ meta.function-call.arguments.cs meta.group.cs
///                              ^ punctuation.section.group.begin.cs
///                               ^ punctuation.section.group.end.cs
///                                ^ punctuation.terminator.statement.cs
                break;
///             ^^^^^ keyword.control.flow.break.cs
///                  ^ punctuation.terminator.statement.cs
        }
///^^^^^^ meta.method.body.cs meta.block.cs meta.block.cs
///     ^ punctuation.section.block.end.cs
///      ^ - meta.switch
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method
}
/// <- meta.class.body.cs meta.block.cs punctuation.section.block.end.cs


class TestLocalDefinitions
{
    void testLocalDefinitionModifiers()
    {
        const
///     ^^^^^ storage.modifier.cs

        const var i = 0;
///     ^^^^^ storage.modifier.cs
///           ^^^ storage.type.variant.cs
///               ^ variable.other.cs
///                 ^ keyword.operator.assignment.cs
///                   ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                    ^ punctuation.terminator.statement.cs

        static
///     ^^^^^^ storage.modifier.cs

        static int i = 0, k = 1;
///     ^^^^^^ storage.modifier.cs
///            ^^^ storage.type.primitive.cs
///                ^ variable.other.cs
///                  ^ keyword.operator.assignment.cs
///                    ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                     ^ punctuation.separator.comma.cs
///                       ^ variable.other.cs
///                         ^ keyword.operator.assignment.cs
///                           ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                            ^ punctuation.terminator.statement.cs

        unsafe
///     ^^^^^^ storage.modifier.cs

        unsafe type* k = &ptr;
///     ^^^^^^ storage.modifier.cs
///            ^^^^ support.type.cs
///                ^ keyword.operator.pointer.cs
///                  ^ variable.other.cs
///                    ^ keyword.operator.assignment.cs
///                      ^ keyword.operator.pointer.cs
///                       ^^^ variable.other.cs
///                          ^ punctuation.terminator.statement.cs
    }

    void testLocalDefinitionBaseTypes()
    {
        dynamic
///     ^^^^^^^ storage.type.primitive.cs

        dynamic i = 0, k = 1;
///     ^^^^^^^ storage.type.primitive.cs
///             ^ variable.other.cs
///               ^ keyword.operator.assignment.cs
///                 ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                  ^ punctuation.separator.comma.cs
///                    ^ variable.other.cs
///                      ^ keyword.operator.assignment.cs
///                        ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                         ^ punctuation.terminator.statement.cs

        var
///     ^^^ storage.type.variant.cs
        var
///     ^^^ variable.other.cs

        var var = 0;
///     ^^^ storage.type.variant.cs
///         ^^^ variable.other.cs
///             ^ keyword.operator.assignment.cs
///               ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                ^ punctuation.terminator.statement.cs

        var foo = 0, bar, baz;
///     ^^^ storage.type.variant.cs
///         ^^^ variable.other.cs
///             ^ keyword.operator.assignment.cs
///               ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                ^ invalid.illegal.stray.cs
///                  ^^^ variable.other.cs
///                     ^ invalid.illegal.stray.cs
///                       ^^^ variable.other.cs
///                          ^ punctuation.terminator.statement.cs

        long
///     ^^^^ storage.type.primitive.cs

        long i = 0, k = 1;
///     ^^^^ storage.type.primitive.cs
///          ^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.separator.comma.cs
///                 ^ variable.other.cs
///                   ^ keyword.operator.assignment.cs
///                     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                      ^ punctuation.terminator.statement.cs

        long?
///     ^^^^ storage.type.primitive.cs
///         ^ storage.modifier.nullable.cs

        long[]
///     ^^^^ storage.type.primitive.cs
///         ^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ punctuation.section.brackets.end.cs

        long[] i = 0, k = 1;
///     ^^^^ storage.type.primitive.cs
///         ^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ punctuation.section.brackets.end.cs
///            ^ variable.other.cs
///              ^ keyword.operator.assignment.cs
///                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                 ^ punctuation.separator.comma.cs
///                   ^ variable.other.cs
///                     ^ keyword.operator.assignment.cs
///                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                        ^ punctuation.terminator.statement.cs

        global::int i = 0, k = 1;
///     ^^^^^^ support.namespace.global.cs
///           ^^ punctuation.accessor.double-colon.namespace.cs
///             ^^^ storage.type.primitive.cs
///                 ^ variable.other.cs
///                   ^ keyword.operator.assignment.cs
///                     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                        ^ variable.other.cs
///                          ^ keyword.operator.assignment.cs
///                            ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                             ^ punctuation.terminator.statement.cs
    }

    void testLocalDefinitionUserTypes()
    {
        Type i = 0, k = 1;
///     ^^^^ support.type.cs
///          ^ variable.other.cs
///            ^ keyword.operator.assignment.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.separator.comma.cs
///                 ^ variable.other.cs
///                   ^ keyword.operator.assignment.cs
///                     ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                      ^ punctuation.terminator.statement.cs

        global::Type i = 0, k = 1;
///     ^^^^^^ support.namespace.global.cs
///           ^^ punctuation.accessor.double-colon.namespace.cs
///             ^^^^ support.type.cs
///                  ^ variable.other.cs
///                    ^ keyword.operator.assignment.cs
///                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^ punctuation.separator.comma.cs
///                         ^ variable.other.cs
///                           ^ keyword.operator.assignment.cs
///                             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                              ^ punctuation.terminator.statement.cs

        any::namespace::Type<T>.Type<T> i = 0;
///     ^^^ variable.namespace.cs
///        ^^ punctuation.accessor.double-colon.namespace.cs
///          ^^^^^^^^^ variable.namespace.cs
///                   ^^ punctuation.accessor.double-colon.namespace.cs
///                     ^^^^ support.type.cs
///                         ^^^ meta.generic.cs
///                         ^ punctuation.definition.generic.begin.cs
///                          ^ support.type.cs
///                           ^ punctuation.definition.generic.end.cs
///                            ^ punctuation.accessor.dot.cs
///                             ^^^^ support.type.cs
///                                 ^^^ meta.generic.cs
///                                 ^ punctuation.definition.generic.begin.cs
///                                  ^ support.type.cs
///                                   ^ punctuation.definition.generic.end.cs
///                                     ^ variable.other.cs
///                                       ^ keyword.operator.assignment.cs
///                                         ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                          ^ punctuation.terminator.statement.cs
    }
}


public class TestExpressions
{
    void testItemAccess()
    {
        base[];
///     ^^^^ variable.language.super.cs
///         ^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ punctuation.section.brackets.end.cs
///           ^ punctuation.terminator.statement.cs

        base[,];
///     ^^^^ variable.language.super.cs
///         ^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ punctuation.separator.comma.cs
///           ^ punctuation.section.brackets.end.cs
///            ^ punctuation.terminator.statement.cs

        base[0, 1];
///     ^^^^ variable.language.super.cs
///         ^^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///           ^ punctuation.separator.comma.cs
///             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^ punctuation.section.brackets.end.cs
///               ^ punctuation.terminator.statement.cs

        base?[0, 1]
///     ^^^^ variable.language.super.cs
///         ^ keyword.operator.null-coalescing.cs
///          ^^^^^^ meta.brackets.cs
///          ^ punctuation.section.brackets.begin.cs
///           ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///            ^ punctuation.separator.comma.cs
///              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///               ^ punctuation.section.brackets.end.cs

        list[][,];
///     ^^^^ variable.other.cs
///         ^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ punctuation.section.brackets.end.cs
///           ^ punctuation.section.brackets.begin.cs
///            ^ punctuation.separator.comma.cs
///             ^ punctuation.section.brackets.end.cs

        list[0, 1][2, 3];
///     ^^^^ variable.other.cs
///         ^^^^^^^^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///           ^ punctuation.separator.comma.cs
///             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^ punctuation.section.brackets.end.cs
///               ^ punctuation.section.brackets.begin.cs
///                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                 ^ punctuation.separator.comma.cs
///                   ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                    ^ punctuation.section.brackets.end.cs
///                     ^ punctuation.terminator.statement.cs

        list
            [0, 1]
///         ^^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///           ^ punctuation.separator.comma.cs
///             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^ punctuation.section.brackets.end.cs
            [2, 3];
///         ^^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///           ^ punctuation.separator.comma.cs
///             ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///              ^ punctuation.section.brackets.end.cs
///               ^ punctuation.terminator.statement.cs

        list[a: "value", b: 10];
///     ^^^^ variable.other.cs
///         ^^^^^^^^^^^^^^^^^^^ meta.brackets.cs
///         ^ punctuation.section.brackets.begin.cs
///          ^ variable.other.member.cs
///           ^ keyword.operator.assignment.cs
///             ^^^^^^^ meta.string.cs string.quoted.double.cs
///             ^ punctuation.definition.string.begin.cs
///                   ^ punctuation.definition.string.end.cs
///                    ^ punctuation.separator.comma.cs
///                      ^ variable.other.member.cs
///                       ^ keyword.operator.assignment.cs
///                         ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                           ^ punctuation.section.brackets.end.cs
///                            ^ punctuation.terminator.statement.cs
    }

    void testDefault()
    {
        default
///     ^^^^^^^ keyword.other.cs

        default(;)
///     ^^^^^^^ keyword.other.cs
///            ^ meta.group.cs punctuation.section.group.begin.cs
///             ^ punctuation.terminator.statement.cs
///              ^ invalid.illegal.stray.cs

        default(byte);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^ storage.type.primitive.cs
///                 ^ punctuation.section.group.end.cs
///                  ^ punctuation.terminator.statement.cs

        default(uint);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^ storage.type.primitive.cs
///                 ^ punctuation.section.group.end.cs
///                  ^ punctuation.terminator.statement.cs

        default(base);   // note: not supported here
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^ invalid.illegal.unexpected-token.cs
///                 ^ punctuation.section.group.end.cs
///                  ^ punctuation.terminator.statement.cs

        default(this);  // note: not supported here
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^ invalid.illegal.unexpected-token.cs
///                 ^ punctuation.section.group.end.cs
///                  ^ punctuation.terminator.statement.cs

        default(simple_name);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^^^^^^^ support.type.cs
///                        ^ punctuation.section.group.end.cs
///                         ^ punctuation.terminator.statement.cs

        default(AnyType);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^^^ support.type.cs
///                    ^ punctuation.section.group.end.cs
///                     ^ punctuation.terminator.statement.cs

        default(List<int>);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^ support.type.cs
///                 ^^^^^ meta.generic.cs
///                 ^ punctuation.definition.generic.begin.cs
///                  ^^^ storage.type.primitive.cs
///                     ^ punctuation.definition.generic.end.cs
///                      ^ punctuation.section.group.end.cs
///                       ^ punctuation.terminator.statement.cs

        default(global::name);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^^ support.namespace.global.cs
///                   ^^ punctuation.accessor.double-colon.namespace.cs
///                     ^^^^ support.type.cs
///                         ^ punctuation.section.group.end.cs
///                          ^ punctuation.terminator.statement.cs

        default(alias::name);
///     ^^^^^^^ keyword.other.cs
///            ^^^^^^^^^^^^^ meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^ variable.namespace.cs
///                  ^^ punctuation.accessor.double-colon.namespace.cs
///                    ^^^^ support.type.cs
///                        ^ punctuation.section.group.end.cs
///                         ^ punctuation.terminator.statement.cs
    }

    void testNameOf()
    {
        nameof
///     ^^^^^^ keyword.other.cs

        nameof(;)
///     ^^^^^^ keyword.other.cs
///           ^ meta.group.cs punctuation.section.group.begin.cs
///            ^ punctuation.terminator.statement.cs
///             ^ invalid.illegal.stray.cs

        nameof(byte);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

        nameof(uint);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

        nameof(base);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ variable.language.super.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

        nameof(this);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ variable.language.this.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

        nameof(simple_name);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^^^^^^ variable.other.cs
///                       ^ punctuation.section.group.end.cs
///                        ^ punctuation.terminator.statement.cs

        nameof(AnyType);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^^ support.type.cs
///                   ^ punctuation.section.group.end.cs
///                    ^ punctuation.terminator.statement.cs

        nameof(List<int>);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ support.type.cs
///                ^^^^^ meta.generic.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^^^ storage.type.primitive.cs
///                    ^ punctuation.definition.generic.end.cs
///                     ^ punctuation.section.group.end.cs
///                      ^ punctuation.terminator.statement.cs

        nameof(global::name);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^ support.namespace.global.cs
///                  ^^ punctuation.accessor.double-colon.namespace.cs
///                    ^^^^ variable.other.cs
///                        ^ punctuation.section.group.end.cs
///                         ^ punctuation.terminator.statement.cs

        nameof(alias::name);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^ variable.namespace.cs
///                 ^^ punctuation.accessor.double-colon.namespace.cs
///                   ^^^^ variable.other.cs
///                       ^ punctuation.section.group.end.cs
///                        ^ punctuation.terminator.statement.cs

        nameof(base.member)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ variable.language.super.cs
///                ^ punctuation.accessor.dot.cs
///                 ^^^^^^ variable.other.cs
///                       ^ punctuation.section.group.end.cs

        nameof(base.member<T>)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ variable.language.super.cs
///                ^ punctuation.accessor.dot.cs
///                 ^^^^^^ support.type.cs
///                       ^^^ meta.generic.cs
///                       ^ punctuation.definition.generic.begin.cs
///                        ^ support.type.cs
///                         ^ punctuation.definition.generic.end.cs
///                          ^ punctuation.section.group.end.cs

        nameof(this.member<T>)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ variable.language.this.cs
///                ^ punctuation.accessor.dot.cs
///                 ^^^^^^ support.type.cs
///                       ^^^ meta.generic.cs
///                       ^ punctuation.definition.generic.begin.cs
///                        ^ support.type.cs
///                         ^ punctuation.definition.generic.end.cs
///                          ^ punctuation.section.group.end.cs

        nameof(this.member<T>.member)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ variable.language.this.cs
///                ^ punctuation.accessor.dot.cs
///                 ^^^^^^ support.type.cs
///                       ^^^ meta.generic.cs
///                       ^ punctuation.definition.generic.begin.cs
///                        ^ support.type.cs
///                         ^ punctuation.definition.generic.end.cs
///                          ^ punctuation.accessor.dot.cs
///                           ^^^^^^ variable.other.cs
///                                 ^ punctuation.section.group.end.cs

        new Exc("Value must be positive", nameof(argument));
///                                       ^^^^^^ keyword.other.cs
///                                             ^^^^^^^^^^ meta.group.cs
///                                             ^ punctuation.section.group.begin.cs
///                                              ^^^^^^^^ variable.other.cs
///                                                      ^ punctuation.section.group.end.cs
    }

    void testSizeOf()
    {
        sizeof
///     ^^^^^^ keyword.other.cs

        sizeof(;)
///     ^^^^^^ keyword.other.cs
///           ^ meta.group.cs punctuation.section.group.begin.cs
///            ^ punctuation.terminator.statement.cs
///             ^ invalid.illegal.stray.cs

        sizeof(byte)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.end.cs

        sizeof(u8)
///     ^^^^^^ keyword.other.cs
///           ^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^ support.type.cs
///              ^ punctuation.section.group.end.cs
    }

    void testTypeOf()
    {
        typeof
///     ^^^^^^ keyword.other.cs

        typeof(;)
///     ^^^^^^ keyword.other.cs
///           ^ meta.group.cs punctuation.section.group.begin.cs
///            ^ punctuation.terminator.statement.cs
///             ^ invalid.illegal.stray.cs

        typeof(byte)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.end.cs

        typeof(u8)
///     ^^^^^^ keyword.other.cs
///           ^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^ support.type.cs
///              ^ punctuation.section.group.end.cs

        typeof(ns::u8)
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^ variable.namespace.cs
///              ^^ punctuation.accessor.double-colon.namespace.cs
///                ^^ support.type.cs
///                  ^ punctuation.section.group.end.cs

        typeof(ns::u8<T>[])
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^ variable.namespace.cs
///              ^^ punctuation.accessor.double-colon.namespace.cs
///                ^^ support.type.cs
///                  ^^^ meta.generic.cs
///                  ^ punctuation.definition.generic.begin.cs
///                   ^ support.type.cs
///                    ^ punctuation.definition.generic.end.cs
///                     ^^ meta.brackets.cs
///                     ^ punctuation.section.brackets.begin.cs
///                      ^ punctuation.section.brackets.end.cs
///                       ^ punctuation.section.group.end.cs

        typeof(System.Int32);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^ support.type.cs
///                  ^ punctuation.accessor.dot.cs
///                   ^^^^^ support.type.cs
///                        ^ punctuation.section.group.end.cs
///                         ^ punctuation.terminator.statement.cs

        typeof(double[]);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^^^ storage.type.primitive.cs
///                  ^^ meta.brackets.cs
///                  ^ punctuation.section.brackets.begin.cs
///                   ^ punctuation.section.brackets.end.cs
///                    ^ punctuation.section.group.end.cs
///                     ^ punctuation.terminator.statement.cs

        typeof(void);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

        typeof(T);
///     ^^^^^^ keyword.other.cs
///           ^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ support.type.cs
///             ^ punctuation.section.group.end.cs
///              ^ punctuation.terminator.statement.cs

        typeof(X<T>);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ support.type.cs
///             ^^^ meta.generic.cs
///             ^ punctuation.definition.generic.begin.cs
///              ^ support.type.cs
///               ^ punctuation.definition.generic.end.cs
///                ^ punctuation.section.group.end.cs
///                 ^ punctuation.terminator.statement.cs

        typeof(X<X<T>>);
///     ^^^^^^ keyword.other.cs
///           ^^^^^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ support.type.cs
///             ^^^^^^ meta.generic.cs
///             ^ punctuation.definition.generic.begin.cs
///              ^ support.type.cs
///               ^^^ meta.generic.cs
///               ^ punctuation.definition.generic.begin.cs
///                ^ support.type.cs
///                 ^ punctuation.definition.generic.end.cs
///                  ^ punctuation.definition.generic.end.cs
///                   ^ punctuation.section.group.end.cs
///                    ^ punctuation.terminator.statement.cs

        typeof(X<>);
///     ^^^^^^ keyword.other.cs
///           ^^^^^ meta.group.cs
///           ^ punctuation.section.group.begin.cs
///            ^ support.type.cs
///             ^^ meta.generic.cs
///             ^ punctuation.definition.generic.begin.cs
///              ^ punctuation.definition.generic.end.cs
///               ^ punctuation.section.group.end.cs
///                ^ punctuation.terminator.statement.cs
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testLambdaDelegateExpressions()
    {
        y = delegate (int x) { return x + 1; } // Anonymous method expression
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.anonymous meta.function.anonymous
///         ^^^^^^^^^ meta.function.anonymous.cs
///                  ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                         ^ meta.function.anonymous.cs
///                          ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///         ^^^^^^^^ keyword.declaration.delegate.cs
///                  ^ punctuation.section.group.begin.cs
///                   ^^^ storage.type.primitive.cs
///                       ^ variable.parameter.cs
///                        ^ punctuation.section.group.end.cs
///                          ^ punctuation.section.block.begin.cs
///                            ^^^^^^ keyword.control.flow.return.cs
///                                   ^ variable.other.cs
///                                     ^ keyword.operator.arithmetic.cs
///                                       ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                        ^ punctuation.terminator.statement.cs
///                                          ^ punctuation.section.block.end.cs

        y = static delegate (int x) { return x + 1; } // static anonymous method expression
///                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.anonymous meta.function.anonymous
///                ^^^^^^^^^ meta.function.anonymous.cs
///                         ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                                ^ meta.function.anonymous.cs
///                                 ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///         ^^^^^^ storage.modifier.cs
///                ^^^^^^^^ keyword.declaration.delegate.cs
///                         ^ punctuation.section.group.begin.cs
///                          ^^^ storage.type.primitive.cs
///                              ^ variable.parameter.cs
///                               ^ punctuation.section.group.end.cs
///                                 ^ punctuation.section.block.begin.cs
///                                   ^^^^^^ keyword.control.flow.return.cs
///                                          ^ variable.other.cs
///                                            ^ keyword.operator.arithmetic.cs
///                                              ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                               ^ punctuation.terminator.statement.cs
///                                                 ^ punctuation.section.block.end.cs

        y = delegate { return 1 + 1; } // Parameter list omitted
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.anonymous meta.function.anonymous
///         ^^^^^^^^^ meta.function.anonymous.cs
///                  ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///         ^^^^^^^^ keyword.declaration.delegate.cs
///                  ^ punctuation.section.block.begin.cs
///                    ^^^^^^ keyword.control.flow.return.cs
///                           ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                             ^ keyword.operator.arithmetic.cs
///                               ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                ^ punctuation.terminator.statement.cs
///                                  ^ punctuation.section.block.end.cs

        y = delegate
///         ^^^^^^^^^ meta.function.anonymous.cs
///         ^^^^^^^^ keyword.declaration.delegate.cs
            (int i)
///^^^^^^^^^ meta.function.anonymous.cs
///         ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ storage.type.primitive.cs
///              ^ variable.parameter.cs
///               ^ punctuation.section.group.end.cs
///                ^ meta.function.anonymous.cs
            {
///^^^^^^^^^ meta.function.anonymous.cs
///         ^^ meta.function.anonymous.body.cs meta.block.cs
///         ^ punctuation.section.block.begin.cs
                if (i == 0)
///             ^^ keyword.control.conditional.if.cs
///                ^^^^^^^^ meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^ variable.other.cs
///                   ^^ keyword.operator.comparison.cs
///                      ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                       ^ punctuation.section.group.end.cs
                    return true;
///                 ^^^^^^ keyword.control.flow.return.cs
///                        ^^^^ constant.language.boolean.true.cs
///                            ^ punctuation.terminator.statement.cs
                else
///             ^^^^ keyword.control.conditional.else.cs
                    return false;
///                 ^^^^^^ keyword.control.flow.return.cs
///                        ^^^^^ constant.language.boolean.false.cs
            };
///^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///         ^ punctuation.section.block.end.cs
///          ^ punctuation.terminator.statement.cs
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testLambdaExpressions ()
    {
        a = b => b * 2;  // Implicitly typed, expression body
///         ^ meta.function.anonymous.parameters.cs
///          ^^^^ meta.function.anonymous.cs
///              ^^^^^ meta.function.anonymous.body.cs
///         ^ variable.parameter.cs
///           ^^ keyword.declaration.function.arrow.cs
///              ^ variable.other.cs
///                ^ keyword.operator.arithmetic.cs
///                  ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                   ^ punctuation.terminator.statement.cs

        a = b => { return b * 2; };  // Implicitly typed, block body
///         ^ meta.function.anonymous.parameters.cs
///          ^^^^ meta.function.anonymous.cs
///              ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///                               ^ - meta.function.anonymous
///         ^ variable.parameter.cs
///           ^^ keyword.declaration.function.arrow.cs
///              ^ punctuation.section.block.begin.cs
///                              ^ punctuation.section.block.end.cs
///                               ^ punctuation.terminator.statement.cs

        a = (int b) => b + 1;  // Explicitly typed, expression body
///         ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                ^^^^ meta.function.anonymous.cs
///                    ^^^^^ meta.function.anonymous.body.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ storage.type.primitive.cs
///              ^ variable.parameter.cs
///               ^ punctuation.section.group.end.cs
///                 ^^ keyword.declaration.function.arrow.cs
///                    ^ variable.other.cs
///                      ^ keyword.operator.arithmetic.cs
///                        ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                         ^ punctuation.terminator.statement.cs

        a = (int b) => { return b + 1; }  // Explicitly typed, block body
///         ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                ^^^^ meta.function.anonymous.cs
///                    ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ storage.type.primitive.cs
///              ^ variable.parameter.cs
///               ^ punctuation.section.group.end.cs
///                 ^^ keyword.declaration.function.arrow.cs
///                    ^ punctuation.section.block.begin.cs
///                      ^^^^^^ keyword.control.flow.return.cs
///                             ^ variable.other.cs
///                               ^ keyword.operator.arithmetic.cs
///                                 ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                  ^ punctuation.terminator.statement.cs
///                                    ^ punctuation.section.block.end.cs

        a = static (int b) => b + 1;  // static anonymous function, explicitly typed, expression body
///         ^^^^^^ storage.modifier.cs
///                ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                       ^^^^ meta.function.anonymous.cs
///                           ^^^^^ meta.function.anonymous.body.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^ storage.type.primitive.cs
///                     ^ variable.parameter.cs
///                      ^ punctuation.section.group.end.cs
///                        ^^ keyword.declaration.function.arrow.cs
///                           ^ variable.other.cs
///                             ^ keyword.operator.arithmetic.cs
///                               ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                ^ punctuation.terminator.statement.cs

        a = static (int b) => { return b + 1; }  // static anonymous function, explicitly typed, block body
///         ^^^^^^ storage.modifier.cs
///                ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                       ^^^^ meta.function.anonymous.cs
///                           ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^ storage.type.primitive.cs
///                     ^ variable.parameter.cs
///                      ^ punctuation.section.group.end.cs
///                        ^^ keyword.declaration.function.arrow.cs
///                           ^ punctuation.section.block.begin.cs
///                             ^^^^^^ keyword.control.flow.return.cs
///                                    ^ variable.other.cs
///                                      ^ keyword.operator.arithmetic.cs
///                                        ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                         ^ punctuation.terminator.statement.cs
///                                           ^ punctuation.section.block.end.cs

        a = (b, c) => b * c;  // Multiple parameters, implicitly typed, expression body
///         ^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^ variable.parameter.cs
///           ^ punctuation.separator.comma.cs
///             ^ variable.parameter.cs
///              ^ punctuation.section.group.end.cs
///               ^^^^ meta.function.anonymous.cs
///                ^^ keyword.declaration.function.arrow.cs
///                   ^^^^^ meta.function.anonymous.body.cs
///                   ^ variable.other.cs
///                     ^ keyword.operator.arithmetic.cs
///                       ^ variable.other.cs

        a = (b, c) => { return b * c; };  // Multiple parameters, implicitly typed, block body
///         ^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///               ^^^^ meta.function.anonymous.cs
///                   ^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs meta.block.cs
///         ^ punctuation.section.group.begin.cs
///          ^ variable.parameter.cs
///           ^ punctuation.separator.comma.cs
///             ^ variable.parameter.cs
///              ^ punctuation.section.group.end.cs
///                ^^ keyword.declaration.function.arrow.cs
///                   ^ punctuation.section.block.begin.cs
///                     ^^^^^^ keyword.control.flow.return.cs
///                            ^ variable.other.cs
///                              ^ keyword.operator.arithmetic.cs
///                                ^ variable.other.cs
///                                 ^ punctuation.terminator.statement.cs
///                                   ^ punctuation.section.block.end.cs
///                                    ^ punctuation.terminator.statement.cs

        a = () => Console.WriteLine(); // No parameters
///         ^^ meta.function.anonymous.parameters.cs meta.group.cs
///           ^^^^ meta.function.anonymous.cs
///               ^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs
///         ^ punctuation.section.group.begin.cs
///          ^ punctuation.section.group.end.cs
///            ^^ keyword.declaration.function.arrow.cs
///               ^^^^^^^ variable.other.cs
///                      ^ punctuation.accessor.dot.cs
///                       ^^^^^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                ^^ meta.function-call.arguments.cs meta.group.cs
///                                ^ punctuation.section.group.begin.cs
///                                 ^ punctuation.section.group.end.cs
///                                  ^ punctuation.terminator.statement.cs

        a = async (t1,t2) => await t1 + await t2;  // Async
///         ^^^^^ storage.modifier.cs
///               ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                      ^^^^ meta.function.anonymous.cs
///                          ^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs
///               ^ punctuation.section.group.begin.cs
///                ^^ variable.parameter.cs
///                  ^ punctuation.separator.comma.cs
///                   ^^ variable.parameter.cs
///                     ^ punctuation.section.group.end.cs
///                       ^^ keyword.declaration.function.arrow.cs
///                          ^^^^^ keyword.control.flow.await.cs
///                                ^^ variable.other.cs
///                                   ^ keyword.operator.arithmetic.cs
///                                     ^^^^^ keyword.control.flow.await.cs
///                                           ^^ variable.other.cs
///                                             ^ punctuation.terminator.statement.cs

        a = (var, dynamic, vec) => var + vec;   // augment soft keywords and types
///     ^ variable.other.cs
///       ^ keyword.operator.assignment.cs
///         ^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ variable.parameter.cs
///             ^ punctuation.separator.comma.cs
///               ^^^^^^^ variable.parameter.cs
///                      ^ punctuation.separator.comma.cs
///                        ^^^ variable.parameter.cs
///                           ^ punctuation.section.group.end.cs
///                            ^^^^ meta.function.anonymous.cs
///                             ^^ keyword.declaration.function.arrow.cs
///                                ^^^^^^^^^ meta.function.anonymous.body.cs
///                                ^^^ variable.other.cs
///                                    ^ keyword.operator.arithmetic.cs
///                                      ^^^ variable.other.cs
///                                         ^ punctuation.terminator.statement.cs

        a = (\u0076\u0061\u0072, \u0076\u0061\u0072 \u0062) => var + \u0062;
///         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^^^^^^^^^^^^^^^^ variable.parameter.cs
///                            ^ punctuation.separator.comma.cs
///                              ^^^^^^^^^^^^^^^^^^ support.type.cs
///                                                 ^^^^^^ variable.parameter.cs
///                                                       ^ punctuation.section.group.end.cs
///                                                        ^^^^ meta.function.anonymous.cs
///                                                         ^^ keyword.declaration.function.arrow.cs
///                                                            ^^^^^^^^^^^^ meta.function.anonymous.body.cs
///                                                            ^^^ variable.other.cs
///                                                                ^ keyword.operator.arithmetic.cs
///                                                                  ^^^^^^ variable.other.cs
///                                                                        ^ punctuation.terminator.statement.cs

        a = (var a, dynamic b, vec c) => a + b;  // lower-case var and user types
///         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^ punctuation.section.group.begin.cs
///          ^^^ storage.type.variant.cs
///              ^ variable.parameter.cs
///               ^ punctuation.separator.comma.cs
///                 ^^^^^^^ storage.type.primitive.cs
///                         ^ variable.parameter.cs
///                          ^ punctuation.separator.comma.cs
///                            ^^^ support.type.cs
///                                ^ variable.parameter.cs
///                                 ^ punctuation.section.group.end.cs
///                                  ^^^^ meta.function.anonymous.cs
///                                   ^^ keyword.declaration.function.arrow.cs
///                                      ^^^^^ meta.function.anonymous.body.cs
///                                      ^ variable.other.cs
///                                        ^ keyword.operator.arithmetic.cs
///                                          ^ variable.other.cs
///                                           ^ punctuation.terminator.statement.cs

        a = (
///         ^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^ punctuation.section.group.begin.cs
            var
///        ^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^^^ storage.type.variant.cs
                a       // comment
///            ^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///             ^ variable.parameter.cs
///                     ^^^^^^^^^^^ comment.line.double-slash.cs
///                     ^^ punctuation.definition.comment.cs
            ,
///         ^ punctuation.separator.comma.cs
            vec
///        ^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///         ^^^ support.type.cs
                c
///            ^^^ meta.function.anonymous.parameters.cs meta.group.cs
///             ^ variable.parameter.cs
        )
///^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///     ^ punctuation.section.group.end.cs
///      ^ meta.function.anonymous.cs
        =>
///^^^^^^^^ meta.function.anonymous.cs
///     ^^ keyword.declaration.function.arrow.cs
        a + b;
///^^^^^ meta.function.anonymous.cs
///     ^^^^^ meta.function.anonymous.body.cs
///     ^ variable.other.cs
///       ^ keyword.operator.arithmetic.cs
///         ^ variable.other.cs
///          ^ punctuation.terminator.statement.cs

        Func<string, bool, int> test = (a, b) => a.len();
///                                    ^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                                    ^ punctuation.section.group.begin.cs
///                                     ^ variable.parameter.cs
///                                      ^ punctuation.separator.comma.cs
///                                        ^ variable.parameter.cs
///                                         ^ punctuation.section.group.end.cs
///                                          ^^^^ meta.function.anonymous.cs
///                                           ^^ keyword.declaration.function.arrow.cs
///                                              ^^^^^^^ meta.function.anonymous.body.cs
///                                              ^ variable.other.cs
///                                               ^ punctuation.accessor.dot.cs
///                                                ^^^ meta.function-call.identifier.cs variable.function.cs
///                                                   ^^ meta.function-call.arguments.cs meta.group.cs
///                                                   ^ punctuation.section.group.begin.cs
///                                                    ^ punctuation.section.group.end.cs
///                                                     ^ punctuation.terminator.statement.cs

        var test = (Action)(() => "hello".Dump());
///                ^^^^^^^^ meta.cast.cs meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^^^^ support.type.cs
///                       ^ punctuation.section.group.end.cs
///                        ^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///                        ^ punctuation.section.group.begin.cs
///                         ^^ meta.function.anonymous.parameters.cs meta.group.cs
///                         ^ punctuation.section.group.begin.cs
///                          ^ punctuation.section.group.end.cs
///                           ^^^^ meta.function.anonymous.cs
///                            ^^ keyword.declaration.function.arrow.cs
///                               ^^^^^^^^^^^^^^ meta.function.anonymous.body.cs
///                               ^^^^^^^ meta.string.cs string.quoted.double.cs
///                               ^ punctuation.definition.string.begin.cs
///                                     ^ punctuation.definition.string.end.cs
///                                      ^ punctuation.accessor.dot.cs
///                                       ^^^^ meta.function-call.identifier.cs variable.function.cs
///                                           ^^ meta.function-call.arguments.cs meta.group.cs
///                                           ^ punctuation.section.group.begin.cs
///                                            ^ punctuation.section.group.end.cs
///                                             ^ punctuation.section.group.end.cs
///                                              ^ punctuation.terminator.statement.cs

        test = (Action)(() => {});
///            ^^^^^^^^ meta.cast.cs meta.group.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^^^^ support.type.cs
///                   ^ punctuation.section.group.end.cs
///                    ^^^^^^^^^^ meta.group.cs
///                    ^ punctuation.section.group.begin.cs
///                     ^^ meta.function.anonymous.parameters.cs meta.group.cs
///                     ^ punctuation.section.group.begin.cs
///                      ^ punctuation.section.group.end.cs
///                       ^^^^ meta.function.anonymous.cs
///                        ^^ keyword.declaration.function.arrow.cs
///                           ^^ meta.function.anonymous.body.cs meta.block.cs
///                           ^ punctuation.section.block.begin.cs
///                            ^ punctuation.section.block.end.cs
///                             ^ punctuation.section.group.end.cs
///                              ^ punctuation.terminator.statement.cs

        var concat = string ([DisallowNull] global::str<char>?[,] a, [DisallowNull] string b) => a + b;
///     ^^^ storage.type.variant.cs
///         ^^^^^^ variable.other.cs
///                ^ keyword.operator.assignment.cs
///                  ^^^^^^ storage.type.primitive.cs
///                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                         ^ punctuation.section.group.begin.cs
///                          ^^^^^^^^^^^^^^ meta.annotation.cs
///                          ^ punctuation.definition.annotation.begin.cs
///                           ^^^^^^^^^^^^ variable.annotation.cs
///                                       ^ punctuation.definition.annotation.end.cs
///                                         ^^^^^^ support.namespace.global.cs
///                                               ^^ punctuation.accessor.double-colon.namespace.cs
///                                                 ^^^ support.type.cs
///                                                    ^^^^^^ meta.generic.cs
///                                                    ^ punctuation.definition.generic.begin.cs
///                                                     ^^^^ storage.type.primitive.cs
///                                                         ^ punctuation.definition.generic.end.cs
///                                                          ^ storage.modifier.nullable.cs
///                                                           ^^^ meta.brackets.cs
///                                                           ^ punctuation.section.brackets.begin.cs
///                                                            ^ punctuation.separator.comma.cs
///                                                             ^ punctuation.section.brackets.end.cs
///                                                               ^ variable.parameter.cs
///                                                                ^ punctuation.separator.comma.cs
///                                                                  ^^^^^^^^^^^^^^ meta.annotation.cs
///                                                                  ^ punctuation.definition.annotation.begin.cs
///                                                                   ^^^^^^^^^^^^ variable.annotation.cs
///                                                                               ^ punctuation.definition.annotation.end.cs
///                                                                                 ^^^^^^ storage.type.primitive.cs
///                                                                                        ^ variable.parameter.cs
///                                                                                         ^ punctuation.section.group.end.cs
///                                                                                          ^^^^ meta.function.anonymous.cs
///                                                                                           ^^ keyword.declaration.function.arrow.cs
///                                                                                              ^^^^^ meta.function.anonymous.body.cs
///                                                                                              ^ variable.other.cs
///                                                                                                ^ keyword.operator.arithmetic.cs
///                                                                                                  ^ variable.other.cs
///                                                                                                   ^ punctuation.terminator.statement.cs

        Func<string, int?> parse = [X][return: Y] ([Z] s) => (s is not null) ? int.Parse(s) : null;
///     ^^^^ support.type.cs
///         ^^^^^^^^^^^^^^ meta.generic.cs
///         ^ punctuation.definition.generic.begin.cs
///          ^^^^^^ storage.type.primitive.cs
///                ^ punctuation.separator.comma.cs
///                  ^^^ storage.type.primitive.cs
///                     ^ storage.modifier.nullable.cs
///                      ^ punctuation.definition.generic.end.cs
///                        ^^^^^ variable.other.cs
///                              ^ keyword.operator.assignment.cs
///                                ^^^^^^^^^^^^^^ meta.annotation.cs
///                                ^ punctuation.definition.annotation.begin.cs
///                                 ^ variable.annotation.cs
///                                  ^ punctuation.definition.annotation.end.cs
///                                   ^ punctuation.definition.annotation.begin.cs
///                                    ^^^^^^ storage.modifier.target.cs
///                                          ^ punctuation.separator.key-value.cs
///                                            ^ variable.annotation.cs
///                                             ^ punctuation.definition.annotation.end.cs
///                                               ^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                                               ^ punctuation.section.group.begin.cs
///                                                ^^^ meta.annotation.cs
///                                                ^ punctuation.definition.annotation.begin.cs
///                                                 ^ variable.annotation.cs
///                                                  ^ punctuation.definition.annotation.end.cs
///                                                    ^ variable.parameter.cs
///                                                     ^ punctuation.section.group.end.cs
///                                                      ^^^^ meta.function.anonymous.cs
///                                                       ^^ keyword.declaration.function.arrow.cs
///                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs
///                                                          ^^^^^^^^^^^^^^^ meta.group.cs
///                                                          ^ punctuation.section.group.begin.cs
///                                                           ^ variable.other.cs
///                                                             ^^ keyword.operator.comparison.type.cs
///                                                                ^^^ keyword.operator.logical.cs
///                                                                    ^^^^ constant.language.null.cs
///                                                                        ^ punctuation.section.group.end.cs
///                                                                          ^ keyword.operator.ternary.cs
///                                                                            ^^^ storage.type.primitive.cs
///                                                                               ^ punctuation.accessor.dot.cs
///                                                                                ^^^^^ meta.function-call.identifier.cs variable.function.cs
///                                                                                     ^^^ meta.function-call.arguments.cs meta.group.cs
///                                                                                     ^ punctuation.section.group.begin.cs
///                                                                                      ^ variable.other.cs
///                                                                                       ^ punctuation.section.group.end.cs
///                                                                                         ^ keyword.operator.ternary.cs
///                                                                                           ^^^^ constant.language.null.cs
///                                                                                               ^ punctuation.terminator.statement.cs

        var var = refs.ToDictionary(kvp => kvp.key, arg => k + 5);
///                                 ^^^ meta.function.anonymous.parameters.cs
///                                    ^^^ meta.function.anonymous.cs
///                                        ^^^^^^^ meta.function.anonymous.body.cs
///                                               ^^ - meta.function.anonymous
///                                                 ^^^ meta.function.anonymous.parameters.cs
///                                                    ^^^^ meta.function.anonymous.cs
///                                                        ^^^^^ meta.function.anonymous.body.cs
///                                                             ^ - meta.function.anonymous
///                                 ^^^ variable.parameter.cs
///                                     ^^ keyword.declaration.function.arrow.cs
///                                        ^^^ variable.other.cs
///                                               ^ punctuation.separator.comma.cs
///                                                 ^^^ variable.parameter.cs
///                                                     ^^ keyword.declaration.function.arrow.cs
///                                                        ^ variable.other.cs
///                                                          ^ keyword.operator.arithmetic.cs
///                                                            ^ meta.number.integer.decimal.cs

        var var = digits.Where((digit, index) => digit.Length < index);
///                           ^ - meta.function.anonymous
///                            ^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///                                          ^^^^ meta.function.anonymous.cs
///                                              ^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.cs
///                                                                  ^^ - meta.function.anonymous
///                            ^ punctuation.section.group.begin.cs
///                             ^^^^^ variable.parameter.cs
///                                  ^ punctuation.separator.comma.cs
///                                    ^^^^^ variable.parameter.cs
///                                         ^ punctuation.section.group.end.cs
///                                           ^^ keyword.declaration.function.arrow.cs
///                                              ^^^^^ variable.other.cs

        var var = ((int, int) arg, vec arg) => foo * baz;
///               ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.cs meta.group.cs
///               ^ punctuation.section.group.begin.cs
///                ^^^^^^^^^^ meta.sequence.tuple.cs
///                ^ punctuation.section.sequence.begin.cs
///                 ^^^ storage.type.primitive.cs
///                    ^ punctuation.separator.comma.cs
///                      ^^^ storage.type.primitive.cs
///                         ^ punctuation.section.sequence.end.cs
///                           ^^^ variable.parameter.cs
///                              ^ punctuation.separator.comma.cs
///                                ^^^ support.type.cs
///                                    ^^^ variable.parameter.cs
///                                       ^ punctuation.section.group.end.cs
///                                        ^^^^ meta.function.anonymous.cs
///                                         ^^ keyword.declaration.function.arrow.cs
///                                            ^^^^^^^^^ meta.function.anonymous.body.cs
///                                            ^^^ variable.other.cs
///                                                ^ keyword.operator.arithmetic.cs
///                                                  ^^^ variable.other.cs
///                                                     ^ punctuation.terminator.statement.cs

        "hello".OfType<char>().Where(c => c == 'l').Count());
///                                                        ^ invalid.illegal.stray
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testTypeCastExpressions()
    {
        (byte);
///     ^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs

        (byte) var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^ variable.other.cs
///               ^ punctuation.terminator.statement.cs

        (byte) ~var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^ keyword.operator.bitwise.cs
///             ^^^ variable.other.cs
///                ^ punctuation.terminator.statement.cs

        (byte) !var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^ keyword.operator.logical.cs
///             ^^^ variable.other.cs
///                ^ punctuation.terminator.statement.cs

        (byte) --var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^ keyword.operator.arithmetic.cs
///              ^^^ variable.other.cs
///                 ^ punctuation.terminator.statement.cs

        (byte) ++var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^ keyword.operator.arithmetic.cs
///              ^^^ variable.other.cs
///                 ^ punctuation.terminator.statement.cs

        (byte) global::var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^^^^ support.namespace.global.cs
///                  ^^ punctuation.accessor.double-colon.namespace.cs
///                    ^^^ variable.other.cs
///                       ^ punctuation.terminator.statement.cs

        (byte) var.var;
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^ variable.other.cs
///               ^ punctuation.accessor.dot.cs
///                ^^^ variable.other.cs
///                   ^ punctuation.terminator.statement.cs

        (byte) func();
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^^ meta.function-call.identifier.cs variable.function.cs
///                ^^ meta.function-call.arguments.cs meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^ punctuation.section.group.end.cs
///                  ^ punctuation.terminator.statement.cs

        (byte) global::func();
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^^^^ support.namespace.global.cs
///                  ^^ punctuation.accessor.double-colon.namespace.cs
///                    ^^^^ meta.function-call.identifier.cs variable.function.cs
///                        ^^ meta.function-call.arguments.cs meta.group.cs
///                        ^ punctuation.section.group.begin.cs
///                         ^ punctuation.section.group.end.cs
///                          ^ punctuation.terminator.statement.cs

        (byte) var.func();
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^ variable.other.cs
///               ^ punctuation.accessor.dot.cs
///                ^^^^ meta.function-call.identifier.cs variable.function.cs
///                    ^^ meta.function-call.arguments.cs meta.group.cs
///                    ^ punctuation.section.group.begin.cs
///                     ^ punctuation.section.group.end.cs
///                      ^ punctuation.terminator.statement.cs

        (byte) new other();
///     ^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^^^^^^^^^^ meta.instantiation.cs
///            ^^^ keyword.operator.new.cs
///                ^^^^^ meta.function-call.identifier.cs support.type.cs
///                     ^^ meta.function-call.arguments.cs meta.group.cs
///                     ^ punctuation.section.group.begin.cs
///                      ^ punctuation.section.group.end.cs
///                       ^ punctuation.terminator.statement.cs

        (byte[,]) var;
///     ^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^^^ meta.brackets.cs
///          ^ punctuation.section.brackets.begin.cs
///           ^ punctuation.separator.comma.cs
///            ^ punctuation.section.brackets.end.cs
///             ^ punctuation.section.group.end.cs
///               ^^^ variable.other.cs
///                  ^ punctuation.terminator.statement.cs

        ((float,int)) var;
///     ^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^^^ storage.type.primitive.cs
///            ^ punctuation.separator.comma.cs
///             ^^^ storage.type.primitive.cs
///                ^ punctuation.section.sequence.end.cs
///                 ^ punctuation.section.group.end.cs
///                   ^^^ variable.other.cs
///                      ^ punctuation.terminator.statement.cs

        ((float,int)[]) var;
///     ^^^^^^^^^^^^^^^ meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^^^ storage.type.primitive.cs
///            ^ punctuation.separator.comma.cs
///             ^^^ storage.type.primitive.cs
///                ^ punctuation.section.sequence.end.cs
///                 ^^ meta.brackets.cs
///                 ^ punctuation.section.brackets.begin.cs
///                  ^ punctuation.section.brackets.end.cs
///                   ^ punctuation.section.group.end.cs
///                     ^^^ variable.other.cs
///                        ^ punctuation.terminator.statement.cs

        ((float i1,int i2)[]) var;
///     ^^^^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^^^ storage.type.primitive.cs
///             ^^ variable.other.cs
///               ^ punctuation.separator.comma.cs
///                ^^^ storage.type.primitive.cs
///                    ^^ variable.other.cs
///                      ^ punctuation.section.sequence.end.cs
///                       ^^ meta.brackets.cs
///                       ^ punctuation.section.brackets.begin.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ punctuation.section.group.end.cs
///                           ^^^ variable.other.cs
///                              ^ punctuation.terminator.statement.cs

        (global::char[10]) var;
///     ^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.namespace.global.cs
///            ^^ punctuation.accessor.double-colon.namespace.cs
///              ^^^^ storage.type.primitive.cs
///                  ^^^^ meta.brackets.cs
///                  ^ punctuation.section.brackets.begin.cs
///                   ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                     ^ punctuation.section.brackets.end.cs
///                      ^ punctuation.section.group.end.cs
///                        ^^^ variable.other.cs
///                           ^ punctuation.terminator.statement.cs

        (byte)(var + global::func());
///     ^^^^^^ meta.cast.cs meta.group.cs
///           ^^^^^^^^^^^^^^^^^^^ meta.group.cs - meta.group meta.group
///                              ^^ meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                                ^ meta.group.cs - meta.group meta.group
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///           ^ punctuation.section.group.begin.cs
///            ^^^ variable.other.cs
///                ^ keyword.operator.arithmetic.cs
///                  ^^^^^^ support.namespace.global.cs
///                        ^^ punctuation.accessor.double-colon.namespace.cs
///                          ^^^^ variable.function.cs
///                              ^ punctuation.section.group.begin.cs
///                               ^^ punctuation.section.group.end.cs
///                                 ^ punctuation.terminator.statement.cs

        ((byte)(var + global::func()));
///     ^ meta.group.cs - meta.group meta.group
///      ^^^^^^ meta.group.cs meta.cast.cs meta.group.cs
///            ^^^^^^^^^^^^^^^^^^^ meta.group.cs meta.group.cs - meta.group meta.group meta.group
///                               ^^ meta.group.cs meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                                 ^ meta.group.cs meta.group.cs - meta.group meta.group meta.group
///                                  ^ meta.group.cs - meta.group meta.group
///     ^^ punctuation.section.group.begin.cs
///       ^^^^ storage.type.primitive.cs
///           ^ punctuation.section.group.end.cs
///            ^ punctuation.section.group.begin.cs
///             ^^^ variable.other.cs
///                 ^ keyword.operator.arithmetic.cs
///                   ^^^^^^ support.namespace.global.cs
///                         ^^ punctuation.accessor.double-colon.namespace.cs
///                           ^^^^ variable.function.cs
///                               ^ punctuation.section.group.begin.cs
///                                ^^^ punctuation.section.group.end.cs
///                                   ^ punctuation.terminator.statement.cs

        ((int)foo)((type)bar<0)var;
///     ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^ meta.cast.cs meta.group.cs
///      ^ punctuation.section.group.begin.cs
///       ^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///           ^^^ variable.other.cs
///              ^ punctuation.section.group.end.cs
///               ^ punctuation.section.group.begin.cs
///                ^^^^^^ meta.cast.cs meta.group.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^^ support.type.cs
///                     ^ punctuation.section.group.end.cs
///                      ^^^ variable.other.cs
///                         ^ keyword.operator.comparison.cs
///                          ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                           ^ punctuation.section.group.end.cs
///                            ^^^ variable.other.cs

        ((int)foo)<0 && ((type)bar<0) ~fn();
///     ^^^^^^^^^^ meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^ meta.cast.cs meta.group.cs
///      ^ punctuation.section.group.begin.cs
///       ^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///           ^^^ variable.other.cs
///              ^ punctuation.section.group.end.cs
///               ^ keyword.operator.comparison.cs
///                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                  ^^ keyword.operator.logical.cs
///                     ^^^^^^^^^^^^^ meta.group.cs
///                     ^ punctuation.section.group.begin.cs
///                      ^^^^^^ meta.cast.cs meta.group.cs
///                      ^ punctuation.section.group.begin.cs
///                       ^^^^ support.type.cs
///                           ^ punctuation.section.group.end.cs
///                            ^^^ variable.other.cs
///                               ^ keyword.operator.comparison.cs
///                                ^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                                 ^ punctuation.section.group.end.cs
///                                   ^ keyword.operator.bitwise.cs
///                                    ^^ meta.function-call.identifier.cs variable.function.cs
///                                      ^^ meta.function-call.arguments.cs meta.group.cs
///                                      ^ punctuation.section.group.begin.cs
///                                       ^ punctuation.section.group.end.cs
///                                        ^ punctuation.terminator.statement.cs

        (mytype) base;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^ variable.language.super.cs

        (mytype) this;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^ variable.language.this.cs

        (mytype) var;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^ variable.other.cs
///                 ^ punctuation.terminator.statement.cs

        (mytype) --var;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^ keyword.operator.arithmetic.cs
///                ^^^ variable.other.cs
///                   ^ punctuation.terminator.statement.cs

        (mytype) ++var;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^ keyword.operator.arithmetic.cs
///                ^^^ variable.other.cs
///                   ^ punctuation.terminator.statement.cs

        (mytype) global::var;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^^^ support.namespace.global.cs
///                    ^^ punctuation.accessor.double-colon.namespace.cs
///                      ^^^ variable.other.cs
///                         ^ punctuation.terminator.statement.cs

        (mytype) var.var;
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^ variable.other.cs
///                 ^ punctuation.accessor.dot.cs
///                  ^^^ variable.other.cs
///                     ^ punctuation.terminator.statement.cs

        (mytype) func();
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^ meta.function-call.identifier.cs variable.function.cs
///                  ^^ meta.function-call.arguments.cs meta.group.cs
///                  ^ punctuation.section.group.begin.cs
///                   ^ punctuation.section.group.end.cs
///                    ^ punctuation.terminator.statement.cs

        (mytype) global::func();
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^^^ support.namespace.global.cs
///                    ^^ punctuation.accessor.double-colon.namespace.cs
///                      ^^^^ meta.function-call.identifier.cs variable.function.cs
///                          ^^ meta.function-call.arguments.cs meta.group.cs
///                          ^ punctuation.section.group.begin.cs
///                           ^ punctuation.section.group.end.cs
///                            ^ punctuation.terminator.statement.cs

        (mytype) var.func();
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^ variable.other.cs
///                 ^ punctuation.accessor.dot.cs
///                  ^^^^ meta.function-call.identifier.cs variable.function.cs
///                      ^^ meta.function-call.arguments.cs meta.group.cs
///                      ^ punctuation.section.group.begin.cs
///                       ^ punctuation.section.group.end.cs
///                        ^ punctuation.terminator.statement.cs

        (mytype) new other();
///     ^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^ punctuation.section.group.end.cs
///              ^^^^^^^^^^^ meta.instantiation.cs
///              ^^^ keyword.operator.new.cs
///                  ^^^^^ meta.function-call.identifier.cs support.type.cs
///                       ^^ meta.function-call.arguments.cs meta.group.cs
///                       ^ punctuation.section.group.begin.cs
///                        ^ punctuation.section.group.end.cs
///                         ^ punctuation.terminator.statement.cs

        (mytype[]) var;
///     ^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^^ meta.brackets.cs
///            ^ punctuation.section.brackets.begin.cs
///             ^ punctuation.section.brackets.end.cs
///              ^ punctuation.section.group.end.cs
///                ^^^ variable.other.cs
///                   ^ punctuation.terminator.statement.cs

        ((mytype,mytype)) var;
///     ^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^^^^ support.type.cs
///             ^ punctuation.separator.comma.cs
///              ^^^^^^ support.type.cs
///                    ^ punctuation.section.sequence.end.cs
///                     ^ punctuation.section.group.end.cs
///                       ^^^ variable.other.cs
///                          ^ punctuation.terminator.statement.cs

        ((mytype,mytype)[]) var;
///     ^^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^^^^ support.type.cs
///             ^ punctuation.separator.comma.cs
///              ^^^^^^ support.type.cs
///                    ^ punctuation.section.sequence.end.cs
///                     ^^ meta.brackets.cs
///                     ^ punctuation.section.brackets.begin.cs
///                      ^ punctuation.section.brackets.end.cs
///                       ^ punctuation.section.group.end.cs
///                         ^^^ variable.other.cs
///                            ^ punctuation.terminator.statement.cs

        ((mytype i1,mytype i2)[]) var;
///     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.cs
///      ^ punctuation.section.sequence.begin.cs
///       ^^^^^^ support.type.cs
///              ^^ variable.other.cs
///                ^ punctuation.separator.comma.cs
///                 ^^^^^^ support.type.cs
///                        ^^ variable.other.cs
///                          ^ punctuation.section.sequence.end.cs
///                           ^^ meta.brackets.cs
///                           ^ punctuation.section.brackets.begin.cs
///                            ^ punctuation.section.brackets.end.cs
///                             ^ punctuation.section.group.end.cs
///                               ^^^ variable.other.cs
///                                  ^ punctuation.terminator.statement.cs

        (mytype<T>) var;
///     ^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^^^ meta.generic.cs
///            ^ punctuation.definition.generic.begin.cs
///             ^ support.type.cs
///              ^ punctuation.definition.generic.end.cs
///               ^ punctuation.section.group.end.cs
///                 ^^^ variable.other.cs
///                    ^ punctuation.terminator.statement.cs

        (mytype<T>?[,][]) var;
///     ^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ support.type.cs
///            ^^^ meta.generic.cs
///            ^ punctuation.definition.generic.begin.cs
///             ^ support.type.cs
///              ^ punctuation.definition.generic.end.cs
///               ^ storage.modifier.nullable.cs
///                ^^^^^ meta.brackets.cs
///                ^ punctuation.section.brackets.begin.cs
///                 ^ punctuation.separator.comma.cs
///                  ^ punctuation.section.brackets.end.cs
///                   ^ punctuation.section.brackets.begin.cs
///                    ^ punctuation.section.brackets.end.cs
///                     ^ punctuation.section.group.end.cs
///                       ^^^ variable.other.cs
///                          ^ punctuation.terminator.statement.cs

        (NS::mytype<T>?[,][].mysubtype<T>?[]) var;
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
///     ^ punctuation.section.group.begin.cs
///      ^^ variable.namespace.cs
///        ^^ punctuation.accessor.double-colon.namespace.cs
///          ^^^^^^ support.type.cs
///                ^^^ meta.generic.cs
///                ^ punctuation.definition.generic.begin.cs
///                 ^ support.type.cs
///                  ^ punctuation.definition.generic.end.cs
///                   ^ storage.modifier.nullable.cs
///                    ^^^^^ meta.brackets.cs
///                    ^ punctuation.section.brackets.begin.cs
///                     ^ punctuation.separator.comma.cs
///                      ^ punctuation.section.brackets.end.cs
///                       ^ punctuation.section.brackets.begin.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ punctuation.accessor.dot.cs
///                          ^^^^^^^^^ support.type.cs
///                                   ^^^ meta.generic.cs
///                                   ^ punctuation.definition.generic.begin.cs
///                                    ^ support.type.cs
///                                     ^ punctuation.definition.generic.end.cs
///                                      ^ storage.modifier.nullable.cs
///                                       ^^ meta.brackets.cs
///                                       ^ punctuation.section.brackets.begin.cs
///                                        ^ punctuation.section.brackets.end.cs
///                                         ^ punctuation.section.group.end.cs
///                                           ^^^ variable.other.cs
///                                              ^ punctuation.terminator.statement.cs

        ((Test.Example . State)item.State).ToString();
///      ^^^^^^^^^^^^^^^^^^^^^^ meta.cast
///      ^ punctuation.section.group.begin
///                           ^ punctuation.section.group.end
///                            ^^^^ variable.other - meta.cast
///       ^^^^ support.type
///           ^ punctuation.accessor.dot
///            ^^^^^^^ support.type
///                    ^ punctuation.accessor.dot
///                      ^^^^^ support.type

        (string)((SomeClass)test).value;
///     ^^^^^^^^ meta.cast
///      ^^^^^^ storage.type
///             ^ meta.group - meta.cast
///              ^^^^^^^^^^^ meta.cast
///               ^^^^^^^^^ support.type
///                         ^^^^ variable.other
///                             ^ meta.group - meta.cast
    }
///^^ meta.method.body.cs meta.block.cs
/// ^ punctuation.section.block.end.cs
///  ^ meta.class.body.cs meta.block.cs - meta.method

    void testGroupNoTypeCastExpressions()
    {
        (byte) -var;
///     ^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^ keyword.operator.arithmetic.cs
///             ^^^ variable.other.cs
///                ^ punctuation.terminator.statement.cs

        (byte) +var;
///     ^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^ keyword.operator.arithmetic.cs
///             ^^^ variable.other.cs
///                ^ punctuation.terminator.statement.cs

        (byte) is null
///     ^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^ keyword.operator.comparison.type.cs
///               ^^^^ constant.language.null.cs

        (byte) as type
///     ^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^ storage.type.primitive.cs
///          ^ punctuation.section.group.end.cs
///            ^^ keyword.operator.cast.cs
///               ^^^^ support.type.cs

        (mytype) -var;
///     ^^^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ variable.other.cs
///            ^ punctuation.section.group.end.cs
///              ^ keyword.operator.arithmetic.cs
///               ^^^ variable.other.cs
///                  ^ punctuation.terminator.statement.cs

        (mytype) +var;
///     ^^^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ variable.other.cs
///            ^ punctuation.section.group.end.cs
///              ^ keyword.operator.arithmetic.cs
///               ^^^ variable.other.cs
///                  ^ punctuation.terminator.statement.cs

        (mytype) is null
///     ^^^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ variable.other.cs
///            ^ punctuation.section.group.end.cs
///              ^^ keyword.operator.comparison.type.cs
///                 ^^^^ constant.language.null.cs

        (mytype) as type
///     ^^^^^^^^ meta.group.cs - meta.cast
///     ^ punctuation.section.group.begin.cs
///      ^^^^^^ variable.other.cs
///            ^ punctuation.section.group.end.cs
///              ^^ keyword.operator.cast.cs
///                 ^^^^ support.type.cs

        (var) and (var) or (var) not and (var);
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.cast

        (var) + (var) - (var) * (var) / (var);
///     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.cast
    }
}
