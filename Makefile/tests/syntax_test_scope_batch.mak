# SYNTAX TEST "Packages/Makefile/Makefile (Batch File).sublime-syntax"

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
	rm %USERPROFILE%/
#^^^^^^^^^^^^^^^^^^ meta.function.body.makefile
#^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
#^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
#  ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
#   ^^^^^^^^^^^^^^ meta.string.dosbatch
#   ^^^^^^^^^^^^^ meta.interpolation.dosbatch
#   ^ punctuation.section.interpolation.begin.dosbatch
#    ^^^^^^^^^^^ variable.other.readwrite.dosbatch
#               ^ punctuation.section.interpolation.end.dosbatch
#                ^ string.unquoted.dosbatch
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
	# <- meta.function.body source.shell.embedded.makefile

%:x
# <- meta.function entity.name.function variable.language
#^ meta.function.makefile punctuation.definition.rule.makefile
# ^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#  ^ meta.function.makefile
	recipe
	# <- meta.function.body source.shell.embedded.makefile

%.cpp: %.o
# <- meta.function.makefile entity.name.function.makefile variable.language.makefile
#^^^^^^ meta.function.makefile
#^^^^ entity.name.function.makefile
#    ^ punctuation.definition.rule.makefile
#      ^^^ meta.function.arguments.makefile meta.string.makefile string.unquoted.makefile
#      ^ variable.language.makefile
#         ^ meta.function.makefile
	recipe
	# <- meta.function.body source.shell.embedded.makefile

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

rule: $(shell echo shell is %SHELL%! )
ifeq ($(SHELL), windows)
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile meta.directive.conditional.if.makefile
#^^^ keyword.control.conditional.if.makefile
#    ^^^^^^^^^^^^^^^^^^^ meta.group.makefile
#    ^ punctuation.section.group.begin.makefile
#     ^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ variable.other.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ punctuation.separator.sequence.makefile
#               ^^^^^^^ meta.string.makefile string.unquoted.makefile
#                      ^ punctuation.section.group.end.makefile
#                       ^ meta.eol.makefile
	@echo $(MAKE) shell is %SHELL%!
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.recipe.makefile
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile meta.command.echo.dosbatch
# ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
#      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch
#      ^^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^^ variable.other.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^^^^^^^^^^ string.unquoted.dosbatch
#                       ^^^^^^^ meta.interpolation.dosbatch
#                       ^ punctuation.section.interpolation.begin.dosbatch
#                        ^^^^^ variable.other.readwrite.dosbatch
#                             ^ punctuation.section.interpolation.end.dosbatch
#                              ^ string.unquoted.dosbatch
endif
# <- meta.function.body.makefile meta.directive.conditional.endif.makefile keyword.control.conditional.endif.makefile
	@$(CC) /link $(FILES)
#^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile
#^ keyword.operator.recipe.makefile
# ^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
# ^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.makefile
# ^ punctuation.definition.interpolation.makefile
#  ^ punctuation.section.interpolation.begin.makefile
#   ^^ variable.other.makefile
#     ^ punctuation.section.interpolation.end.makefile
#      ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
#       ^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
#       ^ punctuation.definition.variable.dosbatch
#             ^^^^^^^^ meta.string.dosbatch meta.interpolation.makefile
#             ^ punctuation.definition.interpolation.makefile
#              ^ punctuation.section.interpolation.begin.makefile
#               ^^^^^ variable.other.makefile
#                    ^ punctuation.section.interpolation.end.makefile
