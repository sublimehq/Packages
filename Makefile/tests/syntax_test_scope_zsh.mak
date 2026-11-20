# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

SHELL=zsh

#################################
# Comments                      #
#################################

# this is a comment
# <- comment.line.number-sign.makefile punctuation.definition.comment.makefile
#^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile

# this is a \
multiline comment
# <- comment.line.number-sign.makefile
#^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile

# this is not a \\
multiline comment
# <- - comment
#^^^^^^^^^^^^^^^^^ - comment

# this is a \\\
multiline comment
# <- comment.line.number-sign.makefile
#^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile

#   echo I am a comment \
    echo I am a comment, too!
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line

#   echo I am a comment \
    echo I am a comment, too!
    echo I am no comment...
#   ^^^^^^^^^^^^^^^^^^^^^^^ - comment.line

\# not a comment
# <- constant.character.escape.makefile
#^ constant.character.escape.makefile
#^^^^^^^^^^^^^^^^ - comment

$( # not a comment )
#^^^^^^^^^^^^^^^^^^^ meta.interpolation.makefile
# ^^^^^^^^^^^^^^^^^ - comment

${ # not a comment }
#^^^^^^^^^^^^^^^^^^^ meta.interpolation.makefile
# ^^^^^^^^^^^^^^^^^ - comment

#################################
# Merge Conflict Markers        #
#################################

<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

define TEST_CONFLICT_IN_MULTILINE_VARS :=
<<<<<<< HEAD
# <- meta.string.makefile string.unquoted.makefile meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile meta.block.conflict.begin.diff
# ^^^^^ punctuation.section.block.begin.diff
#      ^ - entity - punctuation
#       ^^^^ entity.name.section.diff
#           ^ - entity - punctuation

=======
# <- meta.string.makefile string.unquoted.makefile meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.string.makefile string.unquoted.makefile meta.block.conflict.separator.diff
# ^^^^^ punctuation.section.block.diff
#      ^ - punctuation

>>>>>>> master
# <- meta.string.makefile string.unquoted.makefile meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile meta.block.conflict.end.diff
#^^^^^^ punctuation.section.block.end.diff
#      ^ - entity - punctuation
#       ^^^^^^ entity.name.section.diff
#             ^ - entity - punctuation
endef
# <- keyword.control.endef.makefile
#^^^^ keyword.control.endef.makefile

test_conflict_in_rules:
<<<<<<< HEAD
# <- meta.function.body.makefile meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.function.body.makefile meta.block.conflict.begin.diff
# ^^^^^ punctuation.section.block.begin.diff
#      ^ - entity - punctuation
#       ^^^^ entity.name.section.diff
#           ^ - entity - punctuation
	rm ~/
#^^^^^^ meta.function.body.makefile
#^^^^^ source.shell.zsh.embedded.makefile
=======
# <- meta.function.body.makefile meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.function.body.makefile meta.block.conflict.separator.diff
# ^^^^^ punctuation.section.block.diff
#      ^ - punctuation
	rm $$HOME/
#^^^^^^^^^^^ meta.function.body.makefile
#^^^^^^^^^^ source.shell.zsh.embedded.makefile
#   ^^^^^^ meta.interpolation.parameter.shell
#   ^^ punctuation.definition.variable.shell
>>>>>>> master
# <- meta.function.body.makefile meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.function.body.makefile meta.block.conflict.end.diff
# ^^^^^ punctuation.section.block.end.diff
#      ^ - entity - punctuation
#       ^^^^^^ entity.name.section.diff
#             ^ - entity - punctuation

#################################
# 3.3 Including Other Makefiles #
#################################

include foo *.mk $(bar)
# <- meta.directive.include.makefile keyword.control.import.makefile
#^^^^^^^^^^^^^^^^^^^^^^ meta.directive.include.makefile
#^^^^^^ keyword.control.import.makefile
#      ^ - meta.string - string
#       ^^^ meta.string.glob.makefile string.unquoted.makefile
#          ^ - meta.string - string
#           ^^^^ meta.string.glob.makefile string.unquoted.makefile
#           ^ constant.other.wildcard.asterisk.makefile
#               ^ - meta.string - string
#                ^^^^^^ meta.string.glob.makefile meta.interpolation.makefile
#                ^ punctuation.definition.interpolation.makefile
#                 ^ punctuation.section.interpolation.begin.makefile
#                  ^^^ variable.other.makefile
#                     ^ punctuation.section.interpolation.end.makefile
#                      ^ - meta.string - string

-include foo *.mk $(bar)
# <- meta.directive.include.makefile keyword.operator.recipe.makefile
#^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.include.makefile
#^^^^^^^ keyword.control.import.makefile
#       ^ - meta.string - string
#        ^^^ meta.string.glob.makefile string.unquoted.makefile
#           ^ - meta.string - string
#            ^^^^ meta.string.glob.makefile string.unquoted.makefile
#            ^ constant.other.wildcard.asterisk.makefile
#                ^ - meta.string - string
#                 ^^^^^^ meta.string.glob.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^ variable.other.makefile
#                      ^ punctuation.section.interpolation.end.makefile

sinclude foo *.mk $(bar)
# <- meta.directive.include.makefile keyword.control.import.makefile
#^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.include.makefile
#^^^^^^^ keyword.control.import.makefile
#       ^ - meta.string - string
#        ^^^ meta.string.glob.makefile string.unquoted.makefile
#           ^ - meta.string - string
#            ^^^^ meta.string.glob.makefile string.unquoted.makefile
#            ^ constant.other.wildcard.asterisk.makefile
#                ^ - meta.string - string
#                 ^^^^^^ meta.string.glob.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^ variable.other.makefile
#                      ^ punctuation.section.interpolation.end.makefile

include $(addprefix $(srctree)/, $(include-y))
# <- meta.directive.include.makefile keyword.control.import.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.include.makefile
#^^^^^^ keyword.control.import.makefile
#       ^^ meta.string.glob.makefile meta.interpolation.makefile
#         ^^^^^^^^^^ meta.string.glob.makefile meta.interpolation.makefile meta.function-call.makefile
#                   ^^^^^^^^^^ meta.string.glob.makefile meta.interpolation.makefile meta.function-call.arguments.makefile meta.string.makefile meta.interpolation.makefile
#                             ^ meta.string.glob.makefile meta.interpolation.makefile meta.function-call.arguments.makefile meta.string.makefile
#                              ^^ meta.string.glob.makefile meta.interpolation.makefile meta.function-call.arguments.makefile - meta.function-call meta.string
#                                ^^^^^^^^^^^^ meta.string.glob.makefile meta.interpolation.makefile meta.function-call.arguments.makefile meta.string.makefile meta.interpolation.makefile
#                                            ^ meta.string.glob.makefile meta.interpolation.makefile - meta.function-call
#                                             ^ - meta.string - meta.interpolation
#       ^^^^^^^^^^^^^^^^^^^^^^ - string
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^^^^ support.function.builtin.makefile
#                   ^ punctuation.definition.interpolation.makefile
#                    ^ punctuation.section.interpolation.begin.makefile
#                     ^^^^^^^ variable.other.makefile
#                            ^ punctuation.section.interpolation.end.makefile
#                             ^ string.unquoted.makefile
#                              ^^^^^^^^^^^^^^^ - string
#                              ^ punctuation.separator.sequence.makefile
#                                ^ punctuation.definition.interpolation.makefile
#                                 ^ punctuation.section.interpolation.begin.makefile
#                                  ^^^^^^^^^ variable.other.makefile
#                                           ^^ punctuation.section.interpolation.end.makefile

include-y := scripts/Makefile.extrawarn
# <- variable.other.makefile - keyword
#^^^^^^^^ variable.other.makefile - keyword
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile

include-$(CONFIG_DEBUG_INFO) += scripts/Makefile.debug
# <- variable.other.makefile - keyword
#^^^^^^^ variable.other.makefile - keyword
#       ^^^^^^^^^^^^^^^^^^^^ variable.other.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^^^^^^^^^^^^ variable.other.makefile
#                          ^ punctuation.section.interpolation.end.makefile
#                            ^^ keyword.operator.assignment.makefile
#                               ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile

s-include
# <- - keyword
#^^^^^^^^^ - keyword

includes
# <- - keyword
#^^^^^^^ - keyword

###########################
# 3.9 Secondary Expansion #
###########################

.SECONDEXPANSION:
ONEVAR = onefile
TWOVAR = twofile
myfile: $(ONEVAR) $$(TWOVAR)
#       ^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#       ^^^^^^^^^ meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^ variable.other.makefile
#               ^ punctuation.section.interpolation.end.makefile
#                ^ - meta.interpolation
#                 ^^^^^^^^^^ meta.interpolation.makefile
#                 ^^ punctuation.definition.interpolation.makefile
#                   ^ punctuation.section.interpolation.begin.makefile
#                    ^^^^^^ variable.other.makefile
#                          ^ punctuation.section.interpolation.end.makefile
#                           ^ meta.function.makefile - meta.interpolation

.SECONDEXPANSION:
$(DO_IMPLS): $$(foreach s,$$(STEPS),$$(call $$(@)_STEP_TO_PROG,$$(s)))
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#          ^^ meta.function.makefile
#            ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#                         ^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.string.makefile meta.interpolation.makefile
#                                  ^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                   ^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                           ^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                ^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                              ^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                                   ^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                    ^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                     ^ meta.function.makefile - meta.interpolation
#          ^ punctuation.definition.rule.makefile
#            ^^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^^^^^^^ support.function.builtin.makefile
#                       ^ variable.other.makefile
#                        ^ punctuation.separator.sequence.makefile
#                         ^^ punctuation.definition.interpolation.makefile
#                           ^ punctuation.section.interpolation.begin.makefile
#                            ^^^^^ variable.other.makefile
#                                 ^ punctuation.section.interpolation.end.makefile
#                                  ^ punctuation.separator.sequence.makefile
#                                   ^^ punctuation.definition.interpolation.makefile
#                                     ^ punctuation.section.interpolation.begin.makefile
#                                      ^^^^ support.function.builtin.makefile
#                                           ^^ punctuation.definition.interpolation.makefile
#                                             ^ punctuation.section.interpolation.begin.makefile
#                                              ^ variable.language.automatic.makefile
#                                               ^ punctuation.section.interpolation.end.makefile
#                                                ^^^^^^^^^^^^^ variable.function.makefile
#                                                             ^ punctuation.separator.sequence.makefile
#                                                              ^^ punctuation.definition.interpolation.makefile
#                                                                ^ punctuation.section.interpolation.begin.makefile
#                                                                 ^ variable.other.makefile
#                                                                  ^^^ punctuation.section.interpolation.end.makefile
#

.SECONDEXPANSION:
$(foreach i,$(DO_IMPLS),$(foreach s,$(STEPS),$(i)^$(s))): $$(call $$(word 1,$$(subst ^, ,$$(@)))_STEP_TO_PROG,$$(word 2,$$(subst ^, ,$$(@))))
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#                                                       ^ meta.function.makefile punctuation.definition.rule.makefile
#                                                        ^ - punctuation
#                                                         ^^^^^^^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                 ^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                           ^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                                        ^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                                                             ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                                              ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                                               ^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                                                             ^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                                                                       ^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                                                                                    ^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                                                                                                         ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                                                                                          ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                                                                                            ^ - meta.string - meta.interpolation
#                                                         ^^ punctuation.definition.interpolation.makefile
#                                                           ^ punctuation.section.interpolation.begin.makefile
#                                                                 ^^ punctuation.definition.interpolation.makefile
#                                                                   ^ punctuation.section.interpolation.begin.makefile
#                                                                           ^^ punctuation.definition.interpolation.makefile
#                                                                             ^ punctuation.section.interpolation.begin.makefile
#                                                                                        ^^ punctuation.definition.interpolation.makefile
#                                                                                          ^ punctuation.section.interpolation.begin.makefile
#                                                                                                             ^^ punctuation.definition.interpolation.makefile
#                                                                                                               ^ punctuation.section.interpolation.begin.makefile
#                                                                                                                       ^^ punctuation.definition.interpolation.makefile
#                                                                                                                         ^ punctuation.section.interpolation.begin.makefile
#                                                                                                                                    ^^ punctuation.definition.interpolation.makefile
#                                                                                                                                      ^ punctuation.section.interpolation.begin.makefile
#                                                                                                                                        ^^^^ punctuation.section.interpolation.end.makefile

# test: no second expansion expands on any nesting level outside of prerequisites
PREREQ = $$(call $$(word 1,$$(subst ^, ,$$(@)))_STEP_TO_PROG,$$(word 2,$$(subst ^, ,$$(@))))
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile - meta.interpolation - variable
#        ^^ constant.character.escape.makefile
#                ^^ constant.character.escape.makefile
#                          ^^ constant.character.escape.makefile
#                                       ^^ constant.character.escape.makefile
#                                                            ^^ constant.character.escape.makefile
#                                                                      ^^ constant.character.escape.makefile
#                                                                                   ^^ constant.character.escape.makefile

# test: all single but second expansions expand on all nesting levels outside of prerequisites
PREREQ = $(call $(word 1,$(subst ^, ,$$(@)))_STEP_TO_PROG,$$(word 2,$(subst ^, ,$$(@))))
#        ^^^^^^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#               ^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                        ^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                    ^^^^^ meta.function-call.makefile meta.interpolation.makefile meta.function-call.arguments.makefile meta.string.makefile meta.interpolation.makefile meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                                          ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                   ^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                                     ^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                                       ^ - meta.string - meta.interpolation
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.function.makefile
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^^^^ support.function.builtin.makefile
#                        ^ punctuation.definition.interpolation.makefile
#                         ^ punctuation.section.interpolation.begin.makefile
#                          ^^^^^ support.function.builtin.makefile
#                                    ^^^^^ string.unquoted.makefile
#                                    ^^ constant.character.escape.makefile
#                                                         ^^^^^^^^^^ string.unquoted.makefile
#                                                         ^^ constant.character.escape.makefile
#                                                                   ^ punctuation.definition.interpolation.makefile
#                                                                    ^ punctuation.section.interpolation.begin.makefile
#                                                                     ^^^^^ support.function.builtin.makefile
#                                                                               ^^^^^ string.unquoted.makefile
#                                                                               ^^ constant.character.escape.makefile

###################
# 4.2 Rule Syntax #
###################

# This is NOT the start of a rule...
	# A comment with a tab and with a : colon
	# <- comment.line - meta.function - entity.name.function

rule: # comment
# <- meta.function.makefile entity.name.function.makefile - meta.function meta.function
#^^^^^^^^^^^^^^^ meta.function.makefile - meta.function meta.function
#^^^ entity.name.function.makefile
#   ^ punctuation.definition.rule.makefile
#    ^ - comment - punctuation
#     ^^^^^^^^^^ comment.line.number-sign.makefile
#     ^ punctuation.definition.comment.makefile

# <- meta.function.body.makefile

rule: prerequisites # comment
# <- meta.function.makefile entity.name.function.makefile - meta.function meta.function
#^^^^^ meta.function.makefile - meta.function meta.function
#^^^ entity.name.function.makefile
#   ^ punctuation.definition.rule.makefile
#    ^ - punctuation - string
#     ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile - meta.function meta.function
#                  ^^^^^^^^^^^ meta.function.makefile - meta.function meta.function
#                  ^ - comment - string
#                   ^^^^^^^^^^ comment.line.number-sign.makefile
#                   ^ punctuation.definition.comment.makefile

# <- meta.function.body.makefile

END_RULE = TRUE
# <- variable.other.makefile - meta.function

all:: foo.o
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^ entity.name.function.makefile
#  ^^ punctuation.definition.rule.makefile
#     ^^^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#          ^ meta.function.makefile
	ld a
    asdf
# <- - meta.function - source.shell
#   ^^^^ variable.other.makefile

all: foo \
    bar.*
#^^^^^^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#        ^ meta.function.makefile

a : b \
	more prerequisites \
	on a third line even
	# ^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
	recipe
	# <- meta.function.body source.shell.zsh.embedded.makefile

%:x
# <- meta.function entity.name.function variable.language
#^ meta.function.makefile punctuation.definition.rule.makefile
# ^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#  ^ meta.function.makefile
	recipe
	# <- meta.function.body source.shell.zsh.embedded.makefile

%.cpp: %.o
# <- meta.function.makefile entity.name.function.makefile variable.language.makefile
#^^^^^^ meta.function.makefile
#^^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#      ^ variable.language.makefile
#         ^ meta.function.makefile
	recipe
	# <- meta.function.body source.shell.zsh.embedded.makefile

$(a): b
#^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.section.interpolation.end.makefile
#   ^ punctuation.definition.rule.makefile
#     ^ meta.function.arguments.makefile string.unquoted.makefile
#      ^ meta.function.makefile

$(a:b=c) : d
#^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#    ^ keyword.operator.assignment.makefile
#      ^ punctuation.section.interpolation.end.makefile
#        ^ punctuation.definition.rule.makefile
#          ^ meta.function.arguments.makefile string.unquoted.makefile
#           ^ meta.function.makefile

$(X:a=b) : w ;
#^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#    ^ keyword.operator.assignment.makefile
#      ^ punctuation.section.interpolation.end.makefile
#        ^ punctuation.definition.rule.makefile
#          ^ meta.function.arguments.makefile string.unquoted.makefile
#            ^ punctuation.terminator.makefile
#             ^ meta.function.body.makefile

$(sort $(a)): $(b) ;
#^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^ entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^ meta.function-call.makefile
# ^^^^ support.function.builtin.makefile
#      ^^^^ meta.function-call.arguments.makefile meta.string.makefile meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^ variable.other.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ punctuation.section.interpolation.end.makefile
#           ^ punctuation.definition.rule.makefile
#             ^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.other.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^^ meta.function.makefile
#                  ^ punctuation.terminator.makefile
#                   ^ meta.function.body.makefile

###############################################
# 4.4 Using Wildcard Characters in File Names #
###############################################

include a-[a-z]-f?le*.mk
#       ^^^^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#         ^^^^^ meta.character-class.glob.makefile
#         ^ punctuation.definition.character-class.begin.glob.makefile
#          ^^^ constant.other.range.glob.makefile
#           ^ punctuation.separator.sequence.glob.makefile
#             ^ punctuation.definition.character-class.end.glob.makefile
#                ^ constant.other.wildcard.questionmark.makefile
#                   ^ constant.other.wildcard.asterisk.makefile

include a-[$(a)-${b}]?.*
#       ^^^^^^^^^^^^^^^^ meta.string.glob.makefile
#       ^^^ string.unquoted.makefile
#         ^^^^^^^^^^^ meta.character-class.glob.makefile
#         ^ punctuation.definition.character-class.begin.glob.makefile
#          ^^^^ meta.interpolation.makefile - string
#          ^ punctuation.definition.interpolation.makefile
#           ^ punctuation.section.interpolation.begin.makefile
#            ^ variable.other.makefile
#             ^ punctuation.section.interpolation.end.makefile
#              ^ string.unquoted.makefile constant.other.range.glob.makefile punctuation.separator.sequence.glob.makefile
#               ^^^^ meta.interpolation.makefile - string
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.other.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^^^^ string.unquoted.makefile
#                   ^ punctuation.definition.character-class.end.glob.makefile
#                    ^ constant.other.wildcard.questionmark.makefile
#                      ^ constant.other.wildcard.asterisk.makefile

include [[.alpha.][=punct=][:space:]]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.character-class.glob.makefile
#       ^ punctuation.definition.character-class.begin.glob.makefile
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.character-class.glob.makefile
#        ^^ punctuation.definition.character-class.begin.glob.makefile
#          ^^^^^ constant.other.character-class.collate.glob.makefile
#               ^^ punctuation.definition.character-class.end.glob.makefile
#                 ^^ punctuation.definition.character-class.begin.glob.makefile
#                   ^^^^^ constant.other.character-class.equivalence.glob.makefile
#                        ^^ punctuation.definition.character-class.end.glob.makefile
#                          ^^ punctuation.definition.character-class.begin.glob.makefile
#                            ^^^^^ constant.other.character-class.posix.glob.makefile
#                                 ^^ punctuation.definition.character-class.end.glob.makefile
#                                   ^ punctuation.definition.character-class.end.glob.makefile

###############################
# 4.4.3 The Function wildcard #
###############################

var = $(wildcard \(\()))))   # unbalanced parentheses must be escaped
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile constant.character.escape.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile

