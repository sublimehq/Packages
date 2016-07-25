// SYNTAX TEST "Packages/Scala/Scala.sublime-syntax"
// <- source.scala comment.line.double-slash.scala

package fubar
// ^^^^ keyword.control
//      ^^^^^ entity.name.namespace.scala

import fubar.{Unit, Foo}
// ^^^ keyword.other.import
// <- meta.import.scala
//     ^^^^^ variable.package.scala
//            ^^^^ variable.import.scala

def foo(a: Int, b: Bar): Baz = 42
//^ keyword.control.def.scala
//  ^^^ entity.name.function.scala
//      ^ variable.parameter
//         ^^^ storage.type.primitive.scala
//                 ^^^ support.class
//                       ^^^ support.class
//                             ^^ constant.numeric.scala

   def +(a: Int)
// ^^^ keyword.control.def.scala
//     ^ entity.name.function.scala

   def `this is a test`(a: Int)
// ^^^ keyword.control.def.scala
//     ^^^^^^^^^^^^^^^^ entity.name.function.scala

   def ::(a: Int)
// ^^^ keyword.control.def.scala
//     ^^ entity.name.function.scala

   def foo_+(a: Int)
// ^^^ keyword.control.def.scala
//     ^^^^^ entity.name.function.scala

   def foo_2(a: Int)
// ^^^ keyword.control.def.scala
//     ^^^^^ entity.name.function.scala

   def foo42_+(a: Int)
// ^^^ keyword.control.def.scala
//     ^^^^^^^ entity.name.function.scala

   def __many_underscores__+(a: Int)
// ^^^ keyword.control.def.scala
//     ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.scala

   def foo42_+_abc(a: Int)
// ^^^ keyword.control.def.scala
//     ^^^^^^^ entity.name.function.scala
//            ^^^^ - entity.name.function

   def +_foo()
//      ^^^^ - entity.name.function

   def foo[A]
// ^^^ keyword.control.def.scala
//     ^^^ entity.name.function.scala
//         ^ support.class

   def foo(implicit bar: Int): Unit
//         ^^^^^^^^ storage.modifier.other

   val foo: Unit
// ^^^ keyword.control.stable.scala
//     ^^^ entity.name.parameter
//          ^^^^ storage.type.primitive.scala

   var foo: Unit
// ^^^ keyword.control.volatile.scala
//     ^^^ entity.name.var
//          ^^^^ storage.type.primitive.scala

class Foo[A](a: Bar) extends Baz with Bin
// ^^ keyword.control.class.scala
//    ^^^ entity.name.class
//        ^ support.class
//           ^ variable.parameter
//              ^^^ support.class
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
// ^^ keyword.control.class.scala
//    ^^^ entity.name.class

object Foo
// ^^^ keyword.control.class.scala
//     ^^^ entity.name.class

   type Foo = Bar
// ^^^^ keyword.control.type.scala
//      ^^^ entity.name.type.scala
//            ^^^ support.class.scala

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
// ^ support.function
//           ^^ variable.other
//              ^^ punctuation.definition.expression
//                ^^ constant.numeric.scala
//                  ^ punctuation.definition.expression

   s"""testing $a ${42}"""
// ^^^^^^^^^^^ string.quoted.triple.interpolated.scala
// ^ support.function
//             ^^ variable.other
//                ^^ punctuation.definition.expression
//                  ^^ constant.numeric.scala
//                    ^ punctuation.definition.expression
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
// ^^^^^^ support.class

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
// ^^^^ keyword.other.declaration.scala

   macro
// ^^^^^ keyword.other.scala

   type
// ^^^^ keyword.control.type.scala

   return
// ^^^^^^ keyword.control.flow.jump.scala

   throw
// ^^^^^ keyword.control.flow.jump.scala

   catch
// ^^^^^ keyword.control.exception.scala

   finally
// ^^^^^^^ keyword.control.exception.scala

   ???
// ^^^ keyword.other.scala

   try
// ^^^ keyword.control.exception.scala

   forSome
// ^^^^^^^ keyword.declaration.scala

   new
// ^^^ keyword.other.scala

   extends
// ^^^^^^^ keyword.declaration.scala

   with
// ^^^^ keyword.declaration.scala

   class
// ^^^^^ keyword.control.class.scala

   trait
// ^^^^^ keyword.control.class.scala

   object
// ^^^^^^ keyword.control.class.scala

   def
// ^^^ keyword.control.def.scala

   val
// ^^^ keyword.control.stable.scala

   var
// ^^^ keyword.control.volatile.scala

   import
// ^^^^^^ keyword.other.import.scala

   package
