# SYNTAX TEST "Packages/Regular Expressions/RegExp.sublime-syntax"


###################
## Anchors and escapes
###################

^foo \bbar$ \<test\>
# <- keyword.control.anchor
#    ^^ keyword.control.anchor
#         ^ keyword.control.anchor
#           ^^ keyword.control.anchor
#                 ^^ keyword.control.anchor

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
# ^^^ - storage.modifier.mode.regexp

 .*?
#^ keyword.other.any.regexp
# ^^ keyword.operator.quantifier.regexp

(?=.++\.??\|{2,3}|{2})
#^^ constant.other.assertion.regexp
#  ^ keyword.other.any.regexp
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
#^^^^^ meta.set.regexp
#^ punctuation.definition.set.begin.regexp
#    ^ punctuation.definition.set.end.regexp
# ^^^ constant.other.range.regexp
#  ^ punctuation.separator.sequence.regexp

[\x00-\x{A}]
# <- meta.set.regexp punctuation.definition.set.begin.regexp
#^^^^^^^^^^^ meta.set.regexp
#^^^^^^^^^^ constant.other.range
#^^^^ constant.character.escape
#    ^ punctuation.separator.sequence - constant.character
#     ^^^^^ constant.character.escape
#          ^ punctuation.definition.set.end.regexp

[[a-z]&&[:ascii:]]
# <- meta.set.regexp punctuation.definition.set.begin.regexp
#^^^^^ meta.set meta.set
#^ punctuation.definition.set.begin.regexp
# ^^^ constant.other.range
#    ^ punctuation.definition.set.end.regexp
#     ^^ keyword.operator.intersection
#       ^ punctuation.definition.set.begin.regexp
#        ^^^^^^^ constant.other.posix-class
#               ^^ punctuation.definition.set.end.regexp

[^abc\w0-9]
#^^^^^^^^^^ meta.set.regexp
# <- punctuation.definition.set.begin.regexp
#^ keyword.operator.logical.regexp
#    ^^ keyword.control.character-class.regexp
#      ^^^ constant.other.range.regexp
#       ^ punctuation.separator.sequence.regexp
#         ^ punctuation.definition.set.end.regexp

[a-c-x]
#^^^ constant.other.range
#   ^^ - constant.other.range

[]-]
# <- punctuation.definition.set.begin.regexp
#^ - punctuation
# ^ - constant.other.range
#  ^ punctuation.definition.set.end.regexp

[-a-n]
# <- punctuation.definition.set.begin.regexp
#^ - constant.other.range
# ^^^ constant.other.range
#    ^ punctuation.definition.set.end.regexp

[\-a]
# <- punctuation.definition.set.begin.regexp
#^^^ - constant.other.range
#   ^ punctuation.definition.set.end.regexp

[a-z\-9]
# <- punctuation.definition.set.begin.regexp
#   ^^^ - constant.other.range
#      ^ punctuation.definition.set.end.regexp

[\--z]
# <- punctuation.definition.set.begin.regexp
#^^^^ constant.other.range
#    ^ punctuation.definition.set.end.regexp

[a-\z]
# <- punctuation.definition.set.begin.regexp
#^^^^ constant.other.range
#    ^ punctuation.definition.set.end.regexp

[a-\-]
# <- punctuation.definition.set.begin.regexp
#^^^^ constant.other.range
#    ^ punctuation.definition.set.end.regexp

(?:a|b|c)
#^^^^^^^^ meta.group.regexp
# <- meta.group.regexp punctuation.section.group.begin.regexp
#^^ constant.other.assertion.regexp
#   ^ keyword.operator.alternation.regexp
#     ^ keyword.operator.alternation.regexp
#       ^ punctuation.section.group.end.regexp


###################
## Block comments
###################

