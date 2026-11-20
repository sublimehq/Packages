# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

sh = $(shell ls ~/dir/)
#    ^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^ meta.function-call.makefile
#      ^^^^^ support.function.builtin.makefile
#            ^^^^^^^^^ meta.function-call.arguments.makefile source.shell.bash.embedded.makefile
#            ^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#              ^^^^^^^ meta.function-call.arguments.shell
#               ^^^^^^ meta.string.glob.shell
#               ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#                ^^^^^ string.unquoted.shell
#                     ^ punctuation.section.interpolation.end.makefile

bash:
	ls ~/dir/
#^^^^^^^^^ meta.function.body.makefile source.shell.bash.embedded.makefile
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^ meta.string.glob.shell
#   ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^^^^^ string.unquoted.shell

SHELL=/usr/bin/zsh

zsh = $(shell ls ~/dir<1-2>/)
#     ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^ meta.function-call.makefile
#       ^^^^^ support.function.builtin.makefile
#             ^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.zsh.embedded.makefile
#             ^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#               ^^^^^^^^^^^^ meta.function-call.arguments.shell
#                ^^^^^^^^^^^ meta.string.glob.shell
#                ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#                 ^^^^ string.unquoted.shell
#                     ^^^^^ meta.range.shell.zsh
#                          ^ string.unquoted.shell
#                           ^ punctuation.section.interpolation.end.makefile

zsh:
	ls ~/dir<1-2>/
#^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.zsh.embedded.makefile
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^^^^^^ meta.string.glob.shell
#   ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^^^^ string.unquoted.shell
#        ^^^^^ meta.range.shell.zsh
#             ^ string.unquoted.shell

SHELL=%SystemRoot%\System32\cmd.exe
#^^^^ variable.other.makefile
#    ^ keyword.operator.assignment.makefile
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile - punctuation

sh = $(shell dir %USERPROFILE%/)
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^ meta.function-call.makefile
#      ^^^^^ support.function.builtin.makefile
#            ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.dosbatch.embedded.makefile
#            ^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
#               ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
#                ^^^^^^^^^^^^^^ meta.string.dosbatch
#                ^^^^^^^^^^^^^ meta.interpolation.dosbatch
#                ^ punctuation.section.interpolation.begin.dosbatch
#                 ^^^^^^^^^^^ variable.other.readwrite.dosbatch
#                            ^ punctuation.section.interpolation.end.dosbatch
#                             ^ string.unquoted.dosbatch
#                              ^ punctuation.section.interpolation.end.makefile

dos:
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

SHELL=/usr/bin/env bash

bash:
	ls ~/dir/
#^^^^^^^^^ meta.function.body.makefile source.shell.bash.embedded.makefile
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^ meta.string.glob.shell
#   ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^^^^^ string.unquoted.shell
