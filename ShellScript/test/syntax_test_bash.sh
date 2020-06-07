# SYNTAX TEST "Packages/ShellScript/Bash.sublime-syntax"
# <- comment.line punctuation.definition.comment
#^ comment.line
#                                                      ^ comment.line
#                                                       ^ comment.line

##############
# The basics #
##############

echo hello, world!
# <- meta.function-call support.function - meta.function-call.arguments
#   ^ meta.function-call.arguments
echo hello, \
#           ^^ punctuation.separator.continuation.line
# <- support.function.echo
world!
# TODO: This should be a variable.function above here
# The above is again a command, because the line continuation was prematurely
# ended by the comment.
echo hello, \
world!
# <- meta.function-call.arguments - variable.function
# The above is not a command, because of the line continuation.
echo hello, \ 
#           ^^ - punctuation.separator.continuation.line
# (there's an extra space following the backslash, so not a line-continuation)
world!
# <- variable.function
echo This is a smiley :-\) \(I have to escape the parentheses, though!\)
#                       ^^ constant.character.escape
#                          ^^ constant.character.escape
#                                                                     ^^ constant.character.escape
echo the q"uick" f"ox" ju"mp"ed o"ve"r t'he' 'la'zy 'dog'
#         ^ string.quoted.double punctuation.definition.string.begin
#          ^^^^ string.quoted.double
#              ^ string.quoted.double punctuation.definition.string.end
#                                       ^ string.quoted.single punctuation.definition.string.begin
#                                        ^^ string.quoted.single
#                                          ^ string.quoted.single punctuation.definition.string.end
echo 'no\e$capes\in\$ingle\quotes'
#    ^ string.quoted.single punctuation.definition.string.begin
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
#                                ^ string.quoted.single punctuation.definition.string.end
#       ^ - constant
#         ^ - keyword
#               ^ - constant
#                  ^ - constant
#                   ^ - keyword
#                         ^ - constant
echo $'\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z'
#    ^^ punctuation
#      ^^^^ constant.character.escape
#          ^^^^^^ - constant.character.escape
#                ^^ constant.character.escape
#                  ^^^^^^^^^^^^^^ - constant.character.escape
#                                ^^ constant.character.escape
#                                  ^^^^^^ - constant.character.escape
#                                        ^^ constant.character.escape
#                                          ^^ - constant.character.escape
#                                            ^^ constant.character.escape
#                                              ^^ - constant.character.escape
#                                                ^^ constant.character.escape
#                                                  ^^^^^^^^ - constant.character.escape
#                                                          ^ punctuation
echo $"Hello"
#    ^^ punctuation
#           ^ punctuation

echo `echo \`echo hello, world!\``
#   ^ - meta.group
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#                                 ^ - meta.group
#    ^ punctuation.section.group.begin
#     ^^^^ support.function.echo
#          ^^ constant.character.escape
#                              ^^ constant.character.escape
#                                ^ punctuation.section.group.end

echo `echo \`echo hello, world!\\`
#   ^ - meta.group
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#                                 ^ - meta.group
#    ^ punctuation.section.group.begin
#     ^^^^ support.function.echo
#          ^^ constant.character.escape
#                              ^^ constant.character.escape
#                                ^ punctuation.section.group.end

echo `echo \`echo hello\\\`, world\\\\\`!`
#   ^ - meta.group
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#                                         ^ - meta.group
#    ^ punctuation.section.group.begin
#     ^^^^ support.function.echo
#          ^^ constant.character.escape
#                      ^^^^ constant.character.escape
#                                 ^^^^^^ constant.character.escape
#                                        ^ punctuation.section.group.end

foo | ` # get quarks ` \
# <- variable.function
#   ^ keyword.operator.logical.pipe
#     ^^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#                     ^^^ - meta.group
#     ^ punctuation.section.group.begin
#       ^^^^^^^^^^^^^ comment.line.number-sign
#                    ^ punctuation.section.group.end - comment
#                      ^^ punctuation.separator.continuation.line - comment

foo | ` # get quarks ` \
bar   ` # important; this and that ` "${USELESS_TEXT}" | ` # match text` \
# <- meta.function-call.arguments
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#                                   ^^^^^^^^^^^^^^^^^^^^^ - meta.group.expansion.command
#                                                        ^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#     ^^ - comment
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign
#                                  ^^^^^^^^^^^^^^^^^^^^^^^^ - comment
#                                                          ^^^^^^^^^^^^ comment.line.number-sign
#                                                                      ^^^ - comment
#     ^ punctuation.section.group.begin
#                                  ^ punctuation.section.group.end
#                                    ^ meta.string string.quoted.double punctuation.definition.string.begin
#                                     ^^^^^^^^^^^^^^^ meta.string meta.interpolation meta.group.expansion.parameter - string
#                                                    ^ meta.string string.quoted.double punctuation.definition.string.end
#                                                      ^ keyword.operator.logical.pipe
#                                                        ^ punctuation.section.group.begin
#                                                                        ^^ punctuation.separator.continuation.line

randomname argument --opt1 --opt2 -x -y &>/dev/null
# <- meta.function-call variable.function - meta.function-call.arguments
#^^^^^^^^^ meta.function-call variable.function - meta.function-call.arguments
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
#                   ^^ variable.parameter.option punctuation
#                     ^^^^ variable.parameter.option - punctuation
#                          ^^ variable.parameter.option punctuation
#                            ^^^^ variable.parameter.option - punctuation
#                                 ^ variable.parameter.option punctuation
#                                  ^ variable.parameter.option - punctuation
#                                    ^ variable.parameter.option punctuation
#                                     ^ variable.parameter.option - punctuation
another-random-command arg foo--not-an-option
#                             ^ - variable.parameter
#                               ^ - variable.parameter
#                                   ^ - variable.parameter
#                                      ^ - variable.parameter
# Test if commands are recognized even in the presence of strings and variable
# expansions
ch=ch
e${ch}"o" hello, world!
# <- meta.function-call variable.function
#^^^^^^^^ meta.function-call variable.function
#        ^^^^^^^^^^^^^^ meta.function-call.arguments
#^ punctuation.definition.variable
# ^ punctuation.section.expansion.parameter.begin
#  ^^ variable.other.readwrite
#    ^ punctuation.section.expansion.parameter.end
#     ^ string.quoted.double punctuation.definition.string.begin
#      ^ string.quoted.double
#       ^ string.quoted.double punctuation.definition.string.end
e=e
${e}'ch'o hello, world!
# <- meta.function-call variable.function
#^^^^^^^^ meta.function-call variable.function
#        ^^^^^^^^^^^^^^ meta.function-call.arguments
# <- punctuation.definition.variable
#^ punctuation
# ^ variable.other.readwrite
#  ^ punctuation
#   ^ string.quoted.single punctuation.definition.string.begin
#    ^^ string.quoted.single
#      ^ string.quoted.single punctuation.definition.string.end
echo hello#not-a-comment
#         ^^^^^^^^^^^^^^ meta.function-call.arguments - comment.line - variable.function
echo -e "foo"
#    ^ variable.parameter.option punctuation
#     ^ variable.parameter
foo --opt1 arg1
#   ^^ variable.parameter punctuation
#   ^^^^^^ variable.parameter
foo --opt1 arg1 -- --not-an-option
#               ^^ keyword.operator
#                  ^ - variable.parameter punctuation
`foo --opt1 arg1 -- --not-an-option`
#                ^^ keyword.operator
#                   ^ - variable.parameter punctuation
`foo --opt1 arg1 --`
#                ^^ keyword.operator
#                  ^ - variable.parameter punctuation
foo -n -
#   ^ variable.parameter.option punctuation
#    ^ variable.parameter.option - punctuation
#      ^ - keyword - punctuation

set -e -
#   ^ variable.parameter.option punctuation
#    ^ variable.parameter.option - punctuation
#      ^ - keyword - punctuation
set +e
#   ^ variable.parameter.option punctuation
#    ^ variable.parameter.option - punctuation
set -o pipefail
#   ^ variable.parameter.option punctuation
#    ^ variable.parameter.option - punctuation
set +o pipefail
#   ^ variable.parameter.option punctuation
#    ^ variable.parameter.option - punctuation
set -Euo pipefail
#   ^ variable.parameter.option punctuation
#    ^^^ variable.parameter.option - punctuation
set +Euo pipefail
#   ^ variable.parameter.option punctuation
#    ^^^ variable.parameter.option - punctuation
set +Eou pipefail
#   ^^^^ - variable.parameter.option - punctuation
set -e -- -o {string}
#   ^^ variable.parameter.option
#      ^^ keyword.operator.end-of-options
#         ^^ - variable.parameter.option
#            ^^^^^^^^ meta.group.expansion.brace

shift 2 -- 
#       ^^ - keyword

python foo.py --option=value --other-option
#                     ^ keyword.operator.assignment.option
git log --format="%h git has this pattern, too"
#               ^ keyword.operator.assignment.option

########################
# Variable assignments #
########################
x= # some comment
# ^ - string.unquoted
#  ^^^^^^^^^^^^^^^ comment.line.number-sign.shell
x= & pwd
# ^ - string.unquoted
#  ^ keyword.operator.logical.job.shell
#    ^^^ support.function
x=a
# <- variable.other.readwrite.assignment
#^ keyword.operator.assignment
# ^ meta.string string.unquoted
x=a # some comment
#  ^ - string.unquoted
x=a#not-a-comment
#  ^ meta.string string.unquoted - comment
x=a pwd
# <- variable.other.readwrite.assignment
#^ keyword.operator.assignment
#  ^ - string.unquoted
#   ^^^ meta.function-call support.function
x="a b" pwd
# ^ string.quoted.double punctuation.definition.string.begin
#  ^^^ string.quoted.double
#     ^ string.quoted.double punctuation.definition.string.end
#      ^ - string.unquoted
#       ^^^ meta.function-call support.function
x=a y=b pwd
#^ keyword.operator.assignment
# ^ meta.string string.unquoted
#  ^ - string.unquoted
#    ^ keyword.operator.assignment
#     ^ meta.string string.unquoted
#      ^ - string.unquoted
#       ^^^ meta.function-call support.function
foo=bar baz=qux
#   ^^^ meta.string string.unquoted
#           ^^^ meta.string string.unquoted
foo=bar\
qux
#<- meta.string.shell string.unquoted.shell
#^^ meta.string string.unquoted
foo=bar"baz"qux
#<- variable.other.readwrite.assignment.shell
#^^ variable.other.readwrite.assignment.shell
#  ^ keyword.operator.assignment.shell
#   ^^^^^^^^^^^ meta.string.shell - string string
#   ^^^ string.unquoted.shell
#      ^^^^^ string.quoted.double.shell
#           ^^^ string.unquoted.shell
x=${foo} y=${baz}"asdf" pwd
#^ keyword.operator.assignment
# ^^^^^^ meta.string meta.interpolation - string
#       ^^^ - meta.string - mete.interpolation - string
#          ^^^^^^ meta.string meta.interpolation - string
#                ^^^^^^ meta.string.shell string.quoted.double.shell - meta.interpolation
#                      ^^^^ - meta.string - mete.interpolation - string
# ^ punctuation.definition.variable
#  ^ punctuation.section.expansion.parameter.begin
#   ^^^ variable.other.readwrite
#      ^ punctuation.section.expansion.parameter.end
#         ^ keyword.operator.assignment
#          ^ punctuation.definition.variable
#           ^ punctuation.section.expansion.parameter.begin
#            ^^^ variable.other.readwrite
#               ^ punctuation.section.expansion.parameter.end
#                ^ punctuation.definition.string.begin
#                     ^ punctuation.definition.string.end
#                       ^^^ meta.function-call support.function

# Spaces following an assignment token means an empty string value!
x= pwd
# <- variable.other.readwrite.assignment
#^ keyword.operator.assignment
#  ^^^ meta.function-call support.function

BOWL=$(($(cat food.txt | wc -l) + 5))
#   ^ keyword.operator.assignment
#    ^ punctuation.definition.variable
#     ^^ punctuation
#       ^ punctuation.definition.variable
#         ^^^ variable.function
#             ^^^^^^^^ - variable.function
#                     ^ - meta.function-call
#                      ^ keyword.operator
#                       ^ - meta.function-call
#                        ^^ meta.function-call variable.function
#                             ^ punctuation
#                               ^ keyword.operator
#                                 ^ constant.numeric
#                                  ^^ punctuation

# These are all legal identifiers for variables.
alias=hello
# <- - storage.modifier
#    ^ keyword.operator
typeset=hello
# <- - storage.modifier
#      ^ keyword.operator
declare=hello
# <- - storage.modifier
#      ^ keyword.operator
local=hello
# <- - storage.modifier
#    ^ keyword.operator
export=hello
# <- - storage.modifier
#     ^ keyword.operator
readonly=hello
# <- - storage.modifier
#       ^ keyword.operator
for=hello
# <- - keyword.control
#  ^ keyword.operator
if=hello
# <- - keyword.control
# ^ keyword.operator
while=hello
# <- - keyword.control
#    ^ keyword.operator
until=hello
# <- - keyword.control
#    ^ keyword.operator
do=hello
# <- - keyword.control
# ^ keyword.operator
done=hello
# <- - keyword.control
#   ^ keyword.operator

