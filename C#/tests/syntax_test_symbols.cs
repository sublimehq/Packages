/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

/**
 * Namespaces
 */

namespace Base.MyNamespace {
///            @@@@@@@@@@@ definition
}


/**
 * Preprocessor
 */

#define MYCONSANT
///     @@@@@@@@@ definition


/**
 * Regions
 */

#region My  Region
///     @@@@@@@@@@ local-definition "#region My Region"
#endregion


/**
 * Using
 */

using Base.MyNamespace;

using alias = Base.MyNamespace;
///   @@@@@ local-definition

using alias = Base.MyNamespace.MyClass<T>;
///   @@@@@ local-definition

using TupleType = (var item1, vec3 item2);
///   @@@@@@@@@ definition

using TupleType tuple = [alias, [0, 1, 0]];
///             @@@@@ local-definition


/**
 * Enums
 */

enum BaseEnum {
///  @@@@@@@@ definition

    foo = 0,
/// @@@ definition

    bar = 1
/// @@@ definition
}

enum MyEnum : BaseEnum {
///  @@@@@@ definition
///           @@@@@@@@ reference
    baz = 2
/// @@@ definition
}


/**
 * Interfaces
 */

interface MyBaseInterface {
///       @@@@@@@@@@@@@@@ definition

    public int method(int arg) {
///            @@@@@@ definition
        return arg;
    }
}

interface MyInterface : MyBaseInterface {
///       @@@@@@@@@@@ definition
///                     @@@@@@@@@@@@@@@ reference

    protected struct NestedInterface {
///                  @@@@@@@@@@@@@@@ definition
        int nestedField = 0;
///         @@@@@@@@@@@ definition
    }

    public event MyBaseInterface onEvent;
///                              @@@@@@@ definition

    public int field = 0;
///            @@@@@ definition

    public int property => field;
///            @@@@@@@@ definition

    public MyInterface(Type1 arg) {
///        @@@@@@@@@@@ definition
    }

    public ~MyInterface() {
///        @@@@@@@@@@@@ definition
    }

    public int method(int arg) {
///            @@@@@@ definition
        return arg;
    }

    public int MyBaseInterface.method(int arg) {
///            @@@@@@@@@@@@@@@ reference
///                            @@@@@@ definition
        return arg;
    }

    public int this[int arg] => field;
///            @@@@ definition

    public int operator + (int arg) => filed + arg;
///                     @ definition
}


/**
 * Classes
 */

class MyBaseClass {
///   @@@@@@@@@@@ definition

    public int method(int arg) {
///            @@@@@@ definition
        return arg;
    }
}

class MyClass(Type1 arg) : MyBaseClass {
///   @@@@@@@ definition
///                        @@@@@@@@@@@ reference

    extension(int number)
    {
        public void Increment() => number++;
///                 @@@@@@@@@ definition
    }

    protected struct NestedClass {
///                  @@@@@@@@@@@ definition
        int nestedField = 0;
///         @@@@@@@@@@@ definition
    }

    public event MyBaseClass onEvent;
///                          @@@@@@@ definition

    public int field = 0;
///            @@@@@ definition

    public int property => field;
///            @@@@@@@@ definition

    public MyClass(Type1 arg) {
///        @@@@@@@ definition
    }

    public ~MyClass() {
///        @@@@@@@@ definition
    }

    public int method(int arg) {
///            @@@@@@ definition
        return arg;
    }

    public int MyBaseClass.method(int arg) {
///            @@@@@@@@@@@ reference
///                        @@@@@@ definition
        return arg;
    }

    public int this[int arg] => field;
///            @@@@ definition

    public int operator + (int arg) => filed + arg;
///                     @ definition
}


/**
 * Structs
 */

struct MyBaseStruct {
///    @@@@@@@@@@@@ definition

    public int method(int arg) {
///            @@@@@@ definition
        return arg;
    }
}

struct MyStruct(Type1 arg) : MyBaseStruct {
///    @@@@@@@@ definition
///                          @@@@@@@@@@@@ reference

    protected struct NestedStruct {
///                  @@@@@@@@@@@@ definition
        int nestedField = 0;
///         @@@@@@@@@@@ definition
    }

    public event MyBaseStruct onEvent;
///                           @@@@@@@ definition

    public int field = 0;
///            @@@@@ definition

    public int property => field;
///            @@@@@@@@ definition

    public MyStruct(Type1 arg) {
///        @@@@@@@@ definition
    }

    public ~MyStruct() {
///        @@@@@@@@@ definition
    }

    public int method(int arg) {
///            @@@@@@ definition
        return arg;
    }

    public int MyBaseStruct.method(int arg) {
///            @@@@@@@@@@@@ reference
///                         @@@@@@ definition
        return arg;
    }

    public int this[int arg] => field;
///            @@@@ definition

    public int operator + (int arg) => filed + arg;
///                     @ definition
}


/**
 * Records
 */

record MyRecord;
///    @@@@@@@@ definition

record class MyRecord;
///          @@@@@@@@ definition

record struct MyRecord;
///           @@@@@@@@ definition


/**
 * Unions
 */

union MyUnion(Type1, Type2);
///   @@@@@@@ definition

union MyUnion(Type1, Type2) {
///   @@@@@@@ definition

    union MyUnion(Type1, Type2)
///       @@@@@@@ definition

    int method(type arg) { return 0; }
///     @@@@@@ definition

}