var = $(wildcard (()))))))   # parentheses must be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile - meta.interpolation

var = $(wildcard {{{)}}}}}   # braces don't need to be balanced
#^^ variable.other.makefile
#   ^ keyword.operator.assignment.makefile
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile
#                   ^ punctuation.section.interpolation.end.makefile
#                    ^^^^^ string.unquoted.makefile - meta.interpolation

var = ${wildcard \{\{}}}}}   # unbalanced braces must be escaped
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile constant.character.escape.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile

var = ${wildcard {{}}}}}}}   # braces must be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile - meta.interpolation

var = ${wildcard (((})))))   # parentheses don't need to be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile
#                   ^ punctuation.section.interpolation.end.makefile
#                    ^^^^^ string.unquoted.makefile - meta.interpolation

var = $(wildcard (a*b?-[a-z])?) # wildcards in balanced parentheses
#     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile
#                ^^^^^^ string.unquoted.makefile
#                  ^ constant.other.wildcard.asterisk.makefile
#                    ^ constant.other.wildcard.questionmark.makefile
#                      ^^^^^ meta.character-class.glob.makefile string.unquoted.makefile
#                      ^ punctuation.definition.character-class.begin.glob.makefile
#                       ^^^ constant.other.range.glob.makefile
#                        ^ punctuation.separator.sequence.glob.makefile
#                          ^ punctuation.definition.character-class.end.glob.makefile
#                           ^^ string.unquoted.makefile
#                            ^ constant.other.wildcard.questionmark.makefile
#                             ^ punctuation.section.interpolation.end.makefile

var = ${wildcard {a*b?-[a-z]}?} # wildcards in balanced braces
#     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^^ support.function.builtin.makefile
#                ^^^^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile
#                ^^^^^^ string.unquoted.makefile
#                  ^ constant.other.wildcard.asterisk.makefile
#                    ^ constant.other.wildcard.questionmark.makefile
#                      ^^^^^ meta.character-class.glob.makefile string.unquoted.makefile
#                      ^ punctuation.definition.character-class.begin.glob.makefile
#                       ^^^ constant.other.range.glob.makefile
#                        ^ punctuation.separator.sequence.glob.makefile
#                          ^ punctuation.definition.character-class.end.glob.makefile
#                           ^^ string.unquoted.makefile
#                            ^ constant.other.wildcard.questionmark.makefile
#                             ^ punctuation.section.interpolation.end.makefile

wildcard: $(wildcard a-[a-b]?.*)
#         ^^^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#         ^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^^^^^^^^^ meta.function-call.makefile
#           ^^^^^^^^ support.function.builtin.makefile
#                    ^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile
#                    ^^ string.unquoted.makefile
#                      ^^^^^ meta.character-class.glob.makefile string.unquoted.makefile
#                      ^ punctuation.definition.character-class.begin.glob.makefile
#                       ^^^ constant.other.range.glob.makefile
#                        ^ punctuation.separator.sequence.glob.makefile
#                          ^ punctuation.definition.character-class.end.glob.makefile
#                           ^^^ string.unquoted.makefile
#                           ^ constant.other.wildcard.questionmark.makefile
#                             ^ constant.other.wildcard.asterisk.makefile
#                              ^ punctuation.section.interpolation.end.makefile
#                               ^ meta.function.makefile

