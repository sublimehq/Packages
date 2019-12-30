// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

/******************************************************************************
 * Package Declaration Tests
 *****************************************************************************/

package apple;
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java - meta.path
//     ^^^^^^ meta.namespace.package.identifier.java - meta.path
//^^^^^ keyword.declaration.namespace.package.java
//      ^^^^^ entity.name.namespace.package.java
//           ^ punctuation.terminator.java

package
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
apple
//^^^ meta.namespace.package.identifier.java entity.name.namespace.package.java - meta.path
;
// <- punctuation.terminator.java

package com.example.apple;
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java - meta.path
//     ^ meta.namespace.package.identifier.java - meta.path
//      ^^^^^^^^^^^^^^^^^ meta.namespace.package.identifier.java meta.path.java
//      ^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^^^ variable.namespace.java
//                 ^ punctuation.accessor.dot.java
//                  ^^^^^ entity.name.namespace.package.java
//                       ^ punctuation.terminator.java

package
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
    com
//  ^^^ meta.namespace.package.identifier.java meta.path.java variable.namespace.java
    .
//  ^ meta.namespace.package.identifier.java meta.path.java punctuation.accessor.dot.java
    example.
//  ^^^^^^^ meta.namespace.package.identifier.java meta.path.java variable.namespace.java
//         ^ meta.namespace.package.identifier.java meta.path.java punctuation.accessor.dot.java
    apple
//  ^^^^^ meta.namespace.package.identifier.java meta.path.java entity.name.namespace.package.java
;
// <- punctuation.terminator.java

/******************************************************************************
 * Import Statement Tests
 *****************************************************************************/

import
// <- meta.import.java keyword.control.import.java
//^^^^ keyword.control.import.java

import no.terminator
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^^^ meta.import.java meta.path.java
    variable
//  ^^^^^^^^ variable.other.readwrite.java - meta.import

import static
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path

import static no.terminator
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^ meta.import.java meta.path.java
    variable
//  ^^^^^^^^ variable.other.readwrite.java - meta.import

import * ;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java keyword.operator.wildcard.asterisk.java
//      ^^ - meta.import - meta.path
//       ^ punctuation.terminator.java

import *. ;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java
//      ^^^ - meta.import - meta.path
//     ^ keyword.operator.wildcard.asterisk.java
//      ^ invalid.illegal.expect-semicolon.java
//        ^ punctuation.terminator.java

import *.* ;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java
//      ^^^^ - meta.import - meta.path
//     ^ keyword.operator.wildcard.asterisk.java
//      ^^ invalid.illegal.expect-semicolon.java
//         ^ punctuation.terminator.java

import *.a ;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^ meta.import.java meta.path.java
//      ^^^^ - meta.import - meta.path
//     ^ keyword.operator.wildcard.asterisk.java
//      ^^ invalid.illegal.expect-semicolon.java
//         ^ punctuation.terminator.java

import a . * . b ;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^ meta.import.java meta.path.java
//          ^^^^^^ - meta.import - meta.path
//     ^ variable.namespace.java
//       ^ punctuation.accessor.dot.java
//         ^ keyword.operator.wildcard.asterisk.java
//           ^ invalid.illegal.expect-semicolon.java
//             ^ invalid.illegal.expect-semicolon.java
//               ^ punctuation.terminator.java

import a . b . * ;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^ meta.import.java meta.path.java
//              ^ - meta.import - meta.path
//     ^ variable.namespace.java
//       ^ punctuation.accessor.dot.java
//         ^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//             ^ keyword.operator.wildcard.asterisk.java
//               ^ punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^ entity.name.class.java
//              ^ punctuation.terminator.java

import a.b.Class.*;
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^ entity.name.class.java
//              ^ punctuation.accessor.dot.java
//               ^ keyword.operator.wildcard.asterisk.java

import a.b.Class.SubClass;
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^ entity.name.class.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^ entity.name.class.java

import 
//^^^^^ meta.import.java - meta.path
    a
//^^ meta.import.java - meta.path
//  ^^ meta.import.java meta.path.java
//  ^ variable.namespace.java
    .
//^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java
    b
//^^^^ meta.import.java meta.path.java
//  ^ variable.namespace.java
    .Class
//^^^^^^^^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java
//   ^^^^^ entity.name.class.java
    .
//^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java
    SubClass ;
//  ^^^^^^^^ entity.name.class.java
//^^^^^^^^^^ meta.import.java meta.path.java
//          ^^ - meta.import - meta.path
//           ^ punctuation.terminator.java

import java.net.URL;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^^^ entity.name.class.java
//                 ^ punctuation.terminator.java

import static a.b.Class.fooMethod;
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^^^^^^ storage.modifier.java
//            ^^^^^^^^^ meta.path.java
//            ^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ entity.name.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^^ meta.import.java entity.name.function.java
//                               ^ punctuation.terminator.java

import static a.b.Class.CONSTANT ;
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//                              ^^ - meta.import - meta.path
//            ^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ entity.name.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^ entity.name.constant.java
//                               ^ punctuation.terminator.java

import static /**/ a /**/ . /**/ b /**/ . /**/ Class /**/ . /**/ CONSTANT;
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^^^^^^ meta.import.java - meta.path
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//                                                                       ^ - meta.import - meta.path
//            ^^^^ comment.block.empty.java
//                 ^ variable.namespace.java
//                   ^^^^ comment.block.empty.java
//                        ^ punctuation.accessor.dot.java
//                          ^^^^ comment.block.empty.java
//                               ^ variable.namespace.java
//                                 ^^^^ comment.block.empty.java
//                                      ^ punctuation.accessor.dot.java
//                                        ^^^^ comment.block.empty.java
//                                             ^^^^^ entity.name.class.java
//                                                   ^^^^ comment.block.empty.java
//                                                        ^ punctuation.accessor.dot.java
//                                                          ^^^^ comment.block.empty.java
//                                                               ^^^^^^^^ entity.name.constant.java
//                                                                       ^ punctuation.terminator.java

import
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
    static
//^^^^^^^^^ meta.import.java - meta.path
//  ^^^^^^ storage.modifier.java
    /**/ a
//^^^^^^^ meta.import.java - meta.path
//  ^^^^ comment.block.empty.java
//       ^^ meta.import.java meta.path.java
//       ^ variable.namespace.java
    /**/ .
//^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ punctuation.accessor.dot.java
    /**/ b
//^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ variable.namespace.java
    /**/ .
//^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ punctuation.accessor.dot.java
    /**/ Class
//^^^^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^^^^^ entity.name.class.java
    /**/ .
//^^^^^^^^^^^^ meta.import.java meta.path.java
//  ^^^^ comment.block.empty.java
//       ^ punctuation.accessor.dot.java
    /**/ CONSTANT
//^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//               ^ - meta.import - meta.path
//  ^^^^ comment.block.empty.java
//       ^^^^^^^^ entity.name.constant.java
    /**/ ;
//^^^^^^^ - meta.import - meta.path
//  ^^^^ comment.block.empty.java
//       ^ punctuation.terminator.java

import static a.b.Class.*;
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^ meta.import.java meta.path.java
//                       ^ - meta.import - meta.path
//            ^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ entity.name.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^ keyword.operator.wildcard.asterisk.java


/******************************************************************************
 * General Syntax Tests
 *****************************************************************************/

public class SyntaxTest {
//^^^^^^^^^^ meta.class.java
//          ^^^^^^^^^^^^ meta.class.identifier
//                      ^^ meta.class.body.java meta.block.java
// ^^^ storage.modifier.java
//    ^ - storage
//     ^^^^^ storage.type.class.java
//          ^ - entity - keyword - storage
//           ^^^^^^^^^^ entity.name.class.java
//                     ^ - entity
//                      ^ punctuation.section.block.begin.java

    const int bar; // this comment() is recognized as code
//  ^^^^^ invalid.illegal.keyword.java
//        ^^^ storage.type.primitive.java
//            ^^^ variable.other.member.java
//               ^ punctuation.terminator.java
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
//                 ^^ punctuation.definition.comment.java

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
//                    ^^^^^ meta.method.identifier.java - meta.method meta.method
//                         ^^^^^^^^^^^^^^^^ meta.method.parameters.java - meta.method meta.method
//                                         ^ meta.method.java - meta.method meta.method
//                                          ^ meta.method.body.java meta.block.java - meta.method meta.method
//  ^^^^^^ storage.modifier.java
//         ^^^^^^ storage.modifier.java
//                ^^^^ storage.type
//                     ^^^^ entity.name.function.java
//                         ^ punctuation.section.parens.begin.java
//                          ^^^^^^ support.class.java
//                                ^^^ keyword.operator.variadic.java
//                                    ^^^^ variable.parameter.java
//                                        ^ punctuation.section.parens.end.java
//                                          ^ punctuation.section.block.begin.java
        String[] strings = new String[5];
//                        ^^^^^^^^^^^^^^ meta.assignment.rhs.java
//                         ^^^ keyword.other.storage.new.java
//                                    ^ constant.numeric.integer.decimal.java
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
//                                 ^ punctuation.separator.pipe.java
//                                   ^^^ variable.namespace.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^ variable.namespace.java
//                                          ^ punctuation.accessor.dot.java
//                                           ^^^ variable.namespace.java
//                                              ^ punctuation.accessor.dot.java
//                                               ^^^ support.class.java
//                                                  ^ punctuation.accessor.dot.java
//                                                   ^^^ support.class.java
//                                                       ^ punctuation.separator.pipe.java
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
//                   ^ constant.numeric.integer.decimal.java
//                  ^^ meta.assignment.rhs.java
//                    ^ punctuation.terminator.java - meta.assignment.rhs.java
//                        ^ keyword.operator.comparison.java
//                          ^^ constant.numeric.integer.decimal.java
//                            ^ punctuation.terminator.java
//                               ^^ keyword.operator.assignment.augmented.java
//                                 ^^ meta.assignment.rhs.java
//                                   ^ - meta.assignment.rhs.java
            System.out.println(i);
        }
    }
//  ^ meta.method.body.java punctuation.section.block.end.java
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


/******************************************************************************
 * Class Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.1
 *****************************************************************************/

class
// <- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java storage.type.class.java keyword.declaration.class.java

class ClassTest
// <- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java storage.type.class.java keyword.declaration.class.java
//   ^^^^^^^^^^^ meta.class.identifier.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^ entity.name.class.java
//             ^ - entity - keyword - storage

class ClassTest {}
// <- meta.class.java - meta.class meta.class
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//              ^^ meta.class.body.java meta.block.java - meta.class meta.class
//                ^ - meta.class
// <- storage.type.class.java keyword.declaration.class.java
//^^^ storage.type.class.java keyword.declaration.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^ entity.name.class.java
//             ^ - entity - keyword - storage
//              ^ punctuation.section.block.begin.java
//               ^ punctuation.section.block.end.java