(?#foobar)
#^^^^^^^^^ comment.block.group
# <- comment.block.group punctuation.definition.comment.begin
#^^ punctuation.definition.comment.begin
#        ^ punctuation.definition.comment.end

( abc (?#foobar) )
#     ^^^^^^^^^^ meta.group comment.block.group

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
# <- meta.modifier.regexp
#^^^ meta.modifier.regexp
#^^ storage.modifier.mode.regexp
#   ^ meta.ignored-whitespace

(?x){1}
# <- meta.modifier.regexp
#^^^ meta.modifier.regexp
#^^ storage.modifier.mode.regexp
#   ^^^ invalid.illegal.unexpected-quantifier.regexp

# this is a comment
#^^^^^^^^^^^^^^^^^^^ comment.line.number-sign
# <- comment punctuation.definition.comment

####################
# <- comment.line.number-sign.regexp punctuation.definition.comment.regexp
#^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.regexp punctuation.definition.comment.regexp
#                   ^ comment.line.number-sign.regexp - punctuation

## this is a comment
# <- comment.line.number-sign.regexp punctuation.definition.comment.regexp
#^ comment.line.number-sign.regexp punctuation.definition.comment.regexp
# ^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.regexp - punctuation

 (?-ix){1}
# <- meta.ignored-whitespace
#^^^^^^ meta.modifier.regexp
#^ punctuation.definition.modifier.begin.regexp
# ^^^^ storage.modifier.mode.regexp
#     ^ punctuation.definition.modifier.end.regexp
#      ^^^ invalid.illegal.unexpected-quantifier.regexp

# not a comment
# <- - comment

 (?-ix)
# <- - meta.ignored-whitespace
#^^^^^^ meta.modifier.regexp
#^ punctuation.definition.modifier.begin.regexp
# ^^^^ storage.modifier.mode.regexp
#     ^ punctuation.definition.modifier.end.regexp

# not a comment
# <- - comment

(
# <- meta.group.regexp punctuation.section.group.begin.regexp
#^ meta.group.regexp - keyword
    (?x)
#  ^ meta.group.regexp
#   ^^^^ meta.group.regexp meta.modifier.regexp - meta.group meta.group
#   ^ punctuation.definition.modifier.begin.regexp
#    ^^ storage.modifier.mode.regexp
#      ^ punctuation.definition.modifier.end.regexp
    # comment
#   ^^^^^^^^^ comment
    (?x)
#  ^ meta.group.regexp
#   ^^^^ meta.group.regexp meta.modifier.regexp - meta.group meta.group
#   ^ punctuation.definition.modifier.begin.regexp
#    ^^ storage.modifier.mode.regexp
#      ^ punctuation.definition.modifier.end.regexp
    # comment
#   ^^^^^^^^^ comment
    (?-x)
#   ^^^^^ meta.group.regexp meta.modifier.regexp - meta.group meta.group
    # comment
#   ^^^^^^^^^ - comment
    (?-x)
#   ^^^^^ meta.group.regexp meta.modifier.regexp - meta.group meta.group
    # comment
#   ^^^^^^^^^ - comment

    (?:
#  ^ meta.group.regexp - meta.group meta.group
#   ^^^^ meta.group.regexp meta.group.regexp
        (?x)
#      ^ meta.group.regexp meta.group.regexp - meta.group meta.group meta.group
#       ^^^^ meta.group.regexp meta.group.regexp meta.modifier.regexp - meta.group meta.group meta.group
#           ^ meta.group.regexp meta.group.regexp - meta.group meta.group meta.group
#       ^ punctuation.definition.modifier.begin.regexp
#        ^^ storage.modifier.mode.regexp
#          ^ punctuation.definition.modifier.end.regexp
        # comment
#       ^^^^^^^^^ comment
        (?x)
#      ^ meta.group.regexp meta.group.regexp - meta.group meta.group meta.group
#       ^^^^ meta.group.regexp meta.group.regexp meta.modifier.regexp - meta.group meta.group meta.group
#           ^ meta.group.regexp meta.group.regexp - meta.group meta.group meta.group
#       ^ punctuation.definition.modifier.begin.regexp
#        ^^ storage.modifier.mode.regexp
#          ^ punctuation.definition.modifier.end.regexp
        # comment
#       ^^^^^^^^^ comment
        (?-x)
#       ^^^^^ meta.group.regexp meta.group.regexp meta.modifier.regexp - meta.group meta.group meta.group
        # comment
#       ^^^^^^^^^ - comment
        (?-x)
#       ^^^^^ meta.group.regexp meta.group.regexp meta.modifier.regexp - meta.group meta.group meta.group
        # comment
#       ^^^^^^^^^ - comment
    ) # no comment
#^^^^ meta.group.regexp meta.group.regexp meta.mode.basic.regexp
#    ^^^^^^^^^^^^^^ meta.group.regexp meta.mode.basic.regexp - meta.group meta.group
#   ^ punctuation.section.group.end.regexp
#     ^^^^^^^^^^^^ - comment
) # no comment
# <- punctuation.section.group.end.regexp
# ^ - comment

(?sm-ixxs)
#^^^^^^^^ storage.modifier.mode.regexp

 (?i:hello)
#^^^^^^^^^^ meta.group.regexp
#^ punctuation.section.group.begin.regexp
# ^^^ storage.modifier.mode.regexp
#    ^ - storage.modifier.mode.regexp
#         ^ punctuation.section.group.end.regexp

 (?i-s:hello)
#^^^^^^^^^^^^ meta.group.regexp
#^ punctuation.section.group.begin.regexp
# ^^^^^ storage.modifier.mode.regexp
#      ^ - storage.modifier.mode.regexp
#           ^ punctuation.section.group.end.regexp

# not a comment
^ - comment

(?ix:
# comment
#^^^^^^^^ comment.line.number-sign

    (# also a comment)
#    ^^^^^^^^^^^^^^^^^ comment
    )

 (?s-x: # not a comment)
#       ^ - comment

)
# not a comment
# ^ - comment

(?x:[ ] )
#    ^ - meta.ignored-whitespace.regexp
#      ^ meta.ignored-whitespace.regexp


###################
## References
###################

(?<named_group>test)
#^^^^^^^^^^^^^^ keyword.other.named-capture-group.regexp
#  ^^^^^^^^^^^ entity.name.capture-group.regexp
#              ^^^^ - keyword.other.named-capture-group.regexp

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

(?1){1}
#^^ keyword.other.backref-and-recursion.regexp
# ^ variable.other.backref-and-recursion.regexp
#   ^^^ keyword.operator.quantifier.regexp

(1)
#^ - keyword - variable

(?&named_group){1}
#^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#  ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp
#              ^^^ keyword.operator.quantifier.regexp

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
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.regexp
#    ^^^^^^^^^^^^^^ keyword.other.named-capture-group.regexp
#     ^ punctuation.definition.capture-group-name.begin.regexp
#      ^^^^^^^^^^^ entity.name.capture-group.regexp
#                 ^ punctuation.definition.capture-group-name.end.regexp
#                  ^^^^ - keyword.other.named-capture-group.regexp
#                      ^ punctuation.section.group.end.regexp
#                       ^ punctuation.section.group.begin.regexp
#                        ^^^^^^^^^^^^^ keyword.other.backref-and-recursion.regexp
#                          ^^^^^^^^^^^ variable.other.backref-and-recursion.regexp
#                                     ^ punctuation.section.group.end.regexp

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
#                                   ^ punctuation.definition.capture-group-name.begin.regexp
#                                    ^^^^ variable.other.backref-and-recursion.regexp
#                                        ^ punctuation.definition.capture-group-name.end.regexp
#                                         ^ punctuation.definition.modifier.begin.regexp

###################
## Assertions
###################

(?![a-z]+?)
# <- meta.group.regexp punctuation.section.group.begin.regexp
#^^^^^^^^^^ meta.group.regexp - meta.group meta.group
#^^ constant.other.assertion.regexp
#  ^^^^^ meta.set.regexp
#  ^ punctuation.definition.set.begin.regexp
#   ^^^ constant.other.range.regexp
#      ^ punctuation.definition.set.end.regexp
#       ^^ keyword.operator.quantifier.regexp
#         ^ punctuation.section.group.end.regexp

(?![abc].\g1(?m)$)[\g1]
# <- punctuation.section.group.begin.regexp
#^^ constant.other.assertion.regexp
#  ^ punctuation.definition.set.begin.regexp
#      ^ punctuation.definition.set.end.regexp
#       ^ keyword.other.any.regexp
#        ^^^ keyword.other.backref-and-recursion.regexp
#           ^^^^ meta.group.regexp meta.modifier.regexp
#           ^ punctuation.definition.modifier.begin.regexp
#            ^^ storage.modifier.mode.regexp
#              ^ punctuation.definition.modifier.end.regexp
#               ^ keyword.control.anchor.regexp
#                ^ punctuation.section.group.end.regexp
#                 ^ punctuation.definition.set.begin.regexp
#                  ^^ constant.character.escape.regexp
#                  ^^^ - keyword.other.backref-and-recursion.regexp
#                     ^ punctuation.definition.set.end.regexp

(?<=blah)
#^^^ constant.other.assertion.regexp
(?<!\w+\(\))
#^^^ constant.other.assertion.regexp
(?>\[\d+\])
#^^ constant.other.assertion.regexp
#  ^^ constant.character.escape.regexp - punctuation.definition.set.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ keyword.operator.quantifier.regexp
#       ^^ constant.character.escape.regexp - punctuation.definition.set.regexp

(?<=>)[^<>]+(?=<)
#^^^ constant.other.assertion
#    ^ punctuation.section.group.end
#     ^ punctuation.definition.set.begin
#      ^ keyword.operator.logical
#         ^ punctuation.definition.set.end

(?<=X)[^<>]+(?=<)
#^^^ constant.other.assertion
#    ^ punctuation.section.group.end
#     ^ punctuation.definition.set.begin
#      ^ keyword.operator.logical
#         ^ punctuation.definition.set.end

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
# ^ punctuation.section.group.begin.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ punctuation.section.group.end.regexp
#        ^ keyword.operator.alternation.regexp
#          ^ punctuation.section.group.end.regexp
(?(?=\d)\da|b)
#^ keyword.other.conditional.regexp
# ^ punctuation.section.group.begin.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ punctuation.section.group.end.regexp
#       ^^ keyword.control.character-class.regexp
#          ^ keyword.operator.alternation.regexp
#            ^ punctuation.section.group.end.regexp
(?(?<=\dc)a|b)
#^ keyword.other.conditional.regexp
# ^ punctuation.section.group.begin.regexp
#  ^^^ constant.other.assertion.regexp
#     ^^ keyword.control.character-class.regexp
#        ^ punctuation.section.group.end.regexp
#          ^ keyword.operator.alternation.regexp
#            ^ punctuation.section.group.end.regexp
(?(R)a|b)
#^^^^ keyword.other.backref-and-recursion.conditional.regexp
#     ^ keyword.operator.alternation.regexp
#       ^ punctuation.section.group.end.regexp
(?(R1)a|b)
#^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#      ^ keyword.operator.alternation.regexp
#        ^ punctuation.section.group.end.regexp
(?(R1)a|b)
#^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#      ^ keyword.operator.alternation.regexp
#        ^ punctuation.section.group.end.regexp
(?<a>a)?b(?(R&a)c|d)(?1)
#         ^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#                ^ keyword.operator.alternation.regexp
#                  ^ punctuation.section.group.end.regexp
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
# ^ punctuation.section.group.begin.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ punctuation.section.group.end.regexp
#        ^ keyword.operator.alternation.regexp
#          ^ punctuation.section.group.end.regexp
(?(?=\d)\da|b)
#^ keyword.other.conditional.regexp
# ^ punctuation.section.group.begin.regexp
#  ^^ constant.other.assertion.regexp
#    ^^ keyword.control.character-class.regexp
#      ^ punctuation.section.group.end.regexp
#       ^^ keyword.control.character-class.regexp
#          ^ keyword.operator.alternation.regexp
#            ^ punctuation.section.group.end.regexp
(?(?<=\dc)a|b)
#^ keyword.other.conditional.regexp
# ^ punctuation.section.group.begin.regexp
#  ^^^ constant.other.assertion.regexp
#     ^^ keyword.control.character-class.regexp
#        ^ punctuation.section.group.end.regexp
#          ^ keyword.operator.alternation.regexp
#            ^ punctuation.section.group.end.regexp
(?(R)a|b)
#^^^^ keyword.other.backref-and-recursion.conditional.regexp
#     ^ keyword.operator.alternation.regexp
#       ^ punctuation.section.group.end.regexp
(?(R1)a|b)
#^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#      ^ keyword.operator.alternation.regexp
#        ^ punctuation.section.group.end.regexp
(?<a>a)?b(?(R&a)c|d)(?1)
#         ^^^^^^ keyword.other.backref-and-recursion.conditional.regexp
#                ^ keyword.operator.alternation.regexp
#                  ^ punctuation.section.group.end.regexp
(?(DEFINE)(?<a>abcd))(?&a)
#^^^^^^^^^ keyword.other.conditional.definition.regexp
#                     ^^^ keyword.other.backref-and-recursion.regexp
(?-x)


(?#http://www.boost.org/doc/libs/1_61_0/libs/regex/doc/html/boost_regex/syntax/perl_syntax.html#boost_regex.syntax.perl_syntax.backtracking_control_verbs)

'[^']*'(*SKIP)(*F)|" (?#http://stackoverflow.com/a/38638595/4473405)
#      ^^^^^^^^^^^ keyword.control.verb.regexp
 (*PRUNE) (*SKIP) (*THEN) (*COMMIT) (*FAIL) (*F) (*ACCEPT)
#^^^^^^^^ keyword.control.verb.regexp
#        ^ - keyword.control.verb.regexp
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
# <- meta.modifier.regexp
#^^^ meta.modifier.regexp
 (*PRUNE) (*SKIP) (*THEN) (*COMMIT) (*FAIL) (*F) (*ACCEPT)
#^^^^^^^^ keyword.control.verb.regexp
#        ^ - keyword.control.verb.regexp
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
# <- meta.modifier.regexp punctuation.definition.modifier.begin.regexp
#^^^ meta.modifier.regexp storage.modifier.mode.regexp
#   ^ meta.modifier.regexp punctuation.definition.modifier.end.regexp

 \Qtext.here.is\dliteral)\E{1,2}{1,2}{1,2}
#^^ keyword.control
#  ^^^^^^^^^^^^^^^^^^^^^^ meta.literal - keyword
#                        ^^ keyword.control
#                          ^^^^^ keyword.operator.quantifier
#                               ^^^^^^^^^^ invalid.illegal.unexpected-quantifier
 \K
#^^ keyword.control

(?x)(?i:{2})(?x:*)(?-x:?)(?-i:{2})(?i:(?-i:{1}))
# <- meta.modifier.regexp
#^^^ meta.modifier.regexp
#       ^^^ meta.group.regexp invalid.illegal.unexpected-quantifier
#               ^ meta.group.regexp invalid.illegal.unexpected-quantifier
#                      ^ meta.group invalid.illegal.unexpected-quantifier
#                             ^^^ meta.group.regexp invalid.illegal.unexpected-quantifier
#                                          ^^^ meta.group.regexp meta.group.regexp invalid.illegal.unexpected-quantifier
#                                               ^ meta.ignored-whitespace - meta.group
(?:(?x-i))
# <- meta.group.regexp - meta.group meta.group
#^^ meta.group.regexp - meta.group meta.group
#  ^^^^^^ meta.group.regexp meta.modifier.regexp
#        ^ meta.group.regexp - meta.group meta.group
