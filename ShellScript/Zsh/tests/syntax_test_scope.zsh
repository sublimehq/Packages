# SYNTAX TEST "Packages/ShellScript/Zsh.sublime-syntax"

###############################################################################
# 6 Shell Grammar                                                             #
# https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html                   #
###############################################################################

# 6.1 Simple Commands & Pipelines

echo foo
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^ meta.function-call.arguments.shell

echo foo | sed 's/foo/bar/'
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^ meta.function-call
#        ^ keyword.operator.assignment.pipe.shell
#          ^^^^^^^^^^^^^^^^ meta.function-call
#          ^^^ variable.function.shell
#              ^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell

dmesg &| grep panic &! print yes
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^ meta.function-call.identifier.shell variable.function.shell
#     ^^ keyword.operator.assignment.pipe.shell
#        ^^^^^^^^^^ meta.function-call
#                   ^^ keyword.operator.assignment.pipe.shell
#                      ^^^^^^^^^ meta.function-call

# 6.2 Precommand Modifiers

builtin cmd -a val
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#       ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#          ^^^^^^^ meta.function-call.arguments.shell

exec -cl -a argv0
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell

nocorrect cmd
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^^ meta.function-call.identifier.shell support.function.shell
#         ^^^ meta.function-call.identifier.shell variable.function.shell

noglob cmd **/file.txt
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^ meta.function-call.identifier.shell variable.function.shell
#         ^^^^^^^^^^^^ meta.function-call.arguments.shell

# 6.3 Complex Commands

if [[ -f ~./foo ]] echo 'yes' elif [[  ]] { echo 'no' } else { echo 'error' }
# <- keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call - meta.conditional - meta.compound
#                                                    ^^^ - meta.function-call
#                                                     ^ invalid.illegal.stray.shell
#                                                       ^^^^ keyword.control.conditional.else.shell
#                                                            ^^^^^^^^^^^^^^^^ meta.block.shell

# if list then list [ elif list then list ] ... [ else list ] fi
if [[ -f ~./foo ]] echo 'oh'; echo 'yes'; elif [[  ]] echo 'oh' | echo ' no'; else echo 'error'; fi
# <- keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                  ^^^^^^^^^ meta.function-call
#                           ^ punctuation.terminator.statement.shell
#                             ^^^^^^^^^^ meta.function-call
#                                       ^ punctuation.terminator.statement.shell
#                                         ^^^^ keyword.control.conditional.elseif.shell
#                                              ^^^^^^ meta.compound.conditional.shell
#                                                     ^^^^^^^^^ meta.function-call
#                                                               ^ keyword.operator.assignment.pipe.shell
#                                                                 ^^^^^^^^^^ meta.function-call
#                                                                           ^ punctuation.terminator.statement.shell
#                                                                             ^^^^ keyword.control.conditional.else.shell
#                                                                                  ^^^^^^^^^^^^ meta.function-call
#                                                                                              ^ punctuation.terminator.statement.shell
#                                                                                                ^^ keyword.control.conditional.endif.shell

# for name ... [ in word ... ] term do list done
for in in in word2; do echo $in; done
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^ variable.other.readwrite.shell
#      ^^ keyword.operator.iteration.in.shell
#         ^^ meta.string.glob.shell string.unquoted.shell
#            ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.terminator.statement.shell
#                   ^^ keyword.control.loop.do.shell
#                      ^^^^ meta.function-call.identifier.shell support.function.shell
#                          ^^^^ meta.function-call.arguments.shell
#                           ^^^ variable.other.readwrite.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ keyword.control.loop.end.shell

for a b c in word1 word2 word3; do echo $c $b $a; done
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^ variable.other.readwrite.shell
#       ^ variable.other.readwrite.shell
#         ^^ keyword.operator.iteration.in.shell
#            ^^^^^^^^^^^^^^^^^ meta.sequence.list.shell
#            ^^^^^ meta.string.glob.shell string.unquoted.shell
#                  ^^^^^ meta.string.glob.shell string.unquoted.shell
#                        ^^^^^ meta.string.glob.shell string.unquoted.shell
#                             ^ punctuation.terminator.statement.shell
#                               ^^ keyword.control.loop.do.shell
#                                  ^^^^ support.function.shell
#                                       ^^ variable.other.readwrite.shell
#                                          ^^ variable.other.readwrite.shell
#                                             ^^ variable.other.readwrite.shell
#                                               ^ punctuation.terminator.statement.shell
#                                                 ^^^^ keyword.control.loop.end.shell

# for (( [expr1] ; [expr2] ; [expr3] )) do list done
for (( i = 1; i < 10; i++ )) do echo $i; done
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
#   ^^ punctuation.section.compound.begin.shell
#      ^ variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#          ^ constant.numeric.value.shell
#           ^ punctuation.terminator.statement.shell
#             ^ variable.other.readwrite.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ constant.numeric.value.shell
#                   ^ punctuation.terminator.statement.shell
#                     ^ variable.other.readwrite.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.compound.end.shell
#                            ^^ keyword.control.loop.do.shell
#                               ^^^^ meta.function-call.identifier.shell support.function.shell
#                                   ^^^ meta.function-call.arguments.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^^^ keyword.control.loop.end.shell

# repeat word do list done
repeat $i+10 do echo .; done
# <- meta.statement.loop.repeat.shell keyword.control.loop.repeat.shell
#^^^^^^^^^^^ meta.statement.loop.repeat.shell
#^^^^^ keyword.control.loop.repeat.shell
#      ^^ variable.other.readwrite.shell
#        ^ keyword.operator.arithmetic.shell
#         ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^^ keyword.control.loop.do.shell
#               ^^^^^^ meta.function-call
#                     ^ punctuation.terminator.statement.shell
#                       ^^^^ keyword.control.loop.end.shell

# until list do list done
until (( i > 10 )) ; do echo $i; (( i += 1 )); done
# <- keyword.control.loop.until.shell
#^^^^ keyword.control.loop.until.shell
#     ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^ keyword.control.loop.do.shell
#                       ^^^^^^^ meta.function-call
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                                            ^ punctuation.terminator.statement.shell
#                                              ^^^^ keyword.control.loop.end.shell

# while list do list done
while (( i < 10 )) ; do echo $i; (( i += 1 )); done
# <- keyword.control.loop.while.shell
#^^^^ keyword.control.loop.while.shell
#     ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^ keyword.control.loop.do.shell
#                       ^^^^^^^ meta.function-call
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                                            ^ punctuation.terminator.statement.shell
#                                              ^^^^ keyword.control.loop.end.shell

# select name [ in word ... term ] do list done
select name in word1 word2; do echo $name; done
# <- keyword.control.loop.select.shell
#^^^^^ keyword.control.loop.select.shell
#      ^^^^ variable.other.readwrite.shell
#           ^^ keyword.operator.iteration.in.shell
#              ^^^^^ meta.string.glob.shell string.unquoted.shell
#                    ^^^^^ meta.string.glob.shell string.unquoted.shell
#                         ^ punctuation.terminator.statement.shell
#                           ^^ keyword.control.loop.do.shell
#                              ^^^^^^^^^^ meta.function-call
#                                        ^ punctuation.terminator.statement.shell
#                                          ^^^^ keyword.control.loop.end.shell

# ( list )   execute list in subshell
(ls .) >1
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^^^^^ meta.compound.command.shell
#    ^ punctuation.section.compound.end.shell
#      ^ keyword.operator.assignment.redirection.shell
#       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

# { list }   execute list
{ls .} >1
# <- meta.block.shell punctuation.section.block.begin.shell
#^^^^^ meta.block.shell
#    ^ punctuation.section.block.end.shell
#      ^ keyword.operator.assignment.redirection.shell
#       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

# { try-list } always { always-list }
{ try-list } always { always-list }
# <- meta.block.shell punctuation.section.block.begin.shell
#^^^^^^^^^^^ meta.block.shell
# ^^^^^^^^ variable.function.shell
#          ^ punctuation.section.block.end.shell
#            ^^^^^^ keyword.control.exception.always.shell
#                   ^^^^^^^^^^^^^^^ meta.block.shell
#                   ^ punctuation.section.block.begin.shell
#                     ^^^^^^^^^^^ variable.function.shell
#                                 ^ punctuation.section.block.end.shell

# function [ -T ] word ... [ () ] [ term ] { list }
function func { echo foo; }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell keyword.declaration.function.shell
#       ^ meta.function.shell - entity
#        ^^^^ meta.function.identifier.shell entity.name.function.shell
#            ^ meta.function.identifier.shell - entity
#             ^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#             ^ punctuation.section.block.begin.shell
#               ^^^^^^^^ meta.function-call
#                       ^ punctuation.terminator.statement.shell
#                         ^ punctuation.section.block.end.shell

function -T func { echo foo; }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function.shell
#          ^^^^^^ meta.function.identifier.shell
#                ^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ variable.parameter.option.shell
#           ^^^^ entity.name.function.shell
#                ^ punctuation.section.block.begin.shell
#                  ^^^^^^^^ meta.function-call
#                          ^ punctuation.terminator.statement.shell
#                            ^ punctuation.section.block.end.shell

function -T func; { echo foo; }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function.shell
#          ^^^^^ meta.function.identifier.shell
#               ^^ meta.function.shell - meta.block
#                 ^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ variable.parameter.option.shell
#           ^^^^ entity.name.function.shell
#               ^ punctuation.terminator.statement.shell
#                 ^ punctuation.section.block.begin.shell
#                   ^^^^^^^^ meta.function-call
#                           ^ punctuation.terminator.statement.shell
#                             ^ punctuation.section.block.end.shell

function -T func() { echo foo; }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function.shell
#          ^^^^^ meta.function.identifier.shell
#               ^^ meta.function.parameters.shell
#                 ^ meta.function.shell - meta.block
#                  ^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ variable.parameter.option.shell
#           ^^^^ entity.name.function.shell
#               ^ punctuation.section.parameters.begin.shell
#                ^ punctuation.section.parameters.end.shell
#                  ^ punctuation.section.block.begin.shell
#                    ^^^^^^^^ meta.function-call
#                            ^ punctuation.terminator.statement.shell
#                              ^ punctuation.section.block.end.shell

function -T func(); { echo foo; }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function.shell
#          ^^^^^ meta.function.identifier.shell
#               ^^ meta.function.parameters.shell
#                 ^^ meta.function.shell - meta.block
#                   ^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ variable.parameter.option.shell
#           ^^^^ entity.name.function.shell
#               ^ punctuation.section.parameters.begin.shell
#                ^ punctuation.section.parameters.end.shell
#                 ^ punctuation.terminator.statement.shell
#                   ^ punctuation.section.block.begin.shell
#                     ^^^^^^^^ meta.function-call
#                             ^ punctuation.terminator.statement.shell
#                               ^ punctuation.section.block.end.shell

function -- -T { echo foo; }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function.shell
#          ^^^^ meta.function.identifier.shell
#              ^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ keyword.operator.end-of-options.shell
#           ^^ entity.name.function.shell
#              ^ punctuation.section.block.begin.shell
#                ^^^^^^^^ meta.function-call
#                        ^ punctuation.terminator.statement.shell
#                          ^ punctuation.section.block.end.shell

func() { ... } 2>&1
# <- meta.function.identifier.shell entity.name.function.shell
#^^^ meta.function.identifier.shell entity.name.function.shell
#   ^^ meta.function.parameters.shell
#     ^ meta.function.shell - meta.block
#      ^^^^^^^ meta.function.body.shell meta.block.shell
#      ^ punctuation.section.block.begin.shell
#        ^^^ meta.function-call.identifier.shell variable.function.shell
#            ^ punctuation.section.block.end.shell
#             ^^^^^^ - meta.function
#              ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^^ keyword.operator.assignment.redirection.shell
#                 ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

time cmd1 arg | cmd2 -t >1
# <- keyword.control.flow.time.shell
#^^^ keyword.control.flow.time.shell
#    ^^^^ meta.function-call.identifier.shell
#        ^^^^ meta.function-call.arguments.shell
#            ^^^ - meta.function-call
#               ^^^^ meta.function-call.identifier.shell
#                   ^^^^^^ meta.function-call.arguments.shell
#    ^^^^ variable.function.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#             ^ keyword.operator.assignment.pipe.shell
#               ^^^^ variable.function.shell
#                    ^^ meta.parameter.option.shell variable.parameter.option.shell
#                       ^ keyword.operator.assignment.redirection.shell
#                        ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

# 6.4 Alternate Forms For Complex Commands

if [[ -f ~./foo ]] { echo 'yes' } elif [[  ]] { echo 'no' } else { echo 'error' }
# <- keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                  ^^^^^^^^^^^^^^ meta.block.shell
#                                 ^^^^ keyword.control.conditional.elseif.shell
#                                      ^^^^^^ meta.compound.conditional.shell
#                                             ^^^^^^^^^^^^^ meta.block.shell
#                                                           ^^^^ keyword.control.conditional.else.shell
#                                                                ^^^^^^^^^^^^^^^^ meta.block.shell

if [[ -f ~./foo ]] then { echo 'yes' } elif [[  ]] then { echo 'no' } else { echo 'error' }
# <- keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                  ^^^^ keyword.control.conditional.then.shell
#                       ^^^^^^^^^^^^^^ meta.block.shell
#                                      ^^^^ keyword.control.conditional.elseif.shell
#                                           ^^^^^^ meta.compound.conditional.shell
#                                                  ^^^^ keyword.control.conditional.then.shell
#                                                       ^^^^^^^^^^^^^ meta.block.shell
#                                                                     ^^^^ keyword.control.conditional.else.shell
#                                                                          ^^^^^^^^^^^^^^^^ meta.block.shell

# for name ... ( word ... ) sublist
for name ( word1 $word2 | & ; < > ) print $name
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^ variable.other.readwrite.shell
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.shell
#        ^ punctuation.section.sequence.begin.shell
#          ^^^^^ meta.string.glob.shell string.unquoted.shell
#                ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                       ^ invalid.illegal.unexpected-token.shell
#                         ^ invalid.illegal.unexpected-token.shell
#                           ^ invalid.illegal.unexpected-token.shell
#                             ^ invalid.illegal.unexpected-token.shell
#                               ^ invalid.illegal.unexpected-token.shell
#                                 ^ punctuation.section.sequence.end.shell
#                                   ^^^^^^^^^^^ meta.function-call
#                                   ^^^^^ support.function.shell
#                                         ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell

for a b 3 ( word1 $word2 | & ; < > ) print $name
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^ variable.other.readwrite.shell
#       ^ variable.language.positional.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.shell
#         ^ punctuation.section.sequence.begin.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                        ^ invalid.illegal.unexpected-token.shell
#                          ^ invalid.illegal.unexpected-token.shell
#                            ^ invalid.illegal.unexpected-token.shell
#                              ^ invalid.illegal.unexpected-token.shell
#                                ^ invalid.illegal.unexpected-token.shell
#                                  ^ punctuation.section.sequence.end.shell
#                                    ^^^^^^^^^^^ meta.function-call
#                                    ^^^^^ support.function.shell
#                                          ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell

# for name ... [ in word ... ] term sublist
for name in word1 word2; echo me;
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^ variable.other.readwrite.shell
#        ^^ keyword.operator.iteration.in.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^^^^^ meta.string.glob.shell string.unquoted.shell
#                      ^ punctuation.terminator.statement.shell
#                        ^^^^ meta.function-call.identifier.shell support.function.shell
#                             ^^ meta.function-call.arguments.shell
#                               ^ punctuation.terminator.statement.shell

# for (( [expr1] ; [expr2] ; [expr3] )) sublist
for (( i = 1; i < 10; i++ )) echo $i;
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                            ^^^^^^^ meta.function-call
#   ^^ punctuation.section.compound.begin.shell
#      ^ variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#          ^ constant.numeric.value.shell
#           ^ punctuation.terminator.statement.shell
#             ^ variable.other.readwrite.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ constant.numeric.value.shell
#                   ^ punctuation.terminator.statement.shell
#                     ^ variable.other.readwrite.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.compound.end.shell
#                            ^^^^ support.function.shell
#                                 ^^ variable.other.readwrite.shell
#                                   ^ punctuation.terminator.statement.shell

# foreach name ... ( word ... ) list end
foreach name ( word1 word2 ) echo $name; end
# <- meta.statement.loop.foreach.shell.zsh keyword.control.loop.foreach.shell.zsh
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.foreach.shell.zsh
#^^^^^^ keyword.control.loop.foreach.shell.zsh
#       ^^^^ variable.other.readwrite.shell
#            ^^^^^^^^^^^^^^^ meta.sequence.list.shell.zsh
#            ^ punctuation.section.sequence.begin.shell.zsh
#              ^^^^^ meta.string.glob.shell string.unquoted.shell
#                    ^^^^^ meta.string.glob.shell string.unquoted.shell
#                          ^ punctuation.section.sequence.end.shell.zsh
#                            ^^^^^^^^^^ meta.function-call
#                            ^^^^ support.function.shell
#                                 ^^^^^ variable.other.readwrite.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^^ keyword.control.loop.endforeach.shell.zsh

foreach
    name ( word1 word2 ) echo $name; end
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.statement.loop.foreach.shell.zsh
#   ^^^^ variable.function.shell

foreach \
    name ( word1 word2 ) echo $name; end
# ^^^^^^^ meta.statement.loop.foreach.shell.zsh - meta.sequence
#        ^^^^^^^^^^^^^^^ meta.statement.loop.foreach.shell.zsh meta.sequence.list.shell.zsh
#   ^^^^ variable.other.readwrite.shell
#        ^ punctuation.section.sequence.begin.shell.zsh
#          ^^^^^ meta.string.glob.shell string.unquoted.shell
#                ^^^^^ meta.string.glob.shell string.unquoted.shell
#                      ^ punctuation.section.sequence.end.shell.zsh

foreach \
    name \
    ( word1 word2 ) echo $name; end
#   ^^^^^^^^^^^^^^^ meta.statement.loop.foreach.shell.zsh meta.sequence.list.shell.zsh
#   ^ punctuation.section.sequence.begin.shell.zsh
#     ^^^^^ meta.string.glob.shell string.unquoted.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.section.sequence.end.shell.zsh
#                   ^^^^^^^^^^ meta.function-call
#                   ^^^^ support.function.shell
#                        ^^^^^ variable.other.readwrite.shell
#                             ^ punctuation.terminator.statement.shell
#                               ^^^ keyword.control.loop.endforeach.shell.zsh

foreach \
    name \
    (
#   ^^ meta.statement.loop.foreach.shell.zsh meta.sequence.list.shell.zsh
#   ^ punctuation.section.sequence.begin.shell.zsh
        word1
#       ^^^^^ meta.string.glob.shell string.unquoted.shell
        word2
#       ^^^^^ meta.string.glob.shell string.unquoted.shell
    ) echo $name; end
#   ^ meta.statement.loop.foreach.shell.zsh meta.sequence.list.shell.zsh punctuation.section.sequence.end.shell.zsh
#     ^^^^^^^^^^ meta.function-call
#     ^^^^ support.function.shell
#          ^^^^^ variable.other.readwrite.shell
#               ^ punctuation.terminator.statement.shell
#                 ^^^ keyword.control.loop.endforeach.shell.zsh

foreach in 1 new ( word1 word2 ) echo $name; end
# <- meta.statement.loop.foreach.shell.zsh keyword.control.loop.foreach.shell.zsh
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.foreach.shell.zsh
#^^^^^^ keyword.control.loop.foreach.shell.zsh
#       ^^ variable.other.readwrite.shell
#          ^ variable.language.positional.shell
#            ^^^ variable.other.readwrite.shell
#                ^^^^^^^^^^^^^^^ meta.sequence.list.shell.zsh
#                ^ punctuation.section.sequence.begin.shell.zsh
#                  ^^^^^ meta.string.glob.shell string.unquoted.shell
#                        ^^^^^ meta.string.glob.shell string.unquoted.shell
#                              ^ punctuation.section.sequence.end.shell.zsh
#                                ^^^^^^^^^^ meta.function-call
#                                ^^^^ support.function.shell
#                                     ^^^^^ variable.other.readwrite.shell
#                                          ^ punctuation.terminator.statement.shell
#                                            ^^^ keyword.control.loop.endforeach.shell.zsh

# repeat word sublist
repeat $i+10 echo .;
# <- meta.statement.loop.repeat.shell.zsh keyword.control.loop.repeat.shell.zsh
#^^^^^^^^^^^ meta.statement.loop.repeat.shell.zsh
#^^^^^ keyword.control.loop.repeat.shell.zsh
#      ^^ variable.other.readwrite.shell
#        ^ keyword.operator.arithmetic.shell
#         ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^^^^^^ meta.function-call
#                  ^ punctuation.terminator.statement.shell

# until list { list }
until (( i > 10 )) { echo $i; (( i += 1 )); }
# <- keyword.control.loop.until.shell
#^^^^ keyword.control.loop.until.shell
#     ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.shell
#                  ^ punctuation.section.block.begin.shell
#                    ^^^^^^^ meta.function-call
#                           ^ punctuation.terminator.statement.shell
#                             ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^ punctuation.section.block.end.shell

# while list do list done
while (( i < 10 )) { echo $i; (( i += 1 )); }
# <- keyword.control.loop.while.shell
#^^^^ keyword.control.loop.while.shell
#     ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.shell
#                  ^ punctuation.section.block.begin.shell
#                    ^^^^^^^ meta.function-call
#                           ^ punctuation.terminator.statement.shell
#                             ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^ punctuation.section.block.end.shell

# select name [ in word ... term ] do list done
select name in word1 word2; do echo $name; done;
# <- keyword.control.loop.select.shell
#^^^^^ keyword.control.loop.select.shell
#      ^^^^ variable.other.readwrite.shell
#           ^^ keyword.operator.iteration.in.shell
#              ^^^^^ meta.string.glob.shell string.unquoted.shell
#                    ^^^^^ meta.string.glob.shell string.unquoted.shell
#                         ^ punctuation.terminator.statement.shell
#                           ^^ keyword.control.loop.do.shell
#                              ^^^^^^^^^^ meta.function-call
#                                        ^ punctuation.terminator.statement.shell
#                                          ^^^^ keyword.control.loop.end.shell
#                                              ^ punctuation.terminator.statement.shell

# case word { [ [(] pattern [ | pattern ] ... ) list (;;|;&|;|) ] ... }
case $word {
# <- meta.statement.conditional.case.shell keyword.control.conditional.case.shell
#^^^ meta.statement.conditional.case.shell
#   ^^^^^^^ meta.statement.conditional.case.word.shell
#          ^^ meta.statement.conditional.case.body.shell meta.block.shell.zsh
#^^^ keyword.control.conditional.case.shell
#    ^^^^^ variable.other.readwrite.shell
#          ^ punctuation.section.block.begin.shell
    pattern | pa*?ern )
# ^^ meta.statement.conditional.case.body.shell
#   ^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell
#          ^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string
#             ^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell
#                    ^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string
#           ^ keyword.operator.logical.shell
#               ^ constant.other.wildcard.asterisk.shell
#                ^ constant.other.wildcard.questionmark.shell
#                     ^ punctuation.section.patterns.end.shell
        cmd -arg value;;
#^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.body.shell meta.block.shell.zsh meta.clause.body.shell
#                     ^^ meta.statement.conditional.case.body.shell meta.block.shell.zsh meta.clause.shell
# ^^^^^^ - meta.function-call
#       ^^^ meta.function-call.identifier.shell variable.function.shell
#          ^^^^^^^^^^^ meta.function-call.arguments.shell
#                     ^^ punctuation.terminator.clause.shell

    ws-+([0-9]).host.com)
#   ^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.body.shell meta.block.shell.zsh meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#       ^ meta.group.regexp.shell - meta.set
#        ^^^^^ meta.group.regexp.shell meta.set.regexp.shell
#             ^ meta.group.regexp.shell - meta.set
#                       ^ meta.clause.patterns.shell - meta.group - string
#                        ^ meta.statement.conditional.case.body.shell meta.block.shell.zsh meta.clause.shell - meta.clause.patterns
        ;;
#       ^^ punctuation.terminator.clause.shell

    ((foo|bar)baz) cmd arg ;|
#   ^ meta.clause.patterns.shell - meta.string - string
#    ^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#             ^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#                ^ meta.clause.patterns.shell - meta.string - string
#                 ^ meta.clause.shell
#                  ^^^^^^^^ meta.clause.body.shell
#   ^ punctuation.section.patterns.begin.shell
#    ^ punctuation.section.group.begin.regexp.shell
#        ^ keyword.operator.alternation.regexp.shell
#            ^ punctuation.section.group.end.regexp.shell
#                ^ punctuation.section.patterns.end.shell
#                  ^^^ variable.function.shell
#                      ^^^ meta.string.glob.shell string.unquoted.shell
#                          ^^ punctuation.terminator.clause.shell

    (foo|bar)baz) cmd arg ;&
#   ^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#            ^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#               ^ meta.clause.patterns.shell - meta.string - string
#                ^ meta.clause.shell
#                 ^^^^^^^^ meta.clause.body.shell
#   ^ punctuation.section.group.begin.regexp.shell
#       ^ keyword.operator.alternation.regexp.shell
#           ^ punctuation.section.group.end.regexp.shell
#               ^ punctuation.section.patterns.end.shell
#                 ^^^ variable.function.shell
#                     ^^^ meta.string.glob.shell string.unquoted.shell
#                         ^^ punctuation.terminator.clause.shell

    ( foo | bar ) | baz ) cmd arg ;;
#   ^^^^^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#                ^^^ meta.clause.patterns.shell - meta.string - string
#                   ^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.clause.patterns.shell - meta.string - string
#                        ^ meta.clause.shell
#                         ^^^^^^^^ meta.clause.body.shell
#   ^ punctuation.section.group.begin.regexp.shell
#         ^ keyword.operator.alternation.regexp.shell
#               ^ punctuation.section.group.end.regexp.shell
#                 ^ keyword.operator.logical.shell
#                   ^^^ meta.string.glob.shell string.unquoted.shell
#                       ^ punctuation.section.patterns.end.shell
#                         ^^^ variable.function.shell
#                             ^^^ meta.string.glob.shell string.unquoted.shell
#                                 ^^ punctuation.terminator.clause.shell

    ((foo|bar)baz)
#   ^ meta.clause.patterns.shell - meta.string - string
#    ^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#             ^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#                ^ meta.clause.patterns.shell - meta.string - string
#                 ^ meta.clause.shell
#   ^ punctuation.section.patterns.begin.shell
#    ^ punctuation.section.group.begin.regexp.shell
#        ^ keyword.operator.alternation.regexp.shell
#            ^ punctuation.section.group.end.regexp.shell
#                ^ punctuation.section.patterns.end.shell
        cmd arg ;;
#       ^^^^^^^^ meta.clause.body.shell
#       ^^^ variable.function.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell
#               ^^ punctuation.terminator.clause.shell

    (foo|bar)baz)
#   ^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#            ^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#               ^ meta.clause.patterns.shell - meta.string - string
#                ^ meta.clause.shell
#   ^ punctuation.section.group.begin.regexp.shell
#       ^ keyword.operator.alternation.regexp.shell
#           ^ punctuation.section.group.end.regexp.shell
#               ^ punctuation.section.patterns.end.shell
        cmd arg ;;
#       ^^^^^^^^ meta.clause.body.shell
#       ^^^ variable.function.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell
#               ^^ punctuation.terminator.clause.shell

    ( foo | bar ) \
        | baz )
#      ^^^^^^^^ meta.clause.patterns.shell
#              ^ meta.clause.shell
#       ^ keyword.operator.logical.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#             ^ punctuation.section.patterns.end.shell
        cmd arg ;;
#       ^^^^^^^^ meta.clause.body.shell
#       ^^^ variable.function.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell
#               ^^ punctuation.terminator.clause.shell

    incomplete | pattern
#  ^ - meta.clause - meta.string - string
#   ^^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#             ^^^ meta.clause.patterns.shell - meta.string - string
#                ^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#                       ^ meta.clause.shell - meta.string - string
}
# <- meta.statement.conditional.case.body.shell punctuation.section.block.end.shell

()
# <- meta.function-call.shell meta.function.anonymous.parameters.shell punctuation.section.parameters.begin.shell
#^ meta.function-call.shell meta.function.anonymous.parameters.shell punctuation.section.parameters.end.shell

(foo)
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^^^ meta.compound.command.shell meta.function-call.identifier.shell variable.function.shell
#   ^ meta.compound.command.shell punctuation.section.compound.end.shell
#    ^ - meta

((git stash) || true)
#^^^^^^^^^^^^^^^^^^^^ - meta.compound.arithmetic
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^ meta.compound.command.shell meta.compound.command.shell
#           ^^^^^^^^^ meta.compound.command.shell
#^ punctuation.section.compound.begin.shell
# ^^^ meta.command.shell variable.function.shell
#     ^^^^^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.section.compound.end.shell
#            ^^ keyword.operator.logical.shell
#               ^^^^ constant.language.boolean.true.shell
#                   ^ punctuation.section.compound.end.shell