class ExtendsTest extends
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^ meta.class.extends.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ keyword.declaration.extends.java
//                       ^ - entity - keyword - storage

class ExtendsTest extends Foo {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                            ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ keyword.declaration.extends.java
//                       ^ - entity - keyword - storage
//                        ^^^ entity.other.inherited-class.java
//                           ^ - entity - keyword - storage
//                            ^ punctuation.section.block.begin.java
//                             ^ punctuation.section.block.end.java

class ExtendsTest extends @NonNull Foo {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                ^^^^^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                                     ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^ - entity - keyword - storage
//                ^^^^^^^ keyword.declaration.extends.java
//                        ^ punctuation.definition.annotation.java
//                         ^^^^^^^ variable.annotation.java
//                                ^ - entity - keyword - storage - variable
//                                 ^^^ entity.other.inherited-class.java
//                                    ^ - entity - keyword - storage
//                                     ^ punctuation.section.block.begin.java
//                                      ^ punctuation.section.block.end.java

class ExtendsTest<A> extends Foo<? extends A> {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.generic - meta.class meta.class
//               ^^^ meta.class.identifier.java meta.generic.declaration.java - meta.class meta.class
//                  ^ meta.class.identifier.java - meta.generic - meta.class meta.class
//                   ^^^^^^^^^^^ meta.class.extends.java - meta.generic - meta.class meta.class
//                              ^^^^^^^^^^^^^ meta.class.extends.java meta.generic.java - meta.class meta.class
//                                           ^ meta.class.extends.java - meta.generic - meta.class meta.class
//                                            ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^^^^ - entity - keyword - storage
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                 ^ punctuation.definition.generic.end.java
//                   ^^^^^^^ keyword.declaration.extends.java
//                          ^ - entity - keyword - storage
//                           ^^^ entity.other.inherited-class.java
//                              ^ punctuation.definition.generic.begin.java
//                               ^ keyword.operator.wildcard.java
//                                 ^^^^^^^ keyword.declaration.extends.java
//                                         ^ support.class.java
//                                          ^ punctuation.definition.generic.end.java
//                                           ^ - entity - keyword - storage
//                                            ^ punctuation.section.block.begin.java
//                                             ^ punctuation.section.block.end.java

class ImplementsTest implements
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                   ^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^^ entity.name.class.java
//                  ^ - entity - keyword - storage
//                   ^^^^^^^^^^ keyword.declaration.implements.java

class ImplementsTest implements Foo {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                   ^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                  ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^^ entity.name.class.java
//                  ^ - entity - keyword - storage
//                   ^^^^^^^^^^ keyword.declaration.implements.java
//                              ^^^ entity.other.inherited-class.java
//                                  ^ punctuation.section.block.begin.java
//                                   ^ punctuation.section.block.end.java

class lowerCaseTest<T> implements fully.qualified.Other<T> {
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                                         ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^ entity.name.class.java
//                 ^ punctuation.definition.generic.begin.java
//                  ^ variable.parameter.type.java
//                   ^ punctuation.definition.generic.end.java
//                    ^ - entity - keyword - storage
//                     ^^^^^^^^^^ keyword.declaration.implements.java
//                                ^^^^^ variable.namespace.java
//                                     ^ punctuation.accessor.dot.java
//                                      ^^^^^^^^^ variable.namespace.java
//                                               ^ punctuation.accessor.dot.java
//                                                ^^^^^ entity.other.inherited-class.java
//                                                     ^^^ meta.generic.java
//                                                     ^ punctuation.definition.generic.begin.java
//                                                      ^ support.class.java
//                                                       ^ punctuation.definition.generic.end.java
}
// <- punctuation.section.block.end.java

volatile class extends implements {}
//<- meta.class.java invalid.illegal.unexpected-modifier.java
//^^^^^^^^^^^^ meta.class.java - meta.class meta.class
//^^^^^^ invalid.illegal.unexpected-modifier.java
//            ^ meta.class.identifier.java - meta.class meta.class
//             ^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                     ^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                ^^ meta.class.body.java meta.block.java - meta.class meta.class
//         ^^^ storage.type.class.java
//            ^ - entity - keyword - storage
//             ^^^^^^^ keyword.declaration.extends.java
//                    ^ - entity - keyword - storage
//                     ^^^^^^^^^^ keyword.declaration.implements.java
//                               ^ - entity - keyword - storage
//                                ^ punctuation.section.block.begin.java
//                                 ^ punctuation.section.block.end.java

class ExtendsAndImplementsTest extends Foo implements Bar<Foo>, OtherBar {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                             ^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                                                       ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.class.java
//                            ^ - entity - keyword - storage
//                             ^^^^^^^ keyword.declaration.extends.java
//                                    ^ - entity - keyword - storage
//                                     ^^^ entity.other.inherited-class.java
//                                        ^ - entity - keyword - storage
//                                         ^^^^^^^^^^ keyword.declaration.implements.java
//                                                   ^ - entity - keyword - storage
//                                                    ^^^ entity.other.inherited-class.java
//                                                       ^^^^^ meta.generic.java
//                                                            ^ punctuation.separator.comma.java
//                                                            ^^ - entity - keyword - storage
//                                                              ^^^^^^^^ entity.other.inherited-class.java
//                                                                      ^ - entity - keyword - storage
//                                                                       ^ punctuation.section.block.begin.java
//                                                                        ^ punctuation.section.block.end.java

class ExtendsAndImplementsTest extends Foo, bar implements bar<Foo>, OtherBar {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class
//                             ^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                                                            ^^ meta.class.body.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//    ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.class.java
//                             ^^^^^^^ keyword.declaration.extends.java
//                                     ^^^ entity.other.inherited-class.java
//                                        ^ punctuation.separator.comma.java
//                                          ^^^ entity.other.inherited-class.java
//                                              ^^^^^^^^^^ keyword.declaration.implements.java
//                                                         ^^^ entity.other.inherited-class.java
//                                                            ^^^^^ meta.generic.java
//                                                                 ^ punctuation.separator.comma.java
//                                                                   ^^^^^^^^ entity.other.inherited-class.java
//                                                                            ^ punctuation.section.block.begin.java
//                                                                             ^ punctuation.section.block.end.java

class AnyClass { // comment
//^^^ meta.class.java storage.type.class.java keyword.declaration.class.java
//   ^^^^^^^^^^ meta.class.identifier.java
//             ^^^^^^^^^^^^^ meta.class.body.java meta.block.java
//    ^^^^^^^^ entity.name.class.java
//             ^ punctuation.section.block.begin.java
//               ^^^^^^^^^^^^ comment.line.double-slash.java

    const class NestedClass {
//  ^^^^^ invalid.illegal.keyword.java
//        ^^^^^ meta.class.body.java meta.block.java meta.class.java storage.type.class.java keyword.declaration.class.java
//             ^^^^^^^^^^^^^ meta.class.body.java meta.block.java meta.class.identifier.java
//                          ^^ meta.class.body.java meta.block.java meta.class.body.java meta.block.java
//              ^^^^^^^^^^^ entity.name.class.java
//                          ^ punctuation.section.block.begin.java

      void test1() {
        Foo.class; // comment
//      ^^^ support.class.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^ variable.language.class.java - storage.type.java
//               ^ punctuation.terminator.java
//                 ^^^^^^^^^^^ comment.line.double-slash.java
        super.class;
//      ^^^^^ variable.language.java
//           ^ punctuation.accessor.dot.java
//            ^^^^^ variable.language.class.java - storage.type.java
//                 ^ punctuation.terminator.java

        this.class;
//      ^^^^ variable.language.java
//          ^ punctuation.accessor.dot.java
//           ^^^^^ variable.language.class.java - storage.type.java
//                ^ punctuation.terminator.java

        this
//      ^^^^ variable.language.java
        /**/ .
//      ^^^^ comment.block.empty.java
//           ^ punctuation.accessor.dot.java
        /**/ class
//      ^^^^ comment.block.empty.java
//           ^^^^^ variable.language.class.java - storage.type.java
        /**/ ;
//      ^^^^ comment.block.empty.java
//           ^ punctuation.terminator.java
      }
    }
//  ^ meta.class.body.java meta.block.java meta.class.body.java meta.block.java punctuation.section.block.end.java
//   ^ meta.class.body.java meta.block.java - meta.class meta.class
}
//<- meta.class.body.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Eumeration Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.9
 *****************************************************************************/

enum
//<- meta.enum.java storage.type.enum.java keyword.declaration.enum.java
//^^ meta.enum.java storage.type.enum.java keyword.declaration.enum.java

enum EnumTest
//<- meta.enum.java storage.type.enum.java keyword.declaration.enum.java
//^^ meta.enum.java storage.type.enum.java keyword.declaration.enum.java
//  ^^^^^^^^^^ meta.enum.identifier.java
//  ^ - entity - keyword - storage
//   ^^^^^^^^ entity.name.enum.java
//           ^ - entity

enum EnumTest {}
//<- meta.enum.java storage.type.enum.java keyword.declaration.enum.java
//^^ meta.enum.java storage.type.enum.java keyword.declaration.enum.java
//  ^^^^^^^^^^ meta.enum.identifier.java
//            ^^ meta.enum.body.java meta.block.java
//  ^ - entity - keyword - storage
//   ^^^^^^^^ entity.name.enum.java
//           ^ - entity
//            ^ punctuation.section.block.begin.java
//             ^ punctuation.section.block.end.java

public enum EnumTest { int {} }
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^ meta.enum.identifier.java
//                   ^^^^^^^^^^ meta.enum.body.java meta.block.java
//     ^^^^ storage.type.enum.java
//         ^ - entity - keyword - storage
//          ^^^^^^^^ entity.name.enum.java
//                  ^ - entity - punctuation
//                   ^ punctuation.section.block.begin.java
//                     ^^^ storage.type.primitive.java
//                         ^ punctuation.section.block.begin.java
//                          ^ punctuation.section.block.end.java
//                            ^ punctuation.section.block.end.java

public enum EnumTest {FOO, BAR}
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^ meta.enum.identifier.java
//                   ^^^^^^^^^^ meta.enum.body.java meta.block.java
//     ^^^^ storage.type.enum.java
//         ^ - entity - keyword - storage
//          ^^^^^^^^ entity.name.enum.java
//                  ^ - entity - punctuation
//                   ^ punctuation.section.block.begin.java
//                    ^^^ meta.constant.identifier.java entity.name.constant.java
//                       ^ punctuation.separator.comma.java
//                         ^^^ meta.constant.identifier.java entity.name.constant.java
//                            ^ punctuation.section.block.end.java

public enum FooEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^ meta.enum.identifier.java
//                  ^^ meta.enum.body.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^ storage.type.enum.java
//          ^^^^^^^ entity.name.enum.java
//                  ^ punctuation.section.block.begin.java
  FOO;
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.terminator.java - meta.constant
}
// <- meta.enum.body.java punctuation.section.block.end.java

public enum FooBarEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^ meta.enum.identifier.java
//                     ^^ meta.enum.body.java meta.block.java
//     ^^^^ storage.type.enum.java
//          ^^^^^^^^^^ entity.name.enum.java
//                     ^ punctuation.section.block.begin.java
  FOO,
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java
  BAR;
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.terminator.java - meta.constant
}
// <- meta.enum.body.java punctuation.section.block.end.java

public enum FooBarBazEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^^^^ meta.enum.identifier.java
//                        ^^ meta.enum.body.java meta.block.java
//     ^^^^ storage.type.enum.java
//          ^^^^^^^^^^^^^ entity.name.enum.java
//                        ^ punctuation.section.block.begin.java
  FOO,  // comment
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java
//      ^^^^^^^^^^^ comment.line.double-slash.java
  BAR,  /* comment */
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java
//      ^^^^^^^^^^^^^ comment.block.java
  BAZ  // comment
//^^^ meta.constant.identifier.java entity.name.constant.java
//     ^^^^^^^^^^^ comment.line.double-slash.java
}
// <- meta.enum.body.java punctuation.section.block.end.java

public enum TokenKind<T> extends MyEnum, FooBaz<? super T<TT>> implements Foo, Bar {
//<- meta.enum.java storage.modifier.java
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^^^ meta.enum.identifier.java
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.extends.java
//                                                             ^^^^^^^^^^^^^^^^^^^^ meta.enum.implements.java
//                                                                                 ^^ meta.enum.body.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^ storage.type.enum.java
//          ^^^^^^^^^ entity.name.enum.java
//                   ^^^ invalid.illegal.unexpected-type-parameters.java
//                       ^^^^^^^ invalid.illegal.unexpected-extends.java
//                               ^^^^^^ entity.other.inherited-class.java
//                                     ^ punctuation.separator.comma.java
//                                       ^^^^^^ entity.other.inherited-class.java
//                                             ^ punctuation.definition.generic.begin.java
//                                             ^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//                                              ^ keyword.operator.wildcard.java
//                                                ^^^^^ keyword.declaration.super.java
//                                                      ^ support.class.java
//                                                       ^ punctuation.definition.generic.begin.java
//                                                       ^^^^ meta.generic.java meta.generic.java
//                                                        ^^ support.class.java
//                                                          ^ punctuation.definition.generic.end.java
//                                                           ^ meta.generic.java punctuation.definition.generic.end.java - meta.generic meta.generic
//                                                             ^^^^^^^^^^ keyword.declaration.implements.java
//                                                                        ^^^ entity.other.inherited-class.java
//                                                                           ^ punctuation.separator.comma.java
//                                                                             ^^^ entity.other.inherited-class.java
//                                                                                 ^ punctuation.section.block.begin.java

