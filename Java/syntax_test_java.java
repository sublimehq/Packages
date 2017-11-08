// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

package apple;
// <- source.java meta.package.java keyword.other.package.java
//      ^ meta.package.java support.other.package.java
//           ^ meta.package.java punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.other.import.java
//     ^ meta.import.java support.class.import.java
//        ^ punctuation.accessor.dot.java
//              ^ meta.import.java punctuation.terminator.java

import static a.b.Class.fooMethod;
// <- meta.import.java keyword.other.import.java
//     ^  meta.import.java storage.modifier.static.java
//            ^ meta.import.java support.function.import.java
//                     ^ punctuation.accessor.dot.java
//                               ^ meta.import.java punctuation.terminator.java

import static a.b.Class.CONSTANT;
/*                      ^ constant.other.java */

public class SyntaxTest {
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class
// ^^^ storage.modifier.java
//     ^^^^^ storage.type.java
//           ^^^^^^^^^^ meta.class.identifier entity.name.class.java
//                     ^ - meta.class.identifier.java - meta.class.body.java
//                      ^ meta.class.body.java
    private String memberString = "Hello";
    private String memberString2 = new String("Hello");
//                                     ^^^^^^ support.class.java
    private String memberString3 = String.valueOf("Hello");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.assignment.rhs.java
//  ^^^^^^^ storage.modifier.java
//          ^^^^^^ support.class.java
//                               ^ keyword.operator.assignment.java
//                                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                                                ^^^^^^^ string.quoted.double.java
//                                                ^ punctuation.definition.string.begin.java
//                                                      ^ punctuation.definition.string.end.java
//                                                       ^ - string.quoted.double.java
//                                                        ^ punctuation.terminator.java - meta.assignment.rhs.java
    private int memberLpos = memberString3.indexOf("l");
//          ^^^ storage.type
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                                                 ^^^ string
//                                                     ^ punctuation.terminator.java

    public static void main(String... args) {
//                     ^^^^^^^^^^^^^^^^^^^^^^^ meta.method
//  ^^^^^^ storage.modifier.java
//         ^^^^^^ storage.modifier.java
//                ^^^^ storage.type
//                     ^^^^ meta.method.identifier.java entity.name.function.java
//                         ^^^^^^^^^^^^^^^^ meta.method.parameters.java
//                         ^ punctuation.section.parens.begin.java
//                                ^^^ keyword.operator.variadic.java
//                           ^^^^^ support.class.java
//                                    ^^^^ variable.parameter.java
//                                        ^ punctuation.section.parens.end.java
//                                         ^ - meta.method.parameters
//                                          ^ meta.method.body.java punctuation.section.block.begin.java
        String[] strings = new String[5];
//                        ^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                         ^^^ keyword.control.new.java
//                                    ^ constant.numeric.java
        printList(Arrays.stream(args)
            .collect(Collectors.toCollection(ArrayList::new)));
//                                                      ^^^ meta.method.body.java - keyword.control.new.java
//                                                      ^^^ variable.function.reference.java
//                                                    ^^ punctuation.accessor.double-colon.java
        anotherMethod();
        try (Stream<String> lines = Files.lines(path)) {
//      ^^^ keyword.control.catch-exception.java
//                                 ^^^^^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                                                    ^ - meta.parens.java
//                                                   ^ meta.method.body.java - meta.assignment.rhs.java
            lines.forEach(System.out::println);
//                                    ^^^^^^^ variable.function.reference.java
        }
        for (int i = 0; i < 10; i+= 2) {
//      ^^^ keyword.control
//           ^^^ storage.type
//                 ^ keyword.operator.assignment.java
//                   ^ constant.numeric.java
//                  ^^ meta.assignment.rhs.java
//                    ^ punctuation.terminator.java - meta.assignment.rhs.java
//                        ^ keyword.operator.comparison.java
//                          ^^ constant.numeric.java
//                            ^ punctuation.terminator.java
//                               ^^ keyword.operator.assignment.java
//                                 ^^ meta.assignment.rhs.java
//                                   ^ - meta.assignment.rhs.java
            System.out.println(i);
        }
    }
//  ^ meta.method.java meta.method.body.java punctuation.section.block.end.java
    private static void printList(List<String> args) {
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
//  ^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//                 ^^^^ storage.type
//                      ^^^^^^^^^ meta.method.identifier entity.name.function.java
//                               ^^^^^^^^^^^^^^^^^^^ meta.method.parameters
//                                     ^^^^^^ support.class.java
//                                             ^^^^ variable.parameter.java
//                                                  ^^ - meta.method.identifier.java
//                                                   ^^ meta.method.body.java
        args.stream().forEach(System.out::println);
//                                      ^^ punctuation.accessor.double-colon.java
    }

    private static void anotherMethod() throws MyException<Abc> {
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
//  ^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//                 ^^^^ storage.type
//                      ^^^^^^^^^^^^^ meta.method.identifier entity.name.function.java
//                                   ^^ meta.method.parameters
//                                      ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.throws
//                                      ^^^^^^ storage.modifier.java
//                                                        ^^^^^ meta.generic.java
//                                                             ^ - meta.method.throws
//                                                              ^^ meta.method.body.java
        throw new MyException
                ("hello (world)");
//                              ^ - string
    }