((git \
stash) || true)
#^^^^^^^^^^^^^^ - meta.compound.arithmetic
#^^^^^ meta.compound.command.shell meta.compound.command.shell
#     ^^^^^^^^^ meta.compound.command.shell
#^^^^ meta.string.glob.shell string.unquoted.shell
#    ^ punctuation.section.compound.end.shell
#      ^^ keyword.operator.logical.shell
#         ^^^^ constant.language.boolean.true.shell
#             ^ punctuation.section.compound.end.shell


###############################################################################
# 7 Redirection                                                               #
# https://zsh.sourceforge.io/Doc/Release/Redirection.html#Redirection         #
###############################################################################

# Open file word for reading as standard input. It is an error to open a file
# in this fashion if it does not exist.

: <
# ^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#  ^ - meta.redirection

: <- # standard output/input
# ^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#  ^ variable.language.stdio.shell
#   ^ - meta.redirection

: <p # coproc output/input
# ^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#  ^ variable.language.stdio.shell
#   ^ - meta.redirection

: <2
# ^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#  ^ constant.numeric.value.shell
#   ^ - meta.redirection

: < word
# ^^^^^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#   ^^^^ meta.string.glob.shell string.unquoted.shell

# Open file word for reading and writing as standard input. If the file does
# not exist then it is created.

: <>
# ^^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#   ^ - meta.redirection

: <>- # standard output/input
# ^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#   ^ variable.language.stdio.shell
#    ^ - meta.redirection

: <>p # coproc output/input
# ^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#   ^ variable.language.stdio.shell
#    ^ - meta.redirection

: <>2
# ^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#   ^ constant.numeric.value.shell
#    ^ - meta.redirection

: <> word
# ^^^^^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#    ^^^^ meta.string.glob.shell string.unquoted.shell

# Open file word for writing as standard output. If the file does not exist
# then it is created.

: >
# ^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#  ^ - meta.redirection

: >- # standard output/input
# ^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#  ^ variable.language.stdio.shell
#   ^ - meta.redirection

: >p # coproc output/input
# ^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#  ^ variable.language.stdio.shell
#   ^ - meta.redirection

: >2
# ^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#  ^ constant.numeric.value.shell
#   ^ - meta.redirection

: > word >| word >! word
# ^^^^^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#   ^^^^ meta.string.glob.shell string.unquoted.shell
#        ^^^^^^^ meta.redirection.shell
#        ^^ keyword.operator.assignment.redirection.shell
#           ^^^^ meta.string.glob.shell string.unquoted.shell
#                ^^^^^^^ meta.redirection.shell
#                ^^ keyword.operator.assignment.redirection.shell
#                   ^^^^ meta.string.glob.shell string.unquoted.shell

# Open file word for writing in append mode as standard output. If the file
# does not exist, and the CLOBBER and APPEND_CREATE options are both unset,
# this causes an error; otherwise, the file is created.
: >> word  >>| word >>! word
# ^^^^^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#          ^^^^^^^^ meta.redirection.shell
#          ^^^ keyword.operator.assignment.redirection.shell
#                   ^^^^^^^^ meta.redirection.shell
#                   ^^^ keyword.operator.assignment.redirection.shell

# The standard input/output is duplicated from file descriptor number (see dup2(2)).
: <& 1 >& 1
# ^^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#      ^^^^ meta.redirection.shell
#      ^^ keyword.operator.assignment.redirection.shell

# Close the standard input/output.
: <& - >& -
# ^^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#    ^ meta.file-descriptor.shell variable.language.stdio.shell
#      ^^^^ meta.redirection.shell
#      ^^ keyword.operator.assignment.redirection.shell
#         ^ meta.file-descriptor.shell variable.language.stdio.shell

# The input/output from/to the coprocess is moved to the standard input/output.
: <& p >& p
# ^^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#    ^ meta.file-descriptor.shell variable.language.stdio.shell
#      ^^^^ meta.redirection.shell
#      ^^ keyword.operator.assignment.redirection.shell
#         ^ meta.file-descriptor.shell variable.language.stdio.shell

# Redirects both standard output and standard error (file descriptor 2) in the
# manner of ‘>| word’.
: >&| word >&! word &>| word &>! word
# ^^^^^^^^ meta.redirection.shell
# ^^^ keyword.operator.assignment.redirection.shell
#          ^^^^^^^^ meta.redirection.shell
#          ^^^ keyword.operator.assignment.redirection.shell
#                   ^^^^^^^^ meta.redirection.shell
#                   ^^^ keyword.operator.assignment.redirection.shell
#                            ^^^^^^^^ meta.redirection.shell
#                            ^^^ keyword.operator.assignment.redirection.shell

# Redirects both standard output and standard error (file descriptor 2) in the
# manner of ‘>> word’.
: >>& word &>> word
# ^^^^^^^^ meta.redirection.shell
# ^^^ keyword.operator.assignment.redirection.shell
#          ^^^^^^^^ meta.redirection.shell
#          ^^^ keyword.operator.assignment.redirection.shell

# Redirects both standard output and standard error (file descriptor 2) in the
# manner of ‘>>| word’.
: >>&| word >>&! word &>>| word &>>! word
# ^^^^^^^^^ meta.redirection.shell
# ^^^^ keyword.operator.assignment.redirection.shell
#           ^^^^^^^^^ meta.redirection.shell
#           ^^^^ keyword.operator.assignment.redirection.shell
#                     ^^^^^^^^^ meta.redirection.shell
#                     ^^^^ keyword.operator.assignment.redirection.shell
#                               ^^^^^^^^^ meta.redirection.shell
#                               ^^^^ keyword.operator.assignment.redirection.shell


###############################################################################
# 7 Redirection                                                               #
#   HERE DOCUMENTS                                                            #
###############################################################################

# The shell input is read up to a line that is the same as word, or to an
# end-of-file.
: << word
# ^^ meta.function-call.arguments.shell meta.redirection.shell keyword.operator.assignment.redirection.shell
#   ^ meta.function-call.arguments.shell meta.redirection.shell - keyword - entity
#    ^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.begin.shell entity.name.tag.heredoc.shell
#        ^ meta.function-call.arguments.shell meta.redirection.shell - meta.tag - entity - meta.string - string
word
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#   ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity

heredoc=<<__HERE.DOC-TAG__
#       ^^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#         ^^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell entity.name.tag.heredoc.shell

    if [[ -z "~/$file" ]] then echo "${msg}"; fi;
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell
#               ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                    ^^^^^^ meta.interpolation.parameter.shell
__HERE.DOC-TAG__
# <- meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#               ^ meta.redirection.shell meta.tag.heredoc.end.shell - entity

heredoc=<<'EOF'
#       ^^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#         ^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell
#         ^ punctuation.definition.tag.begin.shell
#          ^^^ entity.name.tag.heredoc.shell
#             ^ punctuation.definition.tag.end.shell

    if [[ -z "~/$file" ]] then echo "${msg}"; fi;
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
EOF
# <- meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^ meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#  ^ meta.redirection.shell meta.tag.heredoc.end.shell - entity

heredoc=<<"EOF"
#       ^^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#         ^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell
#         ^ punctuation.definition.tag.begin.shell
#          ^^^ entity.name.tag.heredoc.shell
#             ^ punctuation.definition.tag.end.shell

    if [[ -z "~/$file" ]] then echo "${msg}"; fi;
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
EOF
# <- meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^ meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#  ^ meta.redirection.shell meta.tag.heredoc.end.shell - entity

heredoc=<<-__HERE.DOC-TAG__
#       ^^^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#          ^^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell entity.name.tag.heredoc.shell

    if [[ -z "~/$file" ]] then echo "${msg}"; fi;
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell
#               ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                    ^^^^^^ meta.interpolation.parameter.shell
__HERE.DOC-TAG__
# <- meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#               ^ meta.redirection.shell meta.tag.heredoc.end.shell - entity

heredoc=<<-'EOF'
#       ^^^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#          ^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell
#          ^ punctuation.definition.tag.begin.shell
#           ^^^ entity.name.tag.heredoc.shell
#              ^ punctuation.definition.tag.end.shell

    if [[ -z "~/$file" ]] then echo "${msg}"; fi;
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
EOF
# <- meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^ meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#  ^ meta.redirection.shell meta.tag.heredoc.end.shell - entity

heredoc=<<-"EOF"
#       ^^^^^^^^^ meta.redirection.shell
#       ^^^ keyword.operator.assignment.redirection.shell
#          ^^^^^ meta.tag.heredoc.begin.shell
#          ^ punctuation.definition.tag.begin.shell
#           ^^^ entity.name.tag.heredoc.shell
#              ^ punctuation.definition.tag.end.shell

    if [[ -z "~/$file" ]] then echo "${msg}"; fi;
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
EOF
# <- meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#^^ meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
#  ^ meta.redirection.shell meta.tag.heredoc.end.shell - entity


###############################################################################
# 7 Redirection                                                               #
#   HERESTRINGS                                                               #
###############################################################################

# Perform shell expansion on word and pass the result to standard input.

: <<< word --opt ~/**/[Ff]oo?.bar
# ^^^^ meta.redirection.shell - meta.string
#     ^^^^ meta.redirection.shell meta.string.herestring.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^ - meta.redirection
# ^^^ keyword.operator.assignment.herestring
#     ^^^^ string.unquoted.shell
#          ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^^^^^^^^^^^^^^^^ meta.string.glob.shell
#                ^ variable.language.tilde.shell
#                  ^^ constant.other.wildcard.asterisk.shell
#                     ^^^^ meta.set.regexp.shell
#                           ^ constant.other.wildcard.questionmark.shell

: <<< "word --opt ~/**/[Ff]oo?.bar"
# ^^^ meta.redirection.shell keyword.operator.assignment.herestring
#    ^ meta.redirection.shell - meta.string - keyword - string
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell meta.string.herestring.shell string.quoted.double.shell - constant - variable
#                                  ^ - meta.redirection - meta.string

: 1<<< "word --opt"
# ^ meta.redirection.shell meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#  ^^^ meta.redirection.shell keyword.operator.assignment.herestring.shell
#     ^ meta.redirection.shell - meta.string - keyword - string
#      ^^^^^^^^^^^^ meta.redirection.shell meta.string.herestring.shell string.quoted.double.shell
#                  ^ - meta.redirection - meta.string

herestring=<<<${here}string
#          ^^^ meta.assignment.r-value.shell meta.redirection.shell keyword.operator.assignment.herestring.shell
#             ^^^^^^^ meta.assignment.r-value.shell meta.redirection.shell meta.string.herestring.shell meta.interpolation.parameter.shell
#                    ^^^^^^ meta.assignment.r-value.shell meta.redirection.shell meta.string.herestring.shell string.unquoted.shell
#                          ^ - meta.assignment - meta.redirection - meta.string

herestring=<<<"This is a \\$here \"\$string.\""
#          ^^^ meta.assignment.r-value.shell meta.redirection.shell keyword.operator.assignment.herestring.shell
#             ^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.redirection.shell meta.string.herestring.shell string.quoted.double.shell - meta.interpolation
#                          ^^^^^ meta.assignment.r-value.shell meta.redirection.shell meta.string.herestring.shell meta.interpolation.parameter.shell - string
#                               ^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.redirection.shell meta.string.herestring.shell string.quoted.double.shell - meta.interpolation
#                                              ^ - meta.assignment - meta.string
#          ^^^ keyword.operator.assignment.herestring
#             ^ punctuation.definition.string.begin.shell
#                        ^^ constant.character.escape.shell
#                          ^^^^^ variable.other.readwrite.shell
#                          ^ punctuation.definition.variable.shell
#                                ^^^^ constant.character.escape.shell
#                                           ^^ constant.character.escape.shell
#                                             ^ punctuation.definition.string.end.shell

cat <<< "This is a \\$here \"\$string.\"" ; cat more stuff | bar | qux
# <- meta.function-call.identifier.shell variable.function.shell
#   ^^^^ meta.function-call.arguments.shell meta.redirection.shell - meta.string
#       ^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.string.herestring.shell string.quoted.double.shell - meta.interpolation
#                    ^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.string.herestring.shell meta.interpolation.parameter.shell - string
#                         ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.string.herestring.shell string.quoted.double.shell - meta.interpolation
#                                        ^^^ - meta.function-call - meta.redirection - string
#                                           ^^^ meta.function-call.identifier.shell
#                                              ^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                         ^^^ - meta.function-call
#                                                            ^^^ meta.function-call.identifier.shell
#                                                               ^^^ - meta.function-call
#                                                                  ^^^ meta.function-call.identifier.shell
#   ^^^ keyword.operator.assignment.herestring
#       ^ punctuation.definition.string.begin.shell
#                  ^^ constant.character.escape.shell
#                    ^^^^^ variable.other.readwrite.shell
#                    ^ punctuation.definition.variable.shell
#                          ^^^^ constant.character.escape.shell
#                                     ^^ constant.character.escape.shell
#                                       ^ punctuation.definition.string.end.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^^^ variable.function.shell
#                                               ^^^^ meta.string.glob.shell string.unquoted.shell
#                                                    ^^^^^ meta.string.glob.shell string.unquoted.shell
#                                                          ^ keyword.operator.assignment.pipe.shell
#                                                            ^^^ variable.function.shell
#                                                                ^ keyword.operator.assignment.pipe.shell
#                                                                  ^^^ variable.function.shell

cat -c <<<$(echo pipephobic)
#  ^^^^ meta.function-call.arguments.shell - meta.redirection
#      ^^^ meta.function-call.arguments.shell meta.redirection.shell keyword.operator.assignment.herestring.shell
#         ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.string.herestring.shell meta.interpolation.command.shell
#                           ^ - meta.function-call - meta.redirection
#           ^^^^ support.function.shell
#                ^^^^^^^^^^ string.unquoted.shell

if opam upgrade --check; then
    opam upgrade --dry-run <<<n
#                          ^^^ meta.function-call.arguments.shell meta.redirection.shell keyword.operator.assignment.herestring.shell
#                             ^ meta.function-call.arguments.shell meta.redirection.shell meta.string.herestring.shell string.unquoted.shell
fi
# <- keyword.control.conditional.endif.shell - string


###############################################################################
# 8 Command Execution                                                         #
###############################################################################

cmd
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^ - meta.function

/path/to/app
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.separator.path.shell
#^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#           ^ - meta.function

./.bin/app
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell constant.other.path.self.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ punctuation.separator.path.shell
# ^ - constant
#     ^ punctuation.separator.path.shell

../.bin/app
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell constant.other.path.parent.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ constant.other.path.parent.shell
# ^ punctuation.separator.path.shell
#  ^ - constant
#      ^ punctuation.separator.path.shell


###############################################################################
# 9 Functions                                                                 #
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Functions             #
###############################################################################

function name () echo "$0 called with $*!"
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function.shell
#        ^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^ meta.function.shell
#                ^^^^ meta.function.body.shell meta.function-call.identifier.shell
#                    ^ meta.function.body.shell meta.function-call.arguments.shell
#                     ^^^^^^^^^^^^^^^^^^^^ meta.function.body.shell meta.function-call.arguments.shell meta.string.glob.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^^^^ support.function.shell

function $foo() { : }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function.shell
#        ^^^^ meta.function.identifier.shell meta.interpolation.parameter.shell
#            ^^ meta.function.parameters.shell
#              ^ meta.function.shell
#               ^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ variable.other.readwrite.shell
#        ^ punctuation.definition.variable.shell
#            ^ punctuation.section.parameters.begin.shell
#             ^ punctuation.section.parameters.end.shell
#               ^ punctuation.section.block.begin.shell
#                 ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#                   ^ punctuation.section.block.end.shell

function \$foo() { : }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function.shell
#        ^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^ meta.function.shell
#                ^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^^ entity.name.function.shell
#        ^^ constant.character.escape.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ punctuation.section.block.begin.shell
#                  ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#                    ^ punctuation.section.block.end.shell

function 'foo'() { : }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function.shell
#        ^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^ meta.function.shell
#                ^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^^ entity.name.function.shell
#        ^ punctuation.definition.quoted.begin.shell
#            ^ punctuation.definition.quoted.end.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ punctuation.section.block.begin.shell
#                  ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#                    ^ punctuation.section.block.end.shell

function foo bar() { : }
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function.shell
#        ^^^^^^^ meta.function.identifier.shell
#               ^^ meta.function.parameters.shell
#                 ^ meta.function.shell
#                  ^^^^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^ entity.name.function.shell
#           ^ - entity
#            ^^^ entity.name.function.shell
#               ^ punctuation.section.parameters.begin.shell
#                ^ punctuation.section.parameters.end.shell
#                  ^ punctuation.section.block.begin.shell
#                    ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#                      ^ punctuation.section.block.end.shell

time () {  }   # reserved words cannot be overwritten by local function definitions
# <- - meta.function
#^^^^ - meta.function
#    ^^ meta.function-call.shell meta.function.anonymous.parameters.shell
#      ^ meta.function-call.shell meta.function.anonymous.shell
#       ^^^^ meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell

alias () {  }  # built-in functions/commands can be overwritten
#^^^^^ meta.function.identifier.shell
#     ^^ meta.function.parameters.shell
#       ^ meta.function.shell
#        ^^^^ meta.function.body.shell meta.block.shell
#^^^^ entity.name.function.shell
#     ^ punctuation.section.parameters.begin.shell
#      ^ punctuation.section.parameters.end.shell
#        ^ punctuation.section.block.begin.shell
#           ^ punctuation.section.block.end.shell

$foo() { : }
# <- meta.function.identifier.shell meta.interpolation.parameter.shell
#^^^ meta.function.identifier.shell meta.interpolation.parameter.shell
#   ^^ meta.function.parameters.shell
#     ^ meta.function.shell
#      ^^^^^ meta.function.body.shell meta.block.shell
# <- variable.other.readwrite.shell punctuation.definition.variable.shell
#^^^ variable.other.readwrite.shell
#   ^ punctuation.section.parameters.begin.shell
#    ^ punctuation.section.parameters.end.shell
#      ^ punctuation.section.block.begin.shell
#        ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#          ^ punctuation.section.block.end.shell

\$foo() { : }
# <- meta.function.identifier.shell entity.name.function.shell constant.character.escape.shell
#^^^^ meta.function.identifier.shell
#    ^^ meta.function.parameters.shell
#      ^ meta.function.shell
#       ^^^^^ meta.function.body.shell meta.block.shell
#^^^^ entity.name.function.shell
#^ constant.character.escape.shell
#    ^ punctuation.section.parameters.begin.shell
#     ^ punctuation.section.parameters.end.shell
#       ^ punctuation.section.block.begin.shell
#         ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#           ^ punctuation.section.block.end.shell

'foo'() { : }
# <- meta.function.identifier.shell entity.name.function.shell punctuation.definition.quoted.begin.shell
#^^^^ meta.function.identifier.shell
#    ^^ meta.function.parameters.shell
#      ^ meta.function.shell
#       ^^^^^ meta.function.body.shell meta.block.shell
#^^^^ entity.name.function.shell
#   ^ punctuation.definition.quoted.end.shell
#    ^ punctuation.section.parameters.begin.shell
#     ^ punctuation.section.parameters.end.shell
#       ^ punctuation.section.block.begin.shell
#         ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#           ^ punctuation.section.block.end.shell

foo bar() { : }
# <- meta.function.identifier.shell entity.name.function.shell
#^^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^^^^ meta.function.body.shell meta.block.shell
#^^ entity.name.function.shell
#  ^ - entity
#   ^^^ entity.name.function.shell
#      ^ punctuation.section.parameters.begin.shell
#       ^ punctuation.section.parameters.end.shell
#         ^ punctuation.section.block.begin.shell
#           ^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#             ^ punctuation.section.block.end.shell

###############################################################################
# 9.1 Autoloading Functions                                                   #
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Autoloading-Functions #
###############################################################################

function -u func;
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function.shell
#          ^^^^^ meta.function.identifier.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ variable.parameter.option.shell
#           ^^^^ entity.name.function.shell

typeset -fu func;
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#       ^^^ variable.parameter.option.shell
#           ^^^^ entity.name.function.shell

autoload +X
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^ meta.function-call.identifier.shell support.function.shell
#       ^^^ meta.function-call.arguments.shell
#        ^^ variable.parameter.option.shell

fpath=(~/myfuncs $fpath)
autoload myfunc1 myfunc2
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^ meta.function-call.identifier.shell support.function.shell
#       ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#        ^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                ^^^^^^^ meta.string.glob.shell string.unquoted.shell

autoload /path/to/func
#^^^^^^^ meta.function-call.identifier.shell support.function.shell
#       ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#        ^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell

