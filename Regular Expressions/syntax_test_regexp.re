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
#^^^^^^^^ meta.group
# <- keyword.control.group
#^^ constant.other.assertion
#   ^ keyword.operator
#       ^ keyword.control.group

(?#foobar)
#^^^^^^^^^ meta.group comment.block.group
# <- comment.block.group punctuation.definition.comment.begin
#^^ punctuation.definition.comment.begin
#        ^ punctuation.definition.comment.end

( abc (?#foobar) )
#     ^^^^^^^^^^ meta.group meta.group comment.block.group

a{9}
#^^^ keyword.operator.quantifier.regexp

a{1,9}
#^^^^^ keyword.operator.quantifier.regexp

a{9,}
#^^^^ keyword.operator.quantifier.regexp

a{,9}
#^^^^ - keyword.operator.quantifier.regexp

a{,}
#^^^ - keyword.operator.quantifier.regexp

a{}
#^^ - keyword.operator.quantifier.regexp

|{1,2}
#^^^^^ invalid.illegal.unexpected-quantifier.regexp

hello**
#     ^ invalid.illegal.unexpected-quantifier.regexp
#<- meta.literal.regexp
#^^^^ meta.literal.regexp

hello++
#    ^^ keyword.operator.quantifier.regexp - invalid.illegal.unexpected-quantifier.regexp

(\w{2}?)
#  ^^^^ keyword.operator.quantifier.regexp - invalid.illegal.unexpected-quantifier.regexp

(\w{2}+)
#  ^^^^ keyword.operator.quantifier.regexp - invalid.illegal.unexpected-quantifier.regexp

(\w{2}?+)
#      ^ invalid.illegal.unexpected-quantifier.regexp

[\w{1}+]
#  ^^^^ - invalid.illegal.unexpected-quantifier.regexp - keyword.operator.quantifier.regexp

(?x)
#^^ meta.mode-modifier.regexp

(?-ix)
#^^^^ meta.mode-modifier.regexp

(?sm-ixxs)
#^^^^^^^^ meta.mode-modifier.regexp

(?abc)
#^ invalid.illegal.unexpected-quantifier.regexp - meta.mode-modifier.regexp
# ^^^ meta.literal.regexp - meta.mode-modifier.regexp

 .*?
#^ keyword.other.any.regexp - meta.literal.regexp
# ^^ keyword.operator.quantifier.regexp

(?=.++\.??\|{2,3}|{2})
#^^ constant.other.assertion.regexp
#  ^ keyword.other.any.regexp - meta.literal.regexp
#   ^^ keyword.operator.quantifier.regexp
#     ^^ constant.character.escape.regexp
#       ^^ keyword.operator.quantifier.regexp
#         ^^ constant.character.escape.regexp
#           ^^^^^ keyword.operator.quantifier.regexp
#                 ^^^ invalid.illegal.unexpected-quantifier.regexp - keyword.operator.quantifier.regexp

\G{2}
# ^^^ invalid.illegal.unexpected-quantifier.regexp - keyword.operator.quantifier.regexp

 \g{1}
#^^^^^ keyword.other.backref-and-recursion.regexp - keyword.operator.quantifier.regexp

 \g1
#^^^ keyword.other.backref-and-recursion.regexp

 \g{named_group}
#^^^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp

 \g'named_group'
#^^^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp

 \g<named_group>
#^^^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp

(?1)
#^^ keyword.other.backref-and-recursion.regexp

(1)
#^ meta.literal.regexp - keyword.other.backref-and-recursion.regexp

(?&named_group)
#^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp

(?={2})
#  ^^^ invalid.illegal.unexpected-quantifier.regexp - keyword.operator.quantifier.regexp

(?<named_group>test)
#^^^^^^^^^^^^^^ keyword.other.named-capture-group.regexp
#              ^^^^ meta.literal.regexp - keyword.other.named-capture-group.regexp

(?![a-z]+?)
#^^ meta.group.regexp constant.other.assertion.regexp - meta.group.regexp meta.group.regexp
#  ^ keyword.control.set.regexp
#      ^ keyword.control.set.regexp
#   ^^^ constant.other.range.regexp
#       ^^ keyword.operator.quantifier.regexp

(?![abc].\g1(?m)$)[\g1]
#^^ constant.other.assertion.regexp
#  ^ keyword.control.set.regexp
#      ^ keyword.control.set.regexp
#   ^^^ - meta.literal.regexp
#       ^ keyword.other.any.regexp
#        ^^^ keyword.other.backref-and-recursion.regexp
#               ^ keyword.control.anchors.regexp
#            ^^ meta.group.regexp meta.group.regexp meta.mode-modifier.regexp
#                  ^^ constant.character.escape.regexp
#                  ^^^ - keyword.other.backref-and-recursion.regexp
