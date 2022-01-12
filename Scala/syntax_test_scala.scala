// SYNTAX TEST "Packages/Scala/Scala.sublime-syntax"
// <- source.scala comment.line.double-slash.scala

package fubar
// ^^^^ keyword.declaration.namespace.scala
//      ^^^^^ entity.name.namespace.header.scala

package fubar {
// ^^^^ keyword.declaration.namespace.scala
//      ^^^^^ entity.name.namespace.scoped.scala
//            ^ punctuation.section.block.begin.scala
// <- meta.namespace.scala
   }
// ^ punctuation.section.block.end.scala

import fubar.{Unit, Foo}
// ^^^ keyword.declaration.import
// <- meta.import.scala
//                ^ punctuation.separator.scala

def foo: Baz = 42
//^ keyword.declaration.function.scala
//  ^^^ entity.name.function.scala
//       ^^^ support.class
//           ^ keyword.operator.assignment.scala
//             ^^ meta.number.integer.decimal.scala

def foo: Baz => Bar = 42;
//       ^^^ support.class
//              ^^^ support.class
//                  ^ keyword.operator.assignment.scala
//                      ^ punctuation.terminator.scala


def foo(a: Int, b: Bar): Baz = 42
//^ keyword.declaration.function.scala
//  ^^^ entity.name.function.scala
//      ^ variable.parameter
//         ^^^ storage.type.primitive.scala
//                 ^^^ support.class
//                       ^^^ support.class
//                           ^ keyword.operator.assignment.scala
//                             ^^ meta.number.integer.decimal.scala

   def +(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^ entity.name.function.scala

   def `this is a test`(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^^^^^^^^^^^^^^^ entity.name.function.scala

   def ::(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^ entity.name.function.scala

   def foo_+(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^^^^ entity.name.function.scala

   def foo_2(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^^^^ entity.name.function.scala

   def foo42_+(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^^^^^^ entity.name.function.scala

   def __many_underscores__+(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.scala

   def foo42_+_abc(a: Int)
// ^^^ keyword.declaration.function.scala
//     ^^^^^^^ entity.name.function.scala
//            ^^^^ - entity.name.function

   def +_foo()
//      ^^^^ - entity.name.function

   def foo[A]
// ^^^ keyword.declaration.function.scala
//     ^^^ entity.name.function.scala
//         ^ support.class

   def foo(implicit bar: Int): Unit
//         ^^^^^^^^ storage.modifier.other
//                     ^ punctuation.ascription.scala
//                           ^ punctuation.ascription.scala

   val foo: Unit; 42
// ^^^ storage.type.stable.scala
//     ^^^ variable.other.constant.scala
//          ^^^^ storage.type.primitive.scala
//              ^ punctuation.terminator.scala
//                ^^ meta.number.integer.decimal.scala

   var foo: Unit
// ^^^ storage.type.volatile.scala
//     ^^^ variable.other.readwrite.scala
//          ^^^^ storage.type.primitive.scala

   class Foo[A](a: Bar) extends Baz with Bin
// ^^^^^^^^^ meta.class.identifier.scala
// ^^^^^ keyword.declaration.class.scala
//      ^ - storage - entity
//       ^^^ entity.name.class
//           ^ support.class
//              ^ variable.parameter
//                 ^^^ support.class
//                      ^^^^^^^ storage.modifier.extends.scala
//                              ^^^ entity.other.inherited-class.scala
//                                  ^^^^ storage.modifier.with.scala
//                                       ^^^ entity.other.inherited-class.scala

   class Foo private[this] (a: Int)(b: String)
// ^^^^^ keyword.declaration.class.scala
//      ^ - storage - entity
//       ^^^ entity.name.class
//          ^ - storage - entity
//           ^^^^^^^ storage.modifier.access
//                   ^^^^ variable.language.scala
//                          ^ variable.parameter
//                                  ^ variable.parameter

class Foo(x: Int = 42)
//               ^ - support
//               ^ keyword.operator.assignment.scala
//                 ^^ meta.number

def foo(x: Int = 42)
//             ^ - support
//             ^ keyword.operator.assignment.scala
//               ^^ meta.number

trait Foo
// ^^ keyword.declaration.class.scala
//    ^^^ entity.name.class

object Foo
// ^^^ keyword.declaration.class.scala
//     ^^^ entity.name.class

   type Foo = Bar
// ^^^^ storage.type.scala
//      ^^^ entity.name.type.scala
//          ^ keyword.operator.assignment.scala
//            ^^^ support.class.scala

   type Foo = Bar => Baz
// ^^^^ storage.type.scala
//      ^^^ entity.name.type.scala
//          ^ keyword.operator.assignment.scala
//            ^^^ support.class.scala
//                   ^^^ support.class.scala


  type Foo[A, B, C] = Bar
//         ^ support.class
//          ^ punctuation.separator.scala
//            ^ support.class
//             ^ punctuation.separator.scala
//               ^ support.class
//                  ^ keyword.operator.assignment.scala

type Foo = Bar {
  def baz: Int
//    ^^^ entity.name.function
}

type Foo = Bar[A] forSome { type A }
//                ^^^^^^^ keyword.declaration.scala

   type Foo
   Bar
// ^^^ support.constant

// floating point numbers

   42D 42d
//^ - constant
// ^^^ meta.number.float.decimal.scala
// ^^ constant.numeric.value.scala
//   ^ constant.numeric.suffix.scala
//    ^ - meta.number
//     ^^^ meta.number.float.decimal.scala
//     ^^ constant.numeric.value.scala
//       ^ constant.numeric.suffix.scala
//        ^ - meta.number

   42F 42f
//^ - meta.number
// ^^^ meta.number.float.decimal.scala
// ^^ constant.numeric.value.scala
//   ^ constant.numeric.suffix.scala
//    ^ - meta.number
//     ^^^ meta.number.float.decimal.scala
//     ^^ constant.numeric.value.scala
//       ^ constant.numeric.suffix.scala
//        ^ - meta.number

   .045 .045e2 .045e-2 .045e+2 .045e2f .045e-2f .045e+2f
//^ - meta.number
// ^^^^ meta.number.float.decimal.scala
// ^^^^ constant.numeric.value.scala
// ^ punctuation.separator.decimal.scala
//     ^ - meta.number
//      ^^^^^^ meta.number.float.decimal.scala
//      ^ punctuation.separator.decimal.scala
//      ^^^^^^ constant.numeric.value.scala
//            ^ - meta.number
//             ^^^^^^^ meta.number.float.decimal.scala
//             ^ punctuation.separator.decimal.scala
//             ^^^^^^^ constant.numeric.value.scala
//                    ^ - meta.number
//                     ^^^^^^^ meta.number.float.decimal.scala
//                     ^ punctuation.separator.decimal.scala
//                     ^^^^^^^ constant.numeric.value.scala
//                            ^ - meta.number
//                             ^^^^^^^ meta.number.float.decimal.scala
//                             ^ punctuation.separator.decimal.scala
//                             ^^^^^^ constant.numeric.value.scala
//                                   ^ constant.numeric.suffix.scala
//                                    ^ - meta.number
//                                     ^^^^^^^^ meta.number.float.decimal.scala
//                                     ^ punctuation.separator.decimal.scala
//                                     ^^^^^^^ constant.numeric.value.scala
//                                            ^ constant.numeric.suffix.scala
//                                             ^ - meta.number
//                                              ^^^^^^^^ meta.number.float.decimal.scala
//                                              ^ punctuation.separator.decimal.scala
//                                              ^^^^^^^ constant.numeric.value.scala
//                                                     ^ constant.numeric.suffix.scala
//                                                      ^ - meta.number

   0.045 0.045e2 0.045e-2 0.045e+2 0.045e2f 0.045e-2f 0.045e+2f
//^ - meta.number
// ^^^^^ meta.number.float.decimal.scala
// ^^^^^ constant.numeric.value.scala
//  ^ punctuation.separator.decimal.scala
//      ^ - meta.number
//       ^^^^^^^ meta.number.float.decimal.scala
//       ^^^^^^^ constant.numeric.value.scala
//        ^ punctuation.separator.decimal.scala
//              ^ - meta.number
//               ^^^^^^^^ meta.number.float.decimal.scala
//               ^^^^^^^^ constant.numeric.value.scala
//                ^ punctuation.separator.decimal.scala
//                       ^ - meta.number
//                        ^^^^^^^^ meta.number.float.decimal.scala
//                        ^^^^^^^^ constant.numeric.value.scala
//                         ^ punctuation.separator.decimal.scala
//                                ^ - meta.number
//                                 ^^^^^^^^ meta.number.float.decimal.scala
//                                 ^^^^^^^ constant.numeric.value.scala
//                                  ^ punctuation.separator.decimal.scala
//                                        ^ constant.numeric.suffix.scala
//                                         ^ - meta.number
//                                          ^^^^^^^^^ meta.number.float.decimal.scala
//                                          ^^^^^^^^ constant.numeric.value.scala
//                                           ^ punctuation.separator.decimal.scala
//                                                  ^ constant.numeric.suffix.scala
//                                                   ^ - meta.number
//                                                    ^^^^^^^^^ meta.number.float.decimal.scala
//                                                    ^^^^^^^^ constant.numeric.value.scala
//                                                     ^ punctuation.separator.decimal.scala
//                                                            ^ constant.numeric.suffix.scala
//                                                             ^ - meta.number

   1e2 1e-2 1e+2 1e2f 1e-2f 1e+2f
//^ - meta.number
// ^^^ meta.number.float.decimal.scala
// ^^^ constant.numeric.value.scala
//    ^ - meta.number
//     ^^^^ meta.number.float.decimal.scala
//     ^^^^ constant.numeric.value.scala
//         ^ - meta.number
//          ^^^^ meta.number.float.decimal.scala
//          ^^^^ constant.numeric.value.scala
//              ^ - meta.number
//               ^^^^ meta.number.float.decimal.scala
//               ^^^ constant.numeric.value.scala
//                  ^ constant.numeric.suffix.scala
//                   ^ - meta.number
//                    ^^^^^ meta.number.float.decimal.scala
//                    ^^^^ constant.numeric.value.scala
//                        ^ constant.numeric.suffix.scala
//                         ^ - meta.number
//                          ^^^^^ meta.number.float.decimal.scala
//                          ^^^^ constant.numeric.value.scala
//                              ^ constant.numeric.suffix.scala

// decimal integers

   42 42L 42l
//^ - meta.number
// ^^ meta.number.integer.decimal.scala
// ^^ constant.numeric.value.scala
//   ^ - meta.number
//    ^^^ meta.number.integer.decimal.scala
//    ^^ constant.numeric.value.scala
//      ^ constant.numeric.suffix.scala
//       ^ - meta.number
//        ^^^ meta.number.integer.decimal.scala
//        ^^ constant.numeric.value.scala
//          ^ constant.numeric.suffix.scala
//           ^ - meta.number

// hexadecimal integers

   0x0aF9123 0x42L 0x42l
//^ - meta.number
// ^^^^^^^^^ meta.number.integer.hexadecimal.scala
// ^^ constant.numeric.base.scala
//   ^^^^^^^ constant.numeric.value.scala
//          ^ - meta.number
//           ^^^^^ meta.number.integer.hexadecimal.scala
//           ^^ constant.numeric.base.scala
//             ^^ constant.numeric.value.scala
//               ^ constant.numeric.suffix.scala
//                ^ - meta.number
//                 ^^^^^ meta.number.integer.hexadecimal.scala
//                 ^^ constant.numeric.base.scala
//                   ^^ constant.numeric.value.scala
//                     ^ constant.numeric.suffix.scala
//                      ^ - meta.number

// characters

   'a'
// ^^^ constant.character.literal.scala

   '\u1221'
// ^^^^^^^^ constant.character.literal.scala

   true
// ^^^^ constant.language.scala

   false
// ^^^^^ constant.language.scala

   null
// ^^^^ constant.language.scala

   Nil
// ^^^ support.constant.scala

   None
// ^^^^ support.constant.scala

   this
// ^^^^ variable.language.scala

   super
// ^^^^^ variable.language.scala

   "testing"
// ^ punctuation.definition.string.begin.scala
// ^^^^^^^^^ string.quoted.double.scala
//         ^ punctuation.definition.string.end.scala

  "escaped chars: \u1221 \125 \n"
//                ^^^^^^ constant.character.escape.scala
//                        ^^^ constant.character.escape.scala
//                            ^^ constant.character.escape.scala

  "bad escaping: \p"
//               ^ invalid.illegal.lone-escape.scala

  """escaped in triple: \u1221 \125 \n"""
//^^^ punctuation.definition.string.begin.scala
//                      ^^^^^^ constant.character.escape.scala
//                             ^^^ - constant.character.escape.scala
//                                  ^^ - constant.character.escape.scala
//                                    ^^^ punctuation.definition.string.end.scala

   """testing"""
// ^^^^^^^^^^^^^ string.quoted.triple.scala

   s"testing $a ${42}"
// ^^^^^^^^^ string.quoted.interpolated.scala
// ^ support.function
//           ^^ variable.other
//              ^^ punctuation.definition.expression
//                ^^ meta.number.integer.decimal.scala
//                  ^ punctuation.definition.expression

   s"""testing $a ${42}"""
// ^^^^^^^^^^^ string.quoted.triple.interpolated.scala
// ^ support.function
//             ^^ variable.other
//                ^^ punctuation.definition.expression
//                  ^^ meta.number.integer.decimal.scala
//                    ^ punctuation.definition.expression
//                     ^^^ string.quoted.triple.interpolated.scala

   f"formatted: x: $x%+,.3f ca"
// ^ support.function
//                  ^ variable.other.scala - string
//                   ^^^^^^ constant.other.formatting.scala

   f"formatted: date: $x%T "
// ^ support.function
//                    ^ variable.other.scala
//                      ^^ constant.other.formatting.scala

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
    *
//  ^ punctuation.definition.comment.scala
*/

  /**/0xff
//^^^^ comment.block.empty.scala
//    ^^^^ - comment

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

{
   case =>
// ^^^^ keyword.declaration.other.scala
}

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
// ^^^^^^^ invalid.keyword.dangling-extends.scala

   with
// ^^^^ invalid.keyword.dangling-with.scala

   class
// ^^^^^ keyword.declaration.class.scala

   trait
// ^^^^^ keyword.declaration.class.scala

   object
// ^^^^^^ keyword.declaration.class.scala

   def
// ^^^ keyword.declaration.function.scala

   val
// ^^^ storage.type.stable.scala

   var
// ^^^ storage.type.volatile.scala

   import
// ^^^^^^ keyword.declaration.import.scala

   package
// ^^^^^^^ keyword.declaration.namespace.scala

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

   a :: b :: Nil
// ^^^^^^^^^ source.scala
//           ^^^ support.constant.scala

  (a :: b :: Nil)
// ^^^^^^^^^ source.scala
//           ^^^ support.constant.scala

   a: Int
// ^^ source.scala
//    ^^^ storage.type.primitive.scala

  (a: Int)
// ^ source.scala
//    ^^^ storage.type.primitive.scala

   a: Foo
//    ^^^ support.class

{
   case (abc: Foo, cba @ _) =>
// ^^^^ keyword.declaration.other.scala
//       ^^^ variable.parameter
//            ^^^ support.class
//                 ^^^ variable.parameter
//                       ^ variable.language.underscore.scala
//                          ^^ keyword.declaration.function.arrow.case.scala

   case abc @ `abc` =>
//      ^^^ variable.parameter
//          ^ keyword.operator.at.scala
//            ^ punctuation.definition.identifier.scala
//                ^ punctuation.definition.identifier.scala
//                  ^^ keyword.declaration.function.arrow.case.scala
//            ^^^^^ - variable.parameter

   case foo: (Int => Boolean) :: _ =>
//                               ^ variable.language.underscore.scala

   case /* testing */ =>
//      ^^^^^^^^^^^^^ comment.block.scala

   case // testing
//      ^^^^^^^^^^ comment.line.double-slash.scala
   =>

   case 42 =>
//      ^^ meta.number.integer.decimal.scala

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

   case true =>
//      ^^^ constant.language.scala

   case _ ⇒ _
//          ^ - keyword

   case _ if stuff =>
//        ^^ keyword.control.flow.scala
//           ^^^^^ - entity.name
}

   val abc @ `abc`
// ^^^ storage.type.stable.scala
//     ^^^ variable.other.constant.scala
//         ^ keyword.operator.at.scala
//           ^ punctuation.definition.identifier.scala
//               ^ punctuation.definition.identifier.scala
//           ^^^^^ - entity.name

   _
// ^ - keyword

   val ble @ `abc` = _
// ^^^ storage.type.stable.scala
//     ^^^ variable.other.constant.scala
//         ^ keyword.operator.at.scala
//           ^^^^^ - entity.name
//                 ^ keyword.operator.assignment.scala
//                   ^ - keyword

   case object Thingy extends Other
// ^^^^ keyword.declaration.class.scala
//      ^^^^^^ keyword.declaration.class.scala
//             ^^^^^^ entity.name.class.scala
//                    ^^^^^^^ storage.modifier.extends.scala
//                            ^^^^^ entity.other.inherited-class.scala

   case object Thingy extends (Foo => Bar)
// ^^^^ keyword.declaration.class.scala
//      ^^^^^^ keyword.declaration.class.scala
//             ^^^^^^ entity.name.class.scala
//                    ^^^^^^^ storage.modifier.extends.scala
//                             ^^^ support.class

{
   case class
// ^^^^ keyword.declaration.class.scala
//      ^^^^^ keyword.declaration.class.scala
}

   case class Thingy(abc: Int) extends Other
// ^^^^^^^^^^^^^^^^^ meta.class.identifier.scala
// ^^^^ keyword.declaration.class.scala
//      ^^^^^ keyword.declaration.class.scala
//            ^^^^^^ entity.name.class.scala
//                   ^^^ variable.parameter
//                             ^^^^^^^ storage.modifier.extends.scala
//                                     ^^^^^ entity.other.inherited-class.scala
//

   for {
// ^^^ keyword.control.flow.scala

     a <- _
//   ^ variable.parameter
//     ^^ keyword.operator.assignment.scala
//        ^ - keyword

     a ← _
//   ^ variable.parameter
//     ^ keyword.operator.assignment.scala
//       ^ - entity.name

     (b, c @ _) <- _
//    ^ variable.parameter
//       ^ variable.parameter
//         ^ keyword.operator.at.scala
//           ^ variable.language.underscore.scala
//              ^^ keyword.operator.assignment.scala
//                 ^ - keyword
       _
//     ^ - entity.name

     testing = _
//   ^^^^^^^ variable.parameter
//           ^ keyword.operator.assignment.scala
//             ^ - variable.operator.scala

     testing = {
//   ^^^^^^^ variable.parameter
       testing = false
//     ^^^^^^^ - entity.name
//             ^ keyword.operator.assignment.scala
     }

     testing = (
//   ^^^^^^^ variable.parameter
       testing = false
//     ^^^^^^^ - variable.parameter
     )

     val testing = 42
//   ^^^ storage.type.stable.scala
//       ^^^^^^^ variable.parameter
   } abc
//   ^^^ - variable.parameter

   for (a <- _; (b, c @ _) ← d; val abc = e) f
// ^^^ keyword.control.flow.scala
//      ^ variable.parameter
//           ^ - keyword
//               ^ variable.parameter
//                  ^ variable.parameter
//                    ^ keyword.operator.at.scala
//                      ^ variable.language.underscore.scala
//                         ^ keyword.operator.assignment.scala
//                           ^ - variable.parameter
//                              ^^^ storage.type.stable.scala
//                                  ^^^ variable.parameter
//                                        ^ - variable.parameter
//                                           ^ - variable.parameter

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
//                   ^^^^^^^^ meta.generic.scala
//                   ^ punctuation.definition.generic.begin.scala
//                    ^^^^^^ support.class
//                          ^ punctuation.definition.generic.end.scala
       .traverse[Free, Stuff](res) { r => }
//      ^^^^^^^^ - entity.name
//                            ^^^ - entity.name
//                                   ^ - entity.name
   }


  val baseSettings: Seq[Def.Setting[_]] = _
//    ^^^^^^^^^^^^ variable.other.constant.scala
//                  ^^^ support.class
//                                  ^ variable.language.underscore.scala - keyword

  for {
    r <- blah
  } yield r.copy(foo = a)
//        ^ - variable
//          ^^^^ - variable
//              ^ punctuation.section.group.begin.scala
//               ^^^ - variable
//                      ^ punctuation.section.group.end.scala

  {
    case foo.Bar => 42
//       ^^^ - variable
//          ^ punctuation.accessor.scala
    case Bar.foo => 42
//           ^^^ - variable
//          ^ punctuation.accessor.scala
  }

   val Foo = 42
//     ^^^ variable.other.constant.scala

   val * = 42
//     ^ variable.other.constant.scala

   val *: abc = 42
//     ^ variable.other.constant.scala
//      ^ invalid.ascription.following-operator.scala
//        ^^^ support.type.scala

   val foo_::: abc
//     ^^^^^^ variable.other.constant.scala
//           ^ invalid.ascription.following-operator.scala

   val ::: abc
//       ^ invalid.ascription.following-operator.scala

   val :: : abc
//     ^^ variable.other.constant.scala
//        ^ punctuation.ascription.scala - invalid

  val foo_:::: = 42
//    ^^^^^^^^ variable.other.constant.scala
//           ^ - invalid

  val :::: = 42
//    ^^^^ variable.other.constant.scala
//       ^ - invalid

   val foo_: : abc
//     ^^^^^ variable.other.constant.scala
//         ^ - invalid
//           ^ - invalid
   val foo_:: : abc
//     ^^^^^^ variable.other.constant.scala
//          ^ - invalid
//            ^ - invalid

   val * : abc = 42
//     ^ variable.other.constant.scala
//       ^ punctuation.ascription.scala - invalid
//         ^^^ support.type.scala

   val (Foo, x) = 42
//      ^^^ support.constant.scala
//           ^ variable.other.constant.scala

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
//                        ^^^^^^^ storage.modifier.extends.scala
//                                ^^^^^^ entity.other.inherited-class.scala

  class Foo(implicit bar: Baz) extends AnyVal
//          ^^^^^^^^ storage.modifier.other
//                             ^^^^^^^ storage.modifier.extends.scala
//                                     ^^^^^^ entity.other.inherited-class.scala

   val Stuff(f1, v1) = ???
//     ^^^^^ support.constant.scala

new Foo(new Foo)
//      ^^^ keyword.other.scala

new Foo.Bar.Baz
//     ^ punctuation.accessor.scala
//      ^^^ support.class.scala
//         ^ punctuation.accessor.scala
//          ^^^ support.class.scala

new Foo#Bar#Baz
//     ^ punctuation.accessor.scala
//      ^^^ support.class.scala
//         ^ punctuation.accessor.scala
//          ^^^ support.class.scala

type Foo = Foo.Bar
//            ^ punctuation.accessor.scala

type Foo = Foo#Bar
//            ^ punctuation.accessor.scala

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
//   ^ punctuation.section.group.begin.scala
//    ^ variable.parameter.scala
//       ^ variable.parameter.scala
//        ^ punctuation.section.group.end.scala

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

   (a: Int, b: Int) ⇒ ???
//  ^ variable.parameter
//     ^^^ storage.type.primitive.scala
//          ^ variable.parameter
//             ^^^ storage.type.primitive.scala
//                  ^ keyword.declaration.function.arrow

   a => ???
// ^ variable.parameter

   a: Int => ???
// ^ variable.parameter
//    ^^^ storage.type.primitive.scala

{
   case _ if thing =>
// ^^^^ keyword.declaration.other.scala
//           ^^^^^ - variable.parameter
//                 ^^ keyword.declaration.function.arrow
}

   a =>a
// ^ variable.parameter

   a =>42
// ^ variable.parameter
//     ^^ meta.number.integer.decimal.scala

  (a: Int => Boolean) => 42
//        ^^ keyword.operator.arrow.scala
//           ^^^^^^^ storage.type

  (a: Foo[A] forSome { type A }) => 42
// ^ variable.parameter
//    ^^^ support.class
//           ^^^^^^^ keyword.declaration.scala

   ()
// ^^ constant.language.scala

{
  case () => ()
//     ^^ constant.language.scala
}

   Foo()
// ^^^ support.constant.scala
//    ^^ - constant.language.scala

  Foo[A]()
//      ^^ - constant.language.scala

  foo[A]()
//      ^^ - constant.language.scala

foo() bar ()
// ^^ - constant.language.scala
//        ^^ constant.language.scala

foo()()
//   ^^ - constant.language.scala

foo(())()
//  ^^ constant.language.scala
//     ^^ - constant.language.scala

   () => 42
// ^^ - constant.language.scala
//    ^^ keyword.declaration.function.arrow

"testing /*comments*/"
//       ^^^^^^^^^^^^ string.quoted.double
//       ^^^^^^^^^^^^ - comment

   cb: ((Throwable \/ Unit) => Unit) => 42
// ^^ variable.parameter
//                 ^^ support.type.scala
//                                   ^^ keyword.declaration.function.arrow

def foo(a: A <:< B)
//           ^^^ support.type.scala

def foo(a: A >:> B)
//           ^^^ support.type.scala

def foo(a: A =:= B)
//           ^^^ support.type.scala

def foo(a: A =:= B = null)
//                 ^ keyword.operator.assignment.scala
//                   ^^^^ constant.language.scala

def foo(a: A :: B)
//           ^^ support.type.scala

class Foo(a: A <:< B)
//             ^^^ support.type.scala

class Foo(a: A >:> B)
//             ^^^ support.type.scala

class Foo(a: A =:= B)
//             ^^^ support.type.scala

class Foo(a: A =:= B = null)
//                   ^ keyword.operator.assignment.scala
//                     ^^^^ constant.language.scala

class Foo(a: A :: B)
//             ^^ support.type.scala

import foo
// <- meta.import.scala

import foo, bar
//        ^ punctuation.separator.scala

import foo; import bar
//        ^ punctuation.terminator.scala
//          ^^^^^^ keyword.declaration.import.scala

import foo.bar
//        ^ punctuation.accessor.dot.scala

import foo.{bar, bar => baz, bar=>baz}
//         ^^^^^^^^^^^^^^^^^ meta.import.selector.scala
//                   ^^ keyword.operator.arrow.scala
//                              ^^ keyword.operator.arrow.scala


import foo.{
   bar => bin
// ^^^ meta.import.scala
//        ^^^ meta.import.scala
}

import foo._
//         ^ variable.language.underscore.scala

import foo.{Foo => _}
//                 ^ variable.language.underscore.scala

for {} yield ()
//     ^^^^^ keyword.control.flow.scala
//           ^^ constant.language.scala

   42.bar
//   ^ - meta.number.scala

  baz[m.type]
//      ^^^^ keyword.other.scala

foo: m.type
//     ^^^^ keyword.other.scala

   ===
// ^^^ - keyword

offset >= 0
//     ^^ - keyword

{
  case chunk #: h =>
//              ^ variable.parameter
}

val chunk #: h = ???
//           ^ variable.other.constant.scala

for {
  if things >= stuff
//   ^^^^^^ - variable.parameter
//             ^^^^^ - variable.parameter
}


for (if things >= stuff)
//      ^^^^^^ - variable.parameter
//                ^^^^^ - variable.parameter

   _
// ^ variable.language.underscore.scala

foo._1
//  ^ - variable.language.scala

foo_=
//  ^ - keyword

foo_
// ^ - variable.language

foo({ _ => () })
//    ^ variable.language.underscore.scala
//      ^^ keyword.declaration.function.arrow

foo({ _: Unit => () })
//    ^ variable.language.underscore.scala
//            ^^ keyword.declaration.function.arrow

  stuff: _*
//       ^^ keyword.operator.varargs.scala

{
  case _ @ _* =>
//         ^^ keyword.operator.varargs.scala
}

  val _ @ _* = things
//        ^^ keyword.operator.varargs.scala

s"testing ${things} and more!"
//          ^^^^^^ - string
//          ^^^^^^ source.scala.embedded

foo.bar
// ^ punctuation.accessor.scala

(foo, bar)
//  ^ punctuation.separator.scala

{
case (foo, bar) =>
//       ^ punctuation.separator.scala
}

val (foo, bar) = ???
//      ^ punctuation.separator.scala

foo eq bar
//  ^^ keyword.operator.comparison.scala

foo ne bar
//  ^^ keyword.operator.comparison.scala

new Config()
//        ^^ - constant

val A: Foo = stuff
//  ^ variable.other.constant.scala

type Maybe[A] = { type Inner = A; def x: Int }
//                                ^^ keyword.declaration.function.scala
//                                    ^ entity.name.function.scala

   for {
// ^^^ keyword.control.flow.scala
      stuff = sequenceU.map(_.flatten) // thingy
     _ <- fooinConns.map(_.map(t => { }))
//     ^^ keyword.operator.assignment.scala
   } yield ()

new Foo with Bar with Baz
//      ^^^^ keyword.declaration.scala
//           ^^^ support.class.scala
//               ^^^^ keyword.declaration.scala
//                    ^^^ support.class.scala

type Thing = Foo with Bar with Baz
//               ^^^^ keyword.declaration.scala
//                    ^^^ support.class.scala

Foo[Foo with Bar]
//      ^^^^ keyword.declaration.scala
//           ^^^ support.class.scala

xs: Foo with Bar
//      ^^^^ keyword.declaration.scala
//           ^^^ support.class.scala

   classTag[U]
// ^^^^^ - storage.type

   s"before ${classTag[U] stuff} after"
//   ^^^^^^ string.quoted.interpolated.scala
//            ^^^^^ - storage.type
//                               ^^^^^ string.quoted.interpolated.scala

{
  case Stuff(thing, other) =>
//           ^^^^^ variable.parameter.scala
//                  ^^^^^ variable.parameter.scala
}

{
   case (x, y: Int => String) => ()
//                 ^^ keyword.operator.arrow.scala
//                    ^^^^^^ support.class.scala
}

{
   case (foo.bar, _) => ()
//           ^^^ - variable
}

val Stuff(thing, other) = ???
//        ^^^^^ variable.other.constant.scala
//               ^^^^^ variable.other.constant.scala

   x: List[Int] => ()
// ^ variable.parameter.scala
//              ^^ keyword.declaration.function.arrow.lambda.scala

/** private */ class Foo
//             ^^^^^ keyword.declaration.class.scala

   foo
// ^^^ - comment

   /*
   /*
   test
// ^^^^ comment.block.scala
   */
   test
// ^^^^ comment.block.scala
   */
   test
// ^^^^ - comment

   /**
   /**
   test
// ^^^^ comment.block.documentation.scala
   */
   test
// ^^^^ comment.block.documentation.scala
   */
   test
// ^^^^ - comment

def <(a: Int) = 42
//  ^ entity.name.function.scala
//    ^ variable.parameter.scala

   <thing foo="42"/>
//  ^^^^^ text.xml entity.name.tag.xml
//        ^^^ text.xml entity.other.attribute-name.localname.xml
//            ^ text.xml string.quoted.double.xml punctuation.definition.string.begin.xml
//             ^^ text.xml string.quoted.double.xml
//               ^ text.xml string.quoted.double.xml punctuation.definition.string.end.xml

   <!-- not a comment -->
// ^^^^^^^^^^^^^^^^^^^^^^ - comment

   <foo bar="test" baz='test' bin={ 42 }>
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ text.xml meta.tag.xml
//                                      ^ text.xml meta.tag.xml
//                     ^ text.xml string.quoted.single.xml punctuation.definition.string.begin.xml
//                          ^ text.xml string.quoted.single.xml punctuation.definition.string.end.xml
//                                  ^^ source.scala meta.number.integer.decimal.scala
     {
       42 + "thing"
//     ^^^^^^^^^^^^ - text.xml
//     ^^ source.scala meta.number.integer.decimal.scala
//          ^^^^^^^ source.scala string.quoted.double.scala
       // comments!
//     ^^^^^^^^^^^^ source.scala comment.line.double-slash.scala

       <nested/>
//     ^^^^^^^^^ - text.xml text.xml
//     ^^^^^^^^^ text.xml meta.tag.xml
//      ^^^^^^ entity.name.tag.xml
     }

     "stuff"
//   ^^^^^^^ - string

     <!-- comments -->
//   ^^^^^^^^^^^^^^^^^ comment.block.xml

     <thing/>

     <more>
       more tags!
       /* not a comment */
//     ^^^^^^^^^^^^^^^^^^^ - comment
     </more>
   </foo>

   </thing>
// invalid.illegal.bad-closing-tag.xml

   <?xml version="1.0"?>
// ^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.reserved-proc-instr.xml

   <?xml
// ^^^^^ invalid.illegal.reserved-proc-instr.xml

   <?xmll?>
// ^^^^^^^^ - invalid

   <?foo thing="false"?>
// ^^ punctuation.definition.tag.begin.xml
//   ^^^ entity.name.tag.xml
//             ^^^^^^^ string.quoted.double.xml
//                    ^^ punctuation.definition.tag.end.xml

   <!-- not a comment -->
// ^^^^^^^^^^^^^^^^^^^^^^ - comment

   <foo a="&" b="<" c=">"/>
// ^^^^^^^^^^^^^^^^^^^^^^^^ text.xml meta.tag.xml
// ^ punctuation.definition.tag.begin.xml
//         ^ invalid.illegal.bad-ampersand.xml
//               ^ invalid.illegal.missing-entity.xml
//                     ^ invalid.illegal.missing-entity.xml
//                       ^^ punctuation.definition.tag.end.xml

   <foo a="&amp;"/>
// ^^^^^^^^^^^^^^^^ text.xml meta.tag.xml
// ^ punctuation.definition.tag.begin.xml
//          ^^^ constant.character.entity.xml

   <foo>
// ^ punctuation.definition.tag.begin.xml
     &amp;
//   ^^^^^ constant.character.entity.xml - meta.tag.xml
   </foo>

class Test1
    (a: String)
//   ^ variable.parameter.scala

class Test1

    (a: String)
//   ^ - variable

class Test1
    (val a: String) {
   "string"
// ^^^^^^^^ string.quoted.double.scala
}

def test
    (arg: String) = arg
//   ^^^ variable.parameter.scala

def test
    (arg: String)
    (arg: String) = arg
//   ^^^ variable.parameter.scala

// the following test is paired together
   def foo: Map[Bar]
   def connectionMap: Unit
// ^^^ keyword.declaration.function.scala

def foo: Map[Bar]=42
//                ^^ meta.number.integer.decimal.scala

   x: Foo.Bar => ()
// ^ variable.parameter.scala
//            ^^ keyword.declaration.function.arrow.lambda.scala

   x: Foo#Bar => ()
// ^ variable.parameter.scala
//            ^^ keyword.declaration.function.arrow.lambda.scala

    object Stuff {
      case
    }
    thing
//  ^^^^^ - variable

    s"thingy "
//   ^ punctuation.definition.string.begin.scala

   def thing(): Other
   def boo: Int
// ^^^ keyword.declaration.function.scala
//     ^^^ entity.name.function.scala

for {
  abc = () => 42
//         ^^ keyword.declaration.function.arrow.lambda.scala
}


for (
  abc = () => 42
//         ^^ keyword.declaration.function.arrow.lambda.scala
)

new {
   "foo"
// ^^^^^ string.quoted.double.scala
}

def foo(a: String*, b: (Int => String)*, c: Int*): Negative*
//               ^ keyword.operator.varargs.scala
//                                    ^ keyword.operator.varargs.scala
//                                             ^ keyword.operator.varargs.scala
//                                                         ^ - support

def foo[A[_] <: B](a: Int + String): Unit
//     ^ punctuation.definition.generic.begin.scala
//       ^ punctuation.definition.generic.begin.scala
//         ^ punctuation.definition.generic.end.scala
//               ^ punctuation.definition.generic.end.scala
//     ^^^^^^^^^^^ meta.generic.scala
//                ^ punctuation.section.group.begin.scala
//                        ^ support.type.scala - keyword
//                                ^ punctuation.section.group.end.scala

class Foo(a: String*)
//                 ^ keyword.operator.varargs.scala

class Foo(a: String* )
//                  ^ - keyword

def foo(a: String* )
//                ^ - keyword

trait AlgebraF[F[_]] { type f[x] = Algebra[F,x] }
//                     ^^^^ storage.type.scala
//                               ^ keyword.operator.assignment.scala

class Foo @Inject()(a: String)
//         ^^^^^^ meta.annotation.identifier
//                 ^- meta.annotation
//                  ^ variable.parameter.scala

class Foo @Inject() @Provided(scope = "test")(a: String)
//         ^^^^^^ meta.annotation.identifier
//                 ^- meta.annotation
//                   ^^^^^^^ meta.annotation.identifier
//                           ^^^^^^^ meta.annotation.parameters
//                                           ^- meta.annotation
//                                            ^ variable.parameter.scala

class Foo @Inject(z = "a")(a: String)
//         ^^^^^^ variable.annotation
//                ^^^^^^^ meta.annotation.parameters
//                         ^ variable.parameter.scala

class Foo[A] @Inject()(a: String)
//        ^ support.class
//            ^^^^^^ meta.annotation.identifier
//                    ^- meta.annotation
//                     ^ variable.parameter.scala

// annotation examples from: http://www.scala-lang.org/files/archive/spec/2.11/11-annotations.html
@deprecated("Use D", "1.0") class C { ... }
// <- meta.annotation
// ^^ variable.annotation
//         ^ meta.annotation.parameters.scala punctuation.section.arguments.annotation.begin.scala
//            ^^ string
//                       ^ meta.annotation
//                         ^ - meta.annotation

@transient @volatile var m: Int
// ^^ variable.annotation
//          ^ variable.annotation

String @local
//     ^ punctuation.definition.annotation
//      ^^ variable.annotation

(e: @unchecked) match { ... }
//   ^^ variable.annotation
//              ^^^^^ keyword.control.flow

// more complex:
@scala.beans.BeanProperty
// <- meta.annotation
 // <- meta.annotation.identifier
//^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.identifier
//           ^^^^^^^^^^^^ variable.annotation
//    ^ punctuation.accessor

(e: Int @unchecked) match { ... }
//  ^^ storage.type.primitive
//       ^^ variable.annotation
//                  ^^^^^ keyword.control.flow

@obsolete("this class is horrible don't use it", alpha=3)
//  ^^ variable.annotation
//            ^ string
//                                                     ^ meta.number.integer
trait Function0[@specialized(Unit, Int, Double) T] {
//               ^^ variable.annotation
//                           ^^ storage.type.primitive
//                                              ^ support.class
//              ^ punctuation.definition.annotation
//              ^ meta.annotation
//                                           ^ meta.annotation.parameters
//                                             ^ - meta.annotation
//                               ^ punctuation.separator.arguments.annotation
  def apply: T
}

x: Foo @volatile with Bar @foo.bar @bar with Baz
//          ^^ variable.annotation
//               ^^ keyword.declaration
//                    ^^^ support.class
//                        ^^^^^ - variable.annotation
//                             ^^^ variable.annotation
//                                  ^^^ variable.annotation
//                                           ^^^ support.class

   extends
// ^^^^^^^ invalid.keyword.dangling-extends.scala

   with
// ^^^^ invalid.keyword.dangling-with.scala

class Foo with Bar
//        ^^^^ invalid.keyword.with-before-extends.scala

class Foo extends Bar extends Baz
//                    ^^^^^^^ invalid.keyword.extends-after-extends.scala

class Foo extends Bar[A with B](42)
//                    ^ support.class.scala
//                      ^^^^ keyword.declaration.scala
//                           ^ support.class.scala
//                              ^^ meta.number.integer.decimal.scala

class Foo extends Bar { val x = 42 } with Baz
//                    ^ punctuation.section.braces.begin.scala
//                                 ^ punctuation.section.braces.end.scala
//                                   ^^^^ storage.modifier.with.scala
//                                        ^^^ entity.other.inherited-class.scala

class Foo { val x = 42 } extends Bar with Baz
//        ^ punctuation.section.braces.begin.scala
//                     ^ punctuation.section.braces.end.scala
//                       ^^^^^^^ storage.modifier.extends.scala
//                               ^^^ entity.other.inherited-class.scala
//                                   ^^^^ storage.modifier.with.scala
//                                        ^^^ entity.other.inherited-class.scala

class Foo {

// <- meta.class.body.scala
}

class Foo extends Bar {

// <- meta.class.body.scala
}

   {
// ^ punctuation.section.block.begin.scala
     // <- meta.block.scala
   }
// ^ punctuation.section.block.end.scala

   (
// ^ punctuation.section.group.begin.scala
     // <- meta.group.scala
     )
//   ^ punctuation.section.group.end.scala

   [
// ^ punctuation.definition.generic.begin.scala
     // <- meta.generic.scala
     ]
//   ^ punctuation.definition.generic.end.scala

class Foo extends Bar(42)
//                   ^ punctuation.section.parens.begin.scala
//                      ^ punctuation.section.parens.end.scala

class Foo extends (Int => String)
//                ^ punctuation.definition.parens.begin.scala
//                              ^ punctuation.definition.parens.end.scala

class Foo extends Bar[Int]
//                   ^ punctuation.definition.generic.begin.scala
//                       ^ punctuation.definition.generic.end.scala

   object Underscore_
// ^^^^^^ keyword.declaration.class.scala
//        ^^^^^^^^^^^ entity.name.class.scala

match {
  case _
//^^^^ - meta.pattern
//     ^ meta.pattern.scala
   => 42
// ^^ - meta.block.case.first
// ^^ - meta.pattern
//    ^^ meta.block.case.first.scala
{

  // <- - meta.block.case
}

  case _ => 42
//       ^^ - meta.block.case.non-first
//       ^^ - meta.pattern
//          ^^ meta.block.case.non-first.scala

  case _ => 42
//       ^^ - meta.block.case.non-first
//          ^^ meta.block.case.non-first.scala
}

class Foo
    extends Bar
//  ^^^^^^^ storage.modifier.extends.scala
//          ^^^ entity.other.inherited-class.scala

class Foo extends Bar
    with Baz
//  ^^^^ storage.modifier.with.scala
//       ^^^ entity.other.inherited-class.scala

class Foo extends Bar
    with Baz
    with Bin
//  ^^^^ storage.modifier.with.scala
//       ^^^ entity.other.inherited-class.scala

def foo
   42
// ^^ meta.number.integer.decimal.scala

def foo()
   42
// ^^ meta.number.integer.decimal.scala

def foo():
   42
// ^^ meta.number.integer.decimal.scala

val foo: Thing =42
//              ^^ meta.number.integer.decimal.scala

var foo: Thing =42
//              ^^ meta.number.integer.decimal.scala

class Foo extends Bar with {
   import Thing._
// ^^^^^^ keyword.declaration.import.scala
}

class Foo extends Bar.Baz with bin.Baz
//                ^^^^^^^ entity.other.inherited-class.scala
//                   ^ punctuation.accessor.scala
//                             ^^^^^^^ entity.other.inherited-class.scala
//                                ^ punctuation.accessor.scala

final case class

{
   final case =>
// ^^^^^ - variable
}

  val ~ = 42
//    ^ variable.other.constant.scala
  val \/- = 42
//    ^^^ variable.other.constant.scala

type ~[+A] = A
//     ^ keyword.operator
type ~[A <: B] = A
//       ^^ keyword.operator
type ~[A >: B] = A
//       ^^ keyword.operator

  +()
// ^^ - constant

for {
  // abc <-
} yield thing
//      ^^^^^ - variable

for (
  // abc <-
) yield thing
//      ^^^^^ - variable

for {
  abc /* <- */
} yield thing
//      ^^^^^ - variable

for {
  "abc <-"
} yield thing
//      ^^^^^ - variable

for {
   abc /* abc */ <-
// ^^^ variable.parameter.scala
} yield thing
//      ^^^^^ - variable

   <![CDATA[<sender>John Smith</sender>]]>
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.cdata.xml
// ^ - invalid
// ^^^^^^^^^ punctuation.definition.string.begin.xml
//           ^^^^^^ - entity
//                                     ^^^ punctuation.definition.string.end.xml
//                                       ^ - invalid

  <foo>
//^^^^^ text.xml meta.tag.xml
//^ punctuation.definition.tag.begin
// ^^^ entity.name.tag
//    ^ punctuation.definition.tag.end
//    ^ - text.xml text.xml
   <![CDATA[<sender>John Smith</sender>]]>
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ text.xml string.unquoted.cdata.xml
// ^ - invalid
// ^^^^^^^^^ punctuation.definition.string.begin.xml
//           ^^^^^^ - entity
//                                     ^^^ punctuation.definition.string.end.xml
//                                       ^ - invalid
  </foo>
//^^^^^^ text.xml meta.tag.xml
//^^ punctuation.definition.tag.begin
//  ^^^ entity.name.tag
//     ^ punctuation.definition.tag.end

   case class
// ^^^^ keyword.declaration.class.scala

new Monad[Catenable] with Traverse
//       ^ punctuation.definition.generic.begin.scala
//       ^^^^^^^^^^^ meta.generic.scala
//                 ^ punctuation.definition.generic.end.scala
//                   ^^^^ keyword.declaration.scala
//                        ^^^^^^^^ support.class.scala

   final class A
   final class B[A[_] <: B](a: B)
// ^^^^^ storage.modifier.other.scala
//       ^^^^^ keyword.declaration.class.scala
//             ^ entity.name.class.scala
//              ^^^^^^^^^^^ meta.generic.scala
//              ^ punctuation.definition.generic.begin.scala
//                ^ punctuation.definition.generic.begin.scala
//                  ^ punctuation.definition.generic.end.scala
//                    ^^ keyword.operator.bound.scala
//                        ^ punctuation.definition.generic.end.scala
//                         ^ punctuation.section.group.begin.scala
//                              ^ punctuation.section.group.end.scala

abc match {
  case $foo(bar) => ()
  //   ^^^^ - variable
}

   sealed trait Foo
   sealed trait Bar
// ^^^^^^ storage.modifier.other.scala
//        ^^^^^ keyword.declaration.class.scala
//              ^^^ entity.name.class.scala

package object foo extends Bar with Baz
//                 ^^^^^^^ storage.modifier.extends.scala
//                         ^^^ entity.other.inherited-class.scala
//                             ^^^^ storage.modifier.with.scala
//                                  ^^^ entity.other.inherited-class.scala

new RangeColumn(range) with LongColumn { def apply(row: Int) = a + row }
//                     ^^^^ keyword.declaration.scala
//                          ^^^^^^^^^^ support.class.scala
//                                       ^^^ keyword.declaration.function.scala

   implicit def M: Monad[M]
   implicit def Monad
// ^^^^^^^^ storage.modifier.other.scala
//          ^^^ keyword.declaration.function.scala
//              ^ entity.name.function.scala

  type Foo =
     Bar
//   ^^^ support.class.scala

  type Foo =

     Bar
//   ^^^ support.constant.scala - support.class

   type Foo = Unit
   type Bar = Unit
//      ^^^ entity.name.type.scala
//          ^ keyword.operator.assignment.scala

type =?>[A] = Any
//   ^^^ entity.name.type.scala
//      ^^^ meta.generic.scala
//      ^ punctuation.definition.generic.begin.scala
//        ^ punctuation.definition.generic.end.scala
  val x: Foo @> Bar
//           ^^ support.type.scala

val x: = 42
//       ^^ meta.number.integer.decimal.scala

   object Foo
   IO
// ^^ support.constant.scala

   class Foo()
   IO
// ^^ support.constant.scala

val a' = 42
//   ^ - entity.name

val ' = 42
//  ^ - entity.name

type Foo = Monad[OptionT[IO, ?]]
//                           ^ variable.language.hole.scala

type Foo = Monad[OptionT[IO, *]]
//                           ^ variable.language.hole.scala

type Foo = Monad[λ[α => OptionT[IO, α]]]
//               ^ keyword.operator.type-lambda.scala

type Foo = Monad[Lambda[α => OptionT[IO, α]]]
//               ^^^^^^ keyword.operator.type-lambda.scala

import scalaz._,
   Scalaz._
// ^^^^^^ meta.import.scala

import scalaz._
   Scalaz._
// ^^^^^^ support.constant.scala - meta.import

   for {
//     ^ punctuation.section.block.begin.scala
       _ <_
   } yield true
// ^ punctuation.section.block.end.scala
//   ^^^^^ keyword.control.flow.scala

   x: ResourceError \/ Resource
//    ^^^^^^^^^^^^^ support.class.scala
//                  ^^ support.type.scala
//                     ^^^^^^^^ support.class.scala

   type TS1 = trans.TransSpec1
   import library._
// ^^^^^^ - support.type

  type Foo = Thing { val a: Int }
  //               ^ punctuation.definition.block.begin.scala
  //                            ^ punctuation.definition.block.end.scala

  type Foo = (Bar op (Baz))
  //         ^ punctuation.definition.group.begin.scala
  //                 ^ punctuation.definition.group.begin.scala
  //                     ^ punctuation.definition.group.end.scala
  //                      ^ punctuation.definition.group.end.scala

   def identity: CFId
   override final def equals(other: Any): Boolean
// ^^^^^^^^ - support.type

   def blam(other: Foo forSome { val or: Repr }) =
//                                               ^ keyword.operator.assignment.scala

   type P = Repr.this
//               ^^^^ variable.language.scala

   type P = Repr.super
//               ^^^^^ variable.language.scala

a match {
//      ^ punctuation.section.block.begin.scala
  case x: b if Foo =>
//          ^^ keyword.control.flow.scala
//             ^^^ support.constant.scala
}

val foo: Abc if bar = 42
//           ^^ invalid.keyword.if-in-val-match.scala

val (a: Foo, b: Bar) = ()
//      ^^^ support.class.scala
//              ^^^ support.class.scala

   if (true)
     new BitSet
   else
// ^^^^ keyword.control.flow.scala
     ()

Data.Boolean()
//          ^^ - constant

        prop { k: Int Refined RPositive => }

tail: _ *
//    ^^^ keyword.operator.varargs.scala

    val Message(
      Address(from),
//            ^^^^ variable.other.constant.scala
      Address(to),
//            ^^ variable.other.constant.scala
      subject,
//    ^^^^^^^ variable.other.constant.scala
      Content(tpe, value)) = m
//            ^^^ variable.other.constant.scala
//                 ^^^^^ variable.other.constant.scala

{
  case Foo() =>
//        ^^ - constant
//        ^ punctuation.section.group.begin.scala
//         ^ punctuation.section.group.end.scala
  case foo(abc) =>
//     ^^^ support.constant.scala
//     ^^^ - variable
//        ^ punctuation.section.group.begin.scala
//            ^ punctuation.section.group.end.scala
  case foo() =>
//     ^^^ - variable
//        ^^ - constant
//        ^ punctuation.section.group.begin.scala
//         ^ punctuation.section.group.end.scala
}

val Foo() = 42
//     ^^ - constant
//     ^ punctuation.section.group.begin.scala
//      ^ punctuation.section.group.end.scala

val foo() = 42
//  ^^^ support.constant.scala - entity
//     ^^ - constant
//     ^ punctuation.section.group.begin.scala
//      ^ punctuation.section.group.end.scala

val (Foo(), _) = 42
//      ^^ - constant
//      ^ punctuation.section.group.begin.scala
//       ^ punctuation.section.group.end.scala

val (foo(), _) = 42
//   ^^^ support.constant.scala - entity
//      ^^ - constant
//      ^ punctuation.section.group.begin.scala
//       ^ punctuation.section.group.end.scala

for {
   _<- fu
// ^ variable.language.underscore.scala
//  ^^ keyword.operator.assignment.scala

   _← fu
// ^ variable.language.underscore.scala
//  ^ keyword.operator.assignment.scala

   _= fu
// ^ variable.language.underscore.scala
//  ^ keyword.operator.assignment.scala
}

for (_<- fu; _← fu; _= fu)
//  ^ punctuation.section.group.begin.scala
//   ^ variable.language.underscore.scala
//    ^^ keyword.operator.assignment.scala
//           ^ variable.language.underscore.scala
//            ^ keyword.operator.assignment.scala
//                  ^ variable.language.underscore.scala
//                   ^ keyword.operator.assignment.scala
//                       ^ punctuation.section.group.end.scala

   raw"foo\nbar\rbaz"
// ^^^ string.quoted.raw.interpolated.scala support.function.scala
//    ^ string.quoted.raw.interpolated.scala punctuation.definition.string.begin.scala
//     ^^^^^^^^^^^^^ string.quoted.raw.interpolated.scala
//        ^^ string.quoted.raw.interpolated.scala
//             ^^ string.quoted.raw.interpolated.scala
//                  ^ string.quoted.raw.interpolated.scala punctuation.definition.string.end.scala

case (foo => } abc
//             ^^^ - variable

val x: Any
//     ^^^ storage.type.primitive.scala

val x: AnyRef
//     ^^^^^^ storage.type.primitive.scala

val x: AnyVal
//     ^^^^^^ storage.type.primitive.scala

val x: Nothing
//     ^^^^^^^ storage.type.primitive.scala

fold(a => b, { case c => d })
//     ^^ keyword.declaration.function.arrow.lambda.scala
//                    ^^ keyword.declaration.function.arrow.case.scala

gzis =>/* foo */
//   ^^ keyword.declaration.function.arrow.lambda.scala
//     ^^^^^^^^^ comment.block.scala

gzis =>// foo
//   ^^ keyword.declaration.function.arrow.lambda.scala
//     ^^ comment.line.double-slash.scala punctuation.definition.comment.scala

s"testing '$foo' bar"
//        ^ string.quoted.interpolated.scala - variable
//             ^ string.quoted.interpolated.scala - variable

  class Context(var abc: Boolean, val fed: Int)
//              ^^^ storage.type.volatile.scala
//                  ^^^ variable.parameter.scala
//                                ^^^ storage.type.scala
//                                    ^^^ variable.parameter.scala

(abc)()
//   ^^ - constant

   type S = Map
   evalNT
// ^^^^^^ - support.type

   type S = Map x
   evalNT
// ^^^^^^ support.type.scala

   type S = Map x y
   evalNT
// ^^^^^^ - support.type

   type S = Map x y z
   evalNT
// ^^^^^^ support.type.scala

   type S = Map x y z q
   evalNT
// ^^^^^^ - support.type

   new Foo
   evalNT
// ^^^^^^ - support.type.scala

   def c: String
   override def d = "blah"
// ^^^^^^^^ storage.modifier.other.scala

   new DataCodec {
     import PreciseKeys._
//   ^^^^^^ meta.import.scala keyword.declaration.import.scala
//          ^^^^^^^^^^^ meta.import.scala
//                     ^ meta.import.scala punctuation.accessor.dot.scala
//                      ^ meta.import.scala variable.language.underscore.scala
   } foo
   bar
// ^^^ - support

type Foo = (Bar, Baz) => Result
//                    ^^ keyword.operator.arrow.scala
//                       ^^^^^^ support.class.scala

{
  case _: NumberFormatException =>
    val col = foo
//  ^^^ storage.type.stable.scala
//      ^^^ variable.other.constant.scala
//          ^ keyword.operator.assignment.scala
  case _: (NumberFormatException => Bar) => Bar
  //                                ^^^ support.class.scala
}

new AsyncException else data(i)
//                 ^^^^ keyword.control.flow.scala
//                      ^^^^ - support

type Foo = this.Bar
//              ^^^ support.class.scala

type Foo = super.Bar
//               ^^^ support.class.scala

new Foo().bar
//     ^ punctuation.section.group.begin.scala
//      ^ punctuation.section.group.end.scala
//        ^^^ - support

new Foo[A].bar
//     ^ punctuation.definition.generic.begin.scala
//       ^ punctuation.definition.generic.end.scala
//         ^^^ - support

val foo: () => Unit
//       ^^ - constant

type T = Foo => (Bar, Baz)
//       ^^^ support.class.scala
//               ^^^ support.class.scala
//                    ^^^ support.class.scala

new Array[Long]()
//             ^ punctuation.section.group.begin.scala
//              ^ punctuation.section.group.end.scala

val foo: Bar = baz
//     ^ punctuation.ascription.scala
//      ^ - punctuation

val (foo: Bar) = baz
//      ^ punctuation.ascription.scala

{
  case foo: Bar => baz
//        ^ punctuation.ascription.scala
}

foo: Bar
// ^ punctuation.ascription.scala

(foo: Bar) => 42
//  ^ punctuation.ascription.scala

def foo(bar: Baz): Unit
//         ^ punctuation.ascription.scala

class Foo(bar: Baz)
//           ^ punctuation.ascription.scala

val firstA :: firstB :: Nil = results
//  ^^^^^^ variable.other.constant.scala
//         ^^ - entity
//            ^^^^^^ variable.other.constant.scala
//                   ^^ - entity
//                      ^^^ support.constant.scala - entity

val (firstA :: firstB :: Nil) :: (secondA :: secondB :: Nil) :: Nil = results
//   ^^^^^^ variable.other.constant.scala
//          ^^ - entity
//             ^^^^^^ variable.other.constant.scala
//                    ^^ - entity
//                       ^^^ support.constant.scala - entity
//                                ^^^^^^^ variable.other.constant.scala
//                                        ^^ - entity
//                                            ^^^^^^ variable.other.constant.scala
//                                                      ^^^ support.constant.scala - entity
//                                                           ^^ - entity
//                                                              ^^^ support.constant.scala - entity

{
  case (firstA :: firstB :: Nil) :: (secondA :: secondB :: Nil) :: Nil => results
//      ^^^^^^ variable.parameter.scala
//             ^^ - variable
//                ^^^^^^ variable.parameter.scala
//                       ^^ - variable
//                          ^^^ support.constant.scala - variable
//                               ^^ - variable
//                                   ^^^^^^^ variable.parameter.scala
//                                           ^^ - variable
//                                              ^^^^^^^ variable.parameter.scala
//                                                      ^^ - variable
//                                                         ^^^ support.constant.scala - variable
//                                                              ^^ - variable
//                                                                 ^^^ support.constant.scala - variable
//                                                                        ^^^^^^^ - variable
}

   val JsonStreamEq:
   protected
// ^^^^^^^^^ storage.modifier.access.scala

foo == bar
//  ^^ keyword.operator.comparison.scala

foo != bar
//  ^^ keyword.operator.comparison.scala

foo eq bar
//  ^^ keyword.operator.comparison.scala

foo ne bar
//  ^^ keyword.operator.comparison.scala

:s@/
//^^ meta.group.scala meta.group.scala support.type.scala

{
  case Foo.Bar =>
//        ^ punctuation.accessor.scala
}

a: B

{
  case (_: A | _: B | (_: D)) | _: C =>
//       ^ punctuation.ascription.scala
//           ^ keyword.operator.or.scala
//              ^ punctuation.ascription.scala
//                  ^ keyword.operator.or.scala
//                    ^ punctuation.section.group.begin.scala
//                      ^ punctuation.ascription.scala
//                         ^ punctuation.section.group.end.scala
//                            ^ keyword.operator.or.scala
}

f[F[Throwable, +?]]
//             ^ keyword.operator.bound.scala
//              ^ variable.language.hole.scala

f[F[Throwable, -?]]
//             ^ keyword.operator.bound.scala
//              ^ variable.language.hole.scala

type abc = _ \/ a
//         ^ variable.language.underscore.scala
//           ^^ support.type.scala
//              ^ support.type.scala

{
  case _: _ \/ a =>
//          ^^ - support.type
}

new Foo()() with Bar
//     ^ punctuation.section.group.begin.scala
//      ^ punctuation.section.group.end.scala
//       ^ punctuation.section.group.begin.scala
//        ^ punctuation.section.group.end.scala
//          ^^^^ keyword.declaration.scala
//               ^^^ support.class.scala

completed: F[_ >: A] => B)
//             ^^ keyword.operator.bound.scala

    _()
//  ^ variable.language.underscore.scala
//   ^ punctuation.section.group.begin.scala
//    ^ punctuation.section.group.end.scala

{
   type Apply = F @uncheckedVariance
   type A
// ^^^^ storage.type.scala
//      ^ entity.name.type.scala
}