    <T> void save(T obj);
//           ^^^^^^^^^^^ meta.method
//  ^^^ meta.generic
//   ^  variable.parameter.type
//      ^^^^ storage.type
//           ^^^^ meta.method.identifier
//               ^^^^^^^ meta.method.parameters
}

class ExtendsTest extends Foo {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                ^^^^^^^^^^^ meta.class.extends
//                ^^^^^^^ keyword.declaration.extends.java
//                        ^^^ entity.other.inherited-class.java
//                           ^ - meta.class.extends

class ExtendsTest implements Foo {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                ^^^^^^^^^^^^^^ meta.class.implements.java
//                ^^^^^^^^^^ keyword.declaration.implements.java
//                           ^^^ entity.other.inherited-class.java
//                              ^ - meta.class.implements.java

class Foo<A> extends Bar<? extends A> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//       ^^^ meta.generic.java
//        ^ variable.parameter.type.java
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends
//                         ^^^^^^^ keyword.declaration.extends.java

class ExtendsAndImplementsTest extends Foo implements Bar<Foo>, OtherBar {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                             ^^^^^^^^^^^ meta.class.extends
//                             ^^^^^^^ keyword.declaration.extends.java
//                                     ^^^ entity.other.inherited-class.java
//                                        ^ - meta.class.extends
//                                         ^^^^^^^^^^^^^^ meta.class.implements.java
//                                         ^^^^^^^^^^ keyword.declaration.implements.java
//                                                    ^^^^^^^^ meta.generic.java
//                                                    ^^^ entity.other.inherited-class.java
//                                                            ^ punctuation.separator.implements.java
//                                                              ^^^^^^^^ entity.other.inherited-class.java
//                                                                      ^ - meta.class.implements.java

class AnyClass {
//    ^^^^^^^^ entity.name.class.java
    int bar; // this comment() is recognized as code
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
//           ^^ punctuation.definition.comment.java

    public void anyMethod(String finality){
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method
//              ^^^^^^^^^ meta.method.identifier
//                       ^^^^^^^^^^^^^^^^^ meta.method.parameters
//                               ^^^^^^^^ variable.parameter - storage.modifier
//                                        ^^ meta.method.body.java - meta.method.identifier.java
        System.out.println("Printed: " + finality);
//                                     ^ keyword.operator
    }

    public abstract <A> void test(A thing);
//                  ^^^ meta.generic.java
//                   ^ variable.parameter.type.java

    public void test2(Type) abc
//                          ^^^ - variable.parameter
//                          ^ - meta.method.java
}
// <- punctuation.section.block.end.java

public enum FooBaz {
//     ^^^^ storage.type.java
//^^^^^^^^^^^^^^^^^^ meta.class
//          ^^^^^^ meta.class.identifier.java entity.name.class.java
//                 ^ meta.class.body
    // This is a test
//  ^^^^^^^^^^^^^^^^^^ comment.line
    UPLOAD("foo bar"), /* This a comment */
//  ^^^^^^ constant.other.enum
//         ^^^^^^^^^ string.quoted.double.java
//                     ^^^^^^^^^^^^^^^^^^^^ comment.block
//                                         ^ - comment.block
    DELETE("baz"),
//  ^^^^^^ constant.other.enum
    // Comment here
//  ^^^^^^^^^^^^^^^^ comment.line
}

enum MyEnum {
  FIRST_VALUE, // comment1
//^^^^^^^^^^^ constant.other.enum
//             ^^^^^^^^^^^ comment
  MID_VALUE,   // comment2
//^^^^^^^^^ constant.other.enum
//             ^^^^^^^^^^^ comment
  LAST_VALUE   // comment3
//^^^^^^^^^^ constant.other.enum
//             ^^^^^^^^^^^ comment
}

class InvalidStuff
{
    goto
//  ^^^^ invalid.illegal

    const int 3;
//  ^^^^^ invalid.illegal
}

public class Lambdas {
  volatile int foo;
//^^^^^^^^ storage.modifier.java

