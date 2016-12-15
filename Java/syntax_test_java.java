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
// ^^^ storage.modifier.java
//     ^^^^^ storage.type.java
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//           ^^^^^^^^^^ meta.class.identifier entity.name.class.java
//                     ^ - meta.class.identifier.java - meta.class.body.java
//                      ^ meta.class.body.java
    private String memberString = "Hello";
    private String memberString2 = new String("Hello");
//                                     ^^^^^^ support.class.java
    private String memberString3 = String.valueOf("Hello");
//  ^^^^^^^ storage.modifier.java
//          ^^^^^^ support.class.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.assignment.rhs.java
//                               ^ keyword.operator.assignment.java
//                                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                                                        ^ punctuation.terminator.java - meta.assignment.rhs.java
//                                                ^ punctuation.definition.string.begin.java
//                                                ^^^^^^^ string.quoted.double.java
//                                                      ^ punctuation.definition.string.end.java
//                                                       ^ - string.quoted.double.java
    private int memberLpos = memberString3.indexOf("l");
//          ^^^ storage.type
//                                                     ^ punctuation.terminator.java

    public static void main(String... args) {
//  ^^^^^^ storage.modifier.java
//         ^^^^^^ storage.modifier.java
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//                     ^^^^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                         ^^ - meta.method.identifier.java
//                                          ^^ meta.method.body.java
//                ^^^^ meta.method.return-type.java storage.type
//                     ^^^^ entity.name.function.java
//                         ^ punctuation.section.parens.begin.java
//                           ^^^^^ support.class.java
//                                    ^^^^ variable.parameter.java
//                                        ^ punctuation.section.parens.end.java
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
//  ^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                                  ^^ - meta.method.identifier.java
//                                                   ^^ meta.method.body.java
//                 ^^^^ meta.method.return-type.java storage.type
//                      ^^^^^^^^^ entity.name.function.java
//                                     ^^^^^^ support.type.java
//                                             ^^^^ variable.parameter.java
        args.stream().forEach(System.out::println);
//                                      ^^ punctuation.accessor.double-colon.java
    }

    private static void anotherMethod() throws MyException<Abc> {
//  ^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java
//                      ^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                     ^^^^^^^^^^^^^^^^^^^^^^ - meta.method.identifier.java
//                                                              ^^ meta.method.body.java
//                 ^^^^ meta.method.return-type.java storage.type
//                      ^^^^^^^^^^^^^ entity.name.function.java
//                                      ^^^^^^ storage.modifier.java
//                                             ^^^^^^^^^^^^^^^^ meta.throwables.java
//                                                        ^^^^^ meta.generic.java
        throw new MyException
                ("hello (world)");
//                              ^ - string
    }
}

class ExtendsTest extends Foo {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                ^^^^^^^^^^^ meta.class.extends
//                           ^ - meta.class.extends
//                ^^^^^^^ keyword.declaration.extends.java
//                        ^^^ entity.other.inherited-class.java

class ExtendsTest implements Foo {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//                ^^^^^^^^^^^^^^ meta.class.implements
//                              ^ - meta.class.implements
//                ^^^^^^^^^^ keyword.declaration.implements.java
//                           ^^^ entity.other.inherited-class.java

class Foo<A> extends Bar<? extends A> {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends
//       ^^^ meta.generic.java
//        ^ support.type.java
//                         ^^^^^^^ meta.class.extends.java keyword.declaration.extends.java

class AnyClass {
//    ^^^^^^^^ entity.name.class.java
    int bar; // this comment() is recognized as code
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
//           ^^ punctuation.definition.comment.java

    public void anyMethod(String finality){
//                               ^^^^^^^^ variable.parameter - storage.modifier
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                        ^^ meta.method.body.java - meta.method.identifier.java
        System.out.println("Printed: " + finality);
//                                     ^ keyword.operator
    }

    public abstract <A> void test(A thing);
//                  ^^^ meta.generic.java
//                   ^ support.type.java

    public void test2(Type) abc
//                          ^^^ - variable.parameter
}

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

   volatile
// ^^^^^^^^ storage.modifier.java

   foo();
// ^^^ variable.function.java
   Foo();
// ^^^ variable.function.java
   foo ();
// ^^^ variable.function.java
   foo<A>();
// ^^^ variable.function.java
   foo <B>();
// ^^^ variable.function.java

   a -> 42;
// ^ variable.parameter.java
//   ^^ storage.type.lambda.java
//      ^^ constant.numeric

   a -> { return 42; };
//      ^^^^^^^^^^^^^^ meta.lambda.body.java

   (a, b) -> 42;
//  ^ variable.parameter.java
//     ^ variable.parameter.java
//        ^^ storage.type.lambda.java
//           ^^ constant.numeric

   (int a, Foo<Integer>[] b) -> 42;
//  ^^^ storage.type.primitive
//      ^ variable.parameter.java
//         ^^^ support.class.java
//                        ^ variable.parameter.java
//                           ^^ storage.type.lambda.java
//                              ^^ constant.numeric

new Foo<Abc>();
//     ^^^^^ meta.generic.java
//      ^^^ support.type.java
//     ^ punctuation.definition.generic.begin.java
//         ^ punctuation.definition.generic.end.java

new Foo<?>();
//      ^ keyword.operator.wildcard.java

new Foo<? extends Bar>();
//      ^ keyword.operator.wildcard.java
//        ^^^^^^^ keyword.declaration.extends.java

new Foo<? super Bar>();
//      ^ keyword.operator.wildcard.java
//        ^^^^^ keyword.declaration.extends.java

new Foo<int>();
//      ^^^ invalid.illegal.primitive-instantiation.java

