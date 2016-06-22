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
//  ^^^ entity.name.function.scala
//      ^ variable.parameter
//         ^^^ storage.type.primitive.scala
//                 ^^^ entity.name.class
//                       ^^^ entity.name.class
//                             ^^ constant.numeric.scala

   def +(a: Int)
// ^^^ keyword.declaration.scala
//     ^ entity.name.function.scala

   def `this is a test`(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^^^^^^^^^^ entity.name.function.scala

   def ::(a: Int)
// ^^^ keyword.declaration.scala
//     ^^ entity.name.function.scala

   def foo_+(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^ entity.name.function.scala

   def foo_2(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^ entity.name.function.scala

   def foo42_+(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^ entity.name.function.scala

   def __many_underscores__+(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.scala

   def foo42_+_abc(a: Int)
// ^^^ keyword.declaration.scala
//     ^^^^^^^ entity.name.function.scala
//            ^^^^ - entity.name.function

   def +_foo()
//      ^^^^ - entity.name.function

   def foo[A]
// ^^^ keyword.declaration.scala
//     ^^^ entity.name.function.scala
//         ^ entity.name.class

   def foo(implicit bar: Int): Unit
//         ^^^^^^^^ storage.modifier.other

   val foo: Unit
// ^^^ keyword.declaration.stable.scala
//     ^^^ entity.name.parameter
//          ^^^^ storage.type.primitive.scala

   var foo: Unit
// ^^^ keyword.declaration.volatile.scala
//     ^^^ entity.name.var.declaration variable.parameter
//          ^^^^ storage.type.primitive.scala

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

   do
// ^^ keyword.control.flow.scala

   while
// ^^^^^ keyword.control.flow.scala

   for
// ^^^ keyword.control.flow.scala

   yield
// ^^^^^ keyword.control.flow.scala

   match
// ^^^^^ keyword.control.flow.scala

   case =>
// ^^^^ keyword.declaration.scala

   macro
// ^^^^^ keyword.scala

   type
// ^^^^ keyword.declaration.scala

   return
// ^^^^^^ keyword.control.flow.jump.scala

   throw
// ^^^^^ keyword.control.flow.jump.scala

   catch
// ^^^^^ keyword.control.exception.scala

   finally
// ^^^^^^^ keyword.control.exception.scala

   ???
// ^^^ keyword.scala

   try
// ^^^ keyword.control.exception.scala

   forSome
// ^^^^^^^ keyword.declaration.scala

   new
// ^^^ keyword.scala

   extends
// ^^^^^^^ keyword.declaration.scala

   with
// ^^^^ keyword.declaration.scala

   class
// ^^^^^ keyword.declaration.scala

   trait
// ^^^^^ keyword.declaration.scala

   object
// ^^^^^^ keyword.declaration.scala

   def
// ^^^ keyword.declaration.scala

   val
// ^^^ keyword.declaration.stable.scala

   var
// ^^^ keyword.declaration.volatile.scala

   import
// ^^^^^^ keyword.other.import.scala

   package
// ^^^^^^^ keyword.other.scoping.scala

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

   case (abc: Foo, cba @ _) =>
// ^^^^ keyword.declaration.scala
//       ^^^ entity.name.parameter variable.parameter
//            ^^^ entity.name.class
//                 ^^^ entity.name variable.parameter
//                       ^ keyword

   case abc @ `abc` =>
//      ^^^ entity.name variable.parameter
//          ^ keyword
//            ^^^^^ source.scala

   case foo: (Int => Boolean) :: _ =>
//                               ^ keyword

   case /* testing */ =>
//      ^^^^^^^^^^^^^ comment.block.scala

   case // testing
//      ^^^^^^^^^^ comment.line.double-slash.scala
   =>

   case 42 =>
//      ^^ constant.numeric.scala

   case 'a' =>
//      ^^^ constant.character.literal.scala

   case 'foo =>
//      ^^^^ constant.other.symbol

   case "foo" =>
//      ^^^^^ string.quoted.double.scala

   case """foo""" =>
//      ^^^^^^^^^ string.quoted.triple.scala

   case q"""..$foo""" =>
//      ^^^^^^ string.quoted.triple.interpolated.scala
//            ^^^^ variable.parameter
//                ^^^ string.quoted.triple.interpolated.scala

   case <foo/> =>
//      ^^^^^^ text.xml
//       ^^^ entity.name.tag

   case Nil =>
//      ^^^ constant.language.scala

   case _ ⇒ _
//          ^ source.scala

   case _ if stuff =>
//        ^^ keyword.control.flow.scala
//           ^^^^^ source.scala

   val abc @ `abc`
// ^^^ keyword.declaration.stable.scala
//     ^^^ entity.name variable.parameter
//         ^ keyword
//           ^^^^^ source.scala

   _
// ^ source.scala

   val ble @ `abc` = _
// ^^^ keyword.declaration.stable.scala
//     ^^^ entity.name variable.parameter
//         ^ keyword
//           ^^^^^ source.scala
//                   ^ source.scala

   case object Thingy extends Other
// ^^^^ keyword.declaration.scala
//      ^^^^^^ keyword.declaration.scala
//             ^^^^^^ entity.name.class.declaration
//                    ^^^^^^^ keyword.declaration.scala
//                            ^^^^^ entity.other.inherited-class.scala

   case class
// ^^^^ keyword.declaration.scala
//      ^^^^^ keyword.declaration.scala

=>     // this is here to act as a random terminator to the above partial syntax

   case class Thingy(abc: Int) extends Other
// ^^^^ keyword.declaration.scala
//      ^^^^^ keyword.declaration.scala
//            ^^^^^^ entity.name.class.declaration
//                   ^^^ variable.parameter
//                             ^^^^^^^ keyword.declaration.scala
//                                     ^^^^^ entity.other.inherited-class.scala
//

   for {
// ^^^ keyword.control.flow.scala

     a <- _
//   ^ entity.name.parameter variable.parameter
//        ^ source.scala

     a ← _
//   ^ entity.name.parameter variable.parameter
//       ^ source.scala

     (b, c @ _) <- _
//    ^ entity.name.parameter variable.parameter
//       ^ entity.name.parameter variable.parameter
//         ^ keyword
//           ^ keyword
//                 ^ source.scala
       _
//     ^ source.scala

     testing = _
//   ^^^^^^^ entity.name.parameter variable.parameter
//             ^ source.scala

     testing = {
//   ^^^^^^^ entity.name.parameter variable.parameter
       testing = false
//     ^^^^^^^ source.scala
     }

     testing = (
//   ^^^^^^^ entity.name.parameter variable.parameter
       testing = false
//     ^^^^^^^ source.scala
     )

     val testing = 42
//   ^^^ keyword.declaration.stable.scala
//       ^^^^^^^ entity.name.parameter variable.parameter
   } _
//   ^ source.scala

   for (a <- _; (b, c @ _) ← _; val abc = _) _
// ^^^ keyword.control.flow.scala
//      ^ entity.name.parameter variable.parameter
//           ^ source.scala
//               ^ entity.name.parameter variable.parameter
//                  ^ entity.name.parameter variable.parameter
//                    ^ keyword
//                      ^ keyword
//                           ^ source.scala
//                              ^^^ keyword.declaration.stable.scala
//                                  ^^^ entity.name.parameter variable.parameter
//                                        ^ source.scala
//                                           ^ source.scala

   for {
     sss <- { {} }
//   ^^^ entity.name.parameter variable.parameter
     qqq <- stuff
//   ^^^ entity.name.parameter variable.parameter
   }