    a,
//  ^ meta.constant.identifier.java entity.name.constant.java - meta.constant meta.constant
//   ^ punctuation.separator.comma.java - meta.constant

    a(1, 2, 3),
//  ^ meta.constant.identifier.java entity.name.constant.java - meta.constant meta.constant
//   ^^^^^^^^^ meta.constant.arguments.java meta.parens.java - meta.constant meta.constant
//   ^ punctuation.section.parens.begin.java
//    ^ constant.numeric.integer.decimal.java
//     ^ punctuation.separator.comma.java
//       ^ constant.numeric.integer.decimal.java
//        ^ punctuation.separator.comma.java
//          ^ constant.numeric.integer.decimal.java
//           ^ punctuation.section.parens.end.java
//            ^ punctuation.separator.comma.java

    a
//  ^ meta.constant.identifier.java entity.name.constant.java
    (),
//  ^ meta.constant.arguments.java meta.parens.java punctuation.section.parens.begin.java
//   ^ meta.constant.arguments.java meta.parens.java punctuation.section.parens.end.java
//    ^ punctuation.separator.comma.java

    a
//  ^ meta.constant.identifier.java entity.name.constant.java
    {
//  ^^ meta.constant.body.java meta.block.java
//  ^ punctuation.section.block.begin.java
    },
//^^^ meta.constant.body.java meta.block.java
//  ^ punctuation.section.block.end.java
//   ^ punctuation.separator.comma.java

    a { public void doSomething() { return; } },
//  ^^ meta.constant.identifier.java - meta.constant meta.constant
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constant.body.java meta.block.java - meta.constant meta.constant
//                 ^^^^^^^^^^^^ meta.method.identifier.java
//                             ^^ meta.method.parameters.java meta.parens.java
//                               ^ meta.method.java
//                                ^^^^^^^^^^^ meta.method.body.java meta.block.java
//  ^ entity.name.constant.java
//    ^ punctuation.section.block.begin.java
//      ^^^^^^ storage.modifier.java
//             ^^^^ meta.method.return-type.java
//      ^^^^^^ storage.modifier.java
//             ^^^^ storage.type.void.java
//                  ^^^^^^^^^^^ entity.name.function.java
//                             ^ punctuation.section.parens.begin.java
//                              ^ punctuation.section.parens.end.java
//                                ^ punctuation.section.block.begin.java
//                                  ^^^^^^ keyword.control.flow.return.java
//                                        ^ punctuation.terminator.java
//                                          ^ punctuation.section.block.end.java
//                                            ^ punctuation.section.block.end.java
//                                             ^ punctuation.separator.comma.java

    a ( 1 , 2 , 3 ) { public void doSomething() { return; } },
//  ^^ meta.constant.identifier.java - meta.constant meta.constant
//    ^^^^^^^^^^^^^ meta.constant.arguments.java meta.parens.java - meta.constant meta.constant
//                 ^ meta.constant.java - meta.constant meta.constant
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constant.body.java meta.block.java - meta.constant meta.constant
//                           ^^^^ meta.method.return-type.java
//                               ^^^^^^^^^^^^ meta.method.identifier.java
//                                           ^^ meta.method.parameters.java meta.parens.java
//                                             ^ meta.method.java
//                                              ^^^^^^^^^^^ meta.method.body.java meta.block.java
//  ^ entity.name.constant.java
//    ^ punctuation.section.parens.begin.java
//      ^ constant.numeric.integer.decimal.java
//        ^ punctuation.separator.comma.java
//          ^ constant.numeric.integer.decimal.java
//            ^ punctuation.separator.comma.java
//              ^ constant.numeric.integer.decimal.java
//                ^ punctuation.section.parens.end.java
//                  ^ punctuation.section.block.begin.java
//                    ^^^^^^ storage.modifier.java
//                           ^^^^ storage.type.void.java
//                                ^^^^^^^^^^^ entity.name.function.java
//                                           ^ punctuation.section.parens.begin.java
//                                            ^ punctuation.section.parens.end.java
//                                              ^ punctuation.section.block.begin.java
//                                                ^^^^^^ keyword.control.flow.return.java
//                                                      ^ punctuation.terminator.java
//                                                        ^ punctuation.section.block.end.java
//                                                          ^ punctuation.section.block.end.java
//                                                           ^ punctuation.separator.comma.java

    A,
//  ^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.separator.comma.java

    A(1),
//  ^ meta.constant.identifier.java entity.name.constant.java
//   ^ meta.constant.arguments.java meta.parens.java punctuation.section.parens.begin.java
//    ^ meta.constant.arguments.java meta.parens.java constant.numeric.integer.decimal.java
//     ^ meta.constant.arguments.java meta.parens.java punctuation.section.parens.end.java
//      ^ punctuation.separator.comma.java

    A {},
//  ^^ meta.constant.identifier.java
//  ^ entity.name.constant.java
//    ^ meta.constant.body.java meta.block.java punctuation.section.block.begin.java
//     ^ meta.constant.body.java meta.block.java punctuation.section.block.end.java
//      ^ punctuation.separator.comma.java

    integerToken,
//  ^^^^^^^^^^^^ meta.constant.identifier.java entity.name.constant.java
//              ^ punctuation.separator.comma.java

    integerToken("integer literal"),
//  ^^^^^^^^^^^^ meta.constant.identifier.java entity.name.constant.java
//              ^^^^^^^^^^^^^^^^^^^ meta.constant.arguments.java meta.parens.java
//              ^ punctuation.section.parens.begin.java
//               ^^^^^^^^^^^^^^^^^ string.quoted.double.java
//                                ^ punctuation.section.parens.end.java
//                                 ^ punctuation.separator.comma.java

    integerToken {};
//  ^^^^^^^^^^^^ meta.constant.identifier.java entity.name.constant.java
//              ^ meta.constant.identifier.java - constant
//               ^ meta.constant.body.java meta.block.java punctuation.section.block.begin.java
//                ^ meta.constant.body.java meta.block.java punctuation.section.block.end.java
//                 ^ punctuation.terminator.java

    int {}
//  ^^^ storage.type.primitive.java

    const {}
//  ^^^^^ invalid.illegal.keyword.java

    static {}
//  ^^^^^^ storage.modifier.java

    String image = "";
//  ^^^^^^ support.class.java
//         ^^^^^ variable.other.member.java
//               ^ keyword.operator.assignment.java
//                 ^^ string.quoted.double.java
//                   ^ punctuation.terminator.java

    TokenKind(String s) {}
//  ^^^^^^^^^ meta.method.identifier.java - meta.method meta.method - meta.method.parameters
//           ^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method - meta.method.identifier
//                     ^ meta.method.java - meta.method meta.method - meta.method.parameters - meta.method.body
//                      ^^ meta.method.body.java - meta.method meta.method - meta.method.parameters
//  ^^^^^^^^^ entity.name.function.constructor.java
//           ^ punctuation.section.parens.begin.java
//            ^^^^^^ support.class.java
//                   ^ variable.parameter.java
//                    ^ punctuation.section.parens.end.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

