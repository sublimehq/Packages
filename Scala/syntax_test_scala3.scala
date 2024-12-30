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