// ^^^^^^^ keyword.control.scala

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
//                ^^^ support.class
//                    ^ comment.block.empty.scala
//                       ^^^^ comment.block.scala

   ({ type λ[α, β] = Foo[α, β] })#λ
// ^^^^^^^^^^^^^^^^^ comment.block.scala
//                   ^^^ support.class
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
// ^^^^ keyword.other.declaration.scala
//       ^^^ entity.name.parameter
//            ^^^ support.class
//                 ^^^ entity.name.parameter
//                       ^ keyword

   case abc @ `abc` =>
//      ^^^ entity.name.parameter
//          ^ keyword
//            ^^^^^ - entity.name

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
//            ^^^^ variable.other
//                ^^^ string.quoted.triple.interpolated.scala

   case <foo/> =>
//      ^^^^^^ text.xml
//       ^^^ entity.name.tag

   case Nil =>
//      ^^^ constant.language.scala

   case _ ⇒ _
//          ^ - keyword

   case _ if stuff =>
//        ^^ keyword.control.flow.scala
//           ^^^^^ - entity.name

   val abc @ `abc`
// ^^^ keyword.control.stable.scala
//     ^^^ entity.name.parameter
//         ^ keyword
//           ^^^^^ - entity.name

   _
// ^ - keyword

   val ble @ `abc` = _
// ^^^ keyword.control.stable.scala
//     ^^^ entity.name.parameter
//         ^ keyword
//           ^^^^^ - entity.name
//                   ^ - keyword

   case object Thingy extends Other
// ^^^^ keyword.other.declaration.scala
//      ^^^^^^ keyword.control.class.scala
//             ^^^^^^ entity.name.class.scala
//                    ^^^^^^^ keyword.declaration.scala
//                            ^^^^^ entity.other.inherited-class.scala

   case class
// ^^^^ keyword.other.declaration.scala
//      ^^^^^ keyword.control.class.scala

=>     // this is here to act as a random terminator to the above partial syntax

   case class Thingy(abc: Int) extends Other
// ^^^^ keyword.other.declaration.scala
//      ^^^^^ keyword.control.class.scala
//            ^^^^^^ entity.name.class.scala
//                   ^^^ variable.parameter
//                             ^^^^^^^ keyword.declaration.scala
//                                     ^^^^^ entity.other.inherited-class.scala
//

   for {
// ^^^ keyword.control.flow.scala

     a <- _
//   ^ entity.name.parameter
//        ^ - keyword

     a ← _
//   ^ entity.name.parameter
//       ^ - entity.name

     (b, c @ _) <- _
//    ^ entity.name.parameter
//       ^ entity.name.parameter
//         ^ keyword
//           ^ keyword
//                 ^ - keyword
       _
//     ^ - entity.name

     testing = _
//   ^^^^^^^ entity.name.parameter
//             ^ - keyword

     testing = {
//   ^^^^^^^ entity.name.parameter
       testing = false
//     ^^^^^^^ - entity.name
     }

     testing = (
//   ^^^^^^^ entity.name.parameter
       testing = false
//     ^^^^^^^ - entity.name
     )

     val testing = 42
//   ^^^ keyword.declaration.stable.scala
//       ^^^^^^^ entity.name.parameter
   } _
//   ^ - entity.name

   for (a <- _; (b, c @ _) ← _; val abc = _) _
// ^^^ keyword.control.flow.scala
//      ^ entity.name.parameter
//           ^ - keyword
//               ^ entity.name.parameter
//                  ^ entity.name.parameter
//                    ^ keyword
//                      ^ keyword
//                           ^ - keyword
//                              ^^^ keyword.control.stable.scala
//                                  ^^^ entity.name.parameter
//                                        ^ - keyword
//                                           ^ - keyword

   for {
     sss <- { {} }
//   ^^^ entity.name.parameter
     qqq <- stuff
//   ^^^ entity.name.parameter
   }

   for {
     back <- Traverse[Option]
//   ^^^^ entity.name.parameter
//           ^^^^^^^^ support.class
//                    ^^^^^^ support.class
       .traverse[Free, Stuff](res) { r =>
//      ^^^^^^^^ - entity.name
//                            ^^^ - entity.name
//                                   ^ - entity.name
   }


  val baseSettings: Seq[Def.Setting[_]] = _
//                                  ^ - keyword

  for {
    r <- blah
  } yield r.copy(foo = a)
//        ^ - entity.name
//          ^^^^ - entity.name
//               ^^^ - entity.name

  {
    case foo.Bar => 42
//       ^^^ - entity.name
    case Bar.foo => 42
//           ^^^ - entity.name
  }
