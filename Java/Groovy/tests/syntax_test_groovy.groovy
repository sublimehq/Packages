// SYNTAX TEST "Packages/Java/Groovy.sublime-syntax" \
// <- source.groovy



import java.io
//     ^^^^^^^ invalid.illegal.import-of-default-import
import java.lang
//     ^^^^^^^^^ invalid.illegal.import-of-default-import
import java.math.BigDecimal
//     ^^^^^^^^^^^^^^^^^^^^ invalid.illegal.import-of-default-import
import java.math.BigInteger
//     ^^^^^^^^^^^^^^^^^^^^ invalid.illegal.import-of-default-import
import java.net
//     ^^^^^^^^ invalid.illegal.import-of-default-import
import java.util
//     ^^^^^^^^^ invalid.illegal.import-of-default-import
import groovy.lang
//     ^^^^^^^^^^^ invalid.illegal.import-of-default-import
import groovy.util
//     ^^^^^^^^^^^ invalid.illegal.import-of-default-import

// Tests for issue 1260

def defectiveSyntaxTest(String value) {
// <- meta.function.return-type support.class
//  ^^^^^^^^^^^^^^^^^^^ entity.name.function
//                     ^ meta.group punctuation.section.group.begin
//                      ^^^^^^ meta.function.parameters support.class
//                             ^^^^^ variable.parameter
//                                  ^ meta.definition.method punctuation.definition.parameters.end
    println value
}

void voidCheck(String value) {
// <- meta.function.return-type storage.type.void
//   ^ entity.name.function
//           ^ entity.name.function
//             ^ meta.function.parameters support.class
//                    ^ variable.parameter
}

double interpretString(String value) {
// <- meta.function.return-type storage.type.primitive
//     ^ entity.name.function
//                   ^ entity.name.function
//                     ^ meta.function.parameters support.class
//                            ^ variable.parameter
    return Double.parseDouble(value);
}

defectiveSyntaxTest("hello")
// <- meta.function-call.identifier
//^^^^^^^^^^^^^^^^^ meta.function-call.identifier
//                 ^ meta.group punctuation.section.group.begin
//                  ^^^^^^^ meta.function-call.arguments string.quoted.double
//                         ^ meta.group punctuation.section.group.end

voidCheck(123456)
// <- meta.function-call.identifier variable.function
//^^^^^^^ meta.function-call.identifier variable.function
//       ^ meta.group punctuation.section.group.begin
//        ^^^^^^ meta.function-call.arguments constant.numeric
//              ^ meta.group punctuation.section.group.end
//               ^ - meta.function-call

chartHistogram([1,1,2,3])
// <- meta.function-call.identifier variable.function
//^^^^^^^^^^^^ meta.function-call.identifier variable.function
//            ^^^^^^^^^^ meta.function-call.arguments
//            ^ meta.group punctuation.section.group.begin
//             ^^^^^^^^^ meta.brackets
//             ^ punctuation.section.brackets.begin
//              ^ constant.numeric
//               ^ punctuation.separator.comma
//                     ^ punctuation.section.brackets.end
//                      ^ meta.group punctuation.section.group.end - meta.brackets

def greeting = "Hello ${true ? 'World' : 'Home'}"
// <- storage.type.def
//^ storage.type.def
//           ^ keyword.operator.assignment
//             ^ punctuation.definition.string.begin
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                    ^^ punctuation.section.interpolation.begin
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.groovy.embedded.groovy
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
//                      ^^ string.other.dollar-slashy.block punctuation.definition.string.begin
    /$
//  ^^ string.other.dollar-slashy.block punctuation.definition.string.end

escapedNewlineSingle = '\
//                     ^ meta.string string.quoted.single punctuation.definition.string.begin \
//                      ^^ constant.character.escape - invalid.illegal.unexpected-newline \
    '
//  ^ string.quoted.single punctuation.definition.string.end

escapedNewlineDouble = "\
//                     ^ string.quoted.double punctuation.definition.string.begin \
//                      ^^ string.quoted.double constant.character.escape - invalid.illegal.unexpected-newline \
    "
//  ^ string.quoted.double punctuation.definition.string.end

