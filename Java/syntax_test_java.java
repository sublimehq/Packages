// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

package apple;
// <- source.java meta.package.java keyword.other.package.java
//      ^ meta.package.java support.other.package.java
//           ^ meta.package.java punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.other.import.java
//     ^ meta.import.java support.class.import.java
//              ^ meta.import.java punctuation.terminator.java

import static a.b.Class.fooMethod;
// <- meta.import.java keyword.other.import.java
//     ^  meta.import.java storage.modifier.static.java
//            ^ meta.import.java support.function.import.java
//                               ^ meta.import.java punctuation.terminator.java

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
//                                                     ^ punctuation.terminator.java

    public static void main(String... args) {
//                     ^^^^^^^^^^^^^^^^^^^^^^^ meta.method
//  ^^^^^^ storage.modifier.java
//         ^^^^^^ storage.modifier.java
//                ^^^^ storage.type
//                     ^^^^ meta.method.identifier.java entity.name.function.java
//                         ^^^^^^^^^^^^^^^^ meta.method.parameters.java
//                         ^ punctuation.section.parens.begin.java
//                                ^^^ storage.modifier.variable-arity
//                           ^^^^^ support.class.java
//                                    ^^^^ variable.parameter.java
//                                        ^ punctuation.section.parens.end.java
//                                         ^ - meta.method.parameters
//                                          ^^ meta.method.body.java
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
//                               ^ keyword.operator.arithmetic.java
//                                ^ keyword.operator.assignment.java
//                                 ^^ meta.assignment.rhs.java
//                                   ^ - meta.assignment.rhs.java
            System.out.println(i);
        }
    }

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
//                ^^^^^^^^^^^^^^ meta.class.implements
//                ^^^^^^^^^^ keyword.declaration.implements.java
//                           ^^^ entity.other.inherited-class.java
//                              ^ - meta.class.implements

class Foo<A> extends Bar<? extends A> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//       ^^^ meta.generic.java
//        ^ variable.parameter.type.java
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends
//                         ^^^^^^^ keyword.declaration.extends.java

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
// <- punctuation.section.class.end.java

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
/*   ^^^ variable.function.java */

     foo ();
//   ^^^ variable.function.java
     this.<A>foo();
//           ^^^ variable.function.java
//        ^^^ meta.generic.java
//         ^ variable.parameter.type.java
     this.<B> foo();
//            ^^^ variable.function.java
//        ^^^ meta.generic.java
//         ^ variable.parameter.type.java

     Function<String, Integer> func = a -> 42;
//                                  ^^^^^^^^^ meta.assignment.rhs.java
//                                    ^ variable.parameter.java
//                                      ^^ storage.type.lambda.java
//                                         ^^ constant.numeric
//                                           ^ punctuation.terminator.java
     foo(a -> 42);
//   ^^^^^^^^^^^^ meta.function-call.java
//   ^^^ variable.function.java
//      ^ punctuation.section.parens.begin.java
//       ^ variable.parameter.java
//         ^^ storage.type.lambda.java
//            ^^ constant.numeric
//              ^ punctuation.section.parens.end.java
//               ^ punctuation.terminator.java

     a -> { return 42; };
//        ^^^^^^^^^^^^^^ meta.lambda.body.java

     (a, b) -> 42;
//    ^ variable.parameter.java
//       ^ variable.parameter.java
//          ^^ storage.type.lambda.java
//             ^^ constant.numeric

     (int a, Foo<Integer>[] b) -> 42;
//    ^^^ storage.type.primitive
//        ^ variable.parameter.java
//           ^^^ support.class.java
//                          ^ variable.parameter.java
//                             ^^ storage.type.lambda.java
//                                ^^ constant.numeric

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
//                     ^ punctuation.section.generic.separator.java
  //                     ^^^^^^ support.class.java

  new Foo<? super Bar>();
//        ^ keyword.operator.wildcard.java
//          ^^^^^ keyword.declaration.super.java

  new Foo<int>();
//        ^^^ invalid.illegal.primitive-instantiation.java
  }
}

public class Test {

    void test1() {
        Foo.abc();
//         ^ punctuation.accessor.dot.java
//          ^^^ variable.function.java
        Foo.class;
//         ^ punctuation.accessor.dot.java
//          ^^^^^ support.variable.magic.java - storage.type.java
//               ^ punctuation.terminator.java
    }

    void test2() {
//       ^^^^^ entity.name.function.java
    }
}

public enum FooEnum {
//     ^^^^ storage.type.java
  FOO;
//^^^ constant.other.enum
}
// <- meta.class.java meta.class.body.java punctuation.section.class.end.java

public enum FooBarEnum {
//     ^^^^ storage.type.java
  FOO,
//^^^ constant.other.enum
  BAR;
//^^^ constant.other.enum
}