  void anonymousFunctions() {
     foo();
//   ^^^ variable.function.java

// Capital names are usually used for classes
     Foo();
//   ^^^ variable.function.java

     foo ();
//   ^^^ variable.function.java
     this.<A>foo();
//           ^^^ variable.function.java
//        ^^^ meta.generic.java
//        ^ punctuation.definition.generic.begin.java
//         ^ support.class.java
     this.<B> foo();
//            ^^^ variable.function.java
//        ^^^ meta.generic.java
//        ^ punctuation.definition.generic.begin.java
//         ^ support.class.java

     Function<String, Integer> func = a -> 42;
//                                  ^^^^^^^^^ meta.assignment.rhs.java
//                                    ^ variable.parameter.java
//                                      ^^ storage.type.function.anonymous.java
//                                         ^^ constant.numeric
//                                           ^ punctuation.terminator.java
     foo(a -> 42);
//   ^^^^^^^^^^^^ meta.function-call.java
//   ^^^ variable.function.java
//      ^ punctuation.section.parens.begin.java
//       ^ variable.parameter.java
//         ^^ storage.type.function.anonymous.java
//            ^^ constant.numeric
//              ^ punctuation.section.parens.end.java
//               ^ punctuation.terminator.java

     a -> { return 42; };
//        ^^^^^^^^^^^^^^ meta.function.anonymous.body.java

     (a, b) -> 42;
//    ^ variable.parameter.java
//       ^ variable.parameter.java
//          ^^ storage.type.function.anonymous.java
//             ^^ constant.numeric

     (int a, Foo<Integer>[] b) -> 42;
//    ^^^ storage.type.primitive
//        ^ variable.parameter.java
//           ^^^ support.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^^^^ support.class.java
//                      ^ punctuation.definition.generic.end.java
//                          ^ variable.parameter.java
//                             ^^ storage.type.function.anonymous.java
//                                ^^ constant.numeric

  // Lambda parameter tests
  Function<String, String> lambda1 = (final @MyAnnotation String foo) -> foo;
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^ storage.modifier.java
//                                          ^^^^^^^^^^^^^ meta.annotation
//                                          ^ punctuation.definition.annotation
//                                                        ^^^^^^ support.class.java - meta.annotation
//                                                               ^^^ variable.parameter.java
//                                                                    ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda2 = (@MyAnnotation String foo) -> foo;
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^^^^^^^^^ meta.annotation
//                                    ^ punctuation.definition.annotation
//                                                  ^^^^^^ support.class.java - meta.annotation
//                                                         ^^^ variable.parameter.java
//                                                              ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda3 = (@MyAnnotation(foo = Foo.BAR) String foo) -> foo;
//                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//                                    ^ punctuation.definition.annotation
//                                                  ^^^ variable.parameter.java
//                                                        ^^^ support.class.java
//                                                           ^ punctuation.accessor.dot.java
//                                                            ^^^ constant.other.java
//                                                                 ^^^^^^ support.class.java - meta.annotation
//                                                                        ^^^ variable.parameter.java
//                                                                             ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda4 = (String foo) -> foo;
//                                   ^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^^^^ support.class.java - meta.annotation
//                                           ^^^ variable.parameter.java
//                                                ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda5 = (foo) -> foo;
//                                   ^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                         ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda6 = foo -> foo;
//                                   ^^^ meta.function.anonymous.parameters.java
//                                   ^^^ variable.parameter.java
//                                       ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String[], String> lambda7 = (String... foo) -> foo[0];
//                                     ^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                      ^^^^^^ support.class.java - meta.annotation
//                                            ^^^ keyword.operator.variadic.java
//                                                ^^^ variable.parameter.java
//                                                     ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  IntFunction<String> intLambda1 = (int foo) -> String.valueOf(foo);
//                                 ^^^^^^^^^ meta.function.anonymous.parameters.java
//                                  ^^^ storage.type.primitive - meta.annotation
//                                      ^^^ variable.parameter.java
//                                           ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  new Foo<Abc>();
//       ^^^^^ meta.generic.java
//        ^^^ support.class.java
//       ^ punctuation.definition.generic.begin.java
//           ^ punctuation.definition.generic.end.java

  new Foo<?>();
//        ^ keyword.operator.wildcard.java

  new Foo<? extends Bar, String>();
//        ^ keyword.operator.wildcard.java
//                  ^^^ support.class.java
//          ^^^^^^^ keyword.declaration.extends.java
//                     ^ punctuation.separator.java
  //                     ^^^^^^ support.class.java

  new Foo<? super Bar>();
//        ^ keyword.operator.wildcard.java
//          ^^^^^ keyword.declaration.super.java

  new Foo<int>();
//        ^^^ invalid.illegal.primitive-instantiation.java

  new Foo<String, int>();
//        ^^^^^^ support.class.java
//                ^^^ invalid.illegal.primitive-instantiation.java
  new Foo<a.b.FooBar>();
/*       ^^^^^^^^^^^^ meta.generic.java */
  }
}

public class Test {

    void test1() {
        Foo.abc();
//         ^ punctuation.accessor.dot.java
//          ^^^ variable.function.java
        Foo.class;
//         ^ punctuation.accessor.dot.java
//          ^^^^^ variable.language.java - storage.type.java
//               ^ punctuation.terminator.java
    }

    void test2() {
//       ^^^^^ entity.name.function.java
    }
}

@ClassName.FixMethodOrder( MethodSorters.NAME_ASCENDING )
// <- meta.annotation punctuation.definition.annotation
 // <- meta.annotation.identifier
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters
//                                      ^ punctuation.accessor.dot
//                                       ^ constant
public class GrafoTest {
    @Override
//  ^^^^^^^^^ meta.annotation
//  ^ punctuation.definition.annotation
//   ^^^^^^^^ variable.annotation.java
    void test1() {
//       ^ entity.name.function
    }

