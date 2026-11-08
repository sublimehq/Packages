# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

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
#^^^^^ source.shell.embedded.makefile
=======
# <- meta.function.body.makefile meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.function.body.makefile meta.block.conflict.separator.diff
# ^^^^^ punctuation.section.block.diff
#      ^ - punctuation
	rm $$HOME/
#^^^^^^^^^^^ meta.function.body.makefile
#^^^^^^^^^^ source.shell.embedded.makefile
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
# <- meta.directive.include.makefile keyword.operator.suppress.makefile
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
#                              ^ punctuation.separator.makefile
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
#          ^ keyword.operator.assignment.makefile
#            ^^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^^^^^^^ support.function.builtin.makefile
#                       ^ string.unquoted.makefile
#                        ^ punctuation.separator.makefile
#                         ^^ punctuation.definition.interpolation.makefile
#                           ^ punctuation.section.interpolation.begin.makefile
#                            ^^^^^ variable.other.makefile
#                                 ^ punctuation.section.interpolation.end.makefile
#                                  ^ punctuation.separator.makefile
#                                   ^^ punctuation.definition.interpolation.makefile
#                                     ^ punctuation.section.interpolation.begin.makefile
#                                      ^^^^ support.function.builtin.makefile
#                                           ^^ punctuation.definition.interpolation.makefile
#                                             ^ punctuation.section.interpolation.begin.makefile
#                                              ^ variable.language.automatic.makefile
#                                               ^ punctuation.section.interpolation.end.makefile
#                                                ^^^^^^^^^^^^^ variable.function.makefile
#                                                             ^ punctuation.separator.makefile
#                                                              ^^ punctuation.definition.interpolation.makefile
#                                                                ^ punctuation.section.interpolation.begin.makefile
#                                                                 ^ variable.other.makefile
#                                                                  ^^^ punctuation.section.interpolation.end.makefile
#

.SECONDEXPANSION:
$(foreach i,$(DO_IMPLS),$(foreach s,$(STEPS),$(i)^$(s))): $$(call $$(word 1,$$(subst ^, ,$$(@)))_STEP_TO_PROG,$$(word 2,$$(subst ^, ,$$(@))))
# <- meta.function.makefile entity.name.function.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#                                                       ^ meta.function.makefile keyword.operator.assignment.makefile
#                                                        ^ - keyword.operator.assignment
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

rule: # comment
# <- meta.function.makefile entity.name.function.makefile - meta.function meta.function
#^^^^^^^^^^^^^^^ meta.function.makefile - meta.function meta.function
#^^^ entity.name.function.makefile
#   ^ keyword.operator.assignment.makefile
#    ^ - comment - keyword
#     ^^^^^^^^^^ comment.line.number-sign.makefile
#     ^ punctuation.definition.comment.makefile

# <- meta.function.body.makefile

rule: prerequisites # comment
# <- meta.function.makefile entity.name.function.makefile - meta.function meta.function
#^^^^^ meta.function.makefile - meta.function meta.function
#^^^ entity.name.function.makefile
#   ^ keyword.operator.assignment.makefile
#    ^ - keyword - string
#     ^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile - meta.function meta.function
#                  ^^^^^^^^^^^ meta.function.makefile - meta.function meta.function
#                  ^ - comment - string
#                   ^^^^^^^^^^ comment.line.number-sign.makefile
#                   ^ punctuation.definition.comment.makefile

# <- meta.function.body.makefile

END_RULE = TRUE
# <- variable.other.makefile - meta.function

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
#       ^^^^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#         ^^^^^^^^^^^ meta.character-class.glob.makefile
#         ^ punctuation.definition.character-class.begin.glob.makefile
#          ^^^^ meta.interpolation.makefile
#          ^ punctuation.definition.interpolation.makefile
#           ^ punctuation.section.interpolation.begin.makefile
#            ^ variable.other.makefile
#             ^ punctuation.section.interpolation.end.makefile
#              ^ constant.other.range.glob.makefile punctuation.separator.sequence.glob.makefile
#               ^^^^ meta.interpolation.makefile
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ variable.other.makefile
#                  ^ punctuation.section.interpolation.end.makefile
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

#####################
# 5.1 Recipe Syntax #
#####################

rule: ; ifdef receipe  # not a make directive but passed to shell as command
#     ^ meta.function.makefile - source.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded.makefile
#       ^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#            ^^^^^^^^ meta.function-call.arguments.shell
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

rule:
	ifdef receipe  # not a make directive but passed to shell as command
