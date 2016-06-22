// SYNTAX TEST "Packages/Scala/Scala.sublime-syntax"
// <- source.scala comment.line.double-slash.scala

package fubar
// ^^^^ keyword.other.scoping
//      ^^^^^ entity.name.package.scala

import fubar.{Unit, Foo}
// ^^^ keyword.other.import
// <- meta.import.scala
//     ^^^^^ variable.package.scala
//            ^^^^ variable.import.scala

def foo(a: Int, b: Bar): Baz = 42
//^ keyword.declaration.scala
//  ^^^ entity.name.function.declaration
//      ^ variable.parameter
//         ^^^ storage.type.primitive.scala
//                 ^^^ entity.name.class
//                       ^^^ entity.name.class
//                             ^^ constant.numeric.scala

   def +(a: Int)
// ^^^ keyword.declaration.scala
//     ^ entity.name.function.declaration

   def `this is a test`(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^^^^^^^^^^ entity.name.function.declaration

   def ::(a: Int)
// ^^^ keyword.declaration.scala
//     ^^ entity.name.function.declaration

   def foo_+(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^ entity.name.function.declaration

   def foo_2(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^ entity.name.function.declaration

   def foo42_+(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^ entity.name.function.declaration

   def __many_underscores__+(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.declaration

   def foo42_+_abc(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^ entity.name.function.declaration
//            ^^^^ - entity.name.function

   def +_foo()
//      ^^^^ - entity.name.function

   def foo[A]
// ^^^ keyword.declaration.scala
//     ^^^ entity.name.function.declaration
//         ^ entity.name.class

   def foo(implicit bar: Int): Unit
//         ^^^^^^^^ storage.modifier.other

val foo: Unit
//^ keyword.declaration.stable.scala
//  ^^^ entity.name.val.declaration
//       ^^^^ storage.type.primitive.scala

var foo: Unit
//^ keyword.declaration.volatile.scala
//  ^^^ entity.name.val.declaration
//       ^^^^ storage.type.primitive.scala

class Foo[A](a: Bar) extends Baz with Bin
// ^^ keyword.declaration.scala
//    ^^^ entity.name.class
//        ^ entity.name.class
//           ^ variable.parameter
//              ^^^ entity.name.class
//                   ^^^^^^^ keyword.declaration.scala
//                           ^^^ entity.other.inherited-class.scala
//                               ^^^^ keyword.declaration.scala
//                                    ^^^ entity.other.inherited-class.scala

   class Foo private[this] (a: Int)(b: String)
//           ^^^^^^^ storage.modifier.access
//                   ^^^^ variable.language.scala
//                          ^ variable.parameter
//                                  ^ variable.parameter

trait Foo
// ^^ keyword.declaration.scala
//    ^^^ entity.name.class

object Foo
// ^^^ keyword.declaration.scala
//     ^^^ entity.name.class

   42
// ^^ constant.numeric.scala

   42D
// ^^^ constant.numeric.scala

   42d
// ^^^ constant.numeric.scala

   42F
// ^^^ constant.numeric.scala

   42f
// ^^^ constant.numeric.scala

   42L
// ^^^ constant.numeric.scala

   42l
// ^^^ constant.numeric.scala

   true
// ^^^^ constant.language.scala

   false
// ^^^^^ constant.language.scala

   null
// ^^^^ constant.language.scala

   Nil
// ^^^ constant.language.scala

   None
// ^^^^ constant.language.scala

   this
// ^^^^ variable.language.scala

   super
// ^^^^^ variable.language.scala

   "testing"
// ^^^^^^^^^ string.quoted.double.scala

   """testing"""
// ^^^^^^^^^^^^^ string.quoted.triple.scala

   s"testing $a ${42}"
// ^^^^^^^^^ string.quoted.interpolated.scala
//           ^^ variable.parameter
//              ^^ variable.parameter
//                ^^ constant.numeric.scala
//                  ^ variable.parameter

   s"""testing $a ${42}"""
// ^^^^^^^^^^^ string.quoted.triple.interpolated.scala
//             ^^ variable.parameter
//                ^^ variable.parameter
//                  ^^ constant.numeric.scala
//                    ^ variable.parameter
//                     ^^^ string.quoted.triple.interpolated.scala

   Unit
// ^^^^ storage.type.primitive.scala

   Byte
// ^^^^ storage.type.primitive.scala

   Short
// ^^^^^ storage.type.primitive.scala

   Int
// ^^^ storage.type.primitive.scala

   Long
// ^^^^ storage.type.primitive.scala

   Float
// ^^^^^ storage.type.primitive.scala

   Double
// ^^^^^^ storage.type.primitive.scala

   Boolean
// ^^^^^^^ storage.type.primitive.scala

   String
// ^^^^^^ entity.name.class

   // this is a comment
// ^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.scala

/*
// <- comment.block.scala
*/

/**
// <- comment.block.documentation.scala
*/

   if
// ^^ keyword.control.flow.scala

   else
// ^^^^ keyword.control.flow.scala

   while
// ^^^^^ keyword.control.flow.scala

   for
// ^^^ keyword.control.flow.scala

   yield
// ^^^^^ keyword.control.flow.scala

   match
// ^^^^^ keyword.control.flow.scala

   case
// ^^^^ keyword.control.flow.scala

   return
// ^^^^^^ keyword.control.flow.jump.scala

   throw
// ^^^^^ keyword.control.flow.jump.scala

   catch
// ^^^^^ keyword.control.exception.scala

   finally
// ^^^^^^^ keyword.control.exception.scala

   try
// ^^^ keyword.control.exception.scala

   private
// ^^^^^^^ storage.modifier.access

   protected
// ^^^^^^^^^ storage.modifier.access

   abstract
// ^^^^^^^^ storage.modifier.other

   final
// ^^^^^ storage.modifier.other

   lazy
// ^^^^ storage.modifier.other

   sealed
// ^^^^^^ storage.modifier.other

   implicit
// ^^^^^^^^ storage.modifier.other

   override
// ^^^^^^^^ storage.modifier.other

   ({ type λ[α] = Foo[α] })#λ
// ^^^^^^^^^^^^^^ comment.block.scala
//                ^^^ entity.name.class
//                    ^ comment.block.empty.scala
//                       ^^^^ comment.block.scala

   ({ type λ[α, β] = Foo[α, β] })#λ
// ^^^^^^^^^^^^^^^^^ comment.block.scala
//                   ^^^ entity.name.class
//                       ^ comment.block.empty.scala
//                          ^ comment.block.empty.scala
//                             ^^^^ comment.block.scala

   a :: b :: Nil
// ^^^^^^^^^ source.scala
//           ^^^ constant.language.scala

  (a :: b :: Nil)
// ^^^^^^^^^ source.scala
//           ^^^ constant.language.scala

   a: Int
// ^^ source.scala
//    ^^^ storage.type.primitive.scala

  (a: Int)
// ^ source.scala
//    ^^^ storage.type.primitive.scala