    @Author(first = "Oompah", last = "Loompah")
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//  ^ punctuation.definition.annotation
//   ^^^^^^ meta.annotation.identifier variable.annotation.java
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters
//         ^ punctuation.section.parens.begin
//          ^^^^^ variable.parameter.java
//                ^ keyword.operator
//                  ^^^^^^^^ string
//                          ^ punctuation.separator.java
//                            ^^^^ variable.parameter.java
//                                 ^ keyword.operator
//                                   ^^^^^^^^ string
//                                            ^ punctuation.section.parens.end
    void test2() {
//       ^ entity.name.function

        Grafo grafo = new Grafo( true );
        final Grafo temposMaisCedo = new Grafo( true );
//      ^ storage.modifier
//            ^ support.class
    }
}

public enum FooEnum {
//     ^^^^ storage.type.java
  FOO;
//^^^ constant.other.enum
}
// <- meta.class.java meta.class.body.java punctuation.section.block.end.java

public enum FooBarEnum {
//     ^^^^ storage.type.java
  FOO,
//^^^ constant.other.enum
  BAR;
//^^^ constant.other.enum
}

public enum AbstractEnum {
//     ^^^^ storage.type.java
  FOO {
//^^^ constant.other.enum
//    ^ meta.enum.java meta.enum.body.java punctuation.section.braces.begin.java
    public void doSomething() { return; }
//              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
  },
//^ meta.enum.java meta.enum.body.java punctuation.section.braces.end.java
  BAR {
//^^^ constant.other.enum
    public void doSomething() { return; }
//              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
  };

  public abstract void doSomething();
//                     ^^^^^^^^^^^^^ meta.method.java
}

public final class SomeClass<V extends OtherClass, T> extends BaseClass<V> {
//                          ^ punctuation.definition.generic.begin.java
//                                                  ^ punctuation.definition.generic.end.java
//                                               ^ punctuation.separator.java
//                                     ^ support.class.java
//                                                                         ^ punctuation.section.block.begin.java
}
@MultiLineAnnotation(
// <- meta.annotation.java
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^ variable.annotation.java
//                  ^ meta.annotation.java meta.annotation.parameters.java punctuation.section.parens.begin.java
  foo = BAR,
//^^^ variable.parameter.java
//    ^ keyword.operator.assignment.java
//      ^ constant.other.java
//         ^ punctuation.separator.java
  other = "foo"
//^^^^^ variable.parameter.java
//      ^ keyword.operator.assignment.java
//        ^ string
)
// <- meta.annotation.java meta.annotation.parameters.java punctuation.section.parens.end.java
@fully.qualified.Annotation
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^ variable.annotation.java
@FancyAnnotation({
// <- punctuation.definition.annotation.java
//              ^^ meta.annotation.parameters.java
  Foo.class,
//^^^ support.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.java
//         ^ punctuation.separator.java
  Bar.class
//^^^ support.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.java
})
// <- punctuation.definition.array-constructor.end.java
 // <- meta.annotation.java meta.annotation.parameters.java punctuation.section.parens.end.java
class Bàr {
//    ^^^ entity.name.class.java
  Bàr() {}
//^^^^^ meta.method.java
//^^^ entity.name.function.constructor.java
}

@SomeInterface
// <- punctuation.definition.annotation.java
public class Foo {
// <- meta.class.java storage.modifier.java
//     ^ meta.class.java meta.class.identifier.java storage.type.java
//               ^ punctuation.section.block.begin.java

  FooBar MY_CONST = new FooBar();
//       ^^^^^^^^ entity.name.constant.java

  @Inject
//^^^^^^^ meta.annotation
  public Foo(
//^ - meta.annotation
//       ^ meta.method.java
//       ^ entity.name.function.constructor
    // Comment for annotation
    @MyAnnotation FooType annotatedParam,
//  ^ meta.annotation.java
//                ^ - meta.annotation.java
//                ^ support.class.java
//                        ^ variable.parameter.java
    String unannotatedParam) {
//  ^ support.class.java
//         ^ variable.parameter.java
    return;
//  ^ keyword.control.java
  }

  void bar$() {}
//     ^^^^^^ meta.method.java
//     ^^^^ entity.name.function

  void à() {}
//     ^^ meta.method.java
//     ^ entity.name.function

  public static void main(String[] args, String<List> moreArgs, a.b.c.Foo bar) {}
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java
//                        ^^^^^^ support.class.java
//                              ^^ storage.modifier.array.java
//                                 ^^^^ variable.parameter.java
//                                     ^ punctuation.separator.java
//                                       ^^^^^^^^^^^^ meta.generic.java
//                                       ^^^^^^ support.class.java
//                                              ^^^^ support.class.java
//                                                    ^^^^^^^^ variable.parameter.java
//                                                              ^^^^^^^^^ support.class.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                        ^^^ variable.parameter.java