# <- meta.function.body.makefile - source.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded.makefile
#^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#     ^^^^^^^^ meta.function-call.arguments.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

######################
# 5.2 Recipe Echoing #
######################

rule: prereq ; @rm -f *.o
#            ^ meta.function.makefile punctuation.terminator.makefile
#             ^^^^^^^^^^^ meta.function.body.makefile
#              ^ keyword.operator.suppress.makefile - source.shell
#               ^^^^^^^^ source.shell.embedded.makefile

rule:
	@rm -f *.o
# <- meta.function.body.makefile - source.shell
#^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.suppress.makefile - source.shell
# ^^^^^^^^ source.shell.embedded.makefile

#########################
# 5.5 Errors in Recipes #
#########################

clean: prereq ; -rm -f *.o
#             ^ meta.function.makefile punctuation.terminator.makefile
#              ^^^^^^^^^^^ meta.function.body.makefile
#               ^ keyword.operator.suppress.makefile - source.shell
#                ^^^^^^^^ source.shell.embedded.makefile

clean:
	-rm -f *.o
# <- meta.function.body.makefile - source.shell
#^^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.suppress.makefile - source.shell
# ^^^^^^^^^ source.shell.embedded.makefile

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
#            ^^^^^^^^^ source.shell.embedded.makefile variable.function.shell

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
#                  ^ punctuation.separator.makefile
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
#       ^^^^^^^^^^^^^ source.shell.embedded.makefile
#       ^^^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#             ^^^^^^^ meta.function-call.arguments.shell
#              ^^^^^^ meta.string.glob.shell string.quoted.single.shell
#              ^ punctuation.definition.string.begin.shell
#                   ^ punctuation.definition.string.end.shell

file_list != find . -name '*.c'
# <- variable.other.makefile
#^^^^^^^^ variable.other.makefile
#         ^^ keyword.operator.assignment.makefile
#            ^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
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
#               ^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.embedded.makefile
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
#                    ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.embedded.makefile
#                    ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                         ^ meta.string.glob.shell string.unquoted.shell
#                           ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                           ^ punctuation.definition.parameter.shell
#                                 ^^^^^ meta.string.glob.shell string.quoted.double.shell
#                                 ^ punctuation.definition.string.begin.shell
#                                     ^ punctuation.definition.string.end.shell
#                                      ^ punctuation.section.interpolation.end.makefile

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
#    ^ keyword.operator.assignment.makefile
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
#       ^ keyword.operator.assignment.makefile
#         ^^^^^^ variable.other.makefile
#                ^ keyword.operator.assignment.makefile
#                  ^^ meta.string.makefile string.unquoted.makefile

prog : define CFLAGS =
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ keyword.operator.assignment.makefile
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
#    ^ keyword.operator.assignment.makefile
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
#    ^ keyword.operator.assignment.makefile
#      ^^^^^^^^^^^^^^^ meta.directive.undefine.makefile
#      ^^^^^^^^ keyword.control.undefine.makefile
#               ^^^^^^ variable.other.makefile

prog : export CFLAGS = -g
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ keyword.operator.assignment.makefile
#      ^^^^^^^^^^^^^^^^^^ meta.directive.export.makefile
#      ^^^^^^ keyword.control.export.makefile
#             ^^^^^^ variable.other.makefile
#                    ^ keyword.operator.assignment.makefile
#                      ^^ meta.string.makefile string.unquoted.makefile

prog : override export CFLAGS = -g
# <- meta.function.makefile entity.name.function.makefile
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ keyword.operator.assignment.makefile
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
#    ^ keyword.operator.assignment.makefile
#      ^^^^^^^^^^^^^^^ meta.directive.undefine.makefile
#      ^^^^^^^^ keyword.control.unexport.makefile
#               ^^^^^^ variable.other.makefile

prog : override CFLAGS = -g
#^^^^^ meta.function.makefile
#^^^ entity.name.function.makefile
#    ^ keyword.operator.assignment.makefile
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
#      ^ keyword.operator
#                 ^ - string
#                  ^ string
#                          ^ - string
%.o: CFLAGS := -g
#  ^ keyword.operator
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
#      ^ punctuation.separator.makefile
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
#            ^ punctuation.separator.makefile
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
#               ^ punctuation.separator.makefile
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
#             ^ punctuation.separator.makefile
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
#            ^ punctuation.separator.makefile
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
#                ^ punctuation.separator.makefile
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
#      ^ punctuation.separator.makefile
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
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.embedded.makefile
#             ^^^^ support.function.shell
#                  ^^^^^^ meta.interpolation.makefile meta.interpolation.makefile
#                         ^^^ keyword.operator.comparison.shell
#                             ^^^^^^ constant.numeric.value.shell
#                                   ^ punctuation.terminator.statement.shell
#                                     ^^^^ support.function.shell
#                                          ^^^ variable.language.special.shell
#                                             ^ punctuation.section.interpolation.end.makefile
#                                              ^ punctuation.separator.makefile
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
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.embedded.makefile
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

