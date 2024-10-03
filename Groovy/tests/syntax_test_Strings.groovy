// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"

multilineSingle = '''
//                ^^^ string.quoted.single.block.groovy punctuation.definition.string.begin.groovy
  '''
//^^^ string.quoted.single.block.groovy punctuation.definition.string.end.groovy

multilineDouble = """
//                ^^^ string.quoted.double.block.groovy punctuation.definition.string.begin.groovy
  """
//^^^ string.quoted.double.block.groovy punctuation.definition.string.end.groovy

multilineDollarSlashy = $/
//                      ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.begin.groovy
  /$
//^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

escapedNewlineSingle = '\
//                     ^ string.quoted.single.groovy punctuation.definition.string.begin.groovy
//                      ^^ string.quoted.single.groovy constant.character.escape.groovy - invalid.illegal.unclosed-string.groovy

escapedNewlineDouble = "\
//                     ^ string.quoted.double.groovy punctuation.definition.string.begin.groovy
//                      ^^ string.quoted.double.groovy constant.character.escape.groovy - invalid.illegal.unclosed-string.groovy

escapeNewlineTripleSingle = '''\
//                          ^^^ string.quoted.single.block.groovy punctuation.definition.string.begin.groovy
//                             ^^ string.quoted.single.block.groovy constant.character.escape.groovy - invalid.illegal.unclosed-string.groovy
  '''
//^^^ string.quoted.single.block.groovy punctuation.definition.string.end.groovy

escapeNewlineTripleDouble = """\
//                          ^^^ string.quoted.double.block.groovy punctuation.definition.string.begin.groovy
//                             ^^ string.quoted.double.block.groovy constant.character.escape.groovy - invalid.illegal.unclosed-string.groovy
  """
//^^^ string.quoted.double.block.groovy punctuation.definition.string.end.groovy

escapedNewlineInterpolated = "${\
//                              ^^ string.quoted.double.groovy source.groovy.embedded.source constant.character.escape.groovy
}";

escapeInterpolation = "\${notInterpolated}"
//                     ^^ constant.character.escape.groovy - punctuation.section.embedded.groovy
//                       ^^^^^^^^^^^^^^^^^ string.quoted.double.groovy - source.groovy.embedded.source

validEscapesSingle = '\$\'\"\t\n\r\t\f\b\u00D7\\'
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.groovy constant.character.escape.groovy

validEscapesDouble = "\$\'\"\t\n\r\t\f\b\u00D7\\"
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.groovy constant.character.escape.groovy

validEscapesTripleSingle = '''\$\'\"\t\n\r\t\f\b\u00D7\\'''
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block.groovy constant.character.escape.groovy

validEscapesTripleDouble = """\$\'\"\t\n\r\t\f\b\u00D7\\"""
//                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block.groovy constant.character.escape.groovy

validEscapesSlashy= /\/\u00D7/
//                   ^^^^^^^^ string.regexp.groovy constant.character.escape.groovy

invalidEscapesSingle = '\y \1 \+ \{'
//                      ^^^^^^^^^^^ string.quoted.single.groovy - constant.character.escape.groovy

invalidEscapesDouble = "\y \1 \+ \{"
//                      ^^^^^^^^^^^ string.quoted.double.groovy - constant.character.escape.groovy

invalidEscapesTripleSingle = '''\y \1 \+ \{'''
//                              ^^^^^^^^^^^ string.quoted.single.block.groovy - constant.character.escape.groovy

invalidEscapesTripleDouble = """\y \1 \+ \{"""
//                              ^^^^^^^^^^^ string.quoted.double.block.groovy - constant.character.escape.groovy

regularCharactersSlashy = /\$\'\"\t\n\r\t\f\b\y\1\+\{/
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.groovy - constant.character.escape.groovy

regularCharactersDollarSlashy = $/\$\'\"\t\n\r\t\f\b\y\1\+\{/$
//                                ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.dollar-slashy.groovy - constant.character.escape.groovy

interpolation1 = "2 + 3 = ${2 + 3}"
//                        ^^ punctuation.section.interpolation.begin.groovy
//                          ^^^^^ source.groovy.embedded.source
//                          ^ constant.numeric.groovy
//                            ^ keyword.operator.arithmetic.groovy
//                              ^ constant.numeric.groovy
//                               ^ punctuation.section.interpolation.end.groovy
//                                ^ punctuation.definition.string.end.groovy

interpolation3 = "Hello $name"
//                      ^^^^^ variable.other.interpolated.groovy
//                           ^ punctuation.definition.string.end.groovy

interpolation4 = "Hello $person.name"
//                      ^^^^^^^ variable.other.interpolated.groovy
//                             ^ punctuation.accessor.dot.groovy
//                              ^^^^ string.quoted.double.groovy variable.other.interpolated.groovy
//                                  ^ punctuation.definition.string.end.groovy