  MyClass myClass = new MyClass(
      SomeEnum.ENUM_VALUE,
      new OtherNewClass(),
      new OtherNestedClass(
          SomeEnum.ENUM_VALUE,
          new SuperNestedClass(param, 2)),
      anotherParam);

  public static final MyObject MY_CONST = new MyObject();
//                             ^ entity.name.constant

  Object foo = new TypeLiteral<
      StandardReferenceNumberProcessor<
          SimpleGenerateReferenceNumberOperation,
          SimpleSyncReferenceNumberOperation>>() {};

  Object bar = SomeStaticClass.newBuilder().doThings(1)
//                             ^ meta.function-call.java variable.function.java
//                                          ^ meta.function-call.java variable.function.java
//                                                   ^ meta.function-call.java constant.numeric.java
      .withString("I am a string");
//     ^ meta.function-call.java variable.function.java
//                ^ meta.function-call.java string.quoted.double.java

  Object bah = someStaticMethodCall(4)
//             ^ meta.function-call.java variable.function.java
//                                  ^ meta.function-call.java constant.numeric.java
      .withString("I am a string");
//     ^ meta.function-call.java variable.function.java
//                ^ meta.function-call.java string.quoted.double.java

  private static final String DEFAULT_IDEMPOTENCY_KEY = 44493;
//                            ^ entity.name.constant
//                                                      ^ constant.numeric.java


  private MyGenric<Param, With.Dots, With.Nested<Generic>, and.fully.Qualified,
//                             ^ meta.generic.java support.class.java
//                                       ^ meta.generic.java support.class.java punctuation.accessor.dot.java
      and.fully.Qualified<Generic>> myVariable;
//                          ^ meta.generic.java meta.generic.java support.class.java

  private MyObject otherObject = MY_CONST;
//                               ^ constant.other.java

  private MyObject otherObject = SOME_CONST.FOO;
//                               ^ constant.other.java
//                                          ^ constant.other.java

  private MyObject otherObject = SOME_CONST.get();
//                               ^ constant.other.java
//                                          ^ variable.function.java

  private MyObject object = a.b.ErrorCode.COMMUNICATION_ERROR;
//                          ^^^^^^^^^^^^^ support.class.java
//                             ^ punctuation.accessor.dot.java
//                                       ^ punctuation.accessor.dot.java
//                                        ^ constant.other.java
  private static final UUID SECURE_ID = UUID.randomUUID();
//                     ^ support.class.java
//                          ^ entity.name.constant
//                                      ^ support.class.java
//                                           ^ meta.function-call.java variable.function.java

  private URI uri = new URI();
//        ^^^ support.class.java
//                      ^^^ support.class.java

  private URI URI2 = new URI();
//        ^^^ support.class.java
//            ^^^^ entity.name.constant.java
//                       ^^^ support.class.java


  class SubClass extends AbstractClass.NestedClass {
//      ^ entity.name.class.java
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                    ^ punctuation.accessor.dot.java
//                                                 ^ punctuation.section.block.begin.java
  }

  class SubClass extends AbstractClass {
//      ^ entity.name.class.java
//                       ^ entity.other.inherited-class.java
  }

  Function<Foo, Bar> BLOCK_LAMBDA = r -> {
//                   ^ entity.name.constant
//                                ^ keyword.operator.assignment.java
//                                    ^ storage.type.function.anonymous.java
//                                       ^ meta.block punctuation.section.block.begin
    return 1;
//  ^ keyword.control.java
  };
//^ meta.block punctuation.section.block.end
// ^ punctuation.terminator

  Supplier<Foo> supplier = () -> true;
//                         ^ punctuation.section.parens.begin.java
//                          ^ punctuation.section.parens.end.java
//                       ^ keyword.operator.assignment.java
//                            ^ storage.type.function.anonymous.java
//                                   ^ punctuation.terminator

  byte[] byteArray;
//^^^^ storage.type.primitive.java
//    ^^ storage.modifier.array.java
  static {
//       ^ meta.static.body.java punctuation.section.block.begin.java
    StaticFlag.setFlag("Boo!");
  }
//^ meta.static.body.java punctuation.section.block.end.java

  int operators() {
    if (this.scale<0) {
//  ^^ keyword.control.java
//     ^^^^^^^^^^^^^^ meta.parens.java
//     ^ punctuation.section.parens.begin
//          ^ punctuation.accessor.dot.java
//                ^ keyword.operator.comparison.java
//                 ^ constant.numeric.java
//                   ^ - meta.parens.java
      return foo<<32;
//    ^^^^^^ keyword.control.java
//              ^^ keyword.operator.bitshift.java
//                ^^ constant.numeric.java
//                  ^ punctuation.terminator.java
    }
//  ^ meta.block.java punctuation.section.block.end.java

    int foo = true ? 1 : 2;
//            ^^^^ constant.language.java
//                 ^ keyword.operator.ternary.java
//                   ^ constant.numeric.java
//                     ^ keyword.operator.ternary.java
//                       ^ constant.numeric.java
//                        ^ punctuation.terminator.java

    return foo<bar;

    if (a == false) {
//        ^^ keyword.operator.comparison

        x = (e & 1) << c^2;
//             ^ keyword.operator.bitwise
//                  ^^ keyword.operator.bitshift
//                      ^ keyword.operator.bitwise

        y = ~e >>> (c | 2);
//          ^ keyword.operator.bitwise
//             ^^^ keyword.operator.bitshift
//                    ^ keyword.operator.bitwise

        z &= x; z ^= x; z *= x; z /= x;
//        ^^ keyword.operator.assignment
//                ^^ keyword.operator.assignment
//                        ^^ keyword.operator.assignment
//                                ^^ keyword.operator.assignment

    }

    boolean inst = a instanceof Object;
//                   ^^^^^^^^^^ keyword.operator.word.instanceof
  }
//^ meta.method.java meta.method.body.java punctuation.section.block.end.java

