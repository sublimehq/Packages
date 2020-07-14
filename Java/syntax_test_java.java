// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

package apple;
// <- source.java meta.package-declaration.java keyword.other.package.java
//      ^^^^^ entity.name.namespace.java
//           ^ punctuation.terminator.java

package com.example.apple;
//^^^^^^^^^^^^^^^^^^^^^^^ meta.package-declaration.java
//      ^^^^^^^^^^^^^^^^^ entity.name.namespace.java
//         ^ punctuation.accessor.dot.java
//                 ^ punctuation.accessor.dot.java
//                       ^ punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.control.import.java
//     ^^^^^^^^^ meta.path.java
//     ^ support.type.package.java
//      ^ punctuation.accessor.dot.java
//       ^ support.type.package.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^ support.class.import.java
//              ^ punctuation.terminator.java

import a.b.Class.SubClass;
//^^^^^^^^^^^^^^^^^^^^^^^ meta.import.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^ support.class.import.java

import a.b.Class.*;
//^^^^^^^^^^^^^^^^ meta.import.java
//              ^ punctuation.accessor.dot.java
//               ^ keyword.operator.wildcard.asterisk.java

import com.google
//     ^^^^^^^^^^ meta.import.java meta.path.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^^ support.type.package.java
  .common.collect
//^ punctuation.accessor.dot.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^^^ support.type.package.java
//^^^^^^^^^^^^^^^ meta.import.java meta.path.java
  .ListMultimap;
//^ punctuation.accessor.dot.java
// ^^^^^^^^^^^^ support.class.import.java
//^^^^^^^^^^^^^ meta.import.java meta.path.java
//             ^ punctuation.terminator.java

import no.terminator
// <- meta.import.java keyword.control.import.java

import static no.terminator
// <- meta.import.java keyword.control.import.java

import
// <- meta.import.java keyword.control.import.java

import static
// <- meta.import.java keyword.control.import.java

import java.net.URL;
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^^^^^^ meta.import.java
//     ^^^^^^^^^^^^ meta.path.java
//              ^^^ support.class.import.java
//     ^^^^ support.type.package.java
//         ^ punctuation.accessor.dot.java
//          ^^^ support.type.package.java
//             ^ punctuation.accessor.dot.java
//                 ^ punctuation.terminator.java

import java.util.*;
//^^^^^^^^^^^^^^^^ meta.import.java
//     ^^^^^^^^^^^ meta.path.java
//     ^^^^ support.type.package.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ support.type.package.java
//              ^ punctuation.accessor.dot.java
//               ^ keyword.operator.wildcard.asterisk.java

import static a.b.Class.fooMethod;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.java
// <- meta.import.java keyword.control.import.java
//     ^^^^^^ meta.import.java keyword.control.import.static.java
//             ^ punctuation.accessor.dot.java
//            ^^^^^^^^^ meta.path.java
//                 ^^^^ support.class.import.java
//               ^ punctuation.accessor.dot.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^^ meta.import.java support.function.import.java
//                               ^ punctuation.terminator.java

import static a.b.Class.CONSTANT;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.java
//            ^^^^^^^^^ meta.path.java
//                 ^^^^ support.class.import.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^ constant.other.import.java

import static a.b.Class.*;
//                     ^ punctuation.accessor.dot.java
//                      ^ keyword.operator.wildcard.asterisk.java

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
//                         ^^^ keyword.other.storage.new.java
//                                    ^ constant.numeric.integer.decimal
        printList(Arrays.stream(args)
            .collect(Collectors.toCollection(ArrayList::new)));
//                                                      ^^^ meta.method.body.java - keyword.other.storage.new.java
//                                                      ^^^ variable.function.reference.java
//                                                    ^^ punctuation.accessor.double-colon.java
        anotherMethod();
        try (Stream<String> lines = Files.lines(path)) {
//      ^^^ keyword.control.exception.try.java
//                                 ^^^^^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                                                    ^ - meta.parens.java
//                                                   ^ meta.method.body.java - meta.assignment.rhs.java
            lines.forEach(System.out::println);
//                                    ^^^^^^^ variable.function.reference.java

        } catch (IOException ignore) {
//        ^^^^^^ meta.catch.java
//              ^^^^^^^^^^^^^^^^^^^^ meta.catch.parameters.java meta.parens.java
//        ^^^^^ keyword.control.exception.catch.java
//              ^ punctuation.section.parens.begin.java
//               ^^^^^^^^^^^ support.class.java
//                           ^^^^^^ variable.parameter
//                                 ^ punctuation.section.parens.end.java
        } catch (final MyException | com.net.org.Foo.Bar |
//        ^^^^^^ meta.catch.java
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch.parameters.java meta.parens.java
//        ^^^^^ keyword.control.exception.catch.java
//              ^ punctuation.section.parens.begin
//               ^ meta.catch.parameters storage.modifier.java
//                     ^^^^^^^^^^^ support.class
//                                 ^ punctuation.separator.bar.java
//                                   ^^^ support.type.package.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^ support.type.package.java
//                                          ^ punctuation.accessor.dot.java
//                                           ^^^ support.type.package.java
//                                              ^ punctuation.accessor.dot.java
//                                               ^^^ support.class.java
//                                                  ^ punctuation.accessor.dot.java
//                                                   ^^^ support.class.java
//                                                       ^ punctuation.separator.bar.java
                YourException ignore) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch
//              ^ support.class
//                            ^ variable.parameter
//                                 ^ meta.catch.parameters
//                                  ^ punctuation.section.parens.end

        try (final InputStream is = new FileInputStream(args[0]);
//           ^^^^^ storage.modifier
             final OutputStream os = new FileOutputStream(args[1])) {
//           ^^^^^ storage.modifier

          os.write(is.read());
//                    ^^^^ variable.function
        }

        try {
//      ^^^ keyword.control.exception.try.java
          Class.forName(args[2]);
        } catch (Exception e) {
//        ^^^^^ keyword.control.exception.catch.java
          log.error(e);
        } finally {
//        ^^^^^^^ keyword.control.exception.finally.java
        }

      for (final int x = 10;;) { System.out.println(x); break; }