autoload $dir/*/*~*.zwc(#q.N:t)
#^^^^^^^ meta.function-call.identifier.shell support.function.shell
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#        ^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#        ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^ punctuation.definition.variable.shell
#            ^^^^^^^^^^ string.unquoted.shell
#             ^ constant.other.wildcard.asterisk.shell
#               ^ constant.other.wildcard.asterisk.shell
#                ^ keyword.operator.logical.regexp.shell.zsh
#                 ^ constant.other.wildcard.asterisk.shell
#                      ^^^^^^^^ meta.modifier.glob.shell.zsh
#                      ^^ punctuation.definition.modifier.begin.shell.zsh
#                        ^ storage.modifier.mode.glob.shell.zsh
#                         ^^ storage.modifier.glob.shell.zsh
#                           ^ punctuation.separator.sequence.shell.zsh
#                            ^ storage.modifier.glob.shell.zsh
#                             ^ punctuation.definition.modifier.end.shell.zsh

###############################################################################
# 9.2 Anonymous Functions                                                     #
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Anonymous-Functions   #
###############################################################################

   ()
#^^ - meta.function-call - meta.function
#  ^^ meta.function-call.shell meta.function.anonymous.parameters.shell
#    ^ meta.function-call.shell meta.function.anonymous.shell

   ()
   {}
# ^^^ meta.function-call.shell
# ^ meta.function.anonymous.shell - meta.block
#  ^^ meta.function.anonymous.body.shell meta.block.shell
#    ^ - meta.function
#  ^ punctuation.section.block.begin.shell
#   ^ punctuation.section.block.end.shell

   () \
   {}
# ^^^ meta.function-call.shell
# ^ meta.function.anonymous.shell - meta.block
#  ^^ meta.function.anonymous.body.shell meta.block.shell
#    ^ - meta.function
#  ^ punctuation.section.block.begin.shell
#   ^ punctuation.section.block.end.shell

  () ; {
# ^^^^^^^ meta.function-call.shell
# ^^ meta.function.anonymous.parameters.shell
#   ^^^ meta.function.anonymous.shell
#      ^^ meta.function.anonymous.body.shell meta.block.shell
# ^ punctuation.section.parameters.begin.shell
#  ^ punctuation.section.parameters.end.shell
#    ^ punctuation.terminator.statement.shell
#      ^ punctuation.section.block.begin.shell
  local variable=inside
# ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell meta.declaration.variable.shell
  print "I am $variable with arguments $*"
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell
} this and that
# <- meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell punctuation.section.block.end.shell
#^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^ meta.string.glob.shell string.unquoted.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#          ^^^^ meta.string.glob.shell string.unquoted.shell

function {} arg
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^ meta.function.anonymous.shell
#        ^^ meta.function.anonymous.body.shell meta.block.shell
#          ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.section.block.begin.shell
#         ^ punctuation.section.block.end.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell

function -U {} arg
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^^^^ meta.function.anonymous.shell
#           ^^ meta.function.anonymous.body.shell meta.block.shell
#             ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ variable.parameter.option.shell
#           ^ punctuation.section.block.begin.shell
#            ^ punctuation.section.block.end.shell
#              ^^^ meta.string.glob.shell string.unquoted.shell

function -T { : }
#^^^^^^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^^^^ meta.function.anonymous.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^ punctuation.definition.parameter.shell
#           ^^^^^ meta.function.anonymous.body.shell meta.block.shell
#           ^ punctuation.section.block.begin.shell
#               ^ punctuation.section.block.end.shell

function -T () { : }
#^^^^^^^^^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^^^^ meta.function.anonymous.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^ punctuation.definition.parameter.shell
#           ^^ meta.function.anonymous.parameters.shell
#           ^ punctuation.section.parameters.begin.shell
#            ^ punctuation.section.parameters.end.shell
#             ^ meta.function.anonymous.shell
#              ^^^^^ meta.function.anonymous.body.shell meta.block.shell
#              ^ punctuation.section.block.begin.shell
#                  ^ punctuation.section.block.end.shell

function ; {} arg
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^^^ meta.function.anonymous.shell
#          ^^ meta.function.anonymous.body.shell meta.block.shell
#            ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.terminator.statement.shell
#          ^ punctuation.section.block.begin.shell
#           ^ punctuation.section.block.end.shell
#             ^^^ meta.string.glob.shell string.unquoted.shell

function () {} arg
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^ meta.function.anonymous.shell
#        ^^ meta.function.anonymous.parameters.shell
#          ^ meta.function.anonymous.shell
#           ^^ meta.function.anonymous.body.shell meta.block.shell
#             ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.section.parameters.begin.shell
#         ^ punctuation.section.parameters.end.shell
#           ^ punctuation.section.block.begin.shell
#            ^ punctuation.section.block.end.shell
#              ^^^ meta.string.glob.shell string.unquoted.shell

function () ; {} arg
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^ meta.function.anonymous.shell
#        ^^ meta.function.anonymous.parameters.shell
#          ^^^ meta.function.anonymous.shell
#             ^^ meta.function.anonymous.body.shell meta.block.shell
#               ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.section.parameters.begin.shell
#         ^ punctuation.section.parameters.end.shell
#           ^ punctuation.terminator.statement.shell
#             ^ punctuation.section.block.begin.shell
#              ^ punctuation.section.block.end.shell
#                ^^^ meta.string.glob.shell string.unquoted.shell

function {
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function-call.shell meta.function.anonymous.shell - meta.block
#        ^^ meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.section.block.begin.shell
  local variable=inside
# ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell meta.declaration.variable.shell
  print "I am $variable with arguments $*"
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell meta.function-call
} this and that
# <- meta.function-call.shell meta.function.anonymous.body.shell meta.block.shell punctuation.section.block.end.shell
#^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^ meta.string.glob.shell string.unquoted.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#          ^^^^ meta.string.glob.shell string.unquoted.shell


###############################################################################
# 9.3 Special Functions                                                       #
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Special-Functions     #
###############################################################################

# 9.3.1 Hook Functions

  chpwd() {}
# ^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell

  periodic() {}
# ^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#         ^^ meta.function.parameters.shell
#           ^ meta.function.shell
#            ^^ meta.function.body.shell meta.block.shell

  precmd() {}
# ^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#       ^^ meta.function.parameters.shell
#         ^ meta.function.shell
#          ^^ meta.function.body.shell meta.block.shell

  preexec() {}
# ^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#        ^^ meta.function.parameters.shell
#          ^ meta.function.shell
#           ^^ meta.function.body.shell meta.block.shell

  zshaddhistory() {}
# ^^^^^^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#              ^^ meta.function.parameters.shell
#                ^ meta.function.shell
#                 ^^ meta.function.body.shell meta.block.shell

  zshexit() {}
# ^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#        ^^ meta.function.parameters.shell
#          ^ meta.function.shell
#           ^^ meta.function.body.shell meta.block.shell

# 9.3.2 Trap Functions

  TRAPDEBUG() {}    # ZSH specific trap
# ^^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#          ^^ meta.function.parameters.shell
#            ^ meta.function.shell
#             ^^ meta.function.body.shell meta.block.shell

  TRAPEXIT() {}     # ZSH specific trap
# ^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#         ^^ meta.function.parameters.shell
#           ^ meta.function.shell
#            ^^ meta.function.body.shell meta.block.shell

  TRAPINT() {}      # called if SIGINT is received
# ^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#        ^^ meta.function.parameters.shell
#          ^ meta.function.shell
#           ^^ meta.function.body.shell meta.block.shell

  TRAPTERM() {}     # called if SIGTERM is received
# ^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#         ^^ meta.function.parameters.shell
#           ^ meta.function.shell
#            ^^ meta.function.body.shell meta.block.shell

  TRAPRTMAX-1() {}  # called if SIGRTMAX-1 is received
# ^^^^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#            ^^ meta.function.parameters.shell
#              ^ meta.function.shell
#               ^^ meta.function.body.shell meta.block.shell

  TRAPRTMIN+1() {}  # called if SIGRTMIN+1 is received
# ^^^^^^^^^^^ meta.function.identifier.shell entity.name.function.shell support.function.shell.zsh
#            ^^ meta.function.parameters.shell
#              ^ meta.function.shell
#               ^^ meta.function.body.shell meta.block.shell


###############################################################################
# 11 Arithmetic Evaluation                                                    #
# https://zsh.sourceforge.io/Doc/Release/Arithmetic-Evaluation.html           #
###############################################################################

  let val = 1 + 2
# ^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
# ^^^ support.function.shell
#     ^^^ variable.other.readwrite.shell
#         ^ keyword.operator.assignment.shell
#           ^ constant.numeric.value.shell
#             ^ keyword.operator.arithmetic.shell
#               ^ constant.numeric.value.shell

  let 'val = 1 + 2'
# ^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
# ^^^ support.function.shell
#     ^ punctuation.definition.quoted.begin.shell
#      ^^^ variable.other.readwrite.shell
#          ^ keyword.operator.assignment.shell
#            ^ constant.numeric.value.shell
#              ^ keyword.operator.arithmetic.shell
#                ^ constant.numeric.value.shell
#                 ^ punctuation.definition.quoted.end.shell

  let "val = 1 + 2"
# ^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
# ^^^ support.function.shell
#     ^ punctuation.definition.quoted.begin.shell
#      ^^^ variable.other.readwrite.shell
#          ^ keyword.operator.assignment.shell
#            ^ constant.numeric.value.shell
#              ^ keyword.operator.arithmetic.shell
#                ^ constant.numeric.value.shell
#                 ^ punctuation.definition.quoted.end.shell

  (( val = 1. + 1.23 + 1.23e-10 ))  # floating point numbers
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
# ^^ punctuation.section.compound.begin.shell
#    ^^^ variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#          ^^ meta.number.float.decimal.shell.zsh constant.numeric.value.shell.zsh
#             ^ keyword.operator.arithmetic.shell
#               ^^^^ meta.number.float.decimal.shell.zsh constant.numeric.value.shell.zsh
#                    ^ keyword.operator.arithmetic.shell
#                      ^^^^^^^^ meta.number.float.decimal.shell.zsh constant.numeric.value.shell.zsh
#                               ^^ punctuation.section.compound.end.shell

  (( 123_24_32_ + _42234 ))
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
#    ^^^^^^^^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ keyword.operator.arithmetic.shell
#                 ^^^^^^ variable.other.readwrite.shell

  (( 3_162.277_660_168_379_5 ))  # numbers can contain underscores
#    ^^^^^^^^^^^^^^^^^^^^^^^ meta.number.float.decimal.shell.zsh constant.numeric.value.shell.zsh

  (( 0b10 0B11 2#10 ))
#    ^^ meta.number.integer.binary.shell constant.numeric.base.shell
#      ^^ meta.number.integer.binary.shell constant.numeric.value.shell
#         ^^ meta.number.integer.binary.shell constant.numeric.base.shell
#           ^^ meta.number.integer.binary.shell constant.numeric.value.shell
#              ^^ meta.number.integer.binary.shell.zsh constant.numeric.base.shell.zsh
#                ^^ meta.number.integer.binary.shell.zsh constant.numeric.value.shell.zsh

  (( 04723 8#4723 ))
#    ^ meta.number.integer.octal.shell constant.numeric.base.shell
#     ^^^^ meta.number.integer.octal.shell constant.numeric.value.shell
#          ^^ meta.number.integer.octal.shell constant.numeric.base.shell
#            ^^^^ meta.number.integer.octal.shell constant.numeric.value.shell

  (( 0x20 0X20 16#AF ))
#    ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#      ^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#         ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#           ^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#              ^^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#                 ^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell

  (( 2_4#234_2abd27 ))
#    ^^^^ meta.number.integer.other.shell constant.numeric.base.shell
#        ^^^^^^^^^^ meta.number.integer.other.shell constant.numeric.value.shell

  (( #var + ##chr ##c+hr ))
#    ^ keyword.operator.arithmetic.shell.zsh - variable
#     ^^^ variable.other.readwrite.shell - keyword
#           ^^ keyword.operator.arithmetic.shell.zsh - variable
#             ^ constant.other.character.shell.zsh - variable
#              ^^ variable.other.readwrite.shell - constant
#                 ^^ keyword.operator.arithmetic.shell.zsh - variable
#                   ^ constant.other.character.shell.zsh - variable
#                    ^ keyword.operator.arithmetic.shell
#                     ^^ variable.other.readwrite.shell - constant

  (( abs(1 - 5) + 3 ))  # arithmetic function calls
# ^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
#    ^^^ meta.function-call.identifier.shell.zsh
#       ^^^^^^^ meta.function-call.arguments.shell.zsh
# ^^ punctuation.section.compound.begin.shell
#    ^^^ variable.function.shell.zsh
#       ^ punctuation.section.arguments.begin.shell.zsh
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ keyword.operator.arithmetic.shell
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ punctuation.section.arguments.end.shell.zsh
#               ^ keyword.operator.arithmetic.shell
#                 ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^^ punctuation.section.compound.end.shell

  (( [#16_4] 65536 ** 2 ))
# ^^ meta.compound.arithmetic.shell punctuation.section.compound.begin.shell - meta.arithmetic
#   ^ meta.compound.arithmetic.shell meta.arithmetic.shell - meta.modifier
#    ^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell meta.modifier.base.shell.zsh
#           ^^^^^^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell - meta.modifier
#                       ^^ meta.compound.arithmetic.shell punctuation.section.compound.end.shell - meta.arithmetic
#    ^^ punctuation.definition.modifier.begin.shell.zsh
#      ^^^^ storage.modifier.mode.base.shell.zsh
#          ^ punctuation.definition.modifier.end.shell.zsh
#            ^^^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                  ^^ keyword.operator.arithmetic.shell
#                     ^ meta.number.integer.decimal.shell constant.numeric.value.shell

  (( [#$base] 65536 ** 2 ))
# ^^ meta.compound.arithmetic.shell punctuation.section.compound.begin.shell - meta.arithmetic
#   ^ meta.compound.arithmetic.shell meta.arithmetic.shell - meta.modifier
#    ^^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell meta.modifier.base.shell.zsh
#            ^^^^^^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell - meta.modifier
#                        ^^ meta.compound.arithmetic.shell punctuation.section.compound.end.shell - meta.arithmetic
#    ^^ punctuation.definition.modifier.begin.shell.zsh
#      ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#           ^ punctuation.definition.modifier.end.shell.zsh
#             ^^^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^^ keyword.operator.arithmetic.shell
#                      ^ meta.number.integer.decimal.shell constant.numeric.value.shell

: $(( val = 1 + 2 ))  # arithmetic expansions
# ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell
# ^ punctuation.definition.variable.shell
#  ^^ punctuation.section.interpolation.begin.shell
#     ^^^ variable.other.readwrite.shell
#         ^ keyword.operator.assignment.shell
#           ^ constant.numeric.value.shell
#             ^ keyword.operator.arithmetic.shell
#               ^ constant.numeric.value.shell
#                 ^^ punctuation.section.interpolation.end.shell

: ${val:start + 3:len % 5}  # arithmetic evaluation in substitutions
# ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - meta.arithmetic
#       ^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell meta.arithmetic.shell
#                ^ meta.string.glob.shell meta.interpolation.parameter.shell - meta.arithmetic
#                 ^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell meta.arithmetic.shell
#                        ^ meta.string.glob.shell meta.interpolation.parameter.shell - meta.arithmetic

: -target 20.10.2.4:8080 -port 80
#         ^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell

: -target=20.10.2.4:8080 -port=80
#         ^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell

ip=10.10.20.14
#  ^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell


###############################################################################
# 14.3 Parameter Expansion                                                    #
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Parameter-Expansion   #
###############################################################################

#  Special Parameters

: $* ${*} ${!*} ${#*} _$*_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^^^^ meta.string.glob.shell
#                     ^ string.unquoted.shell
#                      ^^ meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ string.unquoted.shell

: $@ ${@} ${!@} ${#@} _$@_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^^^^ meta.string.glob.shell
#                     ^ string.unquoted.shell
#                      ^^ meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ string.unquoted.shell

: $? ${?} ${!?} ${#?} _$?_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^^^^ meta.string.glob.shell
#                     ^ string.unquoted.shell
#                      ^^ meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ string.unquoted.shell

: $- ${-} ${!-} ${#-} _$-_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^^^^ meta.string.glob.shell
#                     ^ string.unquoted.shell
#                      ^^ meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ string.unquoted.shell

: $$ ${$} ${!$} ${#$} _$$_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^^^^ meta.string.glob.shell
#                     ^ string.unquoted.shell
#                      ^^ meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ string.unquoted.shell

: $! ${!} ${!!} ${#!} _$!_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^^^^ meta.string.glob.shell
#                     ^ string.unquoted.shell
#                      ^^ meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ string.unquoted.shell

# Expands to the number of positional parameters in decimal.
: $# ${#} ${!#} ${##} _$#_ _$#1_ _$#a_
# ^^ meta.interpolation.parameter.shell variable.language.special.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.special.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.special.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.special.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                          ^ meta.string.glob.shell string.unquoted.shell
#                           ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                             ^^ meta.string.glob.shell string.unquoted.shell
#                                ^ meta.string.glob.shell string.unquoted.shell
#                                 ^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell

# `#` is not a special variable, if followed by identifiers
: $#__ints {1..$#__hits}
# ^^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#  ^ keyword.operator.expansion.length.shell
#          ^^^^^^^^^^^^^ meta.interpolation.brace.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^^ keyword.operator.range.shell
#              ^^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#              ^ punctuation.definition.variable.shell
#               ^ keyword.operator.expansion.length.shell
#                      ^ punctuation.section.interpolation.end.shell

# User Parameter/Variable Expansions

: $var      # Substitute contents of var, no splitting
# ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#  ^^^ variable.other.readwrite.shell

: ${var}    # Substitute contents of var, no splitting
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell

: ${#var}   # Length of var in words (array) or bytes
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.length.shell
#    ^^^ variable.other.readwrite.shell
#       ^ punctuation.section.interpolation.end.shell

: ${+var}   # 1 if var is set, else 0 (ZSH only)
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.valid.shell
#    ^^^ variable.other.readwrite.shell
#       ^ punctuation.section.interpolation.end.shell

: ${=var}   # Split words of result like lesser shells (ZSH only)
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.split.shell
#    ^^^ variable.other.readwrite.shell
#       ^ punctuation.section.interpolation.end.shell

: ${==var}  # Turn off splitting words of result like lesser shells (ZSH only)
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^ keyword.operator.expansion.split.shell
#     ^^^ variable.other.readwrite.shell
#        ^ punctuation.section.interpolation.end.shell

: ${^var}   # Expand elements like brace expansion (ZSH only)
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.brace.shell
#    ^^^ variable.other.readwrite.shell
#       ^ punctuation.section.interpolation.end.shell

: ${^^var}  # Turn off expanding elements like brace expansion (ZSH only)
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^ keyword.operator.expansion.brace.shell
#     ^^^ variable.other.readwrite.shell
#        ^ punctuation.section.interpolation.end.shell

: ${~var}   # Allow globbing, file expansion on result (ZSH only)
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.glob.shell
#    ^^^ variable.other.readwrite.shell
#       ^ punctuation.section.interpolation.end.shell

: ${~~var}  # Disallow globbing, file expansion on result (ZSH only)
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^ keyword.operator.expansion.glob.shell
#     ^^^ variable.other.readwrite.shell
#        ^ punctuation.section.interpolation.end.shell

## Literal Flags

: ${(#)var}  # Evaluate the resulting words as numeric expressions and interpret these as character codes.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(%)var}  # Expand all % escapes in the resulting words in the same way as in prompts
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(@)var}  # In double quotes, array elements are put into separate words.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(A)var}  # Convert the substitution into an array expression, even if it otherwise would be scalar.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(a)var}  # Sort in array index order; when combined with ‘O’ sort in reverse array index order.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(b)var}  # Quote with backslashes only characters that are special to pattern matching
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(c)var}  # With ${#name}, count the total number of characters in an array
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(C)var}  # Capitalize the resulting words.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(D)var}  # Assume the string or array elements contain directories and attempt to substitute the leading part of these by names.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(e)var}  # Perform single word shell expansions, namely parameter expansion, command substitution and arithmetic expansion, on the result.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(f)var}  # Split the result of the expansion at newlines.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(F)var}  # Join the words of arrays together using newline as a separator
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(i)var}  # Sort case-insensitively. May be combined with ‘n’ or ‘O’.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(k)var}  # If name refers to an associative array, substitute the keys (element names) rather than the values of the elements.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(L)var}  # Convert all letters in the result to lower case.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(n)var}  # Sort decimal integers numerically
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(-)var}  # As n, but a leading minus sign indicates a negative decimal integer.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(o)var}  # Sort the resulting words in ascending order
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(O)var}  # Sort the resulting words in descending order
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(P)var}  # This forces the value of the parameter name to be interpreted as a further parameter name
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(q)var} ${(q-)foo} ${(q+)foo} # Quote characters that are special to the shell in the resulting words with backslashes
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
#           ^^ meta.interpolation.parameter.shell - meta.modifier
#             ^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                 ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                      ^^ meta.interpolation.parameter.shell - meta.modifier
#                        ^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                            ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell
#           ^ punctuation.definition.variable.shell
#            ^ punctuation.section.interpolation.begin.shell
#             ^ punctuation.definition.modifier.begin.shell.zsh
#              ^^ storage.modifier.expansion.flag.shell.zsh
#                ^ punctuation.definition.modifier.end.shell.zsh
#                 ^^^ variable.other.readwrite.shell
#                    ^ punctuation.section.interpolation.end.shell
#                      ^ punctuation.definition.variable.shell
#                       ^ punctuation.section.interpolation.begin.shell
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^^ storage.modifier.expansion.flag.shell.zsh
#                           ^ punctuation.definition.modifier.end.shell.zsh
#                            ^^^ variable.other.readwrite.shell
#                               ^ punctuation.section.interpolation.end.shell

: ${(Q)var}  # Remove one level of quotes from the resulting words.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(t)var}  # Use a string describing the type of the parameter where the value of the parameter would usually appear.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(u)var}  # Expand only the first occurrence of each unique word.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(U)var}  # Convert all letters in the result to upper case.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(v)var}  # Used with k, substitute (as two consecutive words) both the key and the value of each associative array element.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(V)var}  # Make any special characters in the resulting words visible.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(w)var}  # With ${#name}, count words in arrays or strings; the s flag may be used to set a word delimiter.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(W)var}  # Similar to w with the difference that empty words between repeated delimiters are also counted.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(X)var}  # With this flag, parsing errors occurring with the Q, e and # flags or the pattern matching forms such as ‘${name#pattern}’ are reported.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(z)var}  # Split the result of the expansion into words using shell parsing to find the words
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(0)var}  # Split the result of the expansion on null bytes. This is a shorthand for ‘ps:\0:’.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(~)var}  #
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(j<:>)var} ${(j{:})var} ${(j[:])var} ${(j(:))var} ${(j.:.)var}  # Join the words of arrays together using string as a separator.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#         ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^ string.quoted.other.shell.zsh
#       ^ punctuation.definition.quoted.end.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh
#         ^^^ variable.other.readwrite.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta.interpolation
#              ^^ meta.interpolation.parameter.shell - meta.modifier
#                ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                      ^^^^ meta.interpolation.parameter.shell - meta.modifier
#              ^ punctuation.definition.variable.shell
#               ^ punctuation.section.interpolation.begin.shell
#                ^ punctuation.definition.modifier.begin.shell.zsh
#                 ^ storage.modifier.expansion.flag.shell.zsh
#                  ^ punctuation.definition.quoted.begin.shell.zsh
#                   ^ string.quoted.other.shell.zsh
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                      ^^^ variable.other.readwrite.shell
#                         ^ punctuation.section.interpolation.end.shell
#                          ^ - meta.interpolation
#                           ^^ meta.interpolation.parameter.shell - meta.modifier
#                             ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                                   ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                           ^ punctuation.definition.variable.shell
#                            ^ punctuation.section.interpolation.begin.shell
#                             ^ punctuation.definition.modifier.begin.shell.zsh
#                              ^ storage.modifier.expansion.flag.shell.zsh
#                               ^ punctuation.definition.quoted.begin.shell.zsh
#                                ^ string.quoted.other.shell.zsh
#                                 ^ punctuation.definition.quoted.end.shell.zsh
#                                  ^ punctuation.definition.modifier.end.shell.zsh
#                                   ^^^ variable.other.readwrite.shell
#                                      ^ punctuation.section.interpolation.end.shell
#                                       ^ - meta.interpolation
#                                        ^^ meta.interpolation.parameter.shell - meta.modifier
#                                          ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                                                ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                                        ^ punctuation.definition.variable.shell
#                                         ^ punctuation.section.interpolation.begin.shell
#                                          ^ punctuation.definition.modifier.begin.shell.zsh
#                                           ^ storage.modifier.expansion.flag.shell.zsh
#                                            ^ punctuation.definition.quoted.begin.shell.zsh
#                                             ^ string.quoted.other.shell.zsh
#                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                               ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^^ variable.other.readwrite.shell
#                                                   ^ punctuation.section.interpolation.end.shell
#                                                    ^ - meta.interpolation
#                                                     ^^ meta.interpolation.parameter.shell - meta.modifier
#                                                       ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                                                             ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                                                     ^ punctuation.definition.variable.shell
#                                                      ^ punctuation.section.interpolation.begin.shell
#                                                       ^ punctuation.definition.modifier.begin.shell.zsh
#                                                        ^ storage.modifier.expansion.flag.shell.zsh
#                                                         ^ punctuation.definition.quoted.begin.shell.zsh
#                                                          ^ string.quoted.other.shell.zsh
#                                                           ^ punctuation.definition.quoted.end.shell.zsh
#                                                            ^ punctuation.definition.modifier.end.shell.zsh
#                                                             ^^^ variable.other.readwrite.shell
#                                                                ^ punctuation.section.interpolation.end.shell
#                                                                 ^ - meta.interpolation

# Note: flags are literals (variable expansion is NOT performed)
# see: https://github.com/sublimehq/Packages/issues/4244
: ${(j<$j>)arr} ${(j<$(ls)>)arr} ${(j<${>)arr}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^^^^^ meta.modifier.expansion.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^^^^ meta.quoted.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^ string.quoted.other.shell.zsh
#        ^ punctuation.definition.quoted.end.shell.zsh
#         ^ punctuation.definition.modifier.end.shell.zsh
#          ^^^ variable.other.readwrite.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#                 ^ punctuation.definition.modifier.begin.shell.zsh
#                  ^ storage.modifier.expansion.flag.shell.zsh
#                   ^^^^^^^ meta.quoted.glob.shell.zsh
#                   ^ punctuation.definition.quoted.begin.shell.zsh
#                    ^^^^^ string.quoted.other.shell.zsh
#                         ^ punctuation.definition.quoted.end.shell.zsh
#                          ^ punctuation.definition.modifier.end.shell.zsh
#                           ^^^ variable.other.readwrite.shell
#                              ^ punctuation.section.interpolation.end.shell
#                                ^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                                ^ punctuation.definition.variable.shell
#                                 ^ punctuation.section.interpolation.begin.shell
#                                  ^^^^^^^ meta.modifier.expansion.shell.zsh
#                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                   ^ storage.modifier.expansion.flag.shell.zsh
#                                    ^^^^ meta.quoted.glob.shell.zsh
#                                    ^ punctuation.definition.quoted.begin.shell.zsh
#                                     ^^ string.quoted.other.shell.zsh
#                                       ^ punctuation.definition.quoted.end.shell.zsh
#                                        ^ punctuation.definition.modifier.end.shell.zsh
#                                         ^^^ variable.other.readwrite.shell
#                                            ^ punctuation.section.interpolation.end.shell

# Note: Quotation marks must be balanced though
: ${(j<"\$j\"">)arr} ${(j<'\$j'>)arr}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^^^^^^^^^ meta.quoted.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^^^^ string.quoted.other.shell.zsh
#      ^ punctuation.definition.quoted.begin.shell.zsh
#       ^^ constant.character.escape.shell
#          ^^ constant.character.escape.shell
#            ^ punctuation.definition.quoted.end.shell.zsh
#             ^ punctuation.definition.quoted.end.shell.zsh
#              ^ punctuation.definition.modifier.end.shell.zsh
#               ^^^ variable.other.readwrite.shell
#                  ^ punctuation.section.interpolation.end.shell
#                    ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                    ^ punctuation.definition.variable.shell
#                     ^ punctuation.section.interpolation.begin.shell
#                      ^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#                      ^ punctuation.definition.modifier.begin.shell.zsh
#                       ^ storage.modifier.expansion.flag.shell.zsh
#                        ^^^^^^^ meta.quoted.glob.shell.zsh
#                        ^ punctuation.definition.quoted.begin.shell.zsh
#                         ^^^^^ string.quoted.other.shell.zsh
#                         ^ punctuation.definition.quoted.begin.shell.zsh
#                             ^ punctuation.definition.quoted.end.shell.zsh
#                              ^ punctuation.definition.quoted.end.shell.zsh
#                               ^ punctuation.definition.modifier.end.shell.zsh
#                                ^^^ variable.other.readwrite.shell
#                                   ^ punctuation.section.interpolation.end.shell

: ${(j<"\$j\">)arr} ${(j<'\$j">)arr}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.shell.zsh
#      ^ punctuation.definition.quoted.begin.shell.zsh
#       ^^ constant.character.escape.shell
#          ^^ constant.character.escape.shell
#                         ^^ constant.character.escape.shell
#                            ^ punctuation.definition.quoted.end.shell.zsh
#                             ^ punctuation.definition.quoted.end.shell.zsh
#                              ^ punctuation.definition.modifier.end.shell.zsh
#                               ^^^ variable.other.readwrite.shell
#                                  ^ punctuation.section.interpolation.end.shell

: ${(l:expr::string1::string2:)var}
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.modifier.expansion.shell.zsh meta.string
#     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh meta.quoted.glob.shell.zsh
#                             ^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.modifier.expansion.shell.zsh meta.string
#                              ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#      ^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.end.shell.zsh
#           ^ punctuation.definition.quoted.begin.shell.zsh
#            ^^^^^^^ string.quoted.other.shell.zsh
#                   ^ punctuation.definition.quoted.end.shell.zsh
#                    ^ punctuation.definition.quoted.begin.shell.zsh
#                     ^^^^^^^ string.quoted.other.shell.zsh
#                            ^ punctuation.definition.quoted.end.shell.zsh
#                             ^ punctuation.definition.modifier.end.shell.zsh
#                              ^^^ variable.other.readwrite.shell
#                                 ^ punctuation.section.interpolation.end.shell

: ${(m)var}  # Only useful together with one of the flags l or r or with the # length operator
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(r:expr:)var} ${(r<expr>)var}
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#            ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.end.shell.zsh
#           ^ punctuation.definition.modifier.end.shell.zsh
#            ^^^ variable.other.readwrite.shell
#               ^ punctuation.section.interpolation.end.shell
#                 ^^ meta.interpolation.parameter.shell - meta.modifier
#                   ^^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                            ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                 ^ punctuation.definition.variable.shell
#                  ^ punctuation.section.interpolation.begin.shell
#                   ^ punctuation.definition.modifier.begin.shell.zsh
#                    ^ storage.modifier.expansion.flag.shell.zsh
#                     ^ punctuation.definition.quoted.begin.shell.zsh
#                      ^^^^ variable.other.readwrite.shell
#                          ^ punctuation.definition.quoted.end.shell.zsh
#                           ^ punctuation.definition.modifier.end.shell.zsh
#                            ^^^ variable.other.readwrite.shell
#                               ^ punctuation.section.interpolation.end.shell

: ${(r:expr::string1:)var}
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                     ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.end.shell.zsh
#           ^^^^^^^^^ meta.quoted.glob.shell.zsh
#           ^ punctuation.definition.quoted.begin.shell.zsh
#            ^^^^^^^ string.quoted.other.shell.zsh
#                   ^ punctuation.definition.quoted.end.shell.zsh
#                    ^ punctuation.definition.modifier.end.shell.zsh
#                     ^^^ variable.other.readwrite.shell
#                        ^ punctuation.section.interpolation.end.shell

: ${(r:expr::string1::string2:)var}
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                              ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.end.shell.zsh
#           ^^^^^^^^^^^^^^^^^^ meta.quoted.glob.shell.zsh
#           ^ punctuation.definition.quoted.begin.shell.zsh
#            ^^^^^^^ string.quoted.other.shell.zsh
#                   ^ punctuation.definition.quoted.end.shell.zsh
#                    ^ punctuation.definition.quoted.begin.shell.zsh
#                     ^^^^^^^ string.quoted.other.shell.zsh
#                            ^ punctuation.definition.quoted.end.shell.zsh
#                             ^ punctuation.definition.modifier.end.shell.zsh
#                              ^^^ variable.other.readwrite.shell
#                                 ^ punctuation.section.interpolation.end.shell

: ${(s.:.)var} ${(s:del$im:)var}  # Force field splitting at the separator string.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.quoted.glob
#     ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh meta.quoted.glob.shell.zsh
#        ^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.quoted.glob
#         ^^^^ meta.interpolation.parameter.shell - meta.modifier
#             ^ - meta.interpolation
#              ^^ meta.interpolation.parameter.shell - meta.modifier.expansion
#                ^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.quoted.glob
#                  ^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh meta.quoted.glob.shell.zsh
#                          ^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.quoted.glob
#                           ^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell - meta.modifier.expansion
#                               ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^ string.quoted.other.shell.zsh
#       ^ punctuation.definition.quoted.end.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh
#         ^^^ variable.other.readwrite.shell
#            ^ punctuation.section.interpolation.end.shell
#              ^ punctuation.definition.variable.shell
#               ^ punctuation.section.interpolation.begin.shell
#                ^ punctuation.definition.modifier.begin.shell.zsh
#                 ^ storage.modifier.expansion.flag.shell.zsh
#                  ^ punctuation.definition.quoted.begin.shell.zsh
#                   ^^^^^^ string.quoted.other.shell.zsh - variable
#                         ^ punctuation.definition.quoted.end.shell.zsh
#                          ^ punctuation.definition.modifier.end.shell.zsh
#                           ^^^ variable.other.readwrite.shell
#                              ^ punctuation.section.interpolation.end.shell

: ${(Z+c+)var} ${(Z+C+)var} ${(Z+n+)var} ${(Z+Cn+)var} ${(Z+$opt+)var}  # As z but takes a combination of option letters between a following pair of delimiter characters.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#         ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^ string.quoted.other.shell.zsh
#       ^ punctuation.definition.quoted.end.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh
#         ^^^ variable.other.readwrite.shell
#            ^ punctuation.section.interpolation.end.shell
#              ^^ meta.interpolation.parameter.shell - meta.modifier
#                ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                      ^^^^ meta.interpolation.parameter.shell - meta.modifier
#              ^ punctuation.definition.variable.shell
#               ^ punctuation.section.interpolation.begin.shell
#                ^ punctuation.definition.modifier.begin.shell.zsh
#                 ^ storage.modifier.expansion.flag.shell.zsh
#                  ^ punctuation.definition.quoted.begin.shell.zsh
#                   ^ string.quoted.other.shell.zsh
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                      ^^^ variable.other.readwrite.shell
#                         ^ punctuation.section.interpolation.end.shell
#                           ^^ meta.interpolation.parameter.shell - meta.modifier
#                             ^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                                   ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                           ^ punctuation.definition.variable.shell
#                            ^ punctuation.section.interpolation.begin.shell
#                             ^ punctuation.definition.modifier.begin.shell.zsh
#                              ^ storage.modifier.expansion.flag.shell.zsh
#                               ^ punctuation.definition.quoted.begin.shell.zsh
#                                ^ string.quoted.other.shell.zsh
#                                 ^ punctuation.definition.quoted.end.shell.zsh
#                                  ^ punctuation.definition.modifier.end.shell.zsh
#                                   ^^^ variable.other.readwrite.shell
#                                      ^ punctuation.section.interpolation.end.shell
#                                        ^^ meta.interpolation.parameter.shell - meta.modifier
#                                          ^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                                                 ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                                        ^ punctuation.definition.variable.shell
#                                         ^ punctuation.section.interpolation.begin.shell
#                                          ^ punctuation.definition.modifier.begin.shell.zsh
#                                           ^ storage.modifier.expansion.flag.shell.zsh
#                                            ^ punctuation.definition.quoted.begin.shell.zsh
#                                             ^^ string.quoted.other.shell.zsh
#                                               ^ punctuation.definition.quoted.end.shell.zsh
#                                                ^ punctuation.definition.modifier.end.shell.zsh
#                                                 ^^^ variable.other.readwrite.shell
#                                                    ^ punctuation.section.interpolation.end.shell
#                                                      ^^ meta.interpolation.parameter.shell - meta.modifier
#                                                        ^^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.interpolation meta.interpolation
#                                                                 ^^^^ meta.interpolation.parameter.shell - meta.modifier
#                                                      ^ punctuation.definition.variable.shell
#                                                       ^ punctuation.section.interpolation.begin.shell
#                                                        ^ punctuation.definition.modifier.begin.shell.zsh
#                                                         ^ storage.modifier.expansion.flag.shell.zsh
#                                                          ^ punctuation.definition.quoted.begin.shell.zsh
#                                                           ^^^^ string.quoted.other.shell.zsh
#                                                               ^ punctuation.definition.quoted.end.shell.zsh
#                                                                ^ punctuation.definition.modifier.end.shell.zsh
#                                                                 ^^^ variable.other.readwrite.shell
#                                                                    ^ punctuation.section.interpolation.end.shell

: ${(_:expr:)var}  # The underscore (_) flag is reserved for future use.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^^^^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#            ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^^^^^^ meta.quoted.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^ string.quoted.other.shell.zsh
#          ^ punctuation.definition.quoted.end.shell.zsh
#           ^ punctuation.definition.modifier.end.shell.zsh
#            ^^^ variable.other.readwrite.shell
#               ^ punctuation.section.interpolation.end.shell

: ${(S)var}  # Search for the match that starts closest to the start of the string
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(I:expr:)var}  # Search the `expr`th match (where `expr`` evaluates to a number).
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.arithmetic
#      ^^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh meta.arithmetic.shell
#          ^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh - meta.arithmetic
#            ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.end.shell.zsh
#           ^ punctuation.definition.modifier.end.shell.zsh
#            ^^^ variable.other.readwrite.shell
#               ^ punctuation.section.interpolation.end.shell

: ${(*)var}  # Enable EXTENDED_GLOB for substitution via ${.../...} or ${...//...}.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(B)var}  # Include the index of the beginning of the match in the result.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(E)var}  # Include the index one character past the end of the match in the result (note this is inconsistent with other uses of parameter index).
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(M)var}  # Include the matched portion in the result.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(N)var}  # Include the length of the match in the result.
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(R)var}  # Include the unmatched portion in the result (the Rest).
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell

: ${(#)#var}  # Flags can be combined with leading operators
# ^^ meta.interpolation.parameter.shell - meta.modifier
#   ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#      ^^^^^ meta.interpolation.parameter.shell - meta.modifier
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.expansion.flag.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#      ^ keyword.operator.expansion.length.shell
#       ^^^ variable.other.readwrite.shell
#          ^ punctuation.section.interpolation.end.shell

## Interpolated Flags

: ${(pj<$sep>)arr} ${(pj<str_$sep>)arr} ${(pj<st"r_$sep">)arr} ${(pj<st'r_$sep'>)arr}
# ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^^ storage.modifier.expansion.flag.shell.zsh
#      ^^^^^^ meta.quoted.glob.shell.zsh
#      ^ punctuation.definition.quoted.begin.shell.zsh
#       ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell - string
#       ^ punctuation.definition.variable.shell
#           ^ punctuation.definition.quoted.end.shell.zsh
#            ^ punctuation.definition.modifier.end.shell.zsh
#             ^^^ variable.other.readwrite.shell
#                ^ punctuation.section.interpolation.end.shell
#                  ^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                  ^ punctuation.definition.variable.shell
#                   ^ punctuation.section.interpolation.begin.shell
#                    ^^^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#                    ^ punctuation.definition.modifier.begin.shell.zsh
#                     ^^ storage.modifier.expansion.flag.shell.zsh
#                       ^^^^^^^^^^ meta.quoted.glob.shell.zsh
#                       ^ punctuation.definition.quoted.begin.shell.zsh
#                        ^^^^ string.quoted.other.shell.zsh
#                            ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell - string
#                            ^ punctuation.definition.variable.shell
#                                ^ punctuation.definition.quoted.end.shell.zsh
#                                 ^ punctuation.definition.modifier.end.shell.zsh
#                                  ^^^ variable.other.readwrite.shell
#                                     ^ punctuation.section.interpolation.end.shell
#                                       ^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                                       ^ punctuation.definition.variable.shell
#                                        ^ punctuation.section.interpolation.begin.shell
#                                         ^^^^^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#                                         ^ punctuation.definition.modifier.begin.shell.zsh
#                                          ^^ storage.modifier.expansion.flag.shell.zsh
#                                            ^^^^^^^^^^^^ meta.quoted.glob.shell.zsh
#                                            ^ punctuation.definition.quoted.begin.shell.zsh
#                                             ^^^^^ string.quoted.other.shell.zsh
#                                               ^ punctuation.definition.quoted.begin.shell.zsh
#                                                  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell - string
#                                                  ^ punctuation.definition.variable.shell
#                                                      ^ string.quoted.other.shell.zsh punctuation.definition.quoted.end.shell.zsh
#                                                       ^ punctuation.definition.quoted.end.shell.zsh
#                                                        ^ punctuation.definition.modifier.end.shell.zsh
#                                                         ^^^ variable.other.readwrite.shell
#                                                            ^ punctuation.section.interpolation.end.shell
#                                                              ^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                                                              ^ punctuation.definition.variable.shell
#                                                               ^ punctuation.section.interpolation.begin.shell
#                                                                ^^^^^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#                                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                                 ^^ storage.modifier.expansion.flag.shell.zsh
#                                                                   ^^^^^^^^^^^^ meta.quoted.glob.shell.zsh
#                                                                   ^ punctuation.definition.quoted.begin.shell.zsh
#                                                                    ^^^^^^^^^^ string.quoted.other.shell.zsh - variable
#                                                                      ^ punctuation.definition.quoted.begin.shell.zsh
#                                                                             ^ punctuation.definition.quoted.end.shell.zsh
#                                                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                                                               ^ punctuation.definition.modifier.end.shell.zsh
#                                                                                ^^^ variable.other.readwrite.shell
#                                                                                   ^ punctuation.section.interpolation.end.shell

: ${(ps:del$im:)var}  # Force field splitting at the separator string.
# ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^^ storage.modifier.expansion.flag.shell.zsh
#      ^^^^^^^^ meta.quoted.glob.shell.zsh
#      ^ punctuation.definition.quoted.begin.shell.zsh
#       ^^^ string.quoted.other.shell.zsh - variable
#          ^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell - string
#          ^ punctuation.definition.variable.shell
#             ^ punctuation.definition.quoted.end.shell.zsh
#              ^ punctuation.definition.modifier.end.shell.zsh
#               ^^^ variable.other.readwrite.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${(pZ+$opt+)var}  # As z but takes a combination of option letters between a following pair of delimiter characters.
# ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^^^^^^^^ meta.modifier.expansion.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^^ storage.modifier.expansion.flag.shell.zsh
#      ^^^^^^ meta.quoted.glob.shell.zsh
#      ^ punctuation.definition.quoted.begin.shell.zsh
#       ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^ punctuation.definition.variable.shell
#           ^ punctuation.definition.quoted.end.shell.zsh
#            ^ punctuation.definition.modifier.end.shell.zsh
#             ^^^ variable.other.readwrite.shell
#                ^ punctuation.section.interpolation.end.shell

## Operators

: ${var:-str}    # $var if non-null, else str
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${var-str}     # $var if set (even if null) else str
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#       ^^^ string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell

: ${var:=str}    # $var if non-null, else str and set var to it
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${var::=str}   # Same but always use str
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ keyword.operator.assignment.shell
#         ^^^ string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell

: ${var:?str}    # $var if non-null else error, abort
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell


: ${var:+str}    # str if $var is non-null
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${var#pat}     # min match of pat removed from head
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#       ^^^ meta.string.regexp.shell
#          ^ punctuation.section.interpolation.end.shell

: ${var##pat}    # max match of pat removed from head
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^ meta.string.regexp.shell
#           ^ punctuation.section.interpolation.end.shell

: ${var%pat}     # min match of pat removed from tail
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#       ^^^ meta.string.regexp.shell
#          ^ punctuation.section.interpolation.end.shell

: ${var%%pat}    # max match of pat removed from tail
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^ meta.string.regexp.shell
#           ^ punctuation.section.interpolation.end.shell

: ${var:#pat}    # $var unless pat matches, then empty
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${var/p/r}     # One occurrence of p replaced by r
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ meta.string.regexp.shell string.unquoted.shell
#        ^ keyword.operator.substitution.shell
#         ^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell

: ${var//p/r}    # All occurrences of p replaced by r
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#        ^ meta.string.regexp.shell string.unquoted.shell
#         ^ keyword.operator.substitution.shell
#          ^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${${var%p}#q}  # Apply %p then #q to $var
# ^^ meta.interpolation.parameter.shell
#   ^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell
#           ^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.variable.shell
#    ^ punctuation.section.interpolation.begin.shell
#     ^^^ variable.other.readwrite.shell
#        ^ keyword.operator.expansion.shell
#         ^ meta.string.regexp.shell string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell
#           ^ keyword.operator.expansion.shell
#            ^ meta.string.regexp.shell string.unquoted.shell
#             ^ punctuation.section.interpolation.end.shell

################################
# ${parameter/pattern/word}

: ${@/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${*/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${#/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${?/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${$/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${-/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${!/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${_/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.substitution.shell
#     ^^^ meta.string.regexp.shell
#        ^ keyword.operator.substitution.shell
#         ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.interpolation.end.shell
#             ^ - meta

: ${foo/bar/baz}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^^^ meta.string.regexp.shell
#          ^ keyword.operator.substitution.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell
#              ^ punctuation.section.interpolation.end.shell
#               ^ - meta

: ${foo@/bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell
#           ^ keyword.operator.substitution.shell
#            ^^^ meta.string.glob.shell string.unquoted.shell
#               ^ punctuation.section.interpolation.end.shell
#                ^ - meta

: ${foo*/bar/baz}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell
#           ^ keyword.operator.substitution.shell
#            ^^^ meta.string.glob.shell string.unquoted.shell
#               ^ punctuation.section.interpolation.end.shell
#                ^ - meta

: ${foo[@]/bar/baz}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.substitution.shell
#          ^^^ meta.string.regexp.shell
#             ^ keyword.operator.substitution.shell
#              ^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ - meta

: ${foo[*]/bar/baz}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.substitution.shell
#          ^^^ meta.string.regexp.shell
#             ^ keyword.operator.substitution.shell
#              ^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ - meta

# pattern switches

: ${foo/#bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo/%bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo//bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo//@/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword - variable
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//*/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ constant.other.wildcard.asterisk.shell
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//#/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ keyword.operator.quantifier.regexp.shell.zsh
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//?/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ constant.other.wildcard.questionmark.shell
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//-/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword - variable
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//!/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword - variable
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//_/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword - variable
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//%/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword - variable
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//:/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#           ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo//a\/b/c/d}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#                 ^ - meta.interpolation
#      ^^ keyword.operator.substitution.shell
#         ^^ constant.character.escape
#            ^ keyword.operator.substitution.shell
#              ^ - keyword.operator
#                ^ punctuation.section.interpolation.end.shell

: ${foo//\
a\/b/c/d}
# <- meta.interpolation.parameter.shell meta.string.regexp.shell
#^^^ meta.interpolation.parameter.shell meta.string.regexp.shell
#   ^ meta.interpolation.parameter.shell - meta.interpolation.parameter.shell meta.string
#    ^^^ meta.interpolation.parameter.shell meta.string.shell
#       ^ meta.interpolation.parameter.shell - meta.interpolation.parameter.shell meta.string
#^^ constant.character.escape.shell
#   ^ keyword.operator.substitution.shell
#     ^ - keyword
#       ^ punctuation.section.interpolation.end.shell

# expansion termination within patterns or words

: ${foo//}/foo}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^^^^^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo//\}/foo}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.substitution.shell
#        ^^ constant.character.escape.shell
#          ^ keyword.operator.substitution.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo//:/[}]
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#          ^^^ - meta.string.regexp - meta.set
#            ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#         ^ keyword.operator.substitution.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo//:/[\}]}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#               ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#         ^ keyword.operator.substitution.shell
#          ^^^^ - meta.string.regexp - meta.set - punctuation
#           ^^ constant.character.escape.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo//[a-/\}} # incomplete charset
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#               ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#        ^^^ - meta.set - punctuation
#           ^ keyword.operator.substitution.shell
#            ^^ constant.character.escape.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo//+([a-:/\}} # incomplete charset in incomplete group
# ^^^^^^^^ meta.interpolation.parameter.shell - meta.group
#         ^^^^^^^^ meta.interpolation.parameter.shell meta.group.regexp.shell
#                 ^ meta.interpolation.parameter.shell - meta.group
#                  ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword.operator
#         ^ punctuation.section.group.begin.regexp.shell
#          ^^^^^ - constant - punctuation
#               ^^ constant.character.escape.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo//+([a|&)/\}} # incomplete charset in group
# ^^^^^^^^ meta.interpolation.parameter.shell - meta.group
#         ^^^^^^ meta.interpolation.parameter.shell meta.group.regexp.shell
#               ^^^^ meta.interpolation.parameter.shell - meta.group
#                   ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.substitution.shell
#        ^ - keyword.operator
#         ^ punctuation.section.group.begin.regexp.shell
#          ^^^^ - constant - punctuation
#            ^ keyword.operator.alternation.regexp.shell
#              ^ punctuation.section.group.end.regexp.shell
#               ^ keyword.operator.substitution.shell
#                ^^ constant.character.escape.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo//[abc[]/x}  # `[` has no meaning within charsets
# ^^^^^^^ meta.interpolation.parameter.shell - meta.string meta.set
#        ^^^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell meta.set.regexp.shell
#              ^^^ meta.interpolation.parameter.shell - meta.string meta.set
#      ^^ keyword.operator.substitution.shell
#        ^ punctuation.definition.set.begin.regexp.shell
#            ^ - keyword - punctuation
#             ^ punctuation.definition.set.end.regexp.shell
#              ^ keyword.operator.substitution.shell
#                ^ punctuation.section.interpolation.end.shell

: ${var//f|o/b|ar}  # `|` has no meaning in patterns or replacement strings
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell string.unquoted.shell - keyword - punctuation
#           ^ keyword.operator.substitution.shell
#            ^^^^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation
#                ^ punctuation.section.interpolation.end.shell

: ${var//f&o/b&ar}  # `&` has no meaning in patterns or replacement strings
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell string.unquoted.shell - keyword - punctuation
#           ^ keyword.operator.substitution.shell
#            ^^^^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation
#                ^ punctuation.section.interpolation.end.shell

: ${var//f>o/b>ar}  # `>` has no meaning in patterns or replacement strings
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell string.unquoted.shell - keyword - punctuation
#           ^ keyword.operator.substitution.shell
#            ^^^^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation
#                ^ punctuation.section.interpolation.end.shell

: ${var//f<o/b<ar}  # `<` has no meaning in patterns or replacement strings
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell string.unquoted.shell - keyword - punctuation
#           ^ keyword.operator.substitution.shell
#            ^^^^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation
#                ^ punctuation.section.interpolation.end.shell

: ${var//f;o/b;ar}  # `;` has no meaning in patterns or replacement strings
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.substitution.shell
#        ^^^ meta.string.regexp.shell string.unquoted.shell - keyword - punctuation
#           ^ keyword.operator.substitution.shell
#            ^^^^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation
#                ^ punctuation.section.interpolation.end.shell

# tilde expansion in pattern

: ${foo/~/}
# ^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ meta.string.regexp.shell variable.language.tilde.shell
#        ^ keyword.operator.substitution.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo/~\/}   # note: bash replaces `~\/` literal, zsh expanded
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#        ^^ constant.character.escape.shell - meta.interpolation.tilde
#          ^ punctuation.section.interpolation.end.shell

: ${foo/~\/**\//repl}   # note: bash replaces `~\/` literal, zsh expanded
# ^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^^^^^^^ meta.string.regexp.shell
#       ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#        ^^ constant.character.escape.shell - meta.interpolation.tilde
#          ^^ constant.other.wildcard.asterisk.shell
#            ^^ constant.character.escape.shell
#              ^ keyword.operator.substitution.shell - string
#               ^^^^ meta.string.glob.shell string.unquoted.shell
#                   ^ punctuation.section.interpolation.end.shell

: ${foo/~+/}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^^ meta.string.regexp.shell variable.language.tilde.shell
#         ^ keyword.operator.substitution.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo/~name/~other}
# ^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^^^^^ meta.string.regexp.shell meta.interpolation.tilde.shell
#       ^ variable.language.tilde.shell
#        ^^^^ meta.string.glob.shell constant.other.username.shell
#            ^ keyword.operator.substitution.shell
#             ^^^^^^ meta.string.glob.shell string.unquoted.shell - variable
#                   ^ punctuation.section.interpolation.end.shell

# ZSH operator in front of parameter name

: ${^foo//:/[}]
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#             ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.brace.shell.zsh
#    ^^^ variable.other.readwrite.shell
#           ^ - punctuation
#            ^ punctuation.section.interpolation.end.shell

: ${^foo//:/[\}]}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.brace.shell.zsh
#    ^^^ variable.other.readwrite.shell
#           ^^^^ meta.string.glob.shell string.unquoted.shell
#            ^^ constant.character.escape.shell
#               ^ punctuation.section.interpolation.end.shell


###############################################################################
# 14.4 Command Expansion
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Command-Substitution
###############################################################################

: $()
# ^^^ meta.interpolation.command.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.section.interpolation.end.shell

: $((  ) )
# ^^^^^^^^ meta.interpolation.command.shell
#   ^^^^ meta.function-call.shell meta.function.anonymous.parameters.shell
#       ^ meta.function-call.shell meta.function.anonymous.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.section.parameters.begin.shell
#      ^ punctuation.section.parameters.end.shell
#        ^ punctuation.section.interpolation.end.shell

: $( (  ))
# ^^^^^^^^ meta.interpolation.command.shell
#    ^^^^ meta.function-call.shell meta.function.anonymous.parameters.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#    ^ punctuation.section.parameters.begin.shell
#       ^ punctuation.section.parameters.end.shell
#        ^ punctuation.section.interpolation.end.shell


# not an arithmetic, even if starting with ((
: $((git stash) || true)
#^^^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation.arithmetic
# ^^ meta.interpolation.command.shell - meta.compound
#   ^^^^^^^^^^^ meta.interpolation.command.shell meta.compound.command.shell
#              ^^^^^^^^^ meta.interpolation.command.shell - meta.compound
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.section.compound.begin.shell
#    ^^^ meta.command.shell variable.function.shell
#        ^^^^^ meta.string.glob.shell string.unquoted.shell
#             ^ punctuation.section.compound.end.shell
#               ^^ keyword.operator.logical.shell
#                  ^^^^ constant.language.boolean.true.shell
#                      ^ punctuation.section.interpolation.end.shell

: $((git \
stash) || true)
#^^^^^^^^^^^^^^ - meta.interpolation.arithmetic
#^^^^^ meta.interpolation.command.shell meta.compound.command.shell
#     ^^^^^^^^^ meta.interpolation.command.shell - meta.compound
#^^^^ meta.string.glob.shell string.unquoted.shell
#    ^ punctuation.section.compound.end.shell
#      ^^ keyword.operator.logical.shell
#         ^^^^ constant.language.boolean.true.shell
#             ^ punctuation.section.interpolation.end.shell


###############################################################################
# 14.5 Arithmetic Expansion
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Arithmetic-Expansion
###############################################################################

# Bash Style
: $(( a = b + (2 % c) ))
# ^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell - meta.group
#             ^^^^^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell meta.group.shell
#                    ^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell - meta.group
#                       ^ - meta.string - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^^ punctuation.section.interpolation.begin.shell
#     ^ variable.other.readwrite.shell
#       ^ keyword.operator.assignment.shell
#         ^ variable.other.readwrite.shell
#           ^ keyword.operator.arithmetic.shell
#             ^ punctuation.section.group.begin.shell
#              ^ constant.numeric.value.shell
#                ^ keyword.operator.arithmetic.shell
#                  ^ variable.other.readwrite.shell
#                   ^ punctuation.section.group.end.shell
#                     ^^ punctuation.section.interpolation.end.shell

: $(( # foo ))
# ^^^^^^^^^^^^ meta.interpolation.arithmetic.shell
# ^ punctuation.definition.variable.shell
#  ^^ punctuation.section.interpolation.begin.shell
#     ^ keyword.operator.arithmetic.shell.zsh
#       ^^^ variable.other.readwrite.shell
#           ^^ punctuation.section.interpolation.end.shell

: $(( #foo ))
# ^^^^^^^^^^^ meta.interpolation.arithmetic.shell
# ^ punctuation.definition.variable.shell
#  ^^ punctuation.section.interpolation.begin.shell
#     ^ keyword.operator.arithmetic.shell.zsh
#      ^^^ variable.other.readwrite.shell
#          ^^ punctuation.section.interpolation.end.shell

# Zsh Style
: $[ a = b + (2 % c) ]
# ^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell - meta.group
#            ^^^^^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell meta.group.shell
#                   ^^ meta.string.glob.shell meta.interpolation.arithmetic.shell - meta.group
#                     ^ - meta.string - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#    ^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#        ^ variable.other.readwrite.shell
#          ^ keyword.operator.arithmetic.shell
#            ^ punctuation.section.group.begin.shell
#             ^ constant.numeric.value.shell
#               ^ keyword.operator.arithmetic.shell
#                 ^ variable.other.readwrite.shell
#                  ^ punctuation.section.group.end.shell
#                    ^ punctuation.section.interpolation.end.shell

: $[ # foo ]
# ^^^^^^^^^^ meta.interpolation.arithmetic.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#    ^ keyword.operator.arithmetic.shell.zsh
#      ^^^ variable.other.readwrite.shell
#          ^ punctuation.section.interpolation.end.shell

: $[ #foo ]
# ^^^^^^^^^ meta.interpolation.arithmetic.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#    ^ keyword.operator.arithmetic.shell.zsh
#     ^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell


###############################################################################
# 14.6 Brace Expansion
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Brace-Expansion
###############################################################################

: prefix{a,b,c}suffix
# ^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#       ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.section.interpolation.begin.shell
#        ^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#         ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell
#          ^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#           ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell
#            ^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#             ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.section.interpolation.end.shell
#              ^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation

: 123{4,5,6}789
# ^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#    ^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation

: {a,b,~,%,!,.,\,,\{,\},*,?,-1,+2,0," ",' '}
#^ - meta.interpolation
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation.brace meta.interpolation.brace
# ^ punctuation.section.interpolation.begin.shell
#  ^ meta.string.glob.shell string.unquoted.shell
#   ^ punctuation.separator.sequence.shell
#    ^ meta.string.glob.shell string.unquoted.shell
#     ^ punctuation.separator.sequence.shell
#      ^ keyword.operator.logical.regexp.shell
#       ^ punctuation.separator.sequence.shell
#        ^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation - variable
#         ^ punctuation.separator.sequence.shell
#          ^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation - variable
#           ^ punctuation.separator.sequence.shell
#            ^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation - variable
#             ^ punctuation.separator.sequence.shell
#              ^^ meta.string.glob.shell string.unquoted.shell constant.character.escape.shell
#                ^ punctuation.separator.sequence.shell
#                 ^^ meta.string.glob.shell string.unquoted.shell constant.character.escape.shell
#                   ^ punctuation.separator.sequence.shell
#                    ^^ meta.string.glob.shell string.unquoted.shell constant.character.escape.shell
#                      ^ punctuation.separator.sequence.shell
#                       ^ meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
#                        ^ punctuation.separator.sequence.shell
#                         ^ meta.string.glob.shell string.unquoted.shell constant.other.wildcard.questionmark.shell
#                          ^ punctuation.separator.sequence.shell
#                           ^^ meta.string.glob.shell string.unquoted.shell
#                             ^ punctuation.separator.sequence.shell
#                              ^^ meta.string.glob.shell string.unquoted.shell
#                                ^ punctuation.separator.sequence.shell
#                                 ^ meta.string.glob.shell string.unquoted.shell
#                                  ^ punctuation.separator.sequence.shell
#                                   ^^^ meta.string.glob.shell string.quoted.double.shell
#                                      ^ punctuation.separator.sequence.shell
#                                       ^^^ meta.string.glob.shell string.quoted.single.shell
#                                          ^ punctuation.section.interpolation.end.shell
#                                           ^ - meta.interpolation

: {${foo},${bar},$(ls ~),foo${bar}buz,a{a,b,c}d}
# ^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#  ^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.interpolation.parameter.shell
#        ^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#         ^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.interpolation.parameter.shell
#               ^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#                ^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.interpolation.command.shell
#                       ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell
#                        ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                           ^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.parameter.shell
#                                 ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                                    ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell
#                                     ^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                                      ^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.brace.shell
#                                      ^ punctuation.section.interpolation.begin.shell
#                                       ^ meta.string.glob.shell string.unquoted.shell
#                                        ^ punctuation.separator.sequence.shell
#                                         ^ meta.string.glob.shell string.unquoted.shell
#                                          ^ punctuation.separator.sequence.shell
#                                           ^ meta.string.glob.shell string.unquoted.shell
#                                            ^ punctuation.section.interpolation.end.shell
#                                             ^ meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                                              ^ meta.interpolation.brace.shell - meta.interpolation meta.interpolation

: {foo\
bar,baz}
# <- meta.interpolation.brace.shell
#^^^^^^^ meta.interpolation.brace.shell
#       ^ - meta.interpolation

: {..,..2}
# ^^^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^^ meta.interpolation.brace.shell meta.string.shell string.unquoted.shell - keyword
#    ^ punctuation.separator.sequence.shell
#     ^^ meta.interpolation.brace.shell meta.string.shell string.unquoted.shell - keyword
#       ^ - constant.numeric
#        ^ punctuation.section.interpolation.end.shell

: {{foo,{bar,baz},foo},bar,{1..10}}
# ^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#  ^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation meta.interpolation
#       ^^^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.brace.shell
#                ^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation meta.interpolation
#                     ^^^^^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#                          ^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell meta.interpolation.brace.shell
#                                 ^ meta.string.glob.shell meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#                                  ^ - meta.string - meta.interpolation
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ string.unquoted.shell
#      ^ punctuation.separator.sequence.shell
#       ^ punctuation.section.interpolation.begin.shell
#        ^^^ string.unquoted.shell
#           ^ punctuation.separator.sequence.shell
#            ^^^ string.unquoted.shell
#               ^ punctuation.section.interpolation.end.shell
#                ^ punctuation.separator.sequence.shell
#                 ^^^ string.unquoted.shell
#                    ^ punctuation.section.interpolation.end.shell
#                     ^ punctuation.separator.sequence.shell
#                      ^^^ string.unquoted.shell
#                         ^ punctuation.separator.sequence.shell
#                          ^ punctuation.section.interpolation.begin.shell
#                           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                            ^^ keyword.operator.range.shell
#                              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                ^^ punctuation.section.interpolation.end.shell

: {*,?}
# ^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ constant.other.wildcard.asterisk.shell
#   ^ punctuation.separator.sequence.shell
#    ^ constant.other.wildcard.questionmark.shell
#     ^ punctuation.section.interpolation.end.shell

# Patterns to be brace expanded take the form of ...
# a sequence expression between a pair of braces

: {1..10}
#^ - meta.interpolation
# ^^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^^ keyword.operator.range.shell
#     ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ - meta.interpolation

: {1..10..2}
#^ - meta.interpolation
# ^^^^^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^^ keyword.operator.range.shell
#     ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^^ keyword.operator.range.shell
#         ^ constant.numeric.value.shell
#          ^ punctuation.section.interpolation.end.shell
#           ^ - meta.interpolation

: {-10..+10}
#^ - meta.interpolation
# ^^^^^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ meta.interpolation.brace.shell meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#   ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#     ^^ keyword.operator.range.shell
#       ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#        ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.section.interpolation.end.shell
#           ^ - meta.interpolation

: {-10..+10..-5}
#^ - meta.interpolation
# ^^^^^^^^^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#   ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#     ^^ keyword.operator.range.shell
#       ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#        ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^^ keyword.operator.range.shell
#            ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#             ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#              ^ punctuation.section.interpolation.end.shell
#               ^ - meta.interpolation

: {a..z}
#^ - meta.interpolation
# ^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ constant.character.shell
#   ^^ keyword.operator.range.shell
#     ^ constant.character.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation

: {a..z..2}
#^ - meta.interpolation
# ^^^^^^^^^ meta.interpolation.brace.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^ meta.interpolation.brace.shell constant.character.shell
#   ^^ keyword.operator.range.shell
#     ^ constant.character.shell
#      ^^ keyword.operator.range.shell
#        ^ constant.numeric.value.shell
#         ^ punctuation.section.interpolation.end.shell
#          ^ - meta.interpolation

: {\
a..z..2}
# <- meta.interpolation.brace.shell constant.character.shell
#^^^^^^^ meta.interpolation.brace.shell
#^^ keyword.operator.range.shell
#  ^ constant.character.shell
#   ^^ keyword.operator.range.shell
#     ^ constant.numeric.value.shell
#      ^ punctuation.section.interpolation.end.shell

: {\
a..\
z..2}
# <- meta.interpolation.brace.shell constant.character.shell
#^^^^ meta.interpolation.brace.shell
#^^ keyword.operator.range.shell
#  ^ constant.numeric.value.shell
#   ^ punctuation.section.interpolation.end.shell

: {a..z..2\
}
# <- meta.interpolation.brace.shell punctuation.section.interpolation.end.shell

: {${start}..$(( start + len ))..${incr}}
# ^ meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#  ^^^^^^^^ meta.interpolation.brace.shell meta.interpolation.parameter.shell
#          ^^ meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#            ^^^^^^^^^^^^^^^^^^ meta.interpolation.brace.shell meta.interpolation.arithmetic.shell
#                              ^^ meta.interpolation.brace.shell - meta.interpolation meta.interpolation
#                                ^^^^^^^ meta.interpolation.brace.shell meta.interpolation.parameter.shell
#                                       ^ meta.interpolation.brace.shell - meta.interpolation meta.interpolation
# ^ meta.interpolation.brace.shell punctuation.section.interpolation.begin.shell
#  ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
#   ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#    ^^^^^ variable.other.readwrite.shell
#         ^ punctuation.section.interpolation.end.shell
#          ^^ keyword.operator.range.shell
#            ^ meta.interpolation.arithmetic.shell punctuation.definition.variable.shell
#             ^^ punctuation.section.interpolation.begin.shell
#                ^^^^^ variable.other.readwrite.shell
#                      ^ keyword.operator.arithmetic.shell
#                        ^^^ variable.other.readwrite.shell
#                            ^^ meta.interpolation.arithmetic.shell punctuation.section.interpolation.end.shell
#                              ^^ keyword.operator.range.shell
#                                ^ punctuation.definition.variable.shell
#                                 ^ punctuation.section.interpolation.begin.shell
#                                  ^^^^ variable.other.readwrite.shell
#                                      ^^ punctuation.section.interpolation.end.shell

  { : {1..21} }
# ^^^^ meta.block.shell - meta.interpolation
#     ^^^^^^^ meta.block.shell meta.interpolation.brace.shell
#            ^^ meta.block.shell - meta.interpolation

  ( : {1..21} )
# ^^^^ meta.compound.command.shell - meta.interpolation
#     ^^^^^^^ meta.compound.command.shell meta.interpolation.brace.shell
#            ^^ meta.compound.command.shell - meta.interpolation

any --arg{1..4}={1..4}
#   ^^^^^ meta.parameter.option.shell variable.parameter.option.shell - meta.interpolation
#        ^^^^^^ meta.function-call.arguments.shell meta.parameter.option.shell meta.interpolation.brace.shell - variable.parameter
#              ^ keyword.operator.assignment.shell
#               ^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell

any --arg{1..4} ={1..4}
#   ^^^^^ meta.parameter.option.shell variable.parameter.option.shell - meta.interpolation
#        ^^^^^^ meta.function-call.arguments.shell meta.parameter.option.shell meta.interpolation.brace.shell - variable.parameter
#               ^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#                ^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell

any --arg{1,2,3}={1,2,3}
#   ^^^^^ meta.parameter.option.shell variable.parameter.option.shell - meta.interpolation
#        ^^^^^^^ meta.function-call.arguments.shell meta.parameter.option.shell meta.interpolation.brace.shell - variable.parameter
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell

any --arg{1,2,3} ={1,2,3}
#   ^^^^^ meta.parameter.option.shell variable.parameter.option.shell - meta.interpolation
#        ^^^^^^^ meta.function-call.arguments.shell meta.parameter.option.shell meta.interpolation.brace.shell - variable.parameter
#                ^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#                 ^^^^^^^ meta.string.glob.shell meta.interpolation.brace.shell

# invalid brace expansions due to whitespace

: {} {*} {1} {a} {foo} {'bar'} {"baz"}
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation

: { 1..9} {1..9 } {1.. 9} {1 ..9} {a, b, c}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation

: {1..&} {1..|} {1..<} {1..>} {(..)} {a..)}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation

: {a..z\
  ..2}
#^^^^^ - meta.interpolation

: {foo\
  bar,baz}
#^^^^^^^^^^ - meta.interpolation

: '{foo,bar,baz}' '{1..10}'
# ^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell - meta.interpolation
#                 ^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell - meta.interpolation

: "{foo,bar,baz}" "{1..10}"
# ^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation
#                 ^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation


###############################################################################
# 14.1.4 Modifiers
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Modifiers
###############################################################################

: /(:v) # not a valid modifier, fallback to normal regexp group
#  ^^^^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#  ^ punctuation.section.group.begin.regexp.shell
#     ^ punctuation.section.group.end.regexp.shell

: /(:a) # Turn a file name into an absolute path
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:A) # Turn a file name into an real path (resolve symlinks)
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:c) # Resolve a command name into an absolute path
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:e) # Remove all but the part of the filename extension following the '.'
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:h10) # Remove a trailing pathname components
#  ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh

: /(:l) # Convert the words to all lowercase.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:p) # Print the new command but do not execute it.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:P) # Turn a file name into an absolute path, permit non-existing
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:q) # Quote the substituted words, escaping further substitutions.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:Q) # Remove one level of quotes from the substituted words.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:r) # Remove a filename extension leaving the root name.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: (:s/pa*t?rn/repl) (:s|pattern|repl) (:s;pattern;repl;:G)
# ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#   ^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.substitution.shell.zsh
#                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                  ^ - meta.string - meta.modifier
#   ^ support.function.substitution.shell.zsh
#    ^ keyword.operator.substitution.shell.zsh - string
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell
#            ^ keyword.operator.substitution.shell.zsh
#             ^^^^ meta.string.regexp.shell string.unquoted.shell
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                     ^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.substitution.shell.zsh
#                                   ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                                    ^ - meta.string - meta.modifier
#                     ^ support.function.substitution.shell.zsh
#                      ^ keyword.operator.substitution.shell.zsh - string
#                       ^^^^^^^ meta.string.regexp.shell string.unquoted.shell
#                              ^ keyword.operator.substitution.shell.zsh
#                               ^^^^ meta.string.regexp.shell string.unquoted.shell
#                                   ^ punctuation.definition.modifier.end.shell.zsh
#                                     ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                                       ^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.substitution.shell.zsh
#                                                        ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                                                         ^ - meta.string - meta.modifier
#                                       ^ support.function.substitution.shell.zsh
#                                        ^ keyword.operator.substitution.shell.zsh - string
#                                         ^^^^^^^ meta.string.regexp.shell string.unquoted.shell
#                                                ^ keyword.operator.substitution.shell.zsh
#                                                 ^^^^ meta.string.regexp.shell string.unquoted.shell
#                                                     ^ keyword.operator.substitution.shell.zsh
#                                                      ^ punctuation.separator.sequence.shell.zsh
#                                                       ^ constant.other.flag.regexp.shell.zsh
#                                                        ^ punctuation.definition.modifier.end.shell.zsh

: /(:&) # Repeat the previous s substitution.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:t10) # Remove all leading pathname components
#  ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh

: /(:u) # Convert the words to all uppercase.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:x) # Like q, but break into words at whitespace.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: /(:f) # Repeats the immediately (without a colon) following modifier
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

# Like f, but repeats only n times if the expression expr evaluates to n
: /(:F"1+p") /(:F<1+p>) /(:F{1+p}) /(:F[1+p]) /(:F(1+p)) /(:F:1+p:)
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#     ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#          ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^ meta.arithmetic.shell
#         ^ punctuation.definition.quoted.end.shell.zsh
#          ^ punctuation.definition.modifier.end.shell.zsh
#           ^ - meta.string - meta.modifier
#             ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#             ^ punctuation.definition.modifier.begin.shell.zsh
#              ^ punctuation.separator.sequence.shell.zsh
#               ^ storage.modifier.glob.shell.zsh
#                ^ punctuation.definition.quoted.begin.shell.zsh
#                 ^^^ meta.arithmetic.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                      ^ - meta.string - meta.modifier
#                        ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                           ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ punctuation.separator.sequence.shell.zsh
#                          ^ storage.modifier.glob.shell.zsh
#                           ^ punctuation.definition.quoted.begin.shell.zsh
#                            ^^^ meta.arithmetic.shell
#                               ^ punctuation.definition.quoted.end.shell.zsh
#                                ^ punctuation.definition.modifier.end.shell.zsh
#                                 ^ - meta.string - meta.modifier
#                                   ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                      ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                           ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                   ^ punctuation.definition.modifier.begin.shell.zsh
#                                    ^ punctuation.separator.sequence.shell.zsh
#                                     ^ storage.modifier.glob.shell.zsh
#                                      ^ punctuation.definition.quoted.begin.shell.zsh
#                                       ^^^ meta.arithmetic.shell
#                                          ^ punctuation.definition.quoted.end.shell.zsh
#                                           ^ punctuation.definition.modifier.end.shell.zsh
#                                            ^ - meta.string - meta.modifier
#                                              ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                 ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                      ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                              ^ punctuation.definition.modifier.begin.shell.zsh
#                                               ^ punctuation.separator.sequence.shell.zsh
#                                                ^ storage.modifier.glob.shell.zsh
#                                                 ^ punctuation.definition.quoted.begin.shell.zsh
#                                                  ^^^ meta.arithmetic.shell
#                                                     ^ punctuation.definition.quoted.end.shell.zsh
#                                                      ^ punctuation.definition.modifier.end.shell.zsh
#                                                       ^ - meta.string - meta.modifier
#                                                         ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                            ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                         ^ punctuation.definition.modifier.begin.shell.zsh
#                                                          ^ punctuation.separator.sequence.shell.zsh
#                                                           ^ storage.modifier.glob.shell.zsh
#                                                            ^ punctuation.definition.quoted.begin.shell.zsh
#                                                             ^^^ meta.arithmetic.shell
#                                                                ^ punctuation.definition.quoted.end.shell.zsh
#                                                                 ^ punctuation.definition.modifier.end.shell.zsh
#                                                                  ^ - meta.string - meta.modifier

: /(:w) # Makes the immediately following modifier work on each word in the string.
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

# Like w but words are considered to be the parts of the string that are separated by sep.
: /(:W"sep") /(:W<sep>) /(:W{sep}) /(:W[sep]) /(:W(sep)) /(:W:sep:)
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#     ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#          ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.separator.sequence.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^^^ string.quoted.other.shell.zsh
#         ^ punctuation.definition.quoted.end.shell.zsh
#          ^ punctuation.definition.modifier.end.shell.zsh
#           ^ - meta.string - meta.modifier
#             ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#             ^ punctuation.definition.modifier.begin.shell.zsh
#              ^ punctuation.separator.sequence.shell.zsh
#               ^ storage.modifier.glob.shell.zsh
#                ^ punctuation.definition.quoted.begin.shell.zsh
#                 ^^^ string.quoted.other.shell.zsh
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                      ^ - meta.string - meta.modifier
#                        ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                           ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ punctuation.separator.sequence.shell.zsh
#                          ^ storage.modifier.glob.shell.zsh
#                           ^ punctuation.definition.quoted.begin.shell.zsh
#                            ^^^ string.quoted.other.shell.zsh
#                               ^ punctuation.definition.quoted.end.shell.zsh
#                                ^ punctuation.definition.modifier.end.shell.zsh
#                                 ^ - meta.string - meta.modifier
#                                   ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                      ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                           ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                   ^ punctuation.definition.modifier.begin.shell.zsh
#                                    ^ punctuation.separator.sequence.shell.zsh
#                                     ^ storage.modifier.glob.shell.zsh
#                                      ^ punctuation.definition.quoted.begin.shell.zsh
#                                       ^^^ string.quoted.other.shell.zsh
#                                          ^ punctuation.definition.quoted.end.shell.zsh
#                                           ^ punctuation.definition.modifier.end.shell.zsh
#                                            ^ - meta.string - meta.modifier
#                                              ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                 ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                      ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                              ^ punctuation.definition.modifier.begin.shell.zsh
#                                               ^ punctuation.separator.sequence.shell.zsh
#                                                ^ storage.modifier.glob.shell.zsh
#                                                 ^ punctuation.definition.quoted.begin.shell.zsh
#                                                  ^^^ string.quoted.other.shell.zsh
#                                                     ^ punctuation.definition.quoted.end.shell.zsh
#                                                      ^ punctuation.definition.modifier.end.shell.zsh
#                                                       ^ - meta.string - meta.modifier
#                                                         ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                            ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                         ^ punctuation.definition.modifier.begin.shell.zsh
#                                                          ^ punctuation.separator.sequence.shell.zsh
#                                                           ^ storage.modifier.glob.shell.zsh
#                                                            ^ punctuation.definition.quoted.begin.shell.zsh
#                                                             ^^^ string.quoted.other.shell.zsh
#                                                                ^ punctuation.definition.quoted.end.shell.zsh
#                                                                 ^ punctuation.definition.modifier.end.shell.zsh
#                                                                  ^ - meta.string - meta.modifier


###############################################################################
# 14.7 Filename Expansion
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Filename-Expansion
###############################################################################

: ~     # expand to $HOME
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#  ^ - meta.interpolation

: ~/    # expand to $HOME
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#  ^ - meta.interpolation

: ~+    # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~+/   # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~-    # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~-/   # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~0    # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~0/   # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~1    # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~1/   # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#   ^ - meta.interpolation

: ~+0   # equivalent to ~+
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^ - meta.interpolation

: ~+0/  # equivalent to ~+
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^ - meta.interpolation

: ~+1   # top of directory stack
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^ - meta.interpolation

: ~+1/  # top of directory stack
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell
#    ^ - meta.interpolation

# 14.7.1 Dynamic named directories

: ~[...]/
# ^ meta.string.glob.shell meta.interpolation.tilde.shell - meta.brackets - meta.interpolation meta.function-call
#  ^ meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets - meta.interpolation meta.function-call
#   ^^^ meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets.shell.zsh meta.function-call.identifier.shell.zsh variable.function.shell.zsh
#      ^ meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets - meta.interpolation meta.function-call
# ^ variable.language.tilde.shell
#  ^ punctuation.section.brackets.begin.shell.zsh - variable variable
#   ^^^ variable.function.shell.zsh - variable variable
#      ^ punctuation.section.brackets.end.shell.zsh - variable variable

: ~[dyn_${dir}_name]/
# ^ meta.string.glob.shell meta.interpolation.tilde.shell - meta.interpolation meta.function-call
#  ^ meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets - meta.interpolation meta.function-call
#   ^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets.shell.zsh meta.function-call.identifier.shell.zsh - meta.interpolation.parameter
#       ^^^^^^ meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets.shell.zsh meta.function-call.identifier.shell.zsh meta.interpolation.parameter.shell
#             ^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets.shell.zsh meta.function-call.identifier.shell.zsh - meta.interpolation.parameter
#                  ^ meta.string.glob.shell meta.interpolation.tilde.shell meta.brackets - meta.interpolation meta.function-call
#                   ^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
# ^ variable.language.tilde.shell
#  ^ punctuation.section.brackets.begin.shell.zsh - variable variable
#   ^^^^ variable.function.shell.zsh - variable variable
#       ^ punctuation.definition.variable.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^^^ variable.other.readwrite.shell - variable variable
#            ^ punctuation.section.interpolation.end.shell
#             ^^^^^ variable.function.shell.zsh - variable variable
#                  ^ punctuation.section.brackets.end.shell.zsh - variable variable

dyn_dir_name() {
  emulate -L zsh
  setopt extendedglob
  local -a match mbegin mend
  if [[ $1 = d ]]; then
    # turn the directory into a name
    if [[ $2 = (#b)(/home/pws/perforce/)([^/]##)* ]]; then
      typeset -ga reply
      reply=(p:$match[2] $(( ${#match[1]} + ${#match[2]} )) )
    else
      return 1
    fi
  elif [[ $1 = n ]]; then
    # turn the name into a directory
    [[ $2 != (#b)p:(?*) ]] && return 1
    typeset -ga reply
    reply=(/home/pws/perforce/$match[1])
  elif [[ $1 = c ]]; then
    # complete names
    local expl
    local -a dirs
    dirs=(/home/pws/perforce/*(/:t))
    dirs=(p:${^dirs})
    _wanted dynamic-dirs expl 'dynamic directory' compadd -S\] -a dirs
    return
  else
    return 1
  fi
  return 0
}

# 14.7.2 Static named directories

~n_a-m.e/ ~n_a-m.e/
# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#^^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell constant.other.username.shell
#       ^ meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.separator.path.shell
#         ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#          ^^^^^^^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - variable
#                 ^ meta.string.glob.shell - meta.interpolation

~n_${a-m}.e/ ~n_${a-m}.e/
# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell variable.language.tilde.shell - variable.function
#^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell constant.other.username.shell
#  ^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell meta.interpolation.parameter.shell
#        ^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell constant.other.username.shell
#          ^ meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.separator.path.shell
#            ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#             ^^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - variable
#               ^^^^^^ meta.string.glob.shell meta.interpolation.tilde.shell meta.interpolation.parameter.shell
#                     ^^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - variable
#                       ^ meta.string.glob.shell - meta.interpolation

# 14.7.3 ‘=’ expansion

=command =command
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.definition.expansion.shell.zsh
#^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#        ^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.definition.expansion.shell

echo =( echo ls )
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ meta.function-call.arguments.shell - meta.string
#    ^^^ meta.function-call.arguments.shell meta.string.glob.shell - meta.function-call meta.function-call
#       ^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.compound.command.shell.zsh meta.function-call.identifier.shell
#           ^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.compound.command.shell.zsh meta.function-call.arguments.shell
#              ^^ meta.function-call.arguments.shell meta.string.glob.shell meta.compound.command.shell.zsh - meta.function-call meta.function-call
#    ^ punctuation.definition.expansion.shell.zsh
#     ^ punctuation.section.compound.begin.shell.zsh
#       ^^^^ support.function.shell
#            ^^ meta.string.glob.shell string.unquoted.shell
#               ^ punctuation.section.compound.end.shell.zsh

cat =( < foo )
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^^^^^ meta.string.glob.shell meta.compound.command.shell.zsh
#   ^ punctuation.definition.expansion.shell.zsh
#    ^ punctuation.section.compound.begin.shell.zsh
#      ^^^^^ meta.redirection.shell
#      ^ keyword.operator.assignment.redirection.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.compound.end.shell.zsh

cat =( <<< foo )
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#   ^^^^^^^^^^^^ meta.string.glob.shell meta.compound.command.shell.zsh
#   ^ punctuation.definition.expansion.shell.zsh
#    ^ punctuation.section.compound.begin.shell.zsh
#      ^^^^^^^ meta.redirection.shell
#      ^^^ keyword.operator.assignment.herestring.shell
#          ^^^ meta.string.herestring.shell string.unquoted.shell
#              ^ punctuation.section.compound.end.shell.zsh


###############################################################################
# 14.8 Filename Generation
# 14.8.1 Glob Operators
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Glob-Operators
###############################################################################

: *
# ^ constant.other.wildcard.asterisk.shell

: ?
# ^ constant.other.wildcard.questionmark.shell

: [[:alnum:]] # The character is alphanumeric
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:alpha:]] # The character is alphabetic
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:ascii:]] # The character is 7-bit, i.e. is a single-byte character without the top bit set.
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:blank:]] # The character is a blank character
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:cntrl:]] # The character is a control character
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:digit:]] # The character is a decimal digit
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:graph:]] # The character is a printable character other than whitespace
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:lower:]] # The character is a lowercase letter
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:print:]] # The character is printable
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:punct:]] # The character is printable but neither alphanumeric nor whitespace
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:space:]] # The character is whitespace
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:upper:]] # The character is an uppercase letter
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:xdigit:]] # The character is a hexadecimal digit
# ^^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^^ constant.other.posix-class.regexp.shell
#           ^^ punctuation.definition.set.end.regexp.shell

# Another set of named classes is handled internally by the shell and is not sensitive to the locale:

: [[:IDENT:]] # The character is allowed to form part of a shell identifier, such as a parameter name.
# ^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^ constant.other.posix-class.regexp.shell
#          ^^ punctuation.definition.set.end.regexp.shell

: [[:IFS:]] # The character is used as an input field separator, i.e. is contained in the IFS parameter
# ^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^ constant.other.posix-class.regexp.shell
#        ^^ punctuation.definition.set.end.regexp.shell

: [[:IFSSPACE:]] # The character is an IFS white space character.
# ^^^^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^^^^ constant.other.posix-class.regexp.shell
#             ^^ punctuation.definition.set.end.regexp.shell

: [[:INCOMPLETE:]] # Matches a byte that starts an incomplete multibyte character.
# ^^^^^^^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^^^^^^^ constant.other.posix-class.regexp.shell
#               ^^ punctuation.definition.set.end.regexp.shell

: [[:WORD:]] # The character is treated as part of a word.
# ^^^^^^^^^^ meta.set.regexp.shell
# ^^ punctuation.definition.set.begin.regexp.shell
#   ^^^^^^ constant.other.posix-class.regexp.shell
#         ^^ punctuation.definition.set.end.regexp.shell

: [^.][!\ ] # Like [...], except that it matches any character which is not in the given set.
# ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell meta.set.regexp.shell
# ^ punctuation.definition.set.begin.regexp.shell
#  ^ keyword.operator.logical.regexp.shell
#    ^ punctuation.definition.set.end.regexp.shell
#     ^ punctuation.definition.set.begin.regexp.shell
#      ^ keyword.operator.logical.regexp.shell
#       ^^ constant.character.escape.shell
#         ^ punctuation.definition.set.end.regexp.shell

## Zsh Glob Ranges

./cmd<1-2>
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell constant.other.path.self.shell
#^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#    ^^^^^ meta.function-call.identifier.shell meta.command.shell meta.range.shell.zsh
#         ^ - meta.function-call - meta.range

: <-> # Matches any number
# ^^^ meta.range.shell.zsh
# ^ punctuation.definition.range.begin.shell.zsh
#  ^ keyword.operator.range.shell.zsh
#   ^ punctuation.definition.range.end.shell.zsh

: <2-> # Matches any number greater or equal 2
# ^^^^ meta.range.shell.zsh
# ^ punctuation.definition.range.begin.shell.zsh
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^ keyword.operator.range.shell.zsh
#    ^ punctuation.definition.range.end.shell.zsh

: <-5> # Matches any number greater or equal 2
# ^^^^ meta.range.shell.zsh
# ^ punctuation.definition.range.begin.shell.zsh
#  ^ keyword.operator.range.shell.zsh
#   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^ punctuation.definition.range.end.shell.zsh

: <2-5>  # Matches numbers from 2 to 5
# ^^^^ meta.range.shell.zsh
# ^ punctuation.definition.range.begin.shell.zsh
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^ keyword.operator.range.shell.zsh
#    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#     ^ punctuation.definition.range.end.shell.zsh

: <$start-$end>  # Matches numbers from $start to $end
# ^ meta.range.shell.zsh punctuation.definition.range.begin.shell.zsh
#  ^^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^ meta.range.shell.zsh keyword.operator.range.shell.zsh
#         ^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell variable.other.readwrite.shell
#             ^ meta.range.shell.zsh punctuation.definition.range.end.shell.zsh

: <${start: 1 + 2 : 5}-${end:${pt0}:${len}}>  # Matches numbers from calculated start to end
# ^ meta.range.shell.zsh punctuation.definition.range.begin.shell.zsh - string
#  ^^^^^^^^^^^^^^^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell - string
#                     ^ meta.range.shell.zsh keyword.operator.range.shell.zsh - string
#                      ^^^^^^^^^^^^^^^^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell - string
#                                          ^ meta.range.shell.zsh punctuation.definition.range.end.shell.zsh - string

: <${start##<1-5>0<1-}->  # optional glob range in default values, with `<` treated literal
# ^ meta.range.shell.zsh - meta.interpolation - meta.range meta.range
#  ^^^^^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell - meta.range meta.range
#           ^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell meta.string.regexp.shell meta.range.shell.zsh - string
#                ^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell - meta.range meta.range
#                 ^ - keyword - punctuation
#                     ^^ meta.range.shell.zsh
#                       ^ - meta.range

: <-${start/f<o<1-$end>o>bar/b<a>z}>  # optional glob range in replacements, with `<` treated literal
# ^^ meta.range.shell.zsh - meta.interpolation - meta.range meta.range
#   ^^^^^^^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell - meta.range meta.range
#              ^^^ meta.range.shell.zsh meta.interpolation.parameter.shell meta.string.regexp.shell meta.range.shell.zsh - string
#                 ^^^^ meta.range.shell.zsh meta.number.integer.decimal.shell meta.interpolation.parameter.shell meta.range.shell.zsh meta.number.integer.decimal.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - string
#                     ^ meta.range.shell.zsh meta.number.integer.decimal.shell meta.interpolation.parameter.shell meta.string.regexp.shell meta.range.shell.zsh - string
#                      ^^^^^^^^^^^^ meta.range.shell.zsh meta.interpolation.parameter.shell - meta.range meta.range
#                                  ^ meta.range.shell.zsh - meta.interpolation - meta.range meta.range
#                                    ^ - meta.range
# ^ punctuation.definition.range.begin.shell.zsh
#  ^ keyword.operator.range.shell.zsh
#          ^ keyword.operator.substitution.shell
#            ^ - keyword - punctuation
#              ^ punctuation.definition.range.begin.shell.zsh
#                ^ keyword.operator.range.shell.zsh
#                     ^ punctuation.definition.range.end.shell.zsh
#                       ^ - keyword - punctuation
#                           ^ keyword.operator.substitution.shell
#                             ^ - keyword - punctuation
#                               ^ - keyword - punctuation
#                                  ^ punctuation.definition.range.end.shell.zsh

: foo<5-21> foo<5-21>bar <5-21>bar <baz
# ^^^ meta.string.glob.shell string.unquoted.shell - meta.range
#    ^^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#          ^ - meta.range meta.string - string
#           ^^^ meta.string.glob.shell string.unquoted.shell - meta.range
#              ^^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#                    ^^^ meta.string.glob.shell string.unquoted.shell - meta.range
#                       ^ - meta.range meta.string - string
#                        ^^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#                              ^^^ meta.string.glob.shell string.unquoted.shell - meta.range
#                                  ^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#                                   ^^^ meta.redirection.shell meta.string.glob.shell string.unquoted.shell

: 1<1-5> 1<1-5>0 <1-5>0 <0  # not numbers, but a patterns
# ^ meta.string.glob.shell string.unquoted.shell - meta.range
#  ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#       ^ - meta.range meta.string - string
#        ^ meta.string.glob.shell string.unquoted.shell - meta.range
#         ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#              ^ meta.string.glob.shell string.unquoted.shell - meta.range
#               ^ - meta.range meta.string - string
#                ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#                     ^ meta.string.glob.shell string.unquoted.shell - meta.range
#                       ^ meta.redirection.shell keyword.operator.assignment.redirection.shell
#                        ^ meta.redirection.shell meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

: (<1-5>foo|bar<1-)<1-5>  # glob ranges in pattern groups
# ^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell punctuation.section.group.begin.regexp.shell
#  ^^^^^ meta.string.glob.shell meta.group.regexp.shell meta.range.shell.zsh - string
#       ^^^^^^^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell - meta.range
#              ^^^ meta.redirection.shell
#                 ^ invalid.illegal.stray.shell
#                  ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string

## glob ranges in parameter assignments

a=<1-4>foo  # glob range beginning assignment value
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^ meta.assignment.shell keyword.operator.assignment.shell
# ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell meta.range.shell.zsh - string
#      ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell - meta.range

a=foo<1-4>bar  # glob range within assignment value
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^ meta.assignment.shell keyword.operator.assignment.shell
# ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell - meta.range
#    ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell meta.range.shell.zsh - string
#         ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell - meta.range

a=foo<1-4>foo<bar  # redirections don't belong to assignment
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^ meta.assignment.shell keyword.operator.assignment.shell
# ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell - meta.range
#    ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell meta.range.shell.zsh - string
#         ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell - meta.range
#            ^ meta.redirection.shell keyword.operator.assignment.redirection.shell - meta.assignment
#             ^^^ meta.redirection.shell meta.string.glob.shell string.unquoted.shell - meta.assignment

a=(<1-2>foo [foo]=<3-4>bar [buz]=s(<5-6>uf) <10-foo ^~<err>or)  # glob ranges within indexed or associative arrays
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^ meta.assignment.shell keyword.operator.assignment.shell
# ^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.string
#  ^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell meta.range.shell.zsh
#       ^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
#          ^^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.string meta.item-access.shell
#                 ^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell meta.range.shell.zsh - string
#                      ^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
#                         ^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.string
#                          ^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell
#                                ^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell - meta.group
#                                 ^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell meta.group.regexp.shell - meta.range
#                                  ^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell meta.group.regexp.shell meta.range.shell.zsh - string
#                                       ^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell meta.group.regexp.shell - meta.range
#                                          ^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.string
#                                           ^ meta.assignment.r-value.shell meta.sequence.list.shell invalid.illegal.unexpected-token.shell.zsh
#                                            ^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
#                                                   ^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell
#                                                   ^ keyword.operator.logical.regexp.shell.zsh
#                                                    ^ variable.language.tilde.shell
#                                                     ^ invalid.illegal.unexpected-token.shell.zsh
#                                                      ^^^ string.unquoted.shell
#                                                         ^ meta.assignment.r-value.shell meta.sequence.list.shell invalid.illegal.unexpected-token.shell
#                                                          ^^ meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
#                                                            ^ meta.assignment.r-value.shell meta.sequence.list.shell punctuation.section.sequence.end.shell

declare -A a=(key <1-2>value key <1-2ill key ^~<err>or)  # glob ranges within associative arrays
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell
#             ^^^ entity.name.key.shell
#                 ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#                      ^^^^^ meta.string.glob.shell string.unquoted.shell
#                            ^^^ entity.name.key.shell
#                                ^ invalid.illegal.unexpected-token.shell.zsh
#                                 ^^^^^^ meta.string.glob.shell string.unquoted.shell
#                                        ^^^ entity.name.key.shell
#                                            ^^^^^^ meta.string.glob.shell
#                                            ^ keyword.operator.logical.regexp.shell.zsh
#                                             ^ variable.language.tilde.shell
#                                              ^ invalid.illegal.unexpected-token.shell.zsh
#                                               ^^^ string.unquoted.shell
#                                                  ^ invalid.illegal.unexpected-token.shell - entity - string - keyword
#                                                   ^^ entity.name.key.shell

## glob ranges in case clause patterns

case $foo in
  <1-2>pat | pat<1-2> | <-a>ny ) ;;
# ^^^^^^^^^^^^^^^^^^^^ meta.clause.patterns.shell
# ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#      ^^^ meta.string.glob.shell string.unquoted.shell - meta.range
#          ^ keyword.operator.logical.shell
#            ^^^ meta.string.glob.shell string.unquoted.shell - meta.range
#               ^^^^^ meta.string.glob.shell meta.range.shell.zsh - string
#                     ^ keyword.operator.logical.shell
#                       ^^^^^^^^ - meta.range
#                       ^ invalid.illegal.unexpected-token.shell
#                        ^^ meta.string.glob.shell string.unquoted.shell
#                          ^ invalid.illegal.unexpected-token.shell
#                           ^^ meta.string.glob.shell string.unquoted.shell

  (<1-2>|<-) | foo<1-2> | <- ) ;;
# ^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell - meta.range
#  ^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell meta.range.shell.zsh
#       ^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell - meta.range
#        ^^ meta.clause.patterns.shell meta.string.glob.shell - meta.group
#          ^ meta.clause.patterns.shell - meta.string
#           ^ meta.clause.shell - meta.clause.patterns
#            ^^^^^^^^^^^^^^^^^^ meta.clause.body.shell
#        ^ invalid.illegal.unexpected-token.shell.zsh
#         ^ string.unquoted.shell
#          ^ punctuation.section.patterns.end.shell
#            ^ keyword.operator.assignment.pipe.shell
#              ^^^ meta.command.shell variable.function.shell
#                 ^^^^^ meta.range.shell.zsh
#                       ^ keyword.operator.assignment.pipe.shell
#                         ^^ meta.redirection.shell
#                         ^ keyword.operator.assignment.redirection.shell
#                          ^ variable.language.stdio.shell
#                            ^ invalid.illegal.stray.shell
#                              ^^ punctuation.terminator.clause.shell
esac

# glob in test expressions

[[ $foo == <1-2>bar || $foo == b<1-2>r || $foo == bar<1-2> || $foo == b<a>r ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                                                                             ^ - meta.compound
#          ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#               ^^^ meta.string.regexp.shell string.unquoted.shell
#                              ^ meta.string.regexp.shell string.unquoted.shell
#                               ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                                    ^ meta.string.regexp.shell string.unquoted.shell
#                                                 ^^^ meta.string.regexp.shell string.unquoted.shell
#                                                    ^^^^^ meta.string.regexp.shell meta.range.shell.zsh

[[ ( $foo == <1-2>bar ) || ( $foo == b<1-2>r ) || ( $foo == bar<1-2> ) || ( $foo == b<a>r ) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                      ^^^^ meta.compound.conditional.shell - meta.group
#                          ^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                             ^^^^ meta.compound.conditional.shell - meta.group
#                                                 ^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                                                     ^^^^ meta.compound.conditional.shell - meta.group
#                                                                         ^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                                                                          ^^^ meta.compound.conditional.shell - meta.group
#                                                                                             ^ - meta.compound
#            ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                 ^^^ meta.string.regexp.shell string.unquoted.shell
#                                    ^ meta.string.regexp.shell string.unquoted.shell
#                                     ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                                          ^ meta.string.regexp.shell string.unquoted.shell
#                                                           ^^^ meta.string.regexp.shell string.unquoted.shell
#                                                              ^^^^^ meta.string.regexp.shell meta.range.shell.zsh

[[ $foo == (<1-2>bar) || $foo == (b<1-2>r) || $foo == (bar<1-2>) || $foo == (b<a>r) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                                                                                     ^ - meta.compound
#           ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                ^^^ meta.string.regexp.shell string.unquoted.shell
#                                 ^ meta.string.regexp.shell string.unquoted.shell
#                                  ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                                       ^ meta.string.regexp.shell string.unquoted.shell
#                                                      ^^^ meta.string.regexp.shell string.unquoted.shell
#                                                         ^^^^^ meta.string.regexp.shell meta.range.shell.zsh

[[ ( $foo == (<1-2>bar) ) || ( $foo == (b<1-2>r) ) || ( $foo == (bar<1-2>) ) || ( $foo == (b<a>r) ) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                        ^^^^ meta.compound.conditional.shell - meta.group
#                            ^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                                 ^^^^ meta.compound.conditional.shell - meta.group
#                                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                                                           ^^^^ meta.compound.conditional.shell - meta.group
#                                                                               ^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                                                                                ^^^^^ meta.compound.conditional.shell - meta.group
#                                                                                                     ^ - meta.compound
#             ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                  ^^^ meta.string.regexp.shell string.unquoted.shell
#                                       ^ meta.string.regexp.shell string.unquoted.shell
#                                        ^^^^^ meta.string.regexp.shell meta.range.shell.zsh
#                                             ^ meta.string.regexp.shell string.unquoted.shell
#                                                                ^^^ meta.string.regexp.shell string.unquoted.shell
#                                                                   ^^^^^ meta.string.regexp.shell meta.range.shell.zsh


## no glob ranges

: 'foo<5-21>bar'
# ^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell - meta.redirection - meta.range

: "foo<5-21>bar"
# ^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.redirection - meta.range

: this<input>output
# ^^^^ meta.string.glob.shell string.unquoted.shell
#     ^^^^^^^^^^^^^ meta.redirection.shell - meta.range
#     ^ keyword.operator.assignment.redirection.shell
#           ^ keyword.operator.assignment.redirection.shell

: 'this<input>output'
# ^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell - meta.redirection - meta.range

: "this<input>output"
# ^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.redirection - meta.range

## pattern groups

: foo/(a*/)#bar               # bar matches foo/bar, foo/any/bar, foo/any/anyother/bar, ...
# ^^^^ meta.string.glob.shell string.unquoted.shell
#     ^^^^^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#          ^^^^ meta.string.glob.shell string.unquoted.shell
#     ^ punctuation.section.group.begin.regexp.shell
#       ^ constant.other.wildcard.asterisk.shell
#         ^ punctuation.section.group.end.regexp.shell
#          ^  keyword.operator.quantifier.regexp.shell.zsh

: (foo|bar)|baz
# ^^^^^^^^^ meta.group.regexp.shell string.unquoted.shell
# ^ punctuation.section.group.begin.regexp.shell
#     ^ keyword.operator.alternation.regexp.shell
#         ^ punctuation.section.group.end.regexp.shell
#          ^ keyword.operator.assignment.pipe.shell
#           ^^^ variable.function.shell

: (foo&bar)|baz  # `&` terminates group and command arguments
# ^^^^ meta.group.regexp.shell string.unquoted.shell
#     ^^^^^^^^^^ - meta.group
# ^ punctuation.section.group.begin.regexp.shell
#     ^ keyword.operator.assignment.pipe.shell
#      ^^^ variable.function.shell
#         ^ invalid.illegal.stray.shell
#          ^ keyword.operator.assignment.pipe.shell
#           ^^^ variable.function.shell

: (foo;bar)|baz  # `;` terminates group and command arguments
# ^^^^ meta.group.regexp.shell string.unquoted.shell
#     ^^^^^^^^^^ - meta.group
# ^ punctuation.section.group.begin.regexp.shell
#     ^ punctuation.terminator.statement.shell
#      ^^^ variable.function.shell
#         ^ invalid.illegal.stray.shell
#          ^ keyword.operator.assignment.pipe.shell
#           ^^^ variable.function.shell

: (foo>bar)|baz  # `>` terminates group and command arguments
# ^^^^ meta.group.regexp.shell string.unquoted.shell
#     ^^^^ meta.redirection.shell - meta.group
#         ^^^^^^ - meta.group - meta.redirection
# ^ punctuation.section.group.begin.regexp.shell
#     ^ keyword.operator.assignment.redirection.shell
#      ^^^ string.unquoted.shell
#         ^ invalid.illegal.stray.shell
#          ^ keyword.operator.assignment.pipe.shell
#           ^^^ variable.function.shell

: (foo<bar)|baz  # `<` terminates group and command arguments
# ^^^^ meta.group.regexp.shell string.unquoted.shell
#     ^^^^ meta.redirection.shell - meta.group
#         ^^^^^^ - meta.group - meta.redirection
# ^ punctuation.section.group.begin.regexp.shell
#     ^ keyword.operator.assignment.redirection.shell
#      ^^^ string.unquoted.shell
#         ^ invalid.illegal.stray.shell
#          ^ keyword.operator.assignment.pipe.shell
#           ^^^ variable.function.shell

  ^foo/bar ^foo/bar           # Matches anything except the pattern x
# ^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
#         ^ meta.function-call.arguments.shell - variable - string
#          ^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
#                  ^ - meta
# ^^^^^^^^ variable.function.shell
# ^ keyword.operator.logical.regexp.shell.zsh
#     ^ punctuation.separator.path.shell
#          ^^^^^^^^ string.unquoted.shell
#          ^ keyword.operator.logical.regexp.shell.zsh

  ^~/foo/bar ^~/foo/bar      # Matches anything except the pattern x
# ^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
#           ^ meta.function-call.arguments.shell - variable - string
#            ^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
#                      ^ - meta
# ^ keyword.operator.logical.regexp.shell.zsh
#  ^ variable.language.tilde.shell
#   ^^^^^^^^ variable.function.shell
#   ^ punctuation.separator.path.shell
#       ^ punctuation.separator.path.shell
#            ^ string.unquoted.shell keyword.operator.logical.regexp.shell.zsh
#             ^ variable.language.tilde.shell
#              ^^^^^^^^ string.unquoted.shell

  /foo~/bar /foo~/bar        # Match anything that matches the pattern x but does not match y
# ^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
#          ^ meta.function-call.arguments.shell - variable - string
#           ^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
#                    ^ - meta
# ^^^^^^^^^ variable.function.shell
# ^ punctuation.separator.path.shell
#     ^ keyword.operator.logical.regexp.shell.zsh
#      ^ punctuation.separator.path.shell
#           ^^^^^^^^^ string.unquoted.shell
#               ^ keyword.operator.logical.regexp.shell.zsh

  ^/foo~^/bar ^/foo~^/bar
# ^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
#            ^ meta.function-call.arguments.shell - variable - string
#             ^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
#                        ^ - meta
# ^^^^^^^^^^^ variable.function.shell
# ^ keyword.operator.logical.regexp.shell.zsh
#  ^ punctuation.separator.path.shell
#      ^^ keyword.operator.logical.regexp.shell.zsh
#        ^ punctuation.separator.path.shell
#             ^^^^^^^^^^^ string.unquoted.shell
#             ^ keyword.operator.logical.regexp.shell.zsh
#                  ^^ keyword.operator.logical.regexp.shell.zsh

  ~/foo~~/bar ~/foo~~/bar
# ^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
#            ^ meta.function-call.arguments.shell - variable - string
#             ^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
#                        ^ - meta
# ^ variable.language.tilde.shell
#  ^^^^^ variable.function.shell
#  ^ punctuation.separator.path.shell
#      ^ keyword.operator.logical.regexp.shell.zsh
#       ^ variable.language.tilde.shell
#        ^^^^ variable.function.shell
#        ^ punctuation.separator.path.shell
#             ^ variable.language.tilde.shell
#              ^^^^ string.unquoted.shell
#                  ^ keyword.operator.logical.regexp.shell.zsh
#                   ^ variable.language.tilde.shell
#                    ^^^^ string.unquoted.shell

  ^~/foo~^~/bar ^~/foo~^~/bar
# ^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell
#              ^ meta.function-call.arguments.shell - variable - string
#               ^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
#                            ^ - meta
#  ^ variable.language.tilde.shell
#   ^^^^ variable.function.shell
#   ^ punctuation.separator.path.shell
#       ^^ keyword.operator.logical.regexp.shell.zsh
#         ^ variable.language.tilde.shell
#          ^^^^ variable.function.shell
#          ^ punctuation.separator.path.shell
#                ^ variable.language.tilde.shell
#                 ^^^^ string.unquoted.shell
#                     ^^ keyword.operator.logical.regexp.shell.zsh
#                       ^ variable.language.tilde.shell
#                        ^^^^ string.unquoted.shell


###############################################################################
# 14.8.2 ksh-like Glob Operators
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#ksh_002dlike-Glob-Operators
# Note: KSH_GLOB is optional and thus not scoped in favor of EXTENDED_KOB
###############################################################################

: @(___) is (___)    # Match the pattern in the parentheses. (Like ‘(___)’.)
#  ^^^^^ meta.group.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ punctuation.section.group.end.regexp.shell
#           ^^^^^ meta.group.regexp.shell
#           ^ punctuation.section.group.begin.regexp.shell
#               ^ punctuation.section.group.end.regexp.shell

: *(___) is (___)#   # Match any number of occurrences. (Like ‘(___)#’, except that recursive directory searching is not supported.)
#  ^^^^^ meta.group.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ punctuation.section.group.end.regexp.shell
#           ^^^^^ meta.group.regexp.shell
#           ^ punctuation.section.group.begin.regexp.shell
#               ^ punctuation.section.group.end.regexp.shell
#                ^ keyword.operator.quantifier.regexp.shell

: +(___) is (___)##  # Match at least one occurrence. (Like ‘(___)##’, except that recursive directory searching is not supported.)
#  ^^^^^ meta.group.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ punctuation.section.group.end.regexp.shell
#           ^^^^^ meta.group.regexp.shell
#           ^ punctuation.section.group.begin.regexp.shell
#               ^ punctuation.section.group.end.regexp.shell
#                ^^ keyword.operator.quantifier.regexp.shell

: ?(___) is (|___)   # Match zero or one occurrence. (Like ‘(|___)’.)
#  ^^^^^ meta.group.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ punctuation.section.group.end.regexp.shell
#           ^^^^^^ meta.group.regexp.shell
#           ^ punctuation.section.group.begin.regexp.shell
#            ^ keyword.operator.alternation.regexp.shell
#                ^ punctuation.section.group.end.regexp.shell

: !(___) is (^(___)) # Match anything but the expression in parentheses. (Like ‘(^(___))’.)
#  ^^^^^ meta.group.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ punctuation.section.group.end.regexp.shell
#           ^^ meta.group.regexp.shell - meta.group.regexp meta.group.regexp
#           ^ punctuation.section.group.begin.regexp.shell
#            ^ keyword.operator.logical.regexp.shell
#             ^^^^^ meta.group.regexp.shell meta.group.regexp.shell
#             ^ punctuation.section.group.begin.regexp.shell
#                 ^^ punctuation.section.group.end.regexp.shell
#                  ^ meta.group.regexp.shell - meta.group.regexp meta.group.regexp


###############################################################################
# 14.8.4 Globbing Flags
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Globbing-Flags
###############################################################################

: (#i)       #  Match case-insensitively
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#l)       #  Lower case matches upper case
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#I)       #  Match case sensitively
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#b)       #  Parentheses set match, mbegin, mend
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#B)       #  Parentheses no longer set arrays
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#c1)      # requires exactly N matches
# ^^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.mode.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: (#c,4)     # requires maximum M matches
# ^^^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^^^ storage.modifier.mode.glob.shell.zsh
#      ^ punctuation.definition.modifier.end.shell.zsh

: (#c1,)     # requires at least N matches
# ^^^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^^^ storage.modifier.mode.glob.shell.zsh
#      ^ punctuation.definition.modifier.end.shell.zsh

: (#c1,4)    # requires between N and M matches
# ^^^^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^^^^ storage.modifier.mode.glob.shell.zsh
#       ^ punctuation.definition.modifier.end.shell.zsh

: (#c$start,$end)    # requires between N and M matches
# ^^^ meta.modifier.glob.shell.zsh - meta.interpolation
#    ^^^^^^ meta.modifier.glob.shell.zsh meta.interpolation.parameter.shell
#          ^ meta.modifier.glob.shell.zsh - meta.interpolation
#           ^^^^ meta.modifier.glob.shell.zsh meta.interpolation.parameter.shell
#               ^ meta.modifier.glob.shell.zsh - meta.interpolation
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^^^^^^ variable.other.readwrite.shell
#          ^ punctuation.separator.sequence.shell
#           ^^^^ variable.other.readwrite.shell
#               ^ punctuation.definition.modifier.end.shell.zsh

: (#m)       #  Match in MATCH, MBEGIN, MEND
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#M)       #  Don’t use MATCH etc.
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#a3)      #  Match with num approximations
# ^^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.mode.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh

: (#s)       #  Match only at start of test string
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#e)       #  Match only at end of test string
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#q)       #  A ‘q’ and everything up to the closing parenthesis of the globbing flags are ignored by the pattern matching code.
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#qexpr)   #  expr is a set of glob qualifiers (below)
# ^^^^^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh

: (#u)       #  Respect the current locale in determining the presence of multibyte characters in a pattern
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: (#U)       #  All characters are considered to be a single byte long.
# ^^^^ meta.modifier.glob.shell.zsh
# ^^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.mode.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

# examples

: (#ia2)readme # case-insensitive matching of readme with up to two errors.
# ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - string
#       ^^^^^^ meta.string.glob.shell string.unquoted.shell

: ((#i)foo)bar
# ^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell
# ^ meta.group.regexp.shell punctuation.section.group.begin.regexp.shell
#  ^^^^ meta.group.regexp.shell meta.modifier.glob.shell.zsh - string
#      ^^^^ meta.group.regexp.shell string.unquoted.shell
#          ^^^ string.unquoted.shell

arr=(veldt jynx grimps waqf zho buck)
print ${arr//(#m)[aeiou]/${(U)MATCH}}
#     ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell - meta.interpolation.parameter meta.interpolation.parameter
#                        ^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell meta.string.shell meta.interpolation.parameter.shell
#                                   ^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell - meta.interpolation.parameter meta.interpolation.parameter
#     ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
#      ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#       ^^^ variable.other.readwrite.shell
#          ^^ keyword.operator.substitution.shell
#            ^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell meta.modifier.glob.shell.zsh
#                ^^^^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell meta.set.regexp.shell
#                       ^ keyword.operator.substitution.shell
#                        ^ punctuation.definition.variable.shell
#                         ^ punctuation.section.interpolation.begin.shell
#                          ^^^ meta.interpolation.parameter.shell meta.modifier.expansion.shell.zsh
#                             ^^^^^ variable.language.builtin.shell
#                                  ^^ punctuation.section.interpolation.end.shell

: *((#s)|/)test((#e)|/)*
# ^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
# ^ constant.other.wildcard.asterisk.shell
#  ^ meta.group.regexp.shell - meta.modifier
#   ^^^^ meta.group.regexp.shell meta.modifier.glob.shell.zsh - string
#       ^^^ meta.group.regexp.shell - meta.modifier
#       ^^^^^^^^ string.unquoted.shell
#              ^ meta.group.regexp.shell - meta.modifier
#               ^^^^ meta.group.regexp.shell meta.modifier.glob.shell.zsh - string
#                   ^^^ meta.group.regexp.shell string.unquoted.shell - meta.modifier
#                      ^ constant.other.wildcard.asterisk.shell


###############################################################################
# 14.8.7 Glob Qualifiers
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Glob-Qualifiers
###############################################################################

: /(/)   # directories
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(F)   # ‘full’ (i.e. non-empty) directories. Note that the opposite sense (^F) expands to empty directories and all non-directories. Use (/^F) for empty directories.
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(.)   # plain files
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(@)   # symbolic links
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(=)   # sockets
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(p)   # named pipes (FIFOs)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(*)   # executable plain files (0100 or 0010 or 0001)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(%)   # device files (character or block special)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(%b)   # block special files
#  ^^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
: /(%c)   # character special files
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
: /(r)   # owner-readable files (0400)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(w)   # owner-writable files (0200)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(x)   # owner-executable files (0100)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(A)   # group-readable files (0040)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(I)   # group-writable files (0020)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(E)   # group-executable files (0010)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(R)   # world-readable files (0004)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(W)   # world-writable files (0002)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(X)   # world-executable files (0001)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(s)   # setuid files (04000)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(S)   # setgid files (02000)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh
: /(t)   # files with the sticky bit (01000)
#  ^^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(f70?) (f=7?0) (f+?70) (f-7${g}3)  # octal access right specification
#   ^ storage.modifier.glob.shell.zsh
#    ^^ meta.number.integer.octal.shell constant.numeric.value.shell
#      ^ meta.number.integer.octal.shell constant.other.wildcard.questionmark.shell
#          ^ storage.modifier.glob.shell.zsh
#           ^ keyword.operator.logical.shell.zsh
#            ^ meta.number.integer.octal.shell constant.numeric.value.shell
#             ^ meta.number.integer.octal.shell constant.other.wildcard.questionmark.shell
#              ^ meta.number.integer.octal.shell constant.numeric.value.shell
#                  ^ storage.modifier.glob.shell.zsh
#                   ^ keyword.operator.logical.shell.zsh
#                    ^ meta.number.integer.octal.shell constant.other.wildcard.questionmark.shell
#                     ^^ meta.number.integer.octal.shell constant.numeric.value.shell
#                          ^ storage.modifier.glob.shell.zsh
#                           ^ keyword.operator.logical.shell.zsh
#                            ^ meta.number.integer.octal.shell constant.numeric.value.shell
#                             ^^^^ meta.number.integer.octal.shell meta.interpolation.parameter.shell
#                                 ^ meta.number.integer.octal.shell constant.numeric.value.shell

: /(f$mode) (f=$mode) (f+$mode) (f-$mode)  # octal access right specification
#   ^ storage.modifier.glob.shell.zsh
#    ^^^^^ meta.number.integer.octal.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#            ^ storage.modifier.glob.shell.zsh
#             ^ keyword.operator.logical.shell.zsh
#              ^^^^^ meta.number.integer.octal.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                      ^ storage.modifier.glob.shell.zsh
#                       ^ keyword.operator.logical.shell.zsh
#                        ^^^^^ meta.number.integer.octal.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                ^ storage.modifier.glob.shell.zsh
#                                 ^ keyword.operator.logical.shell.zsh
#                                  ^^^^^ meta.number.integer.octal.shell meta.interpolation.parameter.shell variable.other.readwrite.shell

: /(f<gu+w,0-rx>) /(f{gu+w,0-rx}) /(f[gu+w,0-rx]) /(f(gu+w,0-rx)) /(f:gu+w,0-rx:)
#  ^^ meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#    ^^^^^^^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^^^^^^^ string.quoted.other.shell.zsh
#              ^ punctuation.definition.quoted.end.shell.zsh
#               ^ meta.modifier.glob.shell.zsh punctuation.definition.modifier.end.shell.zsh
#                  ^^ meta.modifier.glob.shell.zsh
#                  ^ punctuation.definition.modifier.begin.shell.zsh
#                    ^^^^^^^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                    ^ punctuation.definition.quoted.begin.shell.zsh
#                     ^^^^^^^^^ string.quoted.other.shell.zsh
#                              ^ punctuation.definition.quoted.end.shell.zsh
#                               ^ meta.modifier.glob.shell.zsh punctuation.definition.modifier.end.shell.zsh
#                                  ^^ meta.modifier.glob.shell.zsh
#                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                    ^^^^^^^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                    ^ punctuation.definition.quoted.begin.shell.zsh
#                                     ^^^^^^^^^ string.quoted.other.shell.zsh
#                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                               ^ meta.modifier.glob.shell.zsh punctuation.definition.modifier.end.shell.zsh
#                                                  ^^ meta.modifier.glob.shell.zsh
#                                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                                    ^^^^^^^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                    ^ punctuation.definition.quoted.begin.shell.zsh
#                                                     ^^^^^^^^^ string.quoted.other.shell.zsh
#                                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                                               ^ meta.modifier.glob.shell.zsh punctuation.definition.modifier.end.shell.zsh
#                                                                  ^^ meta.modifier.glob.shell.zsh
#                                                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                                                    ^^^^^^^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                                    ^ punctuation.definition.quoted.begin.shell.zsh
#                                                                     ^^^^^^^^^ string.quoted.other.shell.zsh
#                                                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                                                               ^ meta.modifier.glob.shell.zsh punctuation.definition.modifier.end.shell.zsh

: /(e<foo -a | bar $v>) /(e<"foo -a | bar $v">) /(e<'foo -a | bar $v'>)
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ meta.function-call.identifier.shell meta.command.shell
#        ^^^ meta.function-call.arguments.shell
#           ^^^ - meta.modifier meta.function-call
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^ meta.function-call.arguments.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                            ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                           ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ storage.modifier.glob.shell.zsh
#                          ^^ punctuation.definition.quoted.begin.shell
#                            ^^^ meta.function-call.identifier.shell meta.command.shell
#                               ^^^ meta.function-call.arguments.shell
#                                  ^^^ - meta.modifier meta.function-call
#                                     ^^^ meta.function-call.identifier.shell meta.command.shell
#                                        ^^^ meta.function-call.arguments.shell
#                                           ^^ punctuation.definition.quoted.end.shell
#                                             ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                    ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                                                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                 ^ storage.modifier.glob.shell.zsh
#                                                  ^^ punctuation.definition.quoted.begin.shell
#                                                    ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                       ^^^ meta.function-call.arguments.shell
#                                                          ^^^ - meta.modifier meta.function-call
#                                                             ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                                ^^^ meta.function-call.arguments.shell
#                                                                   ^^ punctuation.definition.quoted.end.shell
#                                                                     ^ punctuation.definition.modifier.end.shell.zsh

: /(e{foo -a | bar $v}) /(e{"foo -a | bar $v"}) /(e{'foo -a | bar $v'})
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ meta.function-call.identifier.shell meta.command.shell
#        ^^^ meta.function-call.arguments.shell
#           ^^^ - meta.modifier meta.function-call
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^ meta.function-call.arguments.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                            ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                           ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ storage.modifier.glob.shell.zsh
#                          ^^ punctuation.definition.quoted.begin.shell
#                            ^^^ meta.function-call.identifier.shell meta.command.shell
#                               ^^^ meta.function-call.arguments.shell
#                                  ^^^ - meta.modifier meta.function-call
#                                     ^^^ meta.function-call.identifier.shell meta.command.shell
#                                        ^^^ meta.function-call.arguments.shell
#                                           ^^ punctuation.definition.quoted.end.shell
#                                             ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                    ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                                                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                 ^ storage.modifier.glob.shell.zsh
#                                                  ^^ punctuation.definition.quoted.begin.shell
#                                                    ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                       ^^^ meta.function-call.arguments.shell
#                                                          ^^^ - meta.modifier meta.function-call
#                                                             ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                                ^^^ meta.function-call.arguments.shell
#                                                                   ^^ punctuation.definition.quoted.end.shell
#                                                                     ^ punctuation.definition.modifier.end.shell.zsh

: /(e[foo -a | bar $v]) /(e["foo -a | bar $v"]) /(e['foo -a | bar $v'])
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ meta.function-call.identifier.shell meta.command.shell
#        ^^^ meta.function-call.arguments.shell
#           ^^^ - meta.modifier meta.function-call
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^ meta.function-call.arguments.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                            ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                           ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ storage.modifier.glob.shell.zsh
#                          ^^ punctuation.definition.quoted.begin.shell
#                            ^^^ meta.function-call.identifier.shell meta.command.shell
#                               ^^^ meta.function-call.arguments.shell
#                                  ^^^ - meta.modifier meta.function-call
#                                     ^^^ meta.function-call.identifier.shell meta.command.shell
#                                        ^^^ meta.function-call.arguments.shell
#                                           ^^ punctuation.definition.quoted.end.shell
#                                             ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                    ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                                                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                 ^ storage.modifier.glob.shell.zsh
#                                                  ^^ punctuation.definition.quoted.begin.shell
#                                                    ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                       ^^^ meta.function-call.arguments.shell
#                                                          ^^^ - meta.modifier meta.function-call
#                                                             ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                                ^^^ meta.function-call.arguments.shell
#                                                                   ^^ punctuation.definition.quoted.end.shell
#                                                                     ^ punctuation.definition.modifier.end.shell.zsh

: /(e(foo -a | bar $v)) /(e("foo -a | bar $v")) /(e('foo -a | bar $v'))
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ meta.function-call.identifier.shell meta.command.shell
#        ^^^ meta.function-call.arguments.shell
#           ^^^ - meta.modifier meta.function-call
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^ meta.function-call.arguments.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                            ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                           ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ storage.modifier.glob.shell.zsh
#                          ^^ punctuation.definition.quoted.begin.shell
#                            ^^^ meta.function-call.identifier.shell meta.command.shell
#                               ^^^ meta.function-call.arguments.shell
#                                  ^^^ - meta.modifier meta.function-call
#                                     ^^^ meta.function-call.identifier.shell meta.command.shell
#                                        ^^^ meta.function-call.arguments.shell
#                                           ^^ punctuation.definition.quoted.end.shell
#                                             ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                    ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                                                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                 ^ storage.modifier.glob.shell.zsh
#                                                  ^^ punctuation.definition.quoted.begin.shell
#                                                    ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                       ^^^ meta.function-call.arguments.shell
#                                                          ^^^ - meta.modifier meta.function-call
#                                                             ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                                ^^^ meta.function-call.arguments.shell
#                                                                   ^^ punctuation.definition.quoted.end.shell
#                                                                     ^ punctuation.definition.modifier.end.shell.zsh

: /(e:foo -a | bar $v:) /(e:"foo -a | bar $v":) /(e:'foo -a | bar $v':)
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ meta.function-call.identifier.shell meta.command.shell
#        ^^^ meta.function-call.arguments.shell
#           ^^^ - meta.modifier meta.function-call
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^ meta.function-call.arguments.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                            ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                           ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ storage.modifier.glob.shell.zsh
#                          ^^ punctuation.definition.quoted.begin.shell
#                            ^^^ meta.function-call.identifier.shell meta.command.shell
#                               ^^^ meta.function-call.arguments.shell
#                                  ^^^ - meta.modifier meta.function-call
#                                     ^^^ meta.function-call.identifier.shell meta.command.shell
#                                        ^^^ meta.function-call.arguments.shell
#                                           ^^ punctuation.definition.quoted.end.shell
#                                             ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                    ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                                                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                 ^ storage.modifier.glob.shell.zsh
#                                                  ^^ punctuation.definition.quoted.begin.shell
#                                                    ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                       ^^^ meta.function-call.arguments.shell
#                                                          ^^^ - meta.modifier meta.function-call
#                                                             ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                                ^^^ meta.function-call.arguments.shell
#                                                                   ^^ punctuation.definition.quoted.end.shell
#                                                                     ^ punctuation.definition.modifier.end.shell.zsh

: /(e'foo -a | bar $v') /(e'"foo -a | bar $v"') /(e"'foo -a | bar $v'")
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ meta.function-call.identifier.shell meta.command.shell
#        ^^^ meta.function-call.arguments.shell
#           ^^^ - meta.modifier meta.function-call
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^ meta.function-call.arguments.shell
#                    ^ punctuation.definition.quoted.end.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                            ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                           ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                        ^ punctuation.definition.modifier.begin.shell.zsh
#                         ^ storage.modifier.glob.shell.zsh
#                          ^^ punctuation.definition.quoted.begin.shell
#                            ^^^ meta.function-call.identifier.shell meta.command.shell
#                               ^^^ meta.function-call.arguments.shell
#                                  ^^^ - meta.modifier meta.function-call
#                                     ^^^ meta.function-call.identifier.shell meta.command.shell
#                                        ^^^ meta.function-call.arguments.shell
#                                           ^^ punctuation.definition.quoted.end.shell
#                                             ^ punctuation.definition.modifier.end.shell.zsh
#                                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                    ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh meta.interpolation.command.shell
#                                                                   ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh - meta.interpolation
#                                                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                                 ^ storage.modifier.glob.shell.zsh
#                                                  ^^ punctuation.definition.quoted.begin.shell
#                                                    ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                       ^^^ meta.function-call.arguments.shell
#                                                          ^^^ - meta.modifier meta.function-call
#                                                             ^^^ meta.function-call.identifier.shell meta.command.shell
#                                                                ^^^ meta.function-call.arguments.shell
#                                                                   ^^ punctuation.definition.quoted.end.shell
#                                                                     ^ punctuation.definition.modifier.end.shell.zsh

: /(G120) /(G<gid>) /(G{gid}) /(G[gid]) /(G(gid)) /(G:gid:)
#  ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh
#        ^ - meta.string - meta.modifier
#          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#            ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                  ^ - meta.string - meta.modifier
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^ storage.modifier.glob.shell.zsh
#            ^ punctuation.definition.quoted.begin.shell.zsh
#             ^^^ string.quoted.other.shell.zsh
#                ^ punctuation.definition.quoted.end.shell.zsh
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                    ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                      ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                           ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                            ^ - meta.string - meta.modifier
#                    ^ punctuation.definition.modifier.begin.shell.zsh
#                     ^ storage.modifier.glob.shell.zsh
#                      ^ punctuation.definition.quoted.begin.shell.zsh
#                       ^^^ string.quoted.other.shell.zsh
#                          ^ punctuation.definition.quoted.end.shell.zsh
#                           ^ punctuation.definition.modifier.end.shell.zsh
#                              ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                      ^ - meta.string - meta.modifier
#                              ^ punctuation.definition.modifier.begin.shell.zsh
#                               ^ storage.modifier.glob.shell.zsh
#                                ^ punctuation.definition.quoted.begin.shell.zsh
#                                 ^^^ string.quoted.other.shell.zsh
#                                    ^ punctuation.definition.quoted.end.shell.zsh
#                                     ^ punctuation.definition.modifier.end.shell.zsh
#                                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                          ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                               ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                ^ - meta.string - meta.modifier
#                                        ^ punctuation.definition.modifier.begin.shell.zsh
#                                         ^ storage.modifier.glob.shell.zsh
#                                          ^ punctuation.definition.quoted.begin.shell.zsh
#                                           ^^^ string.quoted.other.shell.zsh
#                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                               ^ punctuation.definition.modifier.end.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                    ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                         ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                          ^ - meta.string - meta.modifier
#                                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                                   ^ storage.modifier.glob.shell.zsh
#                                                    ^ punctuation.definition.quoted.begin.shell.zsh
#                                                     ^^^ string.quoted.other.shell.zsh
#                                                        ^ punctuation.definition.quoted.end.shell.zsh
#                                                         ^ punctuation.definition.modifier.end.shell.zsh

: /(U123) /(U<uid>) /(U{uid}) /(U[uid]) /(U(uid)) /(U:uid:)
#  ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh
#        ^ - meta.string - meta.modifier
#          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#            ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                  ^ - meta.string - meta.modifier
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^ storage.modifier.glob.shell.zsh
#            ^ punctuation.definition.quoted.begin.shell.zsh
#             ^^^ string.quoted.other.shell.zsh
#                ^ punctuation.definition.quoted.end.shell.zsh
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                    ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                      ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                           ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                            ^ - meta.string - meta.modifier
#                    ^ punctuation.definition.modifier.begin.shell.zsh
#                     ^ storage.modifier.glob.shell.zsh
#                      ^ punctuation.definition.quoted.begin.shell.zsh
#                       ^^^ string.quoted.other.shell.zsh
#                          ^ punctuation.definition.quoted.end.shell.zsh
#                           ^ punctuation.definition.modifier.end.shell.zsh
#                              ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                     ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                      ^ - meta.string - meta.modifier
#                              ^ punctuation.definition.modifier.begin.shell.zsh
#                               ^ storage.modifier.glob.shell.zsh
#                                ^ punctuation.definition.quoted.begin.shell.zsh
#                                 ^^^ string.quoted.other.shell.zsh
#                                    ^ punctuation.definition.quoted.end.shell.zsh
#                                     ^ punctuation.definition.modifier.end.shell.zsh
#                                        ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                          ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                               ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                ^ - meta.string - meta.modifier
#                                        ^ punctuation.definition.modifier.begin.shell.zsh
#                                         ^ storage.modifier.glob.shell.zsh
#                                          ^ punctuation.definition.quoted.begin.shell.zsh
#                                           ^^^ string.quoted.other.shell.zsh
#                                              ^ punctuation.definition.quoted.end.shell.zsh
#                                               ^ punctuation.definition.modifier.end.shell.zsh
#                                                  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                    ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                         ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                          ^ - meta.string - meta.modifier
#                                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                                   ^ storage.modifier.glob.shell.zsh
#                                                    ^ punctuation.definition.quoted.begin.shell.zsh
#                                                     ^^^ string.quoted.other.shell.zsh
#                                                        ^ punctuation.definition.quoted.end.shell.zsh
#                                                         ^ punctuation.definition.modifier.end.shell.zsh

: /(aM-5) /(mm+5) /(cs100) # access time, modification time, creation time
#  ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.glob.shell.zsh
#     ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh
#          ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^^ storage.modifier.glob.shell.zsh
#             ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ punctuation.definition.modifier.end.shell.zsh
#                  ^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                  ^ punctuation.definition.modifier.begin.shell.zsh
#                   ^^ storage.modifier.glob.shell.zsh
#                     ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                        ^ punctuation.definition.modifier.end.shell.zsh

: /(Lk-5) /(LM+5) /(LG100) # file size
#  ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.glob.shell.zsh
#     ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh
#          ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^^ storage.modifier.glob.shell.zsh
#             ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ punctuation.definition.modifier.end.shell.zsh
#                  ^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                  ^ punctuation.definition.modifier.begin.shell.zsh
#                   ^^ storage.modifier.glob.shell.zsh
#                     ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                        ^ punctuation.definition.modifier.end.shell.zsh

: /(^)   # negates all qualifiers following it
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ keyword.operator.logical.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(-)   # toggles between making the qualifiers work on symbolic links (the default) and the files they point to
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ keyword.operator.logical.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(M)   # sets the MARK_DIRS option for the current pattern
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(T)   # appends a trailing qualifier mark to the filenames
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(N)   # sets the NULL_GLOB option for the current pattern
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(D)   # sets the GLOB_DOTS option for the current pattern
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(n)   # sets the NUMERIC_GLOB_SORT option for the current pattern
#  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.modifier.end.shell.zsh

: /(Y10) # enables short-circuit mode: the pattern will expand to at most n filenames.
#  ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ punctuation.definition.modifier.end.shell.zsh

: /(on) /(oL) /(ol) /(oa) /(om) /(oc) /(od) /(oN) /(oe{'cmd arg'}) # specifies how the names of the files should be sorted
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#        ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.begin.shell.zsh
#         ^^ storage.modifier.glob.shell.zsh
#           ^ punctuation.definition.modifier.end.shell.zsh
#              ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#              ^ punctuation.definition.modifier.begin.shell.zsh
#               ^^ storage.modifier.glob.shell.zsh
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                    ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                    ^ punctuation.definition.modifier.begin.shell.zsh
#                     ^^ storage.modifier.glob.shell.zsh
#                       ^ punctuation.definition.modifier.end.shell.zsh
#                          ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^ punctuation.definition.modifier.begin.shell.zsh
#                           ^^ storage.modifier.glob.shell.zsh
#                             ^ punctuation.definition.modifier.end.shell.zsh
#                                ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                 ^^ storage.modifier.glob.shell.zsh
#                                   ^ punctuation.definition.modifier.end.shell.zsh
#                                      ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                      ^ punctuation.definition.modifier.begin.shell.zsh
#                                       ^^ storage.modifier.glob.shell.zsh
#                                         ^ punctuation.definition.modifier.end.shell.zsh
#                                            ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                            ^ punctuation.definition.modifier.begin.shell.zsh
#                                             ^^ storage.modifier.glob.shell.zsh
#                                               ^ punctuation.definition.modifier.end.shell.zsh
#                                                  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                     ^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                                ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                                   ^^ storage.modifier.glob.shell.zsh
#                                                     ^ punctuation.definition.quoted.begin.shell.zsh
#                                                      ^ punctuation.definition.quoted.begin.shell
#                                                       ^^^ variable.function.shell
#                                                           ^^^ string.unquoted.shell
#                                                              ^^ punctuation.definition.quoted.end.shell
#                                                                ^ punctuation.definition.modifier.end.shell.zsh

: /(On) /(OL) /(Ol) /(Oa) /(Om) /(Oc) /(Od) /(ON) /(Oe{'cmd arg'}) # like 'o', but sorts in descending order
#  ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#        ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.begin.shell.zsh
#         ^^ storage.modifier.glob.shell.zsh
#           ^ punctuation.definition.modifier.end.shell.zsh
#              ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#              ^ punctuation.definition.modifier.begin.shell.zsh
#               ^^ storage.modifier.glob.shell.zsh
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                    ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                    ^ punctuation.definition.modifier.begin.shell.zsh
#                     ^^ storage.modifier.glob.shell.zsh
#                       ^ punctuation.definition.modifier.end.shell.zsh
#                          ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                          ^ punctuation.definition.modifier.begin.shell.zsh
#                           ^^ storage.modifier.glob.shell.zsh
#                             ^ punctuation.definition.modifier.end.shell.zsh
#                                ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                 ^^ storage.modifier.glob.shell.zsh
#                                   ^ punctuation.definition.modifier.end.shell.zsh
#                                      ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                      ^ punctuation.definition.modifier.begin.shell.zsh
#                                       ^^ storage.modifier.glob.shell.zsh
#                                         ^ punctuation.definition.modifier.end.shell.zsh
#                                            ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                            ^ punctuation.definition.modifier.begin.shell.zsh
#                                             ^^ storage.modifier.glob.shell.zsh
#                                               ^ punctuation.definition.modifier.end.shell.zsh
#                                                  ^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                     ^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                                ^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#                                                  ^ punctuation.definition.modifier.begin.shell.zsh
#                                                   ^^ storage.modifier.glob.shell.zsh
#                                                     ^ punctuation.definition.quoted.begin.shell.zsh
#                                                      ^ punctuation.definition.quoted.begin.shell
#                                                       ^^^ variable.function.shell
#                                                           ^^^ string.unquoted.shell
#                                                              ^^ punctuation.definition.quoted.end.shell
#                                                                ^ punctuation.definition.modifier.end.shell.zsh

: /([10]) /([1,20]) /([$start,1${end}2]) # specifies which of the matched filenames should be included in the returned list.
#  ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.range
#   ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.range.glob.shell.zsh
#       ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.range
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ punctuation.definition.range.begin.shell.zsh
#    ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ punctuation.definition.range.end.shell.zsh
#       ^ punctuation.definition.modifier.end.shell.zsh
#          ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.range
#           ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.range.glob.shell.zsh
#                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.range
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^ punctuation.definition.range.begin.shell.zsh
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ punctuation.separator.sequence.shell
#              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ punctuation.definition.range.end.shell.zsh
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.range
#                     ^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.range.glob.shell.zsh
#                                      ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.range
#                     ^ punctuation.definition.range.begin.shell.zsh
#                      ^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                            ^ punctuation.separator.sequence.shell
#                             ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                              ^^^^^^ meta.number.integer.decimal.shell meta.interpolation.parameter.shell - constant
#                                    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                     ^ punctuation.definition.range.end.shell.zsh
#                                      ^ meta.modifier.glob.shell.zsh punctuation.definition.modifier.end.shell.zsh

: /*(["1+var", foo ? 2 : 5])
# ^^ meta.string.glob.shell string.unquoted.shell
#   ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - string
#    ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.range.glob.shell.zsh - string
#     ^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.range.glob.shell.zsh meta.arithmetic.shell - string
#                         ^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.range.glob.shell.zsh - string
#                          ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - string
#  ^ constant.other.wildcard.asterisk.shell
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ punctuation.definition.range.begin.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell
#      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ keyword.operator.arithmetic.shell
#        ^^^ variable.other.readwrite.shell
#           ^ punctuation.definition.quoted.end.shell
#            ^ punctuation.separator.sequence.shell
#              ^^^ variable.other.readwrite.shell
#                  ^ keyword.operator.ternary.shell
#                    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                      ^ keyword.operator.ternary.shell
#                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                         ^ punctuation.definition.range.end.shell.zsh
#                          ^ punctuation.definition.modifier.end.shell.zsh

: /(P"pre") /(P<pre>) /(P{pre}) /(P[pre]) /(P(pre)) /(P:pre:)
#  ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#    ^^^^^ meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#         ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#  ^ punctuation.definition.modifier.begin.shell.zsh
#   ^ storage.modifier.glob.shell.zsh
#    ^ punctuation.definition.quoted.begin.shell.zsh
#     ^^^ string.quoted.other.shell.zsh
#        ^ punctuation.definition.quoted.end.shell.zsh
#         ^ punctuation.definition.modifier.end.shell.zsh
#          ^ - meta.string - meta.modifier
#            ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#              ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                   ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                    ^ - meta.string - meta.modifier
#            ^ punctuation.definition.modifier.begin.shell.zsh
#             ^ storage.modifier.glob.shell.zsh
#              ^ punctuation.definition.quoted.begin.shell.zsh
#               ^^^ string.quoted.other.shell.zsh
#                  ^ punctuation.definition.quoted.end.shell.zsh
#                   ^ punctuation.definition.modifier.end.shell.zsh
#                      ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                        ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                              ^ - meta.string - meta.modifier
#                      ^ punctuation.definition.modifier.begin.shell.zsh
#                       ^ storage.modifier.glob.shell.zsh
#                        ^ punctuation.definition.quoted.begin.shell.zsh
#                         ^^^ string.quoted.other.shell.zsh
#                            ^ punctuation.definition.quoted.end.shell.zsh
#                             ^ punctuation.definition.modifier.end.shell.zsh
#                                ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                  ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                       ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                        ^ - meta.string - meta.modifier
#                                ^ punctuation.definition.modifier.begin.shell.zsh
#                                 ^ storage.modifier.glob.shell.zsh
#                                  ^ punctuation.definition.quoted.begin.shell.zsh
#                                   ^^^ string.quoted.other.shell.zsh
#                                      ^ punctuation.definition.quoted.end.shell.zsh
#                                       ^ punctuation.definition.modifier.end.shell.zsh
#                                          ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                            ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                 ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                  ^ - meta.string - meta.modifier
#                                          ^ punctuation.definition.modifier.begin.shell.zsh
#                                           ^ storage.modifier.glob.shell.zsh
#                                            ^ punctuation.definition.quoted.begin.shell.zsh
#                                             ^^^ string.quoted.other.shell.zsh
#                                                ^ punctuation.definition.quoted.end.shell.zsh
#                                                 ^ punctuation.definition.modifier.end.shell.zsh
#                                                    ^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                      ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.quoted.glob.shell.zsh
#                                                           ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.quoted
#                                                            ^ - meta.string - meta.modifier
#                                                    ^ punctuation.definition.modifier.begin.shell.zsh
#                                                     ^ storage.modifier.glob.shell.zsh
#                                                      ^ punctuation.definition.quoted.begin.shell.zsh
#                                                       ^^^ string.quoted.other.shell.zsh
#                                                          ^ punctuation.definition.quoted.end.shell.zsh
#                                                           ^ punctuation.definition.modifier.end.shell.zsh

a=(/*(/:t)) # qualifiers are valid in arrays
# ^ meta.sequence.list.shell - meta.string
#  ^^ meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
#    ^^^^^ meta.sequence.list.shell meta.string.glob.shell meta.modifier.glob.shell.zsh
#         ^ meta.sequence.list.shell - meta.string
# ^ punctuation.section.sequence.begin.shell
#   ^ constant.other.wildcard.asterisk.shell
#    ^ punctuation.definition.modifier.begin.shell.zsh
#     ^ storage.modifier.glob.shell.zsh
#      ^ punctuation.separator.sequence.shell.zsh
#       ^ storage.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh
#         ^ punctuation.section.sequence.end.shell

: (/*(/:t)) # qualifiers are not valid in groups
# ^^^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell - meta.modifier
#    ^^^^^ meta.string.glob.shell meta.group.regexp.shell meta.group.regexp.shell string.unquoted.shell - meta.modifier
#         ^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell - meta.modifier
# ^ meta.group.regexp.shell string.unquoted.shell punctuation.section.group.begin.regexp.shell
#   ^ constant.other.wildcard.asterisk.shell
#    ^ punctuation.section.group.begin.regexp.shell
#        ^^ punctuation.section.group.end.regexp.shell

ls /(D)/  # qualifiers are always located at the end
#  ^^^^^ meta.string.glob.shell string.unquoted.shell
#   ^^^ meta.group.regexp.shell - meta.modifier

#  lists all directories and symbolic links that point to directories, and
ls -ld -- *(-/)
#         ^ meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
#          ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^ keyword.operator.logical.shell.zsh
#            ^ storage.modifier.glob.shell.zsh
#             ^ punctuation.definition.modifier.end.shell.zsh

# lists all broken symbolic links, and
ls -ld -- *(-@)
#         ^ meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
#          ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^ keyword.operator.logical.shell.zsh
#            ^ storage.modifier.glob.shell.zsh
#             ^ punctuation.definition.modifier.end.shell.zsh

# lists all world-writable device files in the current directory, and
ls -ld -- *(%W)
#         ^ meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
#          ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^^ storage.modifier.glob.shell.zsh
#             ^ punctuation.definition.modifier.end.shell.zsh

# lists all files in the current directory that are world-writable or world-executable, and
ls -ld -- *(W,X)
#         ^ meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
#          ^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.begin.shell.zsh
#           ^ storage.modifier.glob.shell.zsh
#            ^ punctuation.separator.sequence.shell
#             ^ storage.modifier.glob.shell.zsh
#              ^ punctuation.definition.modifier.end.shell.zsh

# outputs the basename of all root-owned files beginning with the string ‘foo’
# in /tmp, ignoring symlinks, and
print -rC1 /tmp/foo*(u0^@:t)
#          ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                   ^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh

# lists all files having a link count of one whose names contain a dot (but
# not those starting with a dot, since GLOB_DOTS is explicitly switched off)
# except for lex.c, lex.h, parse.c and parse.h.
ls -ld -- *.*~(lex|parse).[ch](^D^l1)
#         ^^^^ meta.string.glob.shell string.unquoted.shell
#             ^^^^^^^^^^^ meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
#                        ^ meta.string.glob.shell string.unquoted.shell
#                         ^^^^ meta.string.glob.shell string.unquoted.shell meta.set.regexp.shell
#                             ^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh

# demonstrates how colon modifiers and other qualifiers may be chained together.
print -rC1 b*.pro(#q:s/pro/shmo/)(#q.:s@builtin@"sh${mi}ltin"@)
#          ^^^^^^ meta.string.glob.shell string.unquoted.shell
#                ^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                    ^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.substitution.shell.zsh
#                               ^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                                     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.modifier.glob.shell.zsh meta.substitution.shell.zsh
#                                                             ^ meta.string.glob.shell meta.modifier.glob.shell.zsh - meta.substitution
#                                                              ^ - meta.string - meta.modifier


###[ COMMON EXPANSIONS ]#######################################################

# https://wiki.zshell.dev/community/zsh_guide/roadmap/expansion
ls *(.)                              # List just regular files
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^ meta.function-call.arguments.shell
#  ^^^^ meta.string.glob.shell
#  ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#   ^^^ meta.modifier.glob.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -ld *(/om[1,3])                   # Show three newest directories, "om" orders by modification. "[1,3]" works like Python slice
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#      ^^^^^^^^^^^ meta.string.glob.shell
#      ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#       ^^^^^^^^^^ meta.modifier.glob.shell.zsh
#       ^ punctuation.definition.modifier.begin.shell.zsh
#        ^^^ storage.modifier.glob.shell.zsh
#           ^^^^^ meta.range.glob.shell.zsh
#           ^ punctuation.definition.range.begin.shell.zsh
#            ^^^ meta.arithmetic.shell
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ punctuation.separator.sequence.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ punctuation.definition.range.end.shell.zsh
#                ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

rm -i *(.L0)                         # Remove zero length files, prompt for each file
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^ meta.string.glob.shell
#     ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#      ^^^^^ meta.modifier.glob.shell.zsh
#      ^ punctuation.definition.modifier.begin.shell.zsh
#       ^^ storage.modifier.glob.shell.zsh
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls *(^m0)                            # Files not modified today
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^ meta.string.glob.shell
#  ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#   ^^^^^ meta.modifier.glob.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ keyword.operator.logical.shell.zsh
#     ^ storage.modifier.glob.shell.zsh
#      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls **/*(.x)                          # List all executable files in this tree
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^ meta.string.glob.shell
#  ^^ constant.other.wildcard.asterisk.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^^^^ meta.modifier.glob.shell.zsh
#      ^ punctuation.definition.modifier.begin.shell.zsh
#       ^^ storage.modifier.glob.shell.zsh
#         ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls *~*.*(.)                          # List all files that does not have a dot in the filename
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^ meta.string.glob.shell
#  ^^^^^ string.unquoted.shell
#  ^ constant.other.wildcard.asterisk.shell
#   ^ keyword.operator.logical.regexp.shell.zsh
#    ^ constant.other.wildcard.asterisk.shell
#      ^ constant.other.wildcard.asterisk.shell
#       ^^^ meta.modifier.glob.shell.zsh
#       ^ punctuation.definition.modifier.begin.shell.zsh
#        ^ storage.modifier.glob.shell.zsh
#         ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l */**(Lk+100)                   # List all files larger than 100kb in this tree
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^^^^^ meta.string.glob.shell
#     ^^^^ string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#       ^^ constant.other.wildcard.asterisk.shell
#         ^^^^^^^^ meta.modifier.glob.shell.zsh
#         ^ punctuation.definition.modifier.begin.shell.zsh
#          ^^ storage.modifier.glob.shell.zsh
#            ^^^^ meta.number.integer.decimal.shell
#            ^ keyword.operator.arithmetic.shell
#             ^^^ constant.numeric.value.shell
#                ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls DATA_[0-9](#c4,7).csv             # List DATA_nnnn.csv to DATA_nnnnnnn.csv
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#  ^^^^^^^^^^ string.unquoted.shell
#       ^^^^^ meta.set.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#        ^^^ constant.other.range.regexp.shell
#         ^ punctuation.separator.sequence.regexp.shell
#           ^ punctuation.definition.set.end.regexp.shell
#            ^^^^^^^ meta.modifier.glob.shell.zsh
#            ^^ punctuation.definition.modifier.begin.shell.zsh
#              ^^^^ storage.modifier.mode.glob.shell.zsh
#                ^ punctuation.separator.sequence.shell
#                  ^ punctuation.definition.modifier.end.shell.zsh
#                   ^^^^ string.unquoted.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

rm ../debianpackage(.)               # Remove files only
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#  ^^^^^^^^^^^^^^^^ string.unquoted.shell
#                  ^^^ meta.modifier.glob.shell.zsh
#                  ^ punctuation.definition.modifier.begin.shell.zsh
#                   ^ storage.modifier.glob.shell.zsh
#                    ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -d *(/)                           # List directories only
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^ meta.string.glob.shell
#     ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#      ^^^ meta.modifier.glob.shell.zsh
#      ^ punctuation.definition.modifier.begin.shell.zsh
#       ^ storage.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls /etc/*(@)                         # List symlinks only
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^ meta.string.glob.shell
#  ^^^^^^ string.unquoted.shell
#       ^ constant.other.wildcard.asterisk.shell
#        ^^^ meta.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.begin.shell.zsh
#         ^ storage.modifier.glob.shell.zsh
#          ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l *.(png|jpg|gif)                # List pictures only
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^^^^^^^^ meta.string.glob.shell
#     ^^ string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#       ^^^^^^^^^^^^^ meta.group.regexp.shell string.unquoted.shell
#       ^ punctuation.section.group.begin.regexp.shell
#           ^ keyword.operator.alternation.regexp.shell
#               ^ keyword.operator.alternation.regexp.shell
#                   ^ punctuation.section.group.end.regexp.shell
#                                    ^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls *(*)                              # List executables only
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^ meta.function-call.arguments.shell
#  ^^^^ meta.string.glob.shell
#  ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#   ^^^ meta.modifier.glob.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls /etc/**/zsh                       # Which directories contain zsh?
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#       ^^ constant.other.wildcard.asterisk.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls **/*(-@)                          # List dangling symlinks (** recurses down directory trees)
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^ meta.string.glob.shell
#  ^^^^ string.unquoted.shell
#  ^^ constant.other.wildcard.asterisk.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^^^^ meta.modifier.glob.shell.zsh
#      ^ punctuation.definition.modifier.begin.shell.zsh
#       ^ keyword.operator.logical.shell.zsh
#        ^ storage.modifier.glob.shell.zsh
#         ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls foo*~*bar*                        # Match everything that starts with foo but doesn't contain bar
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^ keyword.operator.logical.regexp.shell.zsh
#       ^ constant.other.wildcard.asterisk.shell
#           ^ constant.other.wildcard.asterisk.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls *(e:'file $REPLY | grep -q JPEG':) # Match all files of which file says that they are JPEGs
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#  ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.modifier.glob.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.glob.shell.zsh
#     ^ punctuation.definition.quoted.begin.shell.zsh
#      ^ punctuation.definition.quoted.begin.shell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#       ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#           ^^^^^^^ meta.function-call.arguments.shell
#            ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.builtin.shell
#            ^ punctuation.definition.variable.shell
#                   ^ keyword.operator.assignment.pipe.shell
#                     ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                         ^^^^^^^^ meta.function-call.arguments.shell
#                          ^^ meta.parameter.option.shell variable.parameter.option.shell
#                          ^ punctuation.definition.parameter.shell
#                             ^^^^ meta.string.glob.shell string.unquoted.shell
#                                 ^ punctuation.definition.quoted.end.shell
#                                  ^ punctuation.definition.quoted.end.shell.zsh
#                                   ^ punctuation.definition.modifier.end.shell.zsh
#                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                     ^ punctuation.definition.comment.shell

ls -ldrt -- *(mm+15)                 # List all files older than 15mins
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#        ^^ keyword.operator.end-of-options.shell
#           ^^^^^^^^ meta.string.glob.shell
#           ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#            ^^^^^^^ meta.modifier.glob.shell.zsh
#            ^ punctuation.definition.modifier.begin.shell.zsh
#             ^^ storage.modifier.glob.shell.zsh
#               ^^^ meta.number.integer.decimal.shell
#               ^ keyword.operator.arithmetic.shell
#                ^^ constant.numeric.value.shell
#                  ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -ldrt -- *(.mm+15)                # List just regular files
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#        ^^ keyword.operator.end-of-options.shell
#           ^^^^^^^^^ meta.string.glob.shell
#           ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#            ^^^^^^^^ meta.modifier.glob.shell.zsh
#            ^ punctuation.definition.modifier.begin.shell.zsh
#             ^^^ storage.modifier.glob.shell.zsh
#                ^^^ meta.number.integer.decimal.shell
#                ^ keyword.operator.arithmetic.shell
#                 ^^ constant.numeric.value.shell
#                   ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -ld /my/path/**/*(D@-^@)          # List the unbroken symlinks under a directory
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#      ^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#      ^^^^^^^^^^^^^ string.unquoted.shell
#               ^^ constant.other.wildcard.asterisk.shell
#                  ^ constant.other.wildcard.asterisk.shell
#                   ^^^^^^^ meta.modifier.glob.shell.zsh
#                   ^ punctuation.definition.modifier.begin.shell.zsh
#                    ^^ storage.modifier.glob.shell.zsh
#                      ^^ keyword.operator.logical.shell.zsh
#                        ^ storage.modifier.glob.shell.zsh
#                         ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -Lldrt -- *(-mm+15)               # List the age of the pointed-to file for symlinks
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#         ^^ keyword.operator.end-of-options.shell
#            ^^^^^^^^^ meta.string.glob.shell
#            ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#             ^^^^^^^^ meta.modifier.glob.shell.zsh
#             ^ punctuation.definition.modifier.begin.shell.zsh
#              ^ keyword.operator.logical.shell.zsh
#               ^^ storage.modifier.glob.shell.zsh
#                 ^^^ meta.number.integer.decimal.shell
#                 ^ keyword.operator.arithmetic.shell
#                  ^^ constant.numeric.value.shell
#                    ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l **/README                      # Search for README in all Subdirectories
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#     ^^ constant.other.wildcard.asterisk.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l foo<23->                       # List files beginning at foo23 upwards (foo23, foo24, foo25, ..)
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^ meta.string.glob.shell
#     ^^^ string.unquoted.shell
#        ^^^^^ meta.range.shell.zsh
#        ^ punctuation.definition.range.begin.shell.zsh
#         ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ keyword.operator.range.shell.zsh
#            ^ punctuation.definition.range.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l 200406{04..10}*(N)             # List all files that begin with the date strings from June 4 through June 9 of 2004
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#     ^^^^^^ string.unquoted.shell
#           ^^^^^^^^ meta.interpolation.brace.shell
#           ^ punctuation.section.interpolation.begin.shell
#            ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#              ^^ keyword.operator.range.shell
#                ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                  ^ punctuation.section.interpolation.end.shell
#                   ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#                    ^^^ meta.modifier.glob.shell.zsh
#                    ^ punctuation.definition.modifier.begin.shell.zsh
#                     ^ storage.modifier.glob.shell.zsh
#                      ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l 200406<4-10>.*                 # List will match the form of 200406XX
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^^^^^^^ meta.string.glob.shell
#     ^^^^^^ string.unquoted.shell
#           ^^^^^^ meta.range.shell.zsh
#           ^ punctuation.definition.range.begin.shell.zsh
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ keyword.operator.range.shell.zsh
#              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ punctuation.definition.range.end.shell.zsh
#                 ^^ string.unquoted.shell
#                  ^ constant.other.wildcard.asterisk.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l *.(c|h)                        # Show only all *.c and *.h files
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^ meta.string.glob.shell
#     ^^ string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#       ^^^^^ meta.group.regexp.shell string.unquoted.shell
#       ^ punctuation.section.group.begin.regexp.shell
#         ^ keyword.operator.alternation.regexp.shell
#           ^ punctuation.section.group.end.regexp.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l *(R)                           # Show only world-readable files
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^ meta.string.glob.shell
#     ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#      ^^^ meta.modifier.glob.shell.zsh
#      ^ punctuation.definition.modifier.begin.shell.zsh
#       ^ storage.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -fld *(OL)                        # Sort the output from ls -l by file size
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#       ^^^^^ meta.string.glob.shell
#       ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#        ^^^^ meta.modifier.glob.shell.zsh
#        ^ punctuation.definition.modifier.begin.shell.zsh
#         ^^ storage.modifier.glob.shell.zsh
#           ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -fl *(DOL[1,5])                   # Print only 5 lines by the ls command (is equal to: ls -laS | head -n 5)
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#      ^^^^^^^^^^^ meta.string.glob.shell
#      ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#       ^^^^^^^^^^ meta.modifier.glob.shell.zsh
#       ^ punctuation.definition.modifier.begin.shell.zsh
#        ^^^ storage.modifier.glob.shell.zsh
#           ^^^^^ meta.range.glob.shell.zsh
#           ^ punctuation.definition.range.begin.shell.zsh
#            ^^^ meta.arithmetic.shell
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ punctuation.separator.sequence.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ punctuation.definition.range.end.shell.zsh
#                ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls -l *(G[users])                    # Show only files are owned from group users
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ meta.parameter.option.shell variable.parameter.option.shell
#  ^ punctuation.definition.parameter.shell
#     ^^^^^^^^^^^ meta.string.glob.shell
#     ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#      ^^^^^^^^^^ meta.modifier.glob.shell.zsh
#      ^ punctuation.definition.modifier.begin.shell.zsh
#       ^ storage.modifier.glob.shell.zsh
#        ^^^^^^^ meta.quoted.glob.shell.zsh
#        ^ punctuation.definition.quoted.begin.shell.zsh
#         ^^^^^ string.quoted.other.shell.zsh
#              ^ punctuation.definition.quoted.end.shell.zsh
#               ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls *(L0f.go-w.)                      # Show only empty files which nor group or world writable
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^^^^ meta.string.glob.shell
#  ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#   ^^^^^^^^^^^ meta.modifier.glob.shell.zsh
#   ^ punctuation.definition.modifier.begin.shell.zsh
#    ^ storage.modifier.glob.shell.zsh
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ storage.modifier.glob.shell.zsh
#       ^^^^^^ meta.quoted.glob.shell.zsh
#       ^ punctuation.definition.quoted.begin.shell.zsh
#        ^^^^ string.quoted.other.shell.zsh
#            ^ punctuation.definition.quoted.end.shell.zsh
#             ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

ls *.c~foo.c                         # Show only all *.c files and ignore foo.c
#^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#  ^ constant.other.wildcard.asterisk.shell
#     ^ keyword.operator.logical.regexp.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

print -rl /home/me/**/*(D/e{'reply=($REPLY/*(N[-1]:t))'})  # Find all directories, list their contents, and output the first item in the above list
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#         ^^^^^^^^^^^^^ string.unquoted.shell
#                  ^^ constant.other.wildcard.asterisk.shell
#                     ^ constant.other.wildcard.asterisk.shell
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.modifier.glob.shell.zsh
#                      ^ punctuation.definition.modifier.begin.shell.zsh
#                       ^^^ storage.modifier.glob.shell.zsh
#                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.glob.shell.zsh
#                          ^ punctuation.definition.quoted.begin.shell.zsh
#                           ^ punctuation.definition.quoted.begin.shell
#                            ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                            ^^^^^ meta.assignment.l-value.shell variable.language.builtin.shell
#                                 ^ meta.assignment.shell keyword.operator.assignment.shell
#                                  ^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell
#                                  ^ punctuation.section.sequence.begin.shell
#                                   ^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#                                   ^^^^^^ meta.interpolation.parameter.shell variable.language.builtin.shell
#                                   ^ punctuation.definition.variable.shell
#                                         ^^ string.unquoted.shell
#                                          ^ constant.other.wildcard.asterisk.shell
#                                           ^^^^^^^^^ meta.modifier.glob.shell.zsh
#                                           ^ punctuation.definition.modifier.begin.shell.zsh
#                                            ^ storage.modifier.glob.shell.zsh
#                                             ^^^^ meta.range.glob.shell.zsh
#                                             ^ punctuation.definition.range.begin.shell.zsh
#                                              ^^ meta.arithmetic.shell
#                                              ^ keyword.operator.arithmetic.shell
#                                               ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                ^ punctuation.definition.range.end.shell.zsh
#                                                 ^ punctuation.separator.sequence.shell.zsh
#                                                  ^ storage.modifier.glob.shell.zsh
#                                                   ^ punctuation.definition.modifier.end.shell.zsh
#                                                    ^ punctuation.section.sequence.end.shell
#                                                     ^ punctuation.definition.quoted.end.shell
#                                                      ^ punctuation.definition.quoted.end.shell.zsh
#                                                       ^ punctuation.definition.modifier.end.shell.zsh
#                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                                          ^ punctuation.definition.comment.shell

print -rl /**/*~^*/path(|/*)         # Find command to search for directory name instead of basename
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#         ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#         ^^^^^^^^^^^^^ string.unquoted.shell
#          ^^ constant.other.wildcard.asterisk.shell
#             ^ constant.other.wildcard.asterisk.shell
#              ^^ keyword.operator.logical.regexp.shell.zsh
#                ^ constant.other.wildcard.asterisk.shell
#                      ^^^^^ meta.group.regexp.shell string.unquoted.shell
#                      ^ punctuation.section.group.begin.regexp.shell
#                       ^ keyword.operator.alternation.regexp.shell
#                         ^ constant.other.wildcard.asterisk.shell
#                          ^ punctuation.section.group.end.regexp.shell
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

print -l ~/*(ND.^w)                  # List files in the current directory that are not writable by the owner
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#        ^^^^^^^^^^ meta.string.glob.shell
#        ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#         ^^ string.unquoted.shell
#          ^ constant.other.wildcard.asterisk.shell
#           ^^^^^^^ meta.modifier.glob.shell.zsh
#           ^ punctuation.definition.modifier.begin.shell.zsh
#            ^^^ storage.modifier.glob.shell.zsh
#               ^ keyword.operator.logical.shell.zsh
#                ^ storage.modifier.glob.shell.zsh
#                 ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

print -rl -- *(Dmh+10^/)             # List all files which have not been updated in the last 10 hours
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#         ^^ keyword.operator.end-of-options.shell
#            ^^^^^^^^^^^ meta.string.glob.shell
#            ^ string.unquoted.shell constant.other.wildcard.asterisk.shell
#             ^^^^^^^^^^ meta.modifier.glob.shell.zsh
#             ^ punctuation.definition.modifier.begin.shell.zsh
#              ^^^ storage.modifier.glob.shell.zsh
#                 ^^^ meta.number.integer.decimal.shell
#                 ^ keyword.operator.arithmetic.shell
#                  ^^ constant.numeric.value.shell
#                    ^ keyword.operator.logical.shell.zsh
#                     ^ storage.modifier.glob.shell.zsh
#                      ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

print -rl -- **/*(Dom[1,10])         # List the ten newest files in directories and subdirectories (recursive)
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#         ^^ keyword.operator.end-of-options.shell
#            ^^^^^^^^^^^^^^^ meta.string.glob.shell
#            ^^^^ string.unquoted.shell
#            ^^ constant.other.wildcard.asterisk.shell
#               ^ constant.other.wildcard.asterisk.shell
#                ^^^^^^^^^^^ meta.modifier.glob.shell.zsh
#                ^ punctuation.definition.modifier.begin.shell.zsh
#                 ^^^ storage.modifier.glob.shell.zsh
#                    ^^^^^^ meta.range.glob.shell.zsh
#                    ^ punctuation.definition.range.begin.shell.zsh
#                     ^^^^ meta.arithmetic.shell
#                     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                      ^ punctuation.separator.sequence.shell
#                       ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                         ^ punctuation.definition.range.end.shell.zsh
#                          ^ punctuation.definition.modifier.end.shell.zsh
#                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                    ^ punctuation.definition.comment.shell

print -rl -- /path/to/dir/**/*(D.om[5,10])  # Display the 5-10 last modified files
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#         ^^ keyword.operator.end-of-options.shell
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#            ^^^^^^^^^^^^^^^^^ string.unquoted.shell
#                         ^^ constant.other.wildcard.asterisk.shell
#                            ^ constant.other.wildcard.asterisk.shell
#                             ^^^^^^^^^^^^ meta.modifier.glob.shell.zsh
#                             ^ punctuation.definition.modifier.begin.shell.zsh
#                              ^^^^ storage.modifier.glob.shell.zsh
#                                  ^^^^^^ meta.range.glob.shell.zsh
#                                  ^ punctuation.definition.range.begin.shell.zsh
#                                   ^^^^ meta.arithmetic.shell
#                                   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                    ^ punctuation.separator.sequence.shell
#                                     ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                       ^ punctuation.definition.range.end.shell.zsh
#                                        ^ punctuation.definition.modifier.end.shell.zsh
#                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                           ^ punctuation.definition.comment.shell

print -rl -- **/*.c(D.OL[1,10]:h) | sort -u # Print the path of the directories holding the ten biggest C regular files in the current directory and subdirectories
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.parameter.shell
#         ^^ keyword.operator.end-of-options.shell
#            ^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#            ^^^^^^ string.unquoted.shell
#            ^^ constant.other.wildcard.asterisk.shell
#               ^ constant.other.wildcard.asterisk.shell
#                  ^^^^^^^^^^^^^^ meta.modifier.glob.shell.zsh
#                  ^ punctuation.definition.modifier.begin.shell.zsh
#                   ^^^^ storage.modifier.glob.shell.zsh
#                       ^^^^^^ meta.range.glob.shell.zsh
#                       ^ punctuation.definition.range.begin.shell.zsh
#                        ^^^^ meta.arithmetic.shell
#                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                         ^ punctuation.separator.sequence.shell
#                          ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                            ^ punctuation.definition.range.end.shell.zsh
#                             ^ punctuation.separator.sequence.shell.zsh
#                              ^ storage.modifier.glob.shell.zsh
#                               ^ punctuation.definition.modifier.end.shell.zsh
#                                 ^ keyword.operator.assignment.pipe.shell
#                                   ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                                       ^^^ meta.function-call.arguments.shell
#                                        ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                        ^ punctuation.definition.parameter.shell
#                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                           ^ punctuation.definition.comment.shell

print directory/**/*(om[1])                 # Find most recent file in a directory
#^^^^ meta.function-call.identifier.shell meta.command.shell support.function.shell
#    ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#     ^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#     ^^^^^^^^^^^^^^ string.unquoted.shell
#               ^^ constant.other.wildcard.asterisk.shell
#                  ^ constant.other.wildcard.asterisk.shell
#                   ^^^^^^^ meta.modifier.glob.shell.zsh
#                   ^ punctuation.definition.modifier.begin.shell.zsh
#                    ^^ storage.modifier.glob.shell.zsh
#                      ^^^ meta.range.glob.shell.zsh
#                      ^ punctuation.definition.range.begin.shell.zsh
#                       ^ meta.arithmetic.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                        ^ punctuation.definition.range.end.shell.zsh
#                         ^ punctuation.definition.modifier.end.shell.zsh
#                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                           ^ punctuation.definition.comment.shell

for a in ./**/*\ *(Dod); do mv $a ${a:h}/${a:t:gs/ /_}; done   # Remove spaces from filenames
#^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#       ^^^^^^^^^^^^^^^ meta.sequence.list.shell
#        ^^^^^^^^^^^^^^ meta.string.glob.shell
#        ^^^^^^^^^ string.unquoted.shell
#          ^^ constant.other.wildcard.asterisk.shell
#             ^ constant.other.wildcard.asterisk.shell
#              ^^ constant.character.escape.shell
#                ^ constant.other.wildcard.asterisk.shell
#                 ^^^^^ meta.modifier.glob.shell.zsh
#                 ^ punctuation.definition.modifier.begin.shell.zsh
#                  ^^^ storage.modifier.glob.shell.zsh
#                     ^ punctuation.definition.modifier.end.shell.zsh
#                      ^ punctuation.terminator.statement.shell
#                        ^^ keyword.control.loop.do.shell
#                           ^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                              ^ punctuation.definition.variable.shell
#                                 ^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#                                 ^^^^^^ meta.interpolation.parameter.shell
#                                 ^ punctuation.definition.variable.shell
#                                  ^ punctuation.section.interpolation.begin.shell
#                                   ^ variable.other.readwrite.shell
#                                    ^ keyword.operator.substring.begin.shell
#                                     ^ meta.arithmetic.shell variable.other.readwrite.shell
#                                      ^ punctuation.section.interpolation.end.shell
#                                       ^ string.unquoted.shell
#                                        ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#                                        ^ punctuation.definition.variable.shell
#                                         ^ punctuation.section.interpolation.begin.shell
#                                          ^ variable.other.readwrite.shell
#                                           ^ keyword.operator.substring.begin.shell
#                                            ^ meta.arithmetic.shell variable.other.readwrite.shell
#                                             ^ keyword.operator.substring.end.shell
#                                              ^^^^^^ meta.arithmetic.shell
#                                              ^^ variable.other.readwrite.shell
#                                                ^ keyword.operator.arithmetic.shell
#                                                  ^ keyword.operator.arithmetic.shell
#                                                   ^ variable.other.readwrite.shell
#                                                    ^ punctuation.section.interpolation.end.shell
#                                                     ^ punctuation.terminator.statement.shell
#                                                       ^^^^ keyword.control.loop.end.shell
#                                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                                              ^ punctuation.definition.comment.shell


##############################################################################
# 15 Parameters
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Description-1
##############################################################################

ab=value
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^ meta.assignment.l-value.shell variable.other.readwrite.shell
# ^ meta.assignment.shell keyword.operator.assignment.shell
#  ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell

_b=value
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^ meta.assignment.l-value.shell variable.other.readwrite.shell
# ^ meta.assignment.shell keyword.operator.assignment.shell
#  ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell

10=value
# <- meta.assignment.l-value.shell variable.language.positional.shell
#^ meta.assignment.l-value.shell variable.language.positional.shell
# ^ meta.assignment.shell keyword.operator.assignment.shell
#  ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell

1a=value
# <- - meta.assignment
#^^^^^^^ - meta.assignment

### [ ARRAY VARIABLES ] #######################################################

10[1]=value
# <- meta.assignment.l-value.shell variable.language.positional.shell
#^ meta.assignment.l-value.shell variable.language.positional.shell
# ^^^ meta.assignment.l-value.shell meta.item-access.shell
#    ^ meta.assignment.shell keyword.operator.assignment.shell
#     ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell

var[1]=Hello
# <- variable.other.readwrite.shell
#^^ variable.other.readwrite.shell
#  ^^^ meta.item-access.shell
#  ^ punctuation.section.item-access.begin.shell
#   ^ meta.arithmetic.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^ punctuation.section.item-access.end.shell
#     ^ keyword.operator.assignment.shell
#      ^^^^^ meta.string.glob.shell string.unquoted.shell

echo $var[1] World
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#        ^^^ meta.item-access.shell - variable
#        ^ punctuation.section.item-access.begin.shell
#         ^ meta.arithmetic.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.section.item-access.end.shell
#            ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation


##############################################################################
# 15.2 Array Parameters
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Array-Parameters
##############################################################################

illegals=( | & ; < > )
#          ^ invalid.illegal.unexpected-token.shell
#            ^ invalid.illegal.unexpected-token.shell
#              ^ invalid.illegal.unexpected-token.shell
#                ^ invalid.illegal.unexpected-token.shell
#                  ^ invalid.illegal.unexpected-token.shell


##############################################################################
# 15.5 Parameters Set By The Shell
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Set-By-The-Shell
##############################################################################

: $ARGC
# ^^^^^ variable.language.builtin.shell
: $argv
# ^^^^^ variable.language.builtin.shell
: $status
# ^^^^^^^ variable.language.builtin.shell
: $pipestatus
# ^^^^^^^^^^^ variable.language.builtin.shell
: $CPUTYPE
# ^^^^^^^^ variable.language.builtin.shell
: $EGID
# ^^^^^ variable.language.builtin.shell
: $EUID
# ^^^^^ variable.language.builtin.shell
: $ERRNO
# ^^^^^^ variable.language.builtin.shell
: $FUNCNEST
# ^^^^^^^^^ variable.language.builtin.shell
: $GID
# ^^^^ variable.language.builtin.shell
: $HISTCMD
# ^^^^^^^^ variable.language.builtin.shell
: $HOST
# ^^^^^ variable.language.builtin.shell
: $LINENO
# ^^^^^^^ variable.language.builtin.shell
: $LOGNAME
# ^^^^^^^^ variable.language.builtin.shell
: $MACHTYPE
# ^^^^^^^^^ variable.language.builtin.shell
: $OLDPWD
# ^^^^^^^ variable.language.builtin.shell
: $OPTARG
# ^^^^^^^ variable.language.builtin.shell
: $OPTIND
# ^^^^^^^ variable.language.builtin.shell
: $OSTYPE
# ^^^^^^^ variable.language.builtin.shell
: $PPID
# ^^^^^ variable.language.builtin.shell
: $PWD
# ^^^^ variable.language.builtin.shell
: $RANDOM
# ^^^^^^^ variable.language.builtin.shell
: $SECONDS
# ^^^^^^^^ variable.language.builtin.shell
: $SHLVL
# ^^^^^^ variable.language.builtin.shell
: $signals
# ^^^^^^^^ variable.language.builtin.shell
: $TRY_BLOCK_ERROR
# ^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $TRY_BLOCK_INTERRUPT
# ^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $TTY
# ^^^^ variable.language.builtin.shell
: $TTYIDLE
# ^^^^^^^^ variable.language.builtin.shell
: $UID
# ^^^^ variable.language.builtin.shell
: $USERNAME
# ^^^^^^^^^ variable.language.builtin.shell
: $VENDOR
# ^^^^^^^ variable.language.builtin.shell
: $zsh_eval_context
# ^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZSH_ARGZERO
# ^^^^^^^^^^^^ variable.language.builtin.shell
: $ZSH_EXECUTION_STRING
# ^^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZSH_NAME
# ^^^^^^^^^ variable.language.builtin.shell
: $ZSH_PATCHLEVEL
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $zsh_scheduled_events
# ^^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZSH_SCRIPT
# ^^^^^^^^^^^ variable.language.builtin.shell
: $ZSH_SUBSHELL
# ^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZSH_VERSION
# ^^^^^^^^^^^^ variable.language.builtin.shell

##############################################################################
# 15.6 Parameters Used By The Shell
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
##############################################################################

: $ARGV0
# ^^^^^^ variable.language.builtin.shell
: $BAUD
# ^^^^^ variable.language.builtin.shell
: $cdpath
# ^^^^^^^ variable.language.builtin.shell
: $COLUMNS
# ^^^^^^^^ variable.language.builtin.shell
: $CORRECT_IGNORE
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $CORRECT_IGNORE_FILE
# ^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $DIRSTACKSIZE
# ^^^^^^^^^^^^^ variable.language.builtin.shell
: $ENV
# ^^^^ variable.language.builtin.shell
: $FCEDIT
# ^^^^^^^ variable.language.builtin.shell
: $fignore
# ^^^^^^^^ variable.language.builtin.shell
: $fpath
# ^^^^^^ variable.language.builtin.shell
: $histchars
# ^^^^^^^^^^ variable.language.builtin.shell
: $HISTCHARS
# ^^^^^^^^^^ variable.language.builtin.shell
: $HISTFILE
# ^^^^^^^^^ variable.language.builtin.shell
: $HISTORY_IGNORE
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $HISTSIZE
# ^^^^^^^^^ variable.language.builtin.shell
: $HOME
# ^^^^^ variable.language.builtin.shell
: $IFS
# ^^^^ variable.language.builtin.shell
: $KEYBOARD_HACK
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
: $KEYTIMEOUT
# ^^^^^^^^^^^ variable.language.builtin.shell
: $LANG
# ^^^^^ variable.language.builtin.shell
: $LC_ALL
# ^^^^^^^ variable.language.builtin.shell
: $LC_COLLATE
# ^^^^^^^^^^^ variable.language.builtin.shell
: $LC_CTYPE
# ^^^^^^^^^ variable.language.builtin.shell
: $LC_MESSAGES
# ^^^^^^^^^^^^ variable.language.builtin.shell
: $LC_NUMERIC
# ^^^^^^^^^^^ variable.language.builtin.shell
: $LC_TIME
# ^^^^^^^^ variable.language.builtin.shell
: $LINES
# ^^^^^^ variable.language.builtin.shell
: $LISTMAX
# ^^^^^^^^ variable.language.builtin.shell
: $MAIL
# ^^^^^ variable.language.builtin.shell
: $MAILCHECK
# ^^^^^^^^^^ variable.language.builtin.shell
: $mailpath
# ^^^^^^^^^ variable.language.builtin.shell
: $manpath
# ^^^^^^^^ variable.language.builtin.shell
: $match
# ^^^^^^ variable.language.builtin.shell
: $mbegin
# ^^^^^^^ variable.language.builtin.shell
: $mend
# ^^^^^ variable.language.builtin.shell
: $MATCH
# ^^^^^^ variable.language.builtin.shell
: $MBEGIN
# ^^^^^^^ variable.language.builtin.shell
: $MEND
# ^^^^^ variable.language.builtin.shell
: $module_path
# ^^^^^^^^^^^^ variable.language.builtin.shell
: $NULLCMD
# ^^^^^^^^ variable.language.builtin.shell
: $path
# ^^^^^ variable.language.builtin.shell
: $POSTEDIT
# ^^^^^^^^^ variable.language.builtin.shell
: $PROMPT
# ^^^^^^^ variable.language.builtin.shell
: $PROMPT2
# ^^^^^^^^ variable.language.builtin.shell
: $PROMPT3
# ^^^^^^^^ variable.language.builtin.shell
: $PROMPT4
# ^^^^^^^^ variable.language.builtin.shell
: $prompt
# ^^^^^^^ variable.language.builtin.shell
: $PROMPT_EOL_MARK
# ^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $PS1
# ^^^^ variable.language.builtin.shell
: $PS2
# ^^^^ variable.language.builtin.shell
: $PS3
# ^^^^ variable.language.builtin.shell
: $PS4
# ^^^^ variable.language.builtin.shell
: $psvar
# ^^^^^^ variable.language.builtin.shell
: $READNULLCMD
# ^^^^^^^^^^^^ variable.language.builtin.shell
: $REPORTMEMORY
# ^^^^^^^^^^^^^ variable.language.builtin.shell
: $REPORTTIME
# ^^^^^^^^^^^ variable.language.builtin.shell
: $REPLY
# ^^^^^^ variable.language.builtin.shell
: $reply
# ^^^^^^ variable.language.builtin.shell
: $RPROMPT
# ^^^^^^^^ variable.language.builtin.shell
: $RPS1
# ^^^^^ variable.language.builtin.shell
: $RPROMPT2
# ^^^^^^^^^ variable.language.builtin.shell
: $RPS2
# ^^^^^ variable.language.builtin.shell
: $SAVEHIST
# ^^^^^^^^^ variable.language.builtin.shell
: $SPROMPT
# ^^^^^^^^ variable.language.builtin.shell
: $STTY
# ^^^^^ variable.language.builtin.shell
: $TERM
# ^^^^^ variable.language.builtin.shell
: $TERMINFO
# ^^^^^^^^^ variable.language.builtin.shell
: $TERMINFO_DIRS
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
: $TIMEFMT
# ^^^^^^^^ variable.language.builtin.shell
: $TMOUT
# ^^^^^^ variable.language.builtin.shell
: $TMPPREFIX
# ^^^^^^^^^^ variable.language.builtin.shell
: $TMPSUFFIX
# ^^^^^^^^^^ variable.language.builtin.shell
: $WORDCHARS
# ^^^^^^^^^^ variable.language.builtin.shell
: $ZBEEP
# ^^^^^^ variable.language.builtin.shell
: $ZDOTDIR
# ^^^^^^^^ variable.language.builtin.shell
: $zle_bracketed_paste
# ^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $zle_highlight
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZLE_LINE_ABORTED
# ^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZLE_REMOVE_SUFFIX_CHARS
# ^^^^^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZLE_SPACE_SUFFIX_CHARS
# ^^^^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
: $ZLE_RPROMPT_INDENT
# ^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell


##############################################################################
# 17 Shell Builtin Commands
# https://zsh.sourceforge.io/Doc/Release/Shell-Builtin-Commands.html
##############################################################################

mapfile # mapfile is not a known/built-in command in ZSH
# <- meta.function-call.identifier.shell variable.function.shell - support.function
#^^^^^^ meta.function-call.identifier.shell variable.function.shell - support.function