escapeNewlineTripleSingle = '''\
//                          ^^^ string.quoted.single.block punctuation.definition.string.begin \
//                             ^^ string.quoted.single.block constant.character.escape - invalid.illegal.unexpected-newline \
    '''
//  ^^^ string.quoted.single.block punctuation.definition.string.end

escapeNewlineTripleDouble = """\
//                          ^^^ string.quoted.double.block punctuation.definition.string.begin \
//                             ^^ string.quoted.double.block constant.character.escape - invalid.illegal.unexpected-newline \
    """
//  ^^^ string.quoted.double.block punctuation.definition.string.end

escapedNewlineInterpolated = "${\
//                              ^^ string.quoted.double source.groovy.embedded.groovy constant.character.escape
}";

escapeInterpolation = "\${notInterpolated}"
//                    ^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                     ^^ constant.character.escape - punctuation.section.embedded
//                       ^^^^^^^^^^^^^^^^^ - source.groovy.embedded.groovy

validEscapesSingle = '\$\'\"\t\n\r\t\f\b\u00D7\\'
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single constant.character.escape

validEscapesDouble = "\$\'\"\t\n\r\t\f\b\u00D7\\"
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double constant.character.escape

validEscapesTripleSingle = '''\$\'\"\t\n\r\t\f\b\u00D7\\'''
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block constant.character.escape

validEscapesTripleDouble = """\$\'\"\t\n\r\t\f\b\u00D7\\"""
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block constant.character.escape

validEscapesSlashy= /\/\u00D7/
//                   ^^^^^^^^ string.regexp meta.mode.extended constant.character.escape

invalidEscapesSingle = '\y \1 \+ \{'
//                      ^^^^^^^^^^^ meta.string string.quoted.single - constant.character.escape

invalidEscapesDouble = "\y \1 \+ \{"
//                      ^^^^^^^^^^^ meta.string string.quoted.double - constant.character.escape

invalidEscapesTripleSingle = '''\y \1 \+ \{'''
//                              ^^^^^^^^^^^ meta.string string.quoted.single.block - constant.character.escape

invalidEscapesTripleDouble = """\y \1 \+ \{"""
//                              ^^^^^^^^^^^ meta.string string.quoted.double.block - constant.character.escape

regularCharactersSlashy = /\$\'\"\t\n\r\t\f\b\y\1\+\{/
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.regexp meta.mode.extended.regexp - constant.character.escape

regularCharactersDollarSlashy = $/\$\'\"\t\n\r\t\f\b\y\1\+\{/$
//                                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.other.dollar-slashy.block - constant.character.escape

interpolation1 = "2 + 3 = ${2 + 3}"
//                        ^^ punctuation.section.interpolation.begin
//                          ^^^^^ source.groovy.embedded.groovy
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
//                                                 ^^^^^^^^^^^^^^^^ meta.string string.quoted.double source.groovy.embedded.groovy
//                                                 ^^^ meta.declaration.type support.class
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
//                         ^ meta.string string.quoted.double punctuation.definition.string.end

unicodeInterpolation2 = "$À.ö"
//                       ^^ variable.other.interpolated
//                         ^ punctuation.accessor.dot
//                          ^ variable.other.interpolated
//                           ^ meta.string string.quoted.double punctuation.definition.string.end

unicodeInterpolation3 = "$\u00c0.\u00F6"
//                       ^^^^^^^ variable.other.interpolated
//                              ^ punctuation.accessor.dot
//                               ^^^^^^ variable.other.interpolated
//                                     ^ meta.string string.quoted.double punctuation.definition.string.end

invalidInterpolation1 = "$"
//                       ^ invalid.illegal.stray-dollar-sign
//                        ^ meta.string string.quoted.double punctuation.definition.string.end

invalidInterpolation2 = "$21"
//                       ^^^ invalid.illegal.malformatted-interpolation - variable.other.interpolated
//                          ^ meta.string string.quoted.double punctuation.definition.string.end

invalidInterpolation3 = "$$"
//                       ^^ invalid.illegal - variable.other.interpolated
//                         ^ meta.string string.quoted.double punctuation.definition.string.end

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
//                          ^^ keyword.declaration.function.arrow
//                                          ^ punctuation.definition.string.end

