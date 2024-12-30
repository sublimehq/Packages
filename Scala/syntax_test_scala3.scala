// SYNTAX TEST "Packages/Scala/Scala.sublime-syntax"
// this test is designed to check the Scala 3 specific features

val then = 42
//  ^^^^ variable.other.constant.scala

if x < 0 then
//       ^^^^ keyword.control.flow.scala
  "negative"
else if x == 0 then
//             ^^^^ keyword.control.flow.scala
  "zero"
else
  "positive"

if x < 0 then -x else x
//       ^^^^ keyword.control.flow.scala

while x >= 0 do x = f(x)
//           ^^ keyword.control.flow.scala

for x <- xs if x > 0
//  ^ variable.parameter.scala
//    ^^ keyword.operator.assignment.scala
yield x * x

for
  x <- xs
//^ variable.parameter.scala
//  ^^ keyword.operator.assignment.scala
  y <- ys
//^ variable.parameter.scala
//  ^^ keyword.operator.assignment.scala
do
  println(x + y)

try body
catch case ex: IOException => handle;

fooBar:
  //  ^ punctuation.section.begin.scala
  test
  test

ohboy: x => 42
// ^^ - variable
//   ^ punctuation.section.begin.scala
//     ^ variable.parameter.scala
//       ^^ keyword.declaration.function.arrow.lambda.scala

againmore: (x, y) => 42
//          ^ variable.parameter.scala
//             ^ variable.parameter.scala

againmore: (x, y)
//         ^ punctuation.definition.group.begin.scala
//          ^ support.type.scala
//           ^ punctuation.separator.scala
//             ^ support.type.scala
//              ^ punctuation.definition.group.end.scala

confusion: (x: Int) => 12
//          ^ variable.parameter.scala
//           ^ punctuation.ascription.scala
//             ^^^ storage.type.primitive.scala

foo(x: Int, y => 42)
//   ^ punctuation.ascription.scala
//        ^ punctuation.separator.scala
//          ^ variable.parameter.scala.
//               ^^ constant.numeric.value.scala

def foo =
  ()
end foo
// <- keyword.control.section.end.scala
//  ^^^ - support - keyword

object C:
//      ^ punctuation.section.begin.scala
end C
// <- keyword.control.section.end.scala
//  ^ - support - keyword


end this
//  ^^^^ variable.language.scala

end extension
//  ^^^^^^^^^ keyword.declaration.extension.scala

end given
//  ^^^^^ keyword.declaration.given.scala

end new
//  ^^^ keyword.other.scala

end try
//  ^^^ keyword.control.exception.scala

end if
//  ^^ keyword.control.flow.scala

end match
//  ^^^^^ keyword.control.flow.scala

end val
//  ^^^ storage.type.stable.scala

end while
//  ^^^^^ keyword.control.flow.scala

end for
//  ^^^ keyword.control.flow.scala

List[?]
//   ^ variable.language.hole.scala
Map[? <: AnyRef, ? >: Null]
//  ^ variable.language.hole.scala
//               ^ variable.language.hole.scala

given intOrd: Ord[Int] with
// <- keyword.declaration.given.scala
//    ^^^^^^ variable.other.constant.scala
//          ^ punctuation.ascription.scala
//            ^^^ support.class.scala
//                ^^^ storage.type.primitive.scala
//                     ^^^^ keyword.declaration.scala

given listOrd[T](using ord: Ord[T]): Ord[List[T]] with
// <- keyword.declaration.given.scala
//    ^^^^^^^ variable.other.constant.scala
//            ^ support.class.scala
//               ^^^^^ storage.modifier.other.scala
//                     ^^^ variable.parameter.scala
//                          ^^^ support.class.scala

given Ord[Int] with
// <- keyword.declaration.given.scala
//    ^^^ support.class.scala
//        ^^^ storage.type.primitive.scala
//             ^^^^ keyword.declaration.scala

given [T](using Ord[T]): Ord[List[T]] with
// <- keyword.declaration.given.scala
//     ^ support.class.scala
//        ^^^^^ storage.modifier.other.scala
//              ^^^ support.class.scala
//                                    ^^^^ keyword.declaration.scala

given global: ExecutionContext = ForkJoinPool()
// <- keyword.declaration.given.scala
//    ^^^^^^ variable.other.constant.scala
//            ^^^^^^^^^^^^^^^^ support.class.scala
//                             ^ keyword.operator.assignment.scala

given Position = enclosingTree.position
// <- keyword.declaration.given.scala
//    ^^^^^^^^ support.class.scala
//             ^ keyword.operator.assignment.scala

