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

def foo: Baz = 42
//^ storage.type.function.scala
//  ^^^ entity.name.function.scala
//       ^^^ support.class
//             ^^ constant.numeric.scala

def foo: Baz => Bar = 42
//       ^^^ support.class
//              ^^^ support.class


def foo(a: Int, b: Bar): Baz = 42
//^ storage.type.function.scala
//  ^^^ entity.name.function.scala
//      ^ variable.parameter
//         ^^^ storage.type.primitive.scala
//                 ^^^ support.class
//                       ^^^ support.class
//                             ^^ constant.numeric.scala

   def +(a: Int)
// ^^^ storage.type.function.scala
//     ^ entity.name.function.scala

   def `this is a test`(a: Int)
// ^^^ storage.type.function.scala
//     ^^^^^^^^^^^^^^^^ entity.name.function.scala

   def ::(a: Int)
// ^^^ storage.type.function.scala
//     ^^ entity.name.function.scala

   def foo_+(a: Int)
// ^^^ storage.type.function.scala
//     ^^^^^ entity.name.function.scala

   def foo_2(a: Int)
// ^^^ storage.type.function.scala
//     ^^^^^ entity.name.function.scala

   def foo42_+(a: Int)
// ^^^ storage.type.function.scala
//     ^^^^^^^ entity.name.function.scala

   def __many_underscores__+(a: Int)
// ^^^ storage.type.function.scala
//     ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.scala

   def foo42_+_abc(a: Int)
// ^^^ storage.type.function.scala
//     ^^^^^^^ entity.name.function.scala
//            ^^^^ - entity.name.function

   def +_foo()
//      ^^^^ - entity.name.function

   def foo[A]
// ^^^ storage.type.function.scala
//     ^^^ entity.name.function.scala
//         ^ support.class

   def foo(implicit bar: Int): Unit
//         ^^^^^^^^ storage.modifier.other

   val foo: Unit
// ^^^ storage.type.stable.scala
//     ^^^ entity.name.parameter
//          ^^^^ storage.type.primitive.scala

   var foo: Unit
// ^^^ storage.type.volatile.scala
//     ^^^ entity.name.var
//          ^^^^ storage.type.primitive.scala

class Foo[A](a: Bar) extends Baz with Bin
// ^^ storage.type.class.scala
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

class Foo(x: Int = 42)
//               ^ - support
//                 ^^ constant.numeric

def foo(x: Int = 42)
//             ^ - support
//               ^^ constant.numeric

trait Foo
// ^^ storage.type.class.scala
//    ^^^ entity.name.class

object Foo
// ^^^ storage.type.class.scala
//     ^^^ entity.name.class

   type Foo = Bar
// ^^^^ storage.type.scala
//      ^^^ entity.name.type.scala
//            ^^^ support.class.scala

   type Foo = Bar => Baz
// ^^^^ storage.type.scala
//      ^^^ entity.name.type.scala
//            ^^^ support.class.scala
//                   ^^^ support.class.scala


  type Foo[A, B, C] = Bar
//         ^ support.class
//            ^ support.class
//               ^ support.class

type Foo = Bar {
  def baz: Int
//    ^^^ entity.name.function
}

type Foo = Bar[A] forSome { type A }
//                ^^^^^^^ keyword.declaration.scala

   type Foo
   Bar
// ^^^ support.constant

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
// ^^^^^^ support.constant

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
// ^^^^ storage.type.scala

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
// ^^^^^ storage.type.class.scala

   trait
// ^^^^^ storage.type.class.scala

   object
// ^^^^^^ storage.type.class.scala

   def
// ^^^ storage.type.function.scala

   val
// ^^^ storage.type.stable.scala

   var
// ^^^ storage.type.volatile.scala

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

   val t: ({ type λ[α] = Foo[α] })#λ
//        ^^^^^^^^^^^^^^ comment.block.scala
//                       ^^^ support.class
//                           ^ comment.block.empty.scala
//                              ^^^^ comment.block.scala

   val t: ({ type λ[α, β] = Foo[α, β] })#λ
