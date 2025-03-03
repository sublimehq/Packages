// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

fn foo() {}
// @@@ definition

enum MyEnum {}
//   @@@@@@ definition

macro_rules! my_macro []
//           @@@@@@@@ definition

mod my_mod { }
//  @@@@@@ definition

struct MyStruct {
//     @@@@@@@@ definition

    const A = 0;
//        @ definition

    fn bar() {}
//     @@@ definition
}

trait MyTrait {}
//    @@@@@@@ definition

type MyType;
//   @@@@@@ definition

union Union {}
//    @@@@@ definition


enum AnotherEnum {
//   @@@@@@@@@@@ definition
    Foo,
//  @@@ definition
    Bar {
//  @@@ definition
        toggle: bool,
    },
    Baz(MyEnum),
//  @@@ definition
}