wildcard: $(wildcard a-[$(a)-${b}]?.*)
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#         ^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^^^^^^^^^ meta.function-call.makefile
#           ^^^^^^^^ support.function.builtin.makefile
#                    ^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile
#                    ^^ string.unquoted.makefile
#                      ^^^^^^^^^^^ meta.character-class.glob.makefile
#                      ^ string.unquoted.makefile punctuation.definition.character-class.begin.glob.makefile
#                       ^^^^ meta.interpolation.makefile - string
#                       ^ punctuation.definition.interpolation.makefile
#                        ^ punctuation.section.interpolation.begin.makefile
#                         ^ variable.other.makefile
#                          ^ punctuation.section.interpolation.end.makefile
#                           ^ string.unquoted.makefile constant.other.range.glob.makefile punctuation.separator.sequence.glob.makefile
#                            ^^^^ meta.interpolation.makefile - string
#                            ^ punctuation.definition.interpolation.makefile
#                             ^ punctuation.section.interpolation.begin.makefile
#                              ^ variable.other.makefile
#                               ^ punctuation.section.interpolation.end.makefile
#                                ^ string.unquoted.makefile punctuation.definition.character-class.end.glob.makefile
#                                 ^^^ string.unquoted.makefile
#                                 ^ constant.other.wildcard.questionmark.makefile
#                                   ^ constant.other.wildcard.asterisk.makefile
#                                    ^ punctuation.section.interpolation.end.makefile
#                                     ^ meta.function.makefile

$(wildcard *.c): $$(wildcard a-[$$(a)-$${b}]?.*)
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^ entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^ meta.function-call.makefile
# ^^^^^^^^ support.function.builtin.makefile
#          ^^^ meta.function-call.arguments.makefile meta.string.glob.makefile string.unquoted.makefile
#          ^ constant.other.wildcard.asterisk.makefile
#             ^ punctuation.section.interpolation.end.makefile
#              ^ punctuation.definition.rule.makefile
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#                ^^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^^^^^^^ meta.function-call.makefile
#                   ^^^^^^^^ support.function.builtin.makefile
#                            ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile
#                            ^^ string.unquoted.makefile
#                              ^^^^^^^^^^^^^ meta.character-class.glob.makefile
#                              ^ string.unquoted.makefile punctuation.definition.character-class.begin.glob.makefile
#                               ^^^^^ meta.interpolation.makefile - string
#                               ^^ punctuation.definition.interpolation.makefile
#                                 ^ punctuation.section.interpolation.begin.makefile
#                                  ^ variable.other.makefile
#                                   ^ punctuation.section.interpolation.end.makefile
#                                    ^ string.unquoted.makefile constant.other.range.glob.makefile punctuation.separator.sequence.glob.makefile
#                                     ^^^^^ meta.interpolation.makefile - string
#                                     ^^ punctuation.definition.interpolation.makefile
#                                       ^ punctuation.section.interpolation.begin.makefile
#                                        ^ variable.other.makefile
#                                         ^ punctuation.section.interpolation.end.makefile
#                                          ^ string.unquoted.makefile punctuation.definition.character-class.end.glob.makefile
#                                           ^^^ string.unquoted.makefile
#                                           ^ constant.other.wildcard.questionmark.makefile
#                                             ^ constant.other.wildcard.asterisk.makefile
#                                              ^ punctuation.section.interpolation.end.makefile
#                                               ^ meta.function.makefile

#################################
# 4.5.2 The vpath Directive     #
#################################