//        ^^^^^^^^^^^^^^^^^ comment.block.scala
//                          ^^^ support.class
//                              ^ comment.block.empty.scala
//                                 ^ comment.block.empty.scala
//                                    ^^^^ comment.block.scala

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

   a: Foo
//    ^^^ support.class

   case (abc: Foo, cba @ _) =>
// ^^^^ keyword.other.declaration.scala
//       ^^^ variable.parameter
//            ^^^ support.class
//                 ^^^ variable.parameter
//                       ^ keyword

   case abc @ `abc` =>
//      ^^^ variable.parameter
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
// ^^^ storage.type.stable.scala
//     ^^^ entity.name.parameter
//         ^ keyword
//           ^^^^^ - entity.name

   _
// ^ - keyword

   val ble @ `abc` = _
// ^^^ storage.type.stable.scala
//     ^^^ entity.name.parameter
//         ^ keyword
//           ^^^^^ - entity.name
//                   ^ - keyword

   case object Thingy extends Other
// ^^^^ keyword.other.declaration.scala
//      ^^^^^^ storage.type.class.scala
//             ^^^^^^ entity.name.class.scala
//                    ^^^^^^^ keyword.declaration.scala
//                            ^^^^^ entity.other.inherited-class.scala

   case object Thingy extends (Foo => Bar)
// ^^^^ keyword.other.declaration.scala
//      ^^^^^^ storage.type.class.scala
//             ^^^^^^ entity.name.class.scala
//                    ^^^^^^^ keyword.declaration.scala
//                             ^^^ support.class

   case class
// ^^^^ keyword.other.declaration.scala
//      ^^^^^ storage.type.class.scala

=>     // this is here to act as a random terminator to the above partial syntax

   case class Thingy(abc: Int) extends Other
// ^^^^ keyword.other.declaration.scala
//      ^^^^^ storage.type.class.scala
//            ^^^^^^ entity.name.class.scala
//                   ^^^ variable.parameter
//                             ^^^^^^^ keyword.declaration.scala
//                                     ^^^^^ entity.other.inherited-class.scala
//

   for {
// ^^^ keyword.control.flow.scala

     a <- _
//   ^ variable.parameter
//        ^ - keyword

     a ← _
//   ^ variable.parameter
//       ^ - entity.name

     (b, c @ _) <- _
//    ^ variable.parameter
//       ^ variable.parameter
//         ^ keyword
//           ^ keyword
//                 ^ - keyword
       _
//     ^ - entity.name

     testing = _
//   ^^^^^^^ variable.parameter
//             ^ - keyword

     testing = {
//   ^^^^^^^ variable.parameter
       testing = false
//     ^^^^^^^ - entity.name
     }

     testing = (
//   ^^^^^^^ variable.parameter
       testing = false
//     ^^^^^^^ - entity.name
     )

     val testing = 42
//   ^^^ keyword.declaration.stable.scala
//       ^^^^^^^ variable.parameter
   } _
//   ^ - entity.name

   for (a <- _; (b, c @ _) ← _; val abc = _) _
// ^^^ keyword.control.flow.scala
//      ^ variable.parameter
//           ^ - keyword
//               ^ variable.parameter
//                  ^ variable.parameter
//                    ^ keyword
//                      ^ keyword
//                           ^ - keyword
//                              ^^^ storage.type.stable.scala
//                                  ^^^ entity.name.parameter
//                                       TODO the above scope needs to be changed
//                                        ^ - keyword
//                                           ^ - keyword

   for {
     sss <- { {} }
//   ^^^ variable.parameter
     qqq <- stuff
//   ^^^ variable.parameter
   }

   for {
     back <- Traverse[Option]
//   ^^^^ variable.parameter
//           ^^^^^^^^ support.constant
//                    ^^^^^^ support.class
       .traverse[Free, Stuff](res) { r => }
//      ^^^^^^^^ - entity.name
//                            ^^^ - entity.name
//                                   ^ - entity.name
   }


  val baseSettings: Seq[Def.Setting[_]] = _