  @Test
//^ punctuation.definition.annotation.java
  public void someMethod(WithParam foo) throws Exception {
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//            ^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//                       ^ support.class.java
//                                 ^ variable.parameter.java
//                                      ^^^^^^^^^^^^^^^^ meta.method.throws.java
//                                      ^^^^^^ storage.modifier.java
//                                             ^^^^^^^^^ support.class.java
//                                                       ^ meta.method.java meta.method.body.java punctuation.section.block.begin.java
    Object otherFoo = methodInvocation(foo);
//  ^  support.class.java
//                  ^ keyword.operator.assignment.java
//                    ^ meta.function-call.java variable.function.java
//                                         ^ punctuation.terminator.java
    OtherObject bob = new OtherObject(foo);
//                    ^ keyword.control.new.java
//                        ^ support.class.java
    this.foo = new SubClass[0];
//             ^ keyword.control.new.java
//                 ^ support.class.java
//                         ^^^ meta.brackets

   String[][] doubleStringArray;
// ^^^^^^ support.class.java
//       ^^^^ storage.modifier.array.java

    String[] stringArray = new String[] {"foo", "bar"};
//  ^^^^^^ support.class.java
//        ^^ storage.modifier.array.java
//                       ^ keyword.operator.assignment.java
//                         ^^^ keyword.control.new.java
//                             ^^^^^^ support.class.java
//                                   ^ punctuation.section.brackets.begin.java
//                                    ^ punctuation.section.brackets.end.java
//                                      ^^^^^^^^^^^^^^ meta.block.java
//                                      ^ punctuation.definition.array-constructor.begin.java
//                                       ^^^^^ string.quoted.double.java
//                                            ^ punctuation.separator.java
//                                              ^^^^^ string.quoted.double.java
//                                                   ^ punctuation.definition.array-constructor.end.java
//                                                    ^ punctuation.terminator.java

    void[] invalidVoid;
//  ^^^^ storage.type.primitive.java invalid.illegal.void-array.java
//      ^^ storage.modifier.array.java

    int[] data = new int[]{0, 0, 0};
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//               ^^^ keyword.control.new.java
//                   ^^^ storage.type.primitive.java
//                      ^ punctuation.section.brackets.begin.java
//                       ^ punctuation.section.brackets.end.java
//                        ^ punctuation.definition.array-constructor.begin.java
//                         ^ constant.numeric.java
//                          ^ punctuation.separator.java
//                            ^ constant.numeric.java
//                             ^ punctuation.separator.java
//                               ^ constant.numeric.java
//                                ^ punctuation.definition.array-constructor.end.java

    byte [] foo;
//  ^^^^ storage.type.primitive.java
//      ^^^ storage.modifier.array.java
    byte []b=new byte[size];
//  ^^^^ storage.type.primitive.java
//      ^^^ storage.modifier.array.java
//          ^ keyword.operator.assignment.java
//           ^^^ keyword.control.new.java
//               ^^^^ storage.type.primitive.java

    int[][][] threeDimArr = new int[][][] {
//  ^^^ storage.type.primitive.java
//     ^^^^^^ storage.modifier.array.java
//                              ^^^ storage.type.primitive.java
//                                 ^ punctuation.section.brackets.begin.java
//                                  ^ punctuation.section.brackets.end.java
//                                   ^ punctuation.section.brackets.begin.java
//                                    ^ punctuation.section.brackets.end.java
//                                     ^ punctuation.section.brackets.begin.java
//                                      ^ punctuation.section.brackets.end.java
//                                        ^ punctuation.definition.array-constructor.begin.java
      { { 1, 2 }, { 3, 4 } },
//        ^ constant.numeric.java
//         ^ punctuation.separator.java
//           ^ constant.numeric.java
//    ^ punctuation.definition.array-constructor.begin.java
//                         ^ punctuation.definition.array-constructor.end.java
//                          ^ punctuation.separator.java
      { { 5, 6 }, { 7, 8 } }
//        ^ constant.numeric.java
//         ^ punctuation.separator.java
//           ^ constant.numeric.java
//    ^ punctuation.definition.array-constructor.begin.java
//                         ^ punctuation.definition.array-constructor.end.java
    };
//  ^ punctuation.definition.array-constructor.end.java

    threeDimArr = new int[1][3][4];
//                    ^^^ storage.type.primitive.java
//                       ^^^^^^^^^ meta.brackets.java
//                       ^ punctuation.section.brackets.begin.java
//                        ^ constant.numeric.java
//                         ^ punctuation.section.brackets.end.java
//                          ^ punctuation.section.brackets.begin.java
//                           ^ constant.numeric.java
//                            ^ punctuation.section.brackets.end.java
//                             ^ punctuation.section.brackets.begin.java
//                              ^ constant.numeric.java
//                               ^ punctuation.section.brackets.end.java

    bob = new some.path.to.MyObject[3];
//            ^^^^^^^^^^^^^^^^^^^^^ support.class.java
//                                 ^^^ meta.brackets.java
//                                 ^ punctuation.section.brackets.begin.java
//                                  ^ constant.numeric.java
//                                   ^ punctuation.section.brackets.end.java

    foo.forEach((k, v) -> {
//                     ^ storage.type.function.anonymous.java
//                        ^ punctuation.section.block.begin

      return;
//    ^ keyword.control.java
//          ^ punctuation.terminator
    });
//  ^ punctuation.section.block.end.java
//    ^ punctuation.terminator
    this.foo = new SubClass(new SubClass[0], true);
//             ^ keyword.control.new.java
//                 ^ support.class.java
//                                      ^^^ meta.brackets
//                                           ^ constant.language.java
/* We can't support this yet.*/
    some.other.path.
/*  ^^^^^^^^^^^^^^^^ support.class.java */
        foo.MyClass.staticMethod(true);
/*      ^^^^^^^^^^^ support.class.java */

    some.other.path
/*  ^^^^^^^^^^^^^^^ support.class.java */
        .foo.MyClass.staticMethod(true);
/*      ^^^^^^^^^^^^ support.class.java */

    @MyAnnotation
//  ^ punctuation.definition.annotation.java
//  ^^^^^^^^^^^^^ meta.annotation.java
    int foo;
  }
//^ meta.method.java meta.method.body.java punctuation.section.block.end.java

