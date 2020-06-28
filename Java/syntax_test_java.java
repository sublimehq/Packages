// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

/******************************************************************************
 * Package Declaration Tests
 *****************************************************************************/

package
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java - meta.path
//     ^ meta.namespace.package.identifier.java
//^^^^^ keyword.declaration.namespace.package.java

package apple
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java - meta.path
//     ^^^^^^ meta.namespace.package.identifier.java - meta.path
//^^^^^ keyword.declaration.namespace.package.java
//      ^^^^^ entity.name.namespace.package.java

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

package com.
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java - meta.path
//     ^ meta.namespace.package.identifier.java - meta.path
//      ^^^^^ meta.namespace.package.identifier.java meta.path.java
//      ^^^ variable.namespace.java - punctuation
//         ^ punctuation.accessor.dot.java - entity - variable

package com.example.apple;
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java - meta.path
//     ^ meta.namespace.package.identifier.java - meta.path
//      ^^^^^^^^^^^^^^^^^ meta.namespace.package.identifier.java meta.path.java
//      ^^^ variable.namespace.java - punctuation
//         ^ punctuation.accessor.dot.java - entity - variable
//          ^^^^^^^ variable.namespace.java - punctuation
//                 ^ punctuation.accessor.dot.java - entity - variable
//                  ^^^^^ entity.name.namespace.package.java - punctuation
//                       ^ punctuation.terminator.java

package
// <- meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
//^^^^^ meta.namespace.package.java storage.type.namespace.package.java keyword.declaration.namespace.package.java
    com
//  ^^^ meta.namespace.package.identifier.java meta.path.java variable.namespace.java - punctuation
    .
//  ^ meta.namespace.package.identifier.java meta.path.java punctuation.accessor.dot.java - entity - variable
    example.
//  ^^^^^^^ meta.namespace.package.identifier.java meta.path.java variable.namespace.java - punctuation
//         ^ meta.namespace.package.identifier.java meta.path.java punctuation.accessor.dot.java - entity - variable
    apple
//  ^^^^^ meta.namespace.package.identifier.java meta.path.java entity.name.namespace.package.java - punctuation
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
//     ^^ variable.namespace.java - punctuation
//       ^ punctuation.accessor.dot.java - entity - variable
//        ^^^^^^^^^^ variable.namespace.java - punctuation
    variable
//  ^^^^^^^^ variable.other - meta.import

import static
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path

import static no.terminator
// <- meta.import.java keyword.control.import.java
//^^^^^^^^^^^^ meta.import.java - meta.path
//            ^^^^^^^^^^^^^^ meta.import.java meta.path.java
//            ^^ variable.namespace.java - punctuation
//              ^ punctuation.accessor.dot.java - entity - variable
//               ^^^^^^^^^^ variable.namespace.java - punctuation
    variable
//  ^^^^^^^^ variable.other - meta.import

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
//      ^^^^^^^^^ - variable
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
//     ^ variable.namespace.java - punctuation
//      ^ - variable - punctuation
//       ^ punctuation.accessor.dot.java - entity - variable
//        ^ - variable - punctuation
//         ^ variable.namespace.java - punctuation
//          ^ - variable - punctuation
//           ^ punctuation.accessor.dot.java - entity - variable
//            ^ - variable - punctuation
//             ^ keyword.operator.wildcard.asterisk.java
//               ^ punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.control.import.java
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java - punctuation
//      ^ punctuation.accessor.dot.java - entity - variable
//       ^ variable.namespace.java - punctuation
//        ^ punctuation.accessor.dot.java - entity - variable
//         ^^^^^ entity.name.class.java - punctuation
//              ^ punctuation.terminator.java

import a.b.Class.*;
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java - entity - variable
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java - entity - variable
//         ^^^^^ entity.name.class.java
//              ^ punctuation.accessor.dot.java - entity - variable
//               ^ keyword.operator.wildcard.asterisk.java

import a.b.Class.SubClass;
//^^^^^ meta.import.java - meta.path
//     ^^^^^^^^^^^^^^^^^^ meta.import.java meta.path.java
//     ^ variable.namespace.java
//      ^ punctuation.accessor.dot.java - entity - variable
//       ^ variable.namespace.java
//        ^ punctuation.accessor.dot.java - entity - variable
//         ^^^^^ entity.name.class.java
//              ^ punctuation.accessor.dot.java - entity
//               ^^^^^^^^ entity.name.class.java

import
//^^^^^ meta.import.java - meta.path
    a
//^^ meta.import.java - meta.path
//  ^^ meta.import.java meta.path.java
//  ^ variable.namespace.java
    .
//^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java - entity - variable
    b
//^^^^ meta.import.java meta.path.java
//  ^ variable.namespace.java
    .Class
//^^^^^^^^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java - entity - variable
//   ^^^^^ entity.name.class.java
    .
//^^^^ meta.import.java meta.path.java
//  ^ punctuation.accessor.dot.java - entity
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
//                  ^^^^^^^^^^^^^ - entity - variable
//                   ^^^^ comment.block.empty.java
//                        ^ punctuation.accessor.dot.java
//                          ^^^^ comment.block.empty.java
//                               ^ variable.namespace.java
//                                ^^^^^^^^^^^^^ - entity - variable
//                                 ^^^^ comment.block.empty.java
//                                      ^ punctuation.accessor.dot.java
//                                        ^^^^ comment.block.empty.java
//                                             ^^^^^ entity.name.class.java
//                                                  ^^^^^^^^^^^^^ - entity - variable
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
//              ^^ meta.class.java meta.block.java - meta.class meta.class
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
//                            ^^ meta.class.java meta.block.java - meta.class meta.class
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
//                                     ^^ meta.class.java meta.block.java - meta.class meta.class
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

class GenericTest<
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java

class GenericTest<A
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java

class GenericTest<A extends
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                  ^^^^^^^ keyword.declaration.extends.java

class GenericTest<A extends Foo
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                  ^^^^^^^ keyword.declaration.extends.java
//                          ^^^ support.class.java

class GenericTest<integer extends Foo>
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^^^^^ variable.parameter.type.java
//                        ^^^^^^^ keyword.declaration.extends.java
//                                ^^^ support.class.java
//                                   ^ punctuation.definition.generic.end.java

class GenericTest<int extends Foo>
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^^^ invalid.illegal.unexpected-keyword.java
//                    ^^^^^^^ keyword.declaration.extends.java
//                            ^^^ support.class.java
//                               ^ punctuation.definition.generic.end.java

class GenericTest<? extends Foo>
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ invalid.illegal.unexpected-keyword.java
//                  ^^^^^^^ keyword.declaration.extends.java
//                          ^^^ support.class.java
//                             ^ punctuation.definition.generic.end.java

class GenericTest<A super Foo>
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                  ^^^^^ invalid.illegal.unexpected-keyword.java
//                        ^^^ support.class.java
//                           ^ punctuation.definition.generic.end.java

class GenericTest<@Anno A extends @Anno com . @Anno Foo<A, @Anno com . @Anno Bar> & @Anno Foo<? super Baz> . @Anno Bar<A extends Foo>>
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class - meta.generic
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.class meta.class - meta.generic
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                               ^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                           ^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                                                        ^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                                                    ^^^^^^^^^^^^^^^ meta.class.identifier.java meta.generic.declaration.java meta.generic.java
//                                                                                                                                   ^ meta.class.identifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                                                                                                    ^ meta.class.identifier.java - meta.generic
//               ^ punctuation.definition.generic.begin.java
//                ^ punctuation.definition.annotation.java
//                 ^^^^ variable.annotation.java
//                      ^ variable.parameter.type.java
//                        ^^^^^^^ keyword.declaration.extends.java
//                                ^ punctuation.definition.annotation.java
//                                 ^^^^ variable.annotation.java
//                                      ^^^ variable.namespace.java
//                                          ^ punctuation.accessor.dot.java
//                                                  ^^^ support.class.java
//                                                     ^ punctuation.definition.generic.begin.java
//                                                      ^ support.class.java
//                                                       ^ punctuation.separator.comma.java
//                                                         ^ punctuation.definition.annotation.java
//                                                          ^^^^ variable.annotation.java
//                                                               ^^^ variable.namespace.java
//                                                                   ^ punctuation.accessor.dot.java
//                                                                     ^ punctuation.definition.annotation.java
//                                                                      ^^^^ variable.annotation.java
//                                                                           ^^^ support.class.java
//                                                                              ^ punctuation.definition.generic.end.java
//                                                                                ^ keyword.operator.multiple-bounds.java
//                                                                                  ^ punctuation.definition.annotation.java
//                                                                                   ^^^^ variable.annotation.java
//                                                                                        ^^^ support.class.java
//                                                                                           ^ punctuation.definition.generic.begin.java
//                                                                                            ^ keyword.operator.wildcard.java
//                                                                                              ^^^^^ keyword.declaration.super.java
//                                                                                                    ^^^ support.class.java
//                                                                                                       ^ punctuation.definition.generic.end.java
//                                                                                                         ^ punctuation.accessor.dot.java
//                                                                                                           ^ punctuation.definition.annotation.java
//                                                                                                            ^^^^ variable.annotation.java
//                                                                                                                 ^^^ support.class.java
//                                                                                                                    ^ punctuation.definition.generic.begin.java
//                                                                                                                     ^ support.class.java
//                                                                                                                       ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                                                                                                               ^^^ support.class.java
//                                                                                                                                  ^^ punctuation.definition.generic.end.java

class GenericTest<A> extends Foo<? extends A> {}
//<- meta.class.java storage.type.class.java keyword.declaration.class.java
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.generic - meta.class meta.class
//               ^^^ meta.class.identifier.java meta.generic.declaration.java - meta.class meta.class
//                  ^ meta.class.identifier.java - meta.generic - meta.class meta.class
//                   ^^^^^^^^^^^ meta.class.extends.java - meta.generic - meta.class meta.class
//                              ^^^^^^^^^^^^^ meta.class.extends.java meta.generic.java - meta.class meta.class
//                                           ^ meta.class.extends.java - meta.generic - meta.class meta.class
//                                            ^^ meta.class.java meta.block.java - meta.class meta.class
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