//    ^^^^^^^^^^^^ entity.name.parameter.scala
//                  ^^^ support.class
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

   val Foo = 42
//     ^^^ entity.name.parameter

   val (Foo, x) = 42
//      ^^^ support.constant.scala
//           ^ entity.name.parameter

{
  Set[Foo[A, A] forSome { type A }, A]
//                                  ^ support.class
}
    def foo: Int
//      ^^^ entity.name.function

// fubar
// <- source.scala comment.line.double-slash

new Foo
//  ^^^ support.class.scala

new (Foo ~> Bar)
//   ^^^ support.class.scala
//       ^^ support.type.scala
//          ^^^ support.class.scala

  class Foo(val bar: Baz) extends AnyVal
//          ^^^ storage.type.scala
//                        ^^^^^^^ keyword.declaration.scala
//                                ^^^^^^ entity.other.inherited-class.scala

  class Foo(implicit bar: Baz) extends AnyVal
//          ^^^^^^^^ storage.modifier.other
//                             ^^^^^^^ keyword.declaration.scala
//                                     ^^^^^^ entity.other.inherited-class.scala

   val Stuff(f1, v1) = ???
//     ^^^^^ support.constant.scala

new Foo(new Foo)
//      ^^^ keyword.other.scala

new Foo.Bar.Baz
//     ^ punctuation.separator
//      ^^^ support.class.scala
//         ^ punctuation.separator
//          ^^^ support.class.scala

new Foo#Bar#Baz
//     ^ punctuation.separator
//      ^^^ support.class.scala
//         ^ punctuation.separator
//          ^^^ support.class.scala

type Foo = Foo.Bar
//            ^ punctuation.separator

type Foo = Foo#Bar
//            ^ punctuation.separator

val x: OptionT[({ type λ[α] = Foo[α, Int] })#λ, String] = ???
//             ^^^^^^^^^^^^^^ comment.block
//                                ^ comment.block.empty
//                                        ^^^^ comment.block

class Foo[+A]
//        ^ keyword.operator

class Foo[-A]
//        ^ keyword.operator

class Foo[A <: Int]
//          ^^ keyword.operator

class Foo[A >: Int]
//          ^^ keyword.operator

class Foo[A <% Int]
//          ^^ keyword.operator

class Foo[A: Int]
//         ^ keyword.operator

type Foo <: Bar
//       ^^ keyword.operator
//          ^^^ support.class

type Foo >: Bar
//       ^^ keyword.operator
//          ^^^ support.class

   { a => ??? }
//   ^ variable.parameter

   { (a, b) => ??? }
//    ^ variable.parameter
//       ^ variable.parameter

   { a: Int => ??? }
//   ^ variable.parameter
//      ^^^ storage.type.primitive.scala

   { (a: Int, b: Int) => ??? }
//    ^ variable.parameter
//       ^^^ storage.type.primitive.scala
//            ^ variable.parameter
//               ^^^ storage.type.primitive.scala

   (a) => ???
//  ^ variable.parameter

   (a, b) => ???
//  ^ variable.parameter
//     ^ variable.parameter

   (a: Int) => ???
//  ^ variable.parameter
//     ^^^ storage.type.primitive.scala

   (a: Int, b: Int) => ???
//  ^ variable.parameter
//     ^^^ storage.type.primitive.scala
//          ^ variable.parameter
//             ^^^ storage.type.primitive.scala

   a => ???
// ^ variable.parameter

   a: Int => ???
// ^ variable.parameter
//    ^^^ storage.type.primitive.scala

   case _ if thing =>
// ^^^^ keyword.other.declaration.scala
//           ^^^^^ - variable.parameter
//                 ^^ - storage.type.function.arrow

   a =>a
// ^ variable.parameter

   a =>42
// ^ variable.parameter
//     ^^ constant.numeric.scala

  (a: Int => Boolean) => 42
//        ^^ support.type
//           ^^^^^^^ storage.type

  (a: Foo[A] forSome { type A }) => 42
// ^ variable.parameter
//    ^^^ support.class
//           ^^^^^^^ keyword.declaration.scala