interpolation5 = "$a2_3"
//                ^^^^^ string.quoted.double.groovy variable.other.interpolated.groovy
//                     ^ punctuation.definition.string.end.groovy

interpolation6 = "The sum of 1 and 2 is equal to ${def a = 1; a + 2}"
//                                                 ^^^^^^^^^^^^^^^^ string.quoted.double.groovy source.groovy.embedded.source
//                                                 ^^^ storage.type.def.groovy
//                                                         ^ constant.numeric.groovy
//                                                              ^ keyword.operator.arithmetic.groovy
//                                                                ^ constant.numeric.groovy
//                                                                  ^ punctuation.definition.string.end.groovy

interpolation7 = "foo { ${if (x) { y } else { z } } }"
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.groovy
//                    ^ - punctuation
//                        ^^ keyword.control.conditional.if.groovy
//                               ^ punctuation.section.block.begin.groovy
//                                   ^ punctuation.section.block.end.groovy - punctuation.section.interpolation
//                                     ^^^^ keyword.control.conditional.else.groovy
//                                          ^ punctuation.section.block.begin.groovy
//                                              ^ punctuation.section.block.end.groovy - punctuation.section.interpolation
//                                                ^ punctuation.section.interpolation.end.groovy
//                                                  ^ - punctuation
//                                                   ^ punctuation.definition.string.end.groovy

unicodeInterpolation1 = "$À"
//                       ^^ variable.other.interpolated.groovy
//                         ^ punctuation.definition.string.end.groovy

unicodeInterpolation2 = "$À.ö"
//                       ^^ variable.other.interpolated.groovy
//                         ^ punctuation.accessor.dot.groovy
//                          ^ variable.other.interpolated.groovy
//                           ^ punctuation.definition.string.end.groovy

unicodeInterpolation3 = "$\u00c0.\u00F6"
//                       ^^^^^^^ variable.other.interpolated.groovy
//                              ^ punctuation.accessor.dot.groovy
//                               ^^^^^^ variable.other.interpolated.groovy
//                                     ^ punctuation.definition.string.end.groovy

invalidInterpolation1 = "$"
//                       ^ invalid.illegal
//                        ^ punctuation.definition.string.end.groovy

invalidInterpolation2 = "$21"
//                       ^^^ invalid.illegal - variable.other.interpolated.groovy
//                          ^ punctuation.definition.string.end.groovy

invalidInterpolation3 = "$$"
//                       ^^ invalid.illegal - variable.other.interpolated.groovy
//                         ^ punctuation.definition.string.end.groovy

notAnAccessorDot1 = "$obj."
//                   ^^^^^ string.quoted.double.groovy
//                   ^^^^ variable.other.interpolated.groovy
//                       ^ - punctuation.accessor.dot.groovy
//                        ^ punctuation.definition.string.end.groovy - variable.other.interpolated.groovy

notAnAccessorDot2 = "$obj.2"
//                   ^^^^^^ string.quoted.double.groovy
//                   ^^^^ variable.other.interpolated.groovy
//                       ^ - punctuation.accessor.dot.groovy
//                        ^ - variable.other.interpolated.groovy
//                         ^ punctuation.definition.string.end.groovy

notAnAccessorDot3 = "$obj.×"
//                   ^^^^^^ string.quoted.double.groovy
//                   ^^^^ variable.other.interpolated.groovy
//                       ^ - punctuation.accessor.dot.groovy
//                        ^ - variable.other.interpolated.groovy
//                         ^ punctuation.definition.string.end.groovy

notAnAccessorDot4 = "$obj.\u00D7"
//                   ^^^^^^^^^^^ string.quoted.double.groovy
//                   ^^^^ variable.other.interpolated.groovy
//                       ^ - punctuation.accessor.dot.groovy
//                        ^^^^^^ constant.character.escape.groovy - variable.other.interpolated.groovy
//                              ^ punctuation.definition.string.end.groovy

notASafeNavigation = "$obj?.nope"
//                    ^^^^^^^^^^ string.quoted.double.groovy
//                    ^^^^ variable.other.interpolated.groovy
//                        ^^ - punctuation.accessor.groovy
//                          ^^^^ - variable.other.interpolated.groovy
//                              ^ punctuation.definition.string.end.groovy

notAMethodCall = "$obj.nope()"
//                ^^^^^^^^^^^ string.quoted.double.groovy
//                ^^^^ variable.other.interpolated.groovy
//                    ^ punctuation.accessor.dot.groovy
//                     ^^^^ variable.other.interpolated.groovy
//                     ^^^^^^ - meta.method-call.groovy
//                           ^ punctuation.definition.string.end.groovy

