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
