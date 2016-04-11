# SYNTAX TEST "Packages/Regular Expressions/RegExp.sublime-syntax"

^foo bar$
# <- keyword.control.anchors
#       ^ keyword.control.anchors

\^foo bar\$
 # <- constant.character.escape
#         ^ constant.character.escape

\x00*
# <- constant.character.escape
#^^^ constant.character.escape
#   ^ keyword.operator.quantifier

(ab)+
#   ^ keyword.operator.quantifier

(ab)?
#   ^ keyword.operator.quantifier

(ab)*?
#   ^^ keyword.operator.quantifier

(ab)*+
#   ^^ keyword.operator.quantifier

(ab)+?
#   ^^ keyword.operator.quantifier

(ab)++
#   ^^ keyword.operator.quantifier

\xg
# <- invalid.illegal.character.escape

\010
# <- constant.character.escape

\1
# <- keyword.other.backref-and-recursion

\x{0ab}
# <- constant.character.escape
#^^^^^^ constant.character.escape

\W
# <- keyword.control.character-class

[b-c]
# <- keyword.control.set
#   ^ keyword.control.set
#^^^ constant.other.range

[\x00-\x{A}]
# <- keyword.control.set
#          ^ keyword.control.set
#^^^^^^^^^^ constant.other.range
#^^^^ constant.character.escape
#     ^^^^^ constant.character.escape

[[a-z]&&[:ascii:]]
#     ^^ keyword.operator.intersection
# ^^^ constant.other.range
#        ^^^^^^^ constant.other.posix-class

[^abc\w0-9]
# <- keyword.control.set
#^ keyword.control.set
#    ^^ keyword.control.character-class

[a-c-x]
#^^^ constant.other.range
#   ^^ - constant.other.range

[]-]
#  ^ keyword.control.set
# ^ - constant.other.range

[-a-n]
#    ^ keyword.control.set
#^ - constant.other.range
# ^^^ constant.other.range

(?:a|b|c)
#^^^^^^^^ string.regexp.group
#^^ constant.other.assertion
#   ^ keyword.operator

(?#foobar)
#^^^^^^^^^ string.regexp.group
#^^^^^^^^ comment.line.number-sign
