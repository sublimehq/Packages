// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax" \
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
//             ^^^^^^^^^ meta.sequence
//             ^ punctuation.section.sequence.begin
//              ^ constant.numeric
//               ^ punctuation.separator.sequence
//                     ^ punctuation.section.sequence.end
//                      ^ meta.function-call punctuation.section.arguments.end - meta.sequence

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
//  ^ string.quoted.double punctuation.definition.string.begin
//   ^ string.quoted.double invalid.illegal.unclosed-string

def str = "\
//        ^ string.quoted.double punctuation.definition.string.begin \
//         ^^ string.quoted.double constant.character.escape \
    "
//  ^ string.quoted.double punctuation.definition.string.end


//[ STRINGS ]//////////////////////////////////////////////////////////////// \


multilineSingle = '''
//                ^^^ string.quoted.single.block punctuation.definition.string.begin
    '''
//  ^^^ string.quoted.single.block punctuation.definition.string.end

multilineDouble = """
//                ^^^ string.quoted.double.block punctuation.definition.string.begin
    """
//  ^^^ string.quoted.double.block punctuation.definition.string.end

multilineDollarSlashy = $/
//                      ^^ string.quoted.other.dollar-slashy punctuation.definition.string.begin
    /$
//  ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

escapedNewlineSingle = '\
//                     ^ string.quoted.single punctuation.definition.string.begin \
//                      ^^ constant.character.escape - invalid.illegal.unclosed-string \
    '
//  ^ string.quoted.single punctuation.definition.string.end

escapedNewlineDouble = "\
//                     ^ string.quoted.double punctuation.definition.string.begin \
//                      ^^ string.quoted.double constant.character.escape - invalid.illegal.unclosed-string \
    "
//  ^ string.quoted.double punctuation.definition.string.end

escapeNewlineTripleSingle = '''\
//                          ^^^ string.quoted.single.block punctuation.definition.string.begin
//                             ^^ string.quoted.single.block constant.character.escape - invalid.illegal.unclosed-string
    '''
//  ^^^ string.quoted.single.block punctuation.definition.string.end

escapeNewlineTripleDouble = """\
//                          ^^^ string.quoted.double.block punctuation.definition.string.begin
//                             ^^ string.quoted.double.block constant.character.escape - invalid.illegal.unclosed-string
    """
//  ^^^ string.quoted.double.block punctuation.definition.string.end

escapedNewlineInterpolated = "${\
//                              ^^ string.quoted.double source.groovy.embedded.source constant.character.escape
}";

escapeInterpolation = "\${notInterpolated}"
//                    ^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                     ^^ constant.character.escape - punctuation.section.embedded
//                       ^^^^^^^^^^^^^^^^^ - source.groovy.embedded.source

validEscapesSingle = '\$\'\"\t\n\r\t\f\b\u00D7\\'
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single constant.character.escape

validEscapesDouble = "\$\'\"\t\n\r\t\f\b\u00D7\\"
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double constant.character.escape

validEscapesTripleSingle = '''\$\'\"\t\n\r\t\f\b\u00D7\\'''
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block constant.character.escape

validEscapesTripleDouble = """\$\'\"\t\n\r\t\f\b\u00D7\\"""
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block constant.character.escape

validEscapesSlashy= /\/\u00D7/
//                   ^^^^^^^^ string.regexp constant.character.escape

invalidEscapesSingle = '\y \1 \+ \{'
//                      ^^^^^^^^^^^ string.quoted.single - constant.character.escape

invalidEscapesDouble = "\y \1 \+ \{"
//                      ^^^^^^^^^^^ string.quoted.double - constant.character.escape

invalidEscapesTripleSingle = '''\y \1 \+ \{'''
//                              ^^^^^^^^^^^ string.quoted.single.block - constant.character.escape

invalidEscapesTripleDouble = """\y \1 \+ \{"""
//                              ^^^^^^^^^^^ string.quoted.double.block - constant.character.escape

regularCharactersSlashy = /\$\'\"\t\n\r\t\f\b\y\1\+\{/
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp - constant.character.escape

regularCharactersDollarSlashy = $/\$\'\"\t\n\r\t\f\b\y\1\+\{/$
//                                ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.dollar-slashy - constant.character.escape

interpolation1 = "2 + 3 = ${2 + 3}"
//                        ^^ punctuation.section.interpolation.begin
//                          ^^^^^ source.groovy.embedded.source
//                          ^ constant.numeric
//                            ^ keyword.operator.arithmetic
//                              ^ constant.numeric
//                               ^ punctuation.section.interpolation.end
//                                ^ punctuation.definition.string.end