(foo=bar)
# <- punctuation.definition.compound.begin
#   ^ keyword.operator.assignment
#    ^^^ meta.string string.unquoted
#       ^ punctuation.definition.compound.end - string-unquoted


#############
# Variables #
#############

: $__
  #^ variable.other

: $var_0
  #   ^ variable.other

: $_var0
  #^ variable.other

: $_0var_
  #^ variable.other

# Expands to the positional parameters, starting from one. When the expansion is
# not within double quotes, each positional parameter expands to a separate
# word. In contexts where it is performed, those words are subject to further
# word splitting and pathname expansion. When the expansion occurs within double
# quotes, it expands to a single word with the value of each parameter separated
# by the first character of the IFS special variable. That is, "$*" is
# equivalent to "$1c$2c…", where c is the first character of the value of the
# IFS variable. If IFS is unset, the parameters are separated by spaces. If IFS
# is null, the parameters are joined without intervening separators.
: $*
#  ^ variable.language

# Expands to the positional parameters, starting from one. When the expansion
# occurs within double quotes, each parameter expands to a separate word. That
# is, "$@" is equivalent to "$1" "$2" …. If the double-quoted expansion occurs
# within a word, the expansion of the first parameter is joined with the
# beginning part of the original word, and the expansion of the last parameter
# is joined with the last part of the original word. When there are no
# positional parameters, "$@" and $@ expand to nothing (i.e., they are removed).
: $@
#  ^ variable.language

# Expands to the number of positional parameters in decimal.
: $#
#  ^ variable.language

# Expands to the exit status of the most recently executed foreground pipeline.
: $?
#  ^ variable.language

# Expands to the current option flags as specified upon invocation, by the set
# builtin command, or those set by the shell itself (such as the -i option).
: $-
#  ^ variable.language

# Expands to the process ID of the shell. In a () subshell, it expands to the
# process ID of the invoking shell, not the subshell.
: $$
#  ^ variable.language

# Expands to the process ID of the job most recently placed into the background,
# whether executed as an asynchronous command or using the bg builtin
: $!
#  ^ variable.language

# Expands to the name of the shell or shell script. This is set at shell
# initialization. If Bash is invoked with a file of commands (see Shell
# Scripts), $0 is set to the name of that file. If Bash is started with the -c
# option (see Invoking Bash), then $0 is set to the first argument after the
# string to be executed, if one is present. Otherwise, it is set to the filename
# used to invoke Bash, as given by argument zero.
: $0
#  ^ variable.other.readwrite

# At shell startup, set to the absolute pathname used to invoke the shell or
# shell script being executed as passed in the environment or argument list.
# Subsequently, expands to the last argument to the previous command, after
# expansion. Also set to the full pathname used to invoke each command executed
# and placed in the environment exported to that command. When checking mail,
# this parameter holds the name of the mail file.
: $_
#  ^ variable.language

fg %
#  ^ meta.group.expansion.job punctuation.definition.variable.job
fg %%
#  ^ meta.group.expansion.job punctuation.definition.variable.job
#   ^ meta.group.expansion.job variable.language.job
fg %+
#  ^ meta.group.expansion.job punctuation.definition.variable.job
#   ^ meta.function-call.arguments meta.group.expansion.job variable.language.job
fg %-
#  ^ meta.group.expansion.job punctuation.definition.variable.job
#   ^ meta.function-call.arguments meta.group.expansion.job variable.language.job
fg %1 %2 %3
#  ^ meta.group.expansion.job punctuation.definition.variable.job
#   ^ meta.group.expansion.job constant.numeric.integer.decimal.job
#     ^ meta.group.expansion.job punctuation.definition.variable.job
#      ^ meta.group.expansion.job constant.numeric.integer.decimal.job
#        ^ meta.group.expansion.job punctuation.definition.variable.job
#         ^ meta.group.expansion.job constant.numeric.integer.decimal.job
fg %ce
#  ^ meta.group.expansion.job punctuation.definition.variable.job
#   ^^ meta.group.expansion.job variable.other.readwrite
fg %?ce
#  ^ meta.group.expansion.job punctuation.definition.variable.job
#   ^ meta.group.expansion.job keyword.operator.regexp.quantifier
#    ^^ meta.group.expansion.job variable.other.readwrite

%1
# <- meta.group.expansion.job punctuation.definition.variable.job
#^ meta.group.expansion.job constant.numeric.integer.decimal.job

sleep 2 & jobs
# <- meta.function-call variable.function
#     ^ meta.function-call.arguments
#       ^ keyword.operator
#         ^ meta.function-call support.function - meta.function-call.arguments

subdir/./myscript.sh --option arg1 arg2 -x

${foo}/${bar}/${baz}
# ^^^               variable.function variable.other
#        ^^^        variable.function variable.other
#               ^^^ variable.function variable.other

declare foo         # 'foo' is a variable name
#^^^^^^^^^^ meta.function-call
#           ^ - meta.function-call
# <- storage.modifier
#          ^ - variable.other.readwrite
#                  ^ - meta.function-call
declare -A foo bar  # 'foo' and 'bar' are variable names
#^^^^^^^^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
declare ret; bar=foo
#^^^^^^^^^^ meta.function-call
#          ^ - meta.function-call
# <- storage.modifier
#          ^ keyword.operator
#               ^ keyword.operator
#                ^ meta.string string.unquoted
declare ret ;
#^^^^^^^^^^ meta.function-call
#          ^ - meta.function-call
# <- storage.modifier
#           ^ keyword.operator
declare ret&
#^^^^^^^^^^ meta.function-call
#          ^ - meta.function-call
# <- storage.modifier
#          ^ keyword.operator
declare ret &
#^^^^^^^^^^ meta.function-call
#          ^ - meta.function-call
# <- storage.modifier
#           ^ keyword.operator
printFunction "$variableString1" "$(declare -p variableArray)"
#             ^ meta.string string.quoted.double punctuation.definition.string.begin
#              ^^^^^^^^^^^^^^^^ meta.string meta.interpolation meta.group.expansion.parameter - string
#                              ^ meta.string string.quoted.double punctuation.definition.string.end
#                                ^ meta.string string.quoted.double punctuation.definition.string.begin
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string meta.interpolation meta.group.expansion.command.parens - string
#                                                            ^ meta.string string.quoted.double punctuation.definition.string.end
#                                  ^ punctuation.section.parens.begin
#                                   ^^^^^^^ storage.modifier
#                                           ^^ variable.parameter.option
#                                              ^^^^^^^^^^^^^ variable.other.readwrite.assignment
#                                                           ^ punctuation.section.parens.end

# <- - variable.other
printFunction "$variableString1" "`declare -p variableArray`"
#             ^ meta.string string.quoted.double punctuation.definition.string.begin
#              ^^^^^^^^^^^^^^^^ meta.string meta.interpolation meta.group.expansion.parameter - string
#                              ^ meta.string string.quoted.double punctuation.definition.string.end
#                                ^ meta.string string.quoted.double punctuation.definition.string.begin
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string meta.interpolation meta.group.expansion.command.backticks - string
#                                                           ^ meta.string string.quoted.double punctuation.definition.string.end
#                                 ^ punctuation.section.group.begin
#                                  ^^^^^^^ storage.modifier
#                                          ^^ variable.parameter.option
#                                             ^^^^^^^^^^^^^ variable.other.readwrite.assignment
#                                                          ^ punctuation.section.group.end
foo=`readonly x=5`
# <- variable.other.readwrite.assignment
#   ^ meta.group.expansion.command.backticks punctuation.section.group.begin
#    ^^^^^^^^ meta.group.expansion.command.backticks storage.modifier
#             ^ meta.group.expansion.command.backticks variable.other.readwrite.assignment
#              ^ meta.group.expansion.command.backticks keyword.operator.assignment
#               ^ meta.group.expansion.command.backticks string.unquoted
#                ^ meta.group.expansion.command.backticks punctuation.section.group.end

# <- - meta.group.expansion.command.backticks
export foo          # 'foo' is a variable name
#^^^^^^^^^ meta.function-call
# <- storage.modifier
#      ^^^ variable.other.readwrite.assignment
#                  ^ - meta.function-call
export foo bar      # 'foo' and 'bar' are variable names
# <- storage.modifier
#      ^^^ variable.other.readwrite.assignment
#         ^ - variable
#          ^^^ variable.other.readwrite.assignment
#                  ^ - meta.function-call
export foo='bar'    # 'foo' is a variable name
# <- storage.modifier
#^^^^^^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
#      ^^^ variable.other.readwrite.assignment
#         ^ keyword.operator.assignment
#          ^^^^^ meta.string string.quoted.single
#          ^ punctuation.definition.string.begin
#              ^ punctuation.definition.string.end
local foo bar       # 'foo' and 'bar' are variable names
# <- storage.modifier
#    ^ - variable
#     ^^^ variable.other.readwrite.assignment
#        ^ - variable
#         ^^^ variable.other.readwrite.assignment
#                  ^ - meta.function-call
local foo bar='baz' # 'foo' and 'bar' are variable names
# <- storage.modifier
#    ^ - variable
#     ^^^ variable.other.readwrite.assignment
#        ^ - variable
#         ^^^ variable.other.readwrite.assignment
#            ^ keyword.operator.assignment
#             ^^^^^ meta.string string.quoted.single
#             ^ punctuation.definition.string.begin
#                 ^ punctuation.definition.string.end
#                  ^ - string
#^^^^^^^^^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
readonly foo        # 'foo' is a variable name
# <- storage.modifier
#       ^ - variable
#        ^^^ variable.other.readwrite.assignment
#           ^ - variable.other.readwrite
#^^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
typeset foo         # 'foo' is a variable name
#^^^^^^^^^^ meta.function-call
# <- storage.modifier
#      ^ - variable
#       ^^^ variable.other.readwrite.assignment
#          ^ - variable.other.readwrite
#^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
unset foo bar       # 'foo' and 'bar' are variable names
# <- support.function
#    ^ - variable

foo= pwd
local pid="$(cat "$PIDFILE" 2>/dev/null)"
#     ^ - variable.parameter
local-pid
# ^ - storage.modifier
#    ^^ - variable.parameter