invalidStringClose = """""""
//                      ^^^^ invalid.illegal

unclosedStr1 = "
//              ^ invalid.illegal.unexpected-newline

unclosedStr2 = '
//              ^ invalid.illegal.unexpected-newline

unclosedStr3 = "newlines ${'''
    aren't valid inside the interpolation but outside of the
    multiline string
'''}
//  ^ invalid.illegal.unexpected-newline

unclosedStr4 = "newlines ${'''
    aren't valid inside the interpolation but outside of the
    multiline string'''
//                     ^ invalid.illegal.unexpected-newline

// multiline string embedded in a single line string
embed1 = "embed ${'''
//       ^ string.quoted.double punctuation.definition.string.begin
//        ^^^^^^ string.quoted.double
//              ^^ punctuation.section.interpolation.begin
//                ^^^ source.groovy.embedded.groovy
  Some text
//^^^^^^^^^ string.quoted.double source.groovy.embedded.groovy string.quoted.single.block
'''}"
// ^ punctuation.section.interpolation.end
//  ^ string.quoted.double punctuation.definition.string.end

// multiline > singleline > multiline
embed2 = """I hope
    ${
        " people ${'''don't
//        ^^^^^^^ string.quoted.double.block source.groovy.embedded.groovy string.quoted.double
//                    ^^^^^ string.quoted.single.block
        actually'''}"
//                 ^ string.quoted.double.block source.groovy.embedded.groovy string.quoted.double punctuation.section.interpolation.end
    }
//  ^ punctuation.section.interpolation.end
              do this
  """
//^^^ string.quoted.double.block punctuation.definition.string.end

embeddedInterpolation1 = "${"$yep"}"
//                           ^^^^ string.quoted.double source.groovy.embedded.groovy string.quoted.double variable.other.interpolated

embeddedNonInterpolation = "${'$nope'}"
//                             ^^^^^ string.quoted.double source.groovy.embedded.groovy string.quoted.single - variable.other.interpolated

dollarSlashy01 = $/Hello $person.name/$
//                       ^^^^^^^ string.other.dollar-slashy.block variable.other.interpolated
//                              ^ punctuation.accessor.dot
//                               ^^^^ string.other.dollar-slashy.block variable.other.interpolated
//                                   ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy02 = $/today is ${new Date().format( 'yyyy-MM-dd' )}./$
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.groovy.embedded.groovy
//                          ^^ punctuation.section.interpolation.begin
//                            ^^^ keyword.other.storage.new
//                                       ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                                                               ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy03 = $/$ dollar sign/$
//                 ^^^^^^^^^^^^^ string.other.dollar-slashy.block - invalid.illegal
//                              ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy04 = $/$$ escaped dollar sign/$
//                 ^^ string.other.dollar-slashy.block constant.character.escape - invalid.illegal - variable.other.interpolated
//                                       ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy05 = $/\ backslash/$
//                 ^^^^^^^^^^^ string.other.dollar-slashy.block - invalid.illegal - constant.character.escape
//                            ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy06 = $// forward slash/$
//                 ^^^^^^^^^^^^^^^ string.other.dollar-slashy.block - invalid.illegal - constant.character.escape
//                                ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy07 = $/$/ escaped forward slash/$
//                 ^^ string.other.dollar-slashy.block constant.character.escape
//                                         ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy08 = $/$$$/ escaped opening dollar slashy/$
//                 ^^^^ string.other.dollar-slashy.block constant.character.escape
//                                                   ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy09 = $/$/$$ escaped closing dollar slashy/$
//                 ^^^^ string.other.dollar-slashy.block constant.character.escape
//                                                   ^^ string.other.dollar-slashy.block punctuation.definition.string.end

dollarSlashy10 = $/${$$}/$
//                   ^^ string.other.dollar-slashy.block source.groovy.embedded.groovy - constant.character.escape
//                      ^^ string.other.dollar-slashy.block punctuation.definition.string.end

interpolatedSlashy = /a ${color} $obj$/
//                        ^^^^^ meta.string string.regexp meta.interpolation
//                               ^^^^ string.regexp variable.other.interpolated
//                                   ^ string.regexp - variable.other.interpolated
