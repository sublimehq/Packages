// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"

// Merge Conflict Marker Tests

<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation

// Tests for issue 1260

def defectiveSyntaxTest(String value) {
// <- meta.definition.method.groovy keyword.declaration.function.groovy
//  ^^^^^^^^^^^^^^^^^^^ entity.name.function
//                     ^ meta.definition.method.groovy punctuation.definition.parameters.begin.groovy
//                      ^^^^^^ storage.type.parameter
//                             ^^^^^ variable.parameter
//                                  ^ meta.definition.method.groovy punctuation.definition.parameters.end.groovy
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
//                 ^ meta.function-call.arguments.groovy punctuation.section.arguments.begin.groovy
//                  ^^^^^^^ meta.function-call.arguments.groovy string.quoted.double.groovy
//                         ^ meta.function-call.groovy punctuation.section.arguments.end.groovy

voidCheck(123456)
// <- meta.function-call.identifier.groovy variable.function.groovy
//^^^^^^^ meta.function-call.identifier.groovy variable.function.groovy
//       ^ meta.function-call.arguments.groovy punctuation.section.arguments.begin.groovy
//        ^^^^^^ meta.function-call.arguments.groovy constant.numeric.groovy
//              ^ meta.function-call.groovy punctuation.section.arguments.end.groovy
//               ^ - meta.function-call

chartHistogram([1,1,2,3])
// <- meta.function-call.identifier.groovy variable.function.groovy
//^^^^^^^^^^^^ meta.function-call.identifier.groovy variable.function.groovy
//            ^^^^^^^^^^ meta.function-call.arguments.groovy
//            ^ punctuation.section.arguments.begin.groovy
//             ^^^^^^^^^ meta.structure.groovy
//             ^ punctuation.definition.structure.begin.groovy
//              ^ constant.numeric.groovy
//               ^ punctuation.definition.separator.groovy
//                     ^ punctuation.definition.structure.end.groovy
//                      ^ meta.function-call.groovy punctuation.section.arguments.end.groovy - meta.structure

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