given (using config: Config): Factory = MemoizingFactory(config)
// <- keyword.declaration.given.scala
//     ^^^^^ storage.modifier.other.scala
//           ^^^^^^ variable.parameter.scala
//                   ^^^^^^ support.class.scala

for given Context <- applicationContexts do
//  ^^^^^ keyword.declaration.given.scala
//        ^^^^^^^ support.class.scala
//                ^^ keyword.operator.assignment

pair match
  case (ctx @ given Context, y) => ()
//            ^^^^^ keyword.declaration.given.scala
//                  ^^^^^^^ support.class.scala

def max[T](x: T, y: T)(using ord: Ord[T]): T
//                     ^^^^^ storage.modifier.other.scala
//                           ^^^ variable.parameter.scala
//                                ^^^ support.class.scala

max(2, 3)(using intOrd)
//        ^^^^^ storage.modifier.other.scala

def maximum[T](xs: List[T])(using Ord[T]): T
//                          ^^^^^ storage.modifier.other.scala
//                                ^^^ support.class.scala

class GivenIntBox(using val usingParameter: Int)
//                ^^^^^ storage.modifier.other.scala
//                      ^^^ storage.type.scala
//                          ^^^^^^^^^^^^^^ variable.parameter.scala

class GivenIntBox2(using usingParameter: Int)
//                 ^^^^^ storage.modifier.other.scala
//                       ^^^^^^^^^^^^^^ variable.parameter.scala

import b.given
//       ^^^^^ storage.modifier.other.scala

def f(u: Universe)(using ctx: u.Context)(using s: ctx.Symbol, k: ctx.Kind)
//                                       ^^^^^ storage.modifier.other.scala
//                                             ^ variable.parameter.scala
//                                                ^^^ support.type.scala
//                                                            ^ variable.parameter.scala
//                                                               ^^^ support.type.scala

given ctx : global.Context with { type Symbol; type Kind }
//    ^^^ variable.other.constant.scala
//        ^ punctuation.ascription.scala
//          ^^^^^^ support.type.scala
//                                     ^^^^^^ entity.name.type.scala

import foo.*
//         ^ variable.language.wildcard.scala

import foo.{*, given}
//          ^ variable.language.wildcard.scala
//             ^^^^^ storage.modifier.other.scala

import foo.given T
//               ^ support.class.scala
import foo.{given A, given B}
// <- keyword.declaration.import.scala
//          ^^^^^ storage.modifier.other.scala
//                ^ support.class.scala
//                   ^^^^^ storage.modifier.other.scala

import Instances.{im, given Ordering[?]}
//                          ^^^^^^^^ support.class.scala
//                                   ^ variable.language.hole.scala

import Instances.given Ordering[?] with Other
//                     ^^^^^^^^ support.class.scala
//                              ^ variable.language.hole.scala
//                                 ^^^^ keyword.declaration.scala
//                                      ^^^^^ support.class.scala

extension (c: Circle)
// <- keyword.declaration.extension.scala
//        ^ punctuation.section.group.begin.scala
//         ^ variable.parameter.scala
//            ^^^^^^ support.class.scala
//                  ^ punctuation.section.group.end.scala

extension [T](xs: List[T])
// <- keyword.declaration.extension.scala
//        ^ punctuation.definition.generic.begin.scala
//         ^ support.class.scala
//          ^ punctuation.definition.generic.end.scala
//            ^^ variable.parameter.scala
//                ^^^^ support.class.scala

extension [T: Numeric](x: T)
// <- keyword.declaration.extension.scala
//        ^ punctuation.definition.generic.begin.scala
//         ^ support.class.scala
//          ^ keyword.operator.bound.scala
//            ^^^^^^^ support.class.scala
//                   ^ punctuation.definition.generic.end.scala
//                     ^ variable.parameter.scala
//                        ^ support.class.scala

extension [T](x: T)(using n: Numeric[T])
//                  ^^^^^ storage.modifier.other.scala
//                        ^ variable.parameter.scala

extension (i: Int) def isZero: Boolean = i == 0
//                 ^^^ keyword.declaration.function.scala
//                     ^^^^^^ entity.name.function.scala
//                                     ^ keyword.operator.assignment.scala

enum Tree[T] derives Eq, Ordering, Show:
// <- keyword.declaration.enum.scala
//   ^^^^ entity.name.enum.scala
//       ^ punctuation.definition.generic.begin.scala
//        ^ support.class.scala
//         ^ punctuation.definition.generic.end.scala
//           ^^^^^^^ storage.modifier.derives.scala
//                   ^^ entity.other.inherited-class.scala
//                     ^ punctuation.separator.scala
//                       ^^^^^^^^ entity.other.inherited-class.scala
//                               ^ punctuation.separator.scala
//                                 ^^^^ entity.other.inherited-class.scala
//                                     ^ punctuation.section.begin.scala

