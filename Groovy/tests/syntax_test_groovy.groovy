// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"
// <- source.groovy

// Tests for issue 1260

def defectiveSyntaxTest(String value) {
// <- meta.definition.method.groovy keyword.declaration.function
//  ^^^^^^^^^^^^^^^^^^^ entity.name.function
//                     ^ meta.definition.method punctuation.definition.parameters.begin
//                      ^^^^^^ storage.type.parameter
//                             ^^^^^ variable.parameter
//                                  ^ meta.definition.method punctuation.definition.parameters.end
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
// <- meta.function-call.identifier
//^^^^^^^^^^^^^^^^^ meta.function-call.identifier
//                 ^ meta.function-call.arguments punctuation.section.arguments.begin
//                  ^^^^^^^ meta.function-call.arguments string.quoted.double
//                         ^ meta.function-call punctuation.section.arguments.end

voidCheck(123456)
// <- meta.function-call.identifier variable.function
//^^^^^^^ meta.function-call.identifier variable.function
//       ^ meta.function-call.arguments punctuation.section.arguments.begin
//        ^^^^^^ meta.function-call.arguments constant.numeric
//              ^ meta.function-call punctuation.section.arguments.end
//               ^ - meta.function-call

chartHistogram([1,1,2,3])
// <- meta.function-call.identifier variable.function
//^^^^^^^^^^^^ meta.function-call.identifier variable.function
//            ^^^^^^^^^^ meta.function-call.arguments
//            ^ punctuation.section.arguments.begin
//             ^^^^^^^^^ meta.structure
//             ^ punctuation.definition.structure.begin
//              ^ constant.numeric
//               ^ punctuation.definition.separator
//                     ^ punctuation.definition.structure.end
//                      ^ meta.function-call punctuation.section.arguments.end - meta.structure

def greeting = "Hello ${true ? 'World' : 'Home'}"
// <- storage.type.def
//^ storage.type.def
//           ^ keyword.operator.assignment
//             ^ punctuation.definition.string.begin
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                    ^^ punctuation.section.interpolation.begin
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
//                                             ^ punctuation.section.interpolation.end
//                                              ^ punctuation.definition.string.end
//                                               ^ - string.quoted - invalid

def str = "
//        ^ string.quoted.double punctuation.definition.string.begin
//         ^ string.quoted.double invalid.illegal.unclosed-string
  "
//^ string.quoted.double punctuation.definition.string.begin
// ^ string.quoted.double invalid.illegal.unclosed-string
def str = "\
//        ^ string.quoted.double punctuation.definition.string.begin
//         ^^ string.quoted.double constant.character.escape
def str = "\
  "
//^ string.quoted.double punctuation.definition.string.end