  void arrayMethod(byte [] [] a, int b, byte[] c) {}
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^^ entity.name.function.java
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java
//                                               ^ - meta.method.parameters.java
//                 ^^^^ storage.type.primitive.java
//                      ^^^^^ storage.modifier.array.java
//                            ^ variable.parameter.java
//                               ^^^ storage.type.primitive.java
//                                   ^ variable.parameter.java
//                                      ^^^^ storage.type.primitive.java
//                                          ^^ storage.modifier.array.java
//                                             ^ variable.parameter.java


  public class Foo<T extends int> {}
  //              ^^^^^^^^^^^^^^^ meta.generic.java
  //               ^ variable.parameter.type.java
  //                 ^^^^^^^ keyword.declaration.extends.java
  //                         ^^^ invalid.illegal.primitive-instantiation.java

  @RunWith(JUnit4.class)
//^ punctuation.definition.annotation.java
//        ^^^^^^^^^^^^^^ meta.annotation.parameters.java
//         ^ support.class.java
//                ^ variable.language.java
  public void someReallyReallyLongMethodNameThatMakesTheBraceOverflowToTheNextLine(
//            ^ meta.method.java meta.method.identifier.java entity.name.function.java
//                                                                                ^ punctuation.section.parens.begin
      WithSomeParams foo,
//    ^ meta.method.java meta.method.parameters.java support.class.java
//                   ^ meta.method.java meta.method.parameters.java variable.parameter.java
      Generic<Param> bar)
//    ^ meta.method.java meta.method.parameters.java support.class.java
//    ^^^^^^^^^^^^^^ meta.generic.java
//                   ^ meta.method.java meta.method.parameters.java variable.parameter.java
//                      ^ punctuation.section.parens.end
      throws Exception {
//    ^ meta.method.java meta.method.throws.java storage.modifier.java
//           ^ meta.method.java meta.method.throws.java support.class.java
    return someMethod(new Function<V, V>() {
//                                         ^ meta.class.body.anonymous.java punctuation.section.braces.begin.java
      @Override
      public V apply(V input) {
//           ^ support.class.java
//                  ^^^^^^^^^ meta.method.parameters.java
//                   ^ support.class.java
//                     ^ variable.parameter.java
//                            ^ meta.method.body
        return input;
      }
//    ^ meta.method.body
    }, executor);
//  ^ meta.class.body.anonymous.java punctuation.section.braces.end.java
//             ^ meta.function-call.java punctuation.section.parens.end.java
  }
//^ meta.method.body.java punctuation.section.block.end.java

  public static <T> T writeAll(Collection<? extends T>, Sink<T>) {}
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//              ^^^ meta.generic.java
//               ^ variable.parameter.type.java
//                 ^ - meta.generic.java
//                  ^ support.class.java
//                             ^ support.class.java
//                             ^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//                                       ^ punctuation.definition.generic.begin.java
//                                        ^ keyword.operator.wildcard.java
//                                          ^ keyword.declaration.extends.java
//                                                  ^ support.class.java
//                                                   ^ punctuation.definition.generic.end.java
//                                                    ^ punctuation.separator.java - meta.generic.java
//                                                      ^^^^^^^ meta.generic.java