vpath dir/*/whatev? whatevs
# <- meta.directive.vpath.makefile keyword.control.vpath.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.vpath.makefile
#^^^^ keyword.control.vpath.makefile
#     ^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#         ^ constant.other.wildcard.asterisk.makefile
#                 ^ constant.other.wildcard.questionmark.makefile
#                   ^^^^^^^ meta.string.makefile string.unquoted.makefile

vpath asdf/*
# <- meta.directive.vpath.makefile keyword.control.vpath.makefile
#^^^^^^^^^^^ meta.directive.vpath.makefile
#^^^^ keyword.control.vpath.makefile
#     ^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#          ^ constant.other.wildcard.asterisk.makefile

vpath
# <- meta.directive.vpath.makefile keyword.control.vpath.makefile
#^^^^ meta.directive.vpath.makefile keyword.control.vpath.makefile

# a comment check
# <- comment.line

#####################################
# 4.9 Special Built-in Target Names #
#####################################

.PHONY:
#^^^^^^^ meta.function.makefile
#^^^^^ entity.name.function.makefile
#     ^ punctuation.definition.rule.makefile

.SUFFIXES:
#^^^^^^^^^^ meta.function.makefile
#^^^^^^^^ entity.name.function.makefile
#        ^ punctuation.definition.rule.makefile

.DEFAULT:
#^^^^^^^^^ meta.function.makefile
#^^^^^^^ entity.name.function.makefile
#       ^ punctuation.definition.rule.makefile

.PRECIOUS:
#^^^^^^^^^^ meta.function.makefile
#^^^^^^^^ entity.name.function.makefile
#        ^ punctuation.definition.rule.makefile

.INTERMEDIATE:
#^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^ entity.name.function.makefile
#            ^ punctuation.definition.rule.makefile

.NOTINTERMEDIATE:
#^^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^^ entity.name.function.makefile
#               ^ punctuation.definition.rule.makefile

.SECONDARY:
#^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^ entity.name.function.makefile
#         ^ punctuation.definition.rule.makefile

.SECONDEXPANSION:
#^^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^^ entity.name.function.makefile
#               ^ punctuation.definition.rule.makefile

.DELETE_ON_ERROR:
#^^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^^ entity.name.function.makefile
#               ^ punctuation.definition.rule.makefile

.IGNORE:
#^^^^^^^^ meta.function.makefile
#^^^^^^ entity.name.function.makefile
#      ^ punctuation.definition.rule.makefile

.LOW_RESOLUTION_TIME:
#^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^^^^^^ entity.name.function.makefile
#                   ^ punctuation.definition.rule.makefile

.SILENT:
#^^^^^^^^ meta.function.makefile
#^^^^^^ entity.name.function.makefile
#      ^ punctuation.definition.rule.makefile

.EXPORT_ALL_VARIABLES:
#^^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^^^^^^^ entity.name.function.makefile
#                    ^ punctuation.definition.rule.makefile

.NOTPARALLEL:
#^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^ entity.name.function.makefile
#           ^ punctuation.definition.rule.makefile

.ONESHELL:
#^^^^^^^^^^ meta.function.makefile
#^^^^^^^^ entity.name.function.makefile
#        ^ punctuation.definition.rule.makefile

.POSIX:
#^^^^^^^ meta.function.makefile
#^^^^^ entity.name.function.makefile
#     ^ punctuation.definition.rule.makefile

#####################
# 5.1 Recipe Syntax #
#####################

rule: ; ifdef receipe  # not a make directive but passed to shell as command
#     ^ meta.function.makefile - source.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile
#       ^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#            ^^^^^^^^ meta.function-call.arguments.shell
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

rule:
	ifdef receipe  # not a make directive but passed to shell as command
# <- meta.function.body.makefile - source.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile
#^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#     ^^^^^^^^ meta.function-call.arguments.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

# A make comment.
# ^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile
rule: comments
	# A shell comment.
	# <- comment.line.number-sign.shell
	#^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
	bar # A shell comment.
	#   ^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

makefile_interpolation:
	var1="double $$quoted $(string) value"
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
	#^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
	#   ^ meta.assignment.shell keyword.operator.assignment.shell
	#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
	#    ^^^^^^^^ string.quoted.double.shell
	#    ^ punctuation.definition.string.begin.shell
	#            ^^^^^^^^ meta.interpolation.parameter.shell
	#            ^^ punctuation.definition.variable.shell
	#              ^^^^^^ variable.other.readwrite.shell
	#                    ^ string.quoted.double.shell
	#                     ^^^^^^^^^ meta.interpolation.makefile
	#                     ^ punctuation.definition.interpolation.makefile
	#                      ^ punctuation.section.interpolation.begin.makefile
	#                       ^^^^^^ variable.other.makefile
	#                             ^ punctuation.section.interpolation.end.makefile
	#                              ^^^^^^^ string.quoted.double.shell
	#                                    ^ punctuation.definition.string.end.shell
	var1='single $$quoted $(string) value'
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
	#^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
	#   ^ meta.assignment.shell keyword.operator.assignment.shell
	#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
	#    ^^^^^^^^^^^^^^^^ string.quoted.single.shell
	#    ^ punctuation.definition.string.begin.shell
	#            ^^ constant.character.escape.makefile
	#                     ^^^^^^^^^ meta.interpolation.makefile
	#                     ^ punctuation.definition.interpolation.makefile
	#                      ^ punctuation.section.interpolation.begin.makefile
	#                       ^^^^^^ variable.other.makefile
	#                             ^ punctuation.section.interpolation.end.makefile
	#                              ^^^^^^^ string.quoted.single.shell
	#                                    ^ punctuation.definition.string.end.shell
	var1=an\ $$unquoted\ $(string)\ value
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
	#^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
	#   ^ meta.assignment.shell keyword.operator.assignment.shell
	#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
	#    ^^^^ string.unquoted.shell
	#      ^^ constant.character.escape.shell
	#        ^^^^^^^^^^ meta.interpolation.parameter.shell
	#        ^^ punctuation.definition.variable.shell
	#          ^^^^^^^^ variable.other.readwrite.shell
	#                  ^^ constant.character.escape.shell
	#                    ^^^^^^^^^ meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ punctuation.section.interpolation.begin.makefile
	#                      ^^^^^^ variable.other.makefile
	#                            ^ punctuation.section.interpolation.end.makefile
	#                             ^^^^^^^ string.unquoted.shell

shell_interpolation:
	echo $$foo
	#    ^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
	#    ^^ punctuation.definition.variable.shell
	#      ^^^ variable.other.readwrite.shell
	foo $$(echo $$PATH)
	#   ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell
	#   ^^ punctuation.definition.variable.shell
	#     ^ punctuation.section.interpolation.begin.shell
	#      ^^^^ support.function.shell
	#           ^^ punctuation.definition.variable.shell
	#             ^^^^ variable.language.builtin.shell

	test "$$abc" = "$$def"
	# ^ support.function.shell
	#    ^^^^^^^ meta.string.glob.shell
	#     ^^ punctuation.definition.variable.shell
	#       ^^^ variable.other.readwrite.shell
	#              ^^^^^^^ meta.string.glob.shell
	#               ^^ punctuation.definition.variable.shell
	#                 ^^^ variable.other.readwrite.shell

$(EXECUTABLE): $(OBJECTS)
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^^^^^^^ meta.function.makefile
#              ^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#                        ^ meta.function.makefile
#^^^^^^^^^^^^ entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ punctuation.definition.rule.makefile
#              ^ punctuation.definition.interpolation.makefile
#               ^ punctuation.section.interpolation.begin.makefile
#                ^^^^^^^ variable.other.makefile
#                       ^ punctuation.section.interpolation.end.makefile
	$(CC) $(CFLAGS) $< -o $@
	# <- meta.function.body.makefile source.shell.zsh.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile punctuation.definition.interpolation.makefile
	#^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
	#    ^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile meta.function-call.arguments.shell
	#     ^^^^^^^^^ meta.string.glob.shell meta.interpolation.makefile
	#               ^^ meta.string.glob.shell meta.interpolation.makefile
	#               ^ punctuation.definition.interpolation.makefile
	#                ^ variable.language.automatic.makefile
	#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
	#                     ^^ meta.string.glob.shell meta.interpolation.makefile
	#                     ^ punctuation.definition.interpolation.makefile
	#                      ^ variable.language.automatic.makefile
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile - source.shell source.shell
	#^^^^^^^^^ meta.function-call.identifier.shell
	#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
	#            ^^^^^^^^ variable.other.makefile
	#                      ^^ variable.parameter.option.shell
	#                           ^^^^^^^^^ variable.other.makefile
	#                                      ^^ variable.parameter.option.shell
	#                                           ^^^^^^^^ variable.other.makefile
	#                                                       ^^^^^^^^^^^ variable.other.makefile

######################
# 5.2 Recipe Echoing #
######################

rule: prereq ; @rm -f *.o
#            ^ meta.function.makefile punctuation.terminator.makefile
#             ^^^^^^^^^^^ meta.function.body.makefile
#              ^ keyword.operator.recipe.makefile - source.shell
#               ^^^^^^^^ source.shell.zsh.embedded.makefile

rule:
	@rm -f *.o
# <- meta.function.body.makefile - source.shell
#^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.recipe.makefile - source.shell
# ^^^^^^^^ source.shell.zsh.embedded.makefile

comments:
	@# Comment Text
	#^ comment - variable
	@# FeedProcessorSIAC -origin CQS -decodeData "binData"
	#^ comment - variable

	@# # Regular Message
	#^ comment - variable
	@FeedProcessorSIAC -origin CTS -decodeData "binData"

expansions:
	@$(CC) -o $(CFLAGS)
	#^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile
	# <- keyword.operator.recipe.makefile
	#^^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
	#^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
	#^ punctuation.definition.interpolation.makefile
	# ^ punctuation.section.interpolation.begin.makefile
	#  ^^ variable.other.makefile
	#    ^ punctuation.section.interpolation.end.makefile
	#     ^^^^^^^^^^^^^ meta.function-call.arguments.shell
	#      ^^ meta.parameter.option.shell variable.parameter.option.shell
	#      ^ punctuation.definition.parameter.shell
	#         ^^^^^^^^^ meta.string.glob.shell meta.interpolation.makefile
	#         ^ punctuation.definition.interpolation.makefile
	#          ^ punctuation.section.interpolation.begin.makefile
	#           ^^^^^^ variable.other.makefile
	#                 ^ punctuation.section.interpolation.end.makefile

heredocs:
	var=<<HEREDOC
		Heredoc $(make) $$shell text.
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile meta.assignment.r-value.shell meta.redirection.shell meta.string.heredoc.shell
	#^^^^^^^^ string.unquoted.heredoc.shell
	#        ^^^^^^^ meta.interpolation.makefile
	#        ^ punctuation.definition.interpolation.makefile
	#         ^ punctuation.section.interpolation.begin.makefile
	#          ^^^^ variable.other.makefile
	#              ^ punctuation.section.interpolation.end.makefile
	#               ^ string.unquoted.heredoc.shell
	#                ^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
	#                ^^ punctuation.definition.variable.shell
	#                       ^^^^^^^ string.unquoted.heredoc.shell
	HEREDOC
#^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell

# <- meta.function.body.makefile - source.shell

_modinst_:
	@rm -rf $(MODLIB)/kernel
	# <- keyword.operator.recipe.makefile
	@rm -f $(MODLIB)/source
	# <- keyword.operator.recipe.makefile
	@mkdir -p $(MODLIB)/kernel
	# <- keyword.operator.recipe.makefile
	@ln -s `cd $(srctree) && /bin/pwd` $(MODLIB)/source
	# <- keyword.operator.recipe.makefile
	@if [ ! $(objtree) -ef  $(MODLIB)/build ]; then \
	    rm -f $(MODLIB)/build ; \
	    ln -s $(CURDIR) $(MODLIB)/build ; \
	fi
	@cp -f $(objtree)/modules.order $(MODLIB)/
	# <- keyword.operator.recipe.makefile
	@cp -f $(objtree)/modules.builtin $(MODLIB)/
	# <- keyword.operator.recipe.makefile

#########################
# 5.5 Errors in Recipes #
#########################

clean: prereq ; -rm -f *.o
#             ^ meta.function.makefile punctuation.terminator.makefile
#              ^^^^^^^^^^^ meta.function.body.makefile
#               ^ keyword.operator.recipe.makefile - source.shell
#                ^^^^^^^^ source.shell.zsh.embedded.makefile

clean:
	-rm -f *.o
# <- meta.function.body.makefile - source.shell
#^^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.recipe.makefile - source.shell
# ^^^^^^^^^ source.shell.zsh.embedded.makefile

clean:
	-$(RM) *.o
#^^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.recipe.makefile
# ^^^^^^^^^ source.shell.zsh.embedded.makefile
# ^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
# ^ punctuation.definition.interpolation.makefile
#  ^ punctuation.section.interpolation.begin.makefile
#   ^^ variable.other.makefile
#     ^ punctuation.section.interpolation.end.makefile
#      ^^^^ meta.function-call.arguments.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#       ^ constant.other.wildcard.asterisk.shell

###############################################
# 5.7.2 Communicating Variables to a Sub-make #
###############################################

export
# <- meta.directive.export.makefile keyword.control.export.makefile
#^^^^^ meta.directive.export.makefile keyword.control.export.makefile

export foo=bar
# <- meta.directive.export.makefile keyword.control.export.makefile
#^^^^^^^^^^^^^ meta.directive.export.makefile
#^^^^^ keyword.control.export.makefile
#      ^^^ variable.other.makefile
#         ^ keyword.operator.assignment.makefile
#          ^^^ meta.string.makefile string.unquoted.makefile

foo=bar
export foo\ bar $(baz) ${buz}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.export.makefile
#^^^^^ keyword.control.export.makefile
#      ^^^^^^^^ variable.other.makefile
#         ^^ constant.character.escape.makefile
#               ^^^^^^ meta.interpolation.makefile
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^^^ variable.other.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                      ^^^^^^ meta.interpolation.makefile
#                      ^ punctuation.definition.interpolation.makefile
#                       ^ punctuation.section.interpolation.begin.makefile
#                        ^^^ variable.other.makefile
#                           ^ punctuation.section.interpolation.end.makefile

export \
#^^^^^^^^ meta.directive.export.makefile
#^^^^^ keyword.control.export.makefile
#      ^^ variable.other.makefile
#      ^ punctuation.separator.continuation.line.makefile

export \
    foo
#^^^^^^ meta.directive.export.makefile
#   ^^^ variable.other.makefile

export RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o    \
              -name CVS -o -name .pc -o -name .hg -o -name .git \) \
              -prune -o
# <- meta.directive.export.makefile meta.string.makefile string.unquoted.makefile
#^^^^^^^^^^^^^^^^^^^^^^ meta.directive.export.makefile meta.string.makefile string.unquoted.makefile

export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn \
             --exclude CVS --exclude .pc --exclude .hg --exclude .git
# <- meta.directive.export.makefile meta.string.makefile string.unquoted.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.export.makefile meta.string.makefile string.unquoted.makefile

unexport
# <- meta.directive.undefine.makefile keyword.control.unexport.makefile
#^^^^^^^^ meta.directive.undefine.makefile
#^^^^^^^ keyword.control.unexport.makefile

unexport foo\ bar $(baz) ${buz}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.undefine.makefile
#^^^^^^^ keyword.control.unexport.makefile
#        ^^^^^^^^ variable.other.makefile
#           ^^ constant.character.escape.makefile
#                 ^^^^^^ variable.other.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^ variable.other.makefile variable.other.makefile
#                      ^ punctuation.section.interpolation.end.makefile
#                        ^^^^^^ variable.other.makefile meta.interpolation.makefile
#                        ^ punctuation.definition.interpolation.makefile
#                         ^ punctuation.section.interpolation.begin.makefile
#                          ^^^ variable.other.makefile variable.other.makefile
#                             ^ punctuation.section.interpolation.end.makefile

unexport \
#^^^^^^^^^^ meta.directive.undefine.makefile
#^^^^^^^ keyword.control.unexport.makefile
#        ^^ variable.other.makefile
#        ^ punctuation.separator.continuation.line.makefile

unexport \
    foo
#^^^^^^ meta.directive.undefine.makefile
#   ^^^ variable.other.makefile

#####################################
# 6.1 Basics of Variable References #
#####################################

 $
#^ - punctuation

 $F
#^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ variable.other.makefile

 $FOO
#^^ meta.interpolation.makefile
#  ^^ - meta.interpolation
#^ punctuation.definition.interpolation.makefile - variable.language
# ^ variable.other.makefile

 $(
#^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile

 $(

# <- - meta.variable - meta.interpolation

 $()
#^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^ punctuation.section.interpolation.end.makefile

 $(var$\
#^^^^^^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^^^^^^ variable.other.makefile
#      ^ punctuation.separator.continuation.line.makefile

 $(var$\
   name)
#^^^^^^^ meta.interpolation.makefile
#^^^^^^ variable.other.makefile
#      ^ punctuation.section.interpolation.end.makefile

 ${

# <- - meta.variable - meta.interpolation

 ${}
#^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^ punctuation.section.interpolation.end.makefile

 ${var$\
#^^^^^^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^^^^^^ variable.other.makefile
#      ^ punctuation.separator.continuation.line.makefile

 ${var$\
   name}
#^^^^^^^ meta.interpolation.makefile
#^^^^^^ variable.other.makefile
#      ^ punctuation.section.interpolation.end.makefile

 $$
#^^ variable.other.makefile constant.character.escape.makefile

 $$name
#^^^^^^ variable.other.makefile - meta.interpolation
#^^ constant.character.escape.makefile

 a$$name
#^^^^^^^ variable.other.makefile - meta.interpolation
# ^^ constant.character.escape.makefile

 $$()
#^^^^ variable.other.makefile - meta.interpolation
#^^ constant.character.escape.makefile

 $$(plain_var)
#^^^^^^^^^^^^^ variable.other.makefile - meta.interpolation
#^^ constant.character.escape.makefile

 $${}
#^^^^ variable.other.makefile - meta.interpolation
#^^ constant.character.escape.makefile

 $${plain_var}
#^^^^^^^^^^^^^ variable.other.makefile - meta.interpolation
#^^ constant.character.escape.makefile

#################################
# 6.3.1 substitution references #
#################################

bar := $(foo)
#      ^^^^^^ meta.string.makefile meta.interpolation.makefile - string
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile

bar := $(foo:.o=.c)
#      ^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - string meta.interpolation
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#              ^ keyword.operator.assignment.makefile
#                 ^ punctuation.section.interpolation.end.makefile

bar := $(foo:%.o=%.c)
#      ^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - string meta.interpolation
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ variable.language.makefile
#               ^ keyword.operator.assignment.makefile
#                ^ variable.language.makefile
#                   ^ punctuation.section.interpolation.end.makefile

bar := $(foo:()=()) # parentheses are not balanced in substitutions
#      ^^^^^^^^^^^^ meta.string.makefile
#      ^^^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ string.unquoted.makefile
#             ^ punctuation.section.interpolation.end.makefile
#              ^^^^ string.unquoted.makefile - meta.interpolation

bar := $(foo:(=))   # parentheses are not balanced in substitutions
#      ^^^^^^^^^^ meta.string.makefile
#      ^^^^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ string.unquoted.makefile
#             ^ keyword.operator.assignment.makefile
#              ^ punctuation.section.interpolation.end.makefile
#               ^ string.unquoted.makefile - meta.interpolation

bar := ${foo}
#      ^^^^^^ meta.string.makefile meta.interpolation.makefile - string
#      ^ punctuation.definition.interpolation.makefile - variable
#       ^ punctuation.section.interpolation.begin.makefile - variable
#        ^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile - variable

bar := ${foo:%.o=%.c}
#      ^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - string meta.interpolation
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ variable.language.makefile
#               ^ keyword.operator.assignment.makefile
#                ^ variable.language.makefile
#                   ^ punctuation.section.interpolation.end.makefile

bar := ${foo:{}={}} # parentheses are not balanced in substitutions
#      ^^^^^^^^^^^^ meta.string.makefile
#      ^^^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ string.unquoted.makefile
#             ^ punctuation.section.interpolation.end.makefile
#              ^^^^ string.unquoted.makefile - meta.interpolation

bar := ${foo:{=}}   # parentheses are not balanced in substitutions
#      ^^^^^^^^^^ meta.string.makefile
#      ^^^^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ string.unquoted.makefile
#             ^ keyword.operator.assignment.makefile
#              ^ punctuation.section.interpolation.end.makefile
#               ^ string.unquoted.makefile - meta.interpolation

var := $($(a1)_objects:.o=.c)
#      ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^^^^^^^^^^^ variable.other.makefile
#        ^^^^^ meta.interpolation.makefile meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^^ variable.other.makefile
#            ^ punctuation.section.interpolation.end.makefile
#                     ^ punctuation.definition.substitution.makefile
#                        ^ keyword.operator.assignment.makefile
#                           ^ punctuation.section.interpolation.end.makefile

a_percentage_%_sign := $(SOME_C%MPLEX:SUBSTITUTI%N)
#^^^^^^^^^^^^^^^^^^ variable.other.makefile
#            ^ - variable.language
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#                      ^ punctuation.definition.interpolation.makefile
#                       ^ punctuation.section.interpolation.begin.makefile
#                        ^^^^^^^^^^^^ variable.other.makefile
#                              ^ variable.language.makefile
#                                    ^ punctuation.definition.substitution.makefile
#                                               ^ variable.language.makefile
#                                                 ^ punctuation.section.interpolation.end.makefile

#################################
# 6.3.2 computed variable names #
#################################

dir = foo
$(dir)_sources := $(wildcard $(dir)/*.c)
# <- meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^ meta.interpolation.makefile
#     ^^^^^^^^ - meta.interpolation
#^ punctuation.section.interpolation.begin.makefile
# ^^^ variable.other.makefile
#    ^ punctuation.section.interpolation.end.makefile
#     ^^^^^^^^ variable.other.makefile
#              ^^ keyword.operator.assignment.makefile
#                 ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^^^^^^^ meta.function-call.makefile
#                   ^^^^^^^^ support.function.builtin.makefile
#                            ^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.glob.makefile
#                            ^^^^^^ meta.interpolation.makefile
#                            ^ punctuation.definition.interpolation.makefile
#                             ^ punctuation.section.interpolation.begin.makefile
#                              ^^^ variable.other.makefile
#                                 ^ punctuation.section.interpolation.end.makefile
#                                  ^^^^ string.unquoted.makefile
#                                   ^ constant.other.wildcard.asterisk.makefile
#                                      ^ punctuation.section.interpolation.end.makefile

define $(dir)_print =
#     ^ - keyword - variable
#      ^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^^^^^^^ variable.other.makefile
#                   ^ keyword.operator.assignment.makefile
lpr $($(dir)_sources)
endef

a-$(b) := c
#^^^^^ variable.other.makefile
# ^^^^ meta.interpolation.makefile
# ^ punctuation.definition.interpolation.makefile
#  ^ punctuation.section.interpolation.begin.makefile
#   ^ variable.other.makefile variable.other.makefile
#    ^ punctuation.section.interpolation.end.makefile

$(Y:%.cpp=%.o) := $(Z)
#^^^^^^^^^^^^^ meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#   ^ variable.language.makefile
#        ^ keyword.operator.assignment.makefile
#         ^ variable.language.makefile
#            ^ punctuation.section.interpolation.end.makefile
#              ^^ keyword.operator.assignment.makefile
#                 ^^^^ meta.string.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^ variable.other.makefile
#                    ^ punctuation.section.interpolation.end.makefile

#########################
# 6.5 setting variables #
#########################

# operators specify when expansions are made

immediate = deferred
#^^^^^^^^ variable.other.makefile
#         ^ keyword.operator.assignment.makefile
#           ^^^^^^^^ meta.string.makefile string.unquoted.makefile

immediate ?= deferred
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^ meta.string.makefile string.unquoted.makefile

immediate := immediate
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^ meta.string.makefile string.unquoted.makefile

immediate ::= immediate
#^^^^^^^^ variable.other.makefile
#         ^^^ keyword.operator.assignment.makefile
#             ^^^^^^^^^ meta.string.makefile string.unquoted.makefile

immediate :::= immediate-with-escape
#^^^^^^^^ variable.other.makefile
#         ^^^^ keyword.operator.assignment.makefile
#              ^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile

immediate += deferred or immediate
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile

immediate != immediate
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^ source.shell.zsh.embedded.makefile variable.function.shell

foo = bar # a comment
#  ^^^ - meta.variable - variable - meta.string - string
#   ^ keyword.operator.assignment.makefile
#     ^^^ meta.string.makefile string.unquoted.makefile
#        ^ - meta.string - string
#         ^^^^^^^^^^^^ comment.line.number-sign.makefile
#         ^ punctuation.definition.comment.makefile

foo = bar # a multiline \
#                       ^ comment.line.number-sign.makefile punctuation.separator.continuation.line.makefile
foo = bar # a multiline \
              comment
#             ^ comment.line

var \
# <- variable.other.makefile
#^^^^ variable.other.makefile
#   ^ punctuation.separator.continuation.line.makefile

var \
:= \
# <- keyword.operator.assignment.makefile
#^ keyword.operator.assignment.makefile
#  ^ punctuation.separator.continuation.line.makefile

var \
:= \
word
# <- meta.string.makefile string.unquoted.makefile
#^^^ meta.string.makefile string.unquoted.makefile

var := one$\
#          ^ meta.string.makefile string.unquoted.makefile punctuation.separator.continuation.line.makefile
var := one$\
       word
#^^^^^^^^^^ meta.string.makefile string.unquoted.makefile

# conditional assignemts

ifeq ($(origin FOO), undefined)
# <- keyword.control.conditional.if.makefile
#^^^ keyword.control.conditional.if.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.makefile
#    ^ punctuation.section.group.begin.makefile
#     ^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^ meta.function-call.makefile
#       ^^^^^^ support.function.builtin.makefile
#              ^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                 ^ punctuation.section.interpolation.end.makefile
#                  ^ punctuation.separator.sequence.makefile
#                             ^ punctuation.section.group.end.makefile
FOO = bar
# <- variable.other.makefile
#^^ variable.other.makefile
#   ^ keyword.operator.assignment.makefile
#     ^^^ meta.string.makefile string.unquoted.makefile
endif
# <- keyword.control.conditional.endif.makefile
#^^^^ keyword.control.conditional.endif.makefile

# shell assignemts

hash != printf '\043'
# <- variable.other.makefile
#^^^ variable.other.makefile
#    ^^ keyword.operator.assignment.makefile
#       ^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
#       ^^^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#             ^^^^^^^ meta.function-call.arguments.shell
#              ^^^^^^ meta.string.glob.shell string.quoted.single.shell
#              ^ punctuation.definition.string.begin.shell
#                   ^ punctuation.definition.string.end.shell

file_list != find . -name '*.c'
# <- variable.other.makefile
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
#            ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                 ^ meta.string.glob.shell string.unquoted.shell
#                   ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                   ^ punctuation.definition.parameter.shell
#                         ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                         ^ punctuation.definition.string.begin.shell
#                             ^ punctuation.definition.string.end.shell

hash := $(shell printf '\043')
# <- variable.other.makefile
#^^^ variable.other.makefile
#    ^^ keyword.operator.assignment.makefile
#       ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^ meta.function-call.makefile
#         ^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#               ^^^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#                     ^^^^^^^ meta.function-call.arguments.shell
#                      ^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                      ^ punctuation.definition.string.begin.shell
#                           ^ punctuation.definition.string.end.shell
#                            ^ punctuation.section.interpolation.end.makefile

file_list := $(shell find . -name "*.c")
# <- variable.other.makefile
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#            ^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^^^^^ meta.function-call.makefile
#              ^^^^^ support.function.builtin.makefile
#                    ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#                    ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                         ^ meta.string.glob.shell string.unquoted.shell
#                           ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                           ^ punctuation.definition.parameter.shell
#                                 ^^^^^ meta.string.glob.shell string.quoted.double.shell
#                                 ^ punctuation.definition.string.begin.shell
#                                     ^ punctuation.definition.string.end.shell
#                                      ^ punctuation.section.interpolation.end.makefile

BASH_CMD = sh -c '\
#        ^ keyword.operator.assignment.makefile
#          ^^^^^^ meta.string.makefile - meta.interpolation
#                ^^^ meta.string.makefile meta.interpolation.makefile
#          ^^^^^^ string.unquoted.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ source.shell.bash.embedded punctuation.separator.continuation.line.shell - source.shell source.shell
  if something; then
    build_thisway $$1 $$2;
  fi' BASH_CMD
# ^^^ meta.string.makefile meta.interpolation.makefile
#    ^^^^^^^^^ meta.string.makefile string.unquoted.makefile - meta.interpolation
# ^^ source.shell.bash.embedded keyword.control.conditional.endif.shell - source.shell source.shell
#   ^ punctuation.section.interpolation.end.makefile

ZSH_CMD = zsh -c '\
#       ^ keyword.operator.assignment.makefile
#         ^^^^^^^ meta.string.makefile - meta.interpolation
#                ^^^ meta.string.makefile meta.interpolation.makefile
#         ^^^^^^^ string.unquoted.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ source.shell.zsh.embedded punctuation.separator.continuation.line.shell - source.shell source.shell
  if something; then
    build_thisway $$1 $$2;
  fi' ZSH_CMD
# ^^^ meta.string.makefile meta.interpolation.makefile
#    ^^^^^^^^ meta.string.makefile string.unquoted.makefile - meta.interpolation
# ^^ source.shell.zsh.embedded keyword.control.conditional.endif.shell - source.shell source.shell
#   ^ punctuation.section.interpolation.end.makefile

########################################
# 6.6 appending more text to variables #
########################################

objects = main.o foo.o bar.o utils.o
objects += another.o
CFLAGS = $(includes) -O
CFLAGS += -pg # enable profiling

##############################
# 6.7 the override directive #
##############################

override variable = value
# <- keyword.control.override.makefile
override variable := value
override variable += more text
override CFLAGS += -g
override define foo
# <-keyword
#        ^ keyword
#               ^ variable.other
#                  ^ - string.unquoted
asdf
# <- string.unquoted
endef
# <- keyword
override define foo =
# <- keyword
#        ^ keyword
#               ^ variable.other
#                   ^ keyword.operator.assignment
#                    ^ - string
bar
endef
override define foo ?=
#                   ^^ keyword.operator.assignment
#                     ^ - string
bar
endef
override define foo :=
#                   ^^ keyword.operator.assignment
#                     ^ - string
bar
endef
# <- meta.directive.define.makefile keyword.control.endef.makefile

endef
# <- invalid.illegal.stray

override \
# <- keyword.control.override.makefile
#        ^ punctuation.separator.continuation.line.makefile

override \
	define foo
	#^^^^^^^^^^ meta.directive.define.makefile
	#^^^^^ keyword.control.define.makefile
	#      ^^^ variable.other.makefile
endef
# <- keyword.control.endef.makefile

#####################################
# 6.8 Defining Multi-Line Variables #
#####################################

# operators specify when expansions are made

define immediate
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^ variable.other.makefile
  deferred
endef
# <- keyword.control.endef.makefile

define immediate =
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^ keyword.operator.assignment.makefile
  deferred
endef
# <- keyword.control.endef.makefile

define immediate ?=
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^^ keyword.operator.assignment.makefile
  deferred
endef
# <- keyword.control.endef.makefile

define immediate :=
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^^ keyword.operator.assignment.makefile
  immediate
endef
# <- keyword.control.endef.makefile

define immediate ::=
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^^^ keyword.operator.assignment.makefile
  immediate
endef
# <- keyword.control.endef.makefile

define immediate :::=
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^^^^ keyword.operator.assignment.makefile
  immediate-with-escape
endef
# <- keyword.control.endef.makefile

define immediate +=
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^^ keyword.operator.assignment.makefile
  deferred or immediate
endef
# <- keyword.control.endef.makefile

define immediate !=
# <- keyword.control.define.makefile
#^^^^^ keyword.control.define.makefile
#      ^^^^^^^^^^ variable.other.makefile
#                ^^ keyword.operator.assignment.makefile
  immediate
endef
# <- keyword.control.endef.makefile

define FOO
  BAR := 1
  define BAZ
# ^^^^^^ string.unquoted.makefile - keyword
    X := 1
  endef
# ^^^^^^ string.unquoted.makefile - keyword
Y := 3
endef   # comment
#^^^^ keyword.control.endef.makefile
#       ^^^ comment.line.number-sign.makefile

define filechk_utsrelease.h
    if [ `echo -n "$(KERNELRELEASE)" | wc -c ` -gt $(uts_len) ]; then \
      echo '"$(KERNELRELEASE)" exceeds $(uts_len) characters' >&2;    \
      exit 1;                                                         \
    fi;                                                               \
    (echo \#define UTS_RELEASE \"$(KERNELRELEASE)\";)
endef
# <- keyword.control.endef.makefile

endef
# <- invalid.illegal.stray.endef.makefile

# Avoid false positives such as partial matches.

foodefine
#^^^^^^^^^ - keyword

definefoo
#^^^^^^^^^ - keyword

############################
# 6.9 Undefining Variables #
############################

undefine foo
# <- meta.directive.undefine.makefile keyword.control.undefine.makefile
#^^^^^^^^^^^ meta.directive.undefine.makefile
#^^^^^^^ keyword.control.undefine.makefile
#       ^ - keyword - variable
#        ^^^ variable.other.makefile

  undefine foo
# ^^^^^^^^^^^^ meta.directive.undefine.makefile
# ^^^^^^^^ keyword.control.undefine.makefile
#         ^ - keyword - variable
#          ^^^ variable.other.makefile
#             ^ - variable

override undefine CFLAGS
#^^^^^^^ keyword.control.override.makefile
#        ^^^^^^^^^^^^^^^ meta.directive.undefine.makefile
#        ^^^^^^^^ keyword.control.undefine.makefile
#                ^ - keyword - variable
#                 ^^^^^^ variable.other.makefile

# Avoid false positives such as partial matches.

undefined
#^^^^^^^^^ - keyword

nundefine
#^^^^^^^^^ - keyword

########################################
# 6.11 target-specific variable values #
########################################

prog : CFLAGS = -g
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^ variable.other.makefile
#             ^ keyword.operator.assignment.makefile
#               ^^ meta.string.makefile string.unquoted.makefile

$(prog) : CFLAGS = -g
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^ meta.function.makefile
#^^^^^^ entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^ variable.other.makefile
#     ^ punctuation.section.interpolation.end.makefile
#       ^ punctuation.definition.rule.makefile
#         ^^^^^^ variable.other.makefile
#                ^ keyword.operator.assignment.makefile
#                  ^^ meta.string.makefile string.unquoted.makefile

prog : define CFLAGS =
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^^^^^^^^^ meta.directive.define.makefile
#      ^^^^^^ keyword.control.define.makefile
#             ^^^^^^^ variable.other.makefile
#                    ^ keyword.operator.assignment.makefile
endef
# <- meta.directive.define.makefile keyword.control.endef.makefile
#^^^^ meta.directive.define.makefile keyword.control.endef.makefile

prog : override define CFLAGS =
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^ keyword.control.override.makefile
#               ^^^^^^^^^^^^^^^^ meta.directive.define.makefile
#               ^^^^^^ keyword.control.define.makefile
#                      ^^^^^^^ variable.other.makefile
#                             ^ keyword.operator.assignment.makefile
endef
# <- meta.directive.define.makefile keyword.control.endef.makefile
#^^^^ meta.directive.define.makefile keyword.control.endef.makefile

prog : undefine CFLAGS
# <- meta.function.makefile entity.name.function.makefile
#^^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^^^^^^^^ meta.directive.undefine.makefile
#      ^^^^^^^^ keyword.control.undefine.makefile
#               ^^^^^^ variable.other.makefile

prog : export CFLAGS = -g
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^^^^^^^^^^^ meta.directive.export.makefile
#      ^^^^^^ keyword.control.export.makefile
#             ^^^^^^ variable.other.makefile
#                    ^ keyword.operator.assignment.makefile
#                      ^^ meta.string.makefile string.unquoted.makefile

prog : override export CFLAGS = -g
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^ keyword.control.override.makefile
#               ^^^^^^^^^^^^^^^^^^ meta.directive.export.makefile
#               ^^^^^^ keyword.control.export.makefile
#                      ^^^^^^ variable.other.makefile
#                             ^ keyword.operator.assignment.makefile
#                               ^^ meta.string.makefile string.unquoted.makefile

prog : unexport CFLAGS
# <- meta.function.makefile entity.name.function.makefile
#^^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^^^^^^^^ meta.directive.undefine.makefile
#      ^^^^^^^^ keyword.control.unexport.makefile
#               ^^^^^^ variable.other.makefile

prog : override CFLAGS = -g
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^^^^^^ keyword.control.override.makefile
#               ^^^^^^ variable.other.makefile
#                      ^ keyword.operator.assignment.makefile
#                        ^^ meta.string.makefile string.unquoted.makefile

prog : no_variable # = -g
#      ^^^^^^^^^^^^^^^^^^ - variable.other
prog : \
	no_variable # = -g
#   ^^^^^^^^^^^^^^^^^^ - variable.other

#########################################
# 6.12 pattern-specific variable values #
#########################################

lib/%.o: CFLAGS := -fPIC -g
#      ^ punctuation.definition.rule.makefile
#                 ^ - string
#                  ^ string
#                          ^ - string
%.o: CFLAGS := -g
#  ^ punctuation.definition.rule.makefile
#             ^ - string
#              ^^ string
#                ^ - string

# Line comment
# <- comment

##############################
# 7.2 Syntax of Conditionals #
##############################

ifdef X
# <- meta.directive.conditional.if.makefile keyword.control.conditional.if.makefile
#^^^^^^ meta.directive.conditional.if.makefile
#^^^^ keyword.control.conditional.if.makefile
#     ^ variable.other.makefile
    $(info X is defined)
else ifndef Y
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^ keyword.control.conditional.if.makefile
#           ^ variable.other.makefile
    $(info Y is not defined)
else
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
    $(warning nothing defined)
endif
# <- meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile
#^^^^ meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile

ifeq (0,1)
# <- meta.directive.conditional.if.makefile keyword.control.conditional.if.makefile
#^^^^^^^^^^ meta.directive.conditional.if.makefile
#^^^ keyword.control.conditional.if.makefile
#    ^^^^^ meta.group.makefile
#    ^ punctuation.section.group.begin.makefile
#     ^ meta.string.makefile string.unquoted.makefile
#      ^ punctuation.separator.sequence.makefile
#       ^ meta.string.makefile string.unquoted.makefile
#        ^ punctuation.section.group.end.makefile
    $(info zero is one)

else ifneq (1,2)
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^^ keyword.control.conditional.if.makefile
#          ^^^^^ meta.group.makefile
#          ^ punctuation.section.group.begin.makefile
#           ^ meta.string.makefile string.unquoted.makefile
#            ^ punctuation.separator.sequence.makefile
#             ^ meta.string.makefile string.unquoted.makefile
#              ^ punctuation.section.group.end.makefile
#               ^ meta.eol.makefile
    $(info one is not equal to two)

else ifeq ("foo",bar")
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^^^^^^^^ meta.group.makefile
#         ^ punctuation.section.group.begin.makefile
#          ^^^^^ meta.string.makefile string.unquoted.makefile
#               ^ punctuation.separator.sequence.makefile
#                ^^^^ meta.string.makefile string.unquoted.makefile
#                    ^ punctuation.section.group.end.makefile
#                     ^ meta.eol.makefile

else ifneq (\",")
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^^ keyword.control.conditional.if.makefile
#          ^^^^^^ meta.group.makefile
#          ^ punctuation.section.group.begin.makefile
#           ^^ meta.string.makefile string.unquoted.makefile
#             ^ punctuation.separator.sequence.makefile
#              ^ meta.string.makefile string.unquoted.makefile
#               ^ punctuation.section.group.end.makefile
#                ^ meta.eol.makefile

else ifneq ((,))  # nested parens are not balanced
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^^ keyword.control.conditional.if.makefile
#          ^^^^ meta.group.makefile
#          ^ punctuation.section.group.begin.makefile
#           ^ meta.string.makefile string.unquoted.makefile
#            ^ punctuation.separator.sequence.makefile
#             ^ punctuation.section.group.end.makefile
#              ^ invalid.illegal.stray.makefile
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile
#                                                 ^ meta.eol.makefile

else ifeq (${foo}, $${bar})
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^^^^^^^^^^^^^ meta.group.makefile
#         ^ punctuation.section.group.begin.makefile
#          ^^^^^^ meta.string.makefile meta.interpolation.makefile
#          ^ punctuation.definition.interpolation.makefile
#           ^ punctuation.section.interpolation.begin.makefile
#            ^^^ variable.other.makefile
#               ^ punctuation.section.interpolation.end.makefile
#                ^ punctuation.separator.sequence.makefile
#                  ^^^^^^^ meta.string.makefile string.unquoted.makefile
#                  ^^ constant.character.escape.makefile
#                         ^ punctuation.section.group.end.makefile
#                          ^ meta.eol.makefile

else ifeq "2" "3"
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^ meta.string.makefile string.quoted.double.makefile
#         ^ punctuation.definition.string.begin.makefile
#           ^ punctuation.definition.string.end.makefile
#             ^^^ meta.string.makefile string.quoted.double.makefile
#             ^ punctuation.definition.string.begin.makefile
#               ^ punctuation.definition.string.end.makefile
#                ^ meta.eol.makefile

else ifeq '2' "3"  # quoted arguments
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^ meta.string.makefile string.quoted.single.makefile
#         ^ punctuation.definition.string.begin.makefile
#           ^ punctuation.definition.string.end.makefile
#             ^^^ meta.string.makefile string.quoted.double.makefile
#             ^ punctuation.definition.string.begin.makefile
#               ^ punctuation.definition.string.end.makefile
#                  ^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile
#                                    ^ meta.eol.makefile

else ifeq "2" '3'
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^ meta.string.makefile string.quoted.double.makefile
#         ^ punctuation.definition.string.begin.makefile
#           ^ punctuation.definition.string.end.makefile
#             ^^^ meta.string.makefile string.quoted.single.makefile
#             ^ punctuation.definition.string.begin.makefile
#               ^ punctuation.definition.string.end.makefile
#                ^ meta.eol.makefile

else ifeq '2' '3'
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^ meta.string.makefile string.quoted.single.makefile
#         ^ punctuation.definition.string.begin.makefile
#           ^ punctuation.definition.string.end.makefile
#             ^^^ meta.string.makefile string.quoted.single.makefile
#             ^ punctuation.definition.string.begin.makefile
#               ^ punctuation.definition.string.end.makefile
#                ^ meta.eol.makefile

else ifeq "\" "'"
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^ meta.string.makefile string.quoted.double.makefile - constant
#         ^ punctuation.definition.string.begin.makefile
#           ^ punctuation.definition.string.end.makefile
#             ^^^ meta.string.makefile string.quoted.double.makefile
#             ^ punctuation.definition.string.begin.makefile
#               ^ punctuation.definition.string.end.makefile
#                ^ meta.eol.makefile

else ifeq '\' '"'
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^ meta.string.makefile string.quoted.single.makefile - constant
#         ^ punctuation.definition.string.begin.makefile
#           ^ punctuation.definition.string.end.makefile
#             ^^^ meta.string.makefile string.quoted.single.makefile
#             ^ punctuation.definition.string.begin.makefile
#               ^ punctuation.definition.string.end.makefile
#                ^ meta.eol.makefile

else ifeq "foo
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^ meta.string.makefile string.quoted.double.makefile
#         ^ punctuation.definition.string.begin.makefile
#             ^ meta.eol.makefile invalid.illegal.unclosed-string.makefile

else ifeq 'foo
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^ meta.string.makefile string.quoted.single.makefile
#         ^ punctuation.definition.string.begin.makefile
#             ^ meta.eol.makefile invalid.illegal.unclosed-string.makefile

else ifeq """foo
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^^ meta.string.makefile string.quoted.double.makefile
#         ^ punctuation.definition.string.begin.makefile
#          ^ punctuation.definition.string.end.makefile
#           ^ punctuation.definition.string.begin.makefile
#               ^ meta.eol.makefile invalid.illegal.unclosed-string.makefile

else ifeq '''foo
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^^ meta.string.makefile string.quoted.single.makefile
#         ^ punctuation.definition.string.begin.makefile
#          ^ punctuation.definition.string.end.makefile
#           ^ punctuation.definition.string.begin.makefile
#               ^ meta.eol.makefile invalid.illegal.unclosed-string.makefile

else ifeq '${foo}' "$$(bar)"
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#    ^^^^ keyword.control.conditional.if.makefile
#         ^^^^^^^^ meta.string.makefile
#         ^ string.quoted.single.makefile punctuation.definition.string.begin.makefile
#          ^^^^^^ meta.interpolation.makefile
#          ^ punctuation.definition.interpolation.makefile
#           ^ punctuation.section.interpolation.begin.makefile
#            ^^^ variable.other.makefile
#               ^ punctuation.section.interpolation.end.makefile
#                ^ string.quoted.single.makefile punctuation.definition.string.end.makefile
#                  ^^^^^^^^^ meta.string.makefile string.quoted.double.makefile
#                  ^ punctuation.definition.string.begin.makefile
#                   ^^ constant.character.escape.makefile
#                          ^ punctuation.definition.string.end.makefile
#                           ^ meta.eol.makefile

else
#^^^^ meta.directive.conditional.else.makefile
#^^^ keyword.control.conditional.else.makefile
#   ^ meta.eol.makefile

endif
# <- meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile
#^^^^ meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile

ifeq (0,1)
    $(info foo)
else
# <- meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
#^^^ meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
ifeq (0,1)
#^^^ keyword.control.conditional.if.makefile
#    ^^^^^ meta.group.makefile
#    ^ punctuation.section.group.begin.makefile
#     ^ meta.string.makefile string.unquoted.makefile
#      ^ punctuation.separator.sequence.makefile
#       ^ meta.string.makefile string.unquoted.makefile
#        ^ punctuation.section.group.end.makefile
    $(info bar)
endif
# <- meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile
#^^^^ meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile

ifeq ($(shell test $(var) -lt 130000; echo $$?),0)
# <- meta.directive.conditional.if.makefile keyword.control.conditional.if.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#^^^ keyword.control.conditional.if.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.makefile
#    ^ punctuation.section.group.begin.makefile
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#                                              ^ - meta.string
#                                               ^ meta.string.makefile - meta.interpolation
#       ^^^^^^ meta.function-call.makefile
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#             ^^^^ support.function.shell
#                  ^^^^^^ meta.interpolation.makefile meta.interpolation.makefile
#                         ^^^ keyword.operator.comparison.shell
#                             ^^^^^^ constant.numeric.value.shell
#                                   ^ punctuation.terminator.statement.shell
#                                     ^^^^ support.function.shell
#                                          ^^^ variable.language.special.shell
#                                             ^ punctuation.section.interpolation.end.makefile
#                                              ^ punctuation.separator.sequence.makefile
#                                               ^ string.unquoted.makefile
#                                                ^ punctuation.section.group.end.makefile
endif

ifeq ($(shell test -r $(MAKEFILE_PATH)Makefile.Defs; echo $$?), 0)
# <- meta.directive.conditional.if.makefile keyword.control.conditional.if.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.conditional.if.makefile
#^^^ keyword.control.conditional.if.makefile
#    ^ meta.group.makefile - meta.group meta.interpolation
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.makefile meta.interpolation.makefile
#                                                             ^^^^ meta.group.makefile - meta.group meta.interpolation
#     ^^ - meta.function-call
#       ^^^^^^ meta.function-call.makefile
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#                                                            ^^^^^ - meta.function-call
#       ^^^^^ support.function.builtin.makefile
#            ^ - support
#             ^^^^ meta.function-call.identifier.shell support.function.shell
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                  ^^ variable.parameter.option.shell
#                     ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.makefile - string
#                                     ^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                                                  ^ punctuation.terminator.statement.shell
#                                                    ^^^^ meta.function-call.identifier.shell support.function.shell
#                                                        ^^^^ meta.function-call.arguments.shell
#                                                         ^^^ meta.interpolation.parameter.shell variable.language.special.shell
    include $(MAKEFILE_PATH)Makefile.Defs
    # <- keyword.control.import.makefile
    #^^^^^^ keyword.control.import.makefile
    #      ^ - meta.string - string - keyword
    #       ^^^^^^^^^^^^^^^^ meta.string.glob.makefile meta.interpolation.makefile - string
    #       ^ punctuation.definition.interpolation.makefile
    #        ^ punctuation.section.interpolation.begin.makefile
    #                      ^ punctuation.section.interpolation.end.makefile
    #                       ^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
    # IMPORTANT NOTE: Extra spaces are allowed and ignored at the beginning of
    # the line, but the first character must not be a tab (or the value of
    # .RECIPEPREFIX) — if the line begins with a tab, it will be considered a
    # recipe line.
endif
# <- meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile
#^^^^ meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile

####################################
# 7.3 Conditionals that Test Flags #
####################################

archive.a: …
  ifneq (,$(findstring t,$(firstword -$(MAKEFLAGS))))
# <- meta.function.body.makefile
#^ meta.function.body.makefile
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile meta.directive.conditional.if.makefile
# ^^^^^ keyword.control.conditional.if.makefile
	+touch archive.a
	#^^^^^^^^^^^^^^^^ meta.function.body.makefile
	# <- keyword.operator.recipe.makefile
	#^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
	+ranlib -t archive.a
	#^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile
	# <- keyword.operator.recipe.makefile
	#^^^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile
  else
# <- meta.function.body.makefile
#^ meta.function.body.makefile
# ^^^^ meta.function.body.makefile meta.directive.conditional.else.makefile keyword.control.conditional.else.makefile
	ranlib archive.a
	# <- meta.function.body.makefile source.shell.zsh.embedded.makefile
  endif
# <- meta.function.body.makefile
#^^^^^^^ meta.function.body.makefile
# ^^^^^ meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile

############################
# 8.6 The foreach Function #
############################

foo = $(foreach var,list,text)
#     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^ meta.function-call.arguments.makefile
#               ^^^ variable.other.makefile
#                  ^ punctuation.separator.sequence.makefile
#                   ^^^^ meta.string.makefile string.unquoted.makefile
#                       ^ punctuation.separator.sequence.makefile
#                        ^^^^ meta.string.makefile string.unquoted.makefile
#                            ^ punctuation.section.interpolation.end.makefile

foo = ${foreach var,list,text}
#     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^ meta.function-call.arguments.makefile
#               ^^^ variable.other.makefile
#                  ^ punctuation.separator.sequence.makefile
#                   ^^^^ meta.string.makefile string.unquoted.makefile
#                       ^ punctuation.separator.sequence.makefile
#                        ^^^^ meta.string.makefile string.unquoted.makefile
#                            ^ punctuation.section.interpolation.end.makefile

foo: $$(foreach var,list,text)
#    ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^ meta.function-call.arguments.makefile
#               ^^^ variable.other.makefile
#                  ^ punctuation.separator.sequence.makefile
#                   ^^^^ meta.string.makefile string.unquoted.makefile
#                       ^ punctuation.separator.sequence.makefile
#                        ^^^^ meta.string.makefile string.unquoted.makefile
#                            ^ punctuation.section.interpolation.end.makefile

foo: $${foreach var,list,text}
#    ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^ meta.function-call.makefile
#       ^^^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^ meta.function-call.arguments.makefile
#               ^^^ variable.other.makefile
#                  ^ punctuation.separator.sequence.makefile
#                   ^^^^ meta.string.makefile string.unquoted.makefile
#                       ^ punctuation.separator.sequence.makefile
#                        ^^^^ meta.string.makefile string.unquoted.makefile
#                            ^ punctuation.section.interpolation.end.makefile

$(foreach i,j,k): deps
#^^^^^^^^^^^^^^^^^ meta.function.makefile
#^^^^^^^^^^^^^^^ entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^ meta.function-call.makefile
# ^^^^^^^ support.function.builtin.makefile
#         ^^^^^ meta.function-call.arguments.makefile
#         ^ variable.other.makefile
#          ^ punctuation.separator.sequence.makefile
#           ^ meta.string.makefile string.unquoted.makefile
#            ^ punctuation.separator.sequence.makefile
#             ^ meta.string.makefile string.unquoted.makefile
#              ^ punctuation.section.interpolation.end.makefile
#               ^ punctuation.definition.rule.makefile
#                 ^^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#                     ^ meta.function.makefile
	rm -rf /
	# <- meta.function.body

$(foreach i,$(a),$(foreach j,$(b),x)): deps
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile
#                                      ^^^^ meta.function.arguments.makefile meta.string.makefile
#^^^^^^^^^^^^^^^^ entity.name.function.makefile meta.interpolation.makefile
#                ^^^^^^^^^^^^^^^^^^^ entity.name.function.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                   ^ entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^ support.function.builtin.makefile
#         ^ variable.other.makefile
#                  ^^^^^^^ support.function.builtin.makefile
#                          ^ variable.other.makefile
#                                  ^^ punctuation.section.interpolation.end.makefile
	rm -rf /
	# <- meta.function.body

#########################
# 8.8 The call Function #
#########################

foo = $(call something,arg,arg)
#     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^^^^^^^^^^^^^^^ meta.function-call.makefile
#                      ^^^^^^^ meta.function-call.arguments.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^ variable.function.makefile
#                     ^ punctuation.separator.sequence.makefile
#                      ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                         ^ punctuation.separator.sequence.makefile - string
#                          ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                             ^ punctuation.section.interpolation.end.makefile

foo = ${call something,arg,arg}
#     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^^^^^^^^^^^^^^^ meta.function-call.makefile
#                      ^^^^^^^ meta.function-call.arguments.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^ variable.function.makefile
#                     ^ punctuation.separator.sequence.makefile
#                      ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                         ^ punctuation.separator.sequence.makefile - string
#                          ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                             ^ punctuation.section.interpolation.end.makefile

foo: $$(call something,arg,arg)
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^^^^^^^^^^^^^^^ meta.function-call.makefile
#                      ^^^^^^^ meta.function-call.arguments.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^ variable.function.makefile
#                     ^ punctuation.separator.sequence.makefile
#                      ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                         ^ punctuation.separator.sequence.makefile - string
#                          ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                             ^ punctuation.section.interpolation.end.makefile

foo: $${call something,arg,arg}
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^^^^^^^^^^^^^^^ meta.function-call.makefile
#                      ^^^^^^^ meta.function-call.arguments.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^ variable.function.makefile
#                     ^ punctuation.separator.sequence.makefile
#                      ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                         ^ punctuation.separator.sequence.makefile - string
#                          ^^^ meta.string.makefile meta.string.makefile string.unquoted.makefile
#                             ^ punctuation.section.interpolation.end.makefile

$(call my_func,my_arg): deps
#^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^^^^^ meta.function-call.makefile
# ^^^^ support.function.builtin.makefile
#      ^^^^^^^ variable.function.makefile
#             ^ punctuation.separator.sequence.makefile
#              ^^^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^ punctuation.definition.rule.makefile
#                       ^^^^ meta.function.arguments.makefile string.unquoted.makefile
#                           ^ meta.function.makefile

var = $(call fun()))         # parentheses must be balanced
#     ^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^ variable.function.makefile
#                 ^ punctuation.section.interpolation.end.makefile
#                  ^ string.unquoted.makefile

var = $(call fu)n,(()))))    # parentheses must be balanced
#     ^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^ variable.function.makefile
#              ^ punctuation.section.interpolation.end.makefile
#               ^^^^^^^^^ string.unquoted.makefile

var = $(call fun,\(\()))))   # unbalanced parentheses must be escaped
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^ variable.function.makefile
#               ^ punctuation.separator.sequence.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile constant.character.escape.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile

var = $(call fun,(()))))))   # parentheses must be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile - meta.interpolation

var = $(call fun,{{{)}}}}}   # braces don't need to be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#                ^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                   ^ punctuation.section.interpolation.end.makefile
#                    ^^^^^ string.unquoted.makefile - meta.interpolation

var = ${call fun{}}}         # braces must be balanced
#     ^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^ variable.function.makefile
#                 ^ punctuation.section.interpolation.end.makefile
#                  ^ string.unquoted.makefile

var = ${call fu}n,{{}}}}}    # braces must be balanced
#     ^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^ variable.function.makefile
#              ^ punctuation.section.interpolation.end.makefile
#               ^^^^^^^^^ string.unquoted.makefile

var = ${call fun,\{\{}}}}}   # unbalanced braces must be escaped
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^ variable.function.makefile
#               ^ punctuation.separator.sequence.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile constant.character.escape.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile

var = ${call fun,{{}}}}}}}   # braces must be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#                ^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^^^^ string.unquoted.makefile - meta.interpolation

var = ${call fun,(((})))))   # parentheses don't need to be balanced
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#                ^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                   ^ punctuation.section.interpolation.end.makefile
#                    ^^^^^ string.unquoted.makefile - meta.interpolation

sh = $(shell run $(call something))
#                ^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile meta.string.glob.shell meta.interpolation.makefile
#                ^ punctuation.definition.interpolation.makefile
#                 ^ punctuation.section.interpolation.begin.makefile
#                  ^^^^ support.function.builtin.makefile
#                       ^^^^^^^^^ variable.function.makefile
#                                ^^ punctuation.section.interpolation.end.makefile

sh = $(shell run ${call something})
#                ^^^^^^^^^^^^^^^^^ source.shell.zsh.embedded.makefile meta.string.glob.shell meta.interpolation.makefile
#                ^ punctuation.definition.interpolation.makefile
#                 ^ punctuation.section.interpolation.begin.makefile
#                  ^^^^ support.function.builtin.makefile
#                       ^^^^^^^^^ variable.function.makefile
#                                ^^ punctuation.section.interpolation.end.makefile

foo = $(eval $(call bar))
#     ^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.makefile meta.interpolation.makefile
#            ^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^^^^^^^ meta.function-call.makefile
#              ^^^^ support.function.builtin.makefile
#                   ^^^ variable.function.makefile
#                      ^ punctuation.section.interpolation.end.makefile
#                       ^ punctuation.section.interpolation.end.makefile

pathsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))
#           ^ - meta.string.makefile - meta.interpolation
#            ^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                        ^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                   ^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                ^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                    ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                     ^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                 ^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                                        ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                         ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                          ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                           ^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                            ^ - meta.string.makefile - meta.interpolation
#              ^^^^^^^^^^ meta.function-call.makefile
#                        ^^ meta.function-call.arguments.makefile - meta.function-call meta.function-call
#                          ^^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.makefile
#                                   ^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call
#                                     ^^^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                               ^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call
#                                                       ^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile - meta.function-call meta.function-call meta.function-call meta.function-call meta.function-call
#                                                             ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.string.makefile
#                                                              ^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call meta.string
#                                                                 ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.string.makefile
#                                                                        ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call meta.function-call
#                                                                         ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call
#                                                                          ^ meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call
#                                                                           ^ - meta.function-call
#              ^^^^^^^^^ support.function.builtin.makefile
#                          ^^^^^^^^ support.function.builtin.makefile
#                                     ^^^^^^^^^ support.function.builtin.makefile
#                                                       ^^^^^ support.function.builtin.makefile

LS := $(call pathsearch,ls)
#     ^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^^ variable.function.makefile
#                      ^ punctuation.separator.sequence.makefile
#                       ^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                         ^ punctuation.section.interpolation.end.makefile

####################################
# 8.13 Functions That Control Make #
####################################

$(warning he:llo)
#^^^^^^^^^^^^^^^^ meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^ meta.function-call.makefile
# ^^^^^^^ support.function.builtin.makefile
#         ^^^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#               ^ punctuation.section.interpolation.end.makefile

error:
	$(error he:llo)
	# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile punctuation.definition.interpolation.makefile
	#^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
	# ^^^^^^ meta.function-call.makefile
	#       ^^^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile - punctuation
	# ^^^^^ support.function.builtin.makefile
	#             ^ punctuation.section.interpolation.end
info:
	$(info he:llo)
	# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile punctuation.definition.interpolation.makefile
	#^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
	# ^^^^^ meta.function-call.makefile
	#      ^^^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile - punctuation
	# ^^^^ support.function.builtin.makefile
	#            ^ punctuation.section.interpolation.end

var = $(info (()))))))   # parentheses must be balanced
#     ^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^^^^ string.unquoted.makefile - meta.interpolation

var = $(info {{{)}}}}}   # braces don't need to be balanced
#     ^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#               ^ punctuation.section.interpolation.end.makefile
#                ^^^^^ string.unquoted.makefile - meta.interpolation

var = ${info {{}}}}}}}   # braces must be balanced
#     ^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^^^^ string.unquoted.makefile - meta.interpolation

var = ${info (((})))))   # parentheses don't need to be balanced
#     ^^^^^^^^^^^^^^^^ meta.string.makefile
#     ^^^^^^^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#               ^ punctuation.section.interpolation.end.makefile
#                ^^^^^ string.unquoted.makefile - meta.interpolation

###########################
# 8.14 The shell Function #
###########################

sh = $(shell echo *.c)
#    ^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^ meta.function-call.makefile
#      ^^^^^ support.function.builtin.makefile
#            ^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#            ^^^^ meta.function-call.identifier.shell support.function.shell
#                ^^^^ meta.function-call.arguments.shell
#                 ^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ constant.other.wildcard.asterisk.shell
#                    ^ punctuation.section.interpolation.end.makefile

sh = $(shell $(LIST) -d $$HOME/ '$$NAME')
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^ meta.function-call.makefile
#      ^^^^^ support.function.builtin.makefile
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#            ^^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
#            ^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^^^ variable.other.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                    ^^ meta.parameter.option.shell variable.parameter.option.shell
#                    ^ punctuation.definition.parameter.shell
#                       ^^^^^^^ meta.string.glob.shell
#                       ^^^^^^ meta.interpolation.parameter.shell variable.language.builtin.shell
#                       ^^ punctuation.definition.variable.shell
#                             ^ string.unquoted.shell
#                               ^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                               ^ punctuation.definition.string.begin.shell
#                                ^^ constant.character.escape.makefile
#                                      ^ punctuation.definition.string.end.shell
#                                       ^ punctuation.section.interpolation.end.makefile

sh = $$(shell $$(LIST) -d $$$$HOME/ '$$$$NAME')
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile
#    ^^ constant.character.escape.makefile
#             ^^ constant.character.escape.makefile
#                         ^^^^ constant.character.escape.makefile
#                                    ^^^^ constant.character.escape.makefile

shell : $(shell $(LIST) -d $$HOME/ '$$NAME')
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^ meta.function-call.makefile
#         ^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#               ^^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^^^^ variable.other.makefile
#                     ^ punctuation.section.interpolation.end.makefile
#                      ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                       ^^ meta.parameter.option.shell variable.parameter.option.shell
#                       ^ punctuation.definition.parameter.shell
#                          ^^^^^^^ meta.string.glob.shell
#                          ^^^^^^ meta.interpolation.parameter.shell variable.language.builtin.shell
#                          ^^ punctuation.definition.variable.shell
#                                ^ string.unquoted.shell
#                                  ^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                  ^ punctuation.definition.string.begin.shell
#                                   ^^ constant.character.escape.makefile
#                                         ^ punctuation.definition.string.end.shell
#                                          ^ punctuation.section.interpolation.end.makefile

shell : $$(shell $$(LIST) -d $$$$HOME/ '$$$$NAME')
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#       ^^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^^^^^^ meta.function-call.makefile
#          ^^^^^ support.function.builtin.makefile
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#                ^^^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
#                ^^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^^ variable.other.makefile
#                       ^ punctuation.section.interpolation.end.makefile
#                        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                         ^^ meta.parameter.option.shell variable.parameter.option.shell
#                         ^ punctuation.definition.parameter.shell
#                            ^^^^^^^^^ meta.string.glob.shell
#                            ^^^^^^^^ meta.interpolation.parameter.shell variable.language.builtin.shell
#                            ^^^^ punctuation.definition.variable.shell
#                                    ^ string.unquoted.shell
#                                      ^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                      ^ punctuation.definition.string.begin.shell
#                                       ^^^^ constant.character.escape.makefile
#                                               ^ punctuation.definition.string.end.shell
#                                                ^ punctuation.section.interpolation.end.makefile
#                                                 ^ meta.function.makefile

##############################
# 10.5.3 Automatic Variables #
##############################

var = $@ $(@) ${@}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $% $(%) ${%}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $< $(<) ${<}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $? $(?) ${?}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $^ $(^) ${^}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $+ $(+) ${+}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $| $(|) ${|}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $* $(*) ${*}
#     ^^^^^^^^^^^^ meta.string.makefile
#     ^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ - meta.interpolation
#        ^^^^ meta.interpolation.makefile
#        ^ punctuation.definition.interpolation.makefile
#         ^ punctuation.section.interpolation.begin.makefile
#          ^ variable.language.automatic.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ - meta.interpolation
#             ^^^^ meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile

var = $(%D) ${%D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(%F) ${%F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(*D) ${*D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(*F) ${*F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(+D) ${+D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(+F) ${+F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(<D) ${<D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(<F) ${<F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(?D) ${?D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(?F) ${?F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(@D) ${@D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(@F) ${@F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(^D) ${^D}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

var = $(^F) ${^F}
#     ^^^^^^^^^^^ meta.string.makefile
#     ^^^^^ meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^ meta.interpolation.makefile
#           ^ punctuation.definition.interpolation.makefile
#            ^ punctuation.section.interpolation.begin.makefile
#             ^^ variable.language.automatic.makefile
#               ^ punctuation.section.interpolation.end.makefile

#######

var: $$@ $$(@) $${@}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$% $$(%) $${%}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$< $$(<) $${<}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$? $$(?) $${?}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$^ $$(^) $${^}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$+ $$(+) $${+}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$| $$(|) $${|}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$* $$(*) $${*}
#    ^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ variable.language.automatic.makefile
#       ^ string.unquoted.makefile
#        ^^^^^ meta.interpolation.makefile
#        ^^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.language.automatic.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ string.unquoted.makefile
#              ^^^^^ meta.interpolation.makefile
#              ^^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.language.automatic.makefile
#                  ^ punctuation.section.interpolation.end.makefile
#                   ^ meta.function.makefile

var: $$(%D) $${%D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(%F) $${%F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(*D) $${*D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(*F) $${*F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(+D) $${+D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(+F) $${+F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(<D) $${<D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(<F) $${<F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(?D) $${?D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(?F) $${?F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(@D) $${@D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(@F) $${@F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(^D) $${^D}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

var: $$(^F) $${^F}
#    ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^ meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ string.unquoted.makefile
#           ^^^^^^ meta.interpolation.makefile
#           ^^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.language.automatic.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                 ^ meta.function.makefile

#############################
# 12.2.1 The load Directive #
#############################

-load ../mk_funcs.so mk_meth.so
# <- meta.directive.load.makefile keyword.operator.recipe.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.load.makefile
#^^^^ keyword.control.import.makefile
#     ^^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#                   ^ - meta.string - string
#                    ^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#                              ^ - meta.string - string

load ../mk_funcs.so(init_mk_func)
# <- meta.directive.load.makefile keyword.control.import.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive.load.makefile
#^^^ keyword.control.import.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#                  ^^^^^^^^^^^^^^ meta.parens.makefile
#                  ^ punctuation.section.parens.begin.makefile
#                   ^^^^^^^^^^^^ entity.name.symbol.makefile
#                               ^ punctuation.section.parens.end.makefile