interpolation3 = "Hello $name"
//                      ^^^^^ variable.other.interpolated
//                           ^ punctuation.definition.string.end

interpolation4 = "Hello $person.name"
//                      ^^^^^^^ variable.other.interpolated
//                             ^ punctuation.accessor.dot
//                              ^^^^ string.quoted.double variable.other.interpolated
//                                  ^ punctuation.definition.string.end

interpolation5 = "$a2_3"
//                ^^^^^ string.quoted.double variable.other.interpolated
//                     ^ punctuation.definition.string.end

interpolation6 = "The sum of 1 and 2 is equal to ${def a = 1; a + 2}"
//                                                 ^^^^^^^^^^^^^^^^ string.quoted.double source.groovy.embedded.source
//                                                 ^^^ storage.type.def
//                                                         ^ constant.numeric
//                                                              ^ keyword.operator.arithmetic
//                                                                ^ constant.numeric
//                                                                  ^ punctuation.definition.string.end

interpolation7 = "foo { ${if (x) { y } else { z } } }"
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                    ^ - punctuation
//                        ^^ keyword.control.conditional.if
//                               ^ punctuation.section.block.begin
//                                   ^ punctuation.section.block.end - punctuation.section.interpolation
//                                     ^^^^ keyword.control.conditional.else
//                                          ^ punctuation.section.block.begin
//                                              ^ punctuation.section.block.end - punctuation.section.interpolation
//                                                ^ punctuation.section.interpolation.end
//                                                  ^ - punctuation
//                                                   ^ punctuation.definition.string.end

unicodeInterpolation1 = "$À"
//                       ^^ variable.other.interpolated
//                         ^ punctuation.definition.string.end

unicodeInterpolation2 = "$À.ö"
//                       ^^ variable.other.interpolated
//                         ^ punctuation.accessor.dot
//                          ^ variable.other.interpolated
//                           ^ punctuation.definition.string.end

unicodeInterpolation3 = "$\u00c0.\u00F6"
//                       ^^^^^^^ variable.other.interpolated
//                              ^ punctuation.accessor.dot
//                               ^^^^^^ variable.other.interpolated
//                                     ^ punctuation.definition.string.end

invalidInterpolation1 = "$"
//                       ^ invalid.illegal
//                        ^ punctuation.definition.string.end

invalidInterpolation2 = "$21"
//                       ^^^ invalid.illegal - variable.other.interpolated
//                          ^ punctuation.definition.string.end

invalidInterpolation3 = "$$"
//                       ^^ invalid.illegal - variable.other.interpolated
//                         ^ punctuation.definition.string.end

notAnAccessorDot1 = "$obj."
//                   ^^^^^ string.quoted.double
//                   ^^^^ variable.other.interpolated
//                       ^ - punctuation.accessor.dot
//                        ^ punctuation.definition.string.end - variable.other.interpolated

notAnAccessorDot2 = "$obj.2"
//                   ^^^^^^ string.quoted.double
//                   ^^^^ variable.other.interpolated
//                       ^ - punctuation.accessor.dot
//                        ^ - variable.other.interpolated
//                         ^ punctuation.definition.string.end

notAnAccessorDot3 = "$obj.×"
//                   ^^^^^^ string.quoted.double
//                   ^^^^ variable.other.interpolated
//                       ^ - punctuation.accessor.dot
//                        ^ - variable.other.interpolated
//                         ^ punctuation.definition.string.end

notAnAccessorDot4 = "$obj.\u00D7"
//                   ^^^^^^^^^^^ string.quoted.double
//                   ^^^^ variable.other.interpolated
//                       ^ - punctuation.accessor.dot
//                        ^^^^^^ constant.character.escape - variable.other.interpolated
//                              ^ punctuation.definition.string.end

notASafeNavigation = "$obj?.nope"
//                    ^^^^^^^^^^ string.quoted.double
//                    ^^^^ variable.other.interpolated
//                        ^^ - punctuation.accessor
//                          ^^^^ - variable.other.interpolated
//                              ^ punctuation.definition.string.end

notAMethodCall = "$obj.nope()"
//                ^^^^^^^^^^^ string.quoted.double
//                ^^^^ variable.other.interpolated
//                    ^ punctuation.accessor.dot
//                     ^^^^ variable.other.interpolated
//                     ^^^^^^ - meta.method-call
//                           ^ punctuation.definition.string.end

