# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

SHELL = $(shell ls ~/dir/)
#       ^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^ meta.function-call.makefile
#         ^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^ meta.function-call.arguments.makefile source.shell.bash.embedded.makefile
#               ^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                 ^^^^^^^ meta.function-call.arguments.shell
#                  ^^^^^^ meta.string.glob.shell
#                  ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#                   ^^^^^ string.unquoted.shell
#                        ^ punctuation.section.interpolation.end.makefile

# <- source.makefile - source source

shell:
	ls ~/dir/
#^^^^^^^^^ meta.function.body.makefile source.shell.bash.embedded.makefile
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^ meta.string.glob.shell
#   ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^^^^^ string.unquoted.shell

# <- source.makefile - source source

SHELL=/usr/bin/zsh # comment
#^^^^ variable.other.makefile
#    ^ keyword.operator.assignment.makefile
#     ^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile
#                 ^^^^^^^^^^^ - meta.string - string
#              ^^^ constant.other.language-name.makefile
#                  ^^^^^^^^^^ comment.line.number-sign.makefile
#                  ^ punctuation.definition.comment.makefile
#                           ^ meta.eol.makefile

# <- source.makefile - source source

SHELL = $(shell ls ~/dir<1-2>/)
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^ meta.function-call.makefile
#         ^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#               ^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                 ^^^^^^^^^^^^ meta.function-call.arguments.shell
#                  ^^^^^^^^^^^ meta.string.glob.shell
#                  ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#                   ^^^^ string.unquoted.shell
#                       ^^^^^ meta.range.shell.zsh
#                            ^ string.unquoted.shell
#                             ^ punctuation.section.interpolation.end.makefile

# <- source.makefile - source source

shell:
	ls ~/dir<1-2>/
#^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^^^^^^ meta.string.glob.shell
#   ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^^^^ string.unquoted.shell
#        ^^^^^ meta.range.shell.zsh
#             ^ string.unquoted.shell

# <- source.makefile - source source

SHELL=%SystemRoot%\System32\cmd.exe # comment
#^^^^ variable.other.makefile
#    ^ keyword.operator.assignment.makefile
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile
#                                  ^^^^^^^^^^^ - meta.string - string
#                                   ^^^^^^^^^^ comment.line.number-sign.makefile
#                                   ^ punctuation.definition.comment.makefile
#                                            ^ meta.eol.makefile

# <- source.makefile - source source

SHELL = $(shell dir %USERPROFILE%/)
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^ meta.function-call.makefile
#         ^^^^^ support.function.builtin.makefile
#               ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.dosbatch.embedded.makefile
#               ^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
#                  ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
#                   ^^^^^^^^^^^^^^ meta.string.dosbatch
#                   ^^^^^^^^^^^^^ meta.interpolation.dosbatch
#                   ^ punctuation.section.interpolation.begin.dosbatch
#                    ^^^^^^^^^^^ variable.other.readwrite.dosbatch
#                               ^ punctuation.section.interpolation.end.dosbatch
#                                ^ string.unquoted.dosbatch
#                                 ^ punctuation.section.interpolation.end.makefile

# <- source.makefile - source source

shell:
	dir %USERPROFILE%/
#^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.dosbatch.embedded.makefile
#^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
#   ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
#    ^^^^^^^^^^^^^^ meta.string.dosbatch
#    ^^^^^^^^^^^^^ meta.interpolation.dosbatch
#    ^ punctuation.section.interpolation.begin.dosbatch
#     ^^^^^^^^^^^ variable.other.readwrite.dosbatch
#                ^ punctuation.section.interpolation.end.dosbatch
#                 ^ string.unquoted.dosbatch

# <- source.makefile - source source

SHELL=/usr/bin/env bash  # comment
#^^^^ variable.other.makefile
#    ^ keyword.operator.assignment.makefile
#     ^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile
#                  ^^^^ constant.other.language-name.makefile
#                      ^^^^^^^^^^^^ - meta.string - string
#                        ^^^^^^^^^^ comment.line.number-sign.makefile
#                        ^ punctuation.definition.comment.makefile
#                                 ^ meta.eol.makefile

# <- source.makefile - source source

shell:
	ls ~/dir/
#^^^^^^^^^ meta.function.body.makefile source.shell.bash.embedded.makefile
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^ meta.string.glob.shell
#   ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^^^^^ string.unquoted.shell

# <- source.makefile - source source
