// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"

// Tests for issue 1260

def defectiveSyntaxTest(String value) {
// <- storage.type.return-type
//  ^ entity.name.function
//                    ^ entity.name.function
//                      ^ storage.type.parameter
//                             ^ variable.parameter
	println value
}

void voidCheck(String value) {
// <- storage.type.return-type
//   ^ entity.name.function
//           ^ entity.name.function
//             ^ storage.type.parameter
//                    ^ variable.parameter
}

double interpretString(String value) {
// <- storage.type.return-type
//     ^ entity.name.function
//                   ^ entity.name.function
//                     ^ storage.type.parameter
//                            ^ variable.parameter
	return Double.parseDouble(value);
}

defectiveSyntaxTest("hello")
// <- meta.method
//                ^ meta.method
//                   ^ string.quoted.double

voidCheck(123456)
// <- meta.method
//      ^ meta.method
//         ^ constant.numeric

interpretString("123.0")
// <- meta.method
//            ^ meta.method
//               ^ string.quoted.double

chartHistogram([1,1,2,3])
// <- meta.method
//           ^ meta.method
//              ^ constant.numeric

def greeting = "Hello ${true ? 'World' : 'Home'}"
// <- storage.type.def
//^ storage.type.def
//           ^ keyword.operator.assignment
//             ^ punctuation.definition.string.begin
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                    ^^ punctuation.section.embedded
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.groovy.embedded.source
//                      ^^^^ constant.language
//                           ^^^^^^^^^^^^^^^^^^ meta.evaluation.ternary
//                                             ^^ - meta.evaluation.ternary
//                           ^ keyword.operator.ternary
//                             ^ punctuation.definition.string.begin
//                             ^^^^^^^ string.quoted.single
//                                   ^ punctuation.definition.string.end
//                                     ^ keyword.operator.ternary.expression-separator
//                                       ^ punctuation.definition.string.begin
//                                       ^^^^^^ string.quoted.single
//                                            ^ punctuation.definition.string.end
//                                             ^ punctuation.section.embedded
//                                              ^ punctuation.definition.string.end
//                                               ^ - string.quoted - invalid

def str = "
//        ^ string.quoted.double.groovy punctuation.definition.string.begin.groovy
//         ^ string.quoted.double.groovy invalid.illegal.unclosed-string.groovy
  "
//^ string.quoted.double.groovy punctuation.definition.string.begin.groovy
// ^ string.quoted.double.groovy invalid.illegal.unclosed-string.groovy
def str = "\
//        ^ string.quoted.double.groovy punctuation.definition.string.begin.groovy
//         ^^ string.quoted.double.groovy constant.character.escape.groovy
def str = "\
  "
//^ string.quoted.double.groovy punctuation.definition.string.end.groovy