if [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2; then PLATFORM=docker; fi
#^ keyword.control.conditional.if
#     ^ keyword.operator.logical
#                         ^^ keyword.operator.logical.and
#                            ^ keyword.operator.logical.shell
#                              ^^^ meta.function-call.shell variable.function
#                                  ^^ keyword.operator.logical.or.shell
#                                     ^ keyword.operator.logical.shell
#                                       ^^^^ meta.function-call.shell variable.function.shell
#                                           ^ keyword.operator.logical.continue
#                                             ^^^^ keyword.control.conditional.then
#                                                         ^ variable.other.readwrite.assignment
#                                                          ^ keyword.operator.assignment
#                                                           ^ meta.string string.unquoted
if { [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2; }; then PLATFORM=docker; fi
#^ keyword.control.conditional.if
#  ^ punctuation.definition.compound.braces.begin
#       ^ keyword.operator.logical
#                           ^^ keyword.operator.logical.and
#                              ^ keyword.operator.logical.shell
#                                ^^^ meta.function-call.shell variable.function
#                                    ^^ keyword.operator.logical.or.shell
#                                       ^ keyword.operator.logical.shell
#                                         ^^^^ meta.function-call.shell variable.function.shell
#                                               ^ punctuation.definition.compound.braces.end
#                                                ^ keyword.operator.logical.continue
#                                                  ^^^^ keyword.control.conditional.then
#                                                              ^ variable.other.readwrite.assignment
#                                                               ^ keyword.operator.assignment
#                                                                ^ meta.string string.unquoted
if ( [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2 ); then PLATFORM=docker; fi
#^ keyword.control.conditional.if
#  ^ punctuation.definition.compound.begin
#       ^ keyword.operator.logical
#                           ^^ keyword.operator.logical.and
#                              ^ keyword.operator.logical.shell
#                                ^^^ meta.function-call.shell variable.function
#                                    ^^ keyword.operator.logical.or.shell
#                                       ^ keyword.operator.logical.shell
#                                         ^^^^ meta.function-call.shell variable.function.shell
#                                              ^ punctuation.definition.compound.end
#                                               ^ keyword.operator.logical.continue
#                                                 ^^^^ keyword.control.conditional.then
#                                                             ^ variable.other.readwrite.assignment
#                                                              ^ keyword.operator.assignment
#                                                               ^ meta.string string.unquoted

if cmd && \
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.shell variable.function.shell
if cmd &&
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.shell variable.function.shell
if cmd || \
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.shell variable.function.shell
if cmd ||
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.shell variable.function.shell
if \
   ! cmd
#  ^ keyword.operator.logical.shell
#    ^^^ meta.function-call.shell variable.function.shell
if !cmd
#  ^ punctuation.definition.history.shell
#   ^^^ meta.function-call.shell variable.function.shell
! cmd
# <- keyword.operator.logical.shell
# ^^^ meta.function-call.shell variable.function.shell
!cmd
# <- punctuation.definition.history.shell
#^^^ meta.function-call.shell variable.function.shell
! \
# <- keyword.operator.logical.shell
# ^ punctuation.separator.continuation.line.shell
! \
 cmd
#^^^ meta.function-call.shell variable.function.shell
!\
# <- punctuation.definition.history.shell
#^ punctuation.separator.continuation.line.shell
!\
 cmd
#^^^ meta.function-call.shell variable.function.shell
! [[ ]]
# <- keyword.operator.logical.shell
# ^^^^^ meta.function-call.arguments.shell
![[ ]]
# <- punctuation.definition.history.shell
#^^^^^ meta.function-call.arguments.shell
!!
# <- variable.language.history.shell punctuation.definition.history.shell
#^ variable.language.history.shell
!-1
# <- variable.language.history.shell punctuation.definition.history.shell
#^^ variable.language.history.shell
!51
# <- variable.language.history.shell punctuation.definition.history.shell
#^^ variable.language.history.shell

then-
#^^^^ - keyword
-then
#^^^^ - keyword
if-up
# <- - keyword
# ^ - keyword
up-if
#  ^^ - keyword
then-
#^^^^ - keyword
-then
#^^^^ - keyword
then-fi
#^^^^^^ - keyword
if-then
#^^^^^^ - keyword
done-foo
# <- - keyword
foo-done
#      ^ - keyword
for-bar
# <- - keyword
#  ^ - keyword

[ ]
# <- support.function.test.begin
# ^ support.function.test.end

[[ ]]
# <- support.function.double-brace.begin
 # <- support.function.double-brace.begin
 # ^^ support.function.double-brace.end

asdf foo && FOO=some-value pwd
# <- meta.function-call variable.function
#        ^^ keyword.operator.logical.and
#           ^^^ variable.other.readwrite.assignment
#              ^ keyword.operator.assignment
#               ^^^^^^^^^^ meta.string string.unquoted
#                          ^^^ meta.function-call support.function.pwd

(cd Layer1-linux  && PLATFORM=${PLATFORM} ./build ) &&
# <- punctuation.definition.compound.begin
#                                                 ^ punctuation.definition.compound.end
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                           ^ variable.function
(cd Layer2-nodejs && PLATFORM=${PLATFORM} ./build ) &&
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                           ^ variable.function
(cd Layer3-base   && PLATFORM=${PLATFORM} ./build ) &&
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                           ^ variable.function
(cd Layer4-custom && PLATFORM=${PLATFORM} name=${NOSN} ./build ) || err $?
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                            ^ variable.other.readwrite.assignment
#                                             ^ keyword.operator.assignment
#                                              ^ meta.string meta.interpolation - string
#                                                        ^ variable.function
alias foo=bar
# <- support.function.alias
#     ^^^ entity.name.function.alias
#        ^ keyword.operator.assignment
#         ^^^ meta.string string.unquoted
alias -p foo=bar
# <- support.function.alias
#     ^^ variable.parameter
#        ^^^ entity.name.function.alias
#           ^ keyword.operator.assignment
#            ^^^ meta.string string.unquoted

####################################################
# Strings and interpolation in parameter expansion #
####################################################

${foo:=bar}
#    ^ keyword.operator.assignment
# <- - variable.other.readwrite.assignment
#      ^^^^ - string.unquoted
#         ^ punctuation
# <- meta.function-call variable.function

: ${foo:-bar}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #         ^ punctuation

: ${foo:0:8}
  # <- punctuation.definition.variable
  #^ punctuation
  # ^^^ variable
  #    ^ keyword
  #     ^ constant.numeric - variable
  #      ^ keyword
  #       ^ constant.numeric - variable
  #        ^ punctuation

: ${@:0:1}
# ^^^^^^^^ meta.group.expansion.parameter
#   ^ variable.language

: ${*:0:1}
# ^^^^^^^^ meta.group.expansion.parameter
#   ^ - variable.language

: ${foo:='bar'}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation
  #      ^^^^^ string.quoted
  #          ^ punctuation
  #           ^ punctuation

: ${foo/#bar/baz}
  #     ^ variable.parameter.switch

: ${foo/%bar/baz}
  #     ^ variable.parameter.switch

: ${foo//bar/baz}
  # <- punctuation.definition.variable
  #    ^ keyword
  #     ^ variable.parameter.switch
  #         ^ keyword
  #             ^ punctuation

: ${#*}
  #  ^ variable.language
: ${#@}
  #  ^ variable.language
: ${@/bar/baz}
  # ^ variable.language
: ${*/bar/baz}
  # ^ variable.language
: ${@#pattern}
#   ^ variable.language
: ${*#pattern}
#   ^ variable.language
: ${@##pattern}
#   ^ variable.language
: ${*##pattern}
#   ^ variable.language
: ${@%pattern}
#   ^ variable.language
: ${*%%pattern}
#   ^ variable.language
: ${@,pattern}
#   ^ variable.language
: ${*,,pattern}
#   ^ variable.language
: ${@^pattern}
#   ^ variable.language
: ${*^^pattern}
#   ^ variable.language
: ${foo@Q}
#      ^ keyword.operator
: ${foo@E}
#      ^ keyword.operator
: ${foo@P}
#      ^ keyword.operator
: ${foo@A}
#      ^ keyword.operator
: ${foo@a}
#      ^ keyword.operator
: ${foo@t}
  #    ^ - keyword.operator

: ${foo:=`bar`}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation
  #          ^ punctuation
  #           ^ punctuation

: ${foo:=$( bar )}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation.definition.variable
  #       ^ punctuation
  #             ^ punctuation
  #              ^ punctuation

: ${foo:=$(( 1 + 1 ))}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation.definition.variable
  #       ^^ punctuation
  #          ^ constant.numeric
  #            ^ keyword.operator
  #              ^ constant.numeric
  #                ^^ punctuation
  #                  ^ punctuation

: ${foo:=$bar}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation.definition.variable
  #       ^^^ variable.other
  #          ^ punctuation

: ${foo:="$bar"}
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation
  #       ^ punctuation.definition.variable
  #        ^^^ variable.other
  #           ^ punctuation
  #            ^ punctuation

: ${foo//\}/foo}
# ^ punctuation.definition.variable
#  ^ punctuation
#      ^ keyword
#       ^ variable.parameter.switch
#        ^^ constant.character.escape
#          ^ keyword
#              ^ punctuation

: ${foo//%/}
#        ^ - keyword
: ${foo//#/}
#        ^ - keyword
: ${foo//!/}
#        ^ - keyword
: ${foo//:/}
#        ^ - keyword
: ${foo//@/}
#        ^ - keyword

: ${foo#}
#      ^ - keyword
: ${foo!}
#      ^ - keyword
: ${!foo}
#   ^ keyword
: ${#foo}
#   ^ keyword

: ${foo//a\/b/c/d}
#      ^ keyword
#       ^ variable.parameter.switch
#         ^^ constant.character.escape
#            ^ keyword
#              ^ - keyword

#################################
# Braces in parameter expansion #
#################################

: ${foo//foo\}foo\/foo/foo}
  # <- punctuation.definition.variable
  #    ^ keyword
  #     ^ variable.parameter.switch
  #         ^^ constant.character.escape
  #              ^^ constant.character.escape
  #                   ^ keyword
  #                       ^ punctuation

: ${foo:="${bar} baz"}
# ^^^^^^^^^^^^^^^^^^^^ meta.group.expansion.parameter
#         ^^^^^^ meta.group.expansion.parameter meta.group.expansion.parameter
  # <- punctuation.definition.variable
  #    ^^ keyword
  #      ^ punctuation
  #                 ^ punctuation.definition.string.end
  #                  ^ punctuation

# Sublime bug fix: "
#                  ^ comment.line.number-sign

${!varprefix*}
# <- punctuation.definition.variable
# ^ keyword.operator
#           ^ variable.language
#            ^ punctuation
# ^^^^^^^^^^^^ variable.function

${!varprefix@}
# <- punctuation.definition.variable
# ^ keyword.operator
#           ^ variable.language
#            ^ punctuation

${var#Pattern}
#^^^^^^^^^^^^^meta.group.expansion.parameter
# <- punctuation.definition.variable
#    ^ keyword.operator
#            ^ punctuation

${var##Pattern}
#^^^^^^^^^^^^^^meta.group.expansion.parameter
# <- punctuation.definition.variable
#    ^^ keyword.operator
#             ^ punctuation

${var###Pattern}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#      ^ - keyword.operator
#              ^ punctuation

: ${foo# #} # hello
#      ^ keyword.operator.expansion
#        ^ meta.group.expansion - comment-line
#         ^ punctuation
#           ^ comment.line punctuation

${var%Pattern}
# <- punctuation.definition.variable
#    ^ keyword.operator
#            ^ punctuation

${var%%Pattern}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#             ^ punctuation

${var%%%Pattern}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#      ^ - keyword.operator
#              ^ punctuation

: ${foo% #} # hello
#      ^ keyword.operator.expansion
#        ^ meta.group.expansion - comment-line
#         ^ punctuation
#           ^ comment.line punctuation

: ${foo#\ \#} # hello
#      ^ keyword.operator.expansion
#       ^^^^ constant.character.escape
#          ^ meta.group.expansion - comment-line
#           ^ punctuation
#             ^ comment.line punctuation

: ${foo%\ \#} # hello
#      ^ keyword.operator.expansion
#       ^^^^ constant.character.escape
#          ^ meta.group.expansion - comment-line
#           ^ punctuation
#             ^ comment.line punctuation

####################################################################
# Parameter-expansion operators                                    #
# cf. http://www.tldp.org/LDP/abs/html/parameter-substitution.html #
####################################################################

${foo//%/}
# <- punctuation.definition.variable
#    ^ keyword
#     ^ variable.parameter.switch
#      ^ - keyword
#       ^ keyword
#        ^ punctuation

${foo//#/}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ variable.parameter.switch
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo//!/}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ variable.parameter.switch
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo//:/}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ variable.parameter.switch
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo//@/}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ variable.parameter.switch
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo#} # "#" is not a operator here
# <- punctuation.definition.variable
#    ^ - keyword.operator
#     ^ punctuation

${foo!} # "!" is not a operator here
# <- punctuation.definition.variable
#    ^ - keyword.operator
#     ^ punctuation

${var:pos:len}
# <- punctuation.definition.variable
#    ^ keyword.operator
#        ^ keyword.operator
#            ^ punctuation

${foo//a\/b/c/d}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ variable.parameter.switch
#       ^^ constant.character.escape
#          ^ keyword.operator
#            ^ - keyword.operator
#              ^ punctuation

${foo^}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ punctuation

${foo,}
# <- punctuation.definition.variable
#    ^ keyword.operator
#     ^ punctuation

${foo^^}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#      ^ punctuation

${foo,,}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#      ^ punctuation

${foo,,,Pattern}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#      ^ - keyword
#              ^ punctuation

${foo,,Pattern}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#             ^ punctuation

${foo-bar}
# <- punctuation.definition.variable
#    ^ keyword.operator
#        ^ punctuation

${foo:-bar}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#         ^ punctuation

${foo+bar}
# <- punctuation.definition.variable
#    ^ keyword.operator
#        ^ punctuation

${foo:+bar}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#         ^ punctuation

: ${foo=bar}
  # <- punctuation.definition.variable
  #    ^ keyword.operator
  #        ^ punctuation

: ${foo:=bar}
  # <- punctuation.definition.variable
  #    ^^ keyword.operator
  #         ^ punctuation

${foo?bar}
# <- punctuation.definition.variable
#    ^ keyword.operator
#        ^ punctuation

${foo:?bar}
# <- punctuation.definition.variable
#    ^^ keyword.operator
#         ^ punctuation

: ${foo}@
#       ^ - variable.language

: ${foo}#
#       ^ - variable.language

: ${foo:="${bar} baz"}
# <- meta.function-call support.function.colon
# ^ meta.function-call.arguments punctuation.definition.variable
#      ^^ meta.function-call.arguments keyword.operator.assignment
#        ^ meta.function-call.arguments meta.string string.quoted.double punctuation.definition.string.begin
#          ^ meta.function-call.arguments meta.string punctuation - string
#           ^^^ meta.function-call.arguments meta.string variable.other.readwrite - string
#              ^ meta.function-call.arguments meta.string punctuation - variable.other.readwrite - string
#               ^^^^ meta.function-call.arguments meta.string string.quoted.double
#                   ^ meta.function-call.arguments meta.string string.quoted.double punctuation.definition.string.end
#                    ^ meta.function-call.arguments punctuation

echo "Url: 'postgres://root:$DB_PASSWORD@$IP:$PORT/db'"
#    ^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.quoted.double - meta.interpolation - variable
#                           ^ meta.string meta.interpolation meta.group.expansion.parameter punctuation.definition.variable - string
#                            ^^^^^^^^^^^ meta.string meta.interpolation meta.group.expansion.parameter variable.other.readwrite - string
#                                       ^ meta.string string.quoted.double - meta.interpolation - variable
#                                        ^ meta.string meta.interpolation meta.group.expansion.parameter punctuation.definition.variable - string
#                                         ^^ meta.string meta.interpolation meta.group.expansion.parameter variable.other.readwrite
#                                           ^ meta.string string.quoted.double - meta.interpolation - variable
#                                            ^ meta.string meta.interpolation meta.group.expansion.parameter punctuation.definition.variable
#                                             ^^^^ meta.string meta.interpolation meta.group.expansion.parameter variable.other.readwrite
#                                                 ^^^^^ meta.string string.quoted.double - meta.interpolation - variable
status="${status#"${status%%[![:space:]]*}"}"
#     ^ keyword.operator.assignment
#               ^ keyword.operator.expansion
#                         ^^ keyword.operator.expansion
#                           ^ - punctuation
#                             ^ - punctuation
#                                     ^^ - punctuation
status="${status#${status%%[![:space:]]*}}"
#     ^ keyword.operator.assignment
#               ^ keyword.operator.expansion
#                        ^^ keyword.operator.expansion
#                          ^ - punctuation
#                            ^ - punctuation
#                                    ^^ - punctuation
CURPOS=${CURPOS#*[}
#                ^ - keyword.control.regexp
echo "${ROW#*[}"
#            ^ - keyword.control.regexp
echo *
#    ^ keyword.operator.regexp.quantifier
echo {a,g*}
#    ^ meta.function-call.arguments punctuation.section.expansion.brace.begin
#      ^ meta.function-call.arguments punctuation.separator
#        ^ meta.function-call.arguments keyword.operator.regexp.quantifier
#         ^ meta.function-call.arguments punctuation.section.expansion.brace.end
echo ca{${x/z/t}" "{legs,f${o//a/o}d,f${o:0:1}t},r" "{tires,wh${o//a/e}ls}}
#      ^ punctuation.section.expansion.brace.begin
#       ^ punctuation.definition.variable
#        ^ punctuation.section.expansion.parameter.begin
#          ^ keyword.operator.substitution - variable.other.readwrite
#            ^ keyword.operator.substitution
#                ^ string.quoted.double
#                  ^ punctuation.section.expansion.brace.begin
#                       ^ punctuation.separator
#                         ^ punctuation.definition.variable
#                          ^ punctuation.section.expansion.parameter.begin
#                           ^ variable.other.readwrite
#                                   ^ punctuation.separator
#                                        ^ keyword.operator.substring - variable.other.readwrite
#                                          ^ keyword.operator.substring
#                                            ^ punctuation.section.expansion.parameter.end
#                                              ^ punctuation.section.expansion.brace.end
#                                               ^ punctuation.separator
#                                                  ^ string.quoted.double
echo [^:]*
#    ^ meta.function-call.arguments keyword.control.regexp.set.begin
#     ^ meta.function-call.arguments keyword.operator.logical.not
#       ^ meta.function-call.arguments keyword.control.regexp.set.end
#        ^ meta.function-call.arguments keyword.operator.regexp.quantifier
charclass=\}ower
#         ^^ constant.character.escape
echo *(g[[:${charclass/\}/l}:]]*)
#    ^ keyword.operator.regexp.quantifier
#     ^ punctuation.section.parens.begin
#       ^^ keyword.control.regexp.set.begin
#          ^ punctuation.definition.variable
#            ^^^^^^^^^ variable.other.readwrite
#                     ^ keyword.operator.substitution - variable.other.readwrite
#                      ^^ constant.character.escape
#                        ^ keyword.operator.substitution
#                          ^ punctuation.section.expansion.parameter.end
#                            ^^ keyword.control.regexp.set.end
#                              ^ keyword.operator.regexp.quantifier
#                               ^ punctuation.section.parens.end
echo ?([[:alpha:]]|[[:digit:]])*
#    ^ keyword.operator.regexp.quantifier
#     ^ punctuation.section.parens.begin
#                 ^ keyword.operator.logical.or
#                             ^ punctuation.section.parens.end
#                              ^ keyword.operator.regexp.quantifier
echo @(foo*)*
#    ^ keyword.operator.regexp.quantifier
#     ^ punctuation.section.parens.begin
#         ^ keyword.operator.regexp.quantifier
#          ^ punctuation.section.parens.end
#           ^ keyword.operator.regexp.quantifier
echo +(bar|qux)
#    ^ keyword.operator.regexp.quantifier
#     ^ punctuation.section.parens.begin
#         ^ keyword.operator.logical.or
#             ^ punctuation.section.parens.end
[[ a == [abc[]* ]]
#           ^ - keyword.control
#               ^^ support.function
: ${foo//[abc[]/x}
#            ^ - keyword.control
#                ^ punctuation.section.expansion.parameter.end
if [[ ' foobar' == [\ ]foo* ]]; then
  #                ^ keyword.control.regexp.set.begin
  #                 ^^ constant.character.escape
  #                   ^ keyword.control.regexp.set.end
  #                         ^^ support.function.double-brace.end
  :
fi

case-
#^ - keyword

esac
#^ keyword.control.conditional.end - meta.conditional.case

case
#^ meta.conditional.case keyword.control.conditional.case

esac
#^ meta.conditional.case keyword.control.conditional.end

case var in
  ( patt ( esac
#^ meta.conditional.case.shell
# ^^^^^^^^^ meta.conditional.case.clause.patterns.shell
# ^ keyword.control.conditional.patterns.begin.shell
#        ^ punctuation.section.parens.begin.shell
#          ^^^^ meta.conditional.case.shell keyword.control.conditional.end.shell
#              ^ - meta.conditional

case   # comment
#^^^^^^^^^^^^^^^^ meta.conditional.case.shell
#^^^ keyword.control.conditional.case.shell
#      ^^^^^^^^^^ comment.line.number-sign.shell
  var  # comment
#^^^^^^^^^^^^^^^^ meta.conditional.case.shell
#      ^^^^^^^^^^ comment.line.number-sign.shell
  in   # comment
#^^^^^^^^^^^^^^^^^ meta.conditional.case.shell  
# ^^ keyword.control.in.shell
#      ^^^^^^^^^^ comment.line.number-sign.shell
  pattern) # comment
#^ meta.conditional.case.shell
# ^^^^^^^^ meta.conditional.case.clause.patterns.shell
#         ^^^^^^^^^^^ meta.conditional.case.clause.commands.shell
#          ^^^^^^^^^^ comment.line.number-sign.shell
esac
#<- meta.conditional.case.shell keyword.control.conditional.end.shell
#^^^ meta.conditional.case.shell keyword.control.conditional.end.shell

case $_G_unquoted_arg in
*[\[\~\#\&\*\(\)\{\}\|\;\<\>\?\'\ ]*|*]*|"")
#^ keyword.control.regexp.set.begin
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape
#                                 ^ keyword.control.regexp.set.end
#                                     ^ - keyword.control
  _G_quoted_arg=\"$_G_unquoted_arg\"
  ;;
*)
  _G_quoted_arg=$_G_unquoted_arg
;;
esac
case $1 in
*[\\\`\"\$]*)
#^ keyword.control.regexp.set.begin
# ^^^^^^^^ constant.character.escape
#         ^ keyword.control.regexp.set.end
  _G_unquoted_arg=`printf '%s\n' "$1" |$SED "$sed_quote_subst"` ;;
*)
  _G_unquoted_arg=$1 ;;
esac

####################################################################
# 3.2.5 Coprocesses                                                #
####################################################################

coproc
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell keyword.other.coproc.shell
#     ^ - meta.function - keyword

coproc sed s/^/foo/
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell
#     ^ meta.function-call.arguments.shell meta.function.coproc.shell
#      ^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.shell
#         ^^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.arguments.shell
#                  ^ - meta.function - meta.function-call
#^^^^^ keyword.other.coproc.shell
#      ^^^ variable.function.shell

coproc ls thisfiledoesntexist; read; 2>&1
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell
#     ^ meta.function-call.arguments.shell meta.function.coproc.shell
#      ^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.shell
#        ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.arguments.shell
#                            ^^ meta.function-call.arguments.shell meta.function.coproc.shell - meta.function-call.shell
#                              ^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.shell
#                                  ^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell - meta.function-call.shell
#                                        ^ - meta.function
#^^^^^ keyword.other.coproc.shell
#      ^^ variable.function.shell
#                            ^ keyword.operator.logical.continue.shell
#                              ^^^^ support.function.read.shell
#                                  ^ keyword.operator.logical.continue.shell
#                                    ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                     ^^ keyword.operator.assignment.redirection.shell
#                                       ^ constant.numeric.integer.decimal.file-descriptor.shell

coproc awk '{print "foo" $0;fflush()}'
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell
#     ^ meta.function-call.arguments.shell meta.function.coproc.shell
#      ^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.function-call.arguments.shell
#                                     ^ - meta.function - meta.function-call
#^^^^^ keyword.other.coproc.shell
#      ^^^ variable.function.shell
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.single.shell
#          ^ punctuation.definition.string.begin.shell
#                                    ^ punctuation.definition.string.end.shell

coproc { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell
#     ^ meta.function-call.arguments.shell meta.function.coproc.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.compound.shell
#                                            ^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell - meta.compound
#                                                  ^ - meta.function-call - meta.function.coproc
#        ^^ meta.function-call.shell
#          ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ - meta.function-call.shell
#                                ^^^^ meta.function-call.shell
#                                    ^^^^^^^^ - meta.function-call.shell
#^^^^^ keyword.other.coproc.shell
#      ^ punctuation.definition.compound.braces.begin.shell
#        ^^ variable.function.shell
#                              ^ keyword.operator.logical.continue.shell
#                                ^^^^ support.function.read.shell
#                                    ^ keyword.operator.logical.continue.shell
#                                      ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                       ^^ keyword.operator.assignment.redirection.shell
#                                         ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                           ^ punctuation.definition.compound.braces.end.shell
#                                             ^ keyword.operator.logical.pipe.shell
#                                               ^^^ variable.function.shell

coproc myls { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell
#     ^^^^^^ meta.function-call.arguments.shell meta.function.coproc.identifier.shell - meta.block
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.block.shell
#                                                 ^^^ - meta.function-call
#                                                    ^^^ meta.function-call.shell
#^^^^^ keyword.other.coproc.shell
#           ^ punctuation.section.block.begin.shell
#             ^^ variable.function.shell
#                                   ^ keyword.operator.logical.continue.shell
#                                     ^^^^ support.function.read.shell
#                                         ^ keyword.operator.logical.continue.shell
#                                           ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                            ^^ keyword.operator.assignment.redirection.shell
#                                              ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                                ^ punctuation.section.block.end.shell
#                                                  ^ keyword.operator.logical.pipe.shell
#                                                    ^^^ variable.function.shell

{ coproc tee { tee logfile ;} >&3 ;} 3>&1
# <- meta.compound.shell punctuation.definition.compound.braces.begin.shell
# ^^^^^^ meta.compound.shell meta.function-call.shell
#       ^^^^^ meta.compound.shell meta.function-call.arguments.shell meta.function.coproc.identifier.shell
#            ^^^^^^^^^^^^^^^^ meta.compound.shell meta.function-call.arguments.shell meta.function.coproc.shell meta.block.shell
#                            ^^^^ meta.compound.shell meta.function-call.arguments.shell
#                                ^^^ meta.compound.shell - meta.function-call
#                                   ^^^^^ meta.function-call.arguments.shell
# ^^^^^^ keyword.other.coproc.shell
#        ^^^ entity.name.function.coproc
#            ^ punctuation.section.block.begin.shell
#              ^^^ variable.function
#                           ^ punctuation.section.block.end.shell
#                             ^^ keyword.operator.assignment.redirection
#                               ^ constant.numeric.integer.decimal.file-descriptor
#                                  ^ punctuation.definition.compound.braces.end
#                                    ^ constant.numeric.integer.decimal.file-descriptor
#                                     ^^ keyword.operator.assignment.redirection
#                                       ^ constant.numeric.integer.decimal.file-descriptor

coproc foobar {
# <- meta.function-call.shell keyword.other.coproc.shell
#^^^^^ meta.function-call.shell keyword.other.coproc.shell
#     ^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.identifier.shell
#             ^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.block.shell
#^^^^^ keyword.other.coproc.shell
#      ^^^^^^ entity.name.function.coproc.shell
#             ^ punctuation.section.block.begin.shell
    read
#^^^^^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.block.shell
#   ^^^^ meta.function-call.arguments.shell meta.function.coproc.shell meta.block.shell meta.function-call.shell support.function.read.shell
}
# <- meta.function-call.arguments.shell meta.function.coproc.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta

###################
# Misc. operators #
###################
(( 0123456708 ))
#  ^ constant.numeric.integer.octal punctuation.definition.numeric.base
#  ^^^^^^^^^ constant.numeric.integer.octal
#           ^ constant.numeric.integer.octal invalid.illegal.not-an-octal-character
(( 0 ))
#  ^ - punctuation
(( ~1 ))
#  ^ meta.group.arithmetic keyword.operator.bitwise
(( !1 ))
#  ^ meta.group.arithmetic keyword.operator.logical
(( a/b ))
#   ^ meta.group.arithmetic keyword.operator.arithmetic
(( a%b ))
#   ^ meta.group.arithmetic keyword.operator.arithmetic
(( a+b ))
#   ^ meta.group.arithmetic keyword.operator.arithmetic
(( a-b ))
#   ^ meta.group.arithmetic keyword.operator.arithmetic
(( a*b ))
#   ^ meta.group.arithmetic keyword.operator.arithmetic
((a++))
#  ^^ meta.group.arithmetic keyword.operator.arithmetic
((a--))
#  ^^ meta.group.arithmetic keyword.operator.arithmetic
((++a))
# ^^ meta.group.arithmetic keyword.operator.arithmetic
((--a))
# ^^ meta.group.arithmetic keyword.operator.arithmetic
((a**16))
#  ^^ meta.group.arithmetic keyword.operator.arithmetic
((a<<12))
#  ^^ meta.group.arithmetic keyword.operator.logical
((a>>14))
#  ^^ meta.group.arithmetic keyword.operator.logical
((a&b))
#  ^ meta.group.arithmetic keyword.operator.bitwise
(( a <= b))
#    ^^ meta.group.arithmetic keyword.operator.logical
(( a >= b))
#    ^^ meta.group.arithmetic keyword.operator.logical
((a < b))
#   ^ meta.group.arithmetic keyword.operator.logical
((a > b))
#   ^ meta.group.arithmetic keyword.operator.logical
((a^b))
#  ^ meta.group.arithmetic keyword.operator.bitwise
((a|b))
#  ^ meta.group.arithmetic keyword.operator.bitwise
((a&&b))
#  ^^ meta.group.arithmetic keyword.operator.logical
((a||b))
#  ^^ meta.group.arithmetic keyword.operator.logical
((a ? 0 : 1))
#   ^ keyword.operator.ternary
#       ^ keyword.operator.logical
(( a=b, a*=b, a/=b, a%=b, a+=b, a-=b, a<<=b, a>>=b, a&=b, a^=b, a|=b ))
#   ^ keyword.operator.assignment
#     ^ meta.group.arithmetic punctuation.separator
#        ^^ keyword.operator.assignment
#           ^ meta.group.arithmetic punctuation.separator
#              ^^ keyword.operator.assignment
#                ^ meta.group.arithmetic
#                    ^^ keyword.operator.assignment
#                      ^ meta.group.arithmetic
#                          ^^ keyword.operator.assignment
#                             ^ meta.group.arithmetic punctuation.separator
#                                ^^ keyword.operator.assignment
#                                      ^^^ keyword.operator.assignment
#                                             ^^^ keyword.operator.assignment
#                                                    ^^ keyword.operator.assignment
#                                                          ^^ keyword.operator.assignment
#                                                                ^^ keyword.operator.assignment
(((a>b) ? (a>c?a:c) : (b>c?b:c)))
# <- punctuation.section.arithmetic.begin
#^ punctuation.section.arithmetic.begin
# ^ punctuation.section.parens.begin
#     ^ punctuation.section.parens.end
#         ^ punctuation.section.parens.begin
#                 ^ punctuation.section.parens.end
#                     ^ punctuation.section.parens.begin
#                             ^ punctuation.section.parens.end
#                              ^^ punctuation.section.arithmetic.end
# ^^^^^ meta.group.parens
#      ^^^ - meta.group.parens
#         ^^^^^^^^^ meta.group.parens
#                  ^^^ - meta.group.parens
#                     ^^^^^^^^^ meta.group.parens
#                              ^^ - meta.group.parens
(( 0xDEADBEEF 0xdeadbeef 0x1234567890abcdefg ))
#  ^^ constant.numeric.integer.hexadecimal punctuation.definition.numeric.base
#    ^^^^^^^^ constant.numeric.integer.hexadecimal
#             ^^ constant.numeric.integer.hexadecimal punctuation.definition.numeric.base
#               ^^^^^^^^ constant.numeric.integer.hexadecimal
#                        ^^ constant.numeric.integer.hexadecimal punctuation.definition.numeric.base
#                          ^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal
#                                          ^ constant.numeric.integer.hexadecimal invalid.illegal.not-a-hex-character
(( 64#123@_ ))
#  ^^^^^^^^ constant.numeric.integer.other
#  ^^^ punctuation.definition.numeric.base
(( 0x1f ))
#  ^^^^ constant.numeric.integer.hexadecimal
#  ^^ punctuation.definition.numeric.base
(( a * b ))
#    ^ keyword.operator.arithmetic - keyword.operator.regexp
((a+=b))
#    ^ - string.unquoted
ls>foo.txt
# <- variable.function
# ^^ - variable.function
echo>foo.txt
# <- support.function
#   ^^ - support.function

if [[ $- != *i* ]] ; then
  #   ^ punctuation.definition.variable
  #    ^ variable.language
  echo shell is not interactive
fi

echo +(bar|qux) | wc
#         ^ keyword.operator.logical.or
#               ^ keyword.operator.logical.pipe

foo='bar'
#  ^ keyword.operator

echo git rev-list "$(echo --all)" | grep -P 'c354a80'
#                  ^ punctuation.definition.variable
#                   ^ punctuation
#                              ^ punctuation
x="$(( foo++ ))"
#  ^ punctuation.definition.variable
#   ^^ punctuation
#         ^^ keyword
#            ^^ punctuation
foo[${j}+10]="`foo`"
#  ^ variable.other.readwrite.assignment punctuation
#   ^ variable.other.readwrite.assignment punctuation.definition.variable
#    ^ variable.other.readwrite.assignment punctuation
#     ^ variable.other.readwrite.assignment variable.other.readwrite
#      ^ variable.other.readwrite.assignment punctuation
#       ^ variable.other.readwrite.assignment keyword.operator.arithmetic
#        ^^ variable.other.readwrite.assignment constant.numeric.integer
#          ^ variable.other.readwrite.assignment punctuation.section.braces.end
#           ^ keyword.operator

# Invokes "foo -e", so "-e" is a switch.
foo \
-e Hello
# <- punctuation
#^ variable.parameter

# Invokes "foo-e", so "-e" is NOT a switch.
foo\
-e Hello
# <- - punctuation
#^ - variable.parameter

# Invokes "echo -e", so "-e" is a switch.
echo \
-e Hello
# <- punctuation
#^ variable.parameter

# Invokes "echo-e", so "-e" is NOT a switch.
echo\
-e Hello
# <- - punctuation
#^ - variable.parameter

foo+=" baz"
#  ^^ keyword.operator

export foo='bar'
# <- storage.modifier
#         ^ keyword.operator

unset -f -n -v foo
# <- support.function
#     ^ punctuation
#      ^ variable
#        ^ punctuation
#         ^ variable
#           ^ punctuation
#            ^ variable


let "two=5+5"; if [[ "$X" == "1" ]]; then X="one"; fi
#^^^^^^^^^^^^ meta.function-call.shell
#^^ support.function.let.shell
#   ^^^^^^^^^ string.quoted.double.shell
#            ^ keyword.operator.logical.continue.shell
#              ^^ keyword.control.conditional.if.shell
#                 ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                  ^ keyword.operator.logical.continue.shell
#                                    ^^^^ keyword.control.conditional.then.shell
#                                         ^ variable.other.readwrite.assignment.shell
#                                          ^ keyword.operator.assignment.shell
#                                           ^^^^^ string.quoted.double.shell
#                                                ^ keyword.operator.logical.continue.shell
#                                                  ^^ keyword.control.conditional.end.shell

let 5 \
    + 5
#^^^^^^ meta.function-call.shell
#   ^ keyword.operator.arithmetic.shell
#     ^ constant.numeric.integer.decimal.shell

let 5+5 # comment
#^^^^^^ meta.function-call.shell
#^^ support.function.let.shell
#   ^ constant.numeric.integer.decimal.shell
#    ^ keyword.operator.arithmetic.shell
#     ^ constant.numeric.integer.decimal.shell

foo=`let 5+5`
#   ^ punctuation.section.group.begin
#          ^ constant.numeric.integer
#           ^ punctuation.section.group.end
#    ^^^^^^^ meta.function-call
foo=`some-command --long1`
#   ^ punctuation.section.group.begin
#    ^^^^^^^^^^^^ meta.function-call variable.function
#                 ^^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                   ^^^^^ meta.function-call.arguments variable.parameter
#                        ^ punctuation.section.group.end
foo=`some-command -x`
#   ^ punctuation.section.group.begin
#    ^^^^^^^^^^^^ meta.function-call variable.function
#                 ^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                  ^ meta.function-call.arguments variable.parameter
#                   ^ punctuation.section.group.end

foo=`echo -e`
#   ^ punctuation.section.group.begin
#    ^^^^ meta.function-call support.function.echo
#         ^ meta.function-call.arguments punctuation.definition.parameter
#          ^ meta.function-call.arguments variable.parameter
#           ^ punctuation.section.group.end

foo=`cd -L`
#   ^ punctuation.section.group.begin
#    ^^ meta.function-call support.function.cd
#       ^ meta.function-call.arguments punctuation.definition.parameter
#        ^ meta.function-call.arguments variable.parameter
#         ^ punctuation.section.group.end

echo "`dirname -- foo/bar`"
#     ^ punctuation.section.group.begin
#              ^^ keyword.operator.end-of-options
#                        ^ punctuation.section.group.end

foo=`(uname -r) 2>/dev/null`
#                          ^ punctuation.section.group.end - punctuation.section.group.begin
UNAME_RELEASE=`(uname -r) 2>/dev/null` || UNAME_RELEASE=unknown
#                                    ^ punctuation.section.group.end
UNAME_SYSTEM=`(uname -s) 2>/dev/null`  || UNAME_SYSTEM=unknown
#                                   ^ punctuation.section.group.end
UNAME_VERSION=`(uname -v) 2>/dev/null` || UNAME_VERSION=unknown
#                                    ^ punctuation.section.group.end

commits=($(git rev-list --reverse --abbrev-commit "$latest".. -- "$prefix"))

# <- - variable.other.readwrite

[[ $str =~ ^$'\t' ]]
#       ^^ keyword.operator.logical
#          ^^^^^^ meta.regexp

[[ $str =~ ^abc$var$ ]]
#       ^^ keyword.operator.logical
#          ^^^^ meta.regexp
#               ^^^ variable.other.readwrite
#                  ^ meta.regexp

################
# Control flow #
################

while true; do
# <- keyword.control.loop.while
#        ^ meta.function-call variable.function
#         ^ keyword.operator
#            ^ keyword.control
    break
    # <- keyword.control.flow.break.shell

    continue
    # <- keyword.control.flow.continue.shell

done
# <- keyword.control.loop.end

while ! true; do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical
#           ^ keyword.operator.logical.continue
#             ^^ keyword.control.loop.do
#                          ^^^^ keyword.control.loop.end

while ! { true; }; do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical
#       ^ punctuation.definition.compound.braces.begin
#         ^^^^ variable.function
#             ^ keyword.operator.logical.continue
#               ^ punctuation.definition.compound.braces.end
#                ^ keyword.operator.logical.continue
#                  ^^ keyword.control.loop.do
#                               ^^^^ keyword.control.loop.end

while ! { [[ true ]]; }; do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical
#       ^ punctuation.definition.compound.braces.begin
#         ^^ support.function.double-brace.begin
#                 ^^ support.function.double-brace.end
#                   ^ keyword.operator.logical.continue
#                     ^ punctuation.definition.compound.braces.end
#                      ^ keyword.operator.logical.continue
#                        ^^ keyword.control.loop.do
#                                     ^^^^ keyword.control.loop.end

while ! ( [[ true ]] ); do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical
#       ^ punctuation.definition.compound.begin
#         ^^ support.function.double-brace.begin
#                 ^^ support.function.double-brace.end
#                    ^ punctuation.definition.compound.end
#                     ^ keyword.operator.logical.continue
#                       ^^ keyword.control.loop.do
#                                    ^^^^ keyword.control.loop.end

while read -r -d '' f; do
# <- keyword.control.loop.while
#     ^^^^ support.function.read
#          ^^ variable.parameter.option
#             ^^ variable.parameter.option
#                ^^ string.quoted.single.shell
#                    ^ keyword.operator.logical.continue
#                      ^^ keyword.control.loop.do
done
# <- keyword.control.loop.end

while IFS= read -r -d '' f; do
# <- keyword.control.loop.while
#     ^^^ variable.other.readwrite.assignment
#        ^ keyword.operator.assignment
#          ^^^^ support.function.read
#               ^^ variable.parameter.option
#                  ^^ variable.parameter.option
#                     ^^ string.quoted.single.shell
#                         ^ keyword.operator.logical.continue
#                           ^^ keyword.control.loop.do
done
# <- keyword.control.loop.end

do echo bar; until ! { [[ true ]]; }
# <- keyword.control.loop.do
#            ^^^^^ keyword.control.loop.until.shell
#                  ^ keyword.operator.logical
#                    ^ punctuation.definition.compound.braces.begin
#                      ^^ support.function.double-brace.begin
#                              ^^ support.function.double-brace.end
#                                ^ keyword.operator.logical.continue
#                                  ^ punctuation.definition.compound.braces.end

declare -a array
array[500]=value
#    ^ variable.other.readwrite.assignment punctuation.section.braces.begin
#     ^^^ variable.other.readwrite.assignment constant.numeric.integer
#        ^ variable.other.readwrite.assignment punctuation.section.braces.end
#         ^ keyword.operator.assignment
#          ^^^^^ meta.string string.unquoted
echo ${array[@]}
#           ^ meta.function-call.arguments variable.other.readwrite punctuation.section.braces.begin
#            ^ meta.function-call.arguments variable.other.readwrite variable.language.array
#             ^ meta.function-call.arguments variable.other.readwrite punctuation.section.braces.end

array["foo"]=bar
#    ^ variable.other.readwrite.assignment punctuation.section.braces.begin
#     ^ variable.other.readwrite.assignment string.quoted.double punctuation.definition.string.begin
#      ^^^ variable.other.readwrite.assignment string.quoted.double
#         ^ variable.other.readwrite.assignment string.quoted.double punctuation.definition.string.end
#          ^ variable.other.readwrite.assignment punctuation.section.braces.end
#           ^ keyword.operator.assignment
array[foo]=bar
#    ^ variable.other.readwrite.assignment punctuation.section.braces.begin
#     ^^^ variable.other.readwrite.assignment
#        ^ variable.other.readwrite.assignment punctuation.section.braces.end
#         ^ keyword.operator.assignment
#          ^^^ meta.string string.unquoted
array=($one "two" ${three} 'four' $5)
# <- variable.other.readwrite.assignment
#    ^ keyword.operator.assignment
#     ^ punctuation.section.parens.begin
#      ^ punctuation.definition.variable
#       ^^^ variable.other.readwrite
#           ^ string.quoted.double punctuation.definition.string.begin
#            ^^^ string.quoted.double
#               ^ string.quoted.double punctuation.definition.string.end
#                 ^ punctuation.definition.variable
#                  ^ punctuation
#                   ^^^^^ variable.other.readwrite
#                        ^ punctuation
#                          ^ string.quoted.single punctuation.definition.string.begin
#                           ^^^^ string.quoted.single
#                               ^ string.quoted.single punctuation.definition.string.end
#                                 ^ punctuation.definition.variable
#                                  ^ variable.other.readwrite
#                                   ^ punctuation.section.parens.end
array=([foo]== ["bar"]='what' [5+10]=qux)
#    ^ keyword.operator.assignment
#     ^ punctuation.section.parens.begin
#      ^ punctuation.section.brackets.begin
#          ^ punctuation.section.brackets.end
#           ^ keyword.operator.assignment
#            ^ - keyword.operator.assignment
#              ^ punctuation.section.brackets.begin
#               ^ string.quoted.double punctuation.definition.string.begin
#                   ^ string.quoted.double punctuation.definition.string.end
#                    ^ punctuation.section.brackets.end
#                     ^ keyword.operator.assignment
#                      ^ string.quoted.single punctuation.definition.string.begin
#                           ^ string.quoted.single punctuation.definition.string.end
#                             ^ punctuation.section.brackets.begin
#                              ^ - constant.numeric
#                               ^ - keyword
#                                ^^ - constant.numeric
#                                  ^ punctuation.section.brackets.end
#                                   ^ keyword.operator.assignment
#                                       ^ punctuation.section.parens.end
array=()  # an empty array
#    ^ keyword.operator.assignment
#     ^ punctuation.section.parens.begin
#      ^ punctuation.section.parens.end

for (( i = 0; i < 10; i++ )); do
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.arithmetic
# <- keyword.control
#   ^^ meta.group.for punctuation.section.arithmetic.begin
#        ^ meta.group.for keyword.operator.assignment
#          ^ meta.group.for constant.numeric.integer - punctuation
#           ^ meta.group.for punctuation.separator
#               ^ meta.group.for keyword.operator.logical
#                 ^^ meta.group.for constant.numeric.integer
#                   ^ meta.group.for punctuation.separator
#                      ^^ meta.group.for keyword.operator.arithmetic
#                         ^^ meta.group.for punctuation.section.arithmetic.end
#                           ^ keyword.operator.logical.continue
#                             ^^ keyword.control.loop.do
    echo $i
    # <- meta.function-call support.function.echo
    #    ^ meta.function-call.arguments punctuation.definition.variable
    #     ^ meta.function-call.arguments variable.other.readwrite
done
# <- keyword.control.loop.end

for (( i = 0; i < 10; i++ )) #; do
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.arithmetic
# <- keyword.control
#   ^^ meta.group.for punctuation.section.arithmetic.begin
#        ^ meta.group.for keyword.operator.assignment
#          ^ meta.group.for constant.numeric.integer - punctuation
#           ^ meta.group.for punctuation.separator
#               ^ meta.group.for keyword.operator.logical
#                 ^^ meta.group.for constant.numeric.integer
#                   ^ meta.group.for punctuation.separator
#                      ^^ meta.group.for keyword.operator.arithmetic
#                         ^^ meta.group.for punctuation.section.arithmetic.end
#                            ^^^^^^ comment.line.number-sign.shell
do
#<- keyword.control.loop.do.shell
    echo $i
    # <- meta.function-call support.function.echo
    #    ^ meta.function-call.arguments punctuation.definition.variable
    #     ^ meta.function-call.arguments variable.other.readwrite
done
# <- keyword.control.loop.end

for i in $(seq 100); do
# <- keyword.control.loop.for
#     ^^ meta.group.for keyword.control.in
#        ^ meta.group.for punctuation.definition.variable
#         ^ meta.group.for punctuation.section.parens.begin
#          ^^^ meta.group.for meta.function-call variable.function
#                 ^ meta.group.for punctuation.section.parens.end
#                  ^ keyword.operator.logical.continue
#                    ^^ keyword.control.loop.do
  :
  # <- meta.function-call support.function.colon
done
# <- keyword.control.loop.end

`for i in $(seq 100); do echo i; done`
# <- meta.group.expansion.command.backticks punctuation.section.group.begin
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.expansion.command.backticks
#      ^^ meta.group.for keyword.control.in
#         ^ meta.group.for punctuation.definition.variable
#          ^ meta.group.for punctuation.section.parens.begin
#           ^^^ meta.group.for meta.function-call variable.function
#                  ^ meta.group.for punctuation.section.parens.end
#                   ^ keyword.operator.logical.continue
#                     ^^ keyword.control.loop.do
#                        ^^^^ support.function.echo
#                              ^ keyword.operator.logical.continue
#                                ^^^^ keyword.control.loop.end

[[ "${foo}" == bar*baz ]]
 # <- support.function.double-brace.begin
# <- support.function.double-brace.begin
#           ^^ meta.function-call.arguments keyword.operator.logical
#                 ^ meta.function-call.arguments keyword.operator.regexp.quantifier
#                      ^^ meta.function-call.arguments support.function.double-brace.end

case "$1" in
# <- keyword.control.conditional.case
#    ^ meta.string string.quoted.double punctuation.definition.string.begin
#     ^ meta.string meta.interpolation punctuation.definition.variable
#      ^ meta.string meta.interpolation variable.other.readwrite
#       ^ meta.string string.quoted.double punctuation.definition.string.end
#         ^^ keyword.control.in
setup )
# <- - variable.function - support.function - meta.function-call
#     ^ keyword.control.conditional.patterns
echo Preparing the server...
# <- meta.function-call support.function.echo
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
;;
# <- punctuation.terminator.case.clause
#^ punctuation.terminator.case.clause
deploy )
# <- - variable.function - support.function - meta.function-call
#      ^ keyword.control.conditional.patterns
echo Deploying...
# <- meta.function-call support.function.echo
#   ^^^^^^^^^^^^^ meta.function-call.arguments
;;
# <- punctuation.terminator.case.clause
#^ punctuation.terminator.case.clause
* )
# <- keyword.operator.regexp.quantifier
# ^ keyword.control.conditional.patterns
cat <<'ENDCAT'
# <- meta.function-call variable.function
#   ^^ meta.function-call.arguments string.unquoted.heredoc keyword.operator.assignment.redirection
#     ^ meta.function-call.arguments string.unquoted.heredoc punctuation.definition.string.begin
#      ^^^^^^ meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
#            ^ meta.function-call.arguments string.unquoted.heredoc punctuation.definition.string.end
foo
# <- meta.function-call.arguments string.unquoted.heredoc
ENDCAT
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
;;
# <- punctuation.terminator.case.clause
#^ punctuation.terminator.case.clause
esac
# <- keyword.control.conditional.end

if [ ! -f q4m-$Q4MVER.tar.gz ]; then
  #^ support.function.test.begin
    #                        ^ support.function.test.end
    #^ keyword.operator
    #  ^ variable.parameter punctuation
    #   ^ variable.parameter
    #        ^ - keyword.operator
    #                         ^ keyword.operator
    :
    # <- meta.function-call support.function
fi
# <- keyword.control

if (ruby extconf.rb &&
#  ^ punctuation.definition.compound.begin
    { make clean || true; } &&
    # <- punctuation.definition.compound.braces.begin
    #                     ^ punctuation.definition.compound.braces.end
    make) 1> build.log 2>&1
    #   ^ punctuation.definition.compound.end
    #        ^ - variable.function
fi

{
# <- punctuation.definition.compound.braces.begin
  {
  # <- punctuation.definition.compound.braces.begin
    foo args
    # <- meta.function-call variable.function
  } 2>> "$stderr_log"
  # <- punctuation.definition.compound.braces.end
  # ^ constant.numeric.integer.decimal.file-descriptor - variable.function
} 1>> "$stdout_log"
# <- punctuation.definition.compound.braces.end
# ^ constant.numeric.integer.decimal.file-descriptor - variable.function

if [ "$1" != "" -a "$2" != "" ]; then
# <- keyword.control.conditional.if
#  ^ support.function.test.begin
#         ^^ meta.function-call.arguments keyword.operator.logical
#               ^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                ^ meta.function-call.arguments variable.parameter
#                       ^^ meta.function-call.arguments keyword.operator.logical
#                             ^ meta.function-call.arguments support.function.test.end
#                              ^ keyword.operator.logical.continue
#                                ^^^^ keyword.control.conditional.then
    local DIR=$1
    # <- storage.modifier
    #     ^^^ variable.other.readwrite.assignment
    #        ^ keyword.operator.assignment
    local TARGET=$2
    # <- storage.modifier
    #     ^^^^^^ variable.other.readwrite.assignment
    #           ^ keyword.operator.assignment
elif [ "$1" ]; then
# <- keyword.control.conditional.elseif
#              ^^^^ keyword.control.conditional.then
    local DIR=$PWD
    # <- storage.modifier
    #     ^^^ variable.other.readwrite.assignment
    #        ^ keyword.operator.assignment
    local TARGET=$1
    # <- storage.modifier
    #     ^^^^^^ variable.other.readwrite.assignment
    #           ^ keyword.operator.assignment
fi
# <- keyword.control.conditional.end

function clk {
    typeset base=/sys/class/drm/card0/device
    #<- storage.modifier
    #       ^^^^ variable.other.readwrite.assignment
    #           ^ keyword.operator.assignment
    #            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.unquoted
    [[ -r ${base}/hwmon/hwmon0/temp1_input && -r ${base}/power_profile ]] || return 1
    # <- support.function.double-brace.begin
    #                                                                  ^^ support.function.double-brace.end
    case $1 in
        low|high|default)
            printf '%s\n' "temp: $(<${base}/hwmon/hwmon0/temp1_input)C" "old profile: $(<${base}/power_profile)"
            echo "$1" >${base}/power_profile
            echo "new profile: $(<${base}/power_profile)"
            ;;
        *)
            echo "Usage: $FUNCNAME [ low | high | default ]"
            printf '%s\n' "temp: $(<${base}/hwmon/hwmon0/temp1_input)C" "current profile: $(<${base}/power_profile)"
    esac
    # <- meta.function keyword.control.conditional.end
}
# <- punctuation

f() {
    local -a "$@"
    local x
    # <- storage.modifier

    for x; do
        case $x in
            $1)
                local "$x"'+=(1)' ;;&
                # <- storage.modifier
                #                 ^^^ punctuation
            $2)
                local "$x"'+=(2)' ;&
                # <- storage.modifier
                #                 ^^ punctuation
            $3)
                local "$x"'+=(3)' ;;
                # <- storage.modifier
                #                 ^^ punctuation
            $1|$2)
                local "$x"'+=(4)'
                # <- storage.modifier
        esac
        # <- meta.function keyword.control.conditional.end

        IFS=, local -a "$x"'=("${x}: ${'"$x"'[*]}")'
        # ^ variable.other.readwrite.assignment
        #  ^ keyword.operator.assignment
        #   ^ meta.string string.unquoted
        #     ^ storage.modifier
    done

    for x; do
        echo "${!x}"
    done
}

case "${foo}" in- in_ in=10 in
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.case.shell
# <- keyword.control.conditional.case
#             ^^ - keyword.control.in
#                 ^^ - keyword.control.in
#                     ^^ - keyword.control.in
#                           ^^ keyword.control.in
    ( help | h ) bar ;;
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^^^^^^^^^^^ meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands - meta.conditional.case.shell
#               ^^^^^^^ meta.conditional.case.clause.commands - meta.conditional.case.clause.patterns - meta.conditional.case.shell
#                      ^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
    # <- keyword.control.conditional.patterns.begin
    #          ^ keyword.control.conditional.patterns.end
    #                ^^ punctuation.terminator.case.clause
    do1 ) foo1 ;&
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^^^^ meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands - meta.conditional.case.shell
#        ^^^^^^^^ meta.conditional.case.clause.commands - meta.conditional.case.clause.patterns - meta.conditional.case.shell
#                ^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
    #   ^ keyword.control.conditional.patterns.end
    #          ^^ punctuation.terminator.case.clause
    (do2 ) foo2 ;;&
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^^^^^ meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands - meta.conditional.case.shell
#         ^^^^^^^^^ meta.conditional.case.clause.commands - meta.conditional.case.clause.patterns - meta.conditional.case.shell
#                  ^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
    # <- keyword.control.conditional.patterns.begin
    #    ^ keyword.control.conditional.patterns.end
    #           ^^^ punctuation.terminator.case.clause
    *) bar
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^ meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands - meta.conditional.case.shell
#     ^^^^^ meta.conditional.case.clause.commands - meta.conditional.case.clause.patterns - meta.conditional.case.shell
    #^ keyword.control.conditional.patterns.end
esac
# <- keyword.control.conditional.end

case $TERM in
    sun-cmd)
        #  ^ keyword.control.conditional.patterns
        update_terminal_cwd() { print -Pn "\e]l%~\e\\" };;
        #                                              ^ meta.function punctuation.section.block.end
        #                                               ^^ punctuation.terminator.case.clause
    *xterm*|rxvt|(dt|k|E)term)
        # ^ keyword.operator.regexp.quantifier
        #  ^ keyword.operator.logical
        #        ^ punctuation.section.parens.begin
        #           ^ keyword.operator.logical
        #             ^ keyword.operator.logical
        #               ^ punctuation.section.parens.end
        #                    ^ keyword.control.conditional.patterns
        update_terminal_cwd() { print -Pn "\e]2;%~\a" };;
        #                                             ^ meta.function punctuation.section.block.end
        #                                              ^^ punctuation.terminator.case.clause
    *)
    # <- keyword.operator.regexp.quantifier
    #^ keyword.control.conditional.patterns
        update_terminal_cwd() {};;
        #                      ^ meta.function punctuation.section.block.end
        #                       ^^ punctuation.terminator.case.clause
esac

case $SERVER in
# <- keyword.control.conditional.case
ws-+([0-9]).host.com) echo "Web Server"
#  ^ keyword.operator.regexp.quantifier
#   ^ punctuation.section.parens.begin
#    ^ keyword.control.regexp.set.begin
#      ^ keyword.operator.word
#        ^ keyword.control.regexp.set.end
#         ^ punctuation.section.parens.end
#                   ^ keyword.control.conditional.patterns
;;
# <- punctuation.terminator.case.clause
 # <- punctuation.terminator.case.clause
db-+([0-9])\.host\.com) echo "DB server"
#  ^ keyword.operator.regexp.quantifier
#   ^ punctuation.section.parens.begin
#    ^ keyword.control.regexp.set.begin
#      ^ keyword.operator.word
#        ^ keyword.control.regexp.set.end
#         ^ punctuation.section.parens.end
#                     ^ keyword.control.conditional.patterns
;;
# <- punctuation.terminator.case.clause
 # <- punctuation.terminator.case.clause
bk-+([0-9])\.host\.com) echo "Backup server"
#  ^ keyword.operator.regexp.quantifier
#   ^ punctuation.section.parens.begin
#    ^ keyword.control.regexp.set.begin
#      ^ keyword.operator.word
#        ^ keyword.control.regexp.set.end
#         ^ punctuation.section.parens.end
#                     ^ keyword.control.conditional.patterns
;;
# <- punctuation.terminator.case.clause
 # <- punctuation.terminator.case.clause
*)echo "Unknown server"
# <- keyword.operator.regexp.quantifier
 # <- keyword.control.conditional.patterns
;;
# <- punctuation.terminator.case.clause
 # <- punctuation.terminator.case.clause
esac
# <- keyword.control.conditional.end

if   [ "$*" = '*' ]
then remotefilter="cat"
#               ^ variable.other.readwrite.assignment
#                ^ keyword.operator.assignment
else remotefilter="grep"
#               ^ variable.other.readwrite.assignment
#                 ^ meta.string string.quoted.double punctuation.definition.string.begin
     for glob in "$@"
     do  glob=$(
     #      ^ variable.other.readwrite.assignment
     #       ^ keyword.operator.assignment
     #        ^ meta.string meta.interpolation punctuation.definition.variable
     #         ^ meta.string meta.interpolation punctuation.section.parens.begin
           echo "$glob" |
           sed -e 's@\*@[^ ]*@g' -e 's/\?/[^ ]/g'
           # <- meta.string meta.interpolation meta.function-call variable.function - string
         )
         # <- meta.string meta.interpolation punctuation.section.parens.end - string
         remotefilter="$remotefilter -e '^$glob ' -e ' $glob\$'"
         #          ^ variable.other.readwrite.assignment
         #           ^ keyword.operator.assignment
     done
     # <- keyword.control.loop.end
fi
# <- keyword.control.conditional.end

################################
# And, or, pipes, redirections #
################################
function show_help() {
    echo "Usage: imgcat [-p] filename ..." 1>& 2
    #                                          ^ constant.numeric.integer.decimal.file-descriptor
    echo "   or: cat filename | imgcat" 1>& 2
    #                                       ^ constant.numeric.integer.decimal.file-descriptor
}
cmd1 --opt1 arg1 | cmd2 --opt2 arg2 | cmd3 --opt3 arg3
#  ^ meta.function-call variable.function
#         ^ variable.parameter - variable.function
#              ^ - variable
#                ^ keyword
                   #  ^ meta.function-call variable.function
                   #         ^ variable.parameter - variable.function
                   #              ^ - variable
                   #                ^ keyword
                                      #  ^ meta.function-call variable.function
                                      #         ^ variable.parameter - variable.function
                                      #              ^ - variable
C2=c2 C3=c3 C4=c4
c1 -c1 c1 && ${C2} -c2 c2 || c3 -c3 ${C3} ; c4 -${C4} c4 | c5 -c5 c5
#^ meta.function-call variable.function
#    ^ variable.parameter - variable.function
#      ^ - variable
#         ^ keyword
          #  ^ meta.function-call variable.function
          #         ^ variable.parameter - variable.function
          #             ^ - variable
          #                ^ keyword
                          #  ^ meta.function-call variable.function
                          #      ^ variable.parameter - variable.function
                          #         ^ - variable.parameter
                          #               ^ keyword
                                          # ^^ variable.function
                                          #    ^^^^^^ variable.parameter

foo 2>&1
#   ^ meta.function-call.arguments constant.numeric.integer.decimal.file-descriptor
#    ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#      ^ meta.function-call.arguments constant.numeric.integer.decimal.file-descriptor
foo 2>&-
#      ^ punctuation.terminator
foo | bar 2>&1
#         ^ meta.function-call.arguments constant.numeric.integer.decimal.file-descriptor
#          ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#            ^ meta.function-call.arguments constant.numeric.integer.decimal.file-descriptor
foo | bar --opt1 arg1 < file.txt
#                     ^ meta.function-call.arguments keyword.operator.assignment.redirection
foo | bar --opt1 arg1 > file.txt
#                     ^ meta.function-call.arguments keyword.operator.assignment.redirection
foo -x arg1 &>/dev/null
#           ^^ meta.function-call.arguments keyword.operator.assignment.redirection
foo -x arg1 &> /dev/null
#           ^^ meta.function-call.arguments keyword.operator.assignment.redirection
tr "o" "a" < <(echo "Foo")
#          ^ keyword.operator.assignment.redirection - keyword.operator.assignment.redirection.process
#            ^ keyword.operator.assignment.redirection.process
#             ^ punctuation
#                 ^ support.function
#                        ^ punctuation
wc <(cat /usr/share/dict/linux.words)
#  ^ keyword.operator.assignment.redirection.process
#   ^ punctuation
#      ^ variable.function
#        ^ meta.function-call.arguments meta.function-call.arguments
#                                  ^ meta.function-call.arguments meta.function-call.arguments
#                                   ^ punctuation
comm <(ls -l) <(ls -al)
#    ^ keyword.operator.assignment.redirection.process
#     ^ punctuation
#         ^^ variable.parameter
#           ^ punctuation
#            ^ meta.function-call.arguments
#             ^ keyword.operator.assignment.redirection.process
#              ^ punctuation
#                ^ variable.function
#                  ^^^ variable.parameter
#                     ^ punctuation
gzip | tee >(md5sum - | sed 's/-$/mydata.lz2/'>mydata-gz.md5) > mydata.gz
#    ^ keyword.operator.logical.pipe
#          ^ keyword.operator.assignment.redirection.process
#           ^ punctuation
#                     ^ keyword.operator.logical.pipe
#                                             ^ keyword.operator.assignment.redirection
#                                                           ^ punctuation
#                                                             ^ keyword.operator.assignment.redirection
LC_ALL=C 2> /dev/null
#        ^ constant.numeric.integer.decimal.file-descriptor
#         ^ keyword.operator.assignment.redirection
#           ^ - variable.function
2>&1 echo foo
# <- constant.numeric.integer.decimal.file-descriptor
#^^ keyword.operator.assignment.redirection
#  ^ constant.numeric.integer.decimal.file-descriptor
#    ^^^^ meta.function-call support.function.echo
#        ^^^^ meta.function-call.arguments
touch file.txt
foo=x <file.txt
#     ^ keyword.operator.assignment.redirection
#      ^ - variable.function

exec >&${tee[1]} 2>&1
#    ^^ keyword.operator.assignment.redirection
#      ^ meta.group.expansion.parameter punctuation.definition.variable

##################
# Here documents #
##################
var=world!
cat <<FOOSTRING ; echo more stuff here
#   ^^ meta.function-call.arguments keyword.operator
#     ^^^^^^^^^ meta.function-call.arguments keyword.control.heredoc-token
#              ^
#               ^ keyword.operator.logical.continue
#                 ^ meta.function-call support.function
#                     ^ meta.function-call.arguments
Hello, ${"v"'a'r}
# <- meta.function-call.arguments string.unquoted.heredoc
#      ^ punctuation.definition.variable
#       ^ punctuation
#        ^ string.quoted.double punctuation.definition.string.begin
#         ^ string.quoted.double
#          ^ string.quoted.double punctuation.definition.string.end
#           ^ string.quoted.single punctuation.definition.string.begin
#            ^ string.quoted.single
#             ^ string.quoted.single punctuation.definition.string.end
#               ^ punctuation
FOOSTRING
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
cat << 'WHAT' ; echo more stuff here
# <- meta.function-call variable.function
#   ^^ meta.function-call.arguments string.unquoted.heredoc keyword.operator.assignment.redirection
#      ^ punctuation.definition.string.begin
#       ^^^^ keyword.control.heredoc-token
#           ^ punctuation.definition.string.end
#            ^
#             ^ keyword.operator.logical.continue
#               ^ meta.function-call support.function
#                   ^ meta.function-call.arguments
Hello, ${var}
# <- meta.function-call.arguments string.unquoted.heredoc
#      ^ - variable.other.readwrite - punctuation.definition.variable
#       ^  - variable.other.readwrite - punctuation.section.brackets.begin
#        ^^^ - variable.other.readwrite
#           ^  - variable.other.readwrite - punctuation.section.brackets.end
WHAT
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token

cat <<< "A wild herestring appears" ; cat more stuff | bar | qux
# <- meta.function-call variable.function
#   ^^^ meta.function-call.arguments keyword.operator.herestring
#       ^ meta.function-call.arguments string.quoted.double punctuation.definition.string.begin
#        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments string.quoted.double
#                                 ^ meta.function-call.arguments string.quoted.double punctuation.definition.string.end
#                                  ^
#                                   ^ keyword.operator.logical.continue
#                                    ^ - meta.function-call
#                                     ^^^ meta.function-call variable.function
#                                        ^^^^^^^^^^^ meta.function-call.arguments
#                                                   ^
#                                                    ^ keyword.operator.logical.pipe

if opam upgrade --check; then
    opam upgrade --dry-run <<<n
#                          ^^^ keyword.operator.herestring
#                             ^ - keyword.control.heredoc-token - string.unquoted.heredoc
fi
# <- keyword.control.conditional.end - string.unquoted.heredoc

cat -c <<<$(echo pipephobic)
#  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
#      ^^^ keyword.operator.herestring
#         ^^^^^^^^^^^^^^^^^^ meta.group.expansion.command.parens
#           ^^^^ support.function

# Escaped and non-escaped backticks in heredocs...
cat << backticks_are_deprecated
#      ^ meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
foo=\`pwd\`
#   ^^ meta.function-call.arguments string.unquoted.heredoc constant.character.escape.backtick
#        ^^ meta.function-call.arguments string.unquoted.heredoc constant.character.escape.backtick
foo=`pwd`
#   ^ meta.function-call.arguments string.unquoted.heredoc punctuation.section.group.begin
#       ^ meta.function-call.arguments string.unquoted.heredoc punctuation.section.group.end
backticks_are_deprecated
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token

# Redirection after heredoc token
cat << redirection_comes_next > foo.txt
# <- meta.function-call variable.function
#      ^ meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
#                             ^ meta.function-call.arguments - variable.function keyword.operator.assignment.redirection
#                               ^ meta.function-call.arguments - variable.function
hello
# <- meta.function-call.arguments string.unquoted.heredoc
redirection_comes_next
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token

cat <<     FARAWAY
#          ^ keyword.control
foo
# <- string.unquoted
FARAWAY
# <- keyword.control

cat <<- INDENTED
  #            ^ keyword.control.heredoc-token
  say what now ${foo}
  #              ^ variable.other.readwrite
  INDENTED
  # <- keyword.control.heredoc-token

cat <<-  'indented_without_expansions'
    #    ^ meta.string string.unquoted.heredoc punctuation.definition.string.begin
    #     ^ meta.string string.unquoted.heredoc keyword.control.heredoc-token
    #                                ^ meta.string string.unquoted.heredoc punctuation.definition.string.end
    ${foo}
      # <- - variable.other
    indented_without_expansions
    # <- keyword.control.heredoc-token

variable=$(cat <<SETVAR
This variable
runs over multiple lines.
SETVAR
# <- keyword.control.heredoc-token
)
# <- punctuation.section.parens.end

cat <<- "FOO"
    #   ^ punctuation
    #      ^ keyword.control.heredoc-token
    #       ^ punctuation
    no \"escape\'\$ and $expansion
    #  ^^ - constant
    #          ^^^^ - constant
    #                   ^ - keyword
  FOO
  # <- keyword.control.heredoc-token

cat <<- \FOO
    #   ^ punctuation
    #      ^ keyword.control.heredoc-token
    no \"escape\'\$ and $expansion
    #  ^^ - constant
    #          ^^^^ - constant
    #                   ^ - keyword
  FOO
  # <- keyword.control.heredoc-token

cat << "FOO"
    #  ^ punctuation
    #     ^ keyword.control.heredoc-token
    #      ^ punctuation
    no \"escape\'\$ and $expansion
    #  ^^ - constant
    #          ^^^^ - constant
    #                   ^ - keyword
FOO
# <- keyword.control.heredoc-token

cat << \FOO
    #  ^ punctuation
    #     ^ keyword.control.heredoc-token
    no \"escape\'\$ and $expansion
    #  ^^ - constant
    #          ^^^^ - constant
    #                   ^ - keyword
FOO
# <- keyword.control.heredoc-token

sed 's/^    //' << EOF >$dummy.c
# <- meta.function-call variable.function
#               ^^ keyword.operator.assignment.redirection
#                  ^^^ keyword.control.heredoc-token
#                      ^ keyword.operator.assignment.redirection
#                       ^ punctuation.definition.variable
#                        ^^^^^ variable.other.readwrite
#ifdef __cplusplus
#include <stdio.h>  /* for printf() prototype */
    int main (int argc, char *argv[]) {
#else
    int main (argc, argv) int argc; char *argv[]; {
#endif
    #if defined (host_mips) && defined (MIPSEB)
    #if defined (SYSTYPE_SYSV)
      printf ("mips-mips-riscos%ssysv\n", argv[1]); exit (0);
    #endif
    #if defined (SYSTYPE_SVR4)
      printf ("mips-mips-riscos%ssvr4\n", argv[1]); exit (0);
    #endif
    #if defined (SYSTYPE_BSD43) || defined(SYSTYPE_BSD)
      printf ("mips-mips-riscos%sbsd\n", argv[1]); exit (0);
    #endif
    #endif
      exit (-1);
    }
EOF
# <- keyword.control.heredoc-token

####################################################################
# 3.3 Shell Functions                                              #
####################################################################

   logC () { [[ $# == 2 ]] && tput setaf $2 || tput setaf 3; echo -e "$1"; tput setaf 15; }
# <- meta.function.identifier.shell - entity.name.function
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
#^^ meta.function.identifier.shell
#  ^^^^ meta.function.identifier.shell
#      ^ meta.function.identifier.shell
#       ^ meta.function.parameters.shell meta.parens.shell
#        ^ meta.function.parameters.shell meta.parens.shell
#         ^ meta.function.shell - meta.function.identifier - meta.block
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.shell meta.block.shell
#^^ - entity
#  ^^^^ entity.name.function.shell
#      ^ - entity - punctuation
#       ^ punctuation.section.parens.begin.shell
#        ^ punctuation.section.parens.end.shell
#         ^ - punctuation
#          ^ punctuation.section.block.begin.shell
#            ^^ support.function.double-brace.begin
#               ^ meta.function-call.arguments punctuation.definition.variable
#                ^ meta.function-call.arguments variable.language
#                  ^^ meta.function-call.arguments keyword.operator.logical
#                       ^^ meta.function-call.arguments support.function.double-brace.end
#                          ^^ keyword.operator.logical.and

logExit ( ) {
# <- meta.function.identifier.shell entity.name.function.shell
#^^^^^^ meta.function.identifier.shell entity.name.function.shell
#      ^ meta.function.identifier.shell
#       ^^^ meta.function.parameters.shell meta.parens.shell
#          ^ meta.function.shell - meta.block - meta.parens
#           ^^ meta.function.shell meta.block.shell
#^^^^^^ entity.name.function.shell
#      ^ - entity - punctuation
#       ^ punctuation.section.parens.begin.shell
#         ^ punctuation.section.parens.end.shell
#           ^ punctuation.section.block.begin.shell
  [[ $1 == '0' ]] && tput setaf 2  || tput setaf 1;
  # <- meta.function support.function.double-brace.begin
  #            ^^ meta.function meta.function-call.arguments support.function.double-brace.end
  [[ $1 == '0' ]] && echo -e "$2 PASSED" || echo -e "$2 FAILED";
  # <- meta.function support.function.double-brace.begin
  #            ^^ meta.function meta.function-call.arguments support.function.double-brace.end
  #               ^^ meta.function keyword.operator.logical.and
  #                  ^^^^ meta.function meta.function-call support.function.echo
  tput setaf 15;
  # <- meta.function meta.function-call variable.function
  #            ^ meta.function keyword.operator.logical.continue
  [[ $1 == '0' ]] || exit -1
  # <- meta.function support.function.double-brace.begin
  #            ^^ meta.function meta.function-call.arguments support.function.double-brace.end
  #               ^^ meta.function keyword.operator.logical.or
  #                  ^^^^ meta.function meta.function-call support.function.exit
}
# <- meta.function.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

function connect_to_db() {
#^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^^^^^^^^^ meta.function.identifier.shell
#                     ^^ meta.function.parameters.shell meta.parens.shell
#                       ^ meta.function.shell - meta.parens - meta.block
#                        ^^ meta.function.shell meta.block.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#       ^ - entity - keyword - storage
#        ^^^^^^^^^^^^^ entity.name.function.shell
#                     ^ punctuation.section.parens.begin.shell
#                      ^ punctuation.section.parens.end.shell
#                        ^ punctuation.section.block.begin.shell

    export PGPASSWORD=$(cat "$DOKKU_ROOT/.postgresql/pwd_$APP")
    # <- meta.function storage.modifier
    #      ^^^^^^^^^^ meta.function variable.other.readwrite.assignment
    #                ^ meta.function keyword.operator.assignment
    #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
    IP=$(get_postgresql_ip)
    # <- meta.function variable.other.readwrite.assignment
    # ^ meta.function keyword.operator.assignment
    #  ^ meta.function meta.string meta.interpolation punctuation.definition.variable
    #   ^ meta.function meta.string meta.interpolation punctuation.section.parens.begin
    #    ^^^^^^^^^^^^^^^^^ meta.function meta.string meta.interpolation meta.function-call variable.function
    #                     ^ meta.function meta.string meta.interpolation punctuation.section.parens.end
    PORT=$(get_postgresql_port)
    # <- meta.function variable.other.readwrite.assignment
    #   ^ meta.function keyword.operator.assignment
    #    ^ meta.function meta.string meta.interpolation punctuation.definition.variable
    #     ^ meta.function meta.string meta.interpolation punctuation.section.parens.begin
    #      ^^^^^^^^^^^^^^^^^^^ meta.function meta.string meta.interpolation meta.function-call variable.function
    #                         ^ meta.function meta.string meta.interpolation punctuation.section.parens.end

    psql -h $IP -p $PORT -U root db
}
# <- meta.function.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function

logExit $? $WEIRD
# <- meta.function-call variable.function
#       ^ meta.function-call.arguments punctuation.definition.variable
#        ^ meta.function-call.arguments variable.language
#          ^ meta.function-call.arguments punctuation.definition.variable
#           ^^^^^ meta.function-call.arguments variable.other.readwrite

declare -f _init_completion > /dev/null && complete -F _upto upto
# <- storage.modifier
#       ^ variable.parameter punctuation
#        ^ variable.parameter
#                           ^ keyword.operator.assignment.redirection
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
typeset -f _init_completion > /dev/null && complete -F _upto upto
# <- storage.modifier
#       ^ variable.parameter punctuation
#        ^ variable.parameter
#                           ^ keyword.operator.assignment.redirection
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call

function foo
#^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^ meta.function.identifier.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#       ^ - entity - keyword - storage
#        ^^^ entity.name.function.shell
#           ^ - entity
{
# <- meta.function.shell meta.block.shell punctuation.section.block.begin.shell
    foo bar
    # <- variable.function
    # <- meta.function meta.function-call

    return 0
    # <- keyword.control.flow.return.shell
}
# <- meta.function.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function

function foo (     ) {
#^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^ meta.function.identifier.shell
#            ^^^^^^^ meta.function.parameters.shell meta.parens.shell
#                   ^^^ meta.function.shell
#       ^ - entity.name.function
#        ^^^ entity.name.function
#           ^ - entity.name.function
#            ^ punctuation.section.parens.begin.shell
#                  ^ punctuation.section.parens.end.shell
#                    ^ punctuation.section.block.begin.shell
    echo 'hello from foo'
    # <- support.function
    # <- meta.function meta.function-call
}
# <- meta.function.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function

f () (
# <- meta.function.identifier.shell entity.name.function.shell
#^ meta.function.identifier.shell - entity - punctuation
# ^^ meta.function.parameters.shell meta.parens.shell
#   ^ meta.function.shell - meta.parens - meta.group
#    ^ meta.function.shell meta.group.shell punctuation.section.group.begin.shell
  echo hello
  # <- meta.function.shell meta.group.shell meta.function-call.shell support.function.echo.shell
)
# <- meta.function.shell meta.group.shell punctuation.section.group.end.shell
#^ - meta.function

function f (
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell storage.type.function.shell 
#       ^^^ meta.function.identifier.shell
#          ^^ meta.function.shell meta.group.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ entity.name.function.shell
#          ^ punctuation.section.group.begin.shell
  echo hello
  # <- meta.function meta.function-call support.function.echo
)
# <- meta.function.shell meta.group.shell punctuation.section.group.end.shell
#^ - meta.function

function foo {
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
    function bar {
        # <- meta.function meta.function
        echo "baz"
    }
    bar
    # <- meta.function meta.function-call

    bar () {
        # <- meta.function meta.function
        echo "baz"
    }
    bar
    # <- meta.function meta.function-call
    function function
    # <- meta.function meta.function
    #       ^ - entity.name.function
    #        ^^^^^^^^ entity.name.function
    #                ^ - entity.name.function
    {
        echo "Hello! From 'function'!"
    }
    "function"
    # <- meta.function meta.function-call
}

# <- - meta.function

foo=$(
  #  ^ punctuation.section
  func() {
    # <- meta.function entity.name.function
    #    ^ punctuation.section
    echo bar
  }
  # <- punctuation.section
  func

  # <- meta.group.expansion.command
)
# <- punctuation.section
echo $foo # prints "bar"

# <- - meta.function - meta.group.expansion

foo:foo () {
  # <- meta.function entity.name.function
    echo "this foo:foo"
}
~ () {
# <- meta.function entity.name.function
    echo "this is ~"
}
"~"
# <- meta.function-call variable.function
#^^ meta.function-call variable.function
^ () {
# <- meta.function entity.name.function
    echo "this is ^"
}
^
# <- meta.function-call variable.function
@ () {
# <- meta.function entity.name.function
    echo "this is @"
}
@
# <- meta.function-call variable.function
function [] () {
  echo "Hello from []"
}
[]
# <- meta.function-call variable.function
#^ meta.function-call variable.function
function [[]] () {
  echo "Hello from [[]]"
}
[[]]
# <- meta.function-call variable.function
#^^^ meta.function-call variable.function

__git_aliased_command ()
{
    local word cmdline=$(__git config --get "alias.$1")
    for word in $cmdline; do
        case "$word" in
        {)  : skip start of shell helper function ;;
#       ^ - punctuation.section.expansion.brace.begin
#        ^ keyword.control.conditional.patterns
        \'*)    : skip opening quote after sh -c ;;
        *)
            echo "$word"
            return
        esac
    done
}
# <- meta.function.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function