    public static void main(String[]a){}
//                ^^^^ meta.method.return-type.java - meta.method meta.method - meta.method.parameters - meta.method.body
//                    ^^^^^ meta.method.identifier.java - meta.method meta.method - meta.method.parameters
//                         ^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method - meta.method.identifier
//                                    ^^ meta.method.body.java - meta.method meta.method - meta.method.parameters
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
//<- meta.enum.java storage.type.enum.java
TokenKind       // comment
//<- meta.enum.identifier.java entity.name.enum.java
extends         // comment
//<- meta.enum.extends.java invalid.illegal.unexpected-extends.java
MyEnum,         // comment
//<- meta.enum.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.enum.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.enum.implements.java keyword.declaration.implements.java
Foo,            // comment
//<- meta.enum.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.enum.implements.java entity.other.inherited-class.java
{
//<- meta.enum.body.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.enum.body.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Interface Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-9.html#jls-9.1
 *****************************************************************************/

interface
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//       ^ meta.interface.identifier.java

interface TestIntf
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^ meta.interface.identifier.java
//^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java

interface TestIntf extends
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^ meta.interface.identifier.java
//                 ^^^^^^^^ meta.interface.extends.java
//^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java
//                 ^^^^^^^ keyword.declaration.extends.java

interface TestIntf extends A, BB {}
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^ meta.interface.identifier.java
//                 ^^^^^^^^^^^^^^ meta.interface.extends.java
//                               ^^ meta.interface.body.java meta.block.java
//^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java
//                 ^^^^^^^ keyword.declaration.extends.java
//                         ^ entity.other.inherited-class.java
//                          ^ punctuation.separator.comma.java
//                            ^^ entity.other.inherited-class.java
//                               ^ punctuation.section.block.begin.java
//                                ^ punctuation.section.block.end.java

interface /**/ TestIntf /**/ extends /**/ A /**/, /**/ BB /**/ {}
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^ meta.interface.java
//       ^^^^^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.extends.java
//                                                             ^^ meta.interface.body.java meta.block.java
//^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//        ^^^^ comment.block.empty.java
//             ^^^^^^^^ entity.name.interface.java
//                      ^^^^ comment.block.empty.java
//                           ^^^^^^^ keyword.declaration.extends.java
//                                   ^^^^ comment.block.empty.java
//                                        ^ entity.other.inherited-class.java
//                                          ^^^^ comment.block.empty.java
//                                              ^ punctuation.separator.comma.java
//                                                ^^^^ comment.block.empty.java
//                                                     ^^ entity.other.inherited-class.java
//                                                        ^^^^ comment.block.empty.java
//                                                             ^ punctuation.section.block.begin.java
//                                                              ^ punctuation.section.block.end.java


/******************************************************************************
 * Lambda Statement Tests
 *****************************************************************************/

class LambdasStatementTests {
  volatile int foo;
//^^^^^^^^ storage.modifier.java

  void anonymousFunctions() {
     foo();
//   ^^^ variable.function.java

// Capital names are usually used for classes
     Foo();
//   ^^^ support.class.java

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
//                                         ^^ constant.numeric.integer.decimal.java
//                                           ^ punctuation.terminator.java
     foo(a -> 42);
//   ^^^ meta.function-call.identifier.java
//      ^^^^^^^^^ meta.function-call.arguments.java meta.parens.java
//   ^^^ variable.function.java
//      ^ punctuation.section.parens.begin.java
//       ^ variable.parameter.java
//         ^^ storage.type.function.anonymous.java
//            ^^ constant.numeric.integer.decimal.java
//              ^ punctuation.section.parens.end.java
//               ^ punctuation.terminator.java

     a -> { return 42; };
//        ^^^^^^^^^^^^^^ meta.function.anonymous.body.java

     (a, b) -> 42;
//    ^ variable.parameter.java
//       ^ variable.parameter.java
//          ^^ storage.type.function.anonymous.java
//             ^^ constant.numeric.integer.decimal.java

     (int a, Foo<Integer>[] b) -> 42;
//   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java meta.parens.java - meta.function meta.function
//                            ^^^ meta.function.anonymous.java - meta.function meta.function
//                               ^^^ meta.function.anonymous.body.java - meta.function meta.function
//    ^^^ storage.type.primitive
//        ^ variable.parameter.java
//           ^^^ support.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^^^^ support.class.java
//                      ^ punctuation.definition.generic.end.java
//                          ^ variable.parameter.java
//                             ^^ storage.type.function.anonymous.java
//                                ^^ constant.numeric.integer

    (
//  ^^ meta.function.anonymous.parameters.java meta.parens.java - meta.function meta.function
//  ^ punctuation.section.parens.begin.java
        int a,
//     ^^^^^^^^ meta.function.anonymous.parameters.java meta.parens.java - meta.function meta.function
//      ^^^ storage.type.primitive
//          ^ variable.parameter.java
//           ^ punctuation.separator.comma.java
        Foo<Integer>[] b
//     ^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java meta.parens.java - meta.function meta.function
//      ^^^ support.class.java
//         ^ punctuation.definition.generic.begin.java
//          ^^^^^^^ support.class.java
//                 ^ punctuation.definition.generic.end.java
//                     ^ variable.parameter.java
    )
//  ^ meta.function.anonymous.parameters.java meta.parens.java punctuation.section.parens.end.java - meta.function meta.function
//   ^ meta.function.anonymous.java - meta.function meta.function
     ->
//  ^^^ meta.function.anonymous.java - meta.function meta.function
//   ^^ storage.type.function.anonymous.java
     42;
//  ^^^ meta.function.anonymous.body.java - meta.function meta.function
//   ^^ constant.numeric.integer
//     ^ punctuation.terminator.java

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

  List<int> field;

  List<String> field;
//    ^^^^^^^^ meta.generic.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^ support.class.java
//           ^ punctuation.definition.generic.end.java

  List<java.net.URI> field;
//    ^^^^^^^^^^^^^^ meta.generic.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^^^^^^^ meta.path.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^ variable.namespace.java
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
//       ^^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^^ variable.namespace.java
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
//        ^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^ variable.namespace.java
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


@ClassName.FixMethodOrder( MethodSorters.NAME_ASCENDING )
// <- meta.annotation.identifier.java punctuation.definition.annotation.java - meta.annotation meta.annotation
//^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.java - meta.annotation meta.annotation
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters.java meta.parens.java - meta.annotation meta.annotation
//^^^^^^^^ variable.annotation.java
//        ^ punctuation.accessor.dot.java
//         ^^^^^^^^^^^^^^ variable.annotation.java
//                       ^ punctuation.section.parens.begin.java
//                         ^^^^^^^^^^^^^ support.class.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^^^^^^^^ constant.other.java
public class GrafoTest {
    @Override
//  ^^^^^^^^^ meta.annotation..identifier.java
//  ^ punctuation.definition.annotation.java
//   ^^^^^^^^ variable.annotation.java
    void test1() {
//       ^ entity.name.function
    }

    @Author(first = "Oompah", last 
//  ^ meta.annotation.identifier.java
//   ^^^^^^ meta.annotation.identifier.java
//         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.parameters.java
//  ^ punctuation.definition.annotation
//   ^^^^^^ variable.annotation.java
//         ^ punctuation.section.parens.begin
//          ^^^^^ variable.parameter.java
//                ^ keyword.operator
//                  ^^^^^^^^ string
//                          ^ punctuation.separator.comma.java
//                            ^^^^ variable.parameter.java
        = "Loompah")
//^^^^^^^^^^^^^^^^^^ meta.annotation.parameters.java
//      ^ keyword.operator.assignment.java
//        ^^^^^^^^ string
//                 ^ punctuation.section.parens.end
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

}

public @interface PublicAnnotation {
//     ^^^^^^^^^^ storage.type.interface.java
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
//                                     ^^^^^ variable.language.class.java - storage.type.java
  String[] arrayValue() default {"Foo", "Bar"};
//                      ^^^^^^^ keyword.declaration.default.java
//                              ^ punctuation.section.block.begin
//                               ^^^^^ string.quoted.double.java
//                                      ^^^^^ string.quoted.double.java
//                                           ^ punctuation.section.block.end
}

@interface PackageAnnotation {}
//^^^^^^^^ storage.type.interface.java

@MultiLineAnnotation(
// <- meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java
//                  ^ meta.annotation.parameters.java punctuation.section.parens.begin.java
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
// <- meta.annotation.parameters.java punctuation.section.parens.end.java
@fully.qualified.Annotation
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.package.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.package.java
//              ^ punctuation.accessor.dot.java
//                ^^^^^^^^^ variable.annotation.java
@fully.qualified.ParentClass.InnerAnnotation
// <- punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier.java meta.path.java
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
//    ^^^^^ variable.language.class.java - storage.type.java
//         ^ punctuation.separator.comma.java
  Bar.class
//^^^ support.class.java
//   ^ punctuation.accessor.dot.java
//    ^^^^^ variable.language.class.java - storage.type.java
})
// <- punctuation.section.braces.end.java
 // <- meta.annotation.parameters.java punctuation.section.parens.end.java
class Bàr {
//    ^^^ entity.name.class.java
  Bàr() {}
//^^^^^ meta.method
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
// <- meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java
public class Foo {
// <- meta.class.java storage.modifier.java
//^^^^ meta.class.java storage.modifier.java
//     ^^^^^ meta.class.java storage.type.class.java
//           ^^^ meta.class.identifier.java entity.name.class.java
//               ^ meta.class.body.java meta.block.java punctuation.section.block.begin.java

  FooBar MY_CONST = new FooBar();
//       ^^^^^^^^ entity.name.constant.java

  @Inject
//^ meta.annotation.identifier.java punctuation.definition.annotation.java
// ^^^^^^ meta.annotation.identifier.java variable.annotation.java
  public Foo(
//^ - meta.annotation
//       ^ meta.method
//       ^ entity.name.function.constructor
    // Comment for annotation
    @MyAnnotation FooType annotatedParam,
//  ^ meta.annotation.identifier.java punctuation.definition.annotation.java
//   ^^^^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java
//               ^ meta.annotation.identifier.java - variable
//                ^ - meta.annotation.identifier.java
//                ^^^^^^^ support.class.java
//                        ^^^^^^^^^^^^^^ variable.parameter.java
    String unannotatedParam) {
//  ^ support.class.java
//         ^ variable.parameter.java
    return;
//  ^^^^^^ keyword.control.flow.return.java
  }

  void bar$() {}
//     ^^^^^^ meta.method
//     ^^^^ entity.name.function

  void à() {}
//     ^^ meta.method
//     ^ entity.name.function

  public static void main(String[] args, String<List> moreArgs, a.b.c.Foo bar) {}
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java
//                        ^^^^^^ support.class.java
//                              ^^ storage.modifier.array.java
//                                 ^^^^ variable.parameter.java
//                                     ^ punctuation.separator.comma.java
//                                             ^^^^^^ meta.generic.java
//                                       ^^^^^^ support.class.java
//                                              ^^^^ support.class.java
//                                                    ^^^^^^^^ variable.parameter.java
//                                                                ^ variable.namespace.java
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
//                             ^^^^^^^^^^ meta.function-call.identifier.java
//                                       ^^ meta.function-call.arguments.java meta.parens.java
//                                          ^^^^^^^^ meta.function-call.identifier.java
//                                                  ^^^ meta.function-call.arguments.java meta.parens.java
//                             ^^^^^^^^^^ variable.function.java
//                                       ^ punctuation.section.parens.begin.java
//                                        ^ punctuation.section.parens.end.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^^^^^^ variable.function.java
//                                                  ^ punctuation.section.parens.begin.java
//                                                   ^ constant.numeric.integer.decimal.java
//                                                    ^ punctuation.section.parens.end.java
      .withString("I am a string");
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^^ meta.function-call.identifier.java
//               ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.parens.java
//     ^^^^^^^^^^ variable.function.java
//               ^ punctuation.section.parens.begin.java
//                ^^^^^^^^^^^^^^^ string.quoted.double.java
//                               ^ punctuation.section.parens.end.java

  Object bah = someStaticMethodCall(4)
//             ^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.java
//                                 ^^^ meta.function-call.arguments.java meta.parens.java
//             ^^^^^^^^^^^^^^^^^^^^ variable.function.java
//                                 ^ punctuation.section.parens.begin.java
//                                  ^ constant.numeric.integer.decimal.java
//                                   ^ punctuation.section.parens.end.java
      .withString("I am a string");
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^^ meta.function-call.identifier.java
//               ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.parens.java
//     ^^^^^^^^^^ variable.function.java
//               ^ punctuation.section.parens.begin.java
//                ^^^^^^^^^^^^^^^ string.quoted.double.java
//                               ^ punctuation.section.parens.end.java

  private static final String DEFAULT_IDEMPOTENCY_KEY = 44493;
//                            ^ entity.name.constant
//                                                      ^ constant.numeric.integer.decimal.java


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
//                          ^ variable.namespace.java
//                           ^ punctuation.accessor.dot.java
//                            ^ variable.namespace.java
//                             ^ punctuation.accessor.dot.java
//                              ^^^^^^^^^ support.class.java
//                                       ^ punctuation.accessor.dot.java
//                                        ^ constant.other.java

  private static final UUID SECURE_ID = UUID.randomUUID();
//                     ^ support.class.java
//                          ^ entity.name.constant
//                                      ^ support.class.java
//                                           ^ meta.function-call.identifier.java variable.function.java

  private URI uri = new URI();
//        ^^^ support.class.java
//            ^^^ variable.other.member.java
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


/******************************************************************************
 * Operators Tests
 *****************************************************************************/

  int operatorsTests() {

    ==  !=  <=  >=  <>  <  >
//  ^^ keyword.operator.comparison.java
//      ^^ keyword.operator.comparison.java
//          ^^ keyword.operator.comparison.java
//              ^^ keyword.operator.comparison.java
//                  ^^ keyword.operator.comparison.java
//                      ^ keyword.operator.comparison.java
//                         ^ keyword.operator.comparison.java

    !  &&  ||
//  ^ keyword.operator.logical.java
//     ^^ keyword.operator.logical.java
//         ^^ keyword.operator.logical.java

    <<  >>  >>>  ~   &   |   ^
//  ^^ keyword.operator.bitwise.java
//      ^^ keyword.operator.bitwise.java
//          ^^^ keyword.operator.bitwise.java
//               ^ keyword.operator.bitwise.java
//                   ^ keyword.operator.bitwise.java
//                       ^ keyword.operator.bitwise.java
//                           ^ keyword.operator.bitwise.java

      ++  --  +   -   *   /   %
//    ^^ keyword.operator.arithmetic.java
//        ^^ keyword.operator.arithmetic.java
//            ^ keyword.operator.arithmetic.java
//                ^ keyword.operator.arithmetic.java
//                    ^ keyword.operator.arithmetic.java
//                        ^ keyword.operator.arithmetic.java
//                            ^ keyword.operator.arithmetic.java

    x = (e & 1) << c^2 >> 10;
//    ^ keyword.operator.assignment.java
//         ^ keyword.operator.bitwise.java
//              ^^ keyword.operator.bitwise.java
//                  ^ keyword.operator.bitwise.java
//                     ^^ keyword.operator.bitwise.java

    y = ~e >>> (c | 2);
//    ^ keyword.operator.assignment.java
//      ^ keyword.operator.bitwise.java
//         ^^^ keyword.operator.bitwise.java
//                ^ keyword.operator.bitwise.java

    z += x; z -= x; z *= x; z /= x; z %= x;
//    ^^ keyword.operator.assignment.augmented.java
//            ^^ keyword.operator.assignment.augmented.java
//                    ^^ keyword.operator.assignment.augmented.java
//                            ^^ keyword.operator.assignment.augmented.java
//                                    ^^ keyword.operator.assignment.augmented.java

    z &= x; z ^= x; z |= x; z <<= x; z >>= x; z >>>= x;
//    ^^ keyword.operator.assignment.augmented.java
//            ^^ keyword.operator.assignment.augmented.java
//                    ^^ keyword.operator.assignment.augmented.java
//                            ^^^ keyword.operator.assignment.augmented.java
//                                     ^^^ keyword.operator.assignment.augmented.java
//                                              ^^^^ keyword.operator.assignment.augmented.java

    int foo = true ? 1 : 2;
//            ^^^^ constant.language.boolean.java
//                 ^ keyword.operator.ternary.java
//                   ^ constant.numeric.integer.decimal.java
//                     ^ keyword.operator.ternary.java
//                       ^ constant.numeric.integer.decimal.java
//                        ^ punctuation.terminator.java

    assert scale > -100 : foo == true;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assertion.java
//  ^^^^^^ keyword.control.flow.assert.java
//               ^ keyword.operator.comparison.java
//                      ^ punctuation.separator.expressions.java
//                            ^^ keyword.operator.comparison.java

    for (var iter : iters.asMap()) {}
//                ^ keyword.operator.assignment.java

    if (a == false) {}
//        ^^ keyword.operator.comparison.java

    if (this.scale<0) {
//  ^^ keyword.control.conditional.if.java
//     ^^^^^^^^^^^^^^ meta.parens.java
//     ^ punctuation.section.parens.begin
//          ^ punctuation.accessor.dot.java
//                ^ keyword.operator.comparison.java
//                 ^ constant.numeric.integer.decimal.java
//                   ^ - meta.parens.java
    return foo<<32;
//  ^^^^^^ keyword.control.flow.return.java
//            ^^ keyword.operator.bitwise.java
//              ^^ constant.numeric.integer.decimal.java
//                ^ punctuation.terminator.java
    }
//  ^ meta.block.java punctuation.section.block.end.java

    return foo<bar;
//  ^^^^^^ keyword.control.flow.return.java
//            ^ keyword.operator.comparison.java

    boolean inst = a instanceof Object;
//                   ^^^^^^^^^^ keyword.other.storage.instanceof.java
  }
//^ meta.method.body.java punctuation.section.block.end.java


/******************************************************************************
 * Numeric Constants Tests
 *****************************************************************************/

  int numbersTests() {

    a = 0x1.;
//      ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//        ^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//         ^ punctuation.separator.decimal.java

    a = 0x.1a2f;
//      ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//        ^^^^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//        ^ punctuation.separator.decimal.java

    a = 0x1.a2f;
//      ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//        ^^^^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//         ^ punctuation.separator.decimal.java

    a = 0x1ffp+1023 0x1ffp+_1023_;
//      ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//        ^^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//           ^^^^^^ meta.number.value.exponent.java constant.numeric.float.hexadecimal.java
//                  ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//                    ^^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//                       ^^^^^^^^ meta.number.value.exponent.java constant.numeric.float.hexadecimal.java

    a = 0xd.aP-1074 0x_1_f_._a_d_P-_10_74_;
//      ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//        ^^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//           ^^^^^^ meta.number.value.exponent.java constant.numeric.float.hexadecimal.java
//                  ^^ meta.number.base.java constant.numeric.float.hexadecimal.java
//                    ^^^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.hexadecimal.java
//                                ^^^^^^^^ meta.number.value.exponent.java constant.numeric.float.hexadecimal.java
//         ^ punctuation.separator.decimal.java
//                         ^ punctuation.separator.decimal.java

//  decimal floats

    a = 0D + 12345D + 12345D + 12_34_5_D - _12_34_5D - 12a45D;
//      ^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//       ^ meta.number.type.java constant.numeric.float.decimal.java
//           ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                ^ meta.number.type.java constant.numeric.float.decimal.java
//                    ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                         ^ meta.number.type.java constant.numeric.float.decimal.java
//                             ^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                     ^ meta.number.type.java constant.numeric.float.decimal.java
//                                         ^^^^^^^^^ - constant.numeric
//                                                     ^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                                       ^^^^ - constant.numeric

    a = 0F + 12345F + 12345F + 12_34_5_F - _12_34_5F - 12a45F;
//      ^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//       ^ meta.number.type.java constant.numeric.float.decimal.java
//           ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                ^ meta.number.type.java constant.numeric.float.decimal.java
//                    ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                         ^ meta.number.type.java constant.numeric.float.decimal.java
//                             ^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                     ^ meta.number.type.java constant.numeric.float.decimal.java
//                                         ^^^^^^^^^ - constant.numeric
//                                                     ^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                                       ^^^^ - constant.numeric

    a = 1. + 1_. + 1_2. - _1.;
//      ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//       ^ punctuation.separator.decimal.java
//           ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//             ^ punctuation.separator.decimal.java
//                 ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                    ^ punctuation.separator.decimal.java
//                        ^^^ - constant.numeric

    a = 1.D + 1_.D + 1_2.D - _1.D;
//      ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//       ^ punctuation.separator.decimal.java
//        ^ meta.number.type.java constant.numeric.float.decimal.java
//            ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//              ^ punctuation.separator.decimal.java
//               ^ meta.number.type.java constant.numeric.float.decimal.java
//                   ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                      ^ punctuation.separator.decimal.java
//                       ^ meta.number.type.java constant.numeric.float.decimal.java
//                           ^^^^ - constant.numeric

    a = 1.2 + 1_.2_ + 1_2.3_4 + 1_2_._3_4_ - _1.5;
//      ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//       ^ punctuation.separator.decimal.java
//            ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//              ^ punctuation.separator.decimal.java
//                    ^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                       ^ punctuation.separator.decimal.java
//                              ^^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                  ^ punctuation.separator.decimal.java
//                                           ^^ - constant.numeric
//                                             ^ punctuation.separator.decimal.java
//                                             ^^ meta.number.value.mantissa.java constant.numeric.float.decimal

    a = 1.2d + 1_.2_d + 1_2.3_4d + 1_2_._3_4_d - _1.5d;
//      ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//       ^ punctuation.separator.decimal.java
//         ^ meta.number.type.java constant.numeric.float.decimal.java
//             ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//               ^ punctuation.separator.decimal.java
//                  ^ meta.number.type.java constant.numeric.float.decimal.java
//                      ^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                         ^ punctuation.separator.decimal.java
//                             ^ meta.number.type.java constant.numeric.float.decimal.java
//                                 ^^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                     ^ punctuation.separator.decimal.java
//                                           ^ meta.number.type.java constant.numeric.float.decimal.java
//                                               ^^ - constant.numeric
//                                                 ^ punctuation.separator.decimal.java
//                                                 ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                   ^ meta.number.type.java constant.numeric.float.decimal.java

    a = 12e34 + 12e+3_ + 1_2e3_4 + 1_2_e3_4_ + 1_2_e_3_4 + 12e+34 + 12e-34 + 12e+3_4 - _12e34;
//      ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//        ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//              ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                       ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                          ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                 ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                     ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                             ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                 ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                         ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                           ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                  ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                    ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                           ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                             ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                     ^^^^^^ - constant.numeric

    a = 12e34f + 12e+3_f + 1_2e3_4f + 1_2_e3_4_f + 1_2_e_3_4f + 12e+34f + 12e-34f + 12e+3_4f - _12e34f;
//      ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//        ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//           ^ meta.number.type.java constant.numeric.float.decimal.java
//               ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                 ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                     ^ meta.number.type.java constant.numeric.float.decimal.java
//                         ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                            ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                ^ meta.number.type.java constant.numeric.float.decimal.java
//                                    ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                        ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                             ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                 ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                     ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                          ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                              ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                    ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                        ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                          ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                              ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                  ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                    ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                         ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                             ^^^^^^^ - constant.numeric

    a = 12.e34 + 12.e+3_ + 1_2.e3_4 + 1_2_.e3_4_ + 1_2_.e_3_4 + 12.e+34 + 12.e-34 + 12.e+3_4 - _12.e34;
//      ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//        ^ punctuation.separator.decimal.java
//         ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//               ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                 ^ punctuation.separator.decimal.java
//                  ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                         ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                            ^ punctuation.separator.decimal.java
//                             ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                    ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                        ^ punctuation.separator.decimal.java
//                                         ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                 ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                     ^ punctuation.separator.decimal.java
//                                                      ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                              ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                ^ punctuation.separator.decimal.java
//                                                                 ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                        ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                          ^ punctuation.separator.decimal.java
//                                                                           ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                  ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                    ^ punctuation.separator.decimal.java
//                                                                                     ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                             ^^^^^^^ - constant.numeric

    a = 12.e34f + 12.e+3_f + 1_2.e3_4f + 1_2_.e3_4_f + 1_2_.e_3_4f + 12.e+34f + 12.e-34f + 12.e+3_4f - _12.e34f;
//      ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//        ^ punctuation.separator.decimal.java
//         ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//            ^ meta.number.type.java constant.numeric.float.decimal.java
//                ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                  ^ punctuation.separator.decimal.java
//                   ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                       ^ meta.number.type.java constant.numeric.float.decimal.java
//                           ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                              ^ punctuation.separator.decimal.java
//                               ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                   ^ meta.number.type.java constant.numeric.float.decimal.java
//                                       ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                           ^ punctuation.separator.decimal.java
//                                            ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                 ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                     ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                         ^ punctuation.separator.decimal.java
//                                                          ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                               ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                   ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                     ^ punctuation.separator.decimal.java
//                                                                      ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                          ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                              ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                ^ punctuation.separator.decimal.java
//                                                                                 ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                     ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                         ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                           ^ punctuation.separator.decimal.java
//                                                                                            ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                                 ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                                     ^^^^^^^^ - constant.numeric

    a = 12.34e56 + 12_.34_e+5_ + 1_2.3_4e5_6 + 1_2_.3_4_e5_6_ + 1_2_._3_4e_5_6 + 12.34e+56 + 12.34e-56 + 12.34e+5_6 - _12.34e+5_6;
//      ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//        ^ punctuation.separator.decimal.java
//           ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                 ^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                    ^ punctuation.separator.decimal.java
//                        ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                               ^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                  ^ punctuation.separator.decimal.java
//                                      ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                             ^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                 ^ punctuation.separator.decimal.java
//                                                      ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                              ^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                  ^ punctuation.separator.decimal.java
//                                                                       ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                               ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                 ^ punctuation.separator.decimal.java
//                                                                                    ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                           ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                             ^ punctuation.separator.decimal.java
//                                                                                                ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                                       ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                                         ^ punctuation.separator.decimal.java
//                                                                                                            ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                                                    ^^^ - constant.numeric
//                                                                                                                       ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                                                          ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java

    a = 12.34e56f + 12_.34_e+5_f + 1_2.3_4e5_6f + 1_2_.3_4_e5_6_f + 1_2_._3_4e_5_6f + 12.34e+56f + 12.34e-56f + 12.34e+5_6f - _12.34e+5_6f;
//      ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//        ^ punctuation.separator.decimal.java
//           ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//              ^ meta.number.type.java constant.numeric.float.decimal.java
//                  ^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                     ^ punctuation.separator.decimal.java
//                         ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                             ^ meta.number.type.java constant.numeric.float.decimal.java
//                                 ^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                    ^ punctuation.separator.decimal.java
//                                        ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                            ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                ^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                    ^ punctuation.separator.decimal.java
//                                                         ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                              ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                  ^^^^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                      ^ punctuation.separator.decimal.java
//                                                                           ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                    ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                      ^ punctuation.separator.decimal.java
//                                                                                         ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                             ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                                 ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                                   ^ punctuation.separator.decimal.java
//                                                                                                      ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                                          ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                                              ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                                                ^ punctuation.separator.decimal.java
//                                                                                                                   ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                                                        ^ meta.number.type.java constant.numeric.float.decimal.java
//                                                                                                                            ^^^ - constant.numeric
//                                                                                                                               ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                                                                  ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                                                                       ^ meta.number.type.java constant.numeric.float.decimal.java

    a = .2 + .2_ + .3_4 + ._3_4_;
//      ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//      ^ punctuation.separator.decimal.java
//           ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//           ^ punctuation.separator.decimal.java
//                 ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                 ^ punctuation.separator.decimal.java
//                        ^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                        ^ punctuation.separator.decimal.java

    a = .2d + .2_d + .3_4d + ._3_4_d;
//      ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//      ^ punctuation.separator.decimal.java
//        ^ meta.number.type.java constant.numeric.float.decimal.java
//            ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//            ^ punctuation.separator.decimal.java
//               ^ meta.number.type.java constant.numeric.float.decimal.java
//                   ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                   ^ punctuation.separator.decimal.java
//                       ^ meta.number.type.java constant.numeric.float.decimal.java
//                           ^^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                           ^ punctuation.separator.decimal.java
//                                 ^ meta.number.type.java constant.numeric.float.decimal.java

    a = .34e56 + .34_e+5_ + .3_4e5_6 + .3_4_e5_6_ + ._3_4e_5_6 + .34e+56 + .34e-56 + .34e+5_6;
//      ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//      ^ punctuation.separator.decimal.java
//         ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//               ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//               ^ punctuation.separator.decimal.java
//                   ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                          ^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                          ^ punctuation.separator.decimal.java
//                              ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                     ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                     ^ punctuation.separator.decimal.java
//                                          ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                  ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                  ^ punctuation.separator.decimal.java
//                                                       ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                               ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                               ^ punctuation.separator.decimal.java
//                                                                  ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                         ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                         ^ punctuation.separator.decimal.java
//                                                                            ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                                                                   ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                                                                                   ^ punctuation.separator.decimal.java
//                                                                                      ^^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java

    a = 23.45 + 23.45F + 23.45d;
//      ^^^^^ constant.numeric.float.decimal.java
//        ^ punctuation.separator.decimal.java
//              ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                ^ punctuation.separator.decimal.java
//                   ^ meta.number.type.java constant.numeric.float.decimal.java
//                       ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                         ^ punctuation.separator.decimal.java
//                            ^ meta.number.type.java constant.numeric.float.decimal.java

    a = .01 + .02e3+.02e3F;
//      ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//      ^ punctuation.separator.decimal.java
//          ^ keyword.operator
//            ^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//               ^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                 ^ keyword.operator
//                   ^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                     ^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                       ^ meta.number.type.java constant.numeric.float.decimal.java

    a = 23.45e67+23.45e+6F+23.45e-67D;
//      ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//           ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//              ^ keyword.operator
//               ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                    ^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                       ^ meta.number.type.java constant.numeric.float.decimal.java
//                        ^ keyword.operator
//                         ^^^^^ meta.number.value.mantissa.java constant.numeric.float.decimal.java
//                              ^^^^ meta.number.value.exponent.java constant.numeric.float.decimal.java
//                                  ^ meta.number.type.java constant.numeric.float.decimal.java

// binary integers

    a = 0b101101 + 0b10_11_01 + 0b10_11_01_ + 0b_101101 - 0_b10_1101 + 0b;
//      ^^ meta.number.base.java constant.numeric.integer.binary.java
//        ^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                 ^^ meta.number.base.java constant.numeric.integer.binary.java
//                   ^^^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                              ^^ meta.number.base.java constant.numeric.integer.binary.java
//                                ^^^^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                                            ^^ meta.number.base.java constant.numeric.integer.binary.java
//                                              ^^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                                                        ^ meta.number.base.java constant.numeric.integer.octal.java
//                                                         ^ meta.number.value.java constant.numeric.integer.octal.java
//                                                          ^^^^^^^^ - constant.numeric
//                                                                     ^^ meta.number.base.java constant.numeric.integer.binary.java

    a = 0b101101l + 0b10_11_01l + 0b10_11_01_l + 0b_101101l - 0_b10_1101l + 0bl;
//      ^^ meta.number.base.java constant.numeric.integer.binary.java
//        ^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//              ^ meta.number.type.java constant.numeric.integer.binary.java
//                  ^^ meta.number.base.java constant.numeric.integer.binary.java
//                    ^^^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                            ^ meta.number.type.java constant.numeric.integer.binary.java
//                                ^^ meta.number.base.java constant.numeric.integer.binary.java
//                                  ^^^^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                                           ^ meta.number.type.java constant.numeric.integer.binary.java
//                                               ^^ meta.number.base.java constant.numeric.integer.binary.java
//                                                 ^^^^^^^ meta.number.value.java constant.numeric.integer.binary.java
//                                                        ^ meta.number.type.java constant.numeric.integer.binary.java
//                                                            ^ meta.number.base.java constant.numeric.integer.octal.java
//                                                             ^ meta.number.value.java constant.numeric.integer.octal.java
//                                                              ^^^^^^^^^ - constant.numeric
//                                                                          ^^ meta.number.base.java constant.numeric.integer.binary.java
//                                                                            ^ meta.number.type.java constant.numeric.integer.binary.java

// hexadecimal integers

    a = 0xABCD + 0xAB_CD + 0xAB_CD_ + 0x_AB_CD - 0_xAB_CD - 0x;
//      ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//        ^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//             ^ keyword.operator.arithmetic.java
//               ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//                 ^^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//                       ^ keyword.operator.arithmetic.java
//                         ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//                           ^^^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//                                  ^ keyword.operator.arithmetic.java
//                                    ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//                                      ^^^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//                                             ^ keyword.operator.arithmetic.java
//                                               ^ meta.number.base.java constant.numeric.integer.octal.java
//                                                ^ meta.number.value.java constant.numeric.integer.octal.java
//                                                 ^^^^^^ - constant.numeric
//                                                        ^ keyword.operator.arithmetic.java
//                                                          ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java

    a = 0xABCDl + 0xAB_CDl + 0xAB_CD_l + 0x_AB_CDl - 0_xAB_CDl;
//      ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//        ^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//            ^ meta.number.type.java constant.numeric.integer.hexadecimal.java
//              ^ keyword.operator.arithmetic.java
//                ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//                  ^^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//                       ^ meta.number.type.java constant.numeric.integer.hexadecimal.java
//                         ^ keyword.operator.arithmetic.java
//                           ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//                             ^^^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//                                   ^ meta.number.type.java constant.numeric.integer.hexadecimal.java
//                                     ^ keyword.operator.arithmetic.java
//                                       ^^ meta.number.base.java constant.numeric.integer.hexadecimal.java
//                                         ^^^^^^ meta.number.value.java constant.numeric.integer.hexadecimal.java
//                                               ^ meta.number.type.java constant.numeric.integer.hexadecimal.java
//                                                 ^ keyword.operator.arithmetic.java
//                                                   ^ meta.number.base.java constant.numeric.integer.octal.java
//                                                    ^ meta.number.value.java constant.numeric.integer.octal.java
//                                                     ^^^^^^^ - constant.numeric

//  octal integers

    a = 07 + 0_ + 0_7 + 07_ + 079 + 079_ + 0_79_ - 0a - 0_a;
//      ^ meta.number.base.java constant.numeric.integer.octal.java
//       ^ meta.number.value.java constant.numeric.integer.octal.java
//           ^ meta.number.base.java constant.numeric.integer.octal.java
//            ^ meta.number.value.java constant.numeric.integer.octal.java
//                ^ meta.number.base.java constant.numeric.integer.octal.java
//                 ^^ meta.number.value.java constant.numeric.integer.octal.java
//                      ^ meta.number.base.java constant.numeric.integer.octal.java
//                       ^^ meta.number.value.java constant.numeric.integer.octal.java
//                            ^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                            ^ invalid.illegal.numeric.java
//                                  ^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                  ^ invalid.illegal.numeric.java
//                                         ^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                         ^^ invalid.illegal.numeric.java
//                                                 ^ meta.number.value.java constant.numeric.integer.decimal.java
//                                                  ^ - constant.numeric
//                                                      ^ meta.number.base.java constant.numeric.integer.octal.java
//                                                       ^ meta.number.value.java constant.numeric.integer.octal.java
//                                                        ^ - constant.numeric

    a = 07l + 0_l + 0_7l + 07_l + 0792l + 079_2_l - 0al - 0_a_l;
//      ^ meta.number.base.java constant.numeric.integer.octal.java
//       ^ meta.number.value.java constant.numeric.integer.octal
//        ^ meta.number.type.java constant.numeric.integer.octal.java
//            ^ meta.number.base.java constant.numeric.integer.octal.java
//             ^ meta.number.value.java constant.numeric.integer.octal.java
//              ^ meta.number.type.java constant.numeric.integer.octal.java
//                  ^ meta.number.base.java constant.numeric.integer.octal.java
//                   ^^ meta.number.value.java constant.numeric.integer.octal.java
//                     ^ meta.number.type.java constant.numeric.integer.octal.java
//                         ^ meta.number.base.java constant.numeric.integer.octal.java
//                          ^^ meta.number.value.java constant.numeric.integer.octal.java
//                            ^ meta.number.type.java constant.numeric.integer.octal.java
//                                ^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                ^ invalid.illegal.numeric.java
//                                    ^ meta.number.type.java constant.numeric.integer.decimal.java
//                                        ^^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                        ^ invalid.illegal.numeric.java
//                                              ^ meta.number.type.java constant.numeric.integer.decimal.java
//                                                  ^ meta.number.value.java constant.numeric.integer.decimal.java
//                                                   ^^ - constant.numeric
//                                                        ^ meta.number.base.java constant.numeric.integer.octal.java
//                                                         ^ meta.number.value.java constant.numeric.integer.octal.java
//                                                          ^^^ - constant.numeric

//  decimal integers

    a = 0 + 0L;
//      ^ meta.number.value.java constant.numeric.integer.decimal.java
//          ^ meta.number.value.java constant.numeric.integer.decimal.java
//           ^ meta.number.type.java constant.numeric.integer.decimal.java

    a = 12345 + 12_34_5 + 1_____5 + 12_34_5_ - _12_34_5 - 12a45;
//      ^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//              ^^^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                        ^^^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                  ^^^^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                             ^^^^^^^^ - constant.numeric
//                                                        ^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                                          ^^^ - constant.numeric

    a = 12345l + 12345L + 12_34_5_L - _12_34_5L - 12a45L;
//      ^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//           ^ meta.number.type.java constant.numeric.integer.decimal.java
//               ^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                    ^ meta.number.type.java constant.numeric.integer.decimal.java
//                        ^^^^^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                ^ meta.number.type.java constant.numeric.integer.decimal.java
//                                    ^^^^^^^^^ - constant.numeric
//                                                ^^ meta.number.value.java constant.numeric.integer.decimal.java
//                                                  ^^^^ - constant.numeric

    a = 123_-_456;
//      ^^^^ meta.number.value.java constant.numeric.integer.decimal.java
//          ^ keyword.operator
//           ^^^^ - constant.numeric
  }


/******************************************************************************
 * String and Character Constants Tests
 *
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-3.html#jls-3.3
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-3.html#jls-3.10.4
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-3.html#jls-3.10.5
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-3.html#jls-3.10.6
 * https://docs.oracle.com/en/java/javase/13/text_blocks/index.html
 *****************************************************************************/

  String stringAndCharsTests() {

    String trippleQuotes = """
//                         ^^^ string.quoted.triple.java punctuation.definition.string.begin.java
        String with
        several lines.
        """;
//      ^^^ string.quoted.triple.java punctuation.definition.string.end.java
//         ^ punctuation.terminator.java - string

    String trippleQuotes = """illegal content
//                         ^^^ string.quoted.triple.java punctuation.definition.string.begin.java
//                            ^^^^^^^^^^^^^^^ string.quoted.triple.java invalid.illegal.unexpected-content.java
        String with
        several lines.""";
//      ^^^^^^^^^^^^^^^^^ string.quoted.triple.java
//                    ^^^ punctuation.definition.string.end.java
//                       ^ punctuation.terminator.java - string

    String doubleQuotes = "String with double quotes";
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                        ^ punctuation.definition.string.begin
//                                                  ^ punctuation.definition.string.end

    char singleQuotes = 'x';
//                      ^^^ string.quoted.single
//                      ^ punctuation.definition.string.begin
//                        ^ punctuation.definition.string.end

    String escapes = "Here \2 are \n some \t escaped \'\\' characters \"";
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                         ^^ constant.character.escape
//                                ^^ constant.character.escape
//                                                   ^^^^ constant.character.escape
//                                                                    ^^ constant.character.escape

    String octal = "\0 \7 \8 \77 \377 \477"
//                  ^^ constant.character.escape.octal.java
//                    ^ - constant.character.escape
//                     ^^ constant.character.escape.octal.java
//                       ^^^^ - constant.character.escape
//                           ^^^ constant.character.escape.octal.java
//                              ^ - constant.character.escape
//                               ^^^^ constant.character.escape.octal.java
//                                   ^ - constant.character.escape
//                                    ^^^ constant.character.escape.octal.java
//                                       ^ - constant.character.escape

    String unicode = "\\u2122=\u2122 \uAF \u005cu005a \uu21AF"
//                    ^^^^^^^^ - constant.character.escape.unicode
//                            ^^^^^^ constant.character.escape.unicode.java
//                                  ^^^^^^ - constant.character.escape.unicode
//                                        ^^^^^^ constant.character.escape.unicode.java
//                                              ^^^^^^ - constant.character.escape.unicode
//                                                    ^^^^^^^ constant.character.escape.unicode.java

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
//                                             ^ invalid.illegal.unexpected-newline
    System.out.println(text);
//  ^^^^^^ support.class

    char letter = 'z
//                  ^ invalid.illegal.unexpected-newline
    System.out.println(letter);
//  ^^^^^^ support.class
  }


/******************************************************************************
 * Var Type Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.4
 *****************************************************************************/

  void varTypeTests() {

    var
//  ^^^ storage.type.var.java

    var x, y;
//  ^^^ storage.type.var.java
//      ^ variable.other.readwrite.java
//       ^ invalid.illegal.expect-terminator.java
//         ^ variable.other.readwrite.java
//          ^ punctuation.terminator.java

    var x = "String";
//  ^^^ storage.type.var.java
//      ^ variable.other.readwrite.java
//        ^ keyword.operator.assignment.java

    final var y = 10;
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.var.java
//            ^ variable.other.readwrite.java
//              ^ keyword.operator.assignment.java

    final var[] y = 10, z[] = 5;
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.var.java
//           ^^ invalid.illegal.unexpected-modifier.java
//              ^ variable.other.readwrite.java
//                ^ keyword.operator.assignment.java
//                  ^^ constant.numeric.integer.decimal.java
//                    ^ invalid.illegal.expect-terminator.java
//                             ^ punctuation.terminator.java

    @Number final var y @Dim1 [] @Dim2 [] = { {10, 1}, {5, 2} };
//  ^^^^^^^ meta.annotation.identifier.java
//          ^^^^^ storage.modifier.java
//                ^^^ storage.type.var.java
//                    ^ variable.other.readwrite.java
//                      ^^^^^ meta.annotation.identifier.java
//                            ^^ invalid.illegal.unexpected-modifier.java
//                               ^^^^^ meta.annotation.identifier.java
//                                     ^^ invalid.illegal.unexpected-modifier.java

    for (var foo = 0; foo < 10; ++foo) {}
//       ^^^ storage.type.var.java

    for (var foo : new BufferedReader()) {
//       ^^^ storage.type.var.java
        var bar = foo.read();
//      ^^^ storage.type.var.java
    }

    try (var in = new BufferedReader()) {
//       ^^^ storage.type.var.java
        var line = in.readLine();
//      ^^^ storage.type.var.java
    }
  }


/******************************************************************************
 * Labeled Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.7
 *****************************************************************************/

  void labeledStatementTests() {

    label:
//  ^^^^^ entity.name.label.java
//       ^ punctuation.separator.colon.java

    while (True) {
//  ^^^^^ keyword.control.loop.while.java

      break label;
//    ^^^^^ keyword.control.flow.break.java
//          ^^^^^ variable.label.java

      continue label;
//    ^^^^^^^^ keyword.control.flow.continue.java
//             ^^^^^ variable.label.java
      goto label;
//    ^^^^ invalid.illegal
//         ^^^^^ variable.other.readwrite.java
    }
  }


  @Test
//^ meta.annotation.identifier.java punctuation.definition.annotation.java
// ^^^^ meta.annotation.identifier.java variable.annotation.java
  public void someMethod(WithParam foo) throws Exception {
//            ^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//                       ^ support.class.java
//                                 ^ variable.parameter.java
//                                      ^^^^^^^^^^^^^^^^ meta.method.throws.java
//                                      ^^^^^^ keyword.declaration.throws.java
//                                             ^^^^^^^^^ support.class.java
//                                                       ^ meta.method.body.java punctuation.section.block.begin.java
    Object otherFoo = methodInvocation(foo);
//  ^  support.class.java
//                  ^ keyword.operator.assignment.java
//                    ^ meta.function-call.identifier.java variable.function.java
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
//                         ^ constant.numeric.integer.decimal.java
//                          ^ punctuation.separator.comma.java
//                            ^ constant.numeric.integer.decimal.java
//                             ^ punctuation.separator.comma.java
//                               ^ constant.numeric.integer.decimal.java
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
//        ^ constant.numeric.integer.decimal.java
//         ^ punctuation.separator.comma.java
//           ^ constant.numeric.integer.decimal.java
//    ^ punctuation.section.braces.begin.java
//                         ^ punctuation.section.braces.end.java
//                          ^ punctuation.separator.comma.java
      { { 5, 6 }, { 7, 8 } }
//        ^ constant.numeric.integer.decimal.java
//         ^ punctuation.separator.comma.java
//           ^ constant.numeric.integer.decimal.java
//    ^ punctuation.section.braces.begin.java
//                         ^ punctuation.section.braces.end.java
    };
//  ^ punctuation.section.braces.end.java

    threeDimArr = new int[1][3][4];
//                    ^^^ storage.type.primitive.java
//                       ^^^^^^^^^ meta.brackets.array-initialization.java
//                       ^ punctuation.section.brackets.begin.java
//                        ^ constant.numeric.integer.decimal.java
//                         ^ punctuation.section.brackets.end.java
//                          ^ punctuation.section.brackets.begin.java
//                           ^ constant.numeric.integer.decimal.java
//                            ^ punctuation.section.brackets.end.java
//                             ^ punctuation.section.brackets.begin.java
//                              ^ constant.numeric.integer.decimal.java
//                               ^ punctuation.section.brackets.end.java

    bob = new some.path.to.MyObject[3];
//            ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                         ^^^^^^^^ support.class.java
//                                 ^^^ meta.brackets.array-initialization.java
//                                 ^ punctuation.section.brackets.begin.java
//                                  ^ constant.numeric.integer.decimal.java
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
//                                           ^ constant.language.boolean.java
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
//  ^ meta.annotation.identifier.java punctuation.definition.annotation.java
//   ^^^^^^^^^^^^ meta.annotation.identifier.java variable.annotation.java
    int foo;
  }
//^ meta.method.body.java punctuation.section.block.end.java

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
//                ^^^^^ variable.language.class.java - storage.type.java
  public void someReallyReallyLongMethodNameThatMakesTheBraceOverflowToTheNextLine(
//            ^ meta.method.identifier.java entity.name.function.java
//                                                                                ^ punctuation.section.parens.begin
      WITHSOMEPARAMS foo,
//    ^ meta.method.parameters.java support.class.java
//                   ^ meta.method.parameters.java variable.parameter.java
      Generic<Param> bar)
//    ^ meta.method.parameters.java support.class.java
//           ^^^^^^^ meta.generic.java
//                   ^ meta.method.parameters.java variable.parameter.java
//                      ^ punctuation.section.parens.end
      throws Exception {
//    ^ meta.method.throws.java keyword.declaration.throws.java
//           ^ meta.method.throws.java support.class.java
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
//             ^ meta.function-call.arguments.java punctuation.section.parens.end.java
  }
//^ meta.method.body.java punctuation.section.block.end.java

  public static <T> T writeAll(Collection<? extends T>, Sink<T>) {}
//                    ^^^^^^^^ meta.method.identifier.java
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                                               ^^ meta.method.body.java meta.block.java
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
//                                   ^^^^^^^^^^^ meta.generic.java
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
//     ^ meta.method.identifier.java entity.name.function.java

  private Long myOtherAbstractMethod(@WithAnnotation Blah blah);
//             ^ meta.method.identifier.java entity.name.function.java
//                                   ^ meta.method.parameters.java punctuation.definition.annotation.java

  public MyGeneric<Param, With, Multiple, Types> otherAbstractMethod(Foo<With, Another> bar);
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java
//                                              ^ - meta.generic.java
//       ^ support.class.java
//                 ^ support.class.java
//                        ^ support.class.java
//                              ^ support.class.java
//                                        ^ support.class.java
//                                               ^ meta.method.identifier.java entity.name.function.java

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
// <- meta.class.body.java punctuation.section.block.end.java
 //<- invalid.illegal.stray-brace-end

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


/******************************************************************************
 * JavaDoc Tests
 *****************************************************************************/

class JavadocTests {

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


/******************************************************************************
 * Module Declaration Tests
 *****************************************************************************/

module java.base {
//^^^^ meta.namespace.module.java - meta.namespace.module.identifier
//    ^ meta.namespace.module.identifier.java - meta.path
//     ^^^^^^^^^ meta.namespace.module.identifier.java meta.path.java
//              ^ meta.namespace.module.identifier - meta.namespace.module.body - meta.path
//               ^^ meta.namespace.module.body.java meta.block.java
//^^^^ storage.type.namespace.module.java keyword.declaration.namespace.module.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ entity.name.namespace.module.java
//               ^ punctuation.section.block.begin.java
  exports java;
//^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.exports.java
//            ^ meta.namespace.module.body.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^^ entity.name.namespace.package.java
//            ^ punctuation.terminator.java

  exports java.io;
//^^^^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.exports.java
//        ^^^^^^^ meta.path.java
//               ^ meta.namespace.module.body.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^ entity.name.namespace.package.java
//               ^ punctuation.terminator.java

  exports jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.exports.java
//        ^^^^^^^^^^^^^^^^^ meta.path.java
//                             ^^^^^^^^^^^^ meta.path.java
//                                           ^^^^^^^^^ meta.path.java
//                                                    ^ meta.namespace.module.body.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^^^^^^ variable.namespace.java
//                    ^ punctuation.accessor.dot.java
//                     ^^^^ entity.name.namespace.package.java
//                          ^^ keyword.other.module.to.java
//                             ^^^ variable.namespace.java
//                                ^ punctuation.accessor.dot.java
//                                 ^^^^^^^^ entity.name.namespace.module.java
//                                         ^ punctuation.separator.comma.java
//                                           ^^^ variable.namespace.java
//                                              ^ punctuation.accessor.dot.java
//                                               ^^^^^ entity.name.namespace.module.java
//                                                    ^ punctuation.terminator.java

  opens java.io;
//^^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.opens.java
//             ^ meta.namespace.module.body.java meta.block.java - meta.opens
//^^^^^ keyword.other.module.opens.java
//      ^^^^  variable.namespace.java
//          ^ punctuation.accessor.dot.java
//           ^^ entity.name.namespace.package.java
//             ^ punctuation.terminator.java

  opens jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.opens.java
//                                                  ^ meta.namespace.module.body.java meta.block.java - meta.opens
//                        ^^ keyword.other.module.to.java
//                           ^^^ variable.namespace.java
//                              ^ punctuation.accessor.dot.java
//                               ^^^^^^^^ entity.name.namespace.module.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.namespace.java
//                                            ^ punctuation.accessor.dot.java
//                                             ^^^^^ entity.name.namespace.module.java
//                                                  ^ punctuation.terminator.java

  opens // incomplete to check if it affects the next statement

  uses java.security.Provider;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.uses.java
//^^^^ keyword.other.module.uses.java
//     ^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^^^^ variable.namespace.java
//                  ^ punctuation.accessor.dot.java
//                   ^^^^^^^^ entity.name.class.java
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
//^^^^^^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.requires.java
//                 ^ meta.namespace.module.body.java meta.block.java - meta.requires
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^ variable.namespace.java
//             ^ punctuation.accessor.dot.java
//              ^^^ entity.name.namespace.module.java
//                 ^ punctuation.terminator.java

  requires transitive javafx.base;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.body.java meta.block.java meta.requires.java
//                               ^ meta.namespace.module.body.java meta.block.java - meta.requires
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^^^^^^^ keyword.other.module.transitive.java
//                    ^^^^^^ variable.namespace.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^ entity.name.namespace.module.java
//                               ^ punctuation.terminator.java

}
//<- meta.namespace.module.body.java meta.block.java punctuation.section.block.end.java

open module open.module {}
//^^^^^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
//         ^ meta.namespace.module.identifier.java - meta.path
//          ^^^^^^^^^^^ meta.namespace.module.identifier.java meta.path.java
//                     ^ meta.namespace.module.identifier - meta.namespace.module.body - meta.path
//                      ^^ meta.namespace.module.body.java meta.block.java
//^^ storage.modifier.java
//   ^^^^^^ storage.type.namespace.module.java keyword.declaration.namespace.module.java
//          ^^^^ variable.namespace.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^ entity.name.namespace.module.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

open module
//^^^^^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
    open
//  ^^^^ meta.namespace.module.identifier.java meta.path.java variable.namespace.java
    .
//  ^ meta.namespace.module.identifier.java meta.path.java punctuation.accessor.dot.java
    module
//  ^^^^^^ meta.namespace.module.identifier.java meta.path.java entity.name.namespace.module.java
    {
//  ^ meta.namespace.module.body.java meta.block.java punctuation.section.block.begin.java
    }
//  ^ meta.namespace.module.body.java meta.block.java punctuation.section.block.end.java
