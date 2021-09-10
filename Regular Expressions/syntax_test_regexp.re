# SYNTAX TEST "Packages/Regular Expressions/RegExp.sublime-syntax"


###################
## Anchors and escapes
###################

^foo \bbar$ \<test\>
# <- keyword.control.anchors
#    ^^ keyword.control.anchors
#         ^ keyword.control.anchors
#           ^^ keyword.control.anchors
#                 ^^ keyword.control.anchors

\^foo \\bbar\$
 # <- constant.character.escape
#     ^^ constant.character.escape
#            ^ constant.character.escape

\xg
# <- invalid.illegal.character.escape

\010
# <- constant.character.escape

\1
# <- keyword.other.backref-and-recursion
#^ variable.other.backref-and-recursion.regexp

\x{0ab}
# <- constant.character.escape
#^^^^^^ constant.character.escape

\W
# <- keyword.control.character-class


###################
## Quantifiers
###################

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

(?abc)
#^ invalid.illegal.unexpected-quantifier.regexp - storage.modifier.mode.regexp
# ^^^ meta.literal.regexp - storage.modifier.mode.regexp

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

(?={2})
#  ^^^ invalid.illegal.unexpected-quantifier.regexp - keyword.operator.quantifier.regexp

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

)
# <- invalid.illegal.unmatched-brace.regexp

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


###################
## Sets
###################

 [b-c]
#^^^^^ meta.set
#^ keyword.control.set
#    ^ keyword.control.set
# ^^^ constant.other.range
#  ^ punctuation.separator.sequence

[\x00-\x{A}]
# <- keyword.control.set
#          ^ keyword.control.set
#^^^^^^^^^^ constant.other.range
#    ^ punctuation.separator.sequence
#^^^^ constant.character.escape
#     ^^^^^ constant.character.escape

[[a-z]&&[:ascii:]]
#^^^^^ meta.set meta.set
#     ^^ keyword.operator.intersection
# ^^^ constant.other.range
#        ^^^^^^^ constant.other.posix-class

[^abc\w0-9]
# <- keyword.control.set
#^ keyword.control.set
#    ^^ keyword.control.character-class
#       ^ punctuation.separator.sequence

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

[\-a]
#^^^ - constant.other.range
#   ^ keyword.control.set

[a-z\-9]
#   ^^^ - constant.other.range
#      ^ keyword.control.set

[\--z]
#^^^^ constant.other.range
#    ^ keyword.control.set

[a-\z]
#^^^^ constant.other.range
#    ^ keyword.control.set

[a-\-]
#^^^^ constant.other.range
#    ^ keyword.control.set

(?:a|b|c)
#^^^^^^^^ meta.group
# <- keyword.control.group
#^^ constant.other.assertion
#   ^ keyword.operator
#       ^ keyword.control.group


###################
## Block comments
###################