  public static <T extends Comparable<? super T>>
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//               ^ variable.parameter.type.java
//                         ^^^^^^^^^^ support.class.java
//                                   ^ punctuation.definition.generic.begin.java
//                                    ^ keyword.operator.wildcard.java
//                                      ^ keyword.declaration.super.java
//                                            ^ support.class.java
//                                             ^ punctuation.definition.generic.end.java
//                                              ^ punctuation.definition.generic.end.java
//                                   ^^^^^^^^^^^  meta.generic.java meta.generic.java
        T max(Collection<T> coll);
//      ^ support.class.java

    <T> public static Set<T> unmodifiableSet(Set<T> set);
//  ^^^ meta.generic.java
//   ^ variable.parameter.type.java

  public void
//       ^ storage.type.primitive.java
      methodNameOnDifferentLine();
//    ^ meta.method.identifier.java entity.name.function.java

  void myAbstractMethod(With<GenericParam> foo);
//     ^ meta.method.java meta.method.identifier.java entity.name.function.java

  private Long myOtherAbstractMethod(@WithAnnotation Blah blah);
//             ^ meta.method.java meta.method.identifier.java entity.name.function.java
//                                   ^ meta.method.java meta.method.parameters.java punctuation.definition.annotation.java

  public MyGeneric<Param, With, Multiple, Types> otherAbstractMethod(Foo<With, Another> bar);
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//                                              ^ - meta.generic.java
//       ^ support.class.java
//                 ^ support.class.java
//                        ^ support.class.java
//                              ^ support.class.java
//                                        ^ support.class.java
//                                               ^ meta.method.java meta.method.identifier.java entity.name.function.java

  public static <T extends AutoCloseable> void myGenericMethod(SomeType<T> root)
//              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//              ^ punctuation.definition.generic.begin.java
//               ^  variable.parameter.type.java
//                 ^ keyword.declaration.extends.java
//                         ^ support.class.java
//                                        ^ storage.type.primitive.java
//                                             ^entity.name.function.java

        throws Exception {
//      ^^^^^^^^^^^^^^^^ meta.method.throws
//                      ^ - meta.method.throws
  }
}}
// <- meta.class.java meta.class.body.java punctuation.section.block.end.java
 //<- invalid.illegal.stray-brace-end

public
// <- storage.modifier.java
class IOException { }
// <- storage.type.java

public class Generic<T> implements fully.qualified.Other<T> {
//                                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//                                 ^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                                ^ punctuation.accessor.dot.java
//                                                      ^^^ meta.generic.java
//                                                      ^ punctuation.definition.generic.begin.java
//                                                       ^ support.class.java
//                                                        ^ punctuation.definition.generic.end.java
}
// <- punctuation.section.block.end.java

public class Bar {
  public void missingSemiColon() {
    boolean foo = foo
//               ^^^^ meta.assignment.rhs.java
  }
//^ punctuation.section.block.end.java

  private SomeClass methodWithBadParens(
    CombinedServerSpec vendorManagementServerSpec;
//                                               ^ invalid.illegal.missing-parameter-end

  public void strayParans() {
//                          ^ punctuation.section.block.begin.java
    foo.bar(hello(world);
//                      ^ invalid.illegal.stray-terminator-end
  }
//^ punctuation.section.block.end.java

  public void strayParansInBlock() {
//                                 ^ punctuation.section.block.begin.java
    if (hello(world) {
//                  ^ invalid.illegal
//                   ^ - meta.parens.java
//                   ^ meta.block.java
      return false;
    }
  }

  public void strayParansInForLoop() {
//                                   ^ punctuation.section.block.begin.java
    for (;; {
//         ^ invalid.illegal
//          ^ meta.block.java - meta.parens.java
    }
  }
//^ punctuation.section.block.end.java

  public void strayParansInConstructor() {
//                                       ^ punctuation.section.block.begin.java
    return new Foo(;
//                 ^ invalid.illegal
  }
//^ punctuation.section.block.end.java

  private boolean missingSemiColonForStaticAssignment = true
//                                                      ^^^^ meta.assignment.rhs.java

  public void strayParansInConstructor() {
//^^^^^^ meta.class.body.java storage.modifier.java - meta.assignment.rhs.java
//            ^ meta.method.identifier.java entity.name.function.java
//                                       ^ punctuation.section.block.begin.java
    return;
  }

  private boolean missingSemiColonForStaticAssignmentPackageProtected = true
//                                                                      ^^^^ meta.assignment.rhs.java

  void strayParansInConstructor() {
//^^^^ storage.type.primitive.java - meta.assignment.rhs.java
//     ^ meta.method.identifier.java entity.name.function.java
//                                ^ punctuation.section.block.begin.java
    return;
  }
//^ punctuation.section.block.end.java
}
// <- punctuation.section.block.end.java