lazyInterpolation = "lazy ${-> someVariable}"
//                   ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.groovy
//                          ^^ keyword.operator.arrow.groovy
//                                          ^ punctuation.definition.string.end.groovy

invalidStringClose = """""""
//                      ^^^^ invalid.illegal

unclosedStr1 = "
//              ^ invalid.illegal.unclosed-string.groovy

unclosedStr2 = '
//              ^ invalid.illegal.unclosed-string.groovy

unclosedStr3 = "newlines ${'''
    aren't valid inside the interpolation but outside of the
    multiline string
'''}
//  ^ invalid.illegal.unclosed-string.groovy

unclosedStr4 = "newlines ${'''
    aren't valid inside the interpolation but outside of the
    multiline string'''
//                     ^ invalid.illegal.unclosed-string.groovy

// multiline string embedded in a single line string
embed1 = "embed ${'''
//       ^ string.quoted.double.groovy punctuation.definition.string.begin.groovy
//        ^^^^^^ string.quoted.double.groovy
//              ^^ punctuation.section.interpolation.begin.groovy
//                ^^^ source.groovy.embedded.source
  Some text
//^^^^^^^^^ string.quoted.double.groovy source.groovy.embedded.source string.quoted.single.block.groovy
'''}"
// ^ punctuation.section.interpolation.end.groovy
//  ^ string.quoted.double.groovy punctuation.definition.string.end.groovy

// multiline > singleline > multiline
embed2 = """I hope
    ${
        " people ${'''don't
//        ^^^^^^^ string.quoted.double.block.groovy source.groovy.embedded.source string.quoted.double.groovy
//                    ^^^^^ string.quoted.single.block.groovy
        actually'''}"
//                 ^ string.quoted.double.block.groovy source.groovy.embedded.source string.quoted.double.groovy punctuation.section.interpolation.end.groovy
    }
//  ^ punctuation.section.interpolation.end.groovy
              do this
  """
//^^^ string.quoted.double.block.groovy punctuation.definition.string.end.groovy

embeddedInterpolation1 = "${"$yep"}"
//                           ^^^^ string.quoted.double.groovy source.groovy.embedded.source string.quoted.double.groovy variable.other.interpolated.groovy

embeddedNonInterpolation = "${'$nope'}"
//                             ^^^^^ string.quoted.double.groovy source.groovy.embedded.source string.quoted.single.groovy - variable.other.interpolated.groovy

dollarSlashy01 = $/Hello $person.name/$
//                       ^^^^^^^ string.quoted.other.dollar-slashy.groovy variable.other.interpolated.groovy
//                              ^ punctuation.accessor.dot.groovy
//                               ^^^^ string.quoted.other.dollar-slashy.groovy variable.other.interpolated.groovy
//                                   ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy02 = $/today is ${new Date().format( 'yyyy-MM-dd' )}./$
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.groovy.embedded.source
//                          ^^ punctuation.section.interpolation.begin.groovy
//                            ^^^ keyword.operator.new.groovy
//                                       ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
//                                                               ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy03 = $/$ dollar sign/$
//                 ^^^^^^^^^^^^^ string.quoted.other.dollar-slashy.groovy - invalid.illegal
//                              ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy04 = $/$$ escaped dollar sign/$
//                 ^^ string.quoted.other.dollar-slashy.groovy constant.character.escape.groovy - invalid.illegal - variable.other.interpolated.groovy
//                                       ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy05 = $/\ backslash/$
//                 ^^^^^^^^^^^ string.quoted.other.dollar-slashy.groovy - invalid.illegal - constant.character.escape.groovy
//                            ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy06 = $// forward slash/$
//                 ^^^^^^^^^^^^^^^ string.quoted.other.dollar-slashy.groovy - invalid.illegal - constant.character.escape.groovy
//                                ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy07 = $/$/ escaped forward slash/$
//                 ^^ string.quoted.other.dollar-slashy.groovy constant.character.escape.groovy
//                                         ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy08 = $/$$$/ escaped opening dollar slashy/$
//                 ^^^^ string.quoted.other.dollar-slashy.groovy constant.character.escape.groovy
//                                                   ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy09 = $/$/$$ escaped closing dollar slashy/$
//                 ^^^^ string.quoted.other.dollar-slashy.groovy constant.character.escape.groovy
//                                                   ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

dollarSlashy10 = $/${$$}/$
//                   ^^ string.quoted.other.dollar-slashy.groovy source.groovy.embedded.source - constant.character.escape.groovy
//                      ^^ string.quoted.other.dollar-slashy.groovy punctuation.definition.string.end.groovy

interpolatedSlashy = /a ${color} $obj$/
//                        ^^^^^ string.regexp.groovy source.groovy.embedded.source
//                               ^^^^ string.regexp.groovy variable.other.interpolated.groovy
//                                   ^ string.regexp.groovy - variable.other.interpolated.groovy