class Foo extends Bar, Baz, Bin
//                ^^^ entity.other.inherited-class.scala
//                   ^ punctuation.separator.scala
//                     ^^^ entity.other.inherited-class.scala
//                        ^ punctuation.separator.scala
//                          ^^^ entity.other.inherited-class.scala


x: [A] =>> Foo[A]
// ^ punctuation.definition.generic.begin.scala
//  ^ support.class.scala
//   ^ punctuation.definition.generic.end.scala
//     ^^^ keyword.operator.arrow.type-lambda.scala
//         ^^^ support.class.scala

x: [A, B[_], C] =>> Foo[A, B, C]
// ^ punctuation.definition.generic.begin.scala
//  ^ support.class.scala
//       ^ variable.language.underscore.scala
//              ^^^ keyword.operator.arrow.type-lambda.scala
//                  ^^^ support.class.scala

type Y =
  [A] =>> Foo
//    ^^^ keyword.operator.arrow.type-lambda.scala

type Executable[T] = ExecutionContext ?=> T
//                                    ^^^ keyword.operator.arrow.type-context.scala

opaque type Logarithm = Double
// <- storage.modifier.other.scala
//     ^^^^ storage.type.scala

type Foo = A & B
//           ^ keyword.operator.and.scala
type Foo = A | B
//           ^ keyword.operator.or.scala

case a: A | b: B => ()
//   ^ variable.parameter.scala
//        ^ keyword.operator.or.scala
//          ^ variable.parameter.scala

{ x: A | B => () }
//     ^ keyword.operator.or.scala
//       ^ support.class.scala

type F = (e: Entry, b: Other) => e.Key
//        ^ variable.parameter.scala
//         ^ punctuation.ascription.scala
//                ^ punctuation.separator.scala
//                            ^^ keyword.operator.arrow.scala
//                               ^ support.type.scala

type F = [A] => List[A] => Seq[A]
//           ^^ keyword.operator.arrow.scala
//              ^^^^ support.class.scala
//                      ^^ keyword.operator.arrow.scala
//                         ^^^ support.class.scala

type F = ((e: Entry, b: Other) => e.Key)
//         ^ variable.parameter.scala
//          ^ punctuation.ascription.scala
//                 ^ punctuation.separator.scala
//                             ^^ keyword.operator.arrow.scala
//                                ^ support.type.scala

type F = ([A] => List[A] => Seq[A])
//            ^^ keyword.operator.arrow.scala
//               ^^^^ support.class.scala
//                       ^^ keyword.operator.arrow.scala
//                          ^^^ support.class.scala

type Elem[X] = X match
//             ^ support.class.scala
//               ^^^^^ keyword.control.flow.scala
   case String => Foo
// ^^^^ keyword.declaration.other.scala
//      ^^^^^^ support.class.scala
//             ^^ keyword.declaration.function.arrow.case.scala
//                ^^^ support.class.scala
   case Array[t] => t
// ^^^^ keyword.declaration.other.scala
//      ^^^^^ support.class.scala
//           ^ punctuation.definition.generic.begin.scala
//            ^ support.type.scala
//             ^ punctuation.definition.generic.end.scala
//               ^^ keyword.declaration.function.arrow.case.scala
//                  ^ support.type.scala

case Foo => ()
//   ^^^ support.constant.scala

type Elem[X] = X match {
//             ^ support.class.scala
//               ^^^^^ keyword.control.flow.scala
//                     ^ punctuation.definition.block.begin.scala


   case String => Foo
// ^^^^ keyword.declaration.other.scala
//      ^^^^^^ support.class.scala
//             ^^ keyword.declaration.function.arrow.case.scala
//                ^^^ support.class.scala


   case Array[t] => t
// ^^^^ keyword.declaration.other.scala
//      ^^^^^ support.class.scala
//           ^ punctuation.definition.generic.begin.scala
//            ^ support.type.scala
//             ^ punctuation.definition.generic.end.scala
//               ^^ keyword.declaration.function.arrow.case.scala
//                  ^ support.type.scala


}
// <- punctuation.definition.block.end.scala

trait Greeting(val name: String)
//                 ^^^^ variable.parameter.scala

class D extends C, Greeting("Bill")
//                          ^^^^^^ string.quoted.double.scala

class D extends C with Greeting("Bill")
//                              ^^^^^^ string.quoted.double.scala

trait ImpliedGreeting(using val iname: ImpliedName)
//                    ^^^^^ storage.modifier.other