lazyInterpolation = "lazy ${-> someVariable}"
//                   ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                          ^^ keyword.operator.arrow
//                                          ^ punctuation.definition.string.end

invalidStringClose = """""""
//                      ^^^^ invalid.illegal

unclosedStr1 = "
//              ^ invalid.illegal.unclosed-string

unclosedStr2 = '
//              ^ invalid.illegal.unclosed-string

unclosedStr3 = "newlines ${'''
    aren't valid inside the interpolation but outside of the
    multiline string
'''}
//  ^ invalid.illegal.unclosed-string

unclosedStr4 = "newlines ${'''
    aren't valid inside the interpolation but outside of the
    multiline string'''
//                     ^ invalid.illegal.unclosed-string

// multiline string embedded in a single line string
embed1 = "embed ${'''
//       ^ string.quoted.double punctuation.definition.string.begin
//        ^^^^^^ string.quoted.double
//              ^^ punctuation.section.interpolation.begin
//                ^^^ source.groovy.embedded.source
  Some text
//^^^^^^^^^ string.quoted.double source.groovy.embedded.source string.quoted.single.block
'''}"
// ^ punctuation.section.interpolation.end
//  ^ string.quoted.double punctuation.definition.string.end

// multiline > singleline > multiline
embed2 = """I hope
    ${
        " people ${'''don't
//        ^^^^^^^ string.quoted.double.block source.groovy.embedded.source string.quoted.double
//                    ^^^^^ string.quoted.single.block
        actually'''}"
//                 ^ string.quoted.double.block source.groovy.embedded.source string.quoted.double punctuation.section.interpolation.end
    }
//  ^ punctuation.section.interpolation.end
              do this
  """
//^^^ string.quoted.double.block punctuation.definition.string.end

embeddedInterpolation1 = "${"$yep"}"
//                           ^^^^ string.quoted.double source.groovy.embedded.source string.quoted.double variable.other.interpolated

embeddedNonInterpolation = "${'$nope'}"
//                             ^^^^^ string.quoted.double source.groovy.embedded.source string.quoted.single - variable.other.interpolated

dollarSlashy01 = $/Hello $person.name/$
//                       ^^^^^^^ string.quoted.other.dollar-slashy variable.other.interpolated
//                              ^ punctuation.accessor.dot
//                               ^^^^ string.quoted.other.dollar-slashy variable.other.interpolated
//                                   ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy02 = $/today is ${new Date().format( 'yyyy-MM-dd' )}./$
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.groovy.embedded.source
//                          ^^ punctuation.section.interpolation.begin
//                            ^^^ keyword.operator.new
//                                       ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                                                               ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy03 = $/$ dollar sign/$
//                 ^^^^^^^^^^^^^ string.quoted.other.dollar-slashy - invalid.illegal
//                              ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy04 = $/$$ escaped dollar sign/$
//                 ^^ string.quoted.other.dollar-slashy constant.character.escape - invalid.illegal - variable.other.interpolated
//                                       ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy05 = $/\ backslash/$
//                 ^^^^^^^^^^^ string.quoted.other.dollar-slashy - invalid.illegal - constant.character.escape
//                            ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy06 = $// forward slash/$
//                 ^^^^^^^^^^^^^^^ string.quoted.other.dollar-slashy - invalid.illegal - constant.character.escape
//                                ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy07 = $/$/ escaped forward slash/$
//                 ^^ string.quoted.other.dollar-slashy constant.character.escape
//                                         ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy08 = $/$$$/ escaped opening dollar slashy/$
//                 ^^^^ string.quoted.other.dollar-slashy constant.character.escape
//                                                   ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy09 = $/$/$$ escaped closing dollar slashy/$
//                 ^^^^ string.quoted.other.dollar-slashy constant.character.escape
//                                                   ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

dollarSlashy10 = $/${$$}/$
//                   ^^ string.quoted.other.dollar-slashy source.groovy.embedded.source - constant.character.escape
//                      ^^ string.quoted.other.dollar-slashy punctuation.definition.string.end

interpolatedSlashy = /a ${color} $obj$/
//                        ^^^^^ meta.string string.regexp meta.interpolation
//                               ^^^^ string.regexp variable.other.interpolated
//                                   ^ string.regexp - variable.other.interpolated


//[ MERGE CONFLICT MARKERS ]///////////////////////////////////////////////// \


<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation


multilineDoubleMergeConflictMarkers = """
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
"""


multilineSingleMergeConflictMarkers = '''
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
'''


multilineDollarSlashyMergeConflictMarkers = $/
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
/$