//         ^^^^^ storage.modifier

        for (int i = 0; i < 10; i+= 2) {
//      ^^^ keyword.control
//           ^^^ storage.type
//                 ^ keyword.operator.assignment.java
//                   ^ constant.numeric.integer.decimal
//                  ^^ meta.assignment.rhs.java
//                    ^ punctuation.terminator.java - meta.assignment.rhs.java
//                        ^ keyword.operator.comparison.java
//                          ^^ constant.numeric.integer.decimal
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
//                                      ^^^^^^ keyword.declaration.throws.java
//                                                        ^^^^^ meta.generic.java
//                                                              ^^ meta.method.body.java -meta.method.throws
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
//                            ^ - meta.class.extends

class ExtendsTest implements Foo {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                ^^^^^^^^^^^^^^ meta.class.implements.java
//                ^^^^^^^^^^ keyword.declaration.implements.java
//                           ^^^ entity.other.inherited-class.java
//                               ^ - meta.class.implements.java

class Foo<A> extends Bar<? extends A> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//       ^^^ meta.generic.declaration.java
//        ^ variable.parameter.type.java
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends
//                         ^^^^^^^ keyword.declaration.extends.java

class ExtendsAndImplementsTest extends Foo implements Bar<Foo>, OtherBar {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                             ^^^^^^^^^^^ meta.class.extends
//                             ^^^^^^^ keyword.declaration.extends.java
//                                     ^^^ entity.other.inherited-class.java
//                                         ^ - meta.class.extends
//                                         ^^^^^^^^^^^^^^ meta.class.implements.java
//                                         ^^^^^^^^^^ keyword.declaration.implements.java
//                                                    ^^^ entity.other.inherited-class.java
//                                                       ^^^^^ meta.generic.java
//                                                            ^ punctuation.separator.comma.java
//                                                              ^^^^^^^^ entity.other.inherited-class.java
//                                                                       ^ - meta.class.implements.java

class ExtendsAndImplementsTest extends Foo, Bar implements Bar<Foo>, OtherBar {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                             ^^^^^^^^^^^^^^^^^ meta.class.extends
//                             ^^^^^^^ keyword.declaration.extends.java
//                                     ^^^ entity.other.inherited-class.java
//                                        ^ punctuation.separator.comma.java
//                                          ^^^ entity.other.inherited-class.java
//                                              ^ - meta.class.extends
//                                              ^^^^^^^^^^^^^^ meta.class.implements.java
//                                              ^^^^^^^^^^ keyword.declaration.implements.java
//                                                         ^^^ entity.other.inherited-class.java
//                                                            ^^^^^ meta.generic.java
//                                                                 ^ punctuation.separator.comma.java
//                                                                   ^^^^^^^^ entity.other.inherited-class.java
//                                                                            ^ - meta.class.implements.java

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
//                  ^^^ meta.generic.declaration.java
//                   ^ variable.parameter.type.java

    public void test2(Type) abc
//                          ^^^ - variable.parameter
//                          ^ - meta.method.java
}
// <- punctuation.section.block.end.java

interface T extends A, BB {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java
//       ^^ meta.class.identifier.java
//          ^^^^^^^^^^^^^^ meta.class.extends.java
//                        ^^ meta.class.body.java
//        ^ entity.name.class.java
//          ^^^^^^^ keyword.declaration.extends.java
//                  ^ entity.other.inherited-class.java
//                   ^ punctuation.separator.comma.java
//                     ^^ entity.other.inherited-class.java
//                        ^ punctuation.section.block.begin.java
//                         ^ punctuation.section.block.end.java

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

public enum TokenKind extends MyEnum, FooBaz implements Foo, Bar {
//<- meta.class.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java
//^^^^ storage.modifier.java
//     ^^^^ storage.type.java
//          ^^^^^^^^^ entity.name.class.java
//                    ^^^^^^^ keyword.declaration.extends.java
//                            ^^^^^^ entity.other.inherited-class.java
//                                  ^ punctuation.separator.comma.java
//                                    ^^^^^^ entity.other.inherited-class.java
//                                           ^^^^^^^^^^ keyword.declaration.implements.java
//                                                      ^^^ entity.other.inherited-class.java
//                                                         ^ punctuation.separator.comma.java
//                                                           ^^^ entity.other.inherited-class.java
//                                                               ^ punctuation.section.block.begin.java
    a,
//  ^ constant.other.enum.java
//   ^ punctuation.separator.comma.java
    a(1, 2, 3),
//  ^ constant.other.enum.java
//   ^^^^^^^^^ meta.parens.java
//   ^ punctuation.section.parens.begin.java
//    ^ constant.numeric.integer.decimal.java
//     ^ punctuation.separator.comma.java
//       ^ constant.numeric.integer.decimal.java
//        ^ punctuation.separator.comma.java
//          ^ constant.numeric.integer.decimal.java
//           ^ punctuation.section.parens.end.java
//            ^ punctuation.separator.comma.java
    a {},
//  ^ constant.other.enum.java
//    ^ meta.block.java punctuation.section.block.begin.java
//     ^ meta.block.java punctuation.section.block.end.java
//      ^ punctuation.separator.comma.java
    A,
//  ^ constant.other.enum.java
//   ^ punctuation.separator.comma.java
    A(1),
//  ^ constant.other.enum.java
//   ^^^ meta.parens.java
//   ^ punctuation.section.parens.begin.java
//    ^ constant.numeric.integer.decimal.java
//     ^ punctuation.section.parens.end.java
//      ^ punctuation.separator.comma.java
    A {},
//  ^ constant.other.enum.java
//    ^ meta.block.java punctuation.section.block.begin.java
//     ^ meta.block.java punctuation.section.block.end.java
//      ^ punctuation.separator.comma.java
    integerToken,
//  ^^^^^^^^^^^^ constant.other.enum.java
//              ^ punctuation.separator.comma.java
    integerToken("integer literal"),
//              ^^^^^^^^^^^^^^^^^^^ meta.parens.java
//  ^^^^^^^^^^^^ constant.other.enum.java
//              ^ punctuation.section.parens.begin.java
//               ^^^^^^^^^^^^^^^^^ string.quoted.double.java
//                                ^ punctuation.section.parens.end.java
//                                 ^ punctuation.separator.comma.java
    integerToken {};
//  ^^^^^^^^^^^^ constant.other.enum.java
//               ^ meta.block.java punctuation.section.block.begin.java
//                ^ meta.block.java punctuation.section.block.end.java
//                 ^ punctuation.terminator.java
    int {}
//  ^^^ storage.type.primitive.java
    static {}
//  ^^^^^^ storage.modifier.java
    String image = "";
//  ^^^^^^ support.class.java
//         ^^^^^ meta.field.java
//               ^ keyword.operator.assignment.java
//                 ^^ string.quoted.double.java
//                   ^ punctuation.terminator.java
    TokenKind(String s) {}
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//  ^^^^^^^^^ meta.method.identifier.java entity.name.function.constructor.java
//           ^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                      ^^ meta.method.body.java
//           ^ punctuation.section.parens.begin.java
//            ^^^^^^ support.class.java
//                   ^ variable.parameter.java
//                    ^ punctuation.section.parens.end.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java
    public static void main(String[]a){}
//  ^^^^^^^^^^^^^^ meta.class.java meta.class.body.java meta.block.java
//                ^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.class.body.java meta.block.java meta.method.java
//                     ^^^^ meta.method.identifier.java
//                         ^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                    ^^ meta.method.body.java
//  ^^^^^^ storage.modifier.java
//         ^^^^^^ storage.modifier.java
//                ^^^^ storage.type.void.java
//                     ^^^^ entity.name.function.java
//                         ^ punctuation.section.parens.begin.java
//                          ^^^^^^ support.class.java
//                                ^^ storage.modifier.array.java
//                                  ^ variable.parameter.java
//                                   ^ punctuation.section.parens.end.java
//                                    ^ punctuation.section.block.begin.java
//                                     ^ punctuation.section.block.end.java
}

public          // comment
//<- storage.modifier.java
enum            // comment
//<- meta.class.java meta.class.identifier.java storage.type.java
TokenKind       // comment
//<- meta.class.java meta.class.identifier.java entity.name.class.java
extends         // comment
//<- meta.class.java meta.class.extends.java keyword.declaration.extends.java
MyEnum,         // comment
//<- meta.class.java meta.class.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.class.java meta.class.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.class.java meta.class.implements.java keyword.declaration.implements.java
Foo,            // comment
//<- meta.class.java meta.class.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.class.java meta.class.implements.java entity.other.inherited-class.java
{
//<- meta.class.java meta.class.body.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.class.java meta.class.body.java meta.block.java punctuation.section.block.end.java

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
//                                         ^^ constant.numeric.integer.decimal
//                                           ^ punctuation.terminator.java
     foo(a -> 42);
//   ^^^^^^^^^^^^ meta.function-call.java
//   ^^^ variable.function.java
//      ^ punctuation.section.parens.begin.java
//       ^ variable.parameter.java
//         ^^ storage.type.function.anonymous.java
//            ^^ constant.numeric.integer.decimal
//              ^ punctuation.section.parens.end.java
//               ^ punctuation.terminator.java

     a -> { return 42; };
//        ^^^^^^^^^^^^^^ meta.function.anonymous.body.java

     (a, b) -> 42;
//    ^ variable.parameter.java
//       ^ variable.parameter.java
//          ^^ storage.type.function.anonymous.java
//             ^^ constant.numeric.integer.decimal

     (int a, Foo<Integer>[] b) -> 42;
//    ^^^ storage.type.primitive
//        ^ variable.parameter.java
//           ^^^ support.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^^^^ support.class.java
//                      ^ punctuation.definition.generic.end.java
//                          ^ variable.parameter.java
//                             ^^ storage.type.function.anonymous.java
//                                ^^ constant.numeric.integer

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
  }
}

class Generics {

  List<String> field;
//    ^^^^^^^^ meta.generic.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^ support.class.java
//           ^ punctuation.definition.generic.end.java

  List<java.net.URI> field;
//    ^^^^^^^^^^^^^^ meta.generic.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^^^^^^^ meta.path.java
//     ^^^^ support.type.package.java
//         ^ punctuation.accessor.dot.java
//          ^^^ support.type.package.java
//             ^ punctuation.accessor.dot.java
//              ^^^ support.class.java

  void variableTypes() {
    List<String> x;
//      ^^^^^^^^ meta.generic.java
//      ^ punctuation.definition.generic.begin.java
//             ^ punctuation.definition.generic.end.java

    List<java.lang.String> x;
//      ^^^^^^^^^^^^^^^^^^ meta.generic.java
//       ^^^^^^^^^^^^^^^^ meta.path.java
//       ^^^^ support.type.package.java
//           ^ punctuation.accessor.dot.java
//            ^^^^ support.type.package.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^ support.class.java
//                       ^ punctuation.definition.generic.end.java

    List<URI> x;
//      ^^^^^ meta.generic.java
//       ^^^ support.class.java

    List<java.net.URI> x;
//      ^^^^^^^^^^^^^^ meta.generic.java
//       ^^^^^^^^^^^^ meta.path.java
//                ^^^ support.class.java

    List<int[]> x;
//      ^^^^^^^ meta.generic.java
//       ^^^ storage.type.primitive.java
//          ^^ storage.modifier.array.java

    List<java.lang.String[]> x;
//      ^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//       ^^^^^^^^^^^^^^^^ meta.path.java
//                       ^^ storage.modifier.array.java

    List<URI[]> x;
//      ^^^^^^^ meta.generic.java
//       ^^^ support.class.java
//          ^^ storage.modifier.array.java

    List<int[][]>[][] x;
//      ^^^^^^^^^ meta.generic.java
//       ^^^ storage.type.primitive.java
//          ^^^^ storage.modifier.array.java
//               ^^^^ storage.modifier.array.java
  }

  void instantiation() {

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
//                     ^ punctuation.separator.comma.java
  //                     ^^^^^^ support.class.java

  new Foo<? super Bar>();
//        ^ keyword.operator.wildcard.java
//          ^^^^^ keyword.declaration.super.java

  new Foo<int>();
//        ^^^ -storage.type.primitive

  new Foo<String, int>();
//        ^^^^^^ support.class.java
//                ^^^ -storage.type.primitive

  new Foo<a.b.FooBar>();
//       ^^^^^^^^^^^^ meta.generic.java
//        ^^^^^^^^^^ meta.path.java
//        ^ support.type.package.java
//         ^ punctuation.accessor.dot.java
//          ^ support.type.package.java
//           ^ punctuation.accessor.dot.java

    new Foo<?>[] { new Foo(1), new Foo(2) };
//         ^^^ meta.generic.java
//            ^^ punctuation.section.brackets
//               ^ punctuation.section.braces.begin
//                     ^^^ support.class.java
//                           ^ punctuation.separator.comma.java
//                                 ^^^ support.class.java
//                                        ^ punctuation.section.braces.end

    new ArrayList<?>[] { new ArrayList<java.sql.Date>(), new ArrayList<Date>() }
//                                    ^^^^^^^^^^^^^^^ meta.generic.java
//                                     ^^^^^^^^^^^^^ meta.path.java
//                                                                    ^^^^^^ meta.generic.java

    new a.
//      ^^ meta.path.java
      b.Foo<a.
//    ^^^^^ meta.path.java
//          ^^ meta.generic.java meta.path.java
        b.Foo>();
//      ^^^^^ meta.generic.java meta.path.java
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
// <- meta.annotation punctuation.definition.annotation -meta.annotation.identifier
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier
//^^^^^^^^ variable.annotation.java
//        ^ punctuation.accessor.dot.java
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
//                          ^ punctuation.separator.comma.java
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


     @Partial @Mock(type=Grafo.class) DataLoader inline;
//   ^^^^^^^^                          meta.annotation
//            ^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//                                    ^ support.class

     @Override public int inline() {
//   ^^^^^^^^^ meta.annotation
//   ^ punctuation.definition.annotation
//    ^^^^^^^^ variable.annotation
     }

     void annotatedArgs(@NonNull final String p1,
//                      ^^^^^^^^ meta.annotation
//                               ^ storage.modifier - meta.annotation
         @Named(value = "") List<T> p2, @NonNull final String p3) {}
//       ^^^^^^^^^^^^^^^^^^ meta.annotation
//                          ^ support.class
//                              ^ meta.generic punctuation.definition.generic.begin
//                                  ^ variable.parameter
//                                    ^ punctuation.separator
//                                      ^^^^^^^^ meta.annotation
//                                               ^ storage.modifier - meta.annotation
//                                                     ^ support.class

    List<@NotBlank(message = "") String> annotationInGeneric;
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//       ^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation
//                               ^^^^^^ support.class

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
//    ^ meta.enum.java meta.enum.body.java meta.block.java punctuation.section.block.begin.java
    public void doSomething() { return; }
//              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
  },
//^ meta.enum.java meta.enum.body.java meta.block.java punctuation.section.block.end.java
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
//                                               ^ punctuation.separator.comma.java
//                                     ^ support.class.java
//                                                                         ^ punctuation.section.block.begin.java
}

public @interface PublicAnnotation {
//     ^^^^^^^^^^ storage.type.java
  int numericValue() default 42;
//                   ^^^^^^^ keyword.declaration.default.java
//                           ^^ constant.numeric
  boolean booleanValue() default true;
//                       ^^^^^^^ keyword.declaration.default.java
//                               ^^^^ constant.language
  char charValue() default 'S';
//                 ^^^^^^^ keyword.declaration.default.java
//                         ^^^ string.quoted.single.java
  String value() default "Default value";
//               ^^^^^^^ keyword.declaration.default.java
//                       ^^^^^^^^^^^^^^^ string.quoted.double.java
  Class<?> classValue() default String.class;
//                      ^^^^^^^ keyword.declaration.default.java
//                              ^^^^^^ support.class.java
//                                     ^^^^^ variable.language.java
  String[] arrayValue() default {"Foo", "Bar"};
//                      ^^^^^^^ keyword.declaration.default.java
//                              ^ punctuation.section.block.begin
//                               ^^^^^ string.quoted.double.java
//                                      ^^^^^ string.quoted.double.java
//                                           ^ punctuation.section.block.end
}

@interface PackageAnnotation {}
//^^^^^^^^ storage.type.java

@MultiLineAnnotation(
// <- meta.annotation.java
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^ variable.annotation.java
//                  ^ meta.annotation.java meta.annotation.parameters.java punctuation.section.parens.begin.java
  foo = BAR,
//^^^ variable.parameter.java
//    ^ keyword.operator.assignment.java
//      ^ constant.other.java
//         ^ punctuation.separator.comma.java
  other = "foo"
//^^^^^ variable.parameter.java
//      ^ keyword.operator.assignment.java
//        ^ string
)
// <- meta.annotation.java meta.annotation.parameters.java punctuation.section.parens.end.java
@fully.qualified.Annotation
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.java meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.package.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.package.java
//              ^ punctuation.accessor.dot.java
//                ^^^^^^^^^ variable.annotation.java
@fully.qualified.ParentClass.InnerAnnotation
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.java meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.package.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.package.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^^^ variable.annotation.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^^^^^^^^^^^^ variable.annotation.java
@fully.qualified
//^^^^^^^^^^^^^^ meta.annotation.identifier.java meta.path.java
    .multiline.Annotation
//  ^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.java meta.path.java
        (foo = "bar")
//      ^^^^^^^^^^^^^ meta.annotation.parameters.java -meta.annotation.identifier.java
@FancyAnnotation({
// <- punctuation.definition.annotation.java
//              ^^ meta.annotation.parameters.java
  Foo.class,
//^^^ support.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.java
//         ^ punctuation.separator.comma.java
  Bar.class
//^^^ support.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.java
})
// <- punctuation.section.braces.end.java
 // <- meta.annotation.java meta.annotation.parameters.java punctuation.section.parens.end.java
class Bàr {
//    ^^^ entity.name.class.java
  Bàr() {}
//^^^^^ meta.method.java
//^^^ entity.name.function.constructor.java
}

@AnnotationAsParameterSingle(
    @Parameter(name = "foo")
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^^ variable.annotation.java
//             ^^^^ variable.parameter.java
)

@AnnotationAsParameterSingleNamed(
  value = @Parameter(name = "foo")
//^^^^^ variable.parameter.java
//        ^ punctuation.definition.annotation.java
//         ^^^^^^^^ variable.annotation.java
//                   ^^^^ variable.parameter.java
)

@AnnotationAsParameterMultiple({
//                             ^ punctuation.section.braces.begin.java
    @Parameter(name = "foo"),
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^^ variable.annotation.java
//             ^^^^ variable.parameter.java

    @Parameter(name = "bar")
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^^ variable.annotation.java
//             ^^^^ variable.parameter.java
})
// <- punctuation.section.braces.end.java

@AnnotationAsParameterMultipleNamed(
  first  = {@Parameter(name = "foo"), @Parameter(name = "bar")},
//^^^^^ variable.parameter.java
//          ^ punctuation.definition.annotation.java
//           ^^^^^^^^^ variable.annotation.java
//                     ^^^^ variable.parameter.java
//                                    ^ punctuation.definition.annotation.java
//                                     ^^^^^^^^^ variable.annotation.java
//                                               ^^^^ variable.parameter.java
  second = {@Parameter(name = "foo"), @Parameter(name = "bar")},
//^^^^^^ variable.parameter.java
  third = @Parameter(name = "foo")
//^^^^^ variable.parameter.java
//         ^^^^^^^^^ variable.annotation.java
)

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
//  ^^^^^^ keyword.control.flow.return.java
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
//                                     ^ punctuation.separator.comma.java
//                                             ^^^^^^ meta.generic.java
//                                       ^^^^^^ support.class.java
//                                              ^^^^ support.class.java
//                                                    ^^^^^^^^ variable.parameter.java
//                                                                ^ support.type.package.java
//                                                                 ^ punctuation.accessor.dot.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                    ^^^ support.class.java
//                                                                        ^^^ variable.parameter.java

  MyClass myClass = new MyClass(
      SomeEnum.ENUM_VALUE,
      new OtherNewClass(),
      new OtherNestedClass(
          SomeEnum.ENUM_VALUE,
          new SuperNestedClass(param, 2)),
      anotherParam);

  public static final MyObject MY_CONST = new MyObject(),
//                             ^ entity.name.constant

    _MY_ANOTHER_CONST = new MyObject();
//  ^^^^^^^^^^^^^^^^^ entity.name.constant

  Object foo = new TypeLiteral<
      StandardReferenceNumberProcessor<
          SimpleGenerateReferenceNumberOperation,
          SimpleSyncReferenceNumberOperation>>() {};

  Object bar = SomeStaticClass.newBuilder().doThings(1)
//                             ^ meta.function-call.java variable.function.java
//                                          ^ meta.function-call.java variable.function.java
//                                                   ^ meta.function-call.java constant.numeric.integer.decimal
      .withString("I am a string");
//     ^ meta.function-call.java variable.function.java
//                ^ meta.function-call.java string.quoted.double.java

  Object bah = someStaticMethodCall(4)
//             ^ meta.function-call.java variable.function.java
//                                  ^ meta.function-call.java constant.numeric.integer.decimal
      .withString("I am a string");
//     ^ meta.function-call.java variable.function.java
//                ^ meta.function-call.java string.quoted.double.java

  private static final String DEFAULT_IDEMPOTENCY_KEY = 44493;
//                            ^ entity.name.constant
//                                                      ^ constant.numeric.integer.decimal


  private MyGenric<Param, With.Dots, With.Nested<Generic>, and.fully.Qualified,
//                             ^ meta.generic.java support.class.java
//                                       ^ meta.generic.java punctuation.accessor.dot.java
//                                                         ^^^^^^^^^^^^^^^^^^^ meta.path.java
      and.fully.Qualified<Generic>> myVariable;
//    ^^^^^^^^^^^^^^^^^^^ meta.path.java
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
//                          ^^^^^^^^^^^^^ meta.path.java
//                          ^ support.type.package.java
//                           ^ punctuation.accessor.dot.java
//                            ^ support.type.package.java
//                             ^ punctuation.accessor.dot.java
//                              ^^^^^^^^^ support.class.java
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
//                       ^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                    ^ punctuation.accessor.dot.java
//                                     ^^^^^^^^^^^ entity.other.inherited-class.java
//                                                 ^ punctuation.section.block.begin.java
  }

  class SubClass extends AbstractClass {
//      ^ entity.name.class.java
//                       ^ entity.other.inherited-class.java
  }

  class SubClass extends fully.qualified
//      ^ entity.name.class.java
//                       ^^^^^^^^^^^^^^^ meta.path.java
//                       ^^^^^ entity.other.inherited-class.package.java
//                            ^ punctuation.accessor.dot.java
//                             ^^^^^^^^^ entity.other.inherited-class.package.java
    .name.AbstractClass {
//  ^^^^^^^^^^^^^^^^^^^ meta.path.java
//  ^ punctuation.accessor.dot.java
//   ^^^^ entity.other.inherited-class.package.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^^^^^^^^^ entity.other.inherited-class.java
  }

  Function<Foo, Bar> BLOCK_LAMBDA = r -> {
//                   ^ entity.name.constant
//                                ^ keyword.operator.assignment.java
//                                    ^ storage.type.function.anonymous.java
//                                       ^ meta.block punctuation.section.block.begin
    return 1;
//  ^^^^^^ keyword.control.flow.return.java
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

  byte byteArray2[] = {1, 2};
//^^^^ storage.type.primitive.java
//               ^^ storage.modifier.array.java
//                  ^^^^^^^^ meta.assignment.rhs.java

  static {
//       ^ meta.static.body.java punctuation.section.block.begin.java
    StaticFlag.setFlag("Boo!");
  }
//^ meta.static.body.java punctuation.section.block.end.java

  int operators() {

    assert scale > -100 : foo == true;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assertion.java
//  ^^^^^^ keyword.control.flow.assert.java
//                      ^ punctuation.separator.expressions.java
//
    if (this.scale<0) {
//  ^^ keyword.control.conditional.if.java
//     ^^^^^^^^^^^^^^ meta.parens.java
//     ^ punctuation.section.parens.begin
//          ^ punctuation.accessor.dot.java
//                ^ keyword.operator.comparison.java
//                 ^ constant.numeric.integer.decimal
//                   ^ - meta.parens.java
      return foo<<32;
//    ^^^^^^ keyword.control.flow.return.java
//              ^^ keyword.operator.bitshift.java
//                ^^ constant.numeric.integer.decimal
//                  ^ punctuation.terminator.java
    }
//  ^ meta.block.java punctuation.section.block.end.java

    int foo = true ? 1 : 2;
//            ^^^^ constant.language.java
//                 ^ keyword.operator.ternary.java
//                   ^ constant.numeric.integer.decimal
//                     ^ keyword.operator.ternary.java
//                       ^ constant.numeric.integer.decimal
//                        ^ punctuation.terminator.java

    return foo<bar;
//  ^^^^^^ keyword.control.flow.return.java

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

  int numbers() {

    a = 0x1.
//      ^^^^ constant.numeric.float.hexadecimal
//      ^^ punctuation.definition.numeric.hexadecimal
//         ^ punctuation.separator.decimal

    a = 0x.1a2f
//      ^^^^^^^ constant.numeric.float.hexadecimal
//      ^^ punctuation.definition.numeric.hexadecimal
//        ^ punctuation.separator.decimal
//            ^ - punctuation

    a = 0x1.a2f
//      ^^^^^^^ constant.numeric.float.hexadecimal
//      ^^ punctuation.definition.numeric.hexadecimal
//         ^ punctuation.separator.decimal
//            ^ - punctuation

    a = 0x1ffp+1023
//      ^^^^^^^^^^^ constant.numeric.float.hexadecimal
//      ^^ punctuation.definition.numeric.hexadecimal

    a = 0xd.aP-1074 0x_1_f_._a_d_P-_10_74_
//      ^^^^^^^^^^^ constant.numeric.float.hexadecimal
//      ^^ punctuation.definition.numeric.hexadecimal
//         ^ punctuation.separator.decimal
//                  ^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.float.hexadecimal
//                  ^^ punctuation.definition.numeric.hexadecimal
//                    ^ invalid.illegal.numeric
//                      ^ - invalid
//                        ^ invalid.illegal.numeric
//                         ^ punctuation.separator.decimal
//                          ^ invalid.illegal.numeric
//                            ^ - invalid
//                              ^ invalid.illegal.numeric
//                                 ^ invalid.illegal.numeric
//                                    ^ - invalid
//                                       ^ invalid.illegal.numeric

//  decimal floats

    a = 0D + 12345D + 12345D + 12_34_5_D - _12_34_5D - 12a45D;
//      ^^ constant.numeric.float.decimal
//       ^ storage.type.numeric
//           ^^^^^^ constant.numeric.float.decimal
//                ^ storage.type.numeric
//                    ^^^^^^ constant.numeric.float.decimal
//                         ^ storage.type.numeric
//                             ^^^^^^^^^ constant.numeric.float.decimal
//                                    ^ invalid.illegal.numeric
//                                     ^ storage.type.numeric
//                                         ^^^^^^^^^ - constant.numeric
//                                                     ^^^^^^ - constant.numeric

    a = 0F + 12345F + 12345F + 12_34_5_F - _12_34_5F - 12a45F;
//      ^^ constant.numeric.float.decimal
//       ^ storage.type.numeric
//           ^^^^^^ constant.numeric.float.decimal
//                ^ storage.type.numeric
//                    ^^^^^^ constant.numeric.float.decimal
//                         ^ storage.type.numeric
//                             ^^^^^^^^^ constant.numeric.float.decimal
//                                    ^ invalid.illegal.numeric
//                                     ^ storage.type.numeric
//                                         ^^^^^^^^^ - constant.numeric
//                                                     ^^^^^^ - constant.numeric

    a = 1. + 1_. + 1_2. - _1.;
//      ^^ constant.numeric.float.decimal
//       ^ punctuation.separator.decimal
//           ^^^ constant.numeric.float.decimal
//            ^ invalid.illegal.numeric
//             ^ punctuation.separator.decimal
//                 ^^^^ constant.numeric.float.decimal
//                    ^ punctuation.separator.decimal
//                        ^^^ - constant.numeric

    a = 1.D + 1_.D + 1_2.D - _1.D;
//      ^^^ constant.numeric.float.decimal
//       ^ punctuation.separator.decimal
//        ^ storage.type.numeric
//            ^^^^ constant.numeric.float.decimal
//             ^ invalid.illegal.numeric
//              ^ punctuation.separator.decimal
//               ^ storage.type.numeric
//                   ^^^^^ constant.numeric.float.decimal
//                      ^ punctuation.separator.decimal
//                       ^ storage.type.numeric
//                           ^^^^ - constant.numeric

    a = 1.2 + 1_.2_ + 1_2.3_4 + 1_2_._3_4_ - _1.5;
//      ^^^ constant.numeric.float.decimal
//       ^ punctuation.separator.decimal
//            ^^^^^ constant.numeric.float.decimal
//             ^ invalid.illegal.numeric
//              ^ punctuation.separator.decimal
//                    ^^^^^^^ constant.numeric.float.decimal
//                       ^ punctuation.separator.decimal
//                              ^^^^^^^^^^ constant.numeric.float.decimal
//                                 ^ invalid.illegal.numeric
//                                  ^ punctuation.separator.decimal
//                                   ^ invalid.illegal.numeric
//                                           ^^ - constant.numeric
//                                             ^ punctuation.separator.decimal
//                                             ^^ constant.numeric.float.decimal

    a = 1.2d + 1_.2_d + 1_2.3_4d + 1_2_._3_4_d - _1.5d;
//      ^^^^ constant.numeric.float.decimal
//       ^ punctuation.separator.decimal
//         ^ storage.type.numeric
//             ^^^^^^ constant.numeric.float.decimal
//              ^ invalid.illegal.numeric
//               ^ punctuation.separator.decimal
//                 ^ invalid.illegal.numeric
//                  ^ storage.type.numeric
//                      ^^^^^^^^ constant.numeric.float.decimal
//                         ^ punctuation.separator.decimal
//                             ^ storage.type.numeric
//                                 ^^^^^^^^^^^ constant.numeric.float.decimal
//                                    ^ invalid.illegal.numeric
//                                     ^ punctuation.separator.decimal
//                                      ^ invalid.illegal.numeric
//                                           ^ storage.type.numeric
//                                          ^ invalid.illegal.numeric
//                                               ^^ - constant.numeric
//                                                 ^ punctuation.separator.decimal
//                                                 ^^^ constant.numeric.float.decimal
//                                                   ^ storage.type.numeric

    a = 12e34 + 12e+3_ + 1_2e3_4 + 1_2_e3_4_ + 1_2_e_3_4 + 12e+34 + 12e-34 + 12e+3_4 - _12e34;
//      ^^^^^ constant.numeric.float.decimal
//              ^^^^^^ constant.numeric.float.decimal
//                       ^^^^^^^ constant.numeric.float.decimal
//                                 ^^^^^^^^^ constant.numeric.float.decimal
//                                    ^ invalid.illegal.numeric
//                                             ^^^^^^^^^ constant.numeric.float.decimal
//                                                ^ invalid.illegal.numeric
//                                                  ^ invalid.illegal.numeric
//                                                         ^^^^^^ constant.numeric.float.decimal
//                                                                  ^^^^^^ constant.numeric.float.decimal
//                                                                           ^^^^^^^ constant.numeric.float.decimal
//                                                                                     ^^^^^^ - constant.numeric

    a = 12e34f + 12e+3_f + 1_2e3_4f + 1_2_e3_4_f + 1_2_e_3_4f + 12e+34f + 12e-34f + 12e+3_4f - _12e34f;
//      ^^^^^^ constant.numeric.float.decimal
//           ^ storage.type.numeric
//               ^^^^^^^ constant.numeric.float.decimal
//                    ^ invalid.illegal.numeric
//                     ^ storage.type.numeric
//                         ^^^^^^^^ constant.numeric.float.decimal
//                                ^ storage.type.numeric
//                                    ^^^^^^^^^^ constant.numeric.float.decimal
//                                       ^ invalid.illegal.numeric
//                                            ^ invalid.illegal.numeric
//                                             ^ storage.type.numeric
//                                                 ^^^^^^^^^^ constant.numeric.float.decimal
//                                                    ^ invalid.illegal.numeric
//                                                      ^ invalid.illegal.numeric
//                                                          ^ storage.type.numeric
//                                                              ^^^^^^^ constant.numeric.float.decimal
//                                                                    ^ storage.type.numeric
//                                                                        ^^^^^^^ constant.numeric.float.decimal
//                                                                              ^ storage.type.numeric
//                                                                                  ^^^^^^^^ constant.numeric.float.decimal
//                                                                                         ^ storage.type.numeric
//                                                                                             ^^^^^^^ - constant.numeric

    a = 12.e34 + 12.e+3_ + 1_2.e3_4 + 1_2_.e3_4_ + 1_2_.e_3_4 + 12.e+34 + 12.e-34 + 12.e+3_4 - _12.e34;
//      ^^^^^^ constant.numeric.float.decimal
//        ^ punctuation.separator.decimal
//               ^^^^^^^ constant.numeric.float.decimal
//                 ^ punctuation.separator.decimal
//                         ^^^^^^^^ constant.numeric.float.decimal
//                            ^ punctuation.separator.decimal
//                                    ^^^^^^^^^^ constant.numeric.float.decimal
//                                       ^ invalid.illegal.numeric
//                                        ^ punctuation.separator.decimal
//                                                 ^^^^^^^^^^ constant.numeric.float.decimal
//                                                    ^ invalid.illegal.numeric
//                                                     ^ punctuation.separator.decimal
//                                                       ^ invalid.illegal.numeric
//                                                              ^^^^^^^ constant.numeric.float.decimal
//                                                                ^ punctuation.separator.decimal
//                                                                        ^^^^^^^ constant.numeric.float.decimal
//                                                                          ^ punctuation.separator.decimal
//                                                                                  ^^^^^^^^ constant.numeric.float.decimal
//                                                                                    ^ punctuation.separator.decimal
//                                                                                             ^^^^^^^ - constant.numeric

    a = 12.e34f + 12.e+3_f + 1_2.e3_4f + 1_2_.e3_4_f + 1_2_.e_3_4f + 12.e+34f + 12.e-34f + 12.e+3_4f - _12.e34f;
//      ^^^^^^^ constant.numeric.float.decimal
//        ^ punctuation.separator.decimal
//            ^ storage.type.numeric
//                ^^^^^^^^ constant.numeric.float.decimal
//                  ^ punctuation.separator.decimal
//                      ^ invalid.illegal.numeric
//                       ^ storage.type.numeric
//                           ^^^^^^^^^ constant.numeric.float.decimal
//                              ^ punctuation.separator.decimal
//                                   ^ storage.type.numeric
//                                       ^^^^^^^^^^^ constant.numeric.float.decimal
//                                          ^ invalid.illegal.numeric
//                                           ^ punctuation.separator.decimal
//                                                ^ invalid.illegal.numeric
//                                                 ^ storage.type.numeric
//                                                     ^^^^^^^^^^^ constant.numeric.float.decimal
//                                                        ^ invalid.illegal.numeric
//                                                         ^ punctuation.separator.decimal
//                                                           ^ invalid.illegal.numeric
//                                                               ^ storage.type.numeric
//                                                                   ^^^^^^^^ constant.numeric.float.decimal
//                                                                     ^ punctuation.separator.decimal
//                                                                          ^ storage.type.numeric
//                                                                              ^^^^^^^^ constant.numeric.float.decimal
//                                                                                ^ punctuation.separator.decimal
//                                                                                     ^ storage.type.numeric
//                                                                                         ^^^^^^^^^ constant.numeric.float.decimal
//                                                                                           ^ punctuation.separator.decimal
//                                                                                                 ^ storage.type.numeric
//                                                                                                     ^^^^^^^^ - constant.numeric

    a = 12.34e56 + 12_.34_e+5_ + 1_2.3_4e5_6 + 1_2_.3_4_e5_6_ + 1_2_._3_4e_5_6 + 12.34e+56 + 12.34e-56 + 12.34e+5_6 - _12.34e+5_6;
//      ^^^^^^^^ constant.numeric.float.decimal
//        ^ punctuation.separator.decimal
//                 ^^^^^^^^^^^ constant.numeric.float.decimal
//                   ^ invalid.illegal.numeric
//                    ^ punctuation.separator.decimal
//                               ^^^^^^^^^^^ constant.numeric.float.decimal
//                                  ^ punctuation.separator.decimal
//                                             ^^^^^^^^^^^^^^ constant.numeric.float.decimal
//                                                ^ invalid.illegal.numeric
//                                                 ^ punctuation.separator.decimal
//                                                              ^^^^^^^^^^^^^^ constant.numeric.float.decimal
//                                                                 ^ invalid.illegal.numeric
//                                                                  ^ punctuation.separator.decimal
//                                                                   ^ invalid.illegal.numeric
//                                                                               ^^^^^^^^^ constant.numeric.float.decimal
//                                                                                 ^ punctuation.separator.decimal
//                                                                                           ^^^^^^^^^ constant.numeric.float.decimal
//                                                                                             ^ punctuation.separator.decimal
//                                                                                                       ^^^^^^^^^^ constant.numeric.float.decimal
//                                                                                                         ^ punctuation.separator.decimal
//                                                                                                                    ^^^ - constant.numeric

    a = 12.34e56f + 12_.34_e+5_f + 1_2.3_4e5_6f + 1_2_.3_4_e5_6_f + 1_2_._3_4e_5_6f + 12.34e+56f + 12.34e-56f + 12.34e+5_6f - _12.34e+5_6f;
//      ^^^^^^^^^ constant.numeric.float.decimal
//        ^ punctuation.separator.decimal
//              ^ storage.type.numeric
//                  ^^^^^^^^^^^^ constant.numeric.float.decimal
//                    ^ invalid.illegal.numeric
//                     ^ punctuation.separator.decimal
//                        ^ invalid.illegal.numeric
//                            ^ invalid.illegal.numeric
//                             ^ storage.type.numeric
//                                 ^^^^^^^^^^^^ constant.numeric.float.decimal
//                                    ^ punctuation.separator.decimal
//                                            ^ storage.type.numeric
//                                                ^^^^^^^^^^^^^^^ constant.numeric.float.decimal
//                                                   ^ invalid.illegal.numeric
//                                                    ^ punctuation.separator.decimal
//                                                             ^ invalid.illegal.numeric
//                                                              ^ storage.type.numeric
//                                                                  ^^^^^^^^^^^^^^^ constant.numeric.float.decimal
//                                                                     ^ invalid.illegal.numeric
//                                                                      ^ punctuation.separator.decimal
//                                                                       ^ invalid.illegal.numeric
//                                                                                ^ storage.type.numeric
//                                                                                    ^^^^^^^^^^ constant.numeric.float.decimal
//                                                                                      ^ punctuation.separator.decimal
//                                                                                             ^ storage.type.numeric
//                                                                                                 ^^^^^^^^^^ constant.numeric.float.decimal
//                                                                                                   ^ punctuation.separator.decimal
//                                                                                                          ^ storage.type.numeric
//                                                                                                              ^^^^^^^^^^^ constant.numeric.float.decimal
//                                                                                                                ^ punctuation.separator.decimal
//                                                                                                                        ^ storage.type.numeric
//                                                                                                                            ^^^ - constant.numeric

    a = .2 + .2_ + .3_4 + ._3_4_;
//      ^^ constant.numeric.float.decimal
//      ^ punctuation.separator.decimal
//           ^^^ constant.numeric.float.decimal
//           ^ punctuation.separator.decimal
//                 ^^^^ constant.numeric.float.decimal
//                 ^ punctuation.separator.decimal
//                        ^^^^^^ constant.numeric.float.decimal
//                        ^ punctuation.separator.decimal
//                         ^ invalid.illegal.numeric

    a = .2d + .2_d + .3_4d + ._3_4_d;
//      ^^^ constant.numeric.float.decimal
//      ^ punctuation.separator.decimal
//            ^^^^ constant.numeric.float.decimal
//            ^ punctuation.separator.decimal
//              ^ invalid.illegal.numeric
//                   ^^^^^ constant.numeric.float.decimal
//                   ^ punctuation.separator.decimal
//                           ^^^^^^^ constant.numeric.float.decimal
//                           ^ punctuation.separator.decimal
//                            ^ invalid.illegal.numeric
//                                ^ invalid.illegal.numeric

    a = .34e56 + .34_e+5_ + .3_4e5_6 + .3_4_e5_6_ + ._3_4e_5_6 + .34e+56 + .34e-56 + .34e+5_6;
//      ^^^^^^ constant.numeric.float.decimal
//      ^ punctuation.separator.decimal
//               ^^^^^^^^ constant.numeric.float.decimal
//               ^ punctuation.separator.decimal
//                          ^^^^^^^^ constant.numeric.float.decimal
//                          ^ punctuation.separator.decimal
//                                     ^^^^^^^^^^ constant.numeric.float.decimal
//                                     ^ punctuation.separator.decimal
//                                                  ^^^^^^^^^^ constant.numeric.float.decimal
//                                                  ^ punctuation.separator.decimal
//                                                   ^ invalid.illegal.numeric
//                                                               ^^^^^^^ constant.numeric.float.decimal
//                                                               ^ punctuation.separator.decimal
//                                                                         ^^^^^^^ constant.numeric.float.decimal
//                                                                         ^ punctuation.separator.decimal
//                                                                                   ^^^^^^^^ constant.numeric.float.decimal
//                                                                                   ^ punctuation.separator.decimal

    a = 23.45 + 23.45F + 23.45d;
//      ^^^^^ constant.numeric.float.decimal
//              ^^^^^^ constant.numeric.float.decimal
//                   ^ storage.type.numeric
//                       ^^^^^^ constant.numeric.float.decimal
//                            ^ storage.type.numeric

    a = .01 + .02e3+.02e3F;
//      ^^^ constant.numeric.float.decimal
//          ^ keyword.operator
//            ^^^^^ constant.numeric.float.decimal
//                 ^ keyword.operator
//                   ^^^^^ constant.numeric.float.decimal
//                       ^ storage.type.numeric

    a = 23.45e67+23.45e+6F+23.45e-67D;
//      ^^^^^^^^ constant.numeric.float.decimal
//              ^ keyword.operator
//               ^^^^^^^^^ constant.numeric.float.decimal
//                       ^ storage.type.numeric
//                        ^ keyword.operator
//                         ^^^^^^^^^^ constant.numeric.float.decimal
//                                  ^ storage.type.numeric

// binary integers

    a = 0b101101 + 0b10_11_01 + 0b10_11_01_ + 0b_101101 - 0_b10_1101 - 0b;
//      ^^ punctuation.definition.numeric.binary
//      ^^^^^^^^ constant.numeric.integer.binary
//                 ^^ punctuation.definition.numeric.binary
//                 ^^^^^^^^^^ constant.numeric.integer.binary
//                              ^^ punctuation.definition.numeric.binary
//                              ^^^^^^^^^^^ constant.numeric.integer.binary
//                                        ^ invalid.illegal.numeric
//                                            ^^ punctuation.definition.numeric.binary
//                                            ^^^^^^^^^ constant.numeric.integer.binary
//                                              ^ invalid.illegal.numeric
//                                                        ^^^^^^^^^^ - constant.numeric
//                                                                     ^^ - constant.numeric

    a = 0b101101l + 0b10_11_01l + 0b10_11_01_l + 0b_101101l - 0_b10_1101l;
//      ^^ punctuation.definition.numeric.binary
//      ^^^^^^^^^ constant.numeric.integer.binary
//              ^ storage.type.numeric
//                  ^^ punctuation.definition.numeric.binary
//                  ^^^^^^^^^^^ constant.numeric.integer.binary
//                            ^ storage.type.numeric
//                                ^^ punctuation.definition.numeric.binary
//                                ^^^^^^^^^^^^ constant.numeric.integer.binary
//                                          ^ invalid.illegal.numeric
//                                           ^ storage.type.numeric
//                                               ^^ punctuation.definition.numeric.binary
//                                               ^^^^^^^^^^ constant.numeric.integer.binary
//                                                 ^ invalid.illegal.numeric
//                                                        ^ storage.type.numeric
//                                                            ^^^^^^^^^^^ - constant.numeric

// hexadecimal integers

    a = 0xABCD + 0xAB_CD + 0xAB_CD_ + 0x_AB_CD - 0_xAB_CD - 0x;
//      ^^ punctuation.definition.numeric.hexadecimal
//      ^^^^^^ constant.numeric.integer.hexadecimal
//               ^^ punctuation.definition.numeric.hexadecimal
//               ^^^^^^ constant.numeric.integer.hexadecimal
//                         ^^ punctuation.definition.numeric.hexadecimal
//                         ^^^^^^^^ constant.numeric.integer.hexadecimal
//                                ^ invalid.illegal.numeric
//                                    ^^ punctuation.definition.numeric.hexadecimal
//                                    ^^^^^^^^ constant.numeric.integer.hexadecimal
//                                      ^ invalid.illegal.numeric
//                                               ^^^^^^^^ - constant.numeric
//                                                          ^^ - constant.numeric

    a = 0xABCDl + 0xAB_CDl + 0xAB_CD_l + 0x_AB_CDl - 0_xAB_CDl;
//      ^^ punctuation.definition.numeric.hexadecimal
//      ^^^^^^^ constant.numeric.integer.hexadecimal
//            ^ storage.type.numeric
//                ^^ punctuation.definition.numeric.hexadecimal
//                ^^^^^^^^ constant.numeric.integer.hexadecimal
//                       ^ storage.type.numeric
//                           ^^ punctuation.definition.numeric.hexadecimal
//                           ^^^^^^^^^ constant.numeric.integer.hexadecimal
//                                  ^ invalid.illegal.numeric
//                                   ^ storage.type.numeric
//                                       ^^ punctuation.definition.numeric.hexadecimal
//                                       ^^^^^^^^^ constant.numeric.integer.hexadecimal
//                                         ^ invalid.illegal.numeric
//                                               ^ storage.type.numeric
//                                                   ^^^^^^^^^ - constant.numeric

//  octal integers

    a = 07 + 0_ + 0_7 + 07_ + 079 + 079_ + 0_79_ - 0a - 0_a;
//      ^^ constant.numeric.integer.octal
//      ^ punctuation.definition.numeric.octal
//           ^ punctuation.definition.numeric.octal
//           ^^ constant.numeric.integer.octal
//            ^ invalid.illegal.numeric
//                ^ punctuation.definition.numeric.octal
//                ^^^ constant.numeric.integer.octal
//                      ^ punctuation.definition.numeric.octal
//                      ^^^ constant.numeric.integer.octal
//                        ^ invalid.illegal.numeric
//                            ^ punctuation.definition.numeric.octal
//                            ^^^ constant.numeric.integer.octal
//                             ^^ invalid.illegal.numeric
//                                  ^ punctuation.definition.numeric.octal
//                                  ^^^^ constant.numeric.integer.octal
//                                   ^^^ invalid.illegal.numeric
//                                         ^ punctuation.definition.numeric.octal
//                                         ^^^^^ constant.numeric.integer.octal
//                                          ^^^^ invalid.illegal.numeric
//                                                 ^^ - constant.numeric
//                                                      ^^^ - constant.numeric

    a = 07l + 0_l + 0_7l + 07_l + 0792l + 079_2_l - 0al - 0_a_l;
//      ^ punctuation.definition.numeric.octal
//      ^^^ constant.numeric.integer.octal
//        ^ storage.type.numeric
//            ^ punctuation.definition.numeric.octal
//            ^^^ constant.numeric.integer.octal
//             ^ invalid.illegal.numeric
//                  ^ punctuation.definition.numeric.octal
//                  ^^^^ constant.numeric.integer.octal
//                         ^ punctuation.definition.numeric.octal
//                         ^^^^ constant.numeric.integer.octal
//                           ^ invalid.illegal.numeric
//                            ^ storage.type.numeric
//                                ^^^^^ constant.numeric.integer.octal
//                                ^ punctuation.definition.numeric.octal
//                                 ^^^ invalid.illegal.numeric
//                                    ^ storage.type.numeric
//                                        ^ punctuation.definition.numeric.octal
//                                         ^^^^^ invalid.illegal.numeric
//                                              ^ storage.type.numeric
//                                                  ^^^ - constant.numeric
//                                                        ^^^^^ - constant.numeric

//  decimal integers

    a = 0 + 0L;
//      ^ constant.numeric.integer.decimal
//          ^^ constant.numeric.integer.decimal
//           ^ storage.type.numeric

    a = 12345 + 12_34_5 + 1_____5 + 12_34_5_ - _12_34_5 - 12a45;
//      ^^^^^ constant.numeric.integer.decimal
//              ^^^^^^^ constant.numeric.integer.decimal
//                        ^^^^^^^ constant.numeric.integer.decimal
//                                  ^^^^^^^^ constant.numeric.integer.decimal
//                                         ^ invalid.illegal.numeric
//                                             ^^^^^^^^ - constant.numeric
//                                                        ^^^^^ - constant.numeric

    a = 12345l + 12345L + 12_34_5_L - _12_34_5L - 12a45L;
//      ^^^^^^ constant.numeric.integer.decimal
//           ^ storage.type.numeric
//               ^^^^^^ constant.numeric.integer.decimal
//                    ^ storage.type.numeric
//                        ^^^^^^^^^ constant.numeric.integer.decimal
//                               ^ invalid.illegal.numeric
//                                ^ storage.type.numeric
//                                    ^^^^^^^^^ - constant.numeric
//                                                ^^^^^^ - constant.numeric

    a = 123_-_456;
//      ^^^^ constant.numeric.integer.decimal
//         ^ invalid.illegal.numeric
//          ^ keyword.operator
//           ^^^^ - constant.numeric
  }

  String stringAndChars() {
    String doubleQuotes = "String with double quotes";
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                        ^ punctuation.definition.string.begin
//                                                  ^ punctuation.definition.string.end

    char singleQuotes = 'x';
//                      ^^^ string.quoted.single
//                      ^ punctuation.definition.string.begin
//                        ^ punctuation.definition.string.end

    String escapes = "\b \t \n \f \r \" \' \\ \0 \12 \123 \u00e4 \uu00E4";
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                    ^^ constant.character.escape
//                       ^^ constant.character.escape
//                          ^^ constant.character.escape
//                             ^^ constant.character.escape
//                                ^^ constant.character.escape
//                                   ^^ constant.character.escape
//                                      ^^ constant.character.escape
//                                         ^^ constant.character.escape
//                                            ^^ constant.character.escape.octal
//                                               ^^^ constant.character.escape.octal
//                                                   ^^^^ constant.character.escape.octal
//                                                        ^^^^^^ constant.character.escape.unicode
//                                                               ^^^^^^^ constant.character.escape.unicode

    char escape = '\b' + '\t' + '\n' + '\f' + '\r' + '\"' + '\'' + '\\' + '\0' + '\12' + '\123' + '\u00e4' + '\uu00E4';
//                ^^^^ string.quoted.single
//                 ^^ constant.character.escape
//                       ^^^^ string.quoted.single
//                        ^^ constant.character.escape
//                              ^^^^ string.quoted.single
//                               ^^ constant.character.escape
//                                     ^^^^ string.quoted.single
//                                      ^^ constant.character.escape
//                                            ^^^^ string.quoted.single
//                                             ^^ constant.character.escape
//                                                   ^^^^ string.quoted.single
//                                                    ^^ constant.character.escape
//                                                          ^^^^ string.quoted.single
//                                                           ^^ constant.character.escape
//                                                                 ^^^^ string.quoted.single
//                                                                  ^^ constant.character.escape
//                                                                        ^^^^ string.quoted.single
//                                                                         ^^ constant.character.escape.octal
//                                                                               ^^^^^ string.quoted.single
//                                                                                ^^^ constant.character.escape.octal
//                                                                                       ^^^^^^ string.quoted.single
//                                                                                        ^^^^ constant.character.escape.octal
//                                                                                                ^^^^^^^^ string.quoted.single
//                                                                                                 ^^^^^^ constant.character.escape.unicode
//                                                                                                           ^^^^^^^^^ string.quoted.single
//                                                                                                            ^^^^^^^ constant.character.escape.unicode

    String octalEscapesLimits = "\078 \456"
//                               ^^^ constant.character.escape.octal
//                                  ^ -constant.character.escape.octal
//                                    ^^^ constant.character.escape.octal
//                                       ^ -constant.character.escape.octal

    String illegalEscapes = "\x \+ \8 \9" + '\x' + '\+' + '\8' + '\9'
//                          ^^^^^^^^^^^^^ string.quoted.double
//                           ^^ invalid.illegal.escape
//                              ^^ invalid.illegal.escape
//                                 ^^ invalid.illegal.escape
//                                    ^^ invalid.illegal.escape
//                                          ^^^^ string.quoted.single
//                                           ^^ invalid.illegal.escape
//                                                 ^^^^ string.quoted.single
//                                                  ^^ invalid.illegal.escape
//                                                        ^^^^ string.quoted.single
//                                                         ^^ invalid.illegal.escape
//                                                               ^^^^ string.quoted.single
//                                                                ^^ invalid.illegal.escape

    String text = "String without closing quote
//                                             ^ invalid.illegal.newline
    System.out.println(text);
//  ^^^^^^ support.class

    char letter = 'z
//                  ^ invalid.illegal.newline
    System.out.println(letter);
//  ^^^^^^ support.class
  }

  void varType() {
    var x = "String";
//  ^^^ storage.type.var.java

    try (var in = new BufferedReader()) {
//       ^^^ storage.type.var.java
        var line = in.readLine();
//      ^^^ storage.type.var.java
    }
  }

  @Test
//^ punctuation.definition.annotation.java
  public void someMethod(WithParam foo) throws Exception {
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//            ^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//                       ^ support.class.java
//                                 ^ variable.parameter.java
//                                      ^^^^^^^^^^^^^^^^ meta.method.throws.java
//                                      ^^^^^^ keyword.declaration.throws.java
//                                             ^^^^^^^^^ support.class.java
//                                                       ^ meta.method.java meta.method.body.java punctuation.section.block.begin.java
    Object otherFoo = methodInvocation(foo);
//  ^  support.class.java
//                  ^ keyword.operator.assignment.java
//                    ^ meta.function-call.java variable.function.java
//                                         ^ punctuation.terminator.java
    OtherObject bob = new OtherObject(foo);
//                    ^ keyword.other.storage.new.java
//                        ^ support.class.java
    this.foo = new SubClass[0];
//             ^ keyword.other.storage.new.java
//                 ^ support.class.java
//                         ^^^ meta.brackets

    OuterClass.InnerClass foo = new OuterClass.InnerClass();
//                                  ^^^^^^^^^^ support.class.java
//                                            ^ punctuation.accessor.dot.java
//                                             ^^^^^^^^^^ support.class.java

   String[][] doubleStringArray;
// ^^^^^^ support.class.java
//       ^^^^ storage.modifier.array.java

    String[] stringArray = new String[] {"foo", "bar"};
//  ^^^^^^ support.class.java
//        ^^ storage.modifier.array.java
//                       ^ keyword.operator.assignment.java
//                         ^^^ keyword.other.storage.new.java
//                             ^^^^^^ support.class.java
//                                   ^ punctuation.section.brackets.begin.java
//                                    ^ punctuation.section.brackets.end.java
//                                      ^^^^^^^^^^^^^^ meta.braces.array-initialization.java
//                                      ^ punctuation.section.braces.begin.java
//                                       ^^^^^ string.quoted.double.java
//                                            ^ punctuation.separator.comma.java
//                                              ^^^^^ string.quoted.double.java
//                                                   ^ punctuation.section.braces.end.java
//                                                    ^ punctuation.terminator.java

    int[] data = new int[]{0, 0, 0};
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//               ^^^ keyword.other.storage.new.java
//                   ^^^ storage.type.primitive.java
//                      ^ punctuation.section.brackets.begin.java
//                       ^ punctuation.section.brackets.end.java
//                        ^ punctuation.section.braces.begin.java
//                         ^ constant.numeric.integer.decimal
//                          ^ punctuation.separator.comma.java
//                            ^ constant.numeric.integer.decimal
//                             ^ punctuation.separator.comma.java
//                               ^ constant.numeric.integer.decimal
//                                ^ punctuation.section.braces.end.java

    byte [] foo;
//  ^^^^ storage.type.primitive.java
//       ^^ storage.modifier.array.java
    byte []b=new byte[size];
//  ^^^^ storage.type.primitive.java
//       ^^ storage.modifier.array.java
//          ^ keyword.operator.assignment.java
//           ^^^ keyword.other.storage.new.java
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
//                                        ^ punctuation.section.braces.begin.java
      { { 1, 2 }, { 3, 4 } },
//        ^ constant.numeric.integer.decimal
//         ^ punctuation.separator.comma.java
//           ^ constant.numeric.integer.decimal
//    ^ punctuation.section.braces.begin.java
//                         ^ punctuation.section.braces.end.java
//                          ^ punctuation.separator.comma.java
      { { 5, 6 }, { 7, 8 } }
//        ^ constant.numeric.integer.decimal
//         ^ punctuation.separator.comma.java
//           ^ constant.numeric.integer.decimal
//    ^ punctuation.section.braces.begin.java
//                         ^ punctuation.section.braces.end.java
    };
//  ^ punctuation.section.braces.end.java

    threeDimArr = new int[1][3][4];
//                    ^^^ storage.type.primitive.java
//                       ^^^^^^^^^ meta.brackets.array-initialization.java
//                       ^ punctuation.section.brackets.begin.java
//                        ^ constant.numeric.integer.decimal
//                         ^ punctuation.section.brackets.end.java
//                          ^ punctuation.section.brackets.begin.java
//                           ^ constant.numeric.integer.decimal
//                            ^ punctuation.section.brackets.end.java
//                             ^ punctuation.section.brackets.begin.java
//                              ^ constant.numeric.integer.decimal
//                               ^ punctuation.section.brackets.end.java

    bob = new some.path.to.MyObject[3];
//            ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                         ^^^^^^^^ support.class.java
//                                 ^^^ meta.brackets.array-initialization.java
//                                 ^ punctuation.section.brackets.begin.java
//                                  ^ constant.numeric.integer.decimal
//                                   ^ punctuation.section.brackets.end.java

    foo.forEach((k, v) -> {
//                     ^ storage.type.function.anonymous.java
//                        ^ punctuation.section.block.begin

      return;
//    ^^^^^^ keyword.control.flow.return.java
//          ^ punctuation.terminator
    });
//  ^ punctuation.section.block.end.java
//    ^ punctuation.terminator
    this.foo = new SubClass(new SubClass[0], true);
//             ^ keyword.other.storage.new.java
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
//^^^^ storage.type.void.java
//     ^^^^^^^^^^^ entity.name.function.java
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java
//                                               ^ - meta.method.parameters.java
//                 ^^^^ storage.type.primitive.java
//                      ^^ storage.modifier.array.java
//                         ^^ storage.modifier.array.java
//                            ^ variable.parameter.java
//                               ^^^ storage.type.primitive.java
//                                   ^ variable.parameter.java
//                                      ^^^^ storage.type.primitive.java
//                                          ^^ storage.modifier.array.java
//                                             ^ variable.parameter.java

  int[] arrayMethod2(int a[], String b[]) {}
//^^^ storage.type.primitive.java
//   ^^ storage.modifier.array.java
//                   ^^^ storage.type.primitive.java
//                       ^ variable.parameter.java
//                        ^^ storage.modifier.array.java
//                            ^^^^^^ support.class.java
//                                   ^ variable.parameter.java
//                                    ^^ storage.modifier.array.java

  void arrayOfGenericMethod(Map<Long, Date>[] mapping) {}
//                                         ^^ storage.modifier.array.java
//                                            ^^^^^^^ variable.parameter.java

  void primitiveVarArgs(int... values) {}
//                      ^^^ storage.type.primitive.java
//                         ^^^ keyword.operator.variadic.java
//                             ^^^ variable.parameter.java

  public class Foo<T extends int> {}
  //              ^^^^^^^^^^^^^^^ meta.generic.declaration.java
  //               ^ variable.parameter.type.java
  //                 ^^^^^^^ keyword.declaration.extends.java
  //                         ^^^ - storage.type.primitive.java

  @RunWith(JUnit4.class)
//^ punctuation.definition.annotation.java
//        ^^^^^^^^^^^^^^ meta.annotation.parameters.java
//         ^ support.class.java
//                ^ variable.language.java
  public void someReallyReallyLongMethodNameThatMakesTheBraceOverflowToTheNextLine(
//            ^ meta.method.java meta.method.identifier.java entity.name.function.java
//                                                                                ^ punctuation.section.parens.begin
      WITHSOMEPARAMS foo,
//    ^ meta.method.java meta.method.parameters.java support.class.java
//                   ^ meta.method.java meta.method.parameters.java variable.parameter.java
      Generic<Param> bar)
//    ^ meta.method.java meta.method.parameters.java support.class.java
//           ^^^^^^^ meta.generic.java
//                   ^ meta.method.java meta.method.parameters.java variable.parameter.java
//                      ^ punctuation.section.parens.end
      throws Exception {
//    ^ meta.method.java meta.method.throws.java keyword.declaration.throws.java
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
//              ^^^ meta.generic.declaration.java
//               ^ variable.parameter.type.java
//                 ^ - meta.generic.java
//                  ^ support.class.java
//                             ^ support.class.java
//                                       ^^^^^^^^^^^^^ meta.generic.java
//                                       ^ punctuation.definition.generic.begin.java
//                                        ^ keyword.operator.wildcard.java
//                                          ^ keyword.declaration.extends.java
//                                                  ^ support.class.java
//                                                   ^ punctuation.definition.generic.end.java
//                                                    ^ punctuation.separator.comma.java - meta.generic.java
//                                                          ^^^ meta.generic.java

  public static <T extends Comparable<? super T>>
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.declaration.java
//               ^ variable.parameter.type.java
//                         ^^^^^^^^^^ support.class.java
//                                   ^ punctuation.definition.generic.begin.java
//                                    ^ keyword.operator.wildcard.java
//                                      ^ keyword.declaration.super.java
//                                            ^ support.class.java
//                                             ^ punctuation.definition.generic.end.java
//                                              ^ punctuation.definition.generic.end.java
//                                   ^^^^^^^^^^^  meta.generic.java
        T max(Collection<T> coll);
//      ^ support.class.java

    <T> public static Set<T> unmodifiableSet(Set<T> set);
//  ^^^ meta.generic.declaration.java
//   ^ variable.parameter.type.java

  public void
//       ^ storage.type.void.java
      methodNameOnDifferentLine();
//    ^ meta.method.identifier.java entity.name.function.java

  void myAbstractMethod(With<GenericParam> foo);
//     ^ meta.method.java meta.method.identifier.java entity.name.function.java

  private Long myOtherAbstractMethod(@WithAnnotation Blah blah);
//             ^ meta.method.java meta.method.identifier.java entity.name.function.java
//                                   ^ meta.method.java meta.method.parameters.java punctuation.definition.annotation.java

  public MyGeneric<Param, With, Multiple, Types> otherAbstractMethod(Foo<With, Another> bar);
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//                                              ^ - meta.generic.java
//       ^ support.class.java
//                 ^ support.class.java
//                        ^ support.class.java
//                              ^ support.class.java
//                                        ^ support.class.java
//                                               ^ meta.method.java meta.method.identifier.java entity.name.function.java

  public static <T extends AutoCloseable> void myGenericMethod(SomeType<T> root)
//              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.declaration.java
//              ^ punctuation.definition.generic.begin.java
//               ^  variable.parameter.type.java
//                 ^ keyword.declaration.extends.java
//                         ^ support.class.java
//                                        ^ storage.type.void.java
//                                             ^entity.name.function.java

        throws Exception, IOException, SAXException {
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.throws
//                                                  ^ - meta.method.throws
  }
}}
// <- meta.class.java meta.class.body.java punctuation.section.block.end.java
 //<- invalid.illegal.stray-brace-end

public
// <- storage.modifier.java
class IOException { }
// <- storage.type.java

public class Generic<T> implements fully.qualified.Other<T> {
//                                 ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                 ^^^^^ entity.other.inherited-class.package.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^^^ entity.other.inherited-class.package.java
//                                                ^ punctuation.accessor.dot.java
//                                                 ^^^^^ entity.other.inherited-class.java
//                                                      ^^^ meta.generic.java
//                                                      ^ punctuation.definition.generic.begin.java
//                                                       ^ support.class.java
//                                                        ^ punctuation.definition.generic.end.java
}
// <- punctuation.section.block.end.java

public class Generic<T> extends iNtf implements iNterface<T> {
//                              ^^^^ entity.other.inherited-class.java
//                                              ^^^^^^^^^ entity.other.inherited-class.java
//                                                       ^^^ meta.generic.java
//                                                       ^ punctuation.definition.generic.begin.java
//                                                        ^ support.class.java
//                                                         ^ punctuation.definition.generic.end.java
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
//^^^^ storage.type.void.java - meta.assignment.rhs.java
//     ^ meta.method.identifier.java entity.name.function.java
//                                ^ punctuation.section.block.begin.java
    return;
  }
//^ punctuation.section.block.end.java
}
// <- punctuation.section.block.end.java

class Javadoc {

  /** This is javadoc, not a simple comment */
//^^^ punctuation.definition.comment.begin.javadoc
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.javadoc
//                                          ^^ punctuation.definition.comment.end.javadoc

  /**
//^^^ comment.block.documentation.javadoc punctuation.definition.comment.begin.javadoc
   * Description of some sort.
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.javadoc
   */
// ^^ comment.block.documentation.javadoc punctuation.definition.comment.end.javadoc

  /**
   * <p>Description that starts with tag
//   ^^^ text.html.javadoc meta.tag
   */

  /** <b>One-liner with tags</b> */
//    ^^^ text.html.javadoc meta.tag
//                          ^^^ text.html.javadoc meta.tag

  /** @param onFirstLine     @param
//    ^^^^^^ keyword.other.documentation.param.javadoc
//                           ^^^^^^ -keyword.other.documentation.param.javadoc
   *  @param normal          @param
//                           ^^^^^^ -keyword.other.documentation.param.javadoc
//    ^^^^^^ keyword.other.documentation.param.javadoc
   *
      @param withoutAsterisk @param
//                           ^^^^^^ -keyword.other.documentation.param.javadoc
//    ^^^^^^ keyword.other.documentation.param.javadoc
   */

  /**
   * Parameters
   *
   * @param paramName Some description
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block-tag.javadoc
//          ^^^^^^^^^ variable.parameter.javadoc
   *                  that spans <i>several</i> lines.
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block-tag.javadoc
//                               ^^^ meta.tag
//                                         ^^^^ meta.tag
// ^ punctuation.definition.comment.javadoc
   *
   * @param
   * paramName1
//   ^^^^^^^^^^ variable.parameter.javadoc
   * Parameter description
//   ^^^^^^^^^^^^^^^^^^^^^ meta.block-tag.javadoc
   *
   * @param
   * paramName2
//   ^^^^^^^^^^ variable.parameter.javadoc
   *
   * @param
   * @param
   * paramName3
//   ^^^^^^^^^^ variable.parameter.javadoc
   */
// ^^ punctuation.definition.comment.end.javadoc

  /** Not a @param tag */
// ^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.javadoc
//          ^^^^^^ -keyword.other.documentation.param.javadoc

  /**
   * Code blocks
   *
   * {@code} {@literal}
//    ^^^^^ keyword.other.documentation.code-or-literal.javadoc
//    ^ punctuation.definition.keyword.javadoc
//            ^^^^^^^^ keyword.other.documentation.code-or-literal.javadoc
//            ^ punctuation.definition.keyword.javadoc

   * {@code List<T> lst = new ArrayList<>()}
//   ^ punctuation.section.inline-tag.begin.javadoc
//    ^^^^^ keyword.other.documentation.code-or-literal.javadoc
//         ^ -markup.raw.javadoc
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.javadoc -meta.tag
//                                         ^ punctuation.section.inline-tag.end.javadoc

   * Multiline, line break in content: {@code x + y
//                                            ^^^^^ markup.raw.javadoc
//                                                 ^ -markup.raw.javadoc
   * = z}
//^^^ -markup.raw.javadoc
//   ^^^ markup.raw.javadoc

   * Multiline, line break before content: {@literal
//                                                  ^ -markup.raw.javadoc
   * x + y = z}
//^^^ -markup.raw.javadoc
//   ^^^^^^^^^ markup.raw.javadoc

   * Bracket balancing: {@code int[][] a = {{1, 2, 3}, {4, 5}}}
//                      ^ punctuation.section.inline-tag.begin.javadoc
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.javadoc
//                                                            ^ punctuation.section.inline-tag.end.javadoc

   * Bracket balancing with line break: {@code int[][] a = {
//                                      ^ punctuation.section.inline-tag.begin.javadoc
//                                             ^^^^^^^^^^^^^ markup.raw.javadoc
//                                                          ^ -markup.raw.javadoc
   * {1, 2, 3}, {4, 5}}}
//^^^ -markup.raw.javadoc
//   ^^^^^^^^^^^^^^^^^^ markup.raw.javadoc
//                     ^ punctuation.section.inline-tag.end.javadoc
   */

  /**
   * Inline tags with references

   * {@link} {@linkplain}
//    ^^^^^ keyword.other.documentation.link.javadoc
//            ^^^^^^^^^^ keyword.other.documentation.link.javadoc

   * {@link Class} {@linkplain org.package.Class} {@link org.package.Class.NestedClass}
//    ^^^^^ keyword.other.documentation.link.javadoc
//          ^^^^^ markup.underline.link.javadoc
//                   ^^^^^^^^^ keyword.other.documentation.link.javadoc
//                             ^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc

   * Method separator:
   * {@link package.Class#method} {@linkplain #method}
//          ^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                            ^^^^^^^ markup.underline.link.javadoc

   * Brackets:
   * {@link Class#method(Type, Type)} {@link #method(Type, Type) label}
//          ^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                           ^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                                               ^^^^^ meta.label.javadoc -markup.underline.link.javadoc

   * Line breaks:
   * {@link Class#method(Type,
   * Type, Type) label}
//   ^^^^^^^^^^^ markup.underline.link.javadoc
//               ^^^^^ meta.label.javadoc
//^^^ -markup.underline.link.javadoc
   * {@link
   * Class#method(Type, Type, Type) label}
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
//                                  ^^^^^ meta.label.javadoc
   * {@link Class#method(Type, Type, Type)
   * label}
//   ^^^^^ meta.label.javadoc
   *
   * Tags in label:
   * {@link Class#method(Type, Type, Type) <i>label</i>}
//                                         ^^^^^^^^^^^^ meta.label.javadoc
//                                         ^^^ meta.tag
//                                                 ^^^^ meta.tag
   *
   * {@value} {@value #SOME_CONSTANT} {@value package.Class#SOME_CONSTANT}
//    ^^^^^^ keyword.other.documentation.value.javadoc
//                    ^^^^^^^^^^^ markup.underline.link.javadoc
//                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
   */

  /**
   * Block tags with reference
   *
   * @see Class#method(Type, Type)
//   ^^^^ keyword.other.documentation.see.javadoc
//        ^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.javadoc
   *
   * @see <a>java.util.stream</a>
//   ^^^^ keyword.other.documentation.see.javadoc
//        ^^^^^^^^^^^^^^^^^^^^^^^ -markup.underline.link.javadoc
//        ^^^ meta.tag
//                           ^^^ meta.tag
   *
   * @see 'java.util.stream'
//   ^^^^ keyword.other.documentation.see.javadoc
//        ^^^^^^^^^^^^^^^^^^ -markup.underline.link.javadoc
   *
   * @throws IOException
//   ^^^^^^^ keyword.other.documentation.throws.javadoc
//           ^^^^^^^^^^^ markup.underline.link.javadoc

   * @throws IOException because IOException
//   ^^^^^^^ keyword.other.documentation.throws.javadoc
//           ^^^^^^^^^^^ markup.underline.link.javadoc
//                       ^^^^^^^^^^^^^^^^^^^ - markup.underline.link.javadoc
   */

  /**
   * Leading asterisk with space
// ^ punctuation.definition.comment.javadoc
   *Without space
// ^ punctuation.definition.comment.javadoc
   *<p>Before tag
// ^ punctuation.definition.comment.javadoc
   *{@value} Before inline tag
// ^ punctuation.definition.comment.javadoc
   *@return Before block tag
// ^ punctuation.definition.comment.javadoc
   */

  /**
   * Unclosed html tag: <li
   */
// ^^ comment.block.documentation.javadoc punctuation.definition.comment.end.javadoc

  /**
   * Unclosed javadoc tag: {@link
   */
// ^^ comment.block.documentation.javadoc punctuation.definition.comment.end.javadoc
}

module java.base {
//^^^^^^^^^^^^^^^^ meta.module.java
//^^^^^^^^^^^^^^ meta.module.identifier.java
//              ^ -meta.module.identifier.java
//^^^^ storage.type.java
//     ^^^^^^^^^ entity.name.module.java
//               ^ meta.module.body.java punctuation.section.braces.begin.java

  exports java.io;
//^^^^^^^^^^^^^^^^ meta.module.java meta.module.body.java
//^^^^^^^^^^^^^^^ meta.exports.java
//^^^^^^ keyword.other.module.exports.java
//        ^^^^^^^ support.type.package.java
//            ^ punctuation.accessor.dot.java
//               ^ punctuation.terminator.java

  exports jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.exports.java
//                          ^^ keyword.other.module.to.java
//                             ^^^^^^^^^^^^ support.type.module.java
//                                         ^ punctuation.separator.comma.java
//                                           ^^^^^^^^^ support.type.module.java
//                                                    ^ punctuation.terminator.java

  opens java.io;
//^^^^^^^^^^^^^ meta.opens.java
//^^^^^ keyword.other.module.opens.java
//      ^^^^^^^ support.type.package.java
//          ^ punctuation.accessor.dot.java
//             ^ punctuation.terminator.java

  opens jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.opens.java
//                        ^^ keyword.other.module.to.java
//                           ^^^^^^^^^^^^ support.type.module.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^^^^^^^ support.type.module.java
//                                                  ^ punctuation.terminator.java

  opens // incomplete to check if it affects the next statement

  uses java.security.Provider;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.uses.java
//^^^^ keyword.other.module.uses.java
//     ^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//     ^^^^ support.type.package.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^^^^ support.type.package.java
//                  ^ punctuation.accessor.dot.java
//                   ^^^^^^^^ support.class.java
//                           ^ punctuation.terminator.java

  provides java.nio.file.spi.FileSystemProvider with jdk.internal.jrtfs.JrtFileSystemProvider;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.provides.java
//^^^^^^^^ keyword.other.module.provides.java
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                              ^^^^ keyword.other.module.with.java
//                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                                                                           ^ punctuation.terminator.java

  provides incomplete.but.should.not.break.next.Statement;
//                                                       ^ punctuation.terminator.java

  provides sun.jvmstat.monitor.MonitoredHostService with
    sun.jvmstat.perfdata.monitor.protocol.file.MonitoredHostFileService,
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.provides.java meta.path.java
//                                                                     ^ punctuation.separator.comma.java
    sun.jvmstat.perfdata.monitor.protocol.local.MonitoredHostLocalService;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.provides.java meta.path.java

  requires java.xml;
//^^^^^^^^^^^^^^^^^ meta.requires.java
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^^^^^ support.type.module.java
//                 ^ punctuation.terminator.java

  requires transitive javafx.base;
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^^^^^^^ keyword.other.module.transitive.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.java
//                    ^^^^^^^^^^^ support.type.module.java
//                               ^ punctuation.terminator.java

}
//<- meta.module.body.java punctuation.section.braces.end.java

open module open.module {}
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.module.java
//^^^ -meta.module.identifier.java
//^^ storage.modifier.java
//   ^^^^^^ storage.type.java
//   ^^^^^^^^^^^^^^^^^^ meta.module.identifier.java
//                      ^^ meta.module.body.java