public final class SomeClass<V extends OtherClass, T> extends BaseClass<V> {
//                          ^ punctuation.definition.generic.begin.java
//                                                  ^ punctuation.definition.generic.end.java
//                                               ^ punctuation.section.generic.separator.java
//                                     ^ support.class.java
//                                                                         ^ punctuation.section.class.start.java
}

class Bàr {
//    ^^^ entity.name.class.java
  Bàr() {}
//^^^^^ meta.method.java
//^^^ entity.name.function.constructor.java
}

@SomeInterface
// <- source.java storage.type.annotation.java
public class Foo {
// <- meta.class.java storage.modifier.java
//     ^ meta.class.java meta.class.identifier.java storage.type.java
//               ^ punctuation.section.class.start.java

  @Inject
  public Foo(
//       ^ meta.method.java
//       ^ entity.name.function.constructor
    // Comment for annotation
    @MyAnnotation FooType annotatedParam,
//  ^ storage.type.annotation.java
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

  class SubClass extends AbstractClass.NestedClass {
//      ^ entity.name.class.java
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                    ^ punctuation.accessor.dot.java
//                                                 ^ punctuation.section.class.start.java
  }

  class SubClass extends AbstractClass {
//      ^ entity.name.class.java
//                       ^ entity.other.inherited-class.java
  }

  Function<Foo, Bar> BLOCK_LAMBDA = r -> {
//                   ^ entity.name.constant
//                                ^ keyword.operator.assignment.java
//                                    ^ storage.type.lambda.java
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
//                            ^ storage.type.lambda.java
//                                   ^ punctuation.terminator

  byte[] byteArray;
//^^^^ storage.type.primitive.array.java
//    ^^ keyword.operator.array.java
  static {
//       ^ meta.static.body.java
    StaticFlag.setFlag("Boo!");
  }

  @Test
//^ storage.type.annotation.java
  public void someMethod(WithParam foo) throws Exception {
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//            ^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//                       ^ support.class.java
//                                 ^ variable.parameter.java
//                                      ^^^^^^^^^^^^^^^^ meta.method.throws.java
//                                      ^^^^^^ storage.modifier.java
//                                             ^^^^^^^^^ support.class.java
//                                                       ^ meta.method.java meta.method.body.java punctuation.definition.method.start.java
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
//                 ^ new-array-type storage.type.java
//                         ^^^ new-array-type nth-dimension-array

    foo.forEach((k, v) -> {
//                     ^ storage.type.lambda.java
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
//                                      ^^^ new-array-type nth-dimension-array
//                                           ^ new-object-params constant.language.java
/* We can't support this yet.*/
    some.other.path.
/*  ^^^^^^^^^^^^^^^^ support.class.java */
        foo.MyClass.staticMethod(true);
/*      ^^^^^^^^^^^ support.class.java */

    some.other.path
/*  ^^^^^^^^^^^^^^^ support.class.java */
        .foo.MyClass.staticMethod(true);
/*      ^^^^^^^^^^^^ support.class.java */
  }
//^ meta.method.java meta.method.body.java punctuation.definition.method.end.java

  public class Foo<T extends int> {}
  //              ^^^^^^^^^^^^^^^ meta.generic.java
  //               ^ variable.parameter.type.java
  //                 ^^^^^^^ keyword.declaration.extends.java
  //                         ^^^ invalid.illegal.primitive-instantiation.java

  @RunWith(JUnit4.class)
//^ storage.type.annotation.java
//         ^ meta.declaration.annotation.java support.class.java
//                ^ meta.declaration.annotation.java
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
//  ^ meta.inner-class.java
//             ^ meta.function-call.java punctuation.section.parens.end.java
  }
//^ meta.method.body.java punctuation.definition.method.end.java

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
//                                   ^ meta.method.java meta.method.parameters.java storage.type.annotation.java

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
// <- meta.class.java meta.class.body.java punctuation.section.class.end.java
 //<- invalid.illegal.stray-brace-end

public
// <- storage.modifier.java
class IOException { }
// <- storage.type.java

public class Generic<T> implements Other<T> {
//                                 ^ entity.other.inherited-class.java
//                                       ^ support.class.java
}
// <- punctuation.section.class.end.java

public class Bar {
  public void missingSemiColon() {
    boolean foo = foo
//               ^^^^ meta.assignment.rhs.java
  }
//^ punctuation.definition.method.end.java

  private SomeClass methodWithBadParens(
    CombinedServerSpec vendorManagementServerSpec;
//                                               ^ invalid.illegal.missing-parameter-end

  public void strayParans() {
//                          ^ punctuation.definition.method.start.java
    foo.bar(hello(world);
//                      ^ invalid.illegal.stray-terminator-end
  }
//^ punctuation.definition.method.end.java
}
// <- punctuation.section.class.end.java