class GenericTest<A> extends @Anno com . @Anno Foo<@Anno ? extends @Anno SuperClass . @Anno SubClass & @Anno OtherClass>, @Anno OuterClass {}
//^^^ meta.class.java - meta.class meta.class
//   ^^^^^^^^^^^^ meta.class.identifier.java - meta.generic - meta.class meta.class
//               ^^^ meta.class.identifier.java meta.generic.declaration.java - meta.class meta.class
//                  ^ meta.class.identifier.java - meta.generic - meta.class meta.class
//                   ^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class - meta.generic - meta.path
//                                 ^^^^^^^^^^^^^^^ meta.class.extends.java meta.path.java - meta.class meta.class
//                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.extends.java meta.generic.java - meta.class meta.class
//                                                                                                                      ^^^^^^^^^^^^^^^^^^^ meta.class.extends.java - meta.class meta.class - meta.generic
//                                                                                                                                         ^^ meta.class.java meta.block.java - meta.class meta.class
//^^^ storage.type.class.java
//   ^ - entity - keyword - storage
//    ^^^^^^^^^^^ entity.name.class.java
//               ^^^^ - entity - keyword - storage
//               ^ punctuation.definition.generic.begin.java
//                ^ variable.parameter.type.java
//                 ^ punctuation.definition.generic.end.java
//                   ^^^^^^^ keyword.declaration.extends.java
//                          ^ - entity - keyword - storage
//                           ^ punctuation.definition.annotation.java
//                            ^^^^ variable.annotation.java
//                                 ^^^ variable.namespace.java
//                                     ^ punctuation.accessor.dot.java
//                                       ^ punctuation.definition.annotation.java
//                                        ^^^^ variable.annotation.java
//                                             ^^^ entity.other.inherited-class.java
//                                                ^ punctuation.definition.generic.begin.java
//                                                 ^ punctuation.definition.annotation.java
//                                                  ^^^^ variable.annotation.java
//                                                       ^ keyword.operator.wildcard.java
//                                                         ^^^^^^^ keyword.declaration.extends.java
//                                                                 ^ punctuation.definition.annotation.java
//                                                                  ^^^^ variable.annotation.java
//                                                                       ^^^^^^^^^^ support.class.java
//                                                                                  ^ punctuation.accessor.dot.java
//                                                                                    ^ punctuation.definition.annotation.java
//                                                                                     ^^^^ variable.annotation.java
//                                                                                          ^^^^^^^^ support.class.java
//                                                                                                   ^ keyword.operator.multiple-bounds.java
//                                                                                                     ^ punctuation.definition.annotation.java
//                                                                                                      ^^^^ variable.annotation.java
//                                                                                                           ^^^^^^^^^^ support.class.java
//                                                                                                                     ^ punctuation.definition.generic.end.java
//                                                                                                                      ^ punctuation.separator.comma.java
//                                                                                                                       ^ - entity - keyword - storage - variable
//                                                                                                                        ^ punctuation.definition.annotation.java
//                                                                                                                         ^^^^ variable.annotation.java
//                                                                                                                             ^ - entity - keyword - storage - variable
//                                                                                                                              ^^^^^^^^^^ entity.other.inherited-class.java
//                                                                                                                                         ^ punctuation.section.block.begin.java
//                                                                                                                                          ^ punctuation.section.block.end.java

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
//                                  ^^ meta.class.java meta.block.java - meta.class meta.class
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
//                                                         ^^ meta.class.java meta.block.java - meta.class meta.class
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
//<- meta.class.java invalid.illegal.unexpected-keyword.java
//^^^^^^^^^^^^ meta.class.java - meta.class meta.class
//^^^^^^ invalid.illegal.unexpected-keyword.java
//            ^ meta.class.identifier.java - meta.class meta.class
//             ^^^^^^^^ meta.class.extends.java - meta.class meta.class
//                     ^^^^^^^^^^^ meta.class.implements.java - meta.class meta.class
//                                ^^ meta.class.java meta.block.java - meta.class meta.class
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
//                                                                       ^^ meta.class.java meta.block.java - meta.class meta.class
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
//                                                                            ^^ meta.class.java meta.block.java - meta.class meta.class
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
//             ^^^^^^^^^^^^^ meta.class.java meta.block.java
//    ^^^^^^^^ entity.name.class.java
//             ^ punctuation.section.block.begin.java
//               ^^^^^^^^^^^^ comment.line.double-slash.java

    const class NestedClass {
//  ^^^^^ invalid.illegal.keyword.java
//        ^^^^^ meta.class.java meta.block.java meta.class.java storage.type.class.java keyword.declaration.class.java
//             ^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                          ^^ meta.class.java meta.block.java meta.class.java meta.block.java
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
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
//   ^ meta.class.java meta.block.java - meta.class meta.class

    class SubClass extends AbstractClass {
//  ^^^^^ meta.class.java meta.block.java meta.class.java
//       ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                       ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//  ^^^^^ storage.type.class.java keyword.declaration.class.java
//        ^^^^^^^^ entity.name.class.java
//                 ^^^^^^^ keyword.declaration.extends.java
//                         ^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                       ^ punctuation.section.block.begin.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java

    class SubClass extends AbstractClass.NestedClass {
//  ^^^^^ meta.class.java meta.block.java meta.class.java
//       ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                                   ^^ meta.class.java meta.block.java meta.class.java meta.block.java
//  ^^^^^ storage.type.class.java keyword.declaration.class.java
//        ^^^^^^^^ entity.name.class.java
//                 ^^^^^^^ keyword.declaration.extends.java
//                         ^^^^^^^^^^^^^ entity.other.inherited-class.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^^^^^ entity.other.inherited-class.java
//                                                   ^ punctuation.section.block.begin.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java

    protected class SubClass extends fully.qualified
//  ^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.java
//                 ^^^^^^^^^^ meta.class.java meta.block.java meta.class.identifier.java
//                           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//                                   ^^^^^^^^^^^^^^^^ meta.path.java
//                                   ^^^^^ variable.namespace.java
//                                        ^ punctuation.accessor.dot.java
//                                         ^^^^^^^^^ variable.namespace.java
    .name.AbstractClass {
// ^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.class.extends.java
//  ^^^^^^^^^^^^^^^^^^^ meta.path.java
//  ^ punctuation.accessor.dot.java
//   ^^^^ variable.namespace.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^^^^^^^^^ entity.other.inherited-class.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java

@Anno           // comment
//<- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
public          // comment
//<- meta.class.java storage.modifier.java
class           // comment
//<- meta.class.java storage.type.class.java
TestClass       // comment
//<- meta.class.identifier.java entity.name.class.java
extends         // comment
//<- meta.class.extends.java keyword.declaration.extends.java
MyClass,        // comment
//<- meta.class.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.class.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.class.implements.java keyword.declaration.implements.java
Foo,            // comment
//<- meta.class.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.class.implements.java entity.other.inherited-class.java
{
//<- meta.class.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


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
//            ^^ meta.enum.java meta.block.java
//  ^ - entity - keyword - storage
//   ^^^^^^^^ entity.name.enum.java
//           ^ - entity
//            ^ punctuation.section.block.begin.java
//             ^ punctuation.section.block.end.java

public enum EnumTest { int {} }
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^ meta.enum.identifier.java
//                   ^^^^^^^^^^ meta.enum.java meta.block.java
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
//                   ^^^^^^^^^^ meta.enum.java meta.block.java
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
//                  ^^ meta.enum.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^ storage.type.enum.java
//          ^^^^^^^ entity.name.enum.java
//                  ^ punctuation.section.block.begin.java
  FOO;
//^^^ meta.constant.identifier.java entity.name.constant.java
//   ^ punctuation.terminator.java - meta.constant
}
// <- meta.enum.java punctuation.section.block.end.java

public enum FooBarEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^ meta.enum.identifier.java
//                     ^^ meta.enum.java meta.block.java
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
// <- meta.enum.java punctuation.section.block.end.java

public enum FooBarBazEnum {
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^^^^ meta.enum.identifier.java
//                        ^^ meta.enum.java meta.block.java
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
// <- meta.enum.java punctuation.section.block.end.java

public enum TokenKind<T> extends MyEnum, FooBaz<? super T<TT>> implements Foo, Bar {
//<- meta.enum.java storage.modifier.java
//^^^^^^^^^ meta.enum.java
//         ^^^^^^^^^^^^^^ meta.enum.identifier.java
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.extends.java
//                                                             ^^^^^^^^^^^^^^^^^^^^ meta.enum.implements.java
//                                                                                 ^^ meta.enum.java meta.block.java
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
//  ^^ meta.constant.java meta.block.java
//  ^ punctuation.section.block.begin.java
    },
//^^^ meta.constant.java meta.block.java
//  ^ punctuation.section.block.end.java
//   ^ punctuation.separator.comma.java

    a { public void doSomething() { return; } },
//  ^^ meta.constant.identifier.java - meta.constant meta.constant
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constant.java meta.block.java - meta.constant meta.constant
//      ^^^^^^^ meta.method.modifier.java
//             ^^^^^ meta.method.return-type.java
//                  ^^^^^^^^^^^ meta.method.identifier.java
//                             ^^ meta.method.parameters.java meta.parens.java
//                               ^ meta.method.java
//                                ^^^^^^^^^^^ meta.method.java meta.block.java
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
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constant.java meta.block.java - meta.constant meta.constant
//                    ^^^^^^^ meta.method.modifier.java
//                           ^^^^^ meta.method.return-type.java
//                                ^^^^^^^^^^^ meta.method.identifier.java
//                                           ^^ meta.method.parameters.java meta.parens.java
//                                             ^ meta.method.java
//                                              ^^^^^^^^^^^ meta.method.java meta.block.java
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
//    ^ meta.constant.java meta.block.java punctuation.section.block.begin.java
//     ^ meta.constant.java meta.block.java punctuation.section.block.end.java
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
//               ^ meta.constant.java meta.block.java punctuation.section.block.begin.java
//                ^ meta.constant.java meta.block.java punctuation.section.block.end.java
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
//  ^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//  ^^^^^^^^^ meta.method.identifier.java
//           ^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                     ^^^ meta.method.java - meta.method meta.method
//  ^^^^^^^^^ entity.name.function.constructor.java
//           ^ punctuation.section.parens.begin.java
//            ^^^^^^ support.class.java
//                   ^ variable.parameter.java
//                    ^ punctuation.section.parens.end.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

    final int attribAfterConstructor;
//  ^^^^^^ meta.field.modifier.java
//        ^^^^ meta.field.type.java
//            ^^^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                  ^ - meta.field
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                  ^ punctuation.terminator.java

    public static void main(String[]a){}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//  ^^^^^^^^^^^^^^ meta.method.modifier.java
//                ^^^^^ meta.method.return-type.java
//                     ^^^^ meta.method.identifier.java
//                         ^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                    ^^ meta.method.java
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

    final int attribAfterMember;
//  ^^^^^^ meta.field.modifier.java
//        ^^^^ meta.field.type.java
//            ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ - meta.field
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                             ^ punctuation.terminator.java

    private class SubClass {}
//  ^^^^^^^^^^^^^ meta.class.java
//               ^^^^^^^^^^ meta.class.identifier.java
//                         ^^ meta.class.java meta.block.java
//  ^^^^^^^ storage.modifier.java
//          ^^^^^ keyword.declaration.class.java
//                ^^^^^^^^ entity.name.class.java
//                         ^ punctuation.section.block.begin.java
//                          ^ punctuation.section.block.end.java

    private final int attribAfterClass;
//  ^^^^^^^^^^^^^^ meta.field.modifier.java
//                ^^^^ meta.field.type.java
//                    ^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                    ^ - meta.field
//  ^^^^^^^ storage.modifier.java
//          ^^^^^ storage.modifier.java
//                ^^^ storage.type.primitive.java
//                    ^^^^^^^^^^^^^^^^ variable.other.member.java
//                                    ^ punctuation.terminator.java
}
//<- meta.enum.java meta.block.java punctuation.section.block.end.java

@Anno           // comment
//<- meta.enum.java meta.annotation.identifier.java punctuation.definition.annotation.java
public          // comment
//<- meta.enum.java storage.modifier.java
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
//<- meta.enum.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.enum.java meta.block.java punctuation.section.block.end.java


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
//                               ^^ meta.interface.java meta.block.java
//^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//        ^^^^^^^^ entity.name.interface.java
//                 ^^^^^^^ keyword.declaration.extends.java
//                         ^ entity.other.inherited-class.java
//                          ^ punctuation.separator.comma.java
//                            ^^ entity.other.inherited-class.java
//                               ^ punctuation.section.block.begin.java
//                                ^ punctuation.section.block.end.java

public interface /**/ TestIntf <T1, T2> /**/ extends /**/ A /**/, /**/ BB /**/ {}
//<- meta.interface.java storage.modifier.java
//^^^^^^^^^^^^^^ meta.interface.java
//              ^^^^^^^^^^^^^^^ meta.interface.identifier.java - meta.generic
//                             ^^^^^^^^ meta.interface.identifier.java meta.generic.declaration.java
//                                     ^^^^^^ meta.interface.identifier.java - meta.generic
//                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.extends.java
//                                                                             ^^ meta.interface.java meta.block.java
//^^^^ storage.modifier.java
//     ^^^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//               ^^^^ comment.block.empty.java
//                    ^^^^^^^^ entity.name.interface.java
//                             ^ punctuation.definition.generic.begin.java
//                              ^^ variable.parameter.type.java
//                                ^ punctuation.separator.comma.java
//                                  ^^ variable.parameter.type.java
//                                    ^ punctuation.definition.generic.end.java
//                                      ^^^^ comment.block.empty.java
//                                           ^^^^^^^ keyword.declaration.extends.java
//                                                   ^^^^ comment.block.empty.java
//                                                        ^ entity.other.inherited-class.java
//                                                          ^^^^ comment.block.empty.java
//                                                              ^ punctuation.separator.comma.java
//                                                                ^^^^ comment.block.empty.java
//                                                                     ^^ entity.other.inherited-class.java
//                                                                        ^^^^ comment.block.empty.java
//                                                                             ^ punctuation.section.block.begin.java
//                                                                              ^ punctuation.section.block.end.java

@Anno           // comment
//<- meta.interface.java meta.annotation.identifier.java punctuation.definition.annotation.java
public          // comment
//<- meta.interface.java storage.modifier.java
interface       // comment
//<- meta.interface.java storage.type.interface.java
TestIntf        // comment
//<- meta.interface.identifier.java entity.name.interface.java
<T1, T2>
//<- meta.interface.identifier.java meta.generic.declaration.java
extends         // comment
//<- meta.interface.extends.java keyword.declaration.extends.java
MyEnum,         // comment
//<- meta.interface.extends.java entity.other.inherited-class.java
FooBaz          // comment
//<- meta.interface.extends.java entity.other.inherited-class.java
implements      // comment
//<- meta.interface.implements.java invalid.illegal.unexpected-implements.java
Foo,            // comment
//<- meta.interface.implements.java entity.other.inherited-class.java
Bar             // comment
//<- meta.interface.implements.java entity.other.inherited-class.java
{
//<- meta.interface.java meta.block.java punctuation.section.block.begin.java
}
//<- meta.interface.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Annotation Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-9.html#jls-9.6
 *****************************************************************************/

@interface
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//        ^ meta.interface.identifier.java

@interface AnnotationType
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java
//        ^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//^^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//         ^^^^^^^^^^^^^^ entity.name.interface.java

// Note: The extends is actually not allowed here, but the syntax definition does
//       not yet distiguish between interface types and annotation types
@interface AnnotationType extends
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java
//        ^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                        ^^^^^^^^ meta.interface.extends.java
//^^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//         ^^^^^^^^^^^^^^ entity.name.interface.java
//                        ^^^^^^^ keyword.declaration.extends.java

@interface AnnotationType {
//<- meta.interface.java storage.type.interface.java keyword.declaration.interface.java
//^^^^^^^^ meta.interface.java
//        ^^^^^^^^^^^^^^^^ meta.interface.identifier.java
//                        ^^ meta.interface.java meta.block.java
//^^^^^^^^ storage.type.interface.java keyword.declaration.interface.java
//         ^^^^^^^^^^^^^^ entity.name.interface.java
//                        ^ punctuation.section.block.begin.java

  int numericValue() default 42;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^ meta.method.return-type.java
//    ^^^^^^^^^^^^ meta.method.identifier.java
//                ^^ meta.method.parameters.java meta.parens.java
//                  ^ meta.method.java
//                   ^^^^^^^^^^ meta.method.default.java
//                             ^ - meta.method
//    ^^^^^^^^^^^^ entity.name.function.java
//                ^ punctuation.section.parens.begin.java
//                 ^ punctuation.section.parens.end.java
//                   ^^^^^^^ keyword.declaration.default.java
//                           ^^ constant.numeric

  boolean booleanValue() default true;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^ meta.method.return-type.java
//        ^^^^^^^^^^^^ meta.method.identifier.java
//                    ^^ meta.method.parameters.java meta.parens.java
//                      ^ meta.method.java
//                       ^^^^^^^^^^^^ meta.method.default.java
//                                   ^ - meta.method
//        ^^^^^^^^^^^^ entity.name.function.java
//                    ^ punctuation.section.parens.begin.java
//                     ^ punctuation.section.parens.end.java
//                       ^^^^^^^ keyword.declaration.default.java
//                               ^^^^ constant.language

  char charValue() default 'S';
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^ meta.method.return-type.java
//     ^^^^^^^^^ meta.method.identifier.java
//              ^^ meta.method.parameters.java meta.parens.java
//                ^ meta.method.java
//                 ^^^^^^^^^^^ meta.method.default.java
//                            ^ - meta.method
//     ^^^^^^^^^ entity.name.function.java
//              ^ punctuation.section.parens.begin.java
//               ^ punctuation.section.parens.end.java
//                 ^^^^^^^ keyword.declaration.default.java
//                         ^^^ string.quoted.single.java

  String value() default "Default value";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^ meta.method.return-type.java
//       ^^^^^ meta.method.identifier.java
//            ^^ meta.method.parameters.java meta.parens.java
//              ^ meta.method.java
//       ^^^^^ entity.name.function.java
//            ^ punctuation.section.parens.begin.java
//             ^ punctuation.section.parens.end.java
//               ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.default.java
//                                      ^ - meta.method
//               ^^^^^^^ keyword.declaration.default.java
//                       ^^^^^^^^^^^^^^^ string.quoted.double.java

  Class<?> classValue() default String.class;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^ meta.method.return-type.java
//         ^^^^^^^^^^ meta.method.identifier.java
//                   ^^ meta.method.parameters.java meta.parens.java
//                     ^ meta.method.java
//                      ^^^^^^^^^^^^^^^^^^^^ meta.method.default.java
//                                          ^ - meta.method
//         ^^^^^^^^^^ entity.name.function.java
//                   ^ punctuation.section.parens.begin.java
//                    ^ punctuation.section.parens.end.java
//                      ^^^^^^^ keyword.declaration.default.java
//                              ^^^^^^ support.class.java
//                                    ^ punctuation.accessor.dot.java
//                                     ^^^^^ variable.language.class.java - storage.type.java

  String[] arrayValue()[] default {"Foo", "Bar"};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^ meta.method.return-type.java
//         ^^^^^^^^^^ meta.method.identifier.java
//                   ^^ meta.method.parameters.java meta.parens.java
//                     ^^^ meta.method.java
//                        ^^^^^^^^ meta.method.default.java - meta.braces
//                                ^^^^^^^^^^^^^^ meta.method.default.java meta.braces.java
//                                              ^ - meta.method
//         ^^^^^^^^^^ entity.name.function.java
//                   ^ punctuation.section.parens.begin.java
//                    ^ punctuation.section.parens.end.java
//                     ^^ storage.modifier.array.java
//                        ^^^^^^^ keyword.declaration.default.java
//                                ^ punctuation.section.braces.begin.java
//                                 ^^^^^ string.quoted.double.java
//                                      ^ punctuation.separator.comma.java
//                                        ^^^^^ string.quoted.double.java
//                                             ^ punctuation.section.braces.end.java
}


/******************************************************************************
 * Field Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.4
 *****************************************************************************/

class FieldDeclarationTests {

  const int bar; // this comment() is recognized as code
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^^^ - meta.field
//      ^^^^ meta.field.type.java
//          ^^^ meta.field.identifier.java
//             ^ - meta.field
//^^^^^ invalid.illegal.keyword.java
//      ^^^ storage.type.primitive.java
//          ^^^ variable.other.member.java
//             ^ punctuation.terminator.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
//               ^^ punctuation.definition.comment.java

  int
//^^^^ meta.field.type.java - meta.field meta.field
//^^^ storage.type.primitive.java

  int foo
//^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java

  int foo =
//^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^ meta.field.value.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java

  int foo = 0
//^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^ meta.field.value.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java
//          ^ constant.numeric.integer.decimal.java

  int foo = 0 ,
//^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^ meta.field.value.java
//            ^ meta.field.java
//             ^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java
//          ^ constant.numeric.integer.decimal.java
//            ^ punctuation.separator.sequence.java

  int foo = 0 , bar ;
//^^^^^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^ meta.field.value.java
//            ^ meta.field.java
//             ^^^^^ meta.field.identifier.java
//                  ^ - meta.field
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ keyword.operator.assignment.java
//          ^ constant.numeric.integer.decimal.java
//            ^ punctuation.separator.sequence.java
//              ^^^ variable.other.member.java
//                  ^ punctuation.terminator.java

  int =
//^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^ meta.field.java
//     ^ meta.field.value.java
//^^^ storage.type.primitive.java
//    ^ keyword.operator.assignment.java

  public
//^^^^^^^ meta.field.modifier.java
//^^^^^^ storage.modifier.java
//      ^ - storage
  int foo , bar
//<- meta.field.modifier.java - meta.field meta.field - storage
//^^^^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.type.java
//    ^^^^ meta.field.identifier.java
//        ^ meta.field.java
//         ^^^^^ meta.field.identifier.java
//^^^ storage.type.primitive.java
//    ^^^ variable.other.member.java
//        ^ punctuation.separator.sequence.java
//          ^^^ variable.other.member.java
    , baz
//^^^^^^^^ - meta.field meta.field
//^^ meta.field.identifier.java
//  ^ meta.field.java
//    ^^^^ meta.field.identifier.java
//  ^ punctuation.separator.sequence.java
//    ^^^ variable.other.member.java
      = 10 ,
//^^^^^^^^^^^ - meta.field meta.field
//^^^^ meta.field.identifier.java
//    ^ meta.field.java
//     ^^^^ meta.field.value.java
//         ^ meta.field.java
//    ^ keyword.operator.assignment.java
//      ^^ constant.numeric.integer.decimal.java
//         ^ punctuation.separator.sequence.java
    , = 20
//^^^^^^^^^ - meta.field meta.field
//^^ meta.field.identifier.java
//  ^ meta.field.java
//   ^ meta.field.identifier.java
//    ^ meta.field.java
//     ^^^^ meta.field.value.java
//  ^ punctuation.separator.sequence.java
//    ^ keyword.operator.assignment.java
//      ^^ constant.numeric.integer.decimal.java
    , , ;
//^^^^^^ - meta.field meta.field
//^^ meta.field.value.java
//  ^ meta.field.java punctuation.separator.sequence.java
//   ^ meta.field.identifier.java
//    ^ meta.field.java punctuation.separator.sequence.java
//     ^ meta.field.identifier.java
//      ^ punctuation.terminator.java - meta.field

  public protected private static final transient volatile int foo
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.modifier.java
//                                                         ^^^^ meta.field.type.java
//                                                             ^^^^ meta.field.identifier.java
//^^^^^^ storage.modifier.java
//      ^ - storage
//       ^^^^^^^^^ storage.modifier.java
//                ^ - storage
//                 ^^^^^^^ storage.modifier.java
//                        ^ - storage
//                         ^^^^^^ storage.modifier.java
//                               ^ - storage
//                                ^^^^^ storage.modifier.java
//                                     ^ - storage
//                                      ^^^^^^^^^ storage.modifier.java
//                                               ^ - storage
//                                                ^^^^^^^^ storage.modifier.java
//                                                        ^ - storage
//                                                         ^^^ storage.type.primitive.java
//                                                            ^ - storage - variable
//                                                             ^^^ variable.other.member.java
//                                                                ^ - variable

  abstract native synchronized strictfp default int foo.bar
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.modifier.java - storage
//                                              ^^^^ meta.field.type.java
//                                                  ^^^^^^^^ meta.field.identifier.java
//^^^^^^^^ invalid.illegal.unexpected-keyword.java
//        ^ - invalid
//         ^^^^^^ invalid.illegal.unexpected-keyword.java
//               ^ - invalid
//                ^^^^^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                            ^ - invalid
//                             ^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                     ^ - invalid
//                                      ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                             ^ - invalid
//                                              ^^^ storage.type.primitive.java
//                                                 ^ - storage - variable
//                                                  ^^^ variable.other.member.java
//                                                     ^ invalid.illegal.unexpected-accessor.java
//                                                      ^^^ invalid.illegal.unexpected-member.java

  private String
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ support.class.java

  private string
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ support.class.java

  private String memberString1 = "Hello";
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//               ^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ meta.field.java
//                              ^^^^^^^^ meta.field.value.java
//                                      ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ support.class.java
//               ^^^^^^^^^^^^^ variable.other.member.java
//                             ^ keyword.operator.assignment.java
//                               ^^^^^^^ string.quoted.double.java
//                                      ^ punctuation.terminator.java

  private String memberString2 = @Anno new String("Hello");
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//               ^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ meta.field.java
//                              ^ meta.field.value.java - meta.instantiation - meta.annotation
//                               ^^^^^^ meta.field.value.java meta.annotation.identifier.java
//                                     ^^^^^^^^^^^^^^^^^^^ meta.field.value.java meta.instantiation.java - meta.annotation
//                                                        ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ support.class.java
//               ^^^^^^^^^^^^^ variable.other.member.java
//                             ^ keyword.operator.assignment.java
//                               ^ punctuation.definition.annotation.java
//                                ^^^^ variable.annotation.java
//                                     ^^^ keyword.other.storage.new.java
//                                         ^^^^^^ support.class.java
//                                               ^ punctuation.section.parens.begin.java
//                                                ^^^^^^^ string.quoted.double.java
//                                                       ^ punctuation.section.parens.end.java
//                                                        ^ punctuation.terminator.java

  private String memberString3 = String.valueOf("Hello");
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^ meta.field.type.java
//               ^^^^^^^^^^^^^^ meta.field.identifier.java
//                             ^ meta.field.java
//                              ^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.field.value.java
//                                      ^^^^^^^ meta.function-call.identifier.java
//                                             ^^^^^^^^^ meta.function-call.arguments.java meta.parens.java
//                                                      ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^^^^ support.class.java
//               ^^^^^^^^^^^^^ variable.other.member.java
//                             ^ keyword.operator.assignment.java
//                               ^^^^^^ support.class.java
//                                     ^ punctuation.accessor.dot.java
//                                      ^^^^^^^ variable.function.java
//                                             ^ punctuation.section.parens.begin.java
//                                              ^^^^^^^ string.quoted.double.java
//                                                     ^ punctuation.section.parens.end.java
//                                                      ^ punctuation.terminator.java

  private int memberLpos = memberString3.indexOf("l");
//^^^^^^^^ meta.field.modifier.java
//        ^^^^ meta.field.type.java
//            ^^^^^^^^^^^ meta.field.identifier.java
//                       ^ meta.field.java
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.block.java meta.field.value.java
//                                       ^^^^^^^ meta.function-call.identifier.java
//                                              ^^^^^ meta.function-call.arguments.java meta.parens.java
//                                                   ^ - meta.field
//^^^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^^^^^^ variable.other.member.java
//                       ^ keyword.operator.assignment.java
//                         ^^^^^^^^^^^^^ variable.other.readwrite.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^^^^^ variable.function.java
//                                              ^ punctuation.section.parens.begin.java
//                                               ^^^ string.quoted.double.java
//                                                  ^ punctuation.section.parens.end.java
//                                                   ^ punctuation.terminator.java

  private static final string DEFAULT_IDEMPOTENCY_KEY = 44493;
//^^^^^^^^^^^^^^^^^^^^^ meta.field.modifier.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^^^ storage.modifier.java
//                     ^^^^^^^ meta.field.type.java
//                     ^^^^^^ support.class.java
//                            ^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                            ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.constant.java
//                                                    ^ meta.field.java
//                                                     ^^^^^^ meta.field.value.java
//                                                           ^ - meta.field
//                                                    ^ keyword.operator.assignment.java
//                                                      ^^^^^ constant.numeric.integer.decimal.java
//                                                           ^ punctuation.terminator.java
//

  public static
//^^^^^^^^^^^^^^ meta.field.modifier.java
//^^^^^^ storage.modifier.java
//       ^^^^^^ storage.modifier.java
  final MyObject
//^^^^^^ meta.field.modifier.java
//      ^^^^^^^^^ meta.field.type.java
//^^^^^ storage.modifier.java
//      ^^^^^^^^ support.class.java
    MY_CONST = new MyObject(),
//^^ meta.field.type.java
//  ^^^^^^^^^ meta.field.identifier.java
//           ^ meta.field.java
//            ^^^^^^^^^^^^^^^ meta.field.value.java
//                           ^ meta.field.java
//  ^^^^^^^^ entity.name.constant.java
//           ^ keyword.operator.assignment.java
//             ^^^ keyword.other.storage.new.java
//                 ^^^^^^^^ support.class.java
//                         ^ punctuation.section.parens.begin.java
//                          ^ punctuation.section.parens.end.java
//                           ^ punctuation.separator.sequence.java

    _MY_ANOTHER_CONST = new MyObject();
//^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                    ^ meta.field.java
//                     ^^^^^^^^^^^^^^^ meta.field.value.java
//                                    ^ - meta.field
//  ^^^^^^^^^^^^^^^^^ entity.name.constant
//                    ^ keyword.operator.assignment.java
//                      ^^^ keyword.other.storage.new.java
//                          ^^^^^^^^ support.class.java
//                                  ^ punctuation.section.parens.begin.java
//                                   ^ punctuation.section.parens.end.java
//                                    ^ punctuation.terminator.java

  private MyObject otherObject = MY_CONST;
//                               ^^^^^^^^ constant.other.java
//                                       ^ punctuation.terminator.java

  private MyObject otherObject = SOME_CONST.FOO;
//                               ^^^^^^^^^^ constant.other.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^ constant.other.java
//                                             ^ punctuation.terminator.java

  private MyObject otherObject = SOME_CONST.get();
//                               ^^^^^^^^^^ constant.other.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^ variable.function.java
//                                             ^ punctuation.section.parens.begin.java
//                                              ^ punctuation.section.parens.end.java
//                                               ^ punctuation.terminator.java

  private a.b.myerror error = a.b.ErrorCode.COMMUNICATION_ERROR;
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^^^^^^ meta.field.type.java
//                    ^^^^^^ meta.field.identifier.java
//                          ^ meta.field.java
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                                             ^ - meta.field
//^^^^^^^^ - meta.path
//        ^^^^^^^^^^^ meta.path.java
//                   ^^^^^^^^^ - meta.path
//                            ^^^^^^^^^^^^^ meta.path.java
//^^^^^^^ storage.modifier.java
//        ^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^ variable.namespace.java
//           ^ punctuation.accessor.dot.java
//            ^^^^^^^ support.class.java
//                    ^^^^^ variable.other.member.java
//                          ^ keyword.operator.assignment.java
//                            ^ variable.namespace.java
//                             ^ punctuation.accessor.dot.java
//                              ^ variable.namespace.java
//                               ^ punctuation.accessor.dot.java
//                                ^^^^^^^^^ support.class.java
//                                         ^ punctuation.accessor.dot.java
//                                          ^^^^^^^^^^^^^^^^^^^ constant.other.java
//                                                             ^ punctuation.terminator.java

  private a /**/ . /**/ b /**/ . /**/ myerror /**/ error /**/ = /**/ a.b.ErrorCode.COMMUNICATION_ERROR;
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                                                 ^^^^^^^^^^^ meta.field.identifier.java
//                                                            ^ meta.field.java
//                                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                                                                                    ^ - meta.field
//^^^^^^^^ - meta.path
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                                ^^^^^^^^^^^^^^^^^^^ - meta.path
//                                                                   ^^^^^^^^^^^^^ meta.path.java
//^^^^^^^ storage.modifier.java
//        ^ variable.namespace.java
//          ^^^^ comment.block.empty.java punctuation.definition.comment.java
//               ^ punctuation.accessor.dot.java
//                 ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                      ^ variable.namespace.java
//                        ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                             ^ punctuation.accessor.dot.java
//                               ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                    ^^^^^^^ support.class.java
//                                            ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                 ^^^^^ variable.other.member.java
//                                                       ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                            ^ keyword.operator.assignment.java
//                                                              ^^^^ comment.block.empty.java punctuation.definition.comment.java
//                                                                   ^ variable.namespace.java
//                                                                    ^ punctuation.accessor.dot.java
//                                                                     ^ variable.namespace.java
//                                                                      ^ punctuation.accessor.dot.java
//                                                                       ^^^^^^^^^ support.class.java
//                                                                                ^ punctuation.accessor.dot.java
//                                                                                 ^^^^^^^^^^^^^^^^^^^ constant.other.java
//                                                                                                    ^ punctuation.terminator.java

  private static final UUID SECURE_ID = UUID.randomUUID();
//                     ^^^^ support.class.java
//                          ^^^^^^^^^ entity.name.constant
//                                      ^^^^ support.class.java
//                                           ^^^^^^^^^^ variable.function.java
//                                                     ^ punctuation.section.parens.begin.java
//                                                      ^ punctuation.section.parens.end.java
//                                                       ^ punctuation.terminator.java

  private URI uri = new URI();
//        ^^^ support.class.java
//            ^^^ variable.other.member.java
//                      ^^^ support.class.java

  private URI URI2 = new URI();
//        ^^^ support.class.java
//            ^^^^ entity.name.constant.java
//                       ^^^ support.class.java

  byte[] byteArray;
//^^^^^^^ meta.field.type.java
//       ^^^^^^^^^ meta.field.identifier.java
//                ^ - meta.field
//^^^^ storage.type.primitive.java
//    ^^ storage.modifier.array.java
//       ^^^^^^^^^ variable.other.member.java
//                ^ punctuation.terminator.java

  byte byteArray2[] = {1, 2};
//^^^^^ meta.field.type.java
//     ^^^^^^^^^^^^^ meta.field.identifier.java
//                  ^ meta.field.java
//                   ^^^^^^^ meta.field.value.java
//                          ^ - meta.field
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^ variable.other.member.java
//               ^^ storage.modifier.array.java
//                  ^ keyword.operator.assignment.java
//                    ^ punctuation.section.braces.begin.java
//                     ^ constant.numeric.integer.decimal.java
//                      ^ punctuation.separator.comma.java
//                        ^ constant.numeric.integer.decimal.java
//                         ^ punctuation.section.braces.end.java
//                          ^ punctuation.terminator.java

  byte byteArray3[] = condition ? {1, 2} : {4, 5};
//^^^^^ meta.field.type.java
//     ^^^^^^^^^^^^^ meta.field.identifier.java
//                  ^ meta.field.java
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                               ^ - meta.field
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^ variable.other.member.java
//               ^^ storage.modifier.array.java
//                  ^ keyword.operator.assignment.java
//                    ^^^^^^^^^ variable.other.readwrite.java
//                              ^ keyword.operator.ternary.java
//                                ^ punctuation.section.braces.begin.java
//                                 ^ constant.numeric.integer.decimal.java
//                                  ^ punctuation.separator.comma.java
//                                    ^ constant.numeric.integer.decimal.java
//                                     ^ punctuation.section.braces.end.java
//                                       ^ keyword.operator.ternary.java
//                                         ^ punctuation.section.braces.begin.java
//                                          ^ constant.numeric.integer.decimal.java
//                                           ^ punctuation.separator.comma.java
//                                             ^ constant.numeric.integer.decimal.java
//                                              ^ punctuation.section.braces.end.java
//                                               ^ punctuation.terminator.java

  byte byteArray4[] = condition ? fun() ? {1, 2} : {3, 0} : {4, 5};
//^^^^^ meta.field.type.java
//     ^^^^^^^^^^^^^ meta.field.identifier.java
//                  ^ meta.field.java
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.value.java
//                                                                ^ - meta.field
//^^^^ storage.type.primitive.java
//     ^^^^^^^^^^ variable.other.member.java
//               ^^ storage.modifier.array.java
//                  ^ keyword.operator.assignment.java
//                    ^^^^^^^^^ variable.other.readwrite.java
//                              ^ keyword.operator.ternary.java
//                                ^^^ variable.function.java
//                                   ^ punctuation.section.parens.begin.java
//                                    ^ punctuation.section.parens.end.java
//                                      ^ keyword.operator.ternary.java
//                                        ^ punctuation.section.braces.begin.java
//                                         ^ constant.numeric.integer.decimal.java
//                                          ^ punctuation.separator.comma.java
//                                            ^ constant.numeric.integer.decimal.java
//                                             ^ punctuation.section.braces.end.java
//                                               ^ keyword.operator.ternary.java
//                                                 ^ punctuation.section.braces.begin.java
//                                                  ^ constant.numeric.integer.decimal.java
//                                                   ^ punctuation.separator.comma.java
//                                                     ^ constant.numeric.integer.decimal.java
//                                                      ^ punctuation.section.braces.end.java
//                                                        ^ keyword.operator.ternary.java
//                                                          ^ punctuation.section.braces.begin.java
//                                                           ^ constant.numeric.integer.decimal.java
//                                                            ^ punctuation.separator.comma.java
//                                                              ^ constant.numeric.integer.decimal.java
//                                                               ^ punctuation.section.braces.end.java
//                                                                ^ punctuation.terminator.java

  String[][] doubleStringArray;
//^^^^^^^^^^^ meta.field.type.java
//           ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                            ^ - meta.field
//^^^^^^ support.class.java
//      ^^^^ storage.modifier.array.java
//           ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                            ^ punctuation.terminator.java

  @NotNull final String @Anno [ ] @Anno [ ] doubleStringArray @Anno [ ] [ ];
//^^^^^^^^^^^^^^^ meta.field.modifier.java
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                                                         ^ - meta.field
//^^^^^^^^^ meta.annotation.identifier.java
//         ^^^^^ storage.modifier.java
//               ^^^^^^ support.class.java
//                      ^^^^^^ meta.annotation.identifier.java
//                            ^^^ storage.modifier.array.java
//                                ^^^^^^ meta.annotation.identifier.java
//                                      ^^^ storage.modifier.array.java
//                                          ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                                            ^^^^^^ meta.annotation.identifier.java
//                                                                  ^^^ storage.modifier.array.java
//                                                                      ^^^ storage.modifier.array.java
//                                                                         ^ punctuation.terminator.java

  qualified.String[][] doubleStringArray;
//^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                     ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                      ^ - meta.field
//^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                    ^^^^^^^^^^^^^^^^^^^ - meta.path
//^^^^^^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^^^ support.class.java
//                ^^^^ storage.modifier.array.java
//                     ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                      ^ punctuation.terminator.java

  fully.qualified.string[][] doubleStringArray;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                           ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                            ^ - meta.field
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                          ^^^^^^^^^^^^^^^^^^^ - meta.path
//^^^^^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^^^^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^^ support.class.java
//                      ^^^^ storage.modifier.array.java
//                           ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                            ^ punctuation.terminator.java

  @anno /**/ fully // comment
//^^^^^^^^^^^ meta.field.modifier.java meta.annotation.identifier.java
//           ^^^^^^^^^^^^^^^^^ meta.field.type.java meta.path.java
//^ punctuation.definition.annotation.java
// ^^^^ variable.annotation.java
//      ^^^^ comment.block.empty.java
//           ^^^^^ variable.namespace.java
//                 ^^^^^^^^^^^ comment.line.double-slash.java
  . @anno qualified//comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java meta.path.java
//  ^^^^^^ meta.annotation.identifier.java
//^ punctuation.accessor.dot.java
//  ^ punctuation.definition.annotation.java
//   ^^^^ variable.annotation.java
//        ^^^^^^^^^ variable.namespace.java
//                 ^^^^^^^^^^ comment.line.double-slash.java
  /**/ . /**/
//^^^^^^^^^^^^ meta.field.type.java meta.path.java
//^^^^ comment.block.empty.java
//     ^ punctuation.accessor.dot.java
//       ^^^^ comment.block.empty.java
  @anno /**/ object @anno() []
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java meta.path.java
//^^^^^^ meta.annotation.identifier.java
//                  ^^^^^ meta.annotation.identifier.java
//                       ^^ meta.annotation.parameters.java meta.parens.java
//^ punctuation.definition.annotation.java
// ^^^^ variable.annotation.java
//      ^^^^ comment.block.empty.java
//           ^^^^^^ support.class.java
//                  ^ punctuation.definition.annotation.java
//                   ^^^^ variable.annotation.java
//                       ^ punctuation.section.parens.begin.java
//                        ^ punctuation.section.parens.end.java
//                          ^^ storage.modifier.array.java

  /**/ @anno /**/ [] /**/ doubleObjectArray;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                        ^^^^^^^^^^^^^^^^^ meta.field.identifier.java
//                                         ^ - meta.field
//^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                       ^^^^^^^^^^^^^^^^^^^ - meta.path
//^^^^ comment.block.empty.java
//     ^ punctuation.definition.annotation.java
//      ^^^^ variable.annotation.java
//           ^^^^ comment.block.empty.java
//                ^^ storage.modifier.array.java
//                   ^^^^ comment.block.empty.java
//                        ^^^^^^^^^^^^^^^^^ variable.other.member.java
//                                         ^ punctuation.terminator.java

  List<int> field;
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^ meta.field.type.java meta.generic.java
//         ^ meta.field.type.java - meta.generic
//          ^^^^^ meta.field.identifier.java
//               ^ - meta.field
//^^^^ support.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^ invalid.illegal.unexpected-keyword.java
//        ^ punctuation.definition.generic.end.java
//          ^^^^^ variable.other.member.java
//               ^ punctuation.terminator.java

  list<int> field;
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^ meta.field.type.java meta.generic.java
//         ^ meta.field.type.java - meta.generic
//          ^^^^^ meta.field.identifier.java
//               ^ - meta.field
//^^^^ support.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^ invalid.illegal.unexpected-keyword.java
//        ^ punctuation.definition.generic.end.java
//          ^^^^^ variable.other.member.java
//               ^ punctuation.terminator.java

  List<String> field;
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^^^^ meta.field.type.java meta.generic.java
//            ^ meta.field.type.java - meta.generic
//             ^^^^^ meta.field.identifier.java
//                  ^ - meta.field
//^^^^ support.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^ support.class.java
//           ^ punctuation.definition.generic.end.java
//             ^^^^^ variable.other.member.java
//                  ^ punctuation.terminator.java

  list<string> field;
//^^^^ meta.field.type.java - meta.generic
//    ^^^^^^^^ meta.field.type.java meta.generic.java
//            ^ meta.field.type.java - meta.generic
//             ^^^^^ meta.field.identifier.java
//                  ^ - meta.field
//^^^^ support.class.java
//    ^ punctuation.definition.generic.begin.java
//     ^^^^^^ support.class.java
//           ^ punctuation.definition.generic.end.java
//             ^^^^^ variable.other.member.java
//                  ^ punctuation.terminator.java

  java.base.List<java.net.URI> field;
//^^^^^^^^^^^^^^ meta.field.type.java meta.path.java - meta.generic
//              ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//               ^^^^^^^^^^^^ meta.field.type.java meta.path.java meta.generic.java meta.path.java
//                           ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                            ^ meta.field.type.java - meta.path.java - meta.generic
//                             ^^^^^ meta.field.identifier.java
//                                  ^ - meta.field
//^^^^ variable.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ support.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^ variable.namespace.java
//                   ^ punctuation.accessor.dot.java
//                    ^^^ variable.namespace.java
//                       ^ punctuation.accessor.dot.java
//                        ^^^ support.class.java
//                           ^ punctuation.definition.generic.end.java
//                             ^^^^^ variable.other.member.java
//                                  ^ punctuation.terminator.java

  java.base.list<java.net.uri> field;
//^^^^^^^^^^^^^^ meta.field.type.java meta.path.java - meta.generic
//              ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//               ^^^^^^^^^^^^ meta.field.type.java meta.path.java meta.generic.java meta.path.java
//                           ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                            ^ meta.field.type.java - meta.path.java - meta.generic
//                             ^^^^^ meta.field.identifier.java
//                                  ^ - meta.field
//^^^^ variable.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java
//          ^^^^ support.class.java
//              ^ punctuation.definition.generic.begin.java
//               ^^^^ variable.namespace.java
//                   ^ punctuation.accessor.dot.java
//                    ^^^ variable.namespace.java
//                       ^ punctuation.accessor.dot.java
//                        ^^^ support.class.java
//                           ^ punctuation.definition.generic.end.java
//                             ^^^^^ variable.other.member.java
//                                  ^ punctuation.terminator.java

  java.tmpl<>.list<java.net.uri> field;
//^^^^^^^^^ meta.field.type.java meta.path.java - meta.generic
//         ^^ meta.field.type.java meta.path.java meta.generic.java
//           ^^^^^ meta.field.type.java meta.path.java - meta.generic
//                ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                 ^^^^^^^^^^^^ meta.field.type.java meta.path.java meta.generic.java meta.path.java
//                             ^ meta.field.type.java meta.path.java meta.generic.java - meta.path meta.path
//                              ^ meta.field.type.java - meta.path.java - meta.generic
//                               ^^^^^ meta.field.identifier.java
//                                    ^ - meta.field
//^^^^ variable.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^ support.class.java
//         ^ punctuation.definition.generic.begin.java
//          ^ punctuation.definition.generic.end.java
//           ^ punctuation.accessor.dot.java
//            ^^^^ support.class.java
//                ^ punctuation.definition.generic.begin.java
//                 ^^^^ variable.namespace.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^ variable.namespace.java
//                         ^ punctuation.accessor.dot.java
//                          ^^^ support.class.java
//                             ^ punctuation.definition.generic.end.java
//                               ^^^^^ variable.other.member.java
//                                    ^ punctuation.terminator.java

  private MyGenric<Param, With.Dots, With.Nested<Generic>, and.fully.Qualified,
//^^^^^^^^ meta.field.modifier.java
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//                                              ^^^^^^^^^ meta.generic.java meta.generic.java
//                                                       ^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//                                                         ^^^^^^^^^^^^^^^^^^^ meta.path.java
      and.fully.Qualified<Generic>> myVariable;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.field.type.java
//^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.java - meta.generic meta.generic
//    ^^^^^^^^^^^^^^^^^^^ meta.path.java
//                       ^^^^^^^^^ meta.generic.java meta.generic.java
//                                ^ meta.generic.java - meta.generic meta.generic
//                                 ^ - meta.generic
//                                  ^^^^^^^^^^ meta.field.identifier.java
}


/******************************************************************************
 * Method Declaration Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-8.html#jls-8.4
 *****************************************************************************/

class MethodDelcarationTests {

  void
//^^^^^ meta.method.return-type.java
//^^^^ storage.type.void.java

  void method
//^^^^^ meta.method.return-type.java
//     ^^^^^^^ meta.method.identifier.java
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java

  void method()
//^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^ meta.method.return-type.java
//     ^^^^^^ meta.method.identifier.java
//           ^^ meta.method.parameters.java meta.parens.java
//             ^ meta.method.java
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java
//           ^ punctuation.section.parens.begin.java
//            ^ punctuation.section.parens.end.java

  static void method()
//^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^ meta.method.modifier.java
//       ^^^^^ meta.method.return-type.java
//            ^^^^^^ meta.method.identifier.java
//                  ^^ meta.method.parameters.java meta.parens.java
//                    ^ meta.method.java
//^^^^^^ storage.modifier.java
//       ^^^^ storage.type.void.java
//            ^^^^^^ entity.name.function.java
//                  ^ punctuation.section.parens.begin.java
//                   ^ punctuation.section.parens.end.java

  native strictfp transient volatile void method() {private}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.modifier.java
//                                   ^^^^^ meta.method.return-type.java
//                                        ^^^^^^ meta.method.identifier.java
//                                              ^^ meta.method.parameters.java meta.parens.java
//                                                ^ meta.method.java
//                                                 ^^^^^^^^^ meta.method.java meta.block.java
//^^^^^^ invalid.illegal.unexpected-keyword.java
//      ^ - invalid
//       ^^^^^^^^ invalid.illegal.unexpected-keyword.java
//               ^ - invalid
//                ^^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                         ^ - invalid
//                          ^^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                  ^ - invalid - storage
//                                   ^^^^ storage.type.void.java
//                                       ^ - entity - storage
//                                        ^^^^^^ entity.name.function.java
//                                              ^ punctuation.section.parens.begin.java
//                                               ^ punctuation.section.parens.end.java
//                                                 ^ punctuation.section.block.begin.java
//                                                  ^^^^^^^ storage.modifier.java
//                                                         ^ punctuation.section.block.end.java

  void à ( ) {}
//^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^ meta.method.return-type.java
//     ^^ meta.method.identifier.java
//       ^^^ meta.method.parameters.java meta.parens.java
//          ^ meta.method.java
//           ^^ meta.method.java meta.block.java
//^^^^ storage.type.void.java
//     ^ entity.name.function
//       ^ punctuation.section.parens.begin.java
//         ^ punctuation.section.parens.end.java
//           ^ punctuation.section.block.begin.java
//            ^ punctuation.section.block.end.java

  void bar$ () {}
//^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^ meta.method.return-type.java
//     ^^^^^ meta.method.identifier.java
//          ^^ meta.method.parameters.java meta.parens.java
//            ^ meta.method.java
//             ^^ meta.method.java meta.block.java
//^^^^ storage.type.void.java
//     ^^^^ entity.name.function
//          ^ punctuation.section.parens.begin.java
//           ^ punctuation.section.parens.end.java
//             ^ punctuation.section.block.begin.java
//              ^ punctuation.section.block.end.java

  public
//^^^^^^^ meta.method.modifier.java - meta.method meta.method
//^^^^^^ storage.modifier.java
  void
//^^^^^ meta.method.return-type.java - meta.method meta.method
//^^^^ storage.type.void.java
  methodNameOnDifferentLine();
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.identifier.java entity.name.function.java

  abstract void myAbstractMethod (With<GenericParam> foo);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^ meta.method.modifier.java
//         ^^^^^ meta.method.return-type.java
//              ^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                               ^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                    ^^^^^^^^^^^^^^ meta.generic.java
//                                                       ^ - meta.method
//^^^^^^^^ storage.modifier.java
//         ^^^^ storage.type.void.java
//              ^^^^^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.parens.begin.java
//                                ^^^^ support.class.java
//                                    ^ punctuation.definition.generic.begin.java
//                                     ^^^^^^^^^^^^ support.class.java
//                                                 ^ punctuation.definition.generic.end.java
//                                                   ^^^ variable.parameter.java
//                                                      ^ punctuation.section.parens.end.java
//                                                       ^ punctuation.terminator.java

  private Long myOtherAbstractMethod(@WithAnnotation Blah blah);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^ meta.method.modifier.java
//        ^^^^^ meta.method.return-type.java
//             ^^^^^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                   ^^^^^^^^^^^^^^^ meta.annotation.identifier.java
//                                                             ^ - meta.method
//             ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.java
//                                  ^ punctuation.section.parens.begin.java
//                                   ^ punctuation.definition.annotation.java
//                                    ^^^^^^^^^^^^^^ variable.annotation.java
//                                                   ^^^^ support.class.java
//                                                        ^^^^ variable.parameter.java
//                                                            ^ punctuation.section.parens.end.java
//                                                             ^ punctuation.terminator.java

  protected static void methodList(List<String> args) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^^^^^^^^^ meta.method.modifier.java
//                 ^^^^^ meta.method.return-type.java
//                      ^^^^^^^^^^ meta.method.identifier.java - meta.method meta.method
//                                ^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java - meta.method meta.method
//                                                   ^ meta.method.java - meta.method meta.method
//                                                    ^^ meta.method.java - meta.method meta.method
//^^^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//                 ^^^^ storage.type
//                      ^^^^^^^^^^ entity.name.function.java
//                                ^ punctuation.section.parens.begin.java
//                                 ^^^^ support.class.java
//                                     ^ punctuation.definition.generic.begin.java
//                                      ^^^^^^ support.class.java
//                                            ^ punctuation.definition.generic.end.java
//                                              ^^^^ variable.parameter.java
//                                                  ^ punctuation.section.parens.end.java
//                                                    ^ punctuation.section.block.begin.java
//                                                     ^ punctuation.section.block.end.java

  public MyGeneric<Param, With, Multiple, Types> ABSTRACTMETHOD(Foo<With, Another> bar);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^ meta.method.modifier.java
//       ^^^^^^^^^ meta.method.return-type.java - meta.generic
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.return-type.java meta.generic.java
//                                              ^ meta.method.return-type.java - meta.generic
//                                               ^^^^^^^^^^^^^^ meta.method.identifier.java
//                                                             ^^^^ meta.method.parameters.java meta.parens.java - meta.generic
//                                                                 ^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java meta.generic.java
//                                                                                ^^^^^ meta.method.parameters.java meta.parens.java - meta.generic
//^^^^^^ storage.modifier.java
//       ^^^^^^^^^ support.class.java
//                ^ punctuation.definition.generic.begin.java
//                 ^^^^^ support.class.java
//                      ^ punctuation.separator.comma.java
//                        ^^^^ support.class.java
//                            ^ punctuation.separator.comma.java
//                              ^^^^^^^^ support.class.java
//                                      ^ punctuation.separator.comma.java
//                                        ^^^^^ support.class.java
//                                             ^ punctuation.definition.generic.end.java
//                                               ^^^^^^^^^^^^^^ entity.name.function.java
//                                                             ^ punctuation.section.parens.begin.java
//                                                              ^^^ support.class.java
//                                                                 ^ punctuation.definition.generic.begin.java
//                                                                  ^^^^ support.class.java
//                                                                      ^ punctuation.separator.comma.java
//                                                                        ^^^^^^^ support.class.java
//                                                                               ^ punctuation.definition.generic.end.java
//                                                                                 ^^^ variable.parameter.java
//                                                                                    ^ punctuation.section.parens.end.java
//                                                                                     ^ punctuation.terminator.java

  private static int methodThrows() throws MyException<Abc> {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^^^^^^^ meta.method.modifier.java
//               ^^^^ meta.method.return-type.java
//                   ^^^^^^^^^^^^ meta.method.identifier.java
//                               ^^ meta.method.parameters.java
//                                 ^ meta.method.java
//                                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.throws.java
//                                                    ^^^^^ meta.generic.java
//                                                          ^^ meta.method.java
//^^^^^^^ storage.modifier.java
//        ^^^^^^ storage.modifier.java
//               ^^^ storage.type.primitive.java
//                   ^^^^^^^^^^^^ entity.name.function.java
//                               ^ punctuation.section.parens.begin.java
//                                ^ punctuation.section.parens.end.java
//                                  ^^^^^^ keyword.declaration.throws.java
//                                         ^^^^^^^^^^^ support.class.java
//                                                    ^ punctuation.definition.generic.begin.java
//                                                     ^^^ support.class.java
//                                                        ^ punctuation.definition.generic.end.java
//                                                          ^ punctuation.section.block.begin.java
    throw
//^^^^^^^^ meta.method.java meta.block.java
//  ^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java
        new
//^^^^^^^^^^ meta.method.java meta.block.java
//     ^ meta.throw.java - meta.instantiation
//      ^^^^ meta.throw.java meta.instantiation.java
//      ^^^ keyword.other.storage.new.java
        MyException
//^^^^^^^^^^^^^^^^^^ meta.method.java meta.block.java
//     ^^^^^^^^^^^^^ meta.throw.java meta.instantiation.java
//      ^^^^^^^^^^^ support.class.java
        ("hello (world)");
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java meta.block.java
//      ^^^^^^^^^^^^^^^^^ meta.throw.java meta.instantiation.java meta.parens.java
//      ^ punctuation.section.parens.begin.java
//       ^^^^^^^^^^^^^^^ string.quoted.double.java
//                      ^ punctuation.section.parens.end.java
//                       ^ punctuation.terminator.java
  }
//^ meta.method.java meta.block.java punctuation.section.block.end.java
// ^ - meta.method

  void primitiveVarArgs(char... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//                     ^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                      ^^^^ storage.type.primitive.java
//                          ^^^ keyword.operator.variadic.java
//                              ^^^^^^ variable.parameter.java

  void finalPrimitiveVarArgs(final int... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//                          ^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                           ^^^^^ storage.modifier.java
//                                 ^^^ storage.type.primitive.java
//                                    ^^^ keyword.operator.variadic.java
//                                        ^^^^^^ variable.parameter.java

  void annotatedPrimitiveVarArgs(@anno int @foo.anno... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                               ^^^^^ meta.annotation.identifier.java
//                                     ^^^ storage.type.primitive.java
//                                         ^^^^^^^^^ meta.annotation.identifier.java
//                                                  ^^^ keyword.operator.variadic.java
//                                                      ^^^^^^ variable.parameter.java

  void classVarArgs(String... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//                 ^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                  ^^^^^^ support.class.java
//                        ^^^ keyword.operator.variadic.java
//                            ^^^^^^ variable.parameter.java

  void invalidPrivateClassVarArgs(private String... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//                               ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                                         ^ - meta.method.parameters.java
//                                ^^^^^^^ invalid.illegal.unexpected-keyword.java
//                                        ^^^^^^ support.class.java
//                                              ^^^ keyword.operator.variadic.java
//                                                  ^^^^^^ variable.parameter.java

  void invalidVarArgs(var... values) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//                   ^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                    ^^^ invalid.illegal.unexpected-keyword.java
//                       ^^^ keyword.operator.variadic.java
//                           ^^^ variable.parameter.java

  void arrayMethod(byte [] [] a, int b, byte[] c) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
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

  int[] arrayMethod(int a[], String b[])[] {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^ meta.method.return-type.java
//      ^^^^^^^^^^^ meta.method.identifier.java
//                 ^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                      ^^^ meta.method.java - meta.method meta.parens - meta.method meta.block
//                                         ^^ meta.method.java meta.block.java
//^^^ storage.type.primitive.java
//   ^^ storage.modifier.array.java
//                  ^^^ storage.type.primitive.java
//                      ^ variable.parameter.java
//                       ^^ storage.modifier.array.java
//                           ^^^^^^ support.class.java
//                                  ^ variable.parameter.java
//                                   ^^ storage.modifier.array.java

  int[][] arrayMethod(
//^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^ meta.method.return-type.java
//        ^^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//                   ^^ meta.method.parameters.java meta.parens.java
//^^^ storage.type.primitive.java
//   ^^^^ storage.modifier.array.java
//                   ^ punctuation.section.parens.begin.java

    Map<Long, Date>[] mapping,
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//  ^^^ support.class.java
//     ^^^^^^^^^^^^ meta.generic.java
//     ^ punctuation.definition.generic.begin.java
//      ^^^^ support.class.java
//          ^ punctuation.separator.comma.java
//            ^^^^ support.class.java
//                ^ punctuation.definition.generic.end.java
//                 ^^ storage.modifier.array.java
//                    ^^^^^^^ variable.parameter.java
//                           ^ punctuation.separator.comma.java

    @Anno int[] arg[],
// ^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//  ^^^^^ meta.annotation.identifier.java
//        ^^^ storage.type.primitive.java
//           ^^ storage.modifier.array.java
//              ^^^ variable.parameter.java
//                 ^^ storage.modifier.array.java
//                   ^ punctuation.separator.comma.java

    final int @Anno [] @Anno [] arg @Anno [] @Anno [],
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.primitive.java
//            ^^^^^ meta.annotation.identifier.java
//                  ^^ storage.modifier.array.java
//                     ^^^^^ meta.annotation.identifier.java
//                           ^^ storage.modifier.array.java
//                              ^^^ variable.parameter.java
//                                  ^^^^^ meta.annotation.identifier.java
//                                        ^^ storage.modifier.array.java
//                                           ^^^^^ meta.annotation.identifier.java
//                                                 ^^ storage.modifier.array.java

    String<int,int@Anno[]>@Anno[]@Anno[]arg@Anno[]@Anno[]
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//  ^^^^^^ support.class.java
//        ^^^^^^^^^^^^^^^^ meta.generic.java
//        ^ punctuation.definition.generic.begin.java
//         ^^^ invalid.illegal.unexpected-keyword.java
//            ^ punctuation.separator.comma.java
//             ^^^ storage.type.primitive.java
//                ^^^^^ meta.annotation.identifier.java
//                     ^^ storage.modifier.array.java
//                       ^ punctuation.definition.generic.end.java
//                        ^^^^^ meta.annotation.identifier.java
//                             ^^ storage.modifier.array.java
//                               ^^^^^ meta.annotation.identifier.java
//                                    ^^ storage.modifier.array.java
//                                      ^^^ variable.parameter.java
//                                         ^^^^^ meta.annotation.identifier.java
//                                              ^^ storage.modifier.array.java
//                                                ^^^^^ meta.annotation.identifier.java
//                                                     ^^ storage.modifier.array.java
  ) @Anno [] @ path . Anno (param = value) [] {}
//^ meta.method.parameters.java meta.parens.java punctuation.section.parens.end.java
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.java - meta.method meta.method
//                                            ^^ meta.method.java meta.block.java - meta.method meta.method
//                                              ^ - meta.method
//  ^^^^^ meta.annotation.identifier.java
//        ^^ storage.modifier.array.java

  <T> void genericTypeMethod(T obj);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^ meta.method.modifier.java meta.generic.declaration.java
//   ^ meta.method.modifier.java - meta.generic
//    ^^^^^ meta.method.return-type.java
//         ^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                          ^^^^^^^ meta.method.parameters.java meta.parens.java
//                                 ^ - meta.method
//^ punctuation.definition.generic.begin.java
// ^ variable.parameter.type
//  ^ punctuation.definition.generic.end.java
//    ^^^^ storage.type.void.java
//         ^^^^^^^^^^^^^^^^^ entity.name.function.java
//                          ^ punctuation.section.parens.begin.java
//                           ^ support.class.java
//                             ^^^ variable.parameter.java
//                                ^ punctuation.section.parens.end.java
//                                 ^ punctuation.terminator.java

  <T> public static Set<T> unmodifiableSet(Set<T> set);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^ meta.method.modifier.java meta.generic.declaration.java
//   ^^^^^^^^^^^^^^^ meta.method.modifier.java - meta.generic
//                  ^^^ meta.method.return-type.java - meta.generic
//                     ^^^ meta.method.return-type.java meta.generic.java
//                        ^ meta.method.return-type.java - meta.generic
//                         ^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                        ^^^^ meta.method.parameters.java meta.parens.java - meta.generic
//                                            ^^^ meta.method.parameters.java meta.parens.java meta.generic.java
//                                               ^^^^^ meta.method.parameters.java meta.parens.java - meta.generic
//                                                    ^ - meta.method
//^ punctuation.definition.generic.begin.java
// ^ variable.parameter.type
//  ^ punctuation.definition.generic.end.java
//    ^^^^^^ storage.modifier.java
//           ^^^^^^ storage.modifier.java
//                  ^^^ support.class.java
//                     ^ punctuation.definition.generic.begin.java
//                      ^ support.class.java
//                       ^ punctuation.definition.generic.end.java
//                         ^^^^^^^^^^^^^^^ entity.name.function.java
//                                        ^ punctuation.section.parens.begin.java
//                                         ^^^ support.class.java
//                                            ^ punctuation.definition.generic.begin.java
//                                             ^ support.class.java
//                                              ^ punctuation.definition.generic.end.java
//                                                ^^^ variable.parameter.java
//                                                   ^ punctuation.section.parens.end.java
//                                                    ^ punctuation.terminator.java

  public static <T> T genericTypeMethod(Collection<? extends T>, Sink<T>) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^^^^^^ meta.method.modifier.java - meta.generic
//              ^^^ meta.method.modifier.java meta.generic.declaration.java
//                 ^ meta.method.modifier.java - meta.generic
//                  ^^ meta.method.return-type.java - meta.generic
//                    ^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                                ^^^^^^^^^^^^^ meta.generic.java
//                                                                   ^^^ meta.generic.java
//                                                                       ^ meta.method.java
//                                                                        ^^ meta.method.java meta.block.java
//                                                                          ^ - meta.method
//^^^^^^ storage.modifier.java
//       ^^^^^^ storage.modifier.java
//               ^ variable.parameter.type.java
//                  ^ support.class.java
//                    ^^^^^^^^^^^^^^^^^ entity.name.function.java
//                                      ^^^^^^^^^^ support.class.java
//                                                ^ punctuation.definition.generic.begin.java
//                                                 ^ keyword.operator.wildcard.java
//                                                   ^^^^^^^ keyword.declaration.extends.java
//                                                           ^ support.class.java
//                                                            ^ punctuation.definition.generic.end.java
//                                                             ^ punctuation.separator.comma.java - meta.generic.java
//                                                               ^^^^ support.class.java
//                                                                   ^ punctuation.definition.generic.begin.java
//                                                                    ^ support.class.java
//                                                                     ^ punctuation.definition.generic.end.java
//                                                                      ^ punctuation.section.parens.end.java
//                                                                        ^ punctuation.section.block.begin.java
//                                                                         ^ punctuation.section.block.end.java

  protected static <T extends Comparable<? super T>>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^^^^^^^^^^^ meta.method.modifier.java - meta.generic
//                 ^^^^^^^^^^^^^^^^^^^^^ meta.method.modifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                      ^^^^^^^^^^^ meta.method.modifier.java meta.generic.declaration.java meta.generic.java
//                                                 ^ meta.method.modifier.java meta.generic.declaration.java - meta.generic meta.generic
//                                                  ^ meta.method.modifier.java - meta.generic
//^^^^^^^^^ storage.modifier.java
//          ^^^^^^ storage.modifier.java
//                 ^ punctuation.definition.generic.begin.java
//                  ^ variable.parameter.type.java
//                    ^^^^^^^ keyword.declaration.extends.java
//                            ^^^^^^^^^^ support.class.java
//                                      ^ punctuation.definition.generic.begin.java
//                                       ^ keyword.operator.wildcard.java
//                                         ^^^^^ keyword.declaration.super.java
//                                               ^ support.class.java
//                                                ^^ punctuation.definition.generic.end.java
        T max(Collection<T> coll);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^ meta.method.modifier.java
//      ^^ meta.method.return-type.java
//        ^^^ meta.method.identifier.java
//           ^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                               ^ - meta.method
//      ^ support.class.java
//        ^^^ entity.name.function.java
//           ^ punctuation.section.parens.begin.java
//            ^^^^^^^^^^ support.class.java
//                      ^ punctuation.definition.generic.begin.java
//                       ^ support.class.java
//                        ^ punctuation.definition.generic.end.java
//                          ^^^^ variable.parameter.java
//                              ^ punctuation.section.parens.end.java
//                               ^ punctuation.terminator.java

  @RunWith(JUnit4.class)
//^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method - meta.annotation meta.annotation
//^^^^^^^^ meta.method.modifier.java meta.annotation.identifier.java
//        ^^^^^^^^^^^^^^ meta.method.modifier.java meta.annotation.parameters.java meta.parens.java
//                      ^ meta.method.modifier.java - meta.annotation
//^ punctuation.definition.annotation.java
// ^^^^^^^ variable.annotation.java
//        ^ punctuation.section.parens.begin.java
//         ^^^^^^ support.class.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ variable.language.class.java - storage.type.java
//                     ^ punctuation.section.parens.end.java
  public
//^^^^^^^ - meta.method meta.method
//^^^^^^ meta.method.modifier.java storage.modifier.java
//      ^ meta.method.modifier.java - storage
    static
//^^^^^^^^^ - meta.method meta.method
//^^ meta.method.modifier.java - storage
//  ^^^^^^ meta.method.modifier.java storage.modifier.java
//        ^ meta.method.modifier.java - storage
    <T
//^^^^^ - meta.method meta.method
//^^ meta.method.modifier.java - meta.generic - storage
//  ^^^ meta.method.modifier.java meta.generic.declaration.java
//  ^ punctuation.definition.generic.begin.java
//   ^ variable.parameter.type.java
      extends
//^^^^^^^^^^^^ meta.method.modifier.java meta.generic.declaration.java - meta.method meta.method
//    ^^^^^^^ keyword.declaration.extends.java
      AutoCloseable
//^^^^^^^^^^^^^^^^^^ meta.method.modifier.java meta.generic.declaration.java - meta.method meta.method
//    ^^^^^^^^^^^^^ support.class.java
    >
//^^^^ - meta.method meta.method
//^^^ meta.method.modifier.java meta.generic.declaration.java
//   ^ meta.method.modifier.java - meta.generic
//  ^ punctuation.definition.generic.end.java
    void
//^^^^^^^ - meta.method meta.method
//^^ meta.method.modifier.java
//  ^^^^ meta.method.return-type.java storage.type.void.java
//      ^^ meta.method.return-type.java - storage
    genericMethod
//^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^ meta.method.return-type.java - storage - entity
//  ^^^^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//               ^ meta.method.identifier.java - entity
    (
//^^^^ - meta.method meta.method
//^^ meta.method.identifier.java
//  ^^ meta.method.parameters.java meta.parens.java
//  ^ punctuation.section.parens.begin.java
      SomeType<T> root
//^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//    ^^^^^^^^ support.class.java
//            ^ punctuation.definition.generic.begin.java
//             ^ support.class.java
//              ^ punctuation.definition.generic.end.java
//                ^^^^ variable.parameter.java
    )
//^^^^ - meta.method meta.method
//^^^ meta.method.parameters.java meta.parens.java
//   ^ meta.method.java
//  ^ punctuation.section.parens.end.java
    throws
//^^^^^^^^^ - meta.method meta.method
//^^ meta.method.java
//  ^^^^^^^ meta.method.throws.java
//  ^^^^^^ keyword.declaration.throws.java
        Exception
//^^^^^^^^^^^^^^^^ meta.method.throws.java - meta.method meta.method
//      ^^^^^^^^^ support.class.java
        , IOException,
//^^^^^^^^^^^^^^^^^^^^^ meta.method.throws.java - meta.method meta.method
//      ^ punctuation.separator.comma.java
//        ^^^^^^^^^^^ support.class.java
//                   ^ punctuation.separator.comma.java
        SAXException
//^^^^^^^^^^^^^^^^^^^ meta.method.throws.java - meta.method meta.method
//      ^^^^^^^^^^^^ support.class.java
  {
//<- meta.method.throws.java - meta.method meta.method
//^^ meta.method.java meta.block.java - meta.method meta.method
//^ punctuation.section.block.begin.java
  }
//^ meta.method.java meta.block.java punctuation.section.block.end.java
// ^ - meta.method

  @RunWith(JUnit4.class)
//^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method - meta.annotation meta.annotation
//^^^^^^^^ meta.method.modifier.java meta.annotation.identifier.java
//        ^^^^^^^^^^^^^^ meta.method.modifier.java meta.annotation.parameters.java meta.parens.java
//                      ^ meta.method.modifier.java - meta.annotation
//^ punctuation.definition.annotation.java
// ^^^^^^^ variable.annotation.java
//        ^ punctuation.section.parens.begin.java
//         ^^^^^^ support.class.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^ variable.language.class.java - storage.type.java
//                     ^ punctuation.section.parens.end.java
  public void someReallyReallyLongMethodNameThatMakesTheBraceOverflowToTheNextLine(
//^^^^^^^ meta.method.modifier.java
//       ^^^^^ meta.method.return-type.java
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.identifier.java entity.name.function.java
//                                                                                ^ meta.method.parameters.java meta.parens.java punctuation.section.parens.begin.java
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
    return someMethod (new Function<V, V>() {
//        ^ - meta.function-call
//         ^^^^^^^^^^^ meta.function-call.identifier.java - meta.function-call meta.function-call
//                    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.parens.java - meta.function-call meta.function-call
//                                          ^ meta.class.java punctuation.section.block.begin.java
//        ^ - variable
//         ^^^^^^^^^^ variable.function.java
//                   ^ - variable
      @Override
      public V apply(V input) {
//           ^ support.class.java
//                  ^^^^^^^^^ meta.method.parameters.java
//                   ^ support.class.java
//                     ^ variable.parameter.java
//                            ^ meta.method
        return input;
      }
//    ^ meta.method
    }, executor);
// ^^^^^^^^^^^^^ meta.function-call.arguments.java meta.parens.java
//  ^ meta.class.java punctuation.section.block.end.java
//             ^ punctuation.section.parens.end.java
//              ^ punctuation.terminator.java - meta.function-call
  }
//^ meta.method.java punctuation.section.block.end.java

}
// <- meta.class.java punctuation.section.block.end.java


class IncompleteMethodTests {

  int if(true)
//^^^^^^^^^^^^ - meta.method
//^^^ storage.type.primitive.java
//    ^^ - entity

  int class MyClass
//^^^^^^^^^^^^^^^^^ - meta.method
//^^^ storage.type.primitive.java
//    ^^ - entity

  int package dump
//^^^^^^^^^^^^^^^^ - meta.method
//^^^ storage.type.primitive.java
//    ^^ - entity

}
// <- meta.class.java punctuation.section.block.end.java


class ReceiverArgTests {

  // Illegal: Top-level constructors can't contain receiver parameters,
  //          but the syntax does not destinguish top-level and nested classses
  ReceiverArgTests(ReceiverArgTests this, A this) {}
//^^^^^^^^^^^^^^^^ meta.method.identifier.java - meta.method meta.method
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//^^^^^^^^^^^^^^^^ entity.name.function.constructor.java
//                ^ punctuation.section.parens.begin.java
//                 ^^^^^^^^^^^^^^^^ support.class.java
//                                  ^^^^ variable.parameter.this.java
//                                      ^ punctuation.separator.comma.java
//                                        ^ support.class.java
//                                          ^^^^ invalid.illegal.identifier.java
//                                              ^ punctuation.section.parens.end.java
//                                                ^ punctuation.section.block.begin.java
//                                                 ^ punctuation.section.block.end.java

  void method(ReceiverArgTests this, A this, B super, C par)[] {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^ meta.method.return-type.java
//     ^^^^^^ meta.method.identifier.java
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//                                                          ^^^ meta.method.java
//                                                             ^^ meta.method.java meta.block.java
//^^^^ storage.type.void.java
//     ^^^^^^ entity.name.function.java
//           ^ punctuation.section.parens.begin.java
//            ^^^^^^^^^^^^^^^^ support.class.java
//                             ^^^^ variable.parameter.this.java
//                                 ^ punctuation.separator.comma.java
//                                   ^ support.class.java
//                                     ^^^^ invalid.illegal.identifier.java
//                                         ^ punctuation.separator.comma.java
//                                           ^ support.class.java
//                                             ^^^^^ invalid.illegal.identifier.java
//                                                  ^ punctuation.separator.comma.java
//                                                    ^ support.class.java
//                                                      ^^^ variable.parameter.java
//                                                         ^ punctuation.section.parens.end.java
//                                                          ^^ storage.modifier.array.java
//                                                             ^ punctuation.section.block.begin.java
//                                                              ^ punctuation.section.block.end.java

  // Illegal: Static methods can't contain receiver parameters,
  //          but the syntax does not destinguish them.
  static void method(ReceiverArgTests this) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.method meta.method
//^^^^^^^ meta.method.modifier.java
//       ^^^^^ meta.method.return-type.java
//            ^^^^^^ meta.method.identifier.java
//                  ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java
//^^^^^^ storage.modifier.java
//       ^^^^ storage.type.void.java
//            ^^^^^^ entity.name.function.java
//                  ^ punctuation.section.parens.begin.java
//                   ^^^^^^^^^^^^^^^^ support.class.java
//                                    ^^^^ variable.parameter.this.java
//                                        ^ punctuation.section.parens.end.java
//                                          ^ punctuation.section.block.begin.java
//                                           ^ punctuation.section.block.end.java

  class A {
    A(ReceiverArgTests ReceiverArgTests.this, A ReceiverArgTests.this) {}
//  ^ entity.name.function.constructor.java
//   ^ punctuation.section.parens.begin.java
//    ^^^^^^^^^^^^^^^^ support.class.java
//                     ^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                     ^^^^^^^^^^^^^^^^ support.class.java
//                                     ^ punctuation.accessor.dot.java
//                                      ^^^^ variable.parameter.this.java
//                                          ^ punctuation.separator.comma.java
//                                            ^ support.class.java
//                                              ^^^^^^^^^^^^^^^^ variable.parameter.java
//                                                              ^ invalid.illegal.unexpected-accessor.java
//                                                               ^^^^ invalid.illegal.unexpected-member.java
//                                                                   ^ punctuation.section.parens.end.java
//                                                                     ^ punctuation.section.block.begin.java
//                                                                      ^ punctuation.section.block.end.java

    A(
//  ^ entity.name.function.constructor.java
//   ^ punctuation.section.parens.begin.java
        /**/ ReceiverArgTests
//      ^^^^ comment.block.empty.java
//           ^^^^^^^^^^^^^^^^ support.class.java
        /**/ ReceiverArgTests
//      ^^^^ comment.block.empty.java
//          ^ - meta.path
//           ^^^^^^^^^^^^^^^^^ meta.path.java
//           ^^^^^^^^^^^^^^^^ support.class.java
        /**/ .
//     ^^^^^^^^ meta.path.java
//      ^^^^ comment.block.empty.java
//           ^ punctuation.accessor.dot.java - support - variable
        /**/ this [] . illegal,
//      ^^^^^^^^^ meta.path.java
//               ^^^^^^^^^^^^^ - meta.path
//      ^^^^ comment.block.empty.java
//           ^^^^ variable.parameter.this.java - support
//                ^^ invalid.illegal.unexpected-modifier.java
//                   ^ invalid.illegal.unexpected-accessor.java
//                     ^^^^^^^ invalid.illegal.unexpected-member.java
//                            ^ punctuation.separator.comma.java
        /**/ ,
//      ^^^^ comment.block.empty.java
//           ^ punctuation.separator.comma.java
        /**/  A
//      ^^^^ comment.block.empty.java
//            ^ support.class.java - meta.path
        /**/  ReceiverArgTests
//      ^^^^ comment.block.empty.java
//            ^^^^^^^^^^^^^^^^ variable.parameter.java - meta.path - support
        /**/ .
//      ^^^^^^^ - meta.path
//      ^^^^ comment.block.empty.java
//           ^ invalid.illegal.unexpected-accessor.java - meta.path
        /**/ this[].foo[][].bar
//      ^^^^^^^^^^^^^^^^^^^^^^^ - meta.path
//      ^^^^ comment.block.empty.java
//           ^^^^ invalid.illegal.unexpected-member.java - meta.path
//               ^^ invalid.illegal.unexpected-modifier.java
//                 ^ invalid.illegal.unexpected-accessor.java
//                  ^^^ invalid.illegal.unexpected-member.java
//                     ^^^^ invalid.illegal.unexpected-modifier.java
//                         ^ invalid.illegal.unexpected-accessor.java
//                          ^^^ invalid.illegal.unexpected-member.java
        /**/ ) {}
//      ^^^^ comment.block.empty.java
//           ^ punctuation.section.parens.end.java
//             ^ punctuation.section.block.begin.java
//              ^ punctuation.section.block.end.java

    // OK: the ReceiverArgTests parameter represents the instance
    // of A for which A.m() is invoked.
    void method(A this) {}
//  ^^^^^ meta.method.return-type.java - meta.method meta.method
//       ^^^^^^ meta.method.identifier.java - meta.method meta.method
//             ^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//  ^^^^ storage.type.void.java
//       ^^^^^^ entity.name.function.java
//             ^ punctuation.section.parens.begin.java
//              ^ support.class.java
//                ^^^^ variable.parameter.this.java
//                    ^ punctuation.section.parens.end.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

    class B {
      // OK: the ReceiverArgTests parameter represents the instance
      // of A which immediately encloses the instance of B being constructed.
      B(ReceiverArgTests.A A.this) {}
//    ^ entity.name.function.constructor.java
//     ^ punctuation.section.parens.begin.java
//      ^^^^^^^^^^^^^^^^ support.class.java
//                      ^ punctuation.accessor.dot.java
//                       ^ support.class.java
//                         ^^^^^^ meta.path.java
//                         ^ support.class.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^ variable.parameter.this.java
//                               ^ punctuation.section.parens.end.java
//                                 ^ punctuation.section.block.begin.java
//                                  ^ punctuation.section.block.end.java

      // FAIL: qualified parameter is a receiver and must end with "this".
      B(ReceiverArgTests.A A.fail) {}
//    ^ entity.name.function.constructor.java
//     ^ punctuation.section.parens.begin.java
//      ^^^^^^^^^^^^^^^^ support.class.java
//                      ^ punctuation.accessor.dot.java
//                       ^ support.class.java
//                         ^^^^^^ meta.path.java
//                         ^ support.class.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^ invalid.illegal.identifier.java
//                               ^ punctuation.section.parens.end.java
//                                 ^ punctuation.section.block.begin.java
//                                  ^ punctuation.section.block.end.java

      // OK: the receiver parameter represents the instance
      // of B for which B.m() is invoked.
      void method(ReceiverArgTests.A.B this) {}
//    ^^^^^ meta.method.return-type.java - meta.method meta.method
//         ^^^^^^ meta.method.identifier.java - meta.method meta.method
//               ^^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.java meta.parens.java - meta.method meta.method
//    ^^^^ storage.type.void.java
//         ^^^^^^ entity.name.function.java
//               ^ punctuation.section.parens.begin.java
//                ^^^^^^^^^^^^^^^^ support.class.java
//                                ^ punctuation.accessor.dot.java
//                                 ^ support.class.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^ support.class.java
//                                     ^^^^ variable.parameter.this.java
//                                         ^ punctuation.section.parens.end.java
//                                           ^ punctuation.section.block.begin.java
//                                            ^ punctuation.section.block.end.java
    }
//  ^ meta.class.java meta.block.java meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
  }
//^ meta.class.java meta.block.java meta.class.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * Local Variable Declaration Tests
 *****************************************************************************/

class LocalVariableDeclarationTests {

  void genericTypeTests() {
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

    final var y.b = 10;
//  ^^^^^ storage.modifier.java
//        ^^^ storage.type.var.java
//            ^ variable.other.readwrite.java
//             ^ invalid.illegal.unexpected-accessor.java
//              ^ invalid.illegal.unexpected-member.java
//                ^ keyword.operator.assignment.java

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
  }
}


/******************************************************************************
 * Instance Creation Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.9
 *****************************************************************************/

class InstantiationTests {

  @SyntaxTest
  public void instantiateClasses() {

    TestClass obj = new TestClass ;
//  ^^^^^^^^^^^^^^^^ - meta.instantiation
//                  ^^^^^^^^^^^^^^ meta.instantiation.java
//                                ^^ - meta.instantiation
//  ^^^^^^^^^ support.class.java
//            ^^^ variable.other.readwrite.java
//                ^ keyword.operator.assignment.java
//                  ^^^ keyword.other.storage.new.java
//                      ^^^^^^^^^ support.class.java
//                                ^ punctuation.terminator.java

    TestClass obj = new TestClass(foo);
//  ^^^^^^^^^^^^^^^^ - meta.instantiation
//                  ^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//                               ^^^^^ meta.parens.java
//                                    ^^ - meta.instantiation
//  ^^^^^^^^^ support.class.java
//            ^^^ variable.other.readwrite.java
//                ^ keyword.operator.assignment.java
//                  ^^^ keyword.other.storage.new.java
//                      ^^^^^^^^^ support.class.java
//                               ^ punctuation.section.parens.begin.java
//                                ^^^ variable.other.readwrite.java
//                                   ^ punctuation.section.parens.end.java

    TestClass obj = new @Foo TestClass(foo);
//  ^^^^^^^^^^^^^^^^ - meta.instantiation
//                  ^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//                      ^^^^^ meta.annotation.identifier.java
//                                    ^^^^^ meta.parens.java
//                                         ^^ - meta.instantiation
//  ^^^^^^^^^ support.class.java
//            ^^^ variable.other.readwrite.java
//                ^ keyword.operator.assignment.java
//                  ^^^ keyword.other.storage.new.java
//                       ^^^ variable.annotation.java
//                           ^^^^^^^^^ support.class.java
//                                    ^ punctuation.section.parens.begin.java
//                                     ^^^ variable.other.readwrite.java
//                                        ^ punctuation.section.parens.end.java

    com.java.TestClass obj = new com.java.TestClass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.instantiation
//  ^^^^^^^^^^^^^^^^^^ meta.path.java
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//                               ^^^^^^^^^^^^^^^^^^ meta.path.java
//  ^^^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^ variable.namespace.java
//          ^ punctuation.accessor.dot.java
//           ^^^^^^^^^ support.class.java
//                     ^^^ variable.other.readwrite.java
//                         ^ keyword.operator.assignment.java
//                           ^^^ keyword.other.storage.new.java
//                               ^^^ variable.namespace.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^^^^ variable.namespace.java
//                                       ^ punctuation.accessor.dot.java
//                                        ^^^^^^^^^ support.class.java
//                                                 ^^^^^ meta.parens.java
//                                                 ^ punctuation.section.parens.begin.java
//                                                  ^^^ variable.other.readwrite.java
//                                                     ^ punctuation.section.parens.end.java

    OuterClass.InnerClass obj = new OuterClass.InnerClass();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.instantiation
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//  ^^^^^^^^^^ support.class.java
//            ^ punctuation.accessor.dot.java
//             ^^^^^^^^^^ support.class.java
//                        ^^^ variable.other.readwrite.java
//                            ^ keyword.operator.assignment.java
//                              ^^^ keyword.other.storage.new.java
//                                  ^^^^^^^^^^ support.class.java
//                                            ^ punctuation.accessor.dot.java
//                                             ^^^^^^^^^^ support.class.java

    com.java.OuterClass.InnerClass obj = new @Foo com . @Foo java . @Foo OuterClass . @Foo InnerClass(foo);
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.instantiation
//  ^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//                                           ^^^^^ meta.annotation.identifier.java
//                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//                                                      ^^^^^ meta.annotation.identifier.java
//                                                                  ^^^^^ meta.annotation.identifier.java
//                                                                                    ^^^^^ meta.annotation.identifier.java
//  ^^^ variable.namespace.java
//     ^ punctuation.accessor.dot.java
//      ^^^^ variable.namespace.java
//          ^ punctuation.accessor.dot.java
//           ^^^^^^^^^^ support.class.java
//                     ^ punctuation.accessor.dot.java
//                      ^^^^^^^^^^ support.class.java
//                                 ^^^ variable.other.readwrite.java
//                                     ^ keyword.operator.assignment.java
//                                       ^^^ keyword.other.storage.new.java
//                                           ^ punctuation.definition.annotation.java
//                                            ^^^ variable.annotation.java
//                                                ^^^ variable.namespace.java
//                                                    ^ punctuation.accessor.dot.java
//                                                      ^ punctuation.definition.annotation.java
//                                                       ^^^ variable.annotation.java
//                                                           ^^^^ variable.namespace.java
//                                                                ^ punctuation.accessor.dot.java
//                                                                  ^ punctuation.definition.annotation.java
//                                                                   ^^^ variable.annotation.java
//                                                                       ^^^^^^^^^^ support.class.java
//                                                                                  ^ punctuation.accessor.dot.java
//                                                                                    ^ punctuation.definition.annotation.java
//                                                                                     ^^^ variable.annotation.java
//                                                                                         ^^^^^^^^^^ support.class.java
//                                                                                                   ^^^^^ meta.parens.java
//                                                                                                   ^ punctuation.section.parens.begin.java
//                                                                                                    ^^^ variable.other.readwrite.java
//                                                                                                       ^ punctuation.section.parens.end.java

  }

  @SyntaxTest
  public void instantiateArrays() {

    this.foo = new SubClass[0];
//             ^ keyword.other.storage.new.java
//                 ^ support.class.java
//                         ^^^ meta.brackets

   String[][] doubleStringArray;
// ^^^^^^ support.class.java
//       ^^^^ storage.modifier.array.java

   String @Anno [ ] @Anno [ ] doubleStringArray;
// ^^^^^^ support.class.java
//        ^^^^^^ meta.annotation.identifier.java
//              ^^^ storage.modifier.array.java
//                  ^^^^^^ meta.annotation.identifier.java
//                        ^^^ storage.modifier.array.java

    String[] stringArray = new String[] {"foo", "bar"};
//  ^^^^^^ support.class.java
//        ^^ storage.modifier.array.java
//                       ^ keyword.operator.assignment.java
//                         ^^^ keyword.other.storage.new.java
//                             ^^^^^^ support.class.java
//                                   ^ punctuation.section.brackets.begin.java
//                                    ^ punctuation.section.brackets.end.java
//                                      ^^^^^^^^^^^^^^ meta.braces.java
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
//                       ^^^^^^^^^ meta.brackets.java
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
//                                 ^^^ meta.brackets.java
//                                 ^ punctuation.section.brackets.begin.java
//                                  ^ constant.numeric.integer.decimal.java
//                                   ^ punctuation.section.brackets.end.java
  }

  @SyntaxTest
  public void instantiateGenerics() {

    new Generic<>;
//  ^^^^^^^^^^^^^ meta.instantiation.java
//             ^^ meta.generic.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ support.class.java
//             ^^ punctuation.definition.generic.diamond.java
//               ^ punctuation.terminator.java

    new Generic<>();
//  ^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^ meta.generic.java
//               ^^ meta.parens.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ support.class.java
//             ^^ punctuation.definition.generic.diamond.java
//               ^ punctuation.section.parens.begin.java
//                ^ punctuation.section.parens.end.java
//                 ^ punctuation.terminator.java

    new Generic<Type>();
//  ^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^^^^^ meta.generic.java
//                   ^^ meta.parens.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ support.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^^^^ support.class.java
//                  ^ punctuation.definition.generic.end.java
//                   ^ punctuation.section.parens.begin.java
//                    ^ punctuation.section.parens.end.java
//                     ^ punctuation.terminator.java

    new Generic<@Anno Type>();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^^^^^^^^^^^ meta.generic.java
//              ^^^^^^ meta.annotation.identifier.java
//                         ^^ meta.parens.java
//  ^^^ keyword.other.storage.new.java
//      ^^^^^^^ support.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^ punctuation.definition.annotation.java
//               ^^^^ variable.annotation.java
//                    ^^^^ support.class.java
//                        ^ punctuation.definition.generic.end.java
//                         ^ punctuation.section.parens.begin.java
//                          ^ punctuation.section.parens.end.java
//                           ^ punctuation.terminator.java

    new Generic<?>();
//  ^^^^^^^^^^^^^^^^ meta.instantiation.java
//             ^^^ meta.generic.java
//                ^^ meta.parens.java
//      ^^^^^^^ support.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^ keyword.operator.wildcard.java
//               ^ punctuation.definition.generic.end.java
//                ^ punctuation.section.parens.begin.java
//                 ^ punctuation.section.parens.end.java
//                  ^ punctuation.terminator.java

    new @Anno Generic<@Anno ?>();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java
//      ^^^^^^ meta.annotation.identifier.java
//                   ^^^^^^^^^ meta.generic.java
//                    ^^^^^^ meta.annotation.identifier.java
//                            ^^ meta.parens.java
//      ^ punctuation.definition.annotation.java
//       ^^^^ variable.annotation.java
//            ^^^^^^^ support.class.java
//                   ^ punctuation.definition.generic.begin.java
//                    ^ punctuation.definition.annotation.java
//                     ^^^^ variable.annotation.java
//                          ^ keyword.operator.wildcard.java
//                           ^ punctuation.definition.generic.end.java
//                            ^ punctuation.section.parens.begin.java
//                             ^ punctuation.section.parens.end.java
//                              ^ punctuation.terminator.java

    new Generic<? extends Type>();
//  ^^^^^^^^^^^ meta.instantiation.java - meta.generic
//             ^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                             ^^ meta.instantiation.java meta.parens.java
//             ^ punctuation.definition.generic.begin.java
//              ^ keyword.operator.wildcard.java
//                ^^^^^^^ keyword.declaration.extends.java
//                        ^^^^ support.class.java
//                            ^ punctuation.definition.generic.end.java
//                             ^ punctuation.section.parens.begin.java
//                              ^ punctuation.section.parens.end.java
//                               ^ punctuation.terminator.java

    new @Anno Generic<@Anno ? extends @Anno Type>();
//  ^^^^^^^^^^^^^^^^^ meta.instantiation.java - meta.generic
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                                               ^^ meta.instantiation.java meta.parens.java
//      ^ punctuation.definition.annotation.java
//       ^^^^ variable.annotation.java
//            ^^^^^^^ support.class.java
//                   ^ punctuation.definition.generic.begin.java
//                    ^ punctuation.definition.annotation.java
//                     ^^^^ variable.annotation.java
//                          ^ keyword.operator.wildcard.java
//                            ^^^^^^^ keyword.declaration.extends.java
//                                    ^ punctuation.definition.annotation.java
//                                     ^^^^ variable.annotation.java
//                                          ^^^^ support.class.java
//                                              ^ punctuation.definition.generic.end.java
//                                               ^ punctuation.section.parens.begin.java
//                                                ^ punctuation.section.parens.end.java
//                                                 ^ punctuation.terminator.java

    new Generic<? extends Type, String>();
//  ^^^^^^^^^^^ meta.instantiation.java - meta.generic
//             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                                     ^^ meta.instantiation.java meta.parens.java
//             ^ punctuation.definition.generic.begin.java
//              ^ keyword.operator.wildcard.java
//                ^^^^^^^ keyword.declaration.extends.java
//                        ^^^^ support.class.java
//                            ^ punctuation.separator.comma.java
//                              ^^^^^^ support.class.java
//                                    ^ punctuation.definition.generic.end.java
//                                     ^ punctuation.section.parens.begin.java
//                                      ^ punctuation.section.parens.end.java
//                                       ^ punctuation.terminator.java

    new Generic<? super Type>();
//  ^^^^^^^^^^^ meta.instantiation.java - meta.generic
//             ^^^^^^^^^^^^^^ meta.instantiation.java meta.generic.java
//                           ^^ meta.instantiation.java meta.parens.java
//             ^ punctuation.definition.generic.begin.java
//              ^ keyword.operator.wildcard.java
//                ^^^^^ keyword.declaration.super.java
//                      ^^^^ support.class.java
//                          ^ punctuation.definition.generic.end.java
//                           ^ punctuation.section.parens.begin.java
//                            ^ punctuation.section.parens.end.java
//                             ^ punctuation.terminator.java

    new Generic<int>();
//              ^^^ invalid.illegal.unexpected-keyword.java

    new Generic<int[]>();
//              ^^^ storage.type.primitive.java
//                 ^^ storage.modifier.array.java

    new Generic<int @Anno []>();
//              ^^^ storage.type.primitive.java
//                  ^^^^^^ meta.annotation.identifier.java
//                        ^^ storage.modifier.array.java

    new Generic<int @com . Anno ( @Anno arg ) []>();
//              ^^^ storage.type.primitive.java
//                  ^^^^^^^^^^^^ meta.annotation.identifier.java
//                              ^^^^^^^^^^^^^ meta.annotation.parameters.java meta.parens.java
//                                            ^^ storage.modifier.array.java

    new Generic<String, int>();
//              ^^^^^^ support.class.java
//                      ^^^ invalid.illegal.unexpected-keyword.java

    new Generic<a.b.FooBar>();
//             ^^^^^^^^^^^^ meta.generic.java
//              ^^^^^^^^^^ meta.path.java
//              ^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^ variable.namespace.java
//                 ^ punctuation.accessor.dot.java

    new Generic<?>[] { new Generic(1), new Generic(2) };
//             ^^^ meta.generic.java
//                ^^ punctuation.section.brackets
//                   ^ punctuation.section.braces.begin
//                         ^^^^^^^ support.class.java
//                                   ^ punctuation.separator.comma.java
//                                         ^^^^^^^ support.class.java
//                                                    ^ punctuation.section.braces.end

    new ArrayList<?>[] { new ArrayList<java.sql.Date>(), new ArrayList<Date>() }
//                                    ^^^^^^^^^^^^^^^ meta.generic.java
//                                     ^^^^^^^^^^^^^ meta.path.java
//                                                                    ^^^^^^ meta.generic.java

    new a.
//      ^^^ meta.path.java
      b.Generic<a.
//    ^^^^^^^^^ meta.path.java
//             ^ meta.generic.java - meta.path
//              ^^^ meta.generic.java meta.path.java
        b.Generic>();
//      ^^^^^^^^^ meta.generic.java meta.path.java


    obj = new <T1, T2> Generic<T>();


    new <T1, T2> Generic<T>();

  }
}


/******************************************************************************
 * For Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.14
 *****************************************************************************/

class ForStatementTests {

  void run() {

    for
//  ^^^^ meta.for.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword

    for ()
//  ^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.parens
//      ^^ meta.for.java meta.parens.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.parens.begin.java
//       ^ punctuation.section.parens.end.java

    for () {}
//  ^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.parens
//      ^^ meta.for.java meta.parens.java
//        ^ meta.for.java - meta.block meta.block meta.block
//         ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.parens.begin.java
//       ^ punctuation.section.parens.end.java
//         ^ punctuation.section.block.begin.java
//          ^ punctuation.section.block.end.java

    for ( {}
//  ^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.parens
//      ^^ meta.for.java meta.parens.java
//        ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.parens.begin.java
//        ^ punctuation.section.block.begin.java
//         ^ punctuation.section.block.end.java

    for (; {}
//  ^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.parens
//      ^^^ meta.for.java meta.parens.java
//         ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.parens.begin.java
//       ^ punctuation.terminator.java
//        ^ invalid.illegal.stray-terminator-end
//         ^ punctuation.section.block.begin.java
//          ^ punctuation.section.block.end.java

    for (;; {}
//  ^^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.parens
//      ^^^^ meta.for.java meta.parens.java
//          ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.parens.begin.java
//       ^^ punctuation.terminator.java
//         ^ invalid.illegal.stray-terminator-end
//          ^ punctuation.section.block.begin.java
//           ^ punctuation.section.block.end.java

    for (;;;;) {;;;}
//  ^^^^^^^^^^ - meta.for meta.for
//  ^^^^ meta.for.java - meta.parens
//      ^^^^^^ meta.for.java meta.parens.java
//            ^ meta.for.java - meta.block meta.block meta.block
//             ^^^^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//     ^ - keyword
//      ^ punctuation.section.parens.begin.java
//       ^^ punctuation.terminator.java
//         ^^ invalid.illegal.stray-terminator-end
//           ^ punctuation.section.parens.end.java
//             ^ punctuation.section.block.begin.java
//              ^^^ punctuation.terminator.java
//                 ^ punctuation.section.block.end.java

    for (i = 0; i < 10; i += 2) {}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java
//                             ^ meta.for.java - meta.block meta.block meta.block
//                              ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.parens.begin.java
//       ^ variable.other.readwrite.java
//         ^ keyword.operator.assignment.java
//           ^ constant.numeric.integer.decimal.java
//            ^ punctuation.terminator.java
//              ^ variable.other.readwrite.java
//                ^ keyword.operator.comparison.java
//                  ^^ constant.numeric.integer.decimal.java
//                    ^ punctuation.terminator.java
//                      ^ variable.other.readwrite.java
//                        ^^ keyword.operator.assignment.augmented.java
//                           ^ constant.numeric.integer.decimal.java
//                            ^ punctuation.section.parens.end.java
//                              ^ punctuation.section.block.begin.java

    for (i = 0, j = 0; i < 10 && j < 5; i += 2, ++j) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java - meta.for meta.for
//                                                  ^ meta.for.java - meta.block meta.block meta.block
//                                                   ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.parens.begin.java
//       ^ variable.other.readwrite.java
//         ^ keyword.operator.assignment.java
//           ^ constant.numeric.integer.decimal.java
//            ^ punctuation.separator.sequence.java
//              ^ variable.other.readwrite.java
//                ^ keyword.operator.assignment.java
//                  ^ constant.numeric.integer.decimal.java
//                   ^ punctuation.terminator.java
//                     ^ variable.other.readwrite.java
//                       ^ keyword.operator.comparison.java
//                         ^^ constant.numeric.integer.decimal.java
//                            ^^ keyword.operator.logical.java
//                               ^ variable.other.readwrite.java
//                                 ^ keyword.operator.comparison.java
//                                   ^ constant.numeric.integer.decimal.java
//                                    ^ punctuation.terminator.java
//                                      ^ variable.other.readwrite.java
//                                        ^^ keyword.operator.assignment.augmented.java
//                                           ^ constant.numeric.integer.decimal.java
//                                                 ^ punctuation.section.parens.end.java
//                                                   ^ punctuation.section.block.begin.java

    for (int i = 0; i < 10; i += 2) {}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java
//                                 ^ meta.for.java - meta.block meta.block meta.block
//                                  ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.parens.begin.java
//       ^^^ storage.type.primitive.java
//           ^ variable.other.readwrite.java
//             ^ keyword.operator.assignment.java
//               ^ constant.numeric.integer.decimal.java
//                ^ punctuation.terminator.java
//                  ^ variable.other.readwrite.java
//                    ^ keyword.operator.comparison.java
//                      ^^ constant.numeric.integer.decimal.java
//                        ^ punctuation.terminator.java
//                          ^ variable.other.readwrite.java
//                            ^^ keyword.operator.assignment.augmented.java
//                               ^ constant.numeric.integer.decimal.java
//                                ^ punctuation.section.parens.end.java
//                                  ^ punctuation.section.block.begin.java

    for (int i = 0, j = 0; i < 10 && j < 5; i += 2, ++j) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java - meta.for meta.for
//                                                      ^ meta.for.java - meta.block meta.block meta.block
//                                                       ^^ meta.for.java meta.block.java
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.parens.begin.java
//       ^^^ storage.type.primitive.java
//           ^ variable.other.readwrite.java
//             ^ keyword.operator.assignment.java
//               ^ constant.numeric.integer.decimal.java
//                ^ punctuation.separator.sequence.java
//                  ^ variable.other.readwrite.java
//                    ^ keyword.operator.assignment.java
//                      ^ constant.numeric.integer.decimal.java
//                       ^ punctuation.terminator.java
//                         ^ variable.other.readwrite.java
//                           ^ keyword.operator.comparison.java
//                             ^^ constant.numeric.integer.decimal.java
//                                ^^ keyword.operator.logical.java
//                                   ^ variable.other.readwrite.java
//                                     ^ keyword.operator.comparison.java
//                                       ^ constant.numeric.integer.decimal.java
//                                        ^ punctuation.terminator.java
//                                          ^ variable.other.readwrite.java
//                                            ^^ keyword.operator.assignment.augmented.java
//                                               ^ constant.numeric.integer.decimal.java
//                                                     ^ punctuation.section.parens.end.java
//                                                       ^ punctuation.section.block.begin.java

    for (final int x = 10;;) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java - meta.for meta.for
//  ^^^ keyword.control.loop.for.java
//       ^^^^^ storage.modifier.java
//             ^^^ storage.type.primitive.java
//                 ^ variable.other.readwrite.java
//                   ^ keyword.operator.assignment.java
//                     ^^ constant.numeric.integer.decimal.java
//                       ^^ punctuation.terminator.java
//                         ^ punctuation.section.parens.end.java

    for (native int x = 10;;) {}
//  ^^^^ meta.for.java - meta.for meta.for
//      ^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java - meta.for meta.for
//  ^^^ keyword.control.loop.for.java
//       ^^^^^^ invalid.illegal.unexpected-keyword.java
//              ^^^ storage.type.primitive.java
//                  ^ variable.other.readwrite.java
//                    ^ keyword.operator.assignment.java
//                      ^^ constant.numeric.integer.decimal.java
//                        ^^ punctuation.terminator.java
//                          ^ punctuation.section.parens.end.java

    for (var i=0;i<new Test(i).run();i=new Test(i).iter()){}
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java
//                                                        ^^ meta.for.java meta.block.java

    for (final @Anno Class iter : cond ? new Foo<> : new Bar[]) echo(iter);
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java
//                                       ^^^^^^^^^^ meta.instantiation.java
//                                                 ^^ - meta.instantiation
//                                                   ^^^^^^^^^ meta.instantiation.java
//                                                              ^^^^^^^^^^ meta.for.java
//                                                                        ^ - meta.for
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.parens.begin.java
//       ^^^^^ storage.modifier.java
//             ^^^^^^ meta.annotation.identifier.java
//                   ^^^^^ support.class.java
//                         ^^^^ variable.other.readwrite.java
//                              ^ keyword.operator.assignment.java
//                                ^^^^ variable.other.readwrite.java
//                                     ^ keyword.operator.ternary.java
//                                       ^^^ keyword.other.storage.new.java
//                                           ^^^ support.class.java
//                                              ^^ punctuation.definition.generic.diamond.java
//                                                 ^ keyword.operator.ternary.java
//                                                   ^^^ keyword.other.storage.new.java
//                                                       ^^^ support.class.java
//                                                          ^ punctuation.section.brackets.begin.java
//                                                           ^ punctuation.section.brackets.end.java
//                                                            ^ punctuation.section.parens.end.java
//                                                              ^^^^ variable.function.java
//                                                                  ^ punctuation.section.parens.begin.java
//                                                                   ^^^^ variable.other.readwrite.java
//                                                                       ^ punctuation.section.parens.end.java
//                                                                        ^ punctuation.terminator.java

    for (private @Anno var iter : cond ? new Foo<> : new Bar[]) echo(iter);
//  ^^^^ meta.for.java
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.java meta.parens.java
//                                       ^^^^^^^^^^ meta.instantiation.java
//                                                 ^^ - meta.instantiation
//                                                   ^^^^^^^^^ meta.instantiation.java
//                                                              ^^^^^^^^^^ meta.for.java
//                                                                        ^ - meta.for
//  ^^^ keyword.control.loop.for.java
//      ^ punctuation.section.parens.begin.java
//       ^^^^^^^ invalid.illegal.unexpected-keyword.java
//               ^^^^^^ meta.annotation.identifier.java
//                     ^^^ storage.type.var.java
//                         ^^^^ variable.other.readwrite.java
//                              ^ keyword.operator.assignment.java
//                                ^^^^ variable.other.readwrite.java
//                                     ^ keyword.operator.ternary.java
//                                       ^^^ keyword.other.storage.new.java
//                                           ^^^ support.class.java
//                                              ^^ punctuation.definition.generic.diamond.java
//                                                 ^ keyword.operator.ternary.java
//                                                   ^^^ keyword.other.storage.new.java
//                                                       ^^^ support.class.java
//                                                          ^ punctuation.section.brackets.begin.java
//                                                           ^ punctuation.section.brackets.end.java
//                                                            ^ punctuation.section.parens.end.java
//                                                              ^^^^ variable.function.java
//                                                                  ^ punctuation.section.parens.begin.java
//                                                                   ^^^^ variable.other.readwrite.java
//                                                                       ^ punctuation.section.parens.end.java
//                                                                        ^ punctuation.terminator.java

  }
//^ meta.class.java meta.block.java meta.method.java meta.block.java punctuation.section.block.end.java
}
//<- meta.class.java meta.block.java punctuation.section.block.end.java


/******************************************************************************
 * If Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.9
 *****************************************************************************/

class IfStatementTests {

  void run() {

    if
//  ^^^ meta.if.java
//  ^^ keyword.control.conditional.if.java

    if foo
//  ^^^^^^^ meta.if.java
//  ^^ keyword.control.conditional.if.java
//     ^^^ variable.other.readwrite.java

    if (foo)
//  ^^^ meta.if.java - meta.parens
//     ^^^^^ meta.if.java meta.parens.java
//          ^ meta.if.java - meta.parens
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.parens.begin.java
//      ^^^ variable.other.readwrite.java
//         ^ punctuation.section.parens.end.java

    if (foo) {}
//  ^^^ meta.if.java - meta.if meta.parens
//     ^^^^^ meta.if.java meta.parens.java
//          ^ meta.if.java - meta.if meta.block - meta.if meta.parens
//           ^^ meta.if.java meta.block.java
//             ^ - meta.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.parens.begin.java
//      ^^^ variable.other.readwrite.java
//         ^ punctuation.section.parens.end.java
//           ^ punctuation.section.block.begin.java
//            ^ punctuation.section.block.end.java

    if (foo) else
//  ^^^^^^^^^ - meta.else
//  ^^^ meta.if.java - meta.if meta.parens
//     ^^^^^ meta.if.java meta.parens.java
//          ^ meta.if.java - meta.if meta.block - meta.if meta.parens
//           ^^^^^ meta.else.java - meta.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.parens.begin.java
//      ^^^ variable.other.readwrite.java
//         ^ punctuation.section.parens.end.java
//           ^^^^ keyword.control.conditional.else.java

    if (foo) {} else {}
//  ^^^^^^^^^^^^ - meta.else
//  ^^^ meta.if.java - meta.parens
//     ^^^^^ meta.if.java meta.parens.java
//          ^ meta.if.java - meta.if meta.block - meta.if meta.parens
//           ^^ meta.if.java meta.block.java
//             ^^^^^^^^ - meta.if
//              ^^^^^ meta.else.java - meta.else meta.block
//                   ^^ meta.else.java meta.block.java
//                     ^ - meta.if - meta.else
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.parens.begin.java
//      ^^^ variable.other.readwrite.java
//         ^ punctuation.section.parens.end.java
//           ^ punctuation.section.block.begin.java
//            ^ punctuation.section.block.end.java
//              ^^^^ keyword.control.conditional.else.java
//                   ^ punctuation.section.block.begin.java
//                    ^ punctuation.section.block.end.java

    if (foo) else if (bar) else
//  ^^^^^^^^^ - meta.else
//  ^^^ meta.if.java - meta.if meta.parens
//     ^^^^^ meta.if.java meta.parens.java
//          ^ meta.if.java - meta.if meta.block - meta.if meta.parens
//           ^^^^^ meta.else.java - meta.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.parens.begin.java
//      ^^^ variable.other.readwrite.java
//         ^ punctuation.section.parens.end.java
//           ^^^^ keyword.control.conditional.else.java
//                ^^^^^^^^^ - meta.else
//                ^^^ meta.if.java - meta.if meta.parens
//                   ^^^^^ meta.if.java meta.parens.java
//                        ^ meta.if.java - meta.if meta.block - meta.if meta.parens
//                         ^^^^^ meta.else.java - meta.if
//                ^^ keyword.control.conditional.if.java
//                   ^ punctuation.section.parens.begin.java
//                    ^^^ variable.other.readwrite.java
//                       ^ punctuation.section.parens.end.java
//                         ^^^^ keyword.control.conditional.else.java

    if (foo() == true) fun() else if (bar != 0) bar = 1 else baz++
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.else
//  ^^^ meta.if.java - meta.if meta.parens
//     ^^^^^^^^^^^^^^^ meta.if.java meta.parens.java
//                    ^ meta.if.java - meta.if meta.parens
//                     ^^^^^^ meta.if.java
//                           ^^^^^ meta.else.java - meta.if
//                                ^^^^^^^^^^^^^^^^^^^^^^ - meta.else
//                                ^^^ meta.if.java - meta.if meta.parens
//                                   ^^^^^^^^^^ meta.if.java meta.parens.java
//                                                      ^^^^^ meta.else.java - meta.if
//  ^^ keyword.control.conditional.if.java
//     ^ punctuation.section.parens.begin.java
//      ^^^ variable.function.java
//            ^^ keyword.operator.comparison.java
//               ^^^^ constant.language.boolean.java
//                   ^ punctuation.section.parens.end.java
//                     ^^^ variable.function.java
//                           ^^^^ keyword.control.conditional.else.java
  }
}


/******************************************************************************
 * Switch Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.11
 *****************************************************************************/

class SwitchStatementTests {

  void run() {

    switch
//  ^^^^^^^ meta.switch.java
//  ^^^^^^ keyword.control.conditional.switch.java

    switch foo
//  ^^^^^^^^^^^ meta.switch.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^^^ variable.other.readwrite.java

    switch (foo)
//  ^^^^^^^^^^^^^ - meta.switch meta.switch
//  ^^^^^^^ meta.switch.java
//         ^^^^^ meta.switch.java meta.parens.java
//              ^ meta.switch.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^ punctuation.section.parens.begin.java
//          ^^^ variable.other.readwrite.java
//             ^ punctuation.section.parens.end.java

    switch (foo) {}
//  ^^^^^^^^^^^^^^^ - meta.switch meta.switch
//  ^^^^^^^ meta.switch.java
//         ^^^^^ meta.switch.java meta.parens.java
//              ^ meta.switch.java
//               ^^ meta.switch.java meta.block.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^ punctuation.section.parens.begin.java
//          ^^^ variable.other.readwrite.java
//             ^ punctuation.section.parens.end.java
//               ^ punctuation.section.block.begin.java
//                ^ punctuation.section.block.end.java

    switch (foo {}
//  ^^^^^^^^^^^^^^^ - meta.switch meta.switch
//  ^^^^^^^ meta.switch.java
//         ^^^^^ meta.switch.java meta.parens.java
//              ^^ meta.switch.java meta.block.java
//  ^^^^^^ keyword.control.conditional.switch.java
//         ^ punctuation.section.parens.begin.java
//          ^^^ variable.other.readwrite.java
//             ^ invalid.illegal.stray-terminator-end
//              ^ punctuation.section.block.begin.java
//               ^ punctuation.section.block.end.java

    switch (foo%2) {

      case
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java
//    ^^^^ keyword.control.conditional.case.java

      case :
//   ^^^^^^^ meta.switch.java meta.block.java meta.case.java
//          ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ punctuation.separator.expressions.java

      case 0:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^ meta.switch.java meta.block.java meta.case.java
//           ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ constant.numeric.integer.decimal.java
//          ^ punctuation.separator.expressions.java

      case 1: bar()
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^ meta.switch.java meta.block.java meta.case.java
//           ^^^^^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ constant.numeric.integer.decimal.java
//          ^ punctuation.separator.expressions.java
//            ^^^ variable.function.java

      case 3: ;
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^ meta.switch.java meta.block.java meta.case.java
//           ^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ constant.numeric.integer.decimal.java
//          ^ punctuation.separator.expressions.java
//            ^ punctuation.terminator.java

      case 5: {}
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^ meta.switch.java meta.block.java meta.case.java
//           ^^^^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ constant.numeric.integer.decimal.java
//          ^ punctuation.separator.expressions.java
//            ^ punctuation.section.block.begin.java
//             ^ punctuation.section.block.end.java

      case "string":
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ string.quoted.double.java
//                 ^ punctuation.separator.expressions.java

      case 'string':
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ string.quoted.single.java
//                 ^ punctuation.separator.expressions.java

      case 'string' + foo():
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                          ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ string.quoted.single.java
//                  ^ keyword.operator.arithmetic.java
//                    ^^^ variable.function.java
//                         ^ punctuation.separator.expressions.java

      case constant + 5:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                      ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ variable.other.readwrite.java
//                  ^ keyword.operator.arithmetic.java
//                    ^ constant.numeric.integer.decimal.java
//                     ^ punctuation.separator.expressions.java

      case (constant << 0x5) :
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^ meta.switch.java meta.block.java meta.case.java - meta.parens
//         ^^^^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java meta.parens.java
//                          ^^ meta.switch.java meta.block.java meta.case.java - meta.parens
//                            ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^ punctuation.section.parens.begin.java
//          ^^^^^^^^ variable.other.readwrite.java
//                   ^^ keyword.operator.bitwise.java
//                      ^^^ constant.numeric.integer.hexadecimal.java
//                         ^ punctuation.section.parens.end.java
//                           ^ punctuation.separator.expressions.java

      case CONSTANT:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java
//                 ^ punctuation.separator.expressions.java

      case constant:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                  ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^ constant.other.java
//                 ^ punctuation.separator.expressions.java

      case EnumConst:
//   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^^^^^^^^^^^^ meta.switch.java meta.block.java meta.case.java - meta.path
//                   ^ meta.switch.java meta.block.java - meta.case
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^^^ constant.other.java
//                  ^ punctuation.separator.expressions.java

      case module.CONSTANT:
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^  meta.case.java meta.path.java
//                        ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^ variable.namespace.java
//               ^ punctuation.accessor.dot.java
//                ^^^^^^^^ constant.other.java
//                        ^ punctuation.separator.expressions.java

      case MyClass.CONSTANT:
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^  meta.case.java meta.path.java
//                         ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^^^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^^ constant.other.java
//                         ^ punctuation.separator.expressions.java

      case mod.sub.MyClass.EnumConst:
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.case.java meta.path.java
//                                  ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^ variable.namespace.java
//                         ^^^^^^^^^ constant.other.java
//                                  ^ punctuation.separator.expressions.java

      case mod.sub.myclass.enumconst:
//    ^^^^^ meta.case.java - meta.path
//         ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.case.java meta.path.java
//                                  ^ meta.case.java - meta.path
//    ^^^^ keyword.control.conditional.case.java
//         ^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java
//             ^^^ variable.namespace.java
//                ^ punctuation.accessor.dot.java
//                 ^^^^^^^ variable.namespace.java
//                         ^^^^^^^^^ constant.other.java
//                                  ^ punctuation.separator.expressions.java

      default : {}
//  ^^ meta.switch.java meta.block.java - meta.default
//    ^^^^^^^^^ meta.switch.java meta.block.java meta.default.java
//             ^^^^ meta.switch.java meta.block.java - meta.default
//    ^^^^^^^ keyword.control.conditional.default.java
//            ^ punctuation.separator.expressions.java
//              ^ punctuation.section.block.begin.java
//               ^ punctuation.section.block.end.java
    }
//  ^ meta.switch.java meta.block.java punctuation.section.block.end.java
  }
}


/******************************************************************************
 * Break Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.15
 *****************************************************************************/

class BreakStatementTests {

  void run() {

    label:
//  ^^^^^ entity.name.label.java
//       ^ punctuation.separator.colon.java

    break
// ^ - meta.break
//  ^^^^^^ meta.break.java
//  ^^^^^ keyword.control.flow.break.java

    break ;
// ^^^^^^^ meta.break.java
//        ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^ punctuation.terminator.java

    break label;
// ^ - meta.break
//  ^^^^^^^^^^^ meta.break.java
//             ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^^^^^ variable.label.java
//             ^ punctuation.terminator.java

    break
// ^ - meta.break
//  ^^^^^^ meta.break.java
//  ^^^^^ keyword.control.flow.break.java
        label
//     ^^^^^^^ meta.break.java
//      ^^^^^ variable.label.java
        ;
//     ^ meta.break.java
//      ^ - meta.break
//      ^ punctuation.terminator.java

    break str + 5;
// ^ - meta.break
//  ^^^^^^^^^^^^^ meta.break.java
//               ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^^^ variable.label.java
//            ^ invalid.illegal.expect-terminator.java
//              ^ invalid.illegal.expect-terminator.java
//               ^ punctuation.terminator.java

    break 5 + 5;
// ^ - meta.break
//  ^^^^^^^^^^^ meta.break.java
//             ^ - meta.break
//  ^^^^^ keyword.control.flow.break.java
//        ^ invalid.illegal.expect-terminator.java
//          ^ invalid.illegal.expect-terminator.java
//            ^ invalid.illegal.expect-terminator.java
//             ^ punctuation.terminator.java

    goto label;
//  ^^^^ invalid.illegal
//       ^^^^^ variable.other.readwrite.java
  }
}


/******************************************************************************
 * Continue Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.16
 *****************************************************************************/

class ContinueStatementTests {

  void run() {

    label:
//  ^^^^^ entity.name.label.java
//       ^ punctuation.separator.colon.java

    continue
// ^ - meta.continue
//  ^^^^^^^^^ meta.continue.java
//  ^^^^^^^^ keyword.control.flow.continue.java

    continue ;
// ^^^^^^^^^^ meta.continue.java
//           ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^ punctuation.terminator.java

    continue label;
// ^ - meta.continue
//  ^^^^^^^^^^^^^^ meta.continue.java
//                ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^^^^^ variable.label.java
//                ^ punctuation.terminator.java

    continue
// ^ - meta.continue
//  ^^^^^^^^^ meta.continue.java
//  ^^^^^^^^ keyword.control.flow.continue.java
        label
//     ^^^^^^^ meta.continue.java
//      ^^^^^ variable.label.java
        ;
//     ^ meta.continue.java
//      ^ - meta.continue
//      ^ punctuation.terminator.java

    continue str + 5;
// ^ - meta.continue
//  ^^^^^^^^^^^^^^^^ meta.continue.java
//                  ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^^^ variable.label.java
//               ^ invalid.illegal.expect-terminator.java
//                 ^ invalid.illegal.expect-terminator.java
//                  ^ punctuation.terminator.java

    continue 5 + 5;
// ^ - meta.continue
//  ^^^^^^^^^^^^^^ meta.continue.java
//                ^ - meta.continue
//  ^^^^^^^^ keyword.control.flow.continue.java
//           ^ invalid.illegal.expect-terminator.java
//             ^ invalid.illegal.expect-terminator.java
//               ^ invalid.illegal.expect-terminator.java
//                ^ punctuation.terminator.java
  }
}


/******************************************************************************
 * Return Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.17
 *****************************************************************************/

class ReturnStatementTests {

  void run() {

    return
// ^ - meta.return - keyword
//  ^^^^^^^ meta.return.java
//  ^^^^^^ keyword.control.flow.return.java

    return;
// ^^^^^^^ meta.return.java
//        ^ - meta.return
//  ^^^^^^ keyword.control.flow.return.java
//        ^ punctuation.terminator.java

    return variable
// ^ - meta.return - keyword
//  ^^^^^^^^^^^^^^^^ meta.return.java
//  ^^^^^^ keyword.control.flow.return.java
//         ^^^^^^^^ variable.other.readwrite.java

    return variable + func(10);
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.return.java
//                            ^ - meta.return
//  ^^^^^^ keyword.control.flow.return.java
//         ^^^^^^^^ variable.other.readwrite.java
//                  ^ keyword.operator.arithmetic.java
//                    ^^^^ variable.function.java
//                        ^ punctuation.section.parens.begin.java
//                         ^^ constant.numeric.integer.decimal.java
//                           ^ punctuation.section.parens.end.java
//                            ^ punctuation.terminator.java

    return
// ^ - meta.return - keyword
//  ^^^^^^^ meta.return.java
//  ^^^^^^ keyword.control.flow.return.java
        variable
//     ^^^^^^^^^^ meta.return.java
//      ^^^^^^^^ variable.other.readwrite.java
        +
//     ^^^ meta.return.java
//      ^ keyword.operator.arithmetic.java
        func
//     ^^^^^^ meta.return.java
//      ^^^^ variable.function.java
        (
//     ^^^ meta.return.java
//      ^ punctuation.section.parens.begin.java
            10
//         ^^^^ meta.return.java
//          ^^ constant.numeric.integer.decimal.java
        )
//     ^^^ meta.return.java
//      ^ punctuation.section.parens.end.java
        ;
//     ^ meta.return.java
//      ^ - meta.return
//      ^ punctuation.terminator.java

    return new MyClass();
// ^ - meta.return - keyword
//  ^^^^^^^^^^^^^^^^^^^^ meta.return.java
//                      ^ - meta.return
//  ^^^^^^ keyword.control.flow.return.java
//         ^^^ keyword.other.storage.new.java
//             ^^^^^^^ support.class.java
//                    ^ punctuation.section.parens.begin.java
//                     ^ punctuation.section.parens.end.java
//                      ^ punctuation.terminator.java

    return (a, int b) -> a + b;
// ^ - meta.return - keyword
//  ^^^^^^^ meta.return.java - meta.function - meta.parens
//         ^^^^^^^^^^ meta.return.java meta.function.anonymous.parameters.java meta.parens.java
//                   ^^^^^^^^^ meta.return.java meta.function.anonymous.java - meta.parens
//  ^^^^^^ keyword.control.flow.return.java
//         ^ punctuation.section.parens.begin.java
//          ^ variable.parameter.java
//           ^ punctuation.separator.comma.java
//             ^^^ storage.type.primitive.java
//                 ^ variable.parameter.java
//                  ^ punctuation.section.parens.end.java
//                    ^^ storage.type.function.anonymous.java
//                       ^ variable.other.readwrite.java
//                         ^ keyword.operator.arithmetic.java
//                           ^ variable.other.readwrite.java
//                            ^ punctuation.terminator.java
  }
//^ meta.class.java meta.block.java meta.method.java meta.block.java punctuation.section.block.end.java
}


/******************************************************************************
 * Throw Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.18
 *****************************************************************************/

class ThrowStatementTests {

  void run() {

    throw
// ^ - meta.throw - keyword
//  ^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java

    throw;
// ^^^^^^ meta.throw.java
//       ^ - meta.throw
//  ^^^^^ keyword.control.flow.throw.java
//       ^ punctuation.terminator.java

    throw variable
// ^ - meta.throw - keyword
//  ^^^^^^^^^^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java
//        ^^^^^^^^ variable.other.readwrite.java

    throw variable + func(10);
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.throw.java
//                           ^ - meta.throw
//  ^^^^^ keyword.control.flow.throw.java
//        ^^^^^^^^ variable.other.readwrite.java
//                 ^ keyword.operator.arithmetic.java
//                   ^^^^ variable.function.java
//                       ^ punctuation.section.parens.begin.java
//                        ^^ constant.numeric.integer.decimal.java
//                          ^ punctuation.section.parens.end.java
//                           ^ punctuation.terminator.java

    throw
// ^ - meta.throw - keyword
//  ^^^^^^ meta.throw.java
//  ^^^^^ keyword.control.flow.throw.java
        variable
//     ^^^^^^^^^^ meta.throw.java
//      ^^^^^^^^ variable.other.readwrite.java
        +
//     ^^^ meta.throw.java
//      ^ keyword.operator.arithmetic.java
        func
//     ^^^^^^ meta.throw.java
//      ^^^^ variable.function.java
        (
//     ^^^ meta.throw.java
//      ^ punctuation.section.parens.begin.java
            10
//         ^^^^ meta.throw.java
//          ^^ constant.numeric.integer.decimal.java
        )
//     ^^^ meta.throw.java
//      ^ punctuation.section.parens.end.java
        ;
//     ^ meta.throw.java
//      ^ - meta.throw
//      ^ punctuation.terminator.java

    throw new MyClass();
// ^ - meta.throw - keyword
//  ^^^^^^^^^^^^^^^^^^^ meta.throw.java
//                     ^ - meta.throw
//  ^^^^^ keyword.control.flow.throw.java
//        ^^^ keyword.other.storage.new.java
//            ^^^^^^^ support.class.java
//                   ^ punctuation.section.parens.begin.java
//                    ^ punctuation.section.parens.end.java
//                     ^ punctuation.terminator.java

    throw (a, int b) -> a + b;
// ^ - meta.throw - keyword
//  ^^^^^^ meta.throw.java - meta.function - meta.parens
//        ^^^^^^^^^^ meta.throw.java meta.function.anonymous.parameters.java meta.parens.java
//                  ^^^^^^^^^ meta.throw.java meta.function.anonymous.java - meta.parens
//  ^^^^^ keyword.control.flow.throw.java
//        ^ punctuation.section.parens.begin.java
//         ^ variable.parameter.java
//          ^ punctuation.separator.comma.java
//            ^^^ storage.type.primitive.java
//                ^ variable.parameter.java
//                 ^ punctuation.section.parens.end.java
//                   ^^ storage.type.function.anonymous.java
//                      ^ variable.other.readwrite.java
//                        ^ keyword.operator.arithmetic.java
//                          ^ variable.other.readwrite.java
//                           ^ punctuation.terminator.java
  }
//^ meta.class.java meta.block.java meta.method.java meta.block.java punctuation.section.block.end.java
}


/******************************************************************************
 * Synchronized Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.19
 *****************************************************************************/

class SynchronizedStatementTests {

  synchronized
//^^^^^^^^^^^^^ meta.method.modifier.java
//^^^^^^^^^^^^ storage.modifier.java

  synchronized void synchronizedMethod() {
//^^^^^^^^^^^^^ meta.method.modifier.java
//             ^^^^^ meta.method.return-type.java
//                  ^^^^^^^^^^^^^^^^^^ meta.method.identifier.java
//                                    ^^ meta.method.parameters.java meta.parens.java
//                                      ^ meta.method.java
//                                       ^^ meta.method.java meta.block.java
//^^^^^^^^^^^^ storage.modifier.java
//             ^^^^ storage.type.void.java
//                  ^^^^^^^^^^^^^^^^^^ entity.name.function.java
//                                    ^ punctuation.section.parens.begin.java
//                                     ^ punctuation.section.parens.end.java
//                                       ^ punctuation.section.block.begin.java

    synchronized
// ^ - meta.synchronized - keyword
//  ^^^^^^^^^^^^^ meta.synchronized.java
//  ^^^^^^^^^^^^ keyword.control.flow.synchronized.java
//              ^ - keyword

    synchronized ()  ;
//^^^^^^^^^^^^^^^^^^^ meta.synchronized.java
//               ^^ meta.parens.java
//                   ^ - meta.synchronized
// ^ - keyword
//  ^^^^^^^^^^^^ keyword.control.flow.synchronized.java
//              ^ - keyword
//               ^ punctuation.section.parens.begin.java
//                ^ punctuation.section.parens.end.java
//                   ^ punctuation.terminator.java

    synchronized () {}
// ^ - meta.synchronized
//  ^^^^^^^^^^^^^^^^^^ meta.synchronized.java
//               ^^ meta.parens.java
//                  ^^ meta.block.java
//                    ^ - meta.synchronized
// ^ - keyword
//  ^^^^^^^^^^^^ keyword.control.flow.synchronized.java
//              ^ - keyword
//               ^ punctuation.section.parens.begin.java
//                ^ punctuation.section.parens.end.java
//                  ^ punctuation.section.block.begin.java
//                   ^ punctuation.section.block.end.java
  }
}


/******************************************************************************
 * Try Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.20
 *****************************************************************************/

class TryStatementTests {

  void run() {

    try
//  ^^^^ meta.try.java
//  ^^^ keyword.control.exception.try.java
    catch
//  ^^^^^^ meta.catch.java
//  ^^^^^ keyword.control.exception.catch.java
    finally
//  ^^^^^^^^ meta.finally.java
//  ^^^^^^^ keyword.control.exception.finally.java

    // ensure not to break highlighting even though braces are missing
    try foo() catch (Exception e) bar(e) finally baz()
//  ^^^^^^^^^^ meta.try.java - meta.try meta.try - meta.catch - meta.finally
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.catch meta.catch - meta.finally - meta.try
//            ^^^^^^ meta.catch.java - meta.parens
//                  ^^^^^^^^^^^^^ meta.catch.java meta.parens.java
//                               ^^^^ meta.catch.java - meta.parens
//                                   ^^^ meta.catch.java meta.parens.java
//                                      ^ meta.catch.java - meta.parens
//                                       ^^^^^^^^^^^^^ meta.finally.java - meta.finally meta.finally - meta.catch - meta.try
//  ^^^ keyword.control.exception.try.java
//      ^^^ variable.function.java
//            ^^^^^ keyword.control.exception.catch.java
//                                ^^^ variable.function.java
//                                       ^^^^^^^ keyword.control.exception.finally.java
//                                               ^^^ variable.function.java

    try { foo(); } catch (Exception e) { bar(e); } finally { baz(); }
//  ^^^^ meta.try.java - meta.try meta.block - meta.try meta.try
//      ^^^^^^^^^^ meta.try.java meta.block.java - meta.try meta.try
//                 ^^^^^^ meta.catch.java - meta.catch meta.catch
//                       ^^^^^^^^^^^^^ meta.catch.java meta.parens.java - meta.catch meta.catch
//                                    ^ meta.catch.java - meta.catch meta.catch
//                                     ^^^^^^^^^^^ meta.catch.java meta.block.java - meta.catch meta.catch
//                                                 ^^^^^^^^ meta.finally.java - meta.finally meta.finally
//                                                         ^^^^^^^^^^ meta.finally.java meta.block.java - meta.finally meta.finally
//  ^^^ keyword.control.exception.try.java
//        ^^^ variable.function.java
//                 ^^^^^ keyword.control.exception.catch.java
//                       ^ punctuation.section.parens.begin.java
//                        ^^^^^^^^^ support.class.java
//                                  ^ variable.parameter.java
//                                   ^ punctuation.section.parens.end.java
//                                     ^ punctuation.section.block.begin.java
//                                       ^^^ variable.function.java
//                                               ^ punctuation.section.block.end.java
//                                                 ^^^^^^^ keyword.control.exception.finally.java
//                                                         ^ punctuation.section.block.begin.java
//                                                           ^^^ variable.function.java
//                                                                  ^ punctuation.section.block.end.java

    try {
//  ^^^^ meta.block.java meta.try.java
//      ^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.block.begin.java
      foo();
    } catch (Exception e) {
//  ^ meta.try.java meta.block.java
//   ^ - meta.try - meta.catch - meta.finally
//    ^^^^^^ meta.catch.java - meta.catch meta.catch
//          ^^^^^^^^^^^^^ meta.catch.java meta.parens.java - meta.catch meta.catch
//                       ^ meta.catch.java - meta.catch meta.catch
//                        ^^ meta.catch.java meta.block.java - meta.catch meta.catch
//  ^ punctuation.section.block.end.java
//    ^^^^^ keyword.control.exception.catch.java
//          ^ punctuation.section.parens.begin.java
//           ^^^^^^^^^ support.class.java
//                     ^ variable.parameter.java
//                      ^ punctuation.section.parens.end.java
//                        ^ punctuation.section.block.begin.java
      bar(e);
    } finally {
//  ^ meta.catch.java meta.block.java
//   ^ - meta.try - meta.catch - meta.finally
//    ^^^^^^^^ meta.finally.java - meta.finally meta.finally
//            ^^ meta.finally.java meta.block.java - meta.finally meta.finally
//  ^ punctuation.section.block.end.java
//    ^^^^^^^ keyword.control.exception.finally.java
//            ^ punctuation.section.block.begin.java
      baz();
    }
//  ^ meta.finally.java meta.block.java punctuation.section.block.end.java
//   ^ - meta.try - meta.catch - meta.finally

    try (, , = , = null ; , =) {} catch ( | | ) {}
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.parens.java - meta.try meta.try
//                            ^ meta.try.java - meta.try meta.try - meta.parens
//                             ^^ meta.try.java meta.block.java
//                               ^ - meta.try
//                                ^^^^^^ meta.catch.java - meta.catch meta.parens
//                                      ^^^^^^^ meta.catch.java meta.parens.java
//                                             ^ meta.catch.java - meta.catch meta.parens - meta.catch meta.block
//                                              ^^ meta.catch.java meta.block.java
//                                                ^ - meta.catch
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.parens.begin.java
//       ^ punctuation.separator.sequence.java
//         ^ punctuation.separator.sequence.java
//           ^ keyword.operator.assignment.java
//             ^ punctuation.separator.sequence.java
//               ^ keyword.operator.assignment.java
//                 ^^^^ constant.language.null.java
//                      ^ punctuation.terminator.java
//                        ^ punctuation.separator.sequence.java
//                          ^ keyword.operator.assignment.java
//                           ^ punctuation.section.parens.end.java
//                             ^ punctuation.section.block.begin.java
//                              ^ punctuation.section.block.end.java
//                                ^^^^^ keyword.control.exception.catch.java
//                                      ^ punctuation.section.parens.begin.java
//                                        ^ punctuation.separator.pipe.java
//                                          ^ punctuation.separator.pipe.java
//                                            ^ punctuation.section.parens.end.java
//                                              ^ punctuation.section.block.begin.java
//                                               ^ punctuation.section.block.end.java

    try (foo = Bar.baz(path)) {}
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.parens.java - meta.try meta.try
//                           ^ meta.try.java - meta.try meta.try - meta.parens
//                            ^^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.parens.begin.java
//       ^^^ variable.other.readwrite.java
//           ^ keyword.operator.assignment.java
//             ^^^ support.class.java
//                ^ punctuation.accessor.dot.java
//                 ^^^ variable.function.java
//                    ^ punctuation.section.parens.begin.java
//                     ^^^^ variable.other.readwrite.java
//                         ^^ punctuation.section.parens.end.java
//                            ^ punctuation.section.block.begin.java
//                             ^ punctuation.section.block.end.java

    try (Stream<String> lines = Files.lines(path)) {
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.parens.java - meta.try meta.try
//                                                ^ meta.try.java - meta.try meta.try - meta.parens
//                                                 ^^ meta.try.java meta.block.java
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.parens.begin.java
//       ^^^^^^ support.class.java
//             ^ punctuation.definition.generic.begin.java
//              ^^^^^^ support.class.java
//                    ^ punctuation.definition.generic.end.java
//                      ^^^^^ variable.other.readwrite.java
//                            ^ keyword.operator.assignment.java
//                              ^^^^^ support.class.java
//                                   ^ punctuation.accessor.dot.java
//                                    ^^^^^ variable.function.java
//                                         ^ punctuation.section.parens.begin.java
//                                          ^^^^ variable.other.readwrite.java
//                                              ^^ punctuation.section.parens.end.java
//                                                 ^ punctuation.section.block.begin.java
      lines.forEach(System.out::println);
//                              ^^^^^^^ variable.function.reference.java

    } catch (IOException ignore) {
//^^^ meta.try.java meta.block.java
//   ^ - meta.try - meta.catch
//    ^^^^^^ meta.catch.java - meta.catch meta.catch
//          ^^^^^^^^^^^^^^^^^^^^ meta.catch.java meta.parens.java - meta.catch meta.catch
//                              ^ meta.catch.java - meta.catch meta.catch
//                               ^^ meta.catch.java meta.block.java
//  ^ punctuation.section.block.end.java
//    ^^^^^ keyword.control.exception.catch.java
//          ^ punctuation.section.parens.begin.java
//           ^^^^^^^^^^^ support.class.java
//                       ^^^^^^ variable.parameter.java
//                             ^ punctuation.section.parens.end.java
//                               ^ punctuation.section.block.begin.java
    } catch (final MyException | com.net.org.Foo.Bar |
//^^^ meta.catch.java meta.block.java
//   ^ - meta.catch
//    ^^^^^^ meta.catch.java - meta.catch meta.catch
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.catch.java meta.parens.java - meta.catch meta.catch
//    ^^^^^ keyword.control.exception.catch.java
//          ^ punctuation.section.parens.begin
//           ^^^^^ storage.modifier.java
//                 ^^^^^^^^^^^ support.class
//                             ^ punctuation.separator.pipe.java
//                               ^^^ variable.namespace.java
//                                  ^ punctuation.accessor.dot.java
//                                   ^^^ variable.namespace.java
//                                      ^ punctuation.accessor.dot.java
//                                       ^^^ variable.namespace.java
//                                          ^ punctuation.accessor.dot.java
//                                           ^^^ support.class.java
//                                              ^ punctuation.accessor.dot.java
//                                               ^^^ support.class.java
//                                                   ^ punctuation.separator.pipe.java
          YourException
//       ^^^^^^^^^^^^^^^ meta.catch.java meta.parens.java - meta.catch meta.catch
//        ^^^^^^^^^^^^^ support.class.java
          ignore) {}
//       ^^^^^^^ meta.catch.java meta.parens.java - meta.catch meta.catch
//               ^ meta.catch.java - meta.catch meta.catch
//                ^^ meta.catch.java meta.block.java
//        ^^^^^^ variable.parameter.java
//              ^ punctuation.section.parens.end.java
//                ^ punctuation.section.block.begin.java
//                 ^ punctuation.section.block.end.java

    try (final InputStream is = new FileInputStream(args[0]);
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.parens.java - meta.try meta.try
//  ^^^ keyword.control.exception.try.java
//      ^ punctuation.section.parens.begin.java
//       ^^^^^ storage.modifier.java
//             ^^^^^^^^^^^ support.class.java
//                         ^^ variable.other.readwrite.java
//                            ^ keyword.operator.assignment.java
//                              ^^^ keyword.other.storage.new.java
//                                  ^^^^^^^^^^^^^^^ support.class.java
//                                                 ^ punctuation.section.parens.begin.java
//                                                  ^^^^ variable.other.readwrite.java
//                                                      ^ punctuation.section.brackets.begin.java
//                                                       ^ constant.numeric.integer.decimal.java
//                                                        ^ punctuation.section.brackets.end.java
//                                                         ^ punctuation.section.parens.end.java
//                                                          ^ punctuation.terminator.java
         final OutputStream os = new FileOutputStream(args[1])) {
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.parens.java - meta.try meta.try
//                                                             ^ meta.try.java - meta.try meta.try - meta.parens
//                                                              ^^ meta.try.java meta.block.java
//       ^^^^^ storage.modifier.java
//             ^^^^^^^^^^^^ support.class.java
//                          ^^ variable.other.readwrite.java
//                             ^ keyword.operator.assignment.java
//                               ^^^ keyword.other.storage.new.java
//                                   ^^^^^^^^^^^^^^^^ support.class.java
//                                                   ^ punctuation.section.parens.begin.java
//                                                    ^^^^ variable.other.readwrite.java
//                                                        ^ punctuation.section.brackets.begin.java
//                                                         ^ constant.numeric.integer.decimal.java
//                                                          ^ punctuation.section.brackets.end.java
//                                                           ^^ punctuation.section.parens.end.java
//                                                              ^ punctuation.section.block.begin.java
    }
//  ^ meta.try.java meta.block.java punctuation.section.block.end.java
//   ^ - meta.try

    try (var in = new BufferedReader()) {
//  ^^^^ meta.try.java - meta.try meta.try
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.try.java meta.parens.java - meta.try meta.try
//                                     ^ meta.try.java - meta.try meta.try - meta.parens
//                                      ^^ meta.try.java meta.block.java
//       ^^^ storage.type.var.java
//           ^^ variable.other.readwrite.java
//              ^ keyword.operator.assignment.java
//                ^^^ keyword.other.storage.new.java
//                    ^^^^^^^^^^^^^^ support.class.java
        var line = in.readLine();
//      ^^^ storage.type.var.java
//          ^^^^ variable.other.readwrite.java
//               ^ keyword.operator.assignment.java
    }
//  ^ meta.try.java meta.block.java punctuation.section.block.end.java
//   ^ - meta.try
  }
}


/******************************************************************************
 * While Statement Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-14.html#jls-14.12
 *****************************************************************************/

class WhileStatementTests {

  void run() {

    while
//  ^^^^^^ meta.while.java
//  ^^^^^ keyword.control.loop.while.java

    while false
//  ^^^^^^^^^^^^ meta.while.java
//  ^^^^^ keyword.control.loop.while.java
//        ^^^^^ constant.language.boolean.java

    while (false)
//  ^^^^^^^^^^^^^^ - meta.while meta.while
//  ^^^^^^ meta.while.java - meta.parens
//        ^^^^^^^ meta.while.java meta.parens.java
//               ^ meta.while.java - meta.parens
//  ^^^^^ keyword.control.loop.while.java
//        ^ punctuation.section.parens.begin.java
//         ^^^^^ constant.language.boolean.java
//              ^ punctuation.section.parens.end.java

    while (false) {  }
//  ^^^^^^^^^^^^^^^^^^ - meta.while meta.while
//  ^^^^^^ meta.while.java - meta.parens
//        ^^^^^^^ meta.while.java meta.parens.java
//               ^ meta.while.java - meta.while.java meta.parens - meta.while.java meta.block
//                ^^^^ meta.while.java meta.block.java
//  ^^^^^ keyword.control.loop.while.java
//        ^ punctuation.section.parens.begin.java
//         ^^^^^ constant.language.boolean.java
//              ^ punctuation.section.parens.end.java
//                ^ punctuation.section.block.begin.java
//                   ^ punctuation.section.block.end.java

    while (false {  }
//  ^^^^^^^^^^^^^^^^^^ - meta.while meta.while
//  ^^^^^^ meta.while.java
//        ^^^^^^^ meta.while.java meta.parens.java
//               ^^^^ meta.while.java meta.block.java
//  ^^^^^ keyword.control.loop.while.java
//        ^ punctuation.section.parens.begin.java
//         ^^^^^ constant.language.boolean.java
//              ^ invalid.illegal.stray-terminator-end
//               ^ punctuation.section.block.begin.java
//                  ^ punctuation.section.block.end.java

  }
}


/******************************************************************************
 * Method Reference Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.13
 *****************************************************************************/

class MethodReferenceExpressionsTests {

  void run() {

    System::currentTimeMillis  // static method
//  ^^^^^^ support.class.java
//        ^^ punctuation.accessor.double-colon.java
//          ^^^^^^^^^^^^^^^^^ variable.function.reference.java

    List::size                 // inferred type arguments for generic type
//  ^^^^ support.class.java
//      ^^ punctuation.accessor.double-colon.java
//        ^^^^ variable.function.reference.java

    List<String>::size         // explicit type arguments for generic type
//  ^^^^ support.class.java
//      ^^^^^^^^ meta.generic.java
//              ^^ punctuation.accessor.double-colon.java
//                ^^^^ variable.function.reference.java

    int[]::clone
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^^^ variable.function.reference.java

    T::tvarMember
//  ^ support.class.java
//   ^^ punctuation.accessor.double-colon.java
//     ^^^^^^^^^^ variable.function.reference.java

    System.out::println
//  ^^^^^^ support.class.java
//        ^ punctuation.accessor.dot.java
//         ^^^ variable.other.readwrite.java
//            ^^ punctuation.accessor.double-colon.java
//              ^^^^^^^ variable.function.reference.java

    "abc"::length
//  ^^^^^ string.quoted.double.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^^^^ variable.function.reference.java

    foo[x]::bar
//  ^^^ meta.variable.identifier.java variable.other.readwrite.java
//     ^^^ meta.variable.item-access.java meta.brackets.java
//        ^^ punctuation.accessor.double-colon.java
//          ^^^ variable.function.reference.java

    (test ? list.replaceAll(String::trim) : list) :: iterator
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.java
//               ^^^^^^^^^^ meta.function-call.identifier.java
//                         ^^^^^^^^^^^^^^ meta.function-call.arguments.java meta.parens.java
//  ^ punctuation.section.parens.begin.java
//   ^^^^ variable.other.readwrite.java
//        ^ keyword.operator.ternary.java
//          ^^^^ variable.other.readwrite.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^^ variable.function.java
//                          ^^^^^^ support.class.java
//                                ^^ punctuation.accessor.double-colon.java
//                                  ^^^^ variable.function.reference.java
//                                        ^ keyword.operator.ternary.java
//                                          ^^^^ variable.other.readwrite.java
//                                              ^ punctuation.section.parens.end.java
//                                                ^^ punctuation.accessor.double-colon.java
//                                                   ^^^^^^^^ variable.function.reference.java

    super::toString
//  ^^^^^ variable.language.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^^^^^^ variable.function.reference.java

    Arrays::<String>sort       // explicit type arguments
//  ^^^^^^ support.class.java
//        ^^ punctuation.accessor.double-colon.java
//          ^^^^^^^^ meta.generic.java
//                  ^^^^ variable.function.reference.java

    ArrayList<String>::new     // constructor for parameterized type
//  ^^^^^^^^^ support.class.java
//           ^^^^^^^^ meta.generic.java
//                   ^^ punctuation.accessor.double-colon.java
//                     ^^^ keyword.other.storage.new.java

    ArrayList::new             // inferred type arguments for generic class
//  ^^^^^^^^^ support.class.java
//           ^^ punctuation.accessor.double-colon.java
//             ^^^ keyword.other.storage.new.java

    Foo::<Integer>new          // explicit type arguments for generic constructor
//  ^^^ support.class.java
//     ^^ punctuation.accessor.double-colon.java
//       ^^^^^^^^^ meta.generic.java
//                ^^^ keyword.other.storage.new.java

    Bar<String>::<Integer>new  // generic class, generic constructor
//  ^^^ support.class.java
//     ^^^^^^^^ meta.generic.java
//             ^^ punctuation.accessor.double-colon.java
//               ^^^^^^^^^ meta.generic.java
//                        ^^^ keyword.other.storage.new.java

    Outer.Inner::new           // inner class constructor
//  ^^^^^ support.class.java
//       ^ punctuation.accessor.dot.java
//        ^^^^^ support.class.java
//             ^^ punctuation.accessor.double-colon.java
//               ^^^ keyword.other.storage.new.java
    int[]::new                 // array creation
//  ^^^ storage.type.primitive.java
//     ^^ storage.modifier.array.java
//       ^^ punctuation.accessor.double-colon.java
//         ^^^ keyword.other.storage.new.java
  }
}


/******************************************************************************
 * Lambda Expressions Tests
 * https://docs.oracle.com/javase/specs/jls/se13/html/jls-15.html#jls-15.27
 *****************************************************************************/

class LambdasExpressionsTests {

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
//        ^^^^^^^^^^^^^^ meta.function.anonymous.java

     (a, b) -> 42;
//    ^ variable.parameter.java
//       ^ variable.parameter.java
//          ^^ storage.type.function.anonymous.java
//             ^^ constant.numeric.integer.decimal.java

     (int a, Foo<Integer>[] b) -> 42;
//   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.parameters.java meta.parens.java - meta.function meta.function
//                            ^^^ meta.function.anonymous.java - meta.function meta.function
//                               ^^^ meta.function.anonymous.java - meta.function meta.function
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
//  ^^^ meta.function.anonymous.java - meta.function meta.function
//   ^^ constant.numeric.integer
//     ^ punctuation.terminator.java

  }
//^ meta.class.java meta.block.java meta.method.java meta.block.java punctuation.section.block.end.java

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

  Function<String, String> lambda4 = (var foo) -> foo;
//                                   ^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ storage.type.var.java
//                                        ^^^ variable.parameter.java
//                                             ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda5 = (foo) -> foo;
//                                   ^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                         ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda5 = (foo = 0) -> foo;
//                                   ^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                        ^ invalid.illegal.expect-terminator.java
//                                          ^ invalid.illegal.expect-terminator.java
//                                             ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda6 = (foo, foo) -> foo;
//                                   ^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.parameter.java
//                                              ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda7 = (Foo, Foo) -> foo;
//                                   ^^^^^^^^^^ meta.function.anonymous.parameters.java
//                                    ^^^ variable.parameter.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.parameter.java
//                                              ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String, String> lambda8 = foo -> foo;
//                                   ^^^ meta.function.anonymous.parameters.java
//                                   ^^^ variable.parameter.java
//                                       ^^ storage.type.function.anonymous.java - meta.function.anonymous.parameters.java

  Function<String[], String> lambda9 = (String... foo) -> foo[0];
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

  MyObject objLambda = arg -> new MyObject(arg);
//                     ^^^ meta.function.anonymous.parameters.java variable.parameter.java
//                        ^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.java
//                         ^^ storage.type.function.anonymous.java
//                            ^^^ keyword.other.storage.new.java
//                                ^^^^^^^^ support.class.java
//                                        ^ punctuation.section.parens.begin.java
//                                        ^^^^^ meta.parens.java
//                                         ^^^ variable.other.readwrite.java
//                                            ^ punctuation.section.parens.end.java
//                                             ^ punctuation.terminator.java

  Function<Foo, Bar> BLOCK_LAMBDA = foo -> { return 1; };
//                   ^^^^^^^^^^^^ entity.name.constant.java
//                                ^ keyword.operator.assignment.java
//                                  ^^^ variable.parameter.java
//                                      ^^ storage.type.function.anonymous.java
//                                         ^ meta.block punctuation.section.block.begin
//                                           ^^^^^^ keyword.control.flow.return.java
//                                                  ^ constant.numeric.integer.decimal.java
//                                                   ^ punctuation.terminator.java
//                                                     ^ punctuation.section.block.end.java
//                                                      ^ punctuation.terminator.java

  Supplier<Foo> supplier = () -> true;
//                       ^ keyword.operator.assignment.java
//                         ^ punctuation.section.parens.begin.java
//                          ^ punctuation.section.parens.end.java
//                            ^^ storage.type.function.anonymous.java
//                               ^^^^ constant.language.boolean.java
//                                   ^ punctuation.terminator.java
}


/******************************************************************************
 * Annotation Tests
 *****************************************************************************/

@ClassName.FixMethodOrder( MethodSorters.NAME_ASCENDING )
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java - meta.annotation meta.annotation
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java - meta.annotation meta.annotation
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.parameters.java meta.parens.java - meta.annotation meta.annotation
//^^^^^^^^ variable.annotation.namespace.java
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

@MultiLineAnnotation(
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java variable.annotation.java
//                  ^ meta.class.java meta.annotation.parameters.java punctuation.section.parens.begin.java
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
// <- meta.class.java meta.annotation.parameters.java punctuation.section.parens.end.java
@fully.qualified.Annotation
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.namespace.java
//              ^ punctuation.accessor.dot.java
//                ^^^^^^^^^ variable.annotation.java
@fully.qualified.ParentClass.InnerAnnotation
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
//^^^^ variable.annotation.namespace.java
//    ^ punctuation.accessor.dot.java
//     ^^^^^^^^^ variable.annotation.namespace.java
//              ^ punctuation.accessor.dot.java
//               ^^^^^^^^^^^ variable.annotation.namespace.java
//                          ^ punctuation.accessor.dot.java
//                           ^^^^^^^^^^^^^^^ variable.annotation.java
@fully.qualified
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
    .multiline.Annotation
//  ^^^^^^^^^^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java meta.path.java
        (foo = "bar")
//      ^^^^^^^^^^^^^ meta.class.java meta.annotation.parameters.java -meta.annotation.identifier.java
@FancyAnnotation({
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//              ^^ meta.class.java meta.annotation.parameters.java
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
 // <- meta.class.java meta.annotation.parameters.java punctuation.section.parens.end.java
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
// <- meta.class.java meta.annotation.identifier.java punctuation.definition.annotation.java
//^^^^^^^^^^^^ meta.class.java meta.annotation.identifier.java variable.annotation.java
public class Foo {
// <- meta.class.java storage.modifier.java
//^^^^ meta.class.java storage.modifier.java
//     ^^^^^ meta.class.java storage.type.class.java
//           ^^^ meta.class.identifier.java entity.name.class.java
//               ^ meta.class.java meta.block.java punctuation.section.block.begin.java

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
//^ meta.method.java punctuation.section.block.end.java


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
//                                                       ^ meta.method.java punctuation.section.block.begin.java

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
//^ meta.method.java punctuation.section.block.end.java
}}
// <- meta.class.java punctuation.section.block.end.java
 //<- invalid.illegal.stray-brace-end

public class Bar {
  public void missingSemiColon() {
    boolean foo = foo
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

  public void strayParansInConstructor() {
//^^^^^^ meta.class.java storage.modifier.java
//            ^ meta.method.identifier.java entity.name.function.java
//                                       ^ punctuation.section.block.begin.java
    return;
  }

  private boolean missingSemiColonForStaticAssignmentPackageProtected = true

  void strayParansInConstructor() {
//^^^^ storage.type.void.java
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
//              ^ meta.namespace.module.identifier - meta.path
//               ^^ meta.namespace.module.java meta.block.java
//^^^^ storage.type.namespace.module.java keyword.declaration.namespace.module.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java - entity - variable
//          ^^^^ entity.name.namespace.module.java
//               ^ punctuation.section.block.begin.java
  exports java;
//^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.exports.java
//            ^ meta.namespace.module.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^^ entity.name.namespace.package.java
//            ^ punctuation.terminator.java

  exports java.io;
//^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.exports.java
//        ^^^^^^^ meta.path.java
//               ^ meta.namespace.module.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^^ variable.namespace.java
//            ^ punctuation.accessor.dot.java - entity - variable
//             ^^ entity.name.namespace.package.java
//               ^ punctuation.terminator.java

  exports jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.exports.java
//        ^^^^^^^^^^^^^^^^^ meta.path.java
//                             ^^^^^^^^^^^^ meta.path.java
//                                           ^^^^^^^^^ meta.path.java
//                                                    ^ meta.namespace.module.java meta.block.java - meta.exports
//^^^^^^^ keyword.other.module.exports.java
//        ^^^ variable.namespace.java
//           ^ punctuation.accessor.dot.java - entity - variable
//            ^^^^^^^^ variable.namespace.java
//                    ^ punctuation.accessor.dot.java - entity - variable
//                     ^^^^ entity.name.namespace.package.java
//                          ^^ keyword.other.module.to.java
//                             ^^^ variable.namespace.java
//                                ^ punctuation.accessor.dot.java - entity - variable
//                                 ^^^^^^^^ entity.name.namespace.module.java
//                                         ^ punctuation.separator.comma.java
//                                           ^^^ variable.namespace.java
//                                              ^ punctuation.accessor.dot.java - entity - variable
//                                               ^^^^^ entity.name.namespace.module.java
//                                                    ^ punctuation.terminator.java

  opens java.io;
//^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.opens.java
//             ^ meta.namespace.module.java meta.block.java - meta.opens
//^^^^^ keyword.other.module.opens.java
//      ^^^^  variable.namespace.java
//          ^ punctuation.accessor.dot.java - entity - variable
//           ^^ entity.name.namespace.package.java
//             ^ punctuation.terminator.java

  opens jdk.internal.jmod to jdk.compiler, jdk.jlink;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.opens.java
//                                                  ^ meta.namespace.module.java meta.block.java - meta.opens
//                        ^^ keyword.other.module.to.java
//                           ^^^ variable.namespace.java
//                              ^ punctuation.accessor.dot.java - entity - variable
//                               ^^^^^^^^ entity.name.namespace.module.java
//                                       ^ punctuation.separator.comma.java
//                                         ^^^ variable.namespace.java
//                                            ^ punctuation.accessor.dot.java - entity - variable
//                                             ^^^^^ entity.name.namespace.module.java
//                                                  ^ punctuation.terminator.java

  opens // incomplete to check if it affects the next statement

  uses java.security.Provider;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.uses.java
//^^^^ keyword.other.module.uses.java
//     ^^^^^^^^^^^^^^^^^^^^^^ meta.path.java
//     ^^^^ variable.namespace.java
//         ^ punctuation.accessor.dot.java - entity - variable
//          ^^^^^^^^ variable.namespace.java
//                  ^ punctuation.accessor.dot.java - entity - variable
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
//^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.requires.java
//                 ^ meta.namespace.module.java meta.block.java - meta.requires
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^ variable.namespace.java
//             ^ punctuation.accessor.dot.java - entity - variable
//              ^^^ entity.name.namespace.module.java
//                 ^ punctuation.terminator.java

  requires transitive javafx.base;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.module.java meta.block.java meta.requires.java
//                               ^ meta.namespace.module.java meta.block.java - meta.requires
//^^^^^^^^ keyword.other.module.requires.java
//         ^^^^^^^^^^ keyword.other.module.transitive.java
//                    ^^^^^^ variable.namespace.java
//                          ^ punctuation.accessor.dot.java - entity - variable
//                           ^^^^ entity.name.namespace.module.java
//                               ^ punctuation.terminator.java

}
//<- meta.namespace.module.java meta.block.java punctuation.section.block.end.java

open module open.module {}
//^^^^^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
//         ^ meta.namespace.module.identifier.java - meta.path
//          ^^^^^^^^^^^ meta.namespace.module.identifier.java meta.path.java
//                     ^ meta.namespace.module.identifier.java - meta.path
//                      ^^ meta.namespace.module.java meta.block.java
//^^ storage.modifier.java
//   ^^^^^^ storage.type.namespace.module.java keyword.declaration.namespace.module.java
//          ^^^^ variable.namespace.java
//              ^ punctuation.accessor.dot.java - entity - variable
//               ^^^^^^ entity.name.namespace.module.java
//                      ^ punctuation.section.block.begin.java
//                       ^ punctuation.section.block.end.java

open module
//^^^^^^^^^ meta.namespace.module.java - meta.namespace.module.identifier
    open
//  ^^^^ meta.namespace.module.identifier.java meta.path.java variable.namespace.java
    .
//  ^ meta.namespace.module.identifier.java meta.path.java punctuation.accessor.dot.java - entity - variable
    module
//  ^^^^^^ meta.namespace.module.identifier.java meta.path.java entity.name.namespace.module.java
    {
//  ^ meta.namespace.module.java meta.block.java punctuation.section.block.begin.java
    }
//  ^ meta.namespace.module.java meta.block.java punctuation.section.block.end.java
