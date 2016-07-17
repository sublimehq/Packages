// SYNTAX TEST "Packages/Scala/Scala.sublime-syntax"

import scala.collection.mutable._
import scala.collection.immutable.{List => MutList, Set => _}
// ^ storage.type.module.import.scala
//      ^ variable.module.scala
//          ^ keyword.operator.accessor.scala
//                                ^ punctuation.definition.module-binding.begin
//                                   ^ variable.other.type.scala
//                                          ^ entity.name.class
//                                                          ^ punctuation.definition.module-binding.end

/** top level scala doc */
// <- comment.block.documentation.scala
package scala_syntax.test {
// ^ storage.type.module
//      ^ entity.name.module.scala
//                  ^ keyword.operator.accessor
  /**
// ^ comment.block.documentation.scala
   * Bar documentation
   * @author toto
//     ^ keyword.documentation.inventory.scala
   * @param a the content of this Bar
//     ^ keyword.documentation.parameter.scala
   * @todo finish Ba
   */
  class Bar(protected a: Int) {
//  ^ storage.type.class.class
//      ^ entity.name.class
//          ^ storage.modifier.access
//                    ^ variable.parameter
//                       ^ support.type.scala
//                            ^ punctuation.section.class.body.begin
    val unbar = MutList(1)
//  <- meta.class.scala
//  ^ storage.type.variable.val.scala
//        ^ entity.name.val

    // this is a comment
//     ^ comment.line.double-slash.scala
    def combine(that: Bar) = Bar(this.a + that.bar)
//  ^ storage.type.function
//        ^ entity.name.function
//               ^ variable.parameter
//                     ^ variable.other.type
//                         ^ keyword.operator.assignment
//                                 ^ support.variable.scala
//                                      ^ keyword.operator.scala

    /* this is another comment
//     ^ comment.block.scala
       with a TODO !
//             ^ comment.line.todo
    */
    def +=(x: Int) : Bar = Bar(a /* plus */  + x)
//  ^ storage.type.function
//       ^ entity.name.function
//         ^ variable.parameter
//             ^ support.type.scala
//                    ^ variable.other.type
//                       ^ keyword.operator.assignment.function
//                         ^ entity.name.constructor
//                                  ^ comment.block.scala
//                                           ^ keyword.operator.scala
  }
//^ punctuation.section.class.body.end

  case class BarBar(a: Int = 1, b: Boolean = false) extends Bar(a)
//  ^ storage.type.class.case-class
//      ^ storage.type.class.case-class
//           ^ entity.name.class
//                  ^ variable.parameter
//                           ^ constant.numeric.scala
//                              ^ variable.parameter
//                                  ^ support.type.scala
//                                           ^ constant.language.scala
//                                                    ^ storage.modifier.extends.scala
//                                                          ^ entity.other.inherited-class.scala

  trait Foo[T] {
    def add(t: T): T
// <- meta.class.scala
//  ^ meta.method.identifier.scala
//        ^ meta.method.identifier.scala
//                 ^ meta.method.identifier.scala
    def outer(x: T) = {
      def inner(y: Int) = {
        x + y
      }
      inner(x) + y
    }
  }
//^ punctuation.section.class.body.end

  abstract class FooBar
      extends Foo[Bar]
//      ^ storage.modifier.extends.scala
      with Bar(2 + 1)
//      ^ storage.modifier.extends.scala
  {
    val z= 1e+12f
//      ^ entity.name.val
//       ^ keyword.operator.assignment
//         ^ constant.numeric.scala
//             ^ constant.numeric.scala
    val y: Int = 0.1
//  ^ storage.type.variable.val.scala
//       ^ punctuation.separator.type.scala
//                ^ constant.numeric.scala
//                 ^ constant.numeric.scala


    var !#%&*+-/:<=>?@\^|~ : Int = 1 // all simple opchars
//  ^ storage.type.variable.var.scala
//              ^ entity.name.val.scala
//                ^ entity.name.val.scala
//                           ^ support.type.scala
//                               ^ keyword.operator.assignment
//                                 ^ constant.numeric.scala
//                                   ^ comment.line.double-slash
    val !#%&*+-/:<=>?@\^ = 2.15f
//              ^ entity.name.val.scala
    val `val` = Math.Pi
//      ^ entity.name.val.scala
//          ^ entity.name.val.scala
//            ^ keyword.operator.assignment

    val simpleName = 0xAEF
//                   ^ constant.numeric.scala
//                    ^ constant.numeric.scala
    val simpleName2: Float with Foo = 1
    var withDigitsAndUnderscores_ab_12_ab12 = 1
//                               ^ entity.name.val
//                                  ^ entity.name.val
//                                        ^ entity.name.val
    val wordEndingInOpChars_!^ : Int = 1
    val !^© = 1 // opchars ans symbols
//        ^ entity.name.val
    val abc_!^= : Int = 1 // mixing letters and symbols
//            ^ entity.name.val
    def abc_*^= : Int = 1
//            ^ entity.name.function

    def abc_^= : Foo[Bar]
//  ^ storage.type.function
//           ^ entity.name.function
//               ^ variable.other.type
//                  ^ punctuation.definition.arguments.type.begin.scala
//                   ^ variable.other.type
//                      ^ punctuation.definition.arguments.type.end.scala

    val List((x1: Int, y1), (x2, y2)) = ((10, 5), (1, 2))
//  ^ storage.type.variable.val.scala
//      ^ entity.name.constructor.unapply
//          ^ punctuation.definition.arguments
//           ^ punctuation.definition.arguments
//            ^ entity.name.val.scala
//              ^ punctuation.separator.type.scala
//                   ^ punctuation.separator.argument
//                     ^ entity.name.val.scala
//                       ^ punctuation.definition.arguments
//                        ^ punctuation.separator.argument
//                          ^ punctuation.definition.arguments
//                                 ^ punctuation.definition.arguments
//                                  ^ punctuation.definition.arguments
//                                    ^ keyword.operator.assignment

    val Some(x, a) = f()         // a pattern definition
//  ^ storage.type.variable.val.scala
//      ^ entity.name.constructor.unapply
    val x :: xs = List(1, 2, 3)      // an infix pattern definition
//  ^ storage.type.variable.val.scala
//      ^ entity.name.val.scala
//        ^ keyword.operator.scala
//           ^ entity.name.val.scala
//              ^ keyword.operator.assignment
//                      ^ punctuation.separator.argument
    var (x: Int) :: (xs: List[Int]) = List(1, 2, 3)
//  ^ storage.type.variable.var.scala
//       ^ entity.name.val.scala
//               ^ keyword.operator.scala
//                   ^ entity.name.val.scala
//                                  ^ keyword.operator.assignment
    @tailrec
//  ^ entity.name.tag
    def abc(a: Int)(implicit b: Boolean) : Int = {
//  ^ storage.type.function
//      ^ entity.name.function
//          ^ variable.parameter
//              ^ support.type.scala
//                 ^ punctuation.definition.parameters.function.begin.scala
//                     ^ storage.modifier.other
//                           ^ variable.parameter
//                                     ^ punctuation.definition.parameters.function.end.scala
//                                       ^ punctuation.separator.type.scala
//                                             ^ keyword.operator.assignment.function.scala
      if (b) 1 else abc(a - 1, a)(a < 0)
//    ^ keyword.control.conditional.if.scala
//             ^ keyword.control.conditional.else.scala
      else 3
//    ^ - keyword.control.conditional.else.scala
//    ^ invalid.illegal

      if(b) 1
//    ^ keyword.control.conditional.if.scala
      else if (!b) 0
//    ^ keyword.control.conditional.elseif.scala
      else throw new Exception("Boolean algebra is bullshit")
//    ^ keyword.control.conditional.else.scala
    }

    /** Prints the message with the given foo
      * @tparam F the type of the given foo
//    ^ comment.block.documentation.scala
//      ^ keyword.documentation.parameter.scala
//              ^ variable.other.type
      */
    def printMessage[F <: Foo](foo: F, a: Int) =
      println(s"Foo: $foo, n: ${a + 2}")
//       ^ support.function.scala
//            ^ punctuation.definition.string.interpolated.begin.scala
//                   ^ punctuation.definition.string.interpolated.element.scala
//                    ^ source string source
//                            ^ punctuation.definition.string.interpolated.element.begin.scala
//                                   ^ punctuation.definition.string.interpolated.element.end.scala
//                                    ^ punctuation.definition.string.interpolated.end.scala
  }

  trait Readable[T] {
    type Tbis=T
    type Tter[T] = Func[T, T]
    type Reader

    def read(s: String): Option[T] = 1
  }

  class Endo[T] extends Function1[T, T] {
    def comp(that: Endo[T]) = new Endo[T]{
      def apply(x: T) = this(that(x))
    }
  }

  def toplevel[A](x: List[A], f: A => Boolean) =
    x.filter(f)

  case class Foo[T](a: T, n: Int = 0 + 1)
    extends FooBar(n + 1) with Bar

  case class ScalaBook(version: Double, authors: List[String])

  object Main extends App {
    val x = 2 + 5 - 1 * 0x3ff - 1515497995213545l
    val f = x => x + 5 / 2f * 2.0f * 1.98 * 1e-12 * 1.01E+15

    if (1 + 1 == 2) println("Bazinga!")
//  ^ keyword.control.conditional.if.scala
//                  ^ support.function.scala
    else println("***stack underflow error***")

    for(i <- 0 to 10)
      println(i)

    var leet = Map(
      'e' -> 3, 'a' -> 4, 's' -> 5
    )

    val chars = List('a', 'oko', '\n', '\u0002', '\', '\\', '1')
//               ^ support.class entity.name.constructor.scala
    val how = "how"
    val e = "e"
    val quotes = List(
      "\"It is the obvious which is so difficult to see most of the time.\n",
      "People say 'It's as plain as the nose on your face.' /* fake comment */",
      s" But $how much of the nose on your face can you s${e + e}, \unless someone holds a mirror up to you?”",
    )

    val laws = """
      |1: A robot may not injure a human being or, through inaction, allow a human being to come to harm;
      |2: A robot must obey the orders given it by human beings except where such orders would conflict with the First Law;
      |3: A robot must protect its own existence as long as such protection does not conflict with the First or Second Law;
//  <- string.quoted.triple.scala
    """.stripMargin

    val bar = new Bar(2)
    val barbar = new BarBar(1, b = 2)
    val interpolated = s"${barbar + 1} and $bar love to go to the be\u1ea1ch."
    val x = 3.054e2
    val formatted1 = f"x: $x%+,.3f ca"
    val formatted2 = f"date: $x%T \u0002 \124 \ "
    val raw_string = raw"toto\u1221n\125\n"
    val tuple = (1 , 2)
    val X11 = X12a.x11b
//       ^ entity.name.val
//             ^ variable
//                   ^ variable

    private def read[T <: Readable[T]](x: T, expr_!: : String, start: Int): T = {
      val maybeRes : Option[T] = x.read(expr_!:.substring(start))

      try {
//    ^ keyword.control.trycatch.try.scala
//        ^ punctuation.section.trycatch.begin.scala
        res match {
//        ^ variable.other
//            ^ keyword.control.switch.scala
          case Some(y): Int => y
//             ^ entity.name.constructor.unapply
          case _ : Int => throw new Exception("Can't parse: " + expr_!:)
//          ^ keyword.control.switch.case.scala
//                     ^ punctuation.separator.key-value.switch.scala
        }
      } catch {
//    ^ punctuation.section.trycatch.end.scala
//       ^ keyword.control.trycatch.catch.scala
//            ^ punctuation.section.trycatch.begin.scala
        case e: Exception => println("plouf")
//       ^ keyword.control.trycatch.case.scala
//                        ^ punctuation.separator.key-value.switch.scala
      } finally {
//       ^ keyword.control.trycatch.finally.scala
      }
      m
    }
//  ^ punctuation.section.function.body.end.scala

    def complex_contructor(a: Int) = {
      new Foo(a) with Bar[Int] with Any
//    ^ keyword.operator.new
//         ^ variable.other.type.scala meta.instantiation.scala
//               ^ keyword.operator.new.with
//                    ^ variable.other.type.scala meta.instantiation.scala
    }

    val scalaBook = new ScalaBook(0.1, List("Martin Odersky"))
    val b = <book>
          <title>The Scala Language Specification</title>
          <version>{scalaBook.version + 1}</version>
          <authors>{scalaBook.authors}</authors>
        </book>
        </book>
//      ^ invalid.illegal

    class Inline { def inline = x }
//               ^ punctuation.section.class.body.begin
//                                ^ punctuation.section.class.body.end
//                               ^ meta.method
//                                ^ -meta.method

    def matchCaseWithIf(animal: Animal) = {
      animal match {
        case x: Duck if x.hasTwoLegs => x.qwack
//       ^ keyword.control.switch.case.scala
//           ^ entity.name.val.scala
//            ^ punctuation.separator.type.scala
//                    ^ keyword.control.conditional.if.scala
//                                    ^ punctuation.separator.key-value.switch.scala
        case Legged(4, 1) if true => animal.run
//                  ^ constant.numeric.scala
//                   ^ punctuation.separator.argument
//                        ^ keyword.control.conditional.if.scala
//                                ^ punctuation.separator.key-value.switch.scala
        case Shout("waf") => animal.shout()
//                 ^ punctuation.definition.string
        case _ => do_default
      }
    }

    def forLoop(bound: Int) = {
      for(i <- 1 to bound; j <- 1 to 2 * bound if j % 5 == 0)
//    ^ keyword.control.loop.for.scala
//       ^ punctuation.definition.expression.loop.begin
//        ^ entity.name.val
//          ^ punctuation.separator.key-value
//                  ^ variable.other.scala
//                       ^ punctuation.separator.loop-expression
//                         ^ entity.name.val
        println(s"($i, $j)")
    }

    def forLoop(bound: Int) = {
      for(i <- 1 to bound; j <- 1 to 2 * bound if j % 5 == 0)
//    ^ keyword.control.loop.for.scala
//       ^ punctuation.definition.expression.loop.begin
//        ^ entity.name.val
//          ^ punctuation.separator.key-value
//                  ^ variable.other.scala
//                       ^ punctuation.separator.loop-expression
//                         ^ entity.name.val
        println(s"($i, $j)")
    }

    def doLoop(x: Int) = {
      var i = 0
      do {
//    ^ keyword.control.loop.do.scala
//       ^ punctuation.section.loop.begin
        i += 1
      } while (i < x)
//      ^ keyword.control.loop.while.scala
//            ^ punctuation.definition.expression.loop.begin
      i = 0
      do
//    ^ keyword.control.loop.do.scala
        i += 1
      while (i < x)
//      ^ keyword.control.loop.while.scala
//          ^ punctuation.definition.expression.loop.begin
    }

    def whileLoop(x: Int) = {
      var i = 0
      while (i < x){
//      ^ keyword.control.loop.while.scala
//          ^ punctuation.definition.expression.loop.begin
//                 ^ punctuation.section.loop.begin
        i += 1
      }
      while (i < x)
        i += 1
//      ^ meta.block.loop.while
    }
//^ - meta.block.loop.while

    private[this] a = 1
//         ^ punctuation.definition.arguments.begin
//          ^ support.variable
//              ^ punctuation.definition.arguments.end
    private[thiz] a_ = 1
//         ^ punctuation.definition.arguments.begin
//          ^ variable.module
//              ^ punctuation.definition.arguments.end
  }
}

}
// <- invalid.illegal