(?#foobar)
#^^^^^^^^^ meta.group comment.block.group
# <- comment.block.group punctuation.definition.comment.begin
#^^ punctuation.definition.comment.begin
#        ^ punctuation.definition.comment.end

( abc (?#foobar) )
#     ^^^^^^^^^^ meta.group meta.group comment.block.group

(?#

this is a multi line comment
where escape characters are ignored.\).
#<- comment.block.group
#                                   ^^ - constant.character.escape
#                                    ^ punctuation.definition.comment.end.regexp
#                                     ^ - comment.block.group.regexp


###################
## Group Modifiers & Extended Mode
###################

(?x)
#^^ storage.modifier.mode.regexp
#   ^ meta.ignored-whitespace

# this is a comment
#^^^^^^^^^^^^^^^^^^^ comment.line.number-sign
# <- comment punctuation.definition.comment
 (?-ix)
# <- meta.ignored-whitespace
# ^^^^ storage.modifier.mode.regexp

# not a comment
# <- - comment

(
    (?x)
    # comment
#   ^^^^^^^^^ comment
   (?-x)
) # no comment
# <- keyword.control.group
# ^ - comment

(?sm-ixxs)
#^^^^^^^^ storage.modifier.mode.regexp

 (?i:hello)
#^^^^^^^^^^ meta.group.regexp
#^ keyword.control.group.regexp
# ^^^ storage.modifier.mode.regexp
#    ^ - storage.modifier.mode.regexp
#         ^ keyword.control.group.regexp

 (?i-s:hello)
#^^^^^^^^^^^^ meta.group.regexp
#^ keyword.control.group.regexp
# ^^^^^ storage.modifier.mode.regexp
#      ^ - storage.modifier.mode.regexp
#           ^ keyword.control.group.regexp

# not a comment
^ - comment

(?ix:
#^^^^
# comment
#^^^^^^^^ comment.line.number-sign

    (# also a comment)
#    ^^^^^^^^^^^^^^^^^ comment
    )

 (?s-x: # not a comment)
#       ^ - comment

)
# not a comment
^ - comment

(?x:[ ] )
#    ^ - meta.ignored-whitespace.regexp
#      ^ meta.ignored-whitespace.regexp


###################
## References
###################

(?<named_group>test)
#^^^^^^^^^^^^^^ keyword.other.named-capture-group.regexp
#  ^^^^^^^^^^^ entity.name.capture-group.regexp
#              ^^^^ meta.literal.regexp - keyword.other.named-capture-group.regexp

 \g{1}
#^^^^^ keyword.other.backref-and-recursion.regexp - keyword.operator.quantifier.regexp
#   ^ variable.other.backref-and-recursion.regexp

 \g1
#^^^ keyword.other.backref-and-recursion.regexp
#  ^ variable.other.backref-and-recursion.regexp

 \g{named_group}
#^^^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#   ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp

 \g'named_group'
#^^^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#   ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp

 \g<named_group>
#^^^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#   ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp

(?1)
#^^ keyword.other.backref-and-recursion.regexp
# ^ variable.other.backref-and-recursion.regexp

(1)
#^ meta.literal.regexp - keyword - variable

(?&named_group)
#^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#  ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp

(hello)(?-1)(?+1)(wow) relative capture groups are supported
#       ^^^ keyword.other.backref-and-recursion.regexp
#        ^^ variable.other.backref-and-recursion.regexp
#            ^^^ keyword.other.backref-and-recursion.regexp
#             ^^ variable.other.backref-and-recursion.regexp

(hello)\g-1(wow)
#      ^^^^ keyword.other.backref-and-recursion.regexp

(?x)(hello)(?-1)(?+1)(wow) relative capture groups are supported(?-x)
#           ^^^ keyword.other.backref-and-recursion.regexp
#                ^^^ keyword.other.backref-and-recursion.regexp
#            ^^ variable.other.backref-and-recursion.regexp
#                 ^^ variable.other.backref-and-recursion.regexp

(?x)(?<named_group>test)(?&named_group)(?-x)
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.extended
#    ^^^^^^^^^^^^^^ keyword.other.named-capture-group.regexp
#      ^^^^^^^^^^^ entity.name.capture-group.regexp
#     ^ punctuation.definition.capture-group-name.begin.regexp
#                 ^ punctuation.definition.capture-group-name.end.regexp
#                  ^^^^ meta.literal.regexp - keyword.other.named-capture-group.regexp
#                        ^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#                          ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp

(?x)(?<named-group>test)(?&named-group)(?-x)
#     ^ punctuation.definition.capture-group-name.begin.regexp
#                 ^ punctuation.definition.capture-group-name.end.regexp
#                        ^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp

(?'foo-t'a+)(b+)\g<foo-t>
#^^^^^^^^ keyword.other.named-capture-group.regexp
# ^ punctuation.definition.capture-group-name.begin.regexp
#       ^ punctuation.definition.capture-group-name.end.regexp
#               ^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#                 ^ punctuation.definition.capture-group-name.begin.regexp
#                       ^ punctuation.definition.capture-group-name.end.regexp
#                  ^^^^^ variable.other.backref-and-recursion.regexp

(?'&a+\'a)b\g'&a+\'(?x)(?'a- -'a)b\g{a- -}(?-x)
#  ^^^^ entity.name.capture-group.regexp
# ^ punctuation.definition.capture-group-name.begin.regexp
#      ^ punctuation.definition.capture-group-name.end.regexp
#            ^ punctuation.definition.capture-group-name.begin.regexp
#             ^^^^ variable.other.backref-and-recursion.regexp
#                 ^ punctuation.definition.capture-group-name.end.regexp
#                         ^^^^ entity.name.capture-group.regexp
#                              ^ meta.literal.regexp
#                                   ^ punctuation.definition.capture-group-name.begin.regexp
#                                    ^^^^ variable.other.backref-and-recursion.regexp
#                                        ^ punctuation.definition.capture-group-name.end.regexp
#                                         ^ keyword.control.group.regexp

###################
## Assertions
###################

(?![a-z]+?)
#^^ meta.group.regexp constant.other.assertion.regexp - meta.group.regexp meta.group.regexp
#  ^^^^^ meta.set.regexp
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
#            ^^ meta.group.regexp meta.group.regexp storage.modifier.mode.regexp
#                  ^^ constant.character.escape.regexp
#                  ^^^ - keyword.other.backref-and-recursion.regexp

(?<=blah)
#^^^ constant.other.assertion.regexp
(?<!\w+\(\))
#^^^ constant.other.assertion.regexp
(?>\[\d+\])
#^^ constant.other.assertion.regexp
#  ^^ constant.character.escape.regexp - keyword.control.set.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ keyword.operator.quantifier.regexp
#       ^^ constant.character.escape.regexp - keyword.control.set.regexp


###################
## Conditionals
###################

(?<test>a)?b(?('test')c|d)
#            ^^^^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
(?<test>a)?b(?(<test->)c|d)
#            ^^^^^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#              ^ punctuation.definition.capture-group-name.begin.regexp
#                    ^ punctuation.definition.capture-group-name.end.regexp
(a)?b(?(1)c|d)
#     ^^^^ keyword.other.backref-and-recursion.conditional.regexp
(?(?!\d)a|b)
#^ keyword.other.conditional.regexp
# ^ keyword.control.group.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ keyword.control.group.regexp
#       ^ meta.literal.regexp
#        ^ keyword.operator.alternation.regexp
#         ^ meta.literal.regexp
#          ^ keyword.control.group.regexp
(?(?=\d)\da|b)
#^ keyword.other.conditional.regexp
# ^ keyword.control.group.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ keyword.control.group.regexp
#       ^^ keyword.control.character-class.regexp
#         ^ meta.literal.regexp
#          ^ keyword.operator.alternation.regexp
#           ^ meta.literal.regexp
#            ^ keyword.control.group.regexp
(?(?<=\dc)a|b)
#^ keyword.other.conditional.regexp
# ^ keyword.control.group.regexp
#  ^^^ constant.other.assertion.regexp
#     ^^ keyword.control.character-class.regexp
#       ^ meta.literal.regexp
#        ^ keyword.control.group.regexp
#         ^ meta.literal.regexp
#          ^ keyword.operator.alternation.regexp
#           ^ meta.literal.regexp
#            ^ keyword.control.group.regexp
(?(R)a|b)
#^^^^ keyword.other.backref-and-recursion.conditional.regexp
#    ^ meta.literal.regexp
#     ^ keyword.operator.alternation.regexp
#      ^ meta.literal.regexp
#       ^ keyword.control.group.regexp
(?(R1)a|b)
#^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#     ^ meta.literal.regexp
#      ^ keyword.operator.alternation.regexp
#       ^ meta.literal.regexp
#        ^ keyword.control.group.regexp
(?(R1)a|b)
#^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#     ^ meta.literal.regexp
#      ^ keyword.operator.alternation.regexp
#       ^ meta.literal.regexp
#        ^ keyword.control.group.regexp
(?<a>a)?b(?(R&a)c|d)(?1)
#         ^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#               ^ meta.literal.regexp
#                ^ keyword.operator.alternation.regexp
#                 ^ meta.literal.regexp
#                  ^ keyword.control.group.regexp
(?(DEFINE)(?<a>abcd))(?&a)
#^^^^^^^^^ keyword.other.conditional.definition.regexp
#                     ^^^ keyword.other.backref-and-recursion.regexp




###################
## Conditionals in Extended Mode
###################

(?x)
(?<test>a)?b(?('test')c|d)
#            ^^^^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
(?<test>a)?b(?(<test>)c|d)
#            ^^^^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
(a)?b(?(1)c|d)
#     ^^^^ keyword.other.backref-and-recursion.conditional.regexp
(?(?!\d)a|b)
#^ keyword.other.conditional.regexp
# ^ keyword.control.group.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ keyword.control.group.regexp
#       ^ meta.literal.regexp
#        ^ keyword.operator.alternation.regexp
#         ^ meta.literal.regexp
#          ^ keyword.control.group.regexp
(?(?=\d)\da|b)
#^ keyword.other.conditional.regexp
# ^ keyword.control.group.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ keyword.control.group.regexp
#       ^^ keyword.control.character-class.regexp
#         ^ meta.literal.regexp
#          ^ keyword.operator.alternation.regexp
#           ^ meta.literal.regexp
#            ^ keyword.control.group.regexp
(?(?<=\dc)a|b)
#^ keyword.other.conditional.regexp
# ^ keyword.control.group.regexp
#  ^^^ constant.other.assertion.regexp
#     ^^ keyword.control.character-class.regexp
#       ^ meta.literal.regexp
#        ^ keyword.control.group.regexp
#         ^ meta.literal.regexp
#          ^ keyword.operator.alternation.regexp
#           ^ meta.literal.regexp
#            ^ keyword.control.group.regexp
(?(R)a|b)
#^^^^ keyword.other.backref-and-recursion.conditional.regexp
#    ^ meta.literal.regexp
#     ^ keyword.operator.alternation.regexp
#      ^ meta.literal.regexp
#       ^ keyword.control.group.regexp
(?(R1)a|b)
#^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#     ^ meta.literal.regexp
#      ^ keyword.operator.alternation.regexp
#       ^ meta.literal.regexp
#        ^ keyword.control.group.regexp
(?<a>a)?b(?(R&a)c|d)(?1)
#         ^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#               ^ meta.literal.regexp
#                ^ keyword.operator.alternation.regexp
#                 ^ meta.literal.regexp
#                  ^ keyword.control.group.regexp
(?(DEFINE)(?<a>abcd))(?&a)
#^^^^^^^^^ keyword.other.conditional.definition.regexp
#                     ^^^ keyword.other.backref-and-recursion.regexp
(?-x)


(?#http://www.boost.org/doc/libs/1_61_0/libs/regex/doc/html/boost_regex/syntax/perl_syntax.html#boost_regex.syntax.perl_syntax.backtracking_control_verbs)

'[^']*'(*SKIP)(*F)|" (?#http://stackoverflow.com/a/38638595/4473405)
#      ^^^^^^^^^^^ keyword.control.verb.regexp
 (*PRUNE) (*SKIP) (*THEN) (*COMMIT) (*FAIL) (*F) (*ACCEPT)
#^^^^^^^^ keyword.control.verb.regexp
#        ^ meta.literal.regexp - keyword.control.verb.regexp
#         ^^^^^^^ keyword.control.verb.regexp
#                ^ - keyword.control.verb.regexp
#                 ^^^^^^^ keyword.control.verb.regexp
#                        ^ - keyword.control.verb.regexp
#                         ^^^^^^^^^ keyword.control.verb.regexp
#                                  ^ - keyword.control.verb.regexp
#                                   ^^^^^^^ keyword.control.verb.regexp
#                                          ^ - keyword.control.verb.regexp
#                                           ^^^^ keyword.control.verb.regexp
#                                               ^ - keyword.control.verb.regexp
#                                                ^^^^^^^^^ keyword.control.verb.regexp
(*FA)
#^ invalid.illegal.unexpected-quantifier.regexp
(?x)
 (*PRUNE) (*SKIP) (*THEN) (*COMMIT) (*FAIL) (*F) (*ACCEPT)
#^^^^^^^^ keyword.control.verb.regexp
#        ^ - meta.literal.regexp - keyword.control.verb.regexp
#         ^^^^^^^ keyword.control.verb.regexp
#                ^ - keyword.control.verb.regexp
#                 ^^^^^^^ keyword.control.verb.regexp
#                        ^ - keyword.control.verb.regexp
#                         ^^^^^^^^^ keyword.control.verb.regexp
#                                  ^ - keyword.control.verb.regexp
#                                   ^^^^^^^ keyword.control.verb.regexp
#                                          ^ - keyword.control.verb.regexp
#                                           ^^^^ keyword.control.verb.regexp
#                                               ^ - keyword.control.verb.regexp
#                                                ^^^^^^^^^ keyword.control.verb.regexp
(*FA)
#^ invalid.illegal.unexpected-quantifier.regexp
(?-x)

 \Qtext.here.is\dliteral)\E{1,2}{1,2}
#^^ keyword.control
#  ^^^^^^^^^^^^^^^^^^^^^^ meta.literal - keyword
#                        ^^ keyword.control
#                          ^^^^^ keyword.operator.quantifier
#                               ^^^^^ invalid.illegal.unexpected-quantifier
 \K
#^^ keyword.control