var = $(%D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(%F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(*D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(*F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(+D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(+F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(<D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(<F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(?D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(?F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(@D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(@F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(^D)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

var = $(^F)
#     ^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile

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

var: $$(%D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(%F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(*D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(*F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(+D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(+F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(<D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(<F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(?D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(?F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(@D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(@F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(^D)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

var: $$(^F)
#    ^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#    ^^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^ variable.language.automatic.makefile
#         ^ punctuation.section.interpolation.end.makefile
#          ^ meta.function.makefile

#############################
# 12.2.1 The load Directive #
#############################

-load ../mk_funcs.so mk_meth.so
# <- meta.directive.load.makefile keyword.operator.suppress.makefile
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

#############################
# Unsorted and legacy tests #
#############################

a_objects := a.o b.o c.o
# ^ variable.other
#         ^^ keyword.operator.assignment
#            ^^^^^^^^^^^ string
1_objects := 1.o 2.o 3.o
# ^^^^^^^ variable.other
#         ^^ keyword.operator.assignment
#            ^^^^^^^^^^^ string.unquoted

# This is NOT the start of a rule...
	# A comment with a tab and with a : colon
	# <- comment.line - meta.function - entity.name.function

all: foo.o
	ld a
	ar b
	asdf
	@echo "that's, like, your opinion man!" # some movie?
	# <- keyword.operator.suppress.makefile
    asdf
# <- - meta.function - source.shell
#   ^^^^ variable.other.makefile

all: foo.o # a comment
# <- meta.function entity.name.function
#  ^ keyword.operator.assignment
#   ^ - string
#    ^ string
#        ^ meta.function.arguments string.unquoted
#         ^ - string
#          ^ comment.line. punctuation - meta.function.arguments - string.unquoted
#           ^ comment.line - punctuation - meta.function.arguments - string.unquoted
	rm -rf /
# <- meta.function.body

# A make comment.
#                ^ comment.line.number-sign.makefile
foo: qux
	@bar # A shell comment.
	#                      ^ comment.line.number-sign.shell

sources := $($(a1)_objects:.o=.c)
#^^^^^^ variable.other.makefile
#          ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#          ^ punctuation.definition.interpolation.makefile
#           ^ punctuation.section.interpolation.begin.makefile
#            ^^^^^^^^^^^^^ variable.other.makefile
#            ^^^^^ meta.interpolation.makefile meta.interpolation.makefile
#            ^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.other.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                         ^ punctuation.definition.substitution.makefile
#                            ^ keyword.operator.assignment.makefile
#                               ^ punctuation.section.interpolation.end.makefile

.build/vernum: ../meta/version
	sed -i.bak 's/.*automatically updated.*/version = "$(VER)" # automatically updated/' setup.py
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded meta.function-call
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                                   ^^^^^^ meta.string.glob.shell meta.interpolation.makefile
#                                                   ^ punctuation.definition.interpolation.makefile
#                                                    ^ punctuation.section.interpolation.begin.makefile
#                                                     ^^^ variable.other.makefile
#                                                        ^ punctuation.section.interpolation.end.makefile
#                                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                                                                     ^^^^^^^^ meta.string.glob.shell string.unquoted.shell

CC=g++
#<- variable.other
# ^ keyword.operator.assignment
#  ^^^ string.unquoted
CFLAGS=-c -Wall
LDFLAGS=
#<- variable.other
#      ^ keyword.operator.assignment
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.o)
#       ^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^^ variable.other.makefile
#                ^ punctuation.definition.substitution.makefile
#                     ^ keyword.operator.assignment.makefile
#                        ^ punctuation.section.interpolation.end.makefile
EXECUTABLE=hello

lib: foo.o bar.o lose.o win.o
	ar r lib $@
	ar whatevs
# <- meta.function.body
	# <- meta.function.body
	# BIG NOTE: This comment is actually a shell comment, not a makefile
	# comment. Everything on a recipe line is passed to the shell; even lines
	# starting with a number sign! It depends on the particular shell if it
	# gets treated as comments, but for all intents and purposes it should.

all: $(SOURCES) $(EXECUTABLE)
# <- meta.function.makefile entity.name.function.makefile
#^^ meta.function.makefile entity.name.function.makefile
#  ^ keyword.operator.assignment.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^^^^^ meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^^ variable.other.makefile
#             ^ punctuation.section.interpolation.end.makefile
#               ^^^^^^^^^^^^^ meta.interpolation.makefile
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^^^^^^^^^^ variable.other.makefile
#                           ^ punctuation.section.interpolation.end.makefile
#                            ^ meta.function.makefile

$(EXECUTABLE): $(OBJECTS)
# <- meta.function entity.name.function
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@


.cpp.o: a.c b.c
# <- meta.function entity.name.function
	$(CC) $(CFLAGS) $< -o $@
	# <- meta.function.body.makefile source.shell.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile punctuation.definition.interpolation.makefile
	#^^^^ meta.function.body.makefile source.shell.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
	#    ^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded.makefile meta.function-call.arguments.shell
	#     ^^^^^^^^^ meta.string.glob.shell meta.interpolation.makefile
	#               ^^ meta.string.glob.shell meta.interpolation.makefile
	#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
	#                     ^^ meta.string.glob.shell meta.interpolation.makefile

FOO = some \
      line \
      continuation \
      in \
      here
#     ^^^^ meta.string.makefile string.unquoted.makefile

reverse = $(2) $(1)
# <- variable.other
#       ^ keyword.operator.assignment
#         ^^^^ meta.string.makefile meta.interpolation.makefile - string
#         ^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.other.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ meta.string.makefile string.unquoted.makefile
#              ^^^^ meta.string.makefile meta.interpolation.makefile - string
#              ^ punctuation.definition.interpolation.makefile
#               ^ punctuation.section.interpolation.begin.makefile
#                ^ variable.other.makefile
#                 ^ punctuation.section.interpolation.end.makefile

foo = $(call reverse,a,b)
#^^ variable.other.makefile
#     ^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^ variable.function.makefile
#                   ^ punctuation.separator.makefile
#                    ^^^ meta.function-call.arguments.makefile
#                    ^ meta.string.makefile string.unquoted.makefile
#                     ^ punctuation.separator.makefile
#                      ^ meta.string.makefile string.unquoted.makefile
#                       ^ punctuation.section.interpolation.end.makefile

foo = $(call something)
#                     ^ - variable.function

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

CC=g++
# <- variable.other
# ^ keyword.operator.assignment
#  ^ string.unquoted
SOURCES=main.cpp
SOURCES+=hello.cpp
#^^^^^^ variable.other.makefile
#      ^^ keyword.operator
#        ^^^^^^^^^ meta.string.makefile string.unquoted.makefile

all: $(SOURCES) hello.o
#^^ meta.function.makefile entity.name.function.makefile
#  ^ keyword.operator.assignment.makefile
#    ^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^^^^^ meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^^ variable.other.makefile
#             ^ punctuation.section.interpolation.end.makefile
#                      ^ meta.function.makefile

$(EXECUTABLE): $(OBJECTS)
#^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ keyword.operator.assignment.makefile
#              ^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#              ^ punctuation.definition.interpolation.makefile
#               ^ punctuation.section.interpolation.begin.makefile
#                ^^^^^^^ variable.other.makefile
#                       ^ punctuation.section.interpolation.end.makefile
#                        ^ meta.function.makefile
	@$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	# <- keyword.operator.suppress.makefile
	#                               ^^ meta.string.glob.shell meta.interpolation.makefile


all: whatevs
	@asdf
	# <- keyword.operator.suppress.makefile

all: whatevs
	@asdf
	@echo "Heyo!"
	# <- keyword.operator.suppress.makefile

# Use spaces instead of tabs... This complicates matters.
.RECIPEPREFIX +=

help::
	@echo "Executable is $(EXECUTABLE)"
	# <- keyword.operator.suppress.makefile

$(warning he:llo)
# ^ meta.function-call support.function
#         ^^^ meta.function-call.arguments.makefile - punctuation
#               ^ punctuation.section.interpolation.end

all: deps
	$(warning he:llo)
	# ^ meta.function-call support.function
	#         ^^^ meta.function-call.arguments.makefile - punctuation
	#               ^ punctuation.section.interpolation.end
deps:
	$(warning he:llo)
	# ^ meta.function-call support.function
	#         ^^^ meta.function-call.arguments.makefile - punctuation
	#               ^ punctuation.section.interpolation.end
all:
# ^ meta.function entity.name.function
#  ^ keyword.operator.assignment
	asdf
# <- meta.function.body

# OS detecting makefile
# http://stackoverflow.com/questions/714100/os-detecting-makefile
#
ifeq ($(OS),Windows_NT)
# ^ keyword.control
    SEPARATOR = ;
#           ^ variable.other
#            ^ - variable.other
#             ^ keyword.operator.assignment
#               ^ string.unquoted

else
# ^ keyword.control
    SEPARATOR = :
#           ^ variable.other
#            ^ - variable.other
#             ^ keyword.operator.assignment
#               ^ string.unquoted
endif
# ^ keyword.control

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

%.cpp: %.o
# <- meta.function entity.name.function variable.language
#    ^ keyword.operator
#      ^ meta.function.arguments string.unquoted variable.language
	@rm -rf /
	@rm -rf /
	# <- meta.function.body keyword.operator.suppress.makefile
	#^ meta.function.body - keyword.operator.suppress.makefile

a = b # c
#<- variable.other
# ^ keyword.operator.assignment
#   ^ string.unquoted
#     ^ comment.line.number-sign punctuation.definition.comment
#       ^ comment.line.number-sign

a = b # c
#<- variable.other
# ^ keyword.operator.assignment
#   ^ string.unquoted
#     ^ comment.line.number-sign punctuation.definition.comment
#       ^ comment.line.number-sign

_modinst_:
	@rm -rf $(MODLIB)/kernel
	# <- keyword.operator.suppress.makefile
	@rm -f $(MODLIB)/source
	# <- keyword.operator.suppress.makefile
	@mkdir -p $(MODLIB)/kernel
	# <- keyword.operator.suppress.makefile
	@ln -s `cd $(srctree) && /bin/pwd` $(MODLIB)/source
	# <- keyword.operator.suppress.makefile
	@if [ ! $(objtree) -ef  $(MODLIB)/build ]; then \
	    rm -f $(MODLIB)/build ; \
	    ln -s $(CURDIR) $(MODLIB)/build ; \
	fi
	@cp -f $(objtree)/modules.order $(MODLIB)/
	# <- keyword.operator.suppress.makefile
	@cp -f $(objtree)/modules.builtin $(MODLIB)/
	# <- keyword.operator.suppress.makefile
	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modinst


$(sort $(a)): $(b) ;
#           ^ keyword.operator

%:x
# <- meta.function entity.name.function variable.language
#^ keyword.operator
	rm -rf /

a : b ;
# <- meta.function entity.name.function
# ^ keyword.operator - entity.name.function
#  ^ - string.unquoted
#   ^ meta.function.arguments string.unquoted
#    ^ - string.unquoted
#     ^ punctuation.terminator

a : b \
	more prerequisites \
	on a third line even
	#                  ^ meta.function.arguments string.unquoted
	@rm -rf /
	# <- meta.function.body keyword.operator.suppress.makefile

a : b ; rm -rf /
#     ^ punctuation.terminator
#       ^ source.shell

a-$(b) := c
#^^^^^ variable.other.makefile
# ^^^^ meta.interpolation.makefile
# ^ punctuation.definition.interpolation.makefile
#  ^ punctuation.section.interpolation.begin.makefile
#   ^ variable.other.makefile variable.other.makefile
#    ^ punctuation.section.interpolation.end.makefile

$(a): b
#^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.section.interpolation.end.makefile
#   ^ keyword.operator.assignment.makefile
#     ^ meta.function.arguments.makefile string.unquoted.makefile
#      ^ meta.function.makefile
	$(Q)$(MAKE) $(build)=$@
	# <- meta.function.body
	#                    ^^ meta.string.glob.shell meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ variable.language.automatic.makefile

$(a:b=c) : d
#^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#    ^ keyword.operator.assignment.makefile
#      ^ punctuation.section.interpolation.end.makefile
#        ^ keyword.operator.assignment.makefile
#          ^ meta.function.arguments.makefile string.unquoted.makefile
#           ^ meta.function.makefile
	$(Q)$(MAKE) $(build)=$@
	# <- meta.function.body
	#                    ^^ meta.string.glob.shell meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ variable.language.automatic.makefile

$(X:a=b) : w ;
#^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#    ^ keyword.operator.assignment.makefile
#      ^ punctuation.section.interpolation.end.makefile
#        ^ keyword.operator.assignment.makefile
#          ^ meta.function.arguments.makefile string.unquoted.makefile
#            ^ punctuation.terminator.makefile
#             ^ meta.function.body.makefile

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

$(call my_func,my_arg): deps
#^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^^^^^ meta.function-call.makefile
# ^^^^ support.function.builtin.makefile
#      ^^^^^^^ variable.function.makefile
#             ^ punctuation.separator.makefile
#              ^^^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^ keyword.operator.assignment.makefile
#                       ^^^^ meta.function.arguments.makefile string.unquoted.makefile
#                           ^ meta.function.makefile
	rm -rf /

$(foreach i,j,k): deps
# <- meta.function entity.name.function
#               ^ keyword.operator.assignment
#                ^ - keyword.operator.assignment
	rm -rf /
	# <- meta.function.body

$(foreach i,$(a),$(foreach j,$(b),x)): deps
# <- meta.function entity.name.function
#                                    ^ keyword.operator.assignment
#                                     ^ - keyword.operator.assignment
	rm -rf /
	# <- meta.function.body

include $(c)
ifneq ($(a),)
$(b): ; rm -rf /
#       ^ meta.function.body source.shell
	@git clone asdf
	# <- meta.function.body keyword.operator.suppress.makefile
	# ^ meta.function.body
endif

define filechk_utsrelease.h
    if [ `echo -n "$(KERNELRELEASE)" | wc -c ` -gt $(uts_len) ]; then \
      echo '"$(KERNELRELEASE)" exceeds $(uts_len) characters' >&2;    \
      exit 1;                                                         \
    fi;                                                               \
    (echo \#define UTS_RELEASE \"$(KERNELRELEASE)\";)
endef
# <- keyword.control.endef.makefile

endef
# <- invalid.illegal.stray

# meta.group.conditional balancing
ifeq ($(shell git status >/dev/null 2>&1 && echo USING_GIT),USING_GIT)
  ifeq ($(shell git svn info >/dev/null 2>&1 && echo USING_GIT_SVN),USING_GIT_SVN)
    # git-svn
    ifeq ($(REVISION),)
      REVISION := $(shell git svn find-rev git-svn)
    endif
    VCSTURD := $(subst $(SPACE),\ ,$(shell git rev-parse --git-dir)/refs/remotes/git-svn)
  else
    # plain git
    ifeq ($(REVISION),)
      REVISION := $(shell git describe --always HEAD)
    endif
    GIT_BRANCH := $(shell git symbolic-ref HEAD 2>/dev/null)
    VCSTURD := $(subst $(SPACE),\ ,$(shell git rev-parse --git-dir)/$(GIT_BRANCH))
  endif
else ifeq ($(shell hg root >/dev/null 2>&1 && echo USING_HG),USING_HG)
# ^ keyword.control
#    ^ keyword.control
  # mercurial
  ifeq ($(REVISION),)
    REVISION := $(shell hg id -i)
  endif
  VCSTURD := $(subst $(SPACE),\ ,$(shell hg root)/.hg/dirstate)
else ifeq ($(shell svn info >/dev/null && echo USING_SVN),USING_SVN)
# ^ keyword.control
#    ^ keyword.control
  # subversion
  ifeq ($(REVISION),)
    REVISION := $(subst :,-,$(shell svnversion -n))
  endif
  # This used to break the makefile syntax because we didn't properly account
  # for closing parentheses in shell-strings. We now use our own quoted string
  # context in the with_prototype override so that we can account for this.
  # This does mean that the shell syntax looks a tiny bit different.
  VCSTURD := $(addsuffix /.svn/entries, $(shell svn info | grep 'Root Path' | sed -e 's/\(.*\:\)\(.*\) /\2/'))
  #                                                                                  ^ string.quoted.single.shell punctuation.definition.string.begin.shell
  #                                                                                                        ^ string.quoted.single.shell punctuation.definition.string.end.shell
endif
# <- keyword.control

a:b
ifeq (0,1)
	$(info asdf)
else # some comment
#    ^ comment.line
	$(info asdf)
endif
# <- keyword

# Another case where the lookahead for the colon used to fail:
ifneq ($(words $(subst :, ,$(CURDIR))), 1)
#                      ^ meta.function-call.arguments meta.function-call.arguments - keyword.operator
  $(error main directory cannot contain spaces nor colons)
endif

ifeq ($(shell which inkscape >/dev/null 2>&1 && echo USING_INKSCAPE),USING_INKSCAPE)
# <- keyword.control.conditional
$(FIGS)/%.pdf: $(FIGS)/%.svg  ## Figures for the manuscript
# <- meta.function entity.name.function
#            ^ keyword.operator.assignment
#              ^ meta.function.arguments meta.string
#                             ^ comment.line - string.unquoted
	inkscape -C -z --file=$< --export-pdf=$@ 2> /dev/null
	# <- meta.function.body
endif
# <- keyword.control.conditional

ifneq ($(REVISION),)
# ^ keyword.control.conditional
REVDEPS += revision.tex
revision.tex: $(VCSTURD)
	/bin/echo '\newcommand{\Revision}'"{$(subst _,\_,$(REVISION))}" > $@
	#           ^ - invalid.illegal
	#                                     ^ meta.function-call.makefile
	#                                                  ^^ meta.function.body meta.function-call.arguments variable.other
AUXFILES += revision.aux
endif

build_target:
	@echo "${INFO_CLR}>> Building $(TARGET)...${RESTORE_CLR}${RESULT_CLR}"
	# <- keyword.operator.suppress.makefile
ifdef WORKSPACE
	@xcodebuild -sdk iphoneos -workspace "$(WORKSPACE).xcworkspace" -target "$(TARGET)" -configuration "$(CONFIG)" SYMROOT="$(BUILD_PATH)/Products" -jobs 6 build 2>/dev/null | tail -n 2 | cat && printf "${RESET_CLR}"
	# <- keyword.operator.suppress.makefile
else
	@xcodebuild -sdk iphoneos -project "$(PROJECT).xcodeproj" -target "$(TARGET)" -configuration "$(CONFIG)" CONFIGURATION_BUILD_DIR="$(BUILD_PATH)/Products" -jobs 6 build 2>/dev/null | tail -n 2 | cat && printf "${RESET_CLR}"
	# <- keyword.operator.suppress.makefile
endif
ifndef ARDMK_DIR_MSG
	$(call show_config_variable,ARDMK_DIR,[COMPUTED],(relative to $(notdir $(lastword $(MAKEFILE_LIST)))))
	#      ^ variable.function
	#                                                               ^ support.function
	#                                                                        ^ support.function
	#                                                                                                   ^ - punctuation.section.interpolation.end
	#                                                                                                    ^ punctuation.section.interpolation.end
else
	$(call show_config_variable,ARDMK_DIR,[USER])
	# ^^^^ support.function.builtin.makefile
	#      ^^^^^^^^^^^^^^^^^^^^ variable.function.makefile
endif

kselftest-merge:
	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
	    -m $(objtree)/.config \
	#   ^ - keyword.operator.suppress.makefile
	    $(srctree)/tools/testing/selftests/*/config
	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig

search:
	@$(MAKE) --no-print-directory \
	    -f core/core.mk $(addprefix -f,$(wildcard index/*.mk)) -f core/index.mk \
	#                                                   ^ constant.other.wildcard.asterisk
	    search

CC_VERSION := $(shell $(CC) -dumpversion)
$(call show_config_variable,CC_VERSION,[COMPUTED],($(CC_NAME)))
#                                                           ^ punctuation.section.interpolation.end
#                                                            ^ - punctuation.section.interpolation.end
#                                                             ^ punctuation.section.interpolation.end

# A recipe may contain empty lines like below
help:
	@echo  'Cleaning targets:'
	# <- meta.function.body keyword.operator.suppress.makefile

	@echo  '  make V=0|1 [targets] 0 => quiet build (default), 1 => verbose build'
	# <- meta.function.body keyword.operator.suppress.makefile
	#               ^ - keyword.operator.assignment
	#                                                        ^ string.quoted.single.shell
	@echo  '        1: warnings which may be relevant and do not occur too often'
	# <- meta.function.body keyword.operator.suppress.makefile
	#                ^ - keyword.operator.assignment
	@echo  '        2: warnings which occur quite often but may still be relevant'
	# <- meta.function.body keyword.operator.suppress.makefile

CC_VERSION := $(shell $(CC) -dumpversion)
$(call show_config_variable,CC_VERSION,[COMPUTED],($(CC_NAME)))
#                                                           ^ punctuation.section.interpolation.end
#                                                            ^ - punctuation.section.interpolation.end
#                                                             ^ punctuation.section.interpolation.end

LIBRARIES := $(filter $(notdir $(wildcard $(HOME)/energia_sketchbook/libraries/*)), \
    $(shell sed -ne "s/^ *\# *include *[<\"]\(.*\)\.h[>\"]/\1/p" $(SOURCES)))
    #               ^ string.quoted.double.shell punctuation.definition.string.begin.shell
    #                                                          ^ string.quoted.double.shell punctuation.definition.string.end.shell

# FIX: https://github.com/sublimehq/Packages/issues/1941
escape_shellstring = $(subst `,\`,$(subst ",\",$(subst $$,\$$,$(subst \,\\,$1))))
#                      ^^^^^^ meta.function-call.makefile
#                            ^^^^^ meta.function-call.arguments.makefile - meta.function-call.makefile
#                                   ^^^^^^ meta.function-call.arguments.makefile meta.function-call.makefile
#                                         ^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                ^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                                      ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                               ^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                                                     ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                                            ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile punctuation.section.interpolation.end.makefile
#                                                                             ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile punctuation.section.interpolation.end.makefile
#                                                                              ^ meta.function-call.arguments.makefile punctuation.section.interpolation.end.makefile
#                                                                               ^ punctuation.section.interpolation.end.makefile
#                                                                                ^ - meta
#                            ^ - punctuation
#                             ^ punctuation.separator.makefile
#                              ^^ - punctuation
#                                         ^ - punctuation
#                                          ^ punctuation.separator.makefile
#                                           ^^ - punctuation

NAME = FeedProcessorSIAC

target2:
	@# Comment Text
	#^ comment - variable
	@# FeedProcessorSIAC -origin CQS -decodeData "binData"
	#^ comment - variable

	@# # Regular Message
	#^ comment - variable
	@FeedProcessorSIAC -origin CTS -decodeData "binData"

TESTTOOL = sh -c '\
#        ^ keyword.operator.assignment.makefile
#          ^^^^^^ meta.string.makefile - meta.interpolation
#                ^^^ meta.string.makefile meta.interpolation.makefile
#          ^^^^^^ string.unquoted.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ source.shell.embedded punctuation.separator.continuation.line.shell - source.shell source.shell
  if something; then
    build_thisway $$1 $$2;
  fi' TESTTOOL
# ^^^ meta.string.makefile meta.interpolation.makefile
#    ^^^^^^^^^ meta.string.makefile string.unquoted.makefile - meta.interpolation
# ^^ source.shell.embedded keyword.control.conditional.endif.shell - source.shell source.shell
#   ^ punctuation.section.interpolation.end.makefile


# Fix https://github.com/sublimehq/Packages/issues/2388
html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded.makefile - source.shell source.shell
#^^^^^^^^^^ meta.function-call.identifier.shell
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#             ^^^^^^^^ variable.other.makefile
#                       ^^ variable.parameter.option.shell
#                            ^^^^^^^^^ variable.other.makefile
#                                       ^^ variable.parameter.option.shell
#                                            ^^^^^^^^ variable.other.makefile
#                                                        ^^^^^^^^^^^ variable.other.makefile

shell_string_interpolation:
	var1="double nquoted $(string) value"
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
	#^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
	#   ^ meta.assignment.shell keyword.operator.assignment.shell
	#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
	#    ^^^^^^^^^^^^^^^^ string.quoted.double.shell
	#    ^ punctuation.definition.string.begin.shell
	#                    ^^^^^^^^^ meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ punctuation.section.interpolation.begin.makefile
	#                      ^^^^^^ variable.other.makefile
	#                            ^ punctuation.section.interpolation.end.makefile
	#                             ^^^^^^^ string.quoted.double.shell
	#                                   ^ punctuation.definition.string.end.shell
	var1='single nquoted $(string) value'
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
	#^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
	#   ^ meta.assignment.shell keyword.operator.assignment.shell
	#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
	#    ^^^^^^^^^^^^^^^^ string.quoted.single.shell
	#    ^ punctuation.definition.string.begin.shell
	#                    ^^^^^^^^^ meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ punctuation.section.interpolation.begin.makefile
	#                      ^^^^^^ variable.other.makefile
	#                            ^ punctuation.section.interpolation.end.makefile
	#                             ^^^^^^^ string.quoted.single.shell
	#                                   ^ punctuation.definition.string.end.shell
	var1=unquoted\ $(string)\ value
	#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
	#^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
	#   ^ meta.assignment.shell keyword.operator.assignment.shell
	#    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
	#    ^^^^^^^^^^ string.unquoted.shell
	#            ^^ constant.character.escape.shell
	#              ^^^^^^^^^ meta.interpolation.makefile
	#              ^ punctuation.definition.interpolation.makefile
	#               ^ punctuation.section.interpolation.begin.makefile
	#                ^^^^^^ variable.other.makefile
	#                      ^ punctuation.section.interpolation.end.makefile
	#                       ^^^^^^^ string.unquoted.shell

foo:
	echo $$foo
	#    ^^ punctuation.definition.variable.shell
	#     ^^^^ variable.other.readwrite.shell
	foo $$(echo $$PATH)
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
