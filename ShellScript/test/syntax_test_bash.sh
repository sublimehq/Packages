# SYNTAX TEST "Packages/ShellScript/Bash.sublime-syntax"

####################################################################
# Comments                                                         #
####################################################################

# This is a comment.
# <- comment.line.number-sign.shell punctuation.definition.comment.shell
#^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

    # This is a comment.
#^^^ - comment
#   ^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#   ^ punctuation.definition.comment.shell

# This is a \
#^^^^^^^^^^^^^ comment.line.number-sign.shell - punctuation
  command.
#^^^^^^^^^^ - comment

# This is a \
  comment.
#^^^^^^^^^^ - comment

### \\ \. \a \b \f \n \r
# <- comment.line.number-sign.shell punctuation.definition.comment.shell
#^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell - constant.character.escape
#^^ punctuation.definition.comment.shell

echo hello #a-comment
#          ^^^^^^^^^^^ comment.line.number-sign.shell

echo hello#not-a-comment
#         ^^^^^^^^^^^^^^ meta.function-call.arguments.shell - comment.line - variable.function

curl -s \
  # This is comment \
  --request POST
# ^^^^^^^^^ meta.function-call.identifier.shell variable.function.shell
#          ^^^^^ meta.function-call.arguments.shell

foo | `# get quarks ` \
# <- variable.function
#   ^ keyword.operator.assignment.pipe.shell
#     ^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                    ^^^ - meta.interpolation
#     ^ punctuation.section.interpolation.begin.shell
#      ^^^^^^^^^^^^^ comment.line.number-sign.shell
#                   ^ punctuation.section.interpolation.end.shell - comment
#                     ^^ punctuation.separator.continuation.line.shell - comment

foo | ` # get quarks ` \
bar   ` # important; this and that ` "${USELESS_TEXT}" | ` # match text` \
# <- meta.function-call.arguments
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                   ^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation.command
#                                                        ^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#     ^^ - comment
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
#                                  ^^^^^^^^^^^^^^^^^^^^^^^^ - comment
#                                                          ^^^^^^^^^^^^ comment.line.number-sign.shell
#                                                                      ^^^ - comment
#     ^ punctuation.section.interpolation.begin.shell
#                                  ^ punctuation.section.interpolation.end.shell
#                                    ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#                                     ^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#                                                    ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                                      ^ keyword.operator.assignment.pipe.shell
#                                                        ^ punctuation.section.interpolation.begin.shell
#                                                                        ^^ punctuation.separator.continuation.line.shell


####################################################################
# The basics                                                       #
####################################################################

echo hello, world!
#^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
# <- meta.function-call.identifier.shell support.function.echo.shell
#^^^ meta.function-call.identifier.shell support.function.echo.shell
#   ^^^^^^^^^^^^^^ meta.function-call.arguments.shell - variable
#                 ^ - meta.function-call

echo hello, \
# <- meta.function-call.identifier.shell support.function.echo.shell
#^^^ meta.function-call.identifier.shell support.function.echo.shell
#   ^^^^^^^^^^ meta.function-call.arguments.shell
#           ^^ punctuation.separator.continuation.line.shell
world!
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^^ meta.function-call.identifier.shell variable.function.shell
#     ^ - meta.function-call

echo hello, \
world!
# <- meta.function-call.arguments.shell - variable
#^^^^^ meta.function-call.arguments.shell - variable
#     ^ - meta.function-call

echo hello, \ 
#           ^^ - punctuation.separator
# (there's an extra space following the backslash, so not a line-continuation)
world!
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^^ meta.function-call.identifier.shell variable.function.shell
#     ^ - meta.function-call

echo This is a smiley :-\) \(I have to escape the parentheses, though!\)
#                       ^^ constant.character.escape.shell
#                          ^^ constant.character.escape.shell
#                                                                     ^^ constant.character.escape.shell

echo the q"uick" f"ox" ju"mp"ed o"ve"r t'he' 'la'zy 'dog'
#^^^ meta.function-call.identifier.shell support.function.echo.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                        ^ - meta.function-call
#         ^ punctuation.definition.string.begin.shell
#         ^^^^^^ meta.string.shell string.quoted.double.shell
#              ^ punctuation.definition.string.end.shell
#                 ^ punctuation.definition.string.begin.shell
#                 ^^^^ meta.string.shell string.quoted.double.shell
#                    ^ punctuation.definition.string.end.shell
#                        ^ punctuation.definition.string.begin.shell
#                        ^^^^ meta.string.shell string.quoted.double.shell
#                           ^ punctuation.definition.string.end.shell
#                                ^ punctuation.definition.string.begin.shell
#                                ^^^^ meta.string.shell string.quoted.double.shell
#                                   ^ punctuation.definition.string.end.shell
#                                       ^ punctuation.definition.string.begin.shell
#                                       ^^^^ meta.string.shell string.quoted.single.shell
#                                          ^ punctuation.definition.string.end.shell
#                                            ^ punctuation.definition.string.begin.shell
#                                            ^^^^ meta.string.shell string.quoted.single.shell
#                                               ^ punctuation.definition.string.end.shell
#                                                   ^ punctuation.definition.string.begin.shell
#                                                   ^^^^^ meta.string.shell string.quoted.single.shell
#                                                       ^ punctuation.definition.string.end.shell

echo 'no\e$capes\in\$ingle\quotes'
#^^^ meta.function-call.identifier.shell support.function.echo.shell
#   ^ meta.function-call.arguments.shell - keyword - string
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.shell string.quoted.single.shell - constant - keyword - variable
#    ^ punctuation.definition.string.begin.shell
#                                ^ punctuation.definition.string.end.shell

echo 'singe\' \\''
#    ^^^^^^^^ meta.string.shell string.quoted.single.shell
#            ^^^ - meta.string - string
#             ^^ constant.character.escape.shell
#               ^^ meta.string.shell string.quoted.single.shell
#                 ^ - meta.string - string

echo $'\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z\''
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.single.ansi-c.shell
#    ^^ punctuation.definition.string.begin.shell
#      ^^^^ constant.character.escape.shell
#          ^^^^^^ - constant.character.escape
#                ^^ constant.character.escape.shell
#                  ^^^^^^^^^^^^^^ - constant.character.escape
#                                ^^ constant.character.escape.shell
#                                  ^^^^^^ - constant.character.escape
#                                        ^^ constant.character.escape.shell
#                                          ^^ - constant.character.escape
#                                            ^^ constant.character.escape.shell
#                                              ^^ - constant.character.escape
#                                                ^^ constant.character.escape.shell
#                                                  ^^^^^^^^ - constant.character.escape
#                                                          ^^ constant.character.escape.shell
#                                                            ^ punctuation.definition.string.end.shell

echo $'Hello\' World\\'
#    ^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.single.ansi-c.shell
#    ^^ punctuation.definition.string.begin.shell
#           ^^ constant.character.escape.shell
#                   ^^ constant.character.escape.shell
#                     ^ punctuation.definition.string.end.shell
#                      ^ - meta.string - string

echo $"Hello\" World\\"
#    ^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.double.locale.shell
#    ^^ punctuation.definition.string.begin.shell
#           ^^ constant.character.escape.shell
#                   ^^ constant.character.escape.shell
#                     ^ punctuation.definition.string.end.shell
#                      ^ - meta.string - string

echo $"Hello
#    ^^^^^^^^ meta.string.shell string.quoted.double.locale.shell
#    ^^ punctuation.definition.string.begin.shell
  World\\"
#^^^^^^^^^ meta.string.shell string.quoted.double.locale.shell
#      ^^ constant.character.escape.shell
#        ^ punctuation.definition.string.end.shell
#         ^ - meta.string - string

# Note: Line continuation causes the linefeed to be removed from the output string.
echo $"Hello \
#    ^^^^^^^^^^ meta.string.shell string.quoted.double.locale.shell
#    ^^ punctuation.definition.string.begin.shell
#            ^^ punctuation.separator.continuation.line.shell
  World\\"
#^^^^^^^^^ meta.string.shell string.quoted.double.locale.shell
#      ^^ constant.character.escape.shell
#        ^ punctuation.definition.string.end.shell
#         ^ - meta.string - string

echo $"Hello \\\"$world\""
#    ^^^^^^^^^^^^ meta.string.shell string.quoted.double.locale.shell - meta.interpolation - variable
#                ^^^^^^ meta.string.shell meta.interpolation.parameter.shell
#                      ^^^ meta.string.shell string.quoted.double.locale.shell - meta.interpolation - variable
#    ^^ punctuation.definition.string.begin.shell
#            ^^^^ constant.character.escape.shell
#                ^ punctuation.definition.variable.shell
#                ^^^^^^ variable.other.readwrite.shell
#                      ^^ constant.character.escape.shell
#                        ^ punctuation.definition.string.end.shell

echo $"Hello \\\"`echo World`\""
#    ^^^^^^^^^^^^ meta.string.shell string.quoted.double.locale.shell - meta.interpolation - variable
#                ^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell
#                            ^^^ meta.string.shell string.quoted.double.locale.shell - meta.interpolation - variable
#    ^^ punctuation.definition.string.begin.shell
#            ^^^^ constant.character.escape.shell
#                ^ punctuation.section.interpolation.begin.shell
#                           ^ punctuation.section.interpolation.end.shell
#                            ^^ constant.character.escape.shell
#                              ^ punctuation.definition.string.end.shell

echo `echo \`echo hello, world!\``
#   ^ - meta.interpolation
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                 ^ - meta.interpolation
#    ^ punctuation.section.interpolation.begin.shell
#     ^^^^ support.function.echo
#          ^^ constant.character.escape
#                              ^^ constant.character.escape
#                                ^ punctuation.section.interpolation.end.shell

echo `echo \`echo hello, world!\\`
#   ^ - meta.interpolation
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                 ^ - meta.interpolation
#    ^ punctuation.section.interpolation.begin.shell
#     ^^^^ support.function.echo
#          ^^ constant.character.escape
#                              ^^ constant.character.escape
#                                ^ punctuation.section.interpolation.end.shell

echo `echo \`echo hello\\\`, world\\\\\`!`
#   ^ - meta.interpolation
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                         ^ - meta.interpolation
#    ^ punctuation.section.interpolation.begin.shell
#     ^^^^ support.function.echo
#          ^^ constant.character.escape
#                      ^^^^ constant.character.escape
#                                 ^^^^^^ constant.character.escape
#                                        ^ punctuation.section.interpolation.end.shell

echo "`dirname -- foo/bar`"
#    ^ meta.function-call.arguments.shell meta.string.shell - meta.interpolation
#     ^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.command.shell
#      ^^^^^^^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#             ^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#                        ^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.command.shell
#                         ^ meta.function-call.arguments.shell meta.string.shell - meta.interpolation
#    ^ string.quoted.double.shell punctuation.definition.string.begin.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^^^^^^^ variable.function.shell
#              ^^ keyword.operator.end-of-options
#                        ^ punctuation.section.interpolation.end.shell
#                         ^ string.quoted.double.shell punctuation.definition.string.end.shell

echo git rev-list "$(echo --all)" | grep -P 'c354a80'
#                 ^ meta.string.shell
#                  ^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell - string.quoted.double
#                               ^ meta.string.shell - meta.interpolation
#                 ^ string.quoted.double.shell punctuation.definition.string.begin.shell
#                  ^ punctuation.definition.variable.shell
#                   ^ punctuation.section.interpolation.begin.shell
#                    ^^^^ support.function.echo.shell
#                         ^^^^^ - variable
#                              ^ punctuation.section.interpolation.end.shell
#                               ^ string.quoted.double.shell punctuation.definition.string.end.shell
#                                 ^ keyword.operator.assignment.pipe.shell
#                                   ^^^^ variable.function.shell
#                                        ^^ variable.parameter.option.shell
#                                           ^^^^^^^^^ meta.string.shell string.quoted.single.shell

' echo '
# <- meta.function-call.identifier.shell meta.string.shell
#^^^^^^^ meta.function-call.identifier.shell meta.string.shell
# <- variable.function.shell punctuation.definition.string.begin.shell
#^^^^^^^ variable.function.shell
#      ^ punctuation.definition.string.end.shell
#       ^ - meta - variable

e'cho'o
# <- meta.function-call.identifier.shell - meta.string
#^^^^^ meta.function-call.identifier.shell meta.string.shell
#     ^ meta.function-call.identifier.shell - meta.string
# <- variable.function.shell
#^^^^^^ variable.function.shell
#      ^ - meta - variable

e' cho'o
# <- meta.function-call.identifier.shell - meta.string
#^^^^^^ meta.function-call.identifier.shell meta.string.shell
#      ^ meta.function-call.identifier.shell - meta.string
# <- variable.function.shell
#^^^^^^^ variable.function.shell
#       ^ - meta - variable

e"\" \t ${ch} "o
# <- meta.function-call.identifier.shell - meta.string - meta.interpolation
#^^^^^^^ meta.function-call.identifier.shell meta.string.shell - meta.interpolation
#       ^^^^^ meta.function-call.identifier.shell meta.string.shell meta.interpolation.parameter.shell
#            ^^ meta.function-call.identifier.shell meta.string.shell - meta.interpolation
#              ^ meta.function-call.identifier.shell - meta.string - meta.interpolation
# <- variable.function.shell
#^^^^^^^ variable.function.shell
#       ^^^^^ - variable.function
#            ^^^ variable.function.shell
#               ^ - meta - variable

# Test if commands are recognized even in the presence of strings and variable
# expansions
ch=ch
e${ch}"o" hello, world!
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#     ^^^ meta.function-call.identifier.shell meta.string.shell - meta.interpolation
#        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#^^^^^ - variable.function
#     ^^^ variable.function.shell
#^ punctuation.definition.variable.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^^ variable.other.readwrite
#    ^ punctuation.section.interpolation.end.shell
#     ^ punctuation.definition.string.begin.shell
#       ^ punctuation.definition.string.end.shell
e=e
${e}'ch'o hello, world!
# <- meta.function-call.identifier.shell - variable.function
#^^^^^^^^ meta.function-call.identifier.shell
#        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# <- punctuation.definition.variable.shell
#^^^ - variable.function
#   ^^^^^ variable.function.shell
#^ punctuation.section.interpolation.begin.shell
# ^ variable.other.readwrite.shell
#  ^ punctuation.section.interpolation.end.shell
#   ^ punctuation.definition.string.begin.shell
#      ^ punctuation.definition.string.end.shell
e=e
$e'ch'o Hello, world!
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
# ^^^^ meta.function-call.identifier.shell meta.string.shell
#     ^ meta.function-call.identifier.shell
#      ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# <- variable.other.readwrite.shell punctuation.definition.variable.shell
#^ variable.other.readwrite.shell
# ^^^^^ variable.function.shell
# ^ punctuation.definition.string.begin.shell
#    ^ punctuation.definition.string.end.shell


####################################################################
# Basic Command Arguments                                          #
####################################################################

set -e -
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ variable.parameter.option.shell - punctuation
#      ^ - keyword - punctuation
set -e=10
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ variable.parameter.option.shell - punctuation
set +e
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ variable.parameter.option.shell - punctuation
set -o pipefail
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ variable.parameter.option.shell - punctuation
set +o pipefail
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ variable.parameter.option.shell - punctuation
set -Euo pipefail
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^^^ variable.parameter.option.shell - punctuation
set +Euo pipefail
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^^^ variable.parameter.option.shell - punctuation
set +Eou pipefail
#   ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^^ variable.parameter.option.shell - punctuation
#      ^ - variable.parameter.option - punctuation
set -e -- -o {string}
#   ^^ variable.parameter.option.shell
#     ^ - variable - keyword
#      ^^ keyword.operator.end-of-options.shell
#        ^ - variable - keyword
#         ^^ - variable.parameter.option
#            ^^^^^^^^ meta.interpolation.brace.shell

read -d '' -sn 1 -t1 -- -t1 10
#^^^ meta.function-call.identifier.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ - meta.parameter
#    ^^ meta.parameter.option.shell
#      ^^^^ - meta.parameter
#          ^^^ meta.parameter.option.shell
#             ^^^ - meta.parameter
#                ^^ meta.parameter.option.shell
#                  ^^^^^^^^^^^ - meta.parameter
#^^^ support.function.read.shell
#    ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#     ^ variable.parameter.option.shell - punctuation
#       ^^ string.quoted.single.shell
#          ^^^ variable.parameter.option.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^^ variable.parameter.option.shell
#                  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                    ^^ keyword.operator.end-of-options.shell
#                       ^^^^^^ - constant - variable

shift 2 -- 
#^^^^ meta.function-call.identifier.shell support.function.shift.shell
#    ^^^^^^ meta.function-call.arguments.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^^ - keyword

umask 0777
#^^^^ meta.function-call.identifier.shell support.function.umask.shell
#    ^^^^^ meta.function-call.arguments.shell
#     ^ meta.number.integer.octal.shell constant.numeric.base.shell
#      ^^^ meta.number.integer.octal.shell constant.numeric.value.shell

echo +e "Hello"
#    ^ variable.parameter.option punctuation
#     ^ variable.parameter

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
#  ^^^^^ - string

foo -e =Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ punctuation.definition.parameter.shell
#   ^^ meta.parameter.option.shell variable.parameter.option.shell
#      ^ - keyword.operator

foo -e=Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^ meta.function-call.arguments.shell
#  ^ - meta.parameter
#   ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#     ^ keyword.operator.assignment.shell
#      ^^^^^ string.unquoted.shell

foo -$e=Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^^ meta.parameter.option.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - variable variable
#      ^ keyword.operator.assignment.shell
#       ^^^^^ string.unquoted.shell

foo -n -
#  ^ - meta.parameter
#   ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#     ^ - meta.parameter - variable - punctuation
#      ^ - keyword - punctuation

foo -nfv --opt1 arg1 -p=true -d false
#  ^ - variable - punctuation
#   ^^^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ - variable - punctuation
#        ^^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#          ^^^^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#              ^ - variable - punctuation
#                    ^^ meta.parameter.option.shell variable.parameter.option.shell
#                      ^ keyword.operator.assignment.shell
#                       ^^^^ constant.language.boolean.shell
#                            ^^ meta.parameter.option.shell variable.parameter.option.shell
#                               ^^^^^ constant.language.boolean.shell

foo --\
opt1=10
# <- meta.function-call.arguments.shell meta.parameter.option.shell variable.parameter.option.shell
#^^^ meta.function-call.arguments.shell meta.parameter.option.shell variable.parameter.option.shell
#   ^ meta.function-call.arguments.shell keyword.operator.assignment.shell
#    ^^ meta.function-call.arguments.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ - meta.function-call - meta.number - constant

foo --o\
pt1=10
# <- meta.function-call.arguments.shell meta.parameter.option.shell variable.parameter.option.shell
#^^ meta.function-call.arguments.shell meta.parameter.option.shell variable.parameter.option.shell
#  ^ meta.function-call.arguments.shell keyword.operator.assignment.shell
#   ^^ meta.function-call.arguments.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#     ^ - meta.function-call - meta.number - constant

foo --opt1\
=10
# <- meta.function-call.arguments.shell keyword.operator.assignment.shell
#^^ meta.function-call.arguments.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#  ^ - meta.function-call - meta.number - constant

foo --opt1=\
10
# <- meta.function-call.arguments.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#^ meta.function-call.arguments.shell meta.number.integer.decimal.shell constant.numeric.value.shell
# ^ - meta.function-call - meta.number - constant

foo --opt1 arg1 -- --not-an-option
#              ^ - variable - keyword
#               ^^ keyword.operator.end-of-options.shell
#                 ^ - variable - keyword
#                  ^^ - variable.parameter punctuation

foo --opt1 arg1----not-an-option
#          ^^^^^^^^^^^^^^^^^^^^^ - keyword - punctuation - variable

`foo --opt1 arg1 -- --not-an-option`
#               ^ - variable - keyword
#                ^^ keyword.operator.end-of-options.shell
#                  ^ - variable - keyword
#                   ^^ - variable.parameter punctuation

`foo --opt1 arg1 --`
#               ^ - variable - keyword
#                ^^ keyword.operator.end-of-options.shell
#                  ^ - variable.parameter punctuation

f#-o+o ar%g --opt1 --opt2=value +x -y &>/dev/null
# <- meta.function-call.identifier.shell variable.function.shell - meta.function-call.arguments
#^^^^^ meta.function-call.identifier.shell variable.function.shell - meta.function-call.arguments
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call.identifier
#                                                ^ - meta.function-call
#          ^ - variable - punctuation
#           ^^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#             ^^^^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#                 ^ - variable - punctuation
#                  ^^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#                    ^^^^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#                        ^ keyword.operator.assignment.shell
#                         ^^^^^ string.unquoted.shell
#                              ^ - variable - punctuation
#                               ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#                                ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#                                 ^ - variable - punctuation
#                                  ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#                                   ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#                                    ^ - variable - punctuation
#                                     ^^ keyword.operator.assignment.redirection.shell

git log --format="%h git has this pattern, too"
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                              ^ - meta.function-call
#      ^ - variable - punctuation
#       ^^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#         ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.double.shell

7za x -a -9r -= -] -!
# <- meta.function-call.identifier.shell variable.function.shell
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^ meta.function-call.arguments.shell
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^^ meta.parameter.option.shell variable.parameter.option.shell
#            ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#             ^ keyword.operator.assignment.shell
#               ^^ meta.parameter.option.shell variable.parameter.option.shell
#                  ^^ meta.parameter.option.shell variable.parameter.option.shell

sleep 2 & jobs
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^ meta.function-call.identifier.shell variable.function.shell
#    ^^ meta.function-call.arguments.shell
#      ^^^ - meta.function-call
#       ^ keyword.operator
#         ^^^^ meta.function-call.identifier.shell support.function.jobs.shell

subdir/./myscript.sh --option arg1 arg2 -x
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell variable.function.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                    ^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                            ^^^^^^^^^^^ - string
#                                       ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                         ^ - meta.function-call

{foo} -o --option -- -o
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^ meta.function-call.identifier.shell variable.function.shell
#    ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                      ^ - meta.function-call
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ - variable
#        ^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^ - variable - keyword
#                 ^^ keyword.operator.end-of-options.shell
#                   ^ - variable - keyword
#                    ^^ - variable

[foo] -o
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^ meta.function-call.identifier.shell variable.function.shell
#    ^^^ meta.function-call.arguments.shell

$foo -o
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#   ^^^ meta.function-call.arguments.shell

${foo}/${bar}/${baz}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell
#                   ^ - meta.function-call
#^^^^^ meta.interpolation.parameter.shell - variable.function
#^ punctuation.section.interpolation.begin.shell
#     ^ variable.function.shell - meta.interpolation
#      ^^^^^^ meta.interpolation.parameter.shell - variable.function
#            ^ variable.function.shell - meta.interpolation
#             ^^^^^^ meta.interpolation.parameter.shell - variable.function

echo>foo.txt
# <- meta.function-call.identifier.shell support.function.echo.shell
#^^^ meta.function-call.identifier.shell support.function.echo.shell
#   ^^^^^^^^ meta.function-call.arguments.shell - support.function
#   ^ keyword.operator.assignment.redirection.shell

ls>foo.txt
# <- meta.function-call.identifier.shell variable.function.shell
#^ meta.function-call.identifier.shell variable.function.shell
# ^^^^^^^^ meta.function-call.arguments.shell - variable.function
# ^ keyword.operator.assignment.redirection.shell

cd foo/bar-2345
#^ meta.function-call.identifier.shell support.function.cd.shell
# ^^^^^^^^^^^^^ meta.function-call.arguments.shell - constant.numeric

cd foo/bar2345
#^ meta.function-call.identifier.shell support.function.cd.shell
# ^^^^^^^^^^^^ meta.function-call.arguments.shell - constant.numeric

####################################################################
# Compound Command Arguments                                       #
####################################################################

(foo) -o
# <- meta.compound.shell punctuation.section.compound.begin.shell
#^^^ meta.compound.shell meta.function-call.identifier.shell variable.function.shell
#   ^ meta.compound.shell punctuation.section.compound.end.shell
#    ^^^ meta.compound.arguments.shell

{ foo -o } --opt -- --no-option
# <- meta.compound.shell punctuation.section.compound.begin.shell
#^^^^^^^^^ meta.compound.shell - meta.compound meta.compound
# ^^^ meta.function-call.identifier.shell
#    ^^^^ meta.function-call.arguments.shell
#         ^^^^^^^^^^^^^^^^^^^^^ meta.compound.arguments.shell - meta.compound meta.compound
#                              ^ - meta.compound
# ^^^ variable.function.shell
#     ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#      ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#        ^ punctuation.section.compound.end.shell
#          ^^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#            ^^^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#                ^^ keyword.operator.end-of-options.shell
#                   ^^^^^^^^^^^ - variable - punctuation

{
# <- meta.compound.shell punctuation.section.compound.begin.shell
#^ meta.compound.shell - meta.compound meta.compound
  {
#^ meta.compound.shell - meta.compound meta.compound
# ^^ meta.compound.shell meta.compound.shell
# ^ punctuation.section.compound.begin.shell
    foo args
#^^^^^^^^^^^^ meta.compound.shell meta.compound.shell
#   ^^^ meta.function-call.identifier.shell variable.function.shell
#      ^^^^^ meta.function-call.arguments.shell
  } 2>> "$stderr_log"
#^^ meta.compound.shell meta.compound.shell
#  ^^^^^^^^^^^^^^^^^^ meta.compound.shell meta.compound.arguments.shell
#                    ^ meta.compound.shell - meta.compound meta.compound
# ^ punctuation.section.compound.end.shell
  # ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell - variable.function
} 1>> "$stdout_log"
# <- meta.compound.shell - meta.compound meta.compound
#^^^^^^^^^^^^^^^^^^ meta.compound.arguments.shell
#                  ^ - meta
# <- punctuation.section.compound.end.shell
# ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell - variable.function


####################################################################
# 3.2.5 Coprocesses                                                #
####################################################################

coproc
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell keyword.declaration.coproc.shell
#     ^ - meta.coproc - keyword

coproc na\
me args
# <- meta.coproc.command.shell meta.function-call.identifier.shell
#  ^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#      ^ - meta.coproc - meta.function-call

coproc name ar\
gs
# <- meta.coproc.command.shell meta.function-call.arguments.shell
# ^ - meta.coproc - meta.function-call

coproc sed s/^/foo/
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell - meta.function-call
#      ^^^ meta.coproc.command.shell meta.function-call.identifier.shell
#         ^^^^^^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#                  ^ - meta.coproc - meta.function-call
#^^^^^ keyword.declaration.coproc.shell
#      ^^^ variable.function.shell

coproc ls thisfiledoesntexist; read; 2>&1
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell
#      ^^ meta.coproc.command.shell meta.function-call.identifier.shell
#        ^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#                            ^^ meta.coproc.command.shell - meta.function-call.identifier.shell
#                              ^^^^ meta.coproc.command.shell meta.function-call.identifier.shell
#                                  ^^^^^^ meta.coproc.command.shell - meta.function-call.identifier.shell
#                                        ^ - meta.coproc
#^^^^^ keyword.declaration.coproc.shell
#      ^^ variable.function.shell
#                            ^ punctuation.terminator.statement.shell
#                              ^^^^ support.function.read.shell
#                                  ^ punctuation.terminator.statement.shell
#                                    ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                     ^^ keyword.operator.assignment.redirection.shell
#                                       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

coproc awk '{print "foo" $0;fflush()}'
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell
#      ^^^ meta.coproc.command.shell meta.function-call.identifier.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#                                     ^ - meta.coproc - meta.function-call
#^^^^^ keyword.declaration.coproc.shell
#      ^^^ variable.function.shell
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.single.shell
#          ^ punctuation.definition.string.begin.shell
#                                    ^ punctuation.definition.string.end.shell

coproc { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.compound.shell
#                                            ^^^^^^ meta.coproc.command.shell - meta.compound
#                                                  ^ - meta.function-call - meta.function.coproc
#        ^^ meta.function-call.identifier.shell
#          ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ - meta.function-call.identifier.shell
#                                ^^^^ meta.function-call.identifier.shell
#                                    ^^^^^^^^ - meta.function-call.identifier.shell
#^^^^^ keyword.declaration.coproc.shell
#      ^ punctuation.section.compound.begin.shell
#        ^^ variable.function.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ support.function.read.shell
#                                    ^ punctuation.terminator.statement.shell
#                                      ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                       ^^ keyword.operator.assignment.redirection.shell
#                                         ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                           ^ punctuation.section.compound.end.shell
#                                             ^ keyword.operator.assignment.pipe.shell
#                                               ^^^ variable.function.shell

coproc myls { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^^^^^^ meta.coproc.identifier.shell - meta.compound
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.compound.shell
#                                                 ^^^ - meta.function-call
#                                                    ^^^ meta.function-call.identifier.shell
#^^^^^ keyword.declaration.coproc.shell
#           ^ punctuation.section.compound.begin.shell
#             ^^ variable.function.shell
#                                   ^ punctuation.terminator.statement.shell
#                                     ^^^^ support.function.read.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                            ^^ keyword.operator.assignment.redirection.shell
#                                              ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                ^ punctuation.section.compound.end.shell
#                                                  ^ keyword.operator.assignment.pipe.shell
#                                                    ^^^ variable.function.shell

{ coproc tee { tee logfile ;} >&3 ;} 3>&1
# <- meta.compound.shell punctuation.section.compound.begin.shell
# ^^^^^^ meta.compound.shell meta.coproc.shell
#       ^^^^^ meta.compound.shell meta.coproc.identifier.shell
#            ^^^^^^^^^^^^^^^^ meta.compound.shell meta.coproc.command.shell meta.compound.shell
#                            ^^^^ meta.compound.shell meta.coproc.command.shell meta.compound.arguments.shell
#                                ^^^ meta.compound.shell - meta.coproc
#                                   ^^^^^ meta.compound.arguments.shell - meta.coproc - meta.function-call
# ^^^^^^ keyword.declaration.coproc.shell
#        ^^^ entity.name.function.shell
#            ^ punctuation.section.compound.begin.shell
#              ^^^ variable.function.shell
#                           ^ punctuation.section.compound.end.shell
#                             ^^ keyword.operator.assignment.redirection
#                               ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                  ^ punctuation.section.compound.end.shell
#                                    ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                     ^^ keyword.operator.assignment.redirection
#                                       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

coproc foobar {
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^^^^^^^^ meta.coproc.identifier.shell
#             ^^ meta.coproc.command.shell meta.compound.shell
#^^^^^ keyword.declaration.coproc.shell
#      ^^^^^^ entity.name.function.shell
#             ^ punctuation.section.compound.begin.shell
    read
#^^^^^^^^ meta.coproc.command.shell meta.compound.shell
#   ^^^^ meta.coproc.command.shell meta.compound.shell meta.function-call.identifier.shell support.function.read.shell
}
# <- meta.coproc.command.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta


####################################################################
# 3.3 Shell Functions                                              #
####################################################################

   ()
#^^ - meta.function
#  ^ meta.function.parameters.shell
#   ^ meta.function.parameters.shell
#    ^ meta.function.shell

   ()
   {}
# ^ meta.function.shell - meta.compound
#  ^^ meta.function.shell meta.compound.shell
#    ^ - meta.function
#  ^ punctuation.section.compound.begin.shell
#   ^ punctuation.section.compound.end.shell

   () \
   {}
# ^ meta.function.shell - meta.compound
#  ^^ meta.function.shell meta.compound.shell
#    ^ - meta.function
#  ^ punctuation.section.compound.begin.shell
#   ^ punctuation.section.compound.end.shell

   () { [[ $# == 2 ]] && tput setaf $2 || tput setaf 3; echo -e "$1"; tput setaf 15; }
#^^ - meta.function
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
#  ^ meta.function.parameters.shell
#   ^ meta.function.parameters.shell
#    ^ meta.function.shell - meta.function.identifier - meta.compound
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.shell meta.compound.shell
#  ^ punctuation.section.parameters.begin.shell
#   ^ punctuation.section.parameters.end.shell
#    ^ - punctuation
#     ^ punctuation.section.compound.begin.shell
#       ^^ support.function.double-brace.begin
#          ^ punctuation.definition.variable
#           ^ variable.language
#             ^^ keyword.operator.comparison
#                  ^^ support.function.double-brace.end
#                     ^^ keyword.operator.logical

   logC () { [[ $# == 2 ]] && tput setaf $2 || tput setaf 3; echo -e "$1"; tput setaf 15; }
#^^ - meta.function
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
#  ^^^^ meta.function.identifier.shell
#      ^ meta.function.identifier.shell
#       ^ meta.function.parameters.shell
#        ^ meta.function.parameters.shell
#         ^ meta.function.shell - meta.function.identifier - meta.compound
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.shell meta.compound.shell
#^^ - entity
#  ^^^^ entity.name.function.shell
#      ^ - entity - punctuation
#       ^ punctuation.section.parameters.begin.shell
#        ^ punctuation.section.parameters.end.shell
#         ^ - punctuation
#          ^ punctuation.section.compound.begin.shell
#            ^^ support.function.double-brace.begin.shell
#               ^ punctuation.definition.variable.shell
#               ^^ variable.language.shell
#                  ^^ keyword.operator.comparison.shell
#                       ^^ support.function.double-brace.end.shell
#                          ^^ keyword.operator.logical.shell

logExit ( ) {
# <- meta.function.identifier.shell entity.name.function.shell
#^^^^^^ meta.function.identifier.shell entity.name.function.shell
#      ^ meta.function.identifier.shell
#       ^^^ meta.function.parameters.shell
#          ^ meta.function.shell - meta.compound
#           ^^ meta.function.shell meta.compound.shell
#^^^^^^ entity.name.function.shell
#      ^ - entity - punctuation
#       ^ punctuation.section.parameters.begin.shell
#         ^ punctuation.section.parameters.end.shell
#           ^ punctuation.section.compound.begin.shell
  [[ $1 == '0' ]] && tput setaf 2  || tput setaf 1;
  #<- meta.conditional.shell support.function.double-brace.begin.shell
  #^ meta.conditional.shell support.function.double-brace.begin.shell
  #            ^^ meta.conditional.shell support.function.double-brace.end.shell
  [[ $1 == '0' ]] && echo -e "$2 PASSED" || echo -e "$2 FAILED";
  #<- meta.conditional.shell support.function.double-brace.begin.shell
  #^ meta.conditional.shell support.function.double-brace.begin.shell
  #            ^^ meta.conditional.shell support.function.double-brace.end.shell
  #               ^^ keyword.operator.logical.shell
  #                  ^^^^ meta.function-call.identifier.shell support.function.echo.shell
  tput setaf 15;
  # <- meta.function meta.function-call variable.function
  #            ^ meta.function punctuation.terminator.statement
  [[ $1 == '0' ]] || exit -1
  #<- meta.conditional.shell support.function.double-brace.begin.shell
  #^ meta.conditional.shell support.function.double-brace.begin.shell
  #            ^^ meta.conditional.shell support.function.double-brace.end.shell
  #               ^^ keyword.operator.logical.shell
  #                  ^^^^  keyword.control.flow.exit.shell
  #                       ^ keyword.operator.arithmetic.shell
  #                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

logExit $? $WEIRD
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^^^ meta.function-call.identifier.shell variable.function.shell
#      ^^^^^^^^^^ meta.function-call.arguments.shell
#      ^ - meta.interpolation - variable
#       ^^ meta.interpolation.parameter.shell variable.language.shell
#         ^ - meta.interpolation - variable
#          ^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                ^ - meta.function-call - meta.interpolation - variable

function foo
#^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^ meta.function.identifier.shell
#^^^^^^^ keyword.declaration.function.shell
#       ^ - entity - keyword - storage
#        ^^^ entity.name.function.shell
#           ^ - entity
{
# <- meta.function.shell meta.compound.shell punctuation.section.compound.begin.shell
    foo bar
    # <- meta.function.shell meta.compound.shell meta.function-call.identifier.shell
    # <- variable.function.shell

    return 0
    # <- keyword.control.flow.return.shell
    #^^^^^ keyword.control.flow.return.shell
    #      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

# <- - meta.function

function func\
name
# <- meta.function.identifier.shell entity.name.function.shell

function foo (     ) {
#^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^ meta.function.identifier.shell
#            ^^^^^^^ meta.function.parameters.shell
#                   ^^^ meta.function.shell
#       ^ - entity.name.function
#        ^^^ entity.name.function.shell
#           ^ - entity.name.function
#            ^ punctuation.section.parameters.begin.shell
#                  ^ punctuation.section.parameters.end.shell
#                    ^ punctuation.section.compound.begin.shell
    echo 'hello from foo'
    # <- meta.function.shell meta.compound.shell meta.function-call.identifier.shell
    # <- support.function.echo.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

# <- - meta.function

f () (
# <- meta.function.identifier.shell entity.name.function.shell
#^ meta.function.identifier.shell - entity - punctuation
# ^^ meta.function.parameters.shell
#   ^ meta.function.shell - meta.compound
#    ^ meta.function.shell meta.compound.shell punctuation.section.compound.begin.shell
  echo hello
  # <- meta.function.shell meta.compound.shell meta.function-call.identifier.shell
  # <- support.function.echo.shell
)
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

function f (
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^ meta.function.identifier.shell
#          ^^ meta.function.shell meta.compound.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ entity.name.function.shell
#          ^ punctuation.section.compound.begin.shell
  echo hello
  # <- meta.function meta.function-call support.function.echo
)
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

function foo {
# <- meta.function.shell keyword.declaration.function.shell
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
  #  ^ punctuation.section.interpolation.begin.shell
  func() {
    # <- meta.function entity.name.function
    #    ^ punctuation.section
    echo bar
  }
  # <- punctuation.section
  func

  # <- meta.interpolation.command
)
# <- punctuation.section.interpolation.end.shell
echo $foo # prints "bar"

# <- - meta.function - meta.interpolation

foo:foo () {
  # <- meta.function entity.name.function
    echo "this foo:foo"
}
~ () {
# <- meta.function entity.name.function
    echo "this is ~"
}
"~"
# <- meta.function-call.identifier.shell meta.string.shell variable.function.shell punctuation.definition.string.begin.shell
#^^ meta.function-call.identifier.shell meta.string.shell variable.function.shell
^ () {
# <- meta.function entity.name.function
    echo "this is ^"
}
^
# <- meta.function-call.identifier.shell variable.function.shell
@ () {
# <- meta.function entity.name.function
    echo "this is @"
}
@
# <- meta.function-call.identifier.shell variable.function.shell

function () ()
# <- meta.function.identifier.shell entity.name.function.shell
function () {}
# <- meta.function.identifier.shell entity.name.function.shell

function 7zip {
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell keyword.declaration.function.shell
#       ^^^^^^ meta.function.identifier.shell
#        ^^^^ entity.name.function.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
7zip
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function [] () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^ meta.function.identifier.shell
#           ^^ meta.function.parameters.shell
#             ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ entity.name.function.shell
#           ^ punctuation.section.parameters.begin.shell
#            ^ punctuation.section.parameters.end.shell
#              ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from []"
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
[]
# <- meta.function-call.identifier.shell variable.function.shell
#^ meta.function-call.identifier.shell variable.function.shell

function [[]] () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from [[]]"
}
[[]]
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function {} () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^ meta.function.identifier.shell
#           ^^ meta.function.parameters.shell
#             ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ entity.name.function.shell
#           ^ punctuation.section.parameters.begin.shell
#            ^ punctuation.section.parameters.end.shell
#              ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from {}"
}
{}
# <- meta.function-call.identifier.shell variable.function.shell
#^ meta.function-call.identifier.shell variable.function.shell

function {{}} () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from {{}}"
}
{{}}
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function -foo () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from -foo"
}
-foo
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function +foo () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from +foo"
}
+foo
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function =foo () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from =foo"
}
=foo
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function fo${bar}'baz' () {}
#       ^^^ meta.function.identifier.shell - meta.interpolation - meta.string
#          ^^^^^^ meta.function.identifier.shell meta.interpolation.parameter.shell - meta.string
#                ^^^^^ meta.function.identifier.shell meta.string.shell - meta.interpolation
#                      ^^ meta.function.parameters.shell
#                        ^^^ meta.function.shell
#        ^^ entity.name.function.shell
#          ^^^^^^ - entity.name
#                ^^^^^ entity.name.function.shell

# Functions may replace booleans. Won't respect that in function calls though.
function true () {} ; function false () {}
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^^ meta.function.shell
#                   ^^ - meta.function
#                     ^^^^^^^^ meta.function.shell
#                             ^^^^^^^ meta.function.identifier.shell
#                                    ^^ meta.function.parameters.shell
#                                      ^^^ meta.function.shell
#        ^^^^ entity.name.function.shell
#                              ^^^^^ entity.name.function.shell
#                   ^ punctuation.terminator.statement.shell

__git_aliased_command ()
{
    local word cmdline=$(__git config --get "alias.$1")
    for word in $cmdline; do
        case "$word" in
        {)  : skip start of shell helper function ;;
#       ^ - punctuation.section.interpolation.begin
#        ^ keyword.control.conditional.patterns.end.shell
        \'*)    : skip opening quote after sh -c ;;
        *)
            echo "$word"
            return
        esac
    done
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

# <- - meta.function


####################################################################
# alias builtin                                                    #
####################################################################

alias
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell keyword.declaration.alias.shell
#    ^ - meta.declaration.alias - storage

alias foo=bar
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell
#    ^^^^^^^^ meta.declaration.alias.arguments.shell
#            ^ - meta.declaration.alias
#     ^^^ meta.variable.shell entity.name.function.shell
#        ^ keyword.operator.assignment.shell
#         ^^^ meta.string.shell string.unquoted.shell

alias f'o'o=bar
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell
#    ^^^^^^^^^^ meta.declaration.alias.arguments.shell
#              ^ - meta.declaration.alias
#     ^^^^^ meta.variable.shell entity.name.function.shell
#      ^ punctuation.definition.string.begin.shell
#        ^ punctuation.definition.string.end.shell
#          ^ keyword.operator.assignment.shell
#           ^^^ meta.string.shell string.unquoted.shell

alias -p foo=bar 7za=qux
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell
#    ^^^^^^^^^^^^^^^^^^^ meta.declaration.alias.arguments.shell
#                       ^ - meta.declaration.alias
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^^ meta.variable.shell entity.name.function.shell
#           ^ keyword.operator.assignment.shell
#            ^^^ meta.string.shell string.unquoted.shell
#                ^^^ meta.variable.shell entity.name.function.shell
#                   ^ keyword.operator.assignment.shell
#                    ^^^ meta.string.shell string.unquoted.shell

alias -a -p -- foo=bar baz=qux
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.alias.arguments.shell
#                             ^ - meta.declaration.alias
#     ^^ invalid.illegal.parameter.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ keyword.operator.end-of-options.shell
#              ^^^ meta.variable.shell entity.name.function.shell
#                 ^ keyword.operator.assignment.shell
#                  ^^^ meta.string.shell string.unquoted.shell
#                      ^^^ meta.variable.shell entity.name.function.shell
#                         ^ keyword.operator.assignment.shell
#                          ^^^ meta.string.shell string.unquoted.shell

alias $foo=bar
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell
#    ^^^^^^^^^ meta.declaration.alias.arguments.shell
#             ^ - meta.declaration.alias
#     ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#         ^ keyword.operator.assignment.shell
#          ^^^ meta.string.shell string.unquoted.shell

alias ..='cd ..'
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell keyword.declaration.alias.shell
#    ^^^^^^^^^^^ meta.declaration.alias.arguments.shell
#     ^^ meta.variable.shell entity.name.function.shell
#       ^ keyword.operator.assignment.shell
#        ^^^^^^^ meta.string.shell string.quoted.single.shell

alias -p ..='cd ..'
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell keyword.declaration.alias.shell
#    ^^^^^^^^^^^^^^ meta.declaration.alias.arguments.shell
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.variable.shell entity.name.function.shell
#          ^ keyword.operator.assignment.shell
#           ^^^^^^^ meta.string.shell string.quoted.single.shell

alias -- -='cd -'
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell keyword.declaration.alias.shell
#    ^^^^^^^^^^^^ meta.declaration.alias.arguments.shell
#     ^^ keyword.operator.end-of-options.shell
#        ^ meta.variable.shell entity.name.function.shell
#         ^ keyword.operator.assignment.shell
#          ^^^^^^ meta.string.shell string.quoted.single.shell


####################################################################
# declare builtin                                                  #
####################################################################

declare             # comment
#<- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#      ^ - meta.declaration.variable
#                   ^^^^^^^^^^ comment.line.number-sign.shell

declare foo         # 'foo' is a variable name
#^^^^^^ meta.declaration.variable.shell
#      ^^^^ meta.declaration.variable.arguments.shell
#          ^ - meta.declaration.variable
# <- keyword.declaration.variable.shell
#          ^ - variable.other.readwrite
#                  ^ - meta.declaration.variable

declare +A          # this is a comment
#^^^^^^ meta.declaration.variable.shell
#      ^^^ meta.declaration.variable.arguments.shell
#         ^ - meta.declaration.variable
#                   ^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

declare -A foo bar  # 'foo' and 'bar' are variable names
#^^^^^^ meta.declaration.variable.shell
#      ^^^^^^^^^^^ meta.declaration.variable.arguments.shell
#                 ^ - meta.declaration.variable
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

declare ret; bar=foo # comment
#^^^^^^ meta.declaration.variable.shell
#      ^^^^ meta.declaration.variable.arguments.shell
#          ^ - meta.declaration.variable
# <- keyword.declaration.variable.shell
#          ^ punctuation.terminator.statement.shell
#               ^ keyword.operator.assignment.shell
#                ^^^ meta.string.shell string.unquoted.shell
#                   ^ - meta.string - string - comment
#                    ^^^^^^^^^^ comment.line.number-sign.shell

declare ret ;
#^^^^^^ meta.declaration.variable.shell
#      ^^^^ meta.declaration.variable.arguments.shell
#          ^ - meta.declaration.variable
# <- keyword.declaration.variable.shell
#           ^ punctuation.terminator.statement.shell

declare ret&
#^^^^^^ meta.declaration.variable.shell
#      ^^^^ meta.declaration.variable.arguments.shell
#          ^ - meta.declaration.variable
# <- keyword.declaration.variable.shell
#          ^ keyword.operator

declare ret &
#^^^^^^ meta.declaration.variable.shell
#      ^^^^ meta.declaration.variable.arguments.shell
#          ^ - meta.declaration.variable
# <- keyword.declaration.variable.shell
#           ^ keyword.operator

declare bar=\
foo # comment
# <- meta.declaration.variable.arguments.shell meta.string.shell string.unquoted.shell
#^^ meta.declaration.variable.arguments.shell meta.string.shell string.unquoted.shell
#  ^ - meta.function
#   ^^^^^^^^^^ comment.line.number-sign.shell

declare bar=\
(foo) # comment
#^^^^ meta.declaration.variable.arguments.shell
#    ^ - meta.function
# <- punctuation.section.sequence.begin.shell
#   ^ punctuation.section.sequence.end.shell
#     ^^^^^^^^^^ comment.line.number-sign.shell

declare -a owners=(
    # dogs
#   ^^^^^^^ meta.declaration.variable.arguments.shell meta.sequence.shell comment.line.number-sign.shell
    [susan]=labrador
#   ^^^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell meta.sequence.shell
#   ^^^^^^^ meta.brackets.shell
#          ^ keyword.operator.assignment.shell
#           ^^^^^^^^ meta.string.shell string.unquoted.shell
    # cats
#   ^^^^^^^ meta.declaration.variable.arguments.shell meta.sequence.shell comment.line.number-sign.shell
    [terry]=tabby
#   ^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell meta.sequence.shell
#   ^^^^^^^ meta.brackets.shell
#          ^ keyword.operator.assignment.shell
#           ^^^^^ meta.string.shell string.unquoted.shell
)

declare -f _init_completion > /dev/null && complete -F _upto upto
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^ meta.declaration.variable.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell
#                                      ^^^^ - meta.declaration - meta.function-call
#                                          ^^^^^^^^ meta.function-call.identifier.shell
#                                                  ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                                ^ - meta.function-call
#^^^^^^ keyword.declaration.variable.shell
#       ^^ variable.parameter.option.shell
#          ^^^^^^^^^^^^^^^^ meta.variable.shell variable.function.shell
#                           ^ keyword.operator.assignment.redirection.shell
#                                       ^^ keyword.operator.logical.shell
#                                          ^^^^^^^^ variable.function.shell
#                                                   ^^ variable.parameter.option.shell

printFunction "$variableString1" "$(declare -p variableArray)"
#             ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#              ^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#                              ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell - string
#                                                            ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                  ^ punctuation.section.interpolation.begin.shell
#                                   ^^^^^^^ keyword.declaration.variable.shell
#                                           ^^ variable.parameter.option
#                                              ^^^^^^^^^^^^^ variable.other.readwrite
#                                                           ^ punctuation.section.interpolation.end.shell

# <- - variable.other
printFunction "$variableString1" "`declare -p variableArray`"
#             ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#              ^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#                              ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell - string
#                                                           ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                 ^ punctuation.section.interpolation.begin.shell
#                                  ^^^^^^^ keyword.declaration.variable.shell
#                                          ^^ variable.parameter.option
#                                             ^^^^^^^^^^^^^ variable.other.readwrite
#                                                          ^ punctuation.section.interpolation.end.shell


####################################################################
# export builtin                                                   #
####################################################################

export
# <- meta.function-call.identifier.shell support.function.export.shell
#^^^^^ meta.function-call.identifier.shell support.function.export.shell
#     ^ - meta.function-call

export foo          # 'foo' is a variable name
# <- meta.function-call.identifier.shell support.function.export.shell
#^^^^^ meta.function-call.identifier.shell support.function.export.shell
#     ^^^^ meta.function-call.arguments.shell
#         ^ - meta.function-call
#      ^^^ variable.other.readwrite.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

export foo bar      # 'foo' and 'bar' are variable names
# <- meta.function-call.identifier.shell support.function.export.shell
#^^^^^ meta.function-call.identifier.shell support.function.export.shell
#     ^^^^^^^^ meta.function-call.arguments.shell
#             ^ - meta.function-call
#      ^^^ variable.other.readwrite.shell
#         ^ - variable
#          ^^^ variable.other.readwrite.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

export foo='bar'    # 'foo' is a variable name
# <- meta.function-call.identifier.shell support.function.export.shell
#^^^^^ meta.function-call.identifier.shell support.function.export.shell
#     ^^^^^^^^^^ meta.function-call.arguments.shell
#               ^ - meta.function-call
#      ^^^ variable.other.readwrite.shell
#         ^ keyword.operator.assignment.shell
#          ^^^^^ meta.string.shell string.quoted.single.shell
#          ^ punctuation.definition.string.begin.shell
#              ^ punctuation.definition.string.end.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

export PGPASSWORD=$(cat "$DOKKU_ROOT/.postgresql/pwd_$APP")
# <- meta.function-call.identifier.shell support.function.export.shell
#^^^^^ meta.function-call.identifier.shell support.function.export.shell
#     ^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.string - meta.interpolation
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.command.shell
#      ^^^^^^^^^^ meta.variable.shell variable.other.readwrite.shell
#                ^ keyword.operator.assignment.shell
#                 ^ punctuation.definition.variable.shell
#                  ^ punctuation.section.interpolation.begin.shell
#                   ^^^ variable.function.shell
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell meta.string.shell

export -f foo
# <- meta.function-call.identifier.shell support.function.export.shell
#^^^^^ meta.function-call.identifier.shell support.function.export.shell
#     ^^^^^^^ meta.function-call.arguments.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^^^ meta.variable.shell variable.function.shell

####################################################################
# local builtin                                                    #
####################################################################

local
#<- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#    ^ - meta.declaration.variable
local;
#^^^^ keyword.declaration.variable.shell
local&
#^^^^ keyword.declaration.variable.shell
local|
#^^^^ keyword.declaration.variable.shell
local>/dev/null
#^^^^ keyword.declaration.variable.shell
local -
#^^^^ keyword.declaration.variable.shell
local()
#^^^^ keyword.declaration.variable.shell
local[]
#^^^^^^ - storage - keyword.declaration
local{}
#^^^^^^ - storage - keyword.declaration
local-
#^^^^^ - storage - keyword.declaration
-local
#^^^^^ - storage - keyword.declaration
local+
#^^^^^ - storage - keyword.declaration
local$
#^^^^^ - storage - keyword.declaration
local$var
#^^^^^^^^ - storage - keyword.declaration
local=
#^^^^^ - storage - keyword.declaration
local-=
#^^^^^^ - storage - keyword.declaration
local+=
#^^^^^^ - storage - keyword.declaration

local foo bar       # 'foo' and 'bar' are variable names
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#    ^^^^^^^^ meta.declaration.variable.arguments.shell
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.variable
#    ^ - variable
#     ^^^ meta.variable.shell variable.other.readwrite.shell
#        ^ - variable
#         ^^^ meta.variable.shell variable.other.readwrite.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

local foo bar='baz' # 'foo' and 'bar' are variable names
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#    ^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.variable
#    ^ - variable
#     ^^^ meta.variable.shell variable.other.readwrite.shell
#        ^ - variable
#         ^^^ meta.variable.shell variable.other.readwrite.shell
#            ^ keyword.operator.assignment.shell
#             ^^^^^ meta.string.shell string.quoted.single.shell
#                  ^ - comment - string
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

local foo+=10 bar-=true
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#    ^^^^^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell
#     ^^^ meta.variable.shell variable.other.readwrite.shell
#        ^^ keyword.operator.assignment.shell
#          ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^^^ meta.variable.shell variable.other.readwrite.shell
#                ^^ keyword.operator.assignment.shell
#                  ^^^^ constant.language.boolean.shell

local pid="$(cat "$PIDFILE" 2>/dev/null)"
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell
#     ^^^ meta.variable.shell variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell

local -fn foo
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#    ^^^^^^^^ meta.declaration.variable.arguments.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^^^ meta.variable.shell variable.function.shell

f() {
    local -a "$@"
    # <- keyword.declaration.variable.shell
    #^^^^ keyword.declaration.variable.shell
    #     ^^ meta.parameter.option.shell variable.parameter.option.shell
    #        ^^^^ meta.string.shell
    local x
    # <- keyword.declaration.variable.shell
    #^^^^ keyword.declaration.variable.shell
    #     ^ meta.variable.shell variable.other.readwrite.shell

    for x; do
        case $x in
            $1)
                local "$x"'+=(1)' ;;&
                # <- keyword.declaration.variable.shell
                #                 ^^^ punctuation.terminator.case.clause.shell
            $2)
                local "$x"'+=(2)' ;&
                # <- keyword.declaration.variable.shell
                #                 ^^ punctuation.terminator.case.clause.shell
            $3)
                local "$x"'+=(3)' ;;
                # <- keyword.declaration.variable.shell
                #                 ^^ punctuation.terminator.case.clause.shell
            $1|$2)
                local "$x"'+=(4)'
                # <- keyword.declaration.variable.shell
        esac
        # <- meta.function.shell meta.compound.shell meta.conditional.case.shell
        # <- keyword.control.conditional.end.shell

        IFS=, local -a "$x"'=("${x}: ${'"$x"'[*]}")'
        # ^ variable.other.readwrite.shell
        #  ^ keyword.operator.assignment.shell
        #   ^ meta.string.shell string.unquoted.shell
        #     ^ keyword.declaration.variable.shell
    done
    # <- meta.function.shell meta.compound.shell
    # <- keyword.control.loop.end.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell


####################################################################
# readonly builtin                                                 #
####################################################################

readonly foo        # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^ meta.declaration.variable.shell
#       ^^^^ meta.declaration.variable.arguments.shell
#           ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^^ variable.other.readwrite
#           ^ - variable

readonly -f foo     # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^ meta.declaration.variable.shell
#       ^^^^^^^ meta.declaration.variable.arguments.shell
#              ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ - variable
#           ^^^ meta.variable.shell variable.function.shell
#              ^ - variable

foo=`readonly x=5`
# <- variable.other.readwrite
#   ^ meta.interpolation.command.shell punctuation.section.interpolation.begin.shell
#    ^^^^^^^^ meta.interpolation.command.shell keyword.declaration.variable.shell
#             ^ meta.interpolation.command.shell variable.other.readwrite
#              ^ meta.interpolation.command.shell keyword.operator.assignment
#               ^ meta.string.shell meta.interpolation.command.shell meta.declaration.variable.arguments.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ meta.interpolation.command.shell punctuation.section.interpolation.end.shell


####################################################################
# typeset builtin                                                  #
####################################################################

typeset foo         # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^ meta.declaration.variable.shell
#      ^^^^ meta.declaration.variable.arguments.shell
#          ^ - meta.declaration.variable
#^^^^^^ keyword.declaration.variable.shell
#      ^ - storage - variable
#       ^^^ variable.other.readwrite
#          ^ - variable
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

typeset -f _init_completion > /dev/null && complete -F _upto upto
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^ meta.declaration.variable.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.arguments.shell
#                                      ^^^^ - meta.declaration - meta.function-call
#                                          ^^^^^^^^ meta.function-call.identifier.shell
#                                                  ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                                ^ - meta.function-call
#^^^^^^ keyword.declaration.variable.shell
#       ^^ variable.parameter.option.shell
#          ^^^^^^^^^^^^^^^^ meta.variable.shell variable.function.shell
#                           ^ keyword.operator.assignment.redirection.shell
#                                       ^^ keyword.operator.logical.shell
#                                          ^^^^^^^^ variable.function.shell
#                                                   ^^ variable.parameter.option.shell


####################################################################
# test builtin                                                     #
####################################################################

test
# <- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^ - meta.function-call
test;
#^^^ support.function.test.shell
test&
#^^^ support.function.test.shell
test|
#^^^ support.function.test.shell
test>/dev/null
#^^^ support.function.test.shell
test -
#^^^ support.function.test.shell
test()
#^^^ support.function.test.shell
test[]
#^^^^^ - support.function
test{}
#^^^^^ - support.function
test-
#^^^^ - support.function
-test
#^^^^ - support.function
test+
#^^^^ - support.function
test$
#^^^^ - support.function
test$var
#^^^^^^^ - support.function
test=
#^^^^ - support.function
test-=
#^^^^^ - support.function
test+=
#^^^^^ - support.function

test var != 0
#<- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^^^^^^^^ meta.function-call.arguments.shell - meta.pattern
#           ^ meta.function-call.arguments.shell meta.pattern.regexp.shell
#            ^ - meta.function-call
#        ^^ keyword.operator.comparison.shell
#           ^ - constant.numeric

test var == true
#<- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.pattern
#        ^^ keyword.operator.comparison.shell
#           ^^^^ constant.language.boolean.shell

test str == "str"
#<- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#        ^^ keyword.operator.comparison.shell
#           ^^^^^ string.quoted.double.shell

test var[0] != var[^0-9]*$
#<- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#       ^^^ meta.item-access.shell
#           ^^ keyword.operator.comparison.shell
#              ^^^^^^^^^^^ meta.pattern.regexp.shell

test expr -a expr -o expr -- | cmd |& cmd
# <- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                           ^^^ - meta.function-call
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                         ^^ - keyword
#                            ^ keyword.operator.assignment.pipe.shell
#                              ^^^ meta.function-call.identifier.shell variable.function.shell
#                                  ^^ keyword.operator.assignment.pipe.shell

test ! ($line =~ ^[0-9]+$)
# <- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell - meta.function-call.arguments
#   ^^^ meta.function-call.arguments.shell - meta.function-call.identifier - meta.group
#      ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.shell
#                         ^ - meta.function-call - meta.group
#^^^ support.function.test.shell
#    ^ keyword.operator.logical.shell
#      ^ punctuation.section.group.begin.shell
#       ^^^^^ variable.other.readwrite.shell
#             ^^ keyword.operator.binary.shell
#                ^^^^^^^^ meta.pattern.regexp.shell

test ! ($line =~ ^[0-9]+$) >> /file
# <- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell - meta.function-call.arguments
#   ^^^ meta.function-call.arguments.shell - meta.function-call.identifier - meta.group
#      ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.shell
#                         ^^^^^^^^^ meta.function-call.arguments.shell - meta.group
#                                  ^ - meta.function-call - meta.group
#^^^ support.function.test.shell
#    ^ keyword.operator.logical.shell
#      ^ punctuation.section.group.begin.shell
#       ^^^^^ variable.other.readwrite.shell
#             ^^ keyword.operator.binary.shell
#                ^^^^^^^^ meta.pattern.regexp.shell
#                        ^ punctuation.section.group.end.shell
#                          ^^ keyword.operator.assignment.redirection.shell

if test expr -a expr ; then echo "success"; fi
# ^ - meta.function-call
#  ^^^^ meta.function-call.identifier.shell support.function.test.shell
#      ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                   ^^^^^^^^ - meta.function-call
#            ^^ meta.parameter.option.shell variable.parameter.option.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^^^ keyword.control.conditional.then.shell
#                           ^^^^ support.function.echo.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^^ keyword.control.conditional.end.shell

if test "$VAR" != ";";then;fi
# ^ - meta.function-call
#  ^^^^ meta.function-call.identifier.shell support.function.test.shell
#      ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#       ^^^^^^ meta.string.shell
#              ^^ keyword.operator.comparison.shell
#                 ^^^ meta.string.shell string.quoted.double.shell
#                    ^^^^^^^^ - meta.function-call
#                    ^ punctuation.terminator.statement.shell
#                     ^^^^ keyword.control.conditional.then.shell
#                         ^ punctuation.terminator.statement.shell
#                          ^^ keyword.control.conditional.end.shell

let test -z $2 && { }
#^^ meta.function-call.identifier.shell support.function.let.shell
#  ^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#   ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#       ^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#             ^^^^ - meta.function-call - meta.compound
#                 ^^^ meta.compound.shell - meta.function-call
#   ^^^^ support.function.test.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#              ^^ keyword.operator.logical.shell
#                 ^ punctuation.section.compound.begin.shell
#                   ^ punctuation.section.compound.end.shell

let $var == test -z $5 && cmd
#^^ meta.function-call.identifier.shell support.function.let.shell
#  ^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#           ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#               ^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#                     ^^^^ - meta.function-call
#                         ^^^ meta.function-call.identifier.shell
#   ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^^ keyword.operator.comparison.shell
#           ^^^^ support.function.test.shell
#                ^^ meta.parameter.option.shell variable.parameter.option.shell
#                   ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                      ^^ keyword.operator.logical.shell
#                         ^^^ variable.function.shell

let 'test -z $2 && { }'
#^^ meta.function-call.identifier.shell support.function.let.shell
#  ^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#    ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#        ^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#              ^^^^^^^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#                  ^^^ - meta.compound
#                      ^ - meta.function-call
#   ^ string.quoted.single.shell punctuation.definition.string.begin.shell
#    ^^^^ support.function.test.shell
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#            ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#               ^^ keyword.operator.logical.shell
#                     ^ string.quoted.single.shell punctuation.definition.string.end.shell

let '$var == test -z \'$5\' && cmd'
#^^ meta.function-call.identifier.shell support.function.let.shell
#  ^^^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell
#            ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#                ^^^^^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#                          ^^^^^^^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#   ^ string.quoted.single.shell punctuation.definition.string.begin.shell
#    ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#         ^^ keyword.operator.comparison.shell
#            ^^^^ support.function.test.shell
#                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                    ^^ constant.character.escape.shell
#                      ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                        ^^ constant.character.escape.shell
#                           ^^ keyword.operator.logical.shell
#                              ^^^ - variable.function
#                                 ^ string.quoted.single.shell punctuation.definition.string.end.shell

let "$var != test -z '$5' && cmd"
#^^ meta.function-call.identifier.shell support.function.let.shell
#  ^^^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell
#            ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#                ^^^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#                        ^^^^^^^^ meta.function-call.arguments.shell - meta.function-call mete.function-call
#   ^ string.quoted.double.shell punctuation.definition.string.begin.shell
#    ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#         ^^ keyword.operator.comparison.shell
#            ^^^^ support.function.test.shell
#                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                    ^^^^ string.quoted.single.shell
#                         ^^ keyword.operator.logical.shell
#                            ^^^ - variable.function
#                               ^ string.quoted.double.shell punctuation.definition.string.end.shell


####################################################################
# unalias builtin                                                  #
####################################################################

unalias
unalias -a -b
# <- meta.function-call.identifier.shell support.function.unalias.shell
#^^^^^^ meta.function-call.identifier.shell support.function.unalias.shell
#      ^^^^^^ meta.function-call.arguments.shell
#            ^ - meta.function
#       ^^ variable.parameter.option.shell
#          ^^ invalid.illegal.parameter.shell

unalias foo
# <- meta.function-call.identifier.shell support.function.unalias.shell
#^^^^^^ meta.function-call.identifier.shell support.function.unalias.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function
#      ^ - meta.variable - variable
#       ^^^ entity.name.function.shell
#          ^ - meta.variable - variable

unalias foo # comment
# <- meta.function-call.identifier.shell support.function.unalias.shell
#^^^^^^ meta.function-call.identifier.shell support.function.unalias.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^^^^^^^^^^ - meta.function
#      ^ - meta.variable - variable
#       ^^^ entity.name.function.shell
#          ^ - meta.variable - variable
#           ^^^^^^^^^^ comment.line.number-sign.shell

unalias foo b"a"r b'a'z 7za
# <- meta.function-call.identifier.shell support.function.unalias.shell
#^^^^^^ meta.function-call.identifier.shell support.function.unalias.shell
#      ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                          ^ - meta.function
#      ^ - meta.variable - variable
#       ^^^ entity.name.function.shell
#          ^ - meta.variable - variable
#           ^^^^^ entity.name.function.shell
#                ^ - meta.variable - variable
#                 ^^^^^ entity.name.function.shell
#                      ^ - meta.variable - variable
#                       ^^^ entity.name.function.shell
#                          ^ - meta.variable - variable


####################################################################
# unset builtin                                                    #
####################################################################

unset
unset foo b'a'r ba${z}  # 'foo' and 'bar' are variable names
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                     ^ - meta.function-call
#         ^ meta.variable.shell - meta.string
#          ^^^ meta.variable.shell meta.string.shell
#             ^ meta.variable.shell - meta.string
#^^^^ support.function.unset.shell
#    ^ - meta.variable - support - variable
#     ^^^ meta.variable.shell variable.other.readwrite.shell
#        ^ - meta.variable - variable
#         ^^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.string.begin.shell
#            ^ punctuation.definition.string.end.shell
#              ^ - meta.variable - variable
#               ^^ meta.variable.shell - meta.interpolation
#                 ^^^^ meta.variable.shell meta.interpolation.parameter.shell
#                     ^ - meta.variable - variable
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

unset -n
unset -nfv foo
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^ meta.function-call.arguments.shell
#             ^ - meta.function-call
#^^^^ support.function.unset.shell
#     ^^^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^ - variable
#          ^^^ variable.function.shell
#             ^ - variable

unset -f -n -v foo b'a'r; unset -vn foo 2>& /dev/null
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                       ^^ - meta.function-call
#                         ^^^^^ meta.function-call.identifier.shell
#                              ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                    ^ - meta.function-call
#                  ^ - meta.string
#                   ^^^ meta.string.shell
#                      ^ - meta.string
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^ - variable
#              ^^^ variable.function.shell
#                 ^ - variable
#                  ^^^^^ variable.function.shell
#                       ^ punctuation.terminator.statement.shell
#                         ^^^^^ support.function.unset.shell
#                              ^ - support - variable
#                               ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                  ^ - variable
#                                   ^^^ meta.variable.shell variable.other.readwrite.shell
#                                      ^ - variable
#                                       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                        ^^ keyword.operator.assignment.redirection.shell

unset -f -x +v -- foo bar; unset -vn -- foo
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                        ^^ - meta.function-call
#                          ^^^^^ meta.function-call.identifier.shell
#                               ^^^^^^^^^^^ meta.function-call.arguments.shell
#                                          ^ - meta.function-call
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ invalid.illegal.parameter.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^^^^ - variable
#              ^^ keyword.operator.end-of-options.shell
#                 ^^^ variable.function.shell
#                    ^ - variable
#                     ^^^ variable.function.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^^^^ support.function.unset.shell
#                               ^ - support - variable
#                                ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                   ^^^^ - variable
#                                    ^^ keyword.operator.end-of-options.shell
#                                       ^^^ meta.variable.shell variable.other.readwrite.shell
#                                          ^ - variable

unset-
# <- - support.function
unset+
# <- - support.function
unset()
# <- support.function.unset.shell
unset[]
# <- - support.function
unset{}
# <- - support.function
unset=
# <- - support.function
unset+=
# <- - support.function
unset-=
# <- - support.function


####################################################################
# Linux builtins                                                   #
####################################################################

sudo rm -rf
# <- meta.function-call.identifier.shell support.function.sudo.shell
#^^^ meta.function-call.identifier.shell support.function.sudo.shell
#    ^^ meta.function-call.identifier.shell variable.function.shell
#      ^^^^ meta.function-call.arguments.shell
#       ^^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ punctuation.definition.parameter.shell

sudo -b -g network --host=$foo rm -rf
# <- meta.function-call.identifier.shell support.function.sudo.shell
#^^^ meta.function-call.identifier.shell support.function.sudo.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ meta.function-call.identifier.shell
#                                ^^^^ meta.function-call.arguments.shell
#                                    ^ - meta.function-call
#    ^^ meta.parameter.option.shell variable.parameter.option.shell
#    ^ punctuation.definition.parameter.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ punctuation.definition.parameter.shell
#          ^^^^^^^ meta.string.shell string.unquoted.shell
#                  ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                  ^^ punctuation.definition.parameter.shell
#                        ^ keyword.operator.assignment.shell
#                         ^^^^ meta.string.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                              ^^ variable.function.shell
#                                 ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                 ^ punctuation.definition.parameter.shell

sudo --reset-timestamp -n -f -- rm -rf
# <- meta.function-call.identifier.shell support.function.sudo.shell
#^^^ meta.function-call.identifier.shell support.function.sudo.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^ - meta.function-call
#                               ^^ meta.function-call.identifier.shell
#                                 ^^^^ meta.function-call.arguments.shell
#                                     ^ - meta.function-call
#    ^^^^^^^^^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                      ^^ meta.parameter.option.shell variable.parameter.option.shell
#                         ^^ invalid.illegal.parameter.shell
#                            ^^ keyword.operator.end-of-options.shell
#                               ^^ variable.function.shell
#                                  ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                  ^ punctuation.definition.parameter.shell


####################################################################
# Variable assignments                                             #
####################################################################

x= # some comment
#^ keyword.operator.assignment.shell
# ^ - string.unquoted
#  ^^^^^^^^^^^^^^^ comment.line.number-sign.shell
x=a
# <- variable.other.readwrite
#^ keyword.operator.assignment.shell
# ^ meta.string.shell string.unquoted.shell
x=a # some comment
#^ keyword.operator.assignment.shell
#  ^ - string.unquoted
x=a#not-a-comment
#^ keyword.operator.assignment.shell
#  ^ meta.string string.unquoted - comment
foo=bar baz=qux
#   ^^^ meta.string.shell string.unquoted.shell
#           ^^^ meta.string.shell string.unquoted.shell
foo=bar\
qux
#<- meta.string.shell string.unquoted.shell
#^^ meta.string.shell string.unquoted.shell
foo=bar"baz"qux
#<- variable.other.readwrite.shell
#^^ variable.other.readwrite.shell
#  ^ keyword.operator.assignment.shell
#   ^^^^^^^^^^^ meta.string.shell - string string
#   ^^^ string.unquoted.shell
#      ^^^^^ string.quoted.double.shell
#           ^^^ string.unquoted.shell
foo='bar'
#<- variable.other.readwrite.shell
#^^ variable.other.readwrite.shell
#  ^ keyword.operator.assignment.shell
#   ^^^^^ meta.string.shell string.quoted.single.shell
x=0.19.8.1
# <- variable.other.readwrite.shell
#^ keyword.operator.assignment.shell
# ^^^^^^^^ string.unquoted.shell
x=10
# <- variable.other.readwrite.shell
#^ keyword.operator.assignment.shell
# ^^ meta.number.integer.decimal.shell constant.numeric.value.shell

# Spaces following an assignment token means an empty string value!
x= pwd
# <- variable.other.readwrite
#^ keyword.operator.assignment
#  ^^^ meta.function-call support.function
x= & pwd
#^ keyword.operator.assignment.shell
# ^ - string.unquoted
#  ^ keyword.operator.assignment.pipe.shell
#    ^^^ support.function
x=a pwd
# <- variable.other.readwrite
#^ keyword.operator.assignment.shell
#  ^ - string.unquoted
#   ^^^ meta.function-call support.function
x="a b" pwd
#^ keyword.operator.assignment.shell
# ^ string.quoted.double punctuation.definition.string.begin
#  ^^^ string.quoted.double
#     ^ string.quoted.double punctuation.definition.string.end
#      ^ - string.unquoted
#       ^^^ meta.function-call support.function
x=a y=b pwd
#^ keyword.operator.assignment.shell
# ^ meta.string.shell string.unquoted.shell
#  ^ - string.unquoted
#    ^ keyword.operator.assignment.shell
#     ^ meta.string.shell string.unquoted.shell
#      ^ - string.unquoted
#       ^^^ meta.function-call support.function
x=${foo} y=${baz}"asdf" pwd
#^ keyword.operator.assignment.shell
# ^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#       ^^^ - meta.string - mete.interpolation - string
#          ^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#                ^^^^^^ meta.string.shell string.quoted.double.shell - meta.interpolation
#                      ^^^^ - meta.string - mete.interpolation - string
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite
#      ^ punctuation.section.interpolation.end.shell
#         ^ keyword.operator.assignment.shell
#          ^ punctuation.definition.variable.shell
#           ^ punctuation.section.interpolation.begin.shell
#            ^^^ variable.other.readwrite
#               ^ punctuation.section.interpolation.end.shell
#                ^ punctuation.definition.string.begin
#                     ^ punctuation.definition.string.end
#                       ^^^ meta.function-call support.function
x="$(( foo++ ))"
#^ keyword.operator.assignment.shell
#  ^ punctuation.definition.variable.shell
#   ^^ punctuation.section.interpolation.begin.shell
#         ^^ keyword
#            ^^ punctuation.section.interpolation.end.shell

B$(cat)OWL=$(($(cat food.txt | wc -l) + 5))
# <- meta.variable.shell variable.other.readwrite.shell - meta.interpolation
#^^^^^^ meta.variable.shell meta.interpolation.command.shell
#      ^^^ meta.variable.shell variable.other.readwrite.shell
#         ^ - meta.interpolation
#          ^^^ meta.string.shell meta.interpolation.arithmetic.shell - meta.interpolation meta.interpolation
#             ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.arithmetic.shell meta.interpolation.command.shell
#                                    ^^^^^^ meta.string.shell meta.interpolation.arithmetic.shell - meta.interpolation meta.interpolation
#                                          ^ - meta.interpolation
#         ^ keyword.operator.assignment
#          ^^^^^ - punctuation punctuation
#          ^ punctuation.definition.variable.shell
#           ^^ punctuation.section.interpolation.begin.shell
#             ^ punctuation.definition.variable.shell
#              ^ punctuation.section.interpolation.begin.shell
#               ^^^ variable.function
#                   ^^^^^^^^ - variable.function
#                           ^ - meta.function-call
#                            ^ keyword.operator
#                             ^ - meta.function-call
#                              ^^ meta.function-call.identifier.shell variable.function.shell
#                                   ^ punctuation.section.interpolation.end.shell
#                                     ^ keyword.operator
#                                       ^ constant.numeric
#                                        ^^ punctuation.section.interpolation.end.shell

# These are all legal identifiers for variables.
alias=hello
# <- - storage - keyword
#    ^ keyword.operator.assignment.shell
typeset=hello
# <- - storage - keyword
#      ^ keyword.operator.assignment.shell
declare=hello
# <- - storage - keyword
#      ^ keyword.operator.assignment.shell
local=hello
# <- - storage - keyword
#    ^ keyword.operator.assignment.shell
export=hello
# <- - storage - keyword
#     ^ keyword.operator.assignment.shell
readonly=hello
# <- - storage - keyword
#       ^ keyword.operator.assignment.shell
for=hello
# <- - keyword.control
#  ^ keyword.operator.assignment.shell
if=hello
# <- - keyword.control
# ^ keyword.operator.assignment.shell
while=hello
# <- - keyword.control
#    ^ keyword.operator.assignment.shell
until=hello
# <- - keyword.control
#    ^ keyword.operator.assignment.shell
do=hello
# <- - keyword.control
# ^ keyword.operator.assignment.shell
done=hello
# <- - keyword.control
#   ^ keyword.operator.assignment.shell
true=false
# <- variable.other.readwrite.shell - constant
#^^^ variable.other.readwrite.shell - constant
#   ^ keyword.operator.assignment.shell
#    ^^^^^ constant.language.boolean.shell
false=true
# <- variable.other.readwrite.shell - constant
#^^^^ variable.other.readwrite.shell - constant
#    ^ keyword.operator.assignment.shell
#     ^^^^ constant.language.boolean.shell
charclass=\}ower
# <- meta.variable.shell variable.other.readwrite.shell
#^^^^^^^^ meta.variable.shell variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#         ^^^^^^ meta.string.shell
#         ^^ constant.character.escape.shell

# `-` is not a valid variable identifier char
my-var=20
# <- variable.other.readwrite.shell
#^ variable.other.readwrite.shell
# ^^^^^^^ - variable.other

5var=20
# <- - variable.other
#^^^^^^ - variable.other

(foo=bar)
# <- meta.compound.shell punctuation.section.compound.begin.shell
#^^^^^^^^ meta.compound.shell
#^^^ meta.variable.shell variable.other.readwrite.shell
#   ^ keyword.operator.assignment.shell
#    ^^^ meta.string.shell string.unquoted.shell
#       ^ punctuation.section.compound.end.shell - string-unquoted

{ foo=bar }
# <- meta.compound.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ meta.compound.shell
# ^^^ meta.variable.shell variable.other.readwrite.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.shell string.unquoted.shell
#         ^ punctuation.section.compound.end.shell - string-unquoted

foo+=" baz"
#<- meta.variable.shell variable.other.readwrite.shell
#^^ meta.variable.shell variable.other.readwrite.shell
#  ^^ keyword.operator.assignment.shell
#    ^^^^^^ meta.string.shell string.quoted.double.shell

foo-=" baz"
#<- meta.variable.shell variable.other.readwrite.shell
#^^ meta.variable.shell variable.other.readwrite.shell
#  ^^ keyword.operator.assignment.shell
#    ^^^^^^ meta.string.shell string.quoted.double.shell

## Arrays ##

array=()  # an empty array
#    ^ keyword.operator.assignment
#     ^ punctuation.section.sequence.begin
#      ^ punctuation.section.sequence.end

array=(one two three four -5 (foo bar baz) (5 6 7))
#<- meta.variable.shell variable.other.readwrite.shell
#^^^^ meta.variable.shell - meta.sequence
#    ^ - meta.variable - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.shell - meta.sequence meta.sequence
#                            ^^^^^^^^^^^^^ meta.sequence.shell meta.sequence.shell
#                                         ^ meta.sequence.shell - meta.sequence meta.sequence
#                                          ^^^^^^^ meta.sequence.shell meta.sequence.shell
#                                                 ^ meta.sequence.shell - meta.sequence meta.sequence
#                                                  ^ - meta
#^^^^ variable.other.readwrite.shell
#    ^ keyword.operator.assignment.shell
#     ^ punctuation.section.sequence.begin.shell
#      ^^^ string.unquoted.shell
#          ^^^ string.unquoted.shell
#              ^^^^^ string.unquoted.shell
#                    ^^^^ string.unquoted.shell
#                         ^ keyword.operator.arithmetic.shell
#                          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                            ^ punctuation.section.sequence.begin.shell
#                             ^^^ meta.string.shell string.unquoted.shell
#                                 ^^^ string.unquoted.shell
#                                     ^^^ string.unquoted.shell
#                                        ^ punctuation.section.sequence.end.shell
#                                          ^ punctuation.section.sequence.begin.shell
#                                           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                             ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                               ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                ^^ punctuation.section.sequence.end.shell

array=($one "two" ${three} 'four' $5)
#<- meta.variable.shell variable.other.readwrite.shell
#^^^^ meta.variable.shell
#^^^^^ - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.shell
#                                    ^ - meta.sequence
# <- variable.other.readwrite.shell
#    ^ keyword.operator.assignment.shell
#     ^ punctuation.section.sequence.begin.shell
#      ^ punctuation.definition.variable.shell
#       ^^^ variable.other.readwrite.shell
#           ^ string.quoted.double punctuation.definition.string.begin.shell
#            ^^^ string.quoted.double.shell
#               ^ string.quoted.double punctuation.definition.string.end.shell
#                 ^ punctuation.definition.variable.shell
#                  ^ punctuation.section.interpolation.begin.shell
#                   ^^^^^ variable.other.readwrite.shell
#                        ^ punctuation.section.interpolation.end.shell
#                          ^ string.quoted.single punctuation.definition.string.begin.shell
#                           ^^^^ string.quoted.single.shell
#                               ^ string.quoted.single punctuation.definition.string.end.shell
#                                 ^ punctuation.definition.variable.shell
#                                  ^ variable.other.readwrite.shell
#                                   ^ punctuation.section.sequence.end.shell

array=([one]== ["two"]='what' [4+5]=qux [five]=0 [six]=0s)
#^^^^^ - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.shell
#                                                         ^ - meta.sequence
#    ^ keyword.operator.assignment.shell
#     ^ punctuation.section.sequence.begin.shell
#      ^ punctuation.section.brackets.begin.shell
#          ^ punctuation.section.brackets.end.shell
#           ^ keyword.operator.assignment.shell
#            ^ string.unquoted.shell - keyword
#              ^ punctuation.section.brackets.begin.shell
#               ^^^^^ string.quoted.double.shell
#                    ^ punctuation.section.brackets.end.shell
#                     ^ keyword.operator.assignment.shell
#                      ^^^^^^ string.quoted.single.shell
#                             ^ punctuation.section.brackets.begin.shell
#                              ^ - constant
#                               ^ - keyword
#                                ^ - constant
#                                 ^ punctuation.section.brackets.end.shell
#                                  ^ keyword.operator.assignment.shell
#                                   ^^^ string.unquoted.shell
#                                       ^ punctuation.section.brackets.begin.shell
#                                            ^ punctuation.section.brackets.end.shell
#                                             ^ keyword.operator.assignment.shell
#                                              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                ^ punctuation.section.brackets.begin.shell
#                                                    ^ punctuation.section.brackets.end.shell
#                                                     ^ keyword.operator.assignment.shell
#                                                      ^^ string.unquoted.shell
#                                                        ^ punctuation.section.sequence.end.shell

declare -a array
array[500]=value
#^^^^ meta.variable.shell variable.other.readwrite.shell
#    ^^^^^ meta.variable.shell meta.item-access.shell - variable
#    ^ punctuation.section.item-access.begin.shell
#     ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.assignment
#          ^^^^^ meta.string.shell string.unquoted.shell
echo ${array[@]}
#    ^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^^^^ variable.other.readwrite.shell
#           ^^^ meta.item-access.shell - variable.other
#           ^ punctuation.section.item-access.begin.shell
#            ^ variable.language.array.shell
#             ^ punctuation.section.item-access.end.shell

array["foo"]=bar
#^^^^ meta.variable.shell variable.other.readwrite.shell
#    ^^^^^^^ meta.variable.shell meta.item-access.shell - variable
#    ^ punctuation.section.item-access.begin.shell
#     ^^^^^ string.quoted.double.shell
#          ^ punctuation.section.item-access.end.shell
#           ^ keyword.operator.assignment.shell
#            ^^^ meta.string.shell string.unquoted.shell
array[foo]=bar
#^^^^ meta.variable.shell variable.other.readwrite.shell
#    ^^^^^ meta.variable.shell meta.item-access.shell
#    ^ punctuation.section.item-access.begin.shell - variable
#     ^^^ variable.other.readwrite.shell
#        ^ punctuation.section.item-access.end.shell - variable
#         ^ keyword.operator.assignment.shell
#          ^^^ meta.string.shell string.unquoted.shell

foo[${j}+10]="`foo`"
#<- meta.variable.shell variable.other.readwrite.shell
#^^ meta.variable.shell - meta.item-access
#  ^^^^^^^^^ meta.variable.shell meta.item-access.shell
#^^ variable.other.readwrite.shell
#  ^ punctuation.section.item-access.begin.shell
#   ^ punctuation.definition.variable.shell
#    ^ punctuation.section.interpolation.begin.shell
#     ^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ keyword.operator.arithmetic.shell
#        ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.section.item-access.end.shell
#           ^ keyword.operator.assignment.shell

foo=`cd -L`
#   ^ meta.string.shell meta.interpolation.command.shell
#    ^^ meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#      ^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#         ^ meta.string.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^ support.function.cd.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^ punctuation.section.interpolation.end.shell

foo=`echo -e`
#   ^ meta.string.shell meta.interpolation.command.shell
#    ^^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#        ^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#           ^ meta.string.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^ support.function.echo.shell
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^ punctuation.section.interpolation.end.shell

foo=`let 5+5`
#   ^ meta.string.shell meta.interpolation.command.shell
#    ^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#       ^^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#           ^ meta.string.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^ support.function.let.shell
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ keyword.operator.arithmetic.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ punctuation.section.interpolation.end.shell

foo=`some-command --long1`
#   ^ meta.string.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#                ^^^^^^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#                        ^ meta.string.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^^^^^^^^^ variable.function.shell
#                 ^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                        ^ punctuation.section.interpolation.end.shell

foo=`some-command -x`
#   ^ meta.string.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#                ^^^ meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#                   ^ meta.string.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^^^^^^^^^ variable.function.shell
#                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                   ^ punctuation.section.interpolation.end.shell

foo=`(uname -r --) 2>/dev/null`
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^^ meta.compound.shell
#   ^ punctuation.section.interpolation.begin.shell
#     ^^^^^ variable.function.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#              ^^ keyword.operator.end-of-options.shell
#                ^ punctuation.section.compound.end.shell
#                  ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ keyword.operator.assignment.redirection.shell
#                             ^ punctuation.section.interpolation.end.shell - punctuation.section.interpolation.begin

foo=`(uname -r) 2>/dev/null` || foo=unknown
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell
#    ^^^^^^^^^^ meta.compound.shell
#   ^ punctuation.section.interpolation.begin.shell
#     ^^^^^ variable.function.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^ punctuation.section.compound.end.shell
#               ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ keyword.operator.assignment.redirection.shell
#                          ^ punctuation.section.interpolation.end.shell - punctuation.section.interpolation.begin
#                            ^^ keyword.operator.logical.shell
#                               ^^^ meta.variable.shell variable.other.readwrite.shell
#                                  ^ keyword.operator.assignment.shell
#                                   ^^^^^^^ meta.string.shell string.unquoted.shell

commits=($(git rev-list --reverse --$abbrev-commit "$latest".. -- "$prefix"))
#       ^ meta.sequence.shell - meta.interpolation
#        ^^ meta.sequence.shell meta.string.shell meta.interpolation.command.shell - meta.function
#          ^^^ meta.sequence.shell meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell - meta.function meta.function
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.shell meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell  - meta.function meta.function
#                                 ^^ meta.parameter.option.shell - meta.parameter.option.shell meta.interpolation
#                                   ^^^^^^^ meta.parameter.option.shell meta.interpolation.parameter.shell
#                                          ^^^^^^^ meta.parameter.option.shell - meta.parameter.option.shell meta.interpolation
#                                                  ^^^^^^^^^ meta.string.shell
#                                                                 ^^^^^^^^^ meta.string.shell
#                                                                          ^ meta.sequence.shell meta.string.shell meta.interpolation.command.shell - meta.function
#                                                                           ^ meta.sequence.shell - meta.interpolation
#       ^ punctuation.section.sequence.begin.shell
#        ^ punctuation.definition.variable.shell
#         ^ punctuation.section.interpolation.begin.shell
#          ^^^ variable.function.shell
#                       ^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                 ^^ punctuation.definition.parameter.shell
#                                   ^^^^^^^ variable.other.readwrite.shell
#                                          ^ - punctuation
#                                                   ^^^^^^^ variable.other.readwrite.shell
#                                                              ^^ keyword.operator.end-of-options.shell
#                                                                  ^^^^^^^ variable.other.readwrite.shell
#                                                                          ^ punctuation.section.interpolation.end.shell
#                                                                           ^ punctuation.section.sequence.end.shell

# <- - variable.other.readwrite


####################################################################
# Variables                                                        #
####################################################################

: $__
# ^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#    ^ - meta.interpolation - variable

: $var_0
# ^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#       ^ - meta.interpolation - variable

: $_var0
# ^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#       ^ - meta.interpolation - variable

: $_0var_
# ^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#        ^ - meta.interpolation - variable

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
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the positional parameters, starting from one. When the expansion
# occurs within double quotes, each parameter expands to a separate word. That
# is, "$@" is equivalent to "$1" "$2" …. If the double-quoted expansion occurs
# within a word, the expansion of the first parameter is joined with the
# beginning part of the original word, and the expansion of the last parameter
# is joined with the last part of the original word. When there are no
# positional parameters, "$@" and $@ expand to nothing (i.e., they are removed).
: $@
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the number of positional parameters in decimal.
: $#
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the exit status of the most recently executed foreground pipeline.
: $?
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the current option flags as specified upon invocation, by the set
# builtin command, or those set by the shell itself (such as the -i option).
: $-
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the process ID of the shell. In a () subshell, it expands to the
# process ID of the invoking shell, not the subshell.
: $$
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the process ID of the job most recently placed into the background,
# whether executed as an asynchronous command or using the bg builtin
: $!
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

# Expands to the name of the shell or shell script. This is set at shell
# initialization. If Bash is invoked with a file of commands (see Shell
# Scripts), $0 is set to the name of that file. If Bash is started with the -c
# option (see Invoking Bash), then $0 is set to the first argument after the
# string to be executed, if one is present. Otherwise, it is set to the filename
# used to invoke Bash, as given by argument zero.
: $0
# ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell

# At shell startup, set to the absolute pathname used to invoke the shell or
# shell script being executed as passed in the environment or argument list.
# Subsequently, expands to the last argument to the previous command, after
# expansion. Also set to the full pathname used to invoke each command executed
# and placed in the environment exported to that command. When checking mail,
# this parameter holds the name of the mail file.
: $_
# ^^ meta.interpolation.parameter.shell variable.language.shell
# ^ punctuation.definition.variable.shell

fg %
#  ^ meta.interpolation.job.shell variable.other.readwrite.shell punctuation.definition.variable.shell
fg %%
#  ^^ meta.interpolation.job.shell variable.language.job.shell
#  ^ punctuation.definition.variable.shell
fg %+
#  ^^ meta.interpolation.job.shell variable.language.job.shell
#  ^ punctuation.definition.variable.shell
fg %-
#  ^^ meta.interpolation.job.shell variable.language.job.shell
#  ^ punctuation.definition.variable.shell
fg %1 %2 %3
#  ^^ meta.interpolation.job.shell variable.language.job.shell
#  ^ punctuation.definition.variable.shell
#     ^^ meta.interpolation.job.shell variable.language.job.shell
#     ^ punctuation.definition.variable.shell
#        ^^ meta.interpolation.job.shell variable.language.job.shell
#        ^ punctuation.definition.variable.shell
fg %ce
#  ^^^ meta.interpolation.job.shell variable.other.readwrite.shell
#  ^ punctuation.definition.variable.shell
fg %?ce
#  ^^^^ meta.interpolation.job.shell variable.other.readwrite.shell
#  ^ punctuation.definition.variable.shell
#   ^ keyword.operator.match.shell

%1
# <- meta.interpolation.job.shell variable.language.job.shell punctuation.definition.variable.shell
#^ meta.interpolation.job.shell variable.language.job.shell


####################################################################
# Strings and interpolation in parameter expansion                 #
####################################################################

${foo:=bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
# <- - variable.other.readwrite
# ^^^ variable.other.readwrite.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^^ - string.unquoted
#         ^ punctuation.section.interpolation.end.shell

: ${foo:-bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo:0:8}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substring.begin.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell - variable
#        ^ keyword.operator.substring.end.shell
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell - variable
#          ^ punctuation.section.interpolation.end.shell

: ${@:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ - variable.language
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo:='bar'}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.string.begin.shell
#        ^^^^^ meta.string.shell string.quoted.single.shell
#            ^ punctuation.definition.string.end.shell
#             ^ punctuation.section.interpolation.end.shell

: ${foo/#bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo/%bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo//bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell


: ${#}  # is the same as $#
# ^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.shell
#    ^ punctuation.section.interpolation.end.shell
: ${#*}
# ^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.arithmetic.shell
#    ^ variable.language.shell
#     ^ punctuation.section.interpolation.end.shell
: ${#@}
# ^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.arithmetic.shell
#    ^ variable.language.shell
#     ^ punctuation.section.interpolation.end.shell
: ${@/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${*/bar/baz}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${@#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${*#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${@##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${*##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${@%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${*%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${@,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${*,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${@^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${*^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.shell
: ${foo@Q}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell
: ${foo@E}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell
: ${foo@P}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell
: ${foo@A}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell
: ${foo@a}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell
: ${foo@t}
#      ^ - keyword.operator
#       ^ - variable.parameter.switch

: ${foo:=`bar`}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^ meta.interpolation.parameter.shell meta.interpolation.command.shell
#             ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.begin.shell
#            ^^ punctuation.section.interpolation.end.shell

: ${foo:=$( bar )}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.command.shell
#                ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.variable.shell
#         ^ punctuation.section.interpolation.begin.shell
#               ^^ punctuation.section.interpolation.end.shell

: ${foo:=$(( 1 + 1 ))}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.arithmetic.shell
#                    ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.variable.shell
#         ^^ punctuation.section.interpolation.begin.shell
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#              ^ keyword.operator.arithmetic.shell
#                ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                  ^^^ punctuation.section.interpolation.end.shell

: ${foo:=$bar}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#            ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.variable.shell
#         ^^^ variable.other
#            ^ punctuation.section.interpolation.end.shell

: ${foo:="$bar"}
# ^^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#         ^^^^ meta.interpolation.parameter.shell meta.string.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#             ^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.string.begin.shell
#         ^ punctuation.definition.variable.shell
#         ^^^^ variable.other.readwrite.shell
#             ^ punctuation.definition.string.end.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo//\}/foo}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#        ^^ constant.character.escape.shell
#          ^ keyword.operator.substitution.shell
#              ^ punctuation.section.interpolation.end.shell

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
#   ^ keyword.operator.logical.shell
: ${#foo}
#   ^ keyword.operator.arithmetic.shell
: ${\
!foo}
# <- keyword.operator.logical.shell
: ${\
#foo}
# <- keyword.operator.arithmetic.shell

: ${foo//a\/b/c/d}
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#         ^^ constant.character.escape.shell
#            ^ keyword.operator.substitution.shell
#              ^ - keyword
: ${foo/\
/a\/b/c/d}
# <- variable.parameter.switch.shell
# ^^ constant.character.escape.shell
#    ^ keyword.operator.substitution.shell
#      ^ - keyword


####################################################################
# Braces in parameter expansion                                    #
####################################################################

: ${foo//foo\}foo\/foo/foo}
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^^ constant.character.escape.shell
#                ^^ constant.character.escape.shell
#                     ^ keyword.operator.substitution.shell
#                         ^ punctuation.section.interpolation.end.shell

: ${foo:="${bar} baz"}
# ^^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^^^^^ meta.string.shell
#         ^^^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell - string
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.string.begin.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^^^ variable.other.readwrite.shell
#              ^ punctuation.section.interpolation.end.shell
#               ^^^^^ string.quoted.double.shell
#                   ^ punctuation.definition.string.end.shell
#                    ^ punctuation.section.interpolation.end.shell

# Sublime bug fix: "
#                  ^ comment.line.number-sign

${!varprefix*}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
# ^ keyword.operator.logical.shell
#           ^ variable.language.shell
#            ^ punctuation.section.interpolation.end.shell

${!varprefix@}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
# ^ keyword.operator.logical.shell
#           ^ variable.language.shell
#            ^ punctuation.section.interpolation.end.shell

${var#Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#    ^ keyword.operator.expansion.shell
#            ^ punctuation.section.interpolation.end.shell

${var##Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#    ^^ keyword.operator.expansion.shell
#             ^ punctuation.section.interpolation.end.shell

${var###Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#    ^^ keyword.operator.expansion.shell
#      ^ - keyword.operator
#              ^ punctuation.section.interpolation.end.shell

: ${foo# #} # hello
# ^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

${var%Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#    ^ keyword.operator.expansion.shell
#            ^ punctuation.section.interpolation.end.shell

${var%%Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#    ^^ keyword.operator.expansion.shell
#             ^ punctuation.section.interpolation.end.shell

${var%%%Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#    ^^ keyword.operator.expansion.shell
#      ^ - keyword.operator
#              ^ punctuation.section.interpolation.end.shell

: ${foo% #} # hello
#      ^ keyword.operator.expansion.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

: ${foo#\ \#} # hello
#      ^ keyword.operator.expansion.shell
#       ^^^^ constant.character.escape.shell
#          ^ - comment.line
#           ^ punctuation.section.interpolation.end.shell
#             ^ comment.line punctuation

: ${foo%\ \#} # hello
#      ^ keyword.operator.expansion.shell
#       ^^^^ constant.character.escape.shell
#          ^ - comment.line
#           ^ punctuation.section.interpolation.end.shell
#             ^ comment.line punctuation


####################################################################
# Parameter-expansion operators                                    #
# cf. http://www.tldp.org/LDP/abs/html/parameter-substitution.html #
####################################################################

${foo//%/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//#/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//!/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//:/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//@/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo#} # "#" is not a operator here
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ - keyword.operator
#     ^ punctuation.section.interpolation.end.shell

${foo!} # "!" is not a operator here
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ - keyword.operator
#     ^ punctuation.section.interpolation.end.shell

${var:pos:len}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#             ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substring.begin.shell
#        ^ keyword.operator.substring.end.shell
#            ^ punctuation.section.interpolation.end.shell

${foo//a\/b/c/d}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#               ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch
#       ^^ constant.character.escape
#          ^ keyword.operator.substitution.shell
#            ^ - keyword.operator
#              ^ punctuation.section.interpolation.end.shell

${foo^}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.expansion.shell
#     ^ punctuation.section.interpolation.end.shell

${foo,}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.expansion.shell
#     ^ punctuation.section.interpolation.end.shell

${foo^^}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#       ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#      ^ punctuation.section.interpolation.end.shell

${foo,,}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#       ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#      ^ punctuation.section.interpolation.end.shell

${foo,,,Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#               ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#      ^ - keyword
#              ^ punctuation.section.interpolation.end.shell

${foo,,Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#              ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#             ^ punctuation.section.interpolation.end.shell

${foo-bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.end.shell

${foo:-bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#          ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.assignment.shell
#         ^ punctuation.section.interpolation.end.shell

${foo+bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.end.shell

${foo:+bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#          ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.assignment.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo=bar}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
#           ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.assignment.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo:=bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#            ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#           ^ punctuation.section.interpolation.end.shell

${foo?bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.end.shell

${foo:?bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.definition.variable.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ punctuation.section.interpolation.begin.shell
#          ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.assignment.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo}@
#       ^ - variable.language

: ${foo}#
#       ^ - variable.language

status="${status#"${status%%[![:space:]]*}"}"
#      ^ meta.string.shell string.quoted.double.shell - meta.interpolation
#       ^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell meta.string.shell meta.interpolation.parameter.shell
#                                         ^^ meta.string.shell meta.interpolation.parameter.shell
#                                           ^ meta.string.shell string.quoted.double.shell - meta.interpolation
#                                            ^ - meta - string
#     ^ keyword.operator.assignment.shell
#               ^ keyword.operator.expansion.shell
#                         ^^ keyword.operator.expansion.shell
#                           ^ punctuation.definition.set.begin.regexp.shell
#                            ^ keyword.operator.logical.regexp.shell
#                             ^ punctuation.definition.set.begin.regexp.shell
#                                     ^^ punctuation.definition.set.end.regexp.shell
#                                       ^ keyword.operator.quantifier.regexp.shell
status="${status#${status%%[![:space:]]*}}"
#      ^ meta.string.shell string.quoted.double.shell - meta.interpolation
#       ^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell meta.interpolation.parameter.shell
#                                        ^ meta.string.shell meta.interpolation.parameter.shell
#                                         ^ meta.string.shell string.quoted.double.shell - meta.interpolation
#                                          ^ - meta - string
#     ^ keyword.operator.assignment.shell
#               ^ keyword.operator.expansion.shell
#                        ^^ keyword.operator.expansion.shell
#                          ^ punctuation.definition.set.begin.regexp.shell
#                           ^ keyword.operator.logical.regexp.shell
#                            ^ punctuation.definition.set.begin.regexp.shell
#                                    ^^ punctuation.definition.set.end.regexp.shell
#                                      ^ keyword.operator.quantifier.regexp.shell
CURPOS=${CURPOS#*[}
#                ^ - keyword.control.regexp
echo "${ROW#*[}"
#            ^ - keyword.control.regexp
echo *
#    keyword.operator.quantifier.regexp.shell
echo {a,g*}
#    ^^^^^^ meta.function-call.arguments.shell meta.interpolation.brace.shell
#    ^ punctuation.section.interpolation.begin.shell
#      ^ punctuation.separator.sequence.shell
#        ^ keyword.operator.quantifier.regexp.shell
#         ^ punctuation.section.interpolation.end.shell
echo ca{${x/z/t}" "{legs,f${o//a/o}d,f${o:0:1}t},r" "{tires,wh${o//a/e}ls}}
#      ^ punctuation.section.interpolation.begin.shell
#       ^ punctuation.definition.variable.shell
#        ^ punctuation.section.interpolation.begin.shell
#          ^ keyword.operator.substitution.shell - variable.other.readwrite
#            ^ keyword.operator.substitution.shell
#              ^ punctuation.section.interpolation.end.shell
#                ^ string.quoted.double.shell
#                  ^ punctuation.section.interpolation.begin.shell
#                       ^ punctuation.separator.sequence.shell
#                         ^ punctuation.definition.variable.shell
#                          ^ punctuation.section.interpolation.begin.shell
#                           ^ variable.other.readwrite.shell
#                                 ^ punctuation.section.interpolation.end.shell
#                                   ^ punctuation.separator.sequence.shell
#                                     ^ punctuation.definition.variable.shell
#                                      ^ punctuation.section.interpolation.begin.shell
#                                        ^ keyword.operator.substring.begin.shell - variable.other.readwrite
#                                          ^ keyword.operator.substring.end.shell
#                                            ^ punctuation.section.interpolation.end.shell
#                                              ^ punctuation.section.interpolation.end.shell
#                                               ^ punctuation.separator.sequence.shell
#                                                 ^^^ string.quoted.double.shell
#                                                    ^ punctuation.section.interpolation.begin.shell
#                                                             ^ punctuation.definition.variable.shell
#                                                              ^ punctuation.section.interpolation.begin.shell
#                                                                        ^^ punctuation.section.interpolation.end.shell


####################################################################
# [3.5.8.1] Pattern Matching                                       #
####################################################################

: @([^:]*)
#^^^^^^^^^ meta.function-call.arguments.shell
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.definition.group.begin.regexp.shell
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^ keyword.operator.logical.regexp.shell
#      ^ punctuation.definition.set.end.regexp.shell
#       ^ keyword.operator.quantifier.regexp.shell
#        ^ punctuation.definition.group.end.regexp.shell

: @([.c.] [.c. ] [[.c.]] [^[.c.]] [[^.c.]])
#   ^^^^^ meta.set.regexp.shell
#        ^ - meta.set
#         ^^^^^^ meta.set.regexp.shell
#               ^ - meta.set
#                ^ meta.set.regexp.shell - meta.set meta.set
#                 ^^^^^ meta.set.regexp.shell meta.set.regexp.shell
#                      ^ meta.set.regexp.shell - meta.set meta.set
#                       ^ - meta.set
#                        ^^ meta.set.regexp.shell - meta.set meta.set
#                          ^^^^^ meta.set.regexp.shell meta.set.regexp.shell
#                               ^ meta.set.regexp.shell - meta.set meta.set
#                                ^ - meta.set
#                                 ^ meta.set.regexp.shell - meta.set meta.set
#                                  ^^^^^^ meta.set.regexp.shell meta.set.regexp.shell
#                                        ^ meta.set.regexp.shell - meta.set meta.set
#                                         ^ - meta.set
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^ constant.character.collate.regexp.shell punctuation.definition.collate.begin.regexp.shell
#     ^ constant.character.collate.regexp.shell - punctuation
#      ^ constant.character.collate.regexp.shell punctuation.definition.collate.end.regexp.shell
#       ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.definition.set.begin.regexp.shell
#          ^^^^ - constant.character.collate
#              ^ punctuation.definition.set.end.regexp.shell
#                ^^ punctuation.definition.set.begin.regexp.shell
#                  ^^^ constant.character.collate.regexp.shell
#                     ^^ punctuation.definition.set.end.regexp.shell
#                        ^ punctuation.definition.set.begin.regexp.shell
#                         ^ keyword.operator.logical.regexp.shell
#                          ^ punctuation.definition.set.begin.regexp.shell
#                           ^^^ constant.character.collate.regexp.shell
#                              ^^ punctuation.definition.set.end.regexp.shell
#                                 ^^ punctuation.definition.set.begin.regexp.shell
#                                   ^ keyword.operator.logical.regexp.shell
#                                    ^^^ constant.character.collate.regexp.shell
#                                       ^^ punctuation.definition.set.end.regexp.shell

: @([=c=] [=c=illegal])
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^ constant.character.equivalence-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#     ^ constant.character.equivalence-class.regexp.shell - punctuation
#      ^ constant.character.equivalence-class.regexp.shell punctuation.definition.class.end.regexp.shell
#       ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.definition.set.begin.regexp.shell
#          ^^^^^^^^^^ - constant.character.equivalence-class
#                    ^ punctuation.definition.set.end.regexp.shell

: @([:alnum:] [:alnum] [alnum:] [alnum] [:alnum:other])
#    ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#     ^^^^^ constant.other.posix-class.regexp.shell - punctuation
#          ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#              ^^^^^^ - constant.other.posix-class
#                       ^^^^^^ - constant.other.posix-class
#                                ^^^^^ - constant.other.posix-class
#                                        ^^^^^^^^^^^^ - constant.other.posix-class

: *(g[[:${charclass/\}/l}:]]*)
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#                             ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.definition.group.begin.regexp.shell
#    ^^ punctuation.definition.set.begin.regexp.shell
#       ^ punctuation.definition.variable.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^^^^^^^^^ variable.other.readwrite.shell
#                  ^ keyword.operator.substitution.shell - variable.other.readwrite
#                   ^^ constant.character.escape.shell
#                     ^ keyword.operator.substitution.shell
#                       ^ punctuation.section.interpolation.end.shell
#                         ^^ punctuation.definition.set.end.regexp.shell
#                           ^ keyword.operator.quantifier.regexp.shell
#                            ^ punctuation.definition.group.end.regexp.shell

: ?([[:alpha:]]|[[:digit:]]|[[:unknwn:]])*
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#                                        ^ meta.function-call.arguments.shell - meta.group
#                                         ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.definition.group.begin.regexp.shell
#   ^^ punctuation.definition.set.begin.regexp.shell
#     ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#      ^^^^^ constant.other.posix-class.regexp.shell - punctuation
#           ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#            ^^ punctuation.definition.set.end.regexp.shell
#              ^ keyword.operator.logical.regexp.shell
#               ^^ punctuation.definition.set.begin.regexp.shell
#                 ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#                  ^^^^^ constant.other.posix-class.regexp.shell - punctuation
#                       ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#                        ^^ punctuation.definition.set.end.regexp.shell
#                          ^ keyword.operator.logical.regexp.shell
#                           ^^ punctuation.definition.set.begin.regexp.shell
#                             ^^^^^^^^ - constant.other.posix-class
#                                     ^^ punctuation.definition.set.end.regexp.shell
#                                       ^ punctuation.definition.group.end.regexp.shell
#                                        ^ keyword.operator.quantifier.regexp.shell

: @(foo*)*
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#        ^ meta.function-call.arguments.shell - meta.group
#         ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.definition.group.begin.regexp.shell
#      ^ keyword.operator.quantifier.regexp.shell
#       ^ punctuation.definition.group.end.regexp.shell
#        ^ keyword.operator.quantifier.regexp.shell

: +(bar|qux) | wc
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#           ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.definition.group.begin.regexp.shell
#      ^ keyword.operator.logical.regexp.shell
#          ^ punctuation.definition.group.end.regexp.shell
#            ^ keyword.operator.assignment.pipe.shell

: ${foo//[abc[]/x}
#            ^ - keyword.control
#                ^ punctuation.section.interpolation.end.shell

[[ a == [abc[]* ]]
#^^^^^^^^^^^^^^^^^ meta.conditional.shell
#^^^^^^^ - meta.pattern.regexp
#       ^^^^^^^ meta.pattern.regexp.shell - meta.interpolation
#              ^^^ - meta.pattern.regexp
#       ^ punctuation.definition.set.begin.regexp.shell
#           ^ - keyword.control
#            ^ punctuation.definition.set.end.regexp.shell
#             ^ keyword.operator.quantifier.regexp.shell

[[ "${foo}" == bar*baz ]]
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#^^^^^^^^^^^^^^ - meta.pattern.regexp
#              ^^^^^^^ meta.pattern.regexp.shell - meta.interpolation
#                     ^^^ - meta.pattern.regexp
#           ^^ keyword.operator.comparison.shell
#                 ^ keyword.operator.quantifier.regexp.shell

[[ $str != ^$'\t' ]]
#^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#                   ^ - meta.conditional
#^^^^^^^^^^ - meta.pattern.regexp
#          ^^^^^^ meta.pattern.regexp.shell - meta.interpolation
#                ^^^ - meta.pattern.regexp
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.comparison.shell

[[ $str =~ ^abc$var$ ]]
#^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#                      ^ - meta.conditional
#^^^^^^^^^^ - meta.pattern.regexp
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.binary.shell
#          ^^^^ meta.pattern.regexp.shell - meta.interpolation
#              ^^^^ meta.pattern.regexp.shell meta.interpolation.parameter.shell
#                  ^ meta.pattern.regexp.shell - meta.interpolation
#                   ^^^ - meta.pattern.regexp

[[ $line =~ [[:space:]]*?(a)b ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#                               ^ - meta.conditional
#^^^^^^^^^^^ - meta.pattern.regexp.shell
#           ^^^^^^^^^^^^^^^^^ meta.pattern.regexp.shell
#           ^^^^^^^^^^^ meta.set.regexp.shell
#                        ^^^ meta.group.regexp.shell
#                            ^^^ - meta.pattern.regexp.shell
#  ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^^ keyword.operator.binary.shell
#           ^^ punctuation.definition.set.begin.regexp.shell
#             ^^^^^^^ constant.other.posix-class.regexp.shell
#                    ^^ punctuation.definition.set.end.regexp.shell
#                      ^^ keyword.operator.quantifier.regexp.shell
#                        ^ punctuation.definition.group.begin.regexp.shell
#                          ^ punctuation.definition.group.end.regexp.shell

[[ $line =~ ^0[1-9]$ ]]
#^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#                      ^ - meta.conditional
#^^^^^^^^^^^ - meta.pattern.regexp.shell
#           ^^^^^^^^ meta.pattern.regexp.shell
#                   ^^^ - meta.pattern.regexp.shell

[[ ! ($line =~ ^0[1-9]$) ]]
# <- meta.conditional.shell - meta.group
#^^^^ meta.conditional.shell - meta.group
#    ^^^^^^^^^^ meta.conditional.shell meta.group.shell - meta.pattern
#              ^^^^^^^^ meta.conditional.shell meta.group.shell meta.pattern.regexp.shell
#                      ^ meta.conditional.shell meta.group.shell - meta.pattern
#                       ^^^ meta.conditional.shell - meta.group
#                          ^ - meta.conditional - meta.group

[[ ! ($line =~ ^(\([0-9]+)$) ]]
# <- meta.conditional.shell - meta.group
#^^^^ meta.conditional.shell - meta.group
#    ^^^^^^^^^^ meta.conditional.shell meta.group.shell - meta.pattern
#              ^^^^^^^^^^^^ meta.conditional.shell meta.group.shell meta.pattern.regexp.shell
#                          ^ meta.conditional.shell meta.group.shell - meta.pattern
#                           ^^^ meta.conditional.shell - meta.group
#                              ^ - meta.conditional - meta.group
# <- support.function.double-brace.begin.shell
#^ support.function.double-brace.begin.shell
#  ^ keyword.operator.logical.shell
#    ^ punctuation.section.group.begin.shell
#     ^^^^^ variable.other.readwrite.shell
#           ^^ keyword.operator.binary.shell
#               ^^^^^^^^ meta.group.regexp.shell
#               ^ punctuation.definition.group.begin.regexp.shell
#                ^^ constant.character.escape.shell
#                  ^^^^^ meta.set.regexp.shell
#                  ^ punctuation.definition.set.begin.regexp.shell
#                      ^ punctuation.definition.set.end.regexp.shell
#                       ^ keyword.operator.quantifier.regexp.shell
#                        ^ punctuation.definition.group.end.regexp.shell
#                          ^ punctuation.section.group.end.shell
#                            ^^ support.function.double-brace.end.shell

[[ ' foobar' == [\ ]foo* ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#                          ^ - meta.conditional
#^^^^^^^^^^^^^^^ - meta.pattern.regexp.shell
#               ^^^^ meta.set.regexp.shell
#               ^^^^^^^^ meta.pattern.regexp.shell
#                       ^^^ - meta.pattern.regexp.shell
#               ^ punctuation.definition.set.begin.regexp.shell
#                ^^ constant.character.escape.shell
#                  ^ punctuation.definition.set.end.regexp.shell
#                      ^ keyword.operator.quantifier.regexp.shell

[[ '-e' == -e ]]   # -e undergoes pattern matching on the right
#  ^^^^ meta.string.shell string.quoted.single.shell
#       ^^ keyword.operator.comparison.shell
#          ^^ meta.pattern.regexp.shell - variable.parameter

[[ -e == -e ]]     # a syntax error in bash but allowed in zsh
#  ^^ - variable.parameter.option
#     ^^ keyword.operator.comparison.shell
#        ^^ meta.pattern.regexp.shell - variable.parameter


####################################################################
# Bash Numeric Constants                                           #
####################################################################

true false
# <- constant.language.boolean.shell
#^^^ constant.language.boolean.shell
#   ^ - constant
#    ^^^^^ constant.language.boolean.shell
#         ^ - constant

(( 0 ))
# ^ - meta.number - constant
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^ - meta.number - constant

(( 0 1 2 3 4 5 6 7 8 9))
#^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
# ^ - meta.number - constant
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^ - meta.number - constant
#    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#     ^ - meta.number - constant
#      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^ - meta.number - constant
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ - meta.number - constant
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ - meta.number - constant
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ - meta.number - constant
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ - meta.number - constant
#                ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                 ^ - meta.number - constant
#                  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ - meta.number - constant
#                    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                     ^ - meta.number - constant

(( -0 -1 -2 -3 -4 -5 -6 -7 -8 -9))
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
# ^^ - meta.number - constant
#   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^^ - meta.number - constant
#      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^^ - meta.number - constant
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^^ - meta.number - constant
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^^ - meta.number - constant
#               ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^^ - meta.number - constant
#                  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^^ - meta.number - constant
#                     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                      ^^ - meta.number - constant
#                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                         ^^ - meta.number - constant
#                           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                            ^^ - meta.number - constant
#                              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                               ^ - meta.number - constant

(( 012345670802 ))
#^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
#  ^ meta.number.integer.octal.shell constant.numeric.base.shell
#   ^^^^^^^^ meta.number.integer.octal.shell constant.numeric.value.shell
#           ^^^ - meta.number - constant

(( 0x ))
# ^ - meta.number - constant
#  ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#    ^ - meta.number - constant

(( 0xDEADBEEF 0xdeadbeef 0x1234567890abcdefg ))
# ^ - meta.number - constant
#  ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#    ^^^^^^^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#            ^ - meta.number - constant
#             ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#               ^^^^^^^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#                       ^ - meta.number - constant
#                        ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#                          ^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#                                          ^^^^ - meta.number - constant

(( 64#123@_ ))
#  ^^^ meta.number.integer.other.shell constant.numeric.base.shell
#     ^^^^^ meta.number.integer.other.shell constant.numeric.value.shell


####################################################################
# Arithmetic tests                                                 #
####################################################################

(( a=b, a*=b, a/=b, a%=b, a+=b, a-=b, a<<=b, a>>=b, a&=b, a^=b, a|=b ))
#  ^ variable.other.readwrite.shell
#   ^ keyword.operator.assignment.shell
#    ^ variable.other.readwrite.shell
#     ^ meta.arithmetic punctuation.separator
#       ^ variable.other.readwrite.shell
#        ^^ keyword.operator.assignment.augmented.shell
#          ^ variable.other.readwrite.shell
#           ^ meta.arithmetic punctuation.separator
#              ^^ keyword.operator.assignment.augmented.shell
#                ^ meta.arithmetic
#                    ^^ keyword.operator.assignment.augmented.shell
#                      ^ meta.arithmetic
#                          ^^ keyword.operator.assignment.augmented.shell
#                             ^ meta.arithmetic punctuation.separator
#                                ^^ keyword.operator.assignment.augmented.shell
#                                      ^^^ keyword.operator.assignment.augmented.shell
#                                             ^^^ keyword.operator.assignment.augmented.shell
#                                                    ^^ keyword.operator.assignment.augmented.shell
#                                                          ^^ keyword.operator.assignment.augmented.shell
#                                                                ^^ keyword.operator.assignment.augmented.shell
(( a++ a ++ ))
#   ^^ keyword.operator.arithmetic.shell
#        ^^ keyword.operator.arithmetic.shell
(( a-- a -- ))
#   ^^ keyword.operator.arithmetic.shell
#        ^^ keyword.operator.arithmetic.shell
(( ++a ++ a ))
#  ^^ keyword.operator.arithmetic.shell
#      ^^ keyword.operator.arithmetic.shell
(( --a -- a ))
#  ^^ keyword.operator.arithmetic.shell
#      ^^ keyword.operator.arithmetic.shell

(( a/b a / b ))
#   ^ keyword.operator.arithmetic.shell
#        ^ keyword.operator.arithmetic.shell
(( a%b a % b ))
#   ^ keyword.operator.arithmetic.shell
#        ^ keyword.operator.arithmetic.shell
(( a+b a + b ))
#   ^ keyword.operator.arithmetic.shell
#        ^ keyword.operator.arithmetic.shell
(( a-b a - b ))
#   ^ keyword.operator.arithmetic.shell
#        ^ keyword.operator.arithmetic.shell
(( a*b a * b ))
#   ^ keyword.operator.arithmetic.shell
#        ^ keyword.operator.arithmetic.shell
(( a**16 a ** 16 ))
#   ^^ keyword.operator.arithmetic.shell
#          ^^ keyword.operator.arithmetic.shell

(( ~1 ))
#  ^ keyword.operator.bitwise.shell
(( a&b a & b))
#   ^ keyword.operator.bitwise.shell
#        ^ keyword.operator.bitwise.shell
(( a^b a ^ b))
#   ^ keyword.operator.bitwise.shell
#        ^ keyword.operator.bitwise.shell
(( a|b a | b))
#   ^ keyword.operator.bitwise.shell
#        ^ keyword.operator.bitwise.shell
(( a<<12 a << 16 ))
#   ^^ keyword.operator.bitwise.shell
#          ^^ keyword.operator.bitwise.shell
(( a>>14 a >> 14 ))
#   ^^ keyword.operator.bitwise.shell
#          ^^ keyword.operator.bitwise.shell

(( a<=b a <= b ))
#   ^^ keyword.operator.comparison.shell
#         ^^ keyword.operator.comparison.shell
(( a>=b a >= b ))
#   ^^ keyword.operator.comparison.shell
#         ^^ keyword.operator.comparison.shell
(( a<b a < b ))
#   ^ keyword.operator.comparison.shell
#        ^ keyword.operator.comparison.shell
(( a>b a > b ))
#   ^ keyword.operator.comparison.shell
#        ^ keyword.operator.comparison.shell

(( !1 ! 1 ))
#  ^ keyword.operator.logical.shell
#     ^ keyword.operator.logical.shell
(( a&&b a && b ))
#   ^^ keyword.operator.logical.shell
#         ^^ keyword.operator.logical.shell
(( a||b a || b ))
#   ^^ keyword.operator.logical.shell
#         ^^ keyword.operator.logical.shell

(( a ? 0 : 1 ))
#    ^ keyword.operator.ternary.shell
#        ^ keyword.operator.ternary.shell
(((a>b) ? (a>c?a:c) : (b>c?b:c)))
# <- meta.arithmetic.shell punctuation.section.arithmetic.begin.shell - meta.group
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
# ^^^^^ meta.group.shell
#      ^^^ - meta.group.shell
#         ^^^^^^^^^ meta.group.shell
#                  ^^^ - meta.group.shell
#                     ^^^^^^^^^ meta.group.shell
#                              ^^ - meta.group.shell
#^ punctuation.section.arithmetic.begin.shell
# ^ punctuation.section.group.begin.shell
#   ^ keyword.operator.comparison.shell
#     ^ punctuation.section.group.end.shell
#       ^ keyword.operator.ternary.shell
#         ^ punctuation.section.group.begin.shell
#           ^ keyword.operator.comparison.shell
#             ^ keyword.operator.ternary.shell
#               ^ keyword.operator.ternary.shell
#                 ^ punctuation.section.group.end.shell
#                   ^ keyword.operator.ternary.shell
#                     ^ punctuation.section.group.begin.shell
#                       ^ keyword.operator.comparison.shell
#                         ^ keyword.operator.ternary.shell
#                           ^ keyword.operator.ternary.shell
#                             ^ punctuation.section.group.end.shell
#                              ^^ punctuation.section.arithmetic.end.shell

((a+=b))
#    ^ - string.unquoted

let 5 \
    + 5
#^^^^^^ meta.function-call.arguments.shell
#      ^ - meta.function-call
#   ^ keyword.operator.arithmetic.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell

let 5+5 # comment
#^^ meta.function-call.identifier.shell
#  ^^^^ meta.function-call.arguments.shell
#      ^ - meta.function-call
#^^ support.function.let.shell
#   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^ keyword.operator.arithmetic.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell

let var[10]=5*(20+$idx)
#^^ meta.function-call.identifier.shell support.function.let.shell
#  ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#      ^^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ punctuation.section.item-access.end.shell
#          ^ keyword.operator.assignment.shell
#           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^ keyword.operator.arithmetic.shell
#             ^ punctuation.section.group.begin.shell
#              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ keyword.operator.arithmetic.shell
#                 ^^^^ variable.other.readwrite.shell
#                     ^ punctuation.section.group.end.shell

let "two=5+5"; if [[ "$X" == "1" ]]; then X="one"; fi
#^^ meta.function-call.identifier.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#            ^ - meta.function-call
#^^ support.function.let.shell
#   ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#    ^^^^^^^ meta.string.shell meta.interpolation.shell - string
#       ^ keyword.operator.assignment.shell
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ keyword.operator.arithmetic.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#            ^ punctuation.terminator.statement.shell
#              ^^ keyword.control.conditional.if.shell
#                 ^^^^^^^^^^^^^^^^^ meta.conditional.shell
#                                  ^ punctuation.terminator.statement.shell
#                                    ^^^^ keyword.control.conditional.then.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ keyword.operator.assignment.shell
#                                           ^^^^^ string.quoted.double.shell
#                                                ^ punctuation.terminator.statement.shell
#                                                  ^^ keyword.control.conditional.end.shell


####################################################################
# Command chaining operators | and, or, pipe, redirection          #
####################################################################

function show_help() {
    echo "Usage: imgcat [-p] filename ..." 1>& 2
    #                                          ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
    echo "   or: cat filename | imgcat" 1>& 2
    #                                       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
}
cmd1 --opt1 arg1 | cmd2 --opt2 arg2 | cmd3 --opt3 arg3
#  ^ meta.function-call.identifier.shell variable.function.shell
#         ^ variable.parameter - variable.function
#              ^ - variable
#                ^ keyword
                   #  ^ meta.function-call.identifier.shell variable.function.shell
                   #         ^ variable.parameter - variable.function
                   #              ^ - variable
                   #                ^ keyword
                                      #  ^ meta.function-call.identifier.shell variable.function.shell
                                      #         ^ variable.parameter - variable.function
                                      #              ^ - variable
C2=c2 C3=c3 C4=c4
c1 -c1 c1 && ${C2} -c2 c2 || c3 -c3 ${C3} ; c4 -${C4} c4 | c5 -c5 c5
#^ meta.function-call.identifier.shell variable.function.shell
#    ^ variable.parameter - variable.function
#      ^ - variable
#         ^ keyword
          #  ^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
          #         ^ variable.parameter - variable.function
          #             ^ - variable
          #                ^ keyword
                          #  ^ meta.function-call.identifier.shell variable.function.shell
                          #      ^ variable.parameter - variable.function
                          #         ^ - variable.parameter
                          #               ^ punctuation.terminator.statement.shell
                                          # ^^ variable.function
                                          #    ^ variable.parameter

foo 2>&1
#   ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#      ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
foo 2>&-
#      ^ punctuation.terminator
foo | bar 2>&1
#         ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#            ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
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
#     ^^^^^^^ meta.compound.shell
#            ^^ - meta.compound
#              ^^^^^^^^ meta.compound.shell
#                      ^ - meta.compound
#    ^ keyword.operator.assignment.redirection.process.shell
#     ^ punctuation.section.compound.begin.shell
#         ^^ variable.parameter
#           ^ punctuation.section.compound.end.shell
#             ^ keyword.operator.assignment.redirection.process.shell
#              ^ punctuation.section.compound.begin.shell
#                ^ variable.function
#                  ^^^ variable.parameter
#                     ^ punctuation.section.compound.end.shell
gzip | tee >(md5sum - | sed 's/-$/mydata.lz2/'>mydata-gz.md5) > mydata.gz
#    ^ keyword.operator.assignment.pipe.shell
#          ^ keyword.operator.assignment.redirection.process
#           ^ punctuation
#                     ^ keyword.operator.assignment.pipe.shell
#                                             ^ keyword.operator.assignment.redirection
#                                                           ^ punctuation
#                                                             ^ keyword.operator.assignment.redirection
LC_ALL=C 2> /dev/null
#        ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ keyword.operator.assignment.redirection
#           ^ - variable.function
2>&1 echo foo
# <- meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#^^ keyword.operator.assignment.redirection
#  ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^^^^ meta.function-call support.function.echo
#        ^^^^ meta.function-call.arguments
touch file.txt
foo=x <file.txt
#     ^ keyword.operator.assignment.redirection
#      ^ - variable.function

exec >&${tee[1]} 2>&1
#   ^^^ meta.function-call.arguments.shell - meta.interpolation
#      ^^^^^^^^^ meta.function-call.arguments.shell meta.interpolation.parameter.shell
#               ^^^^^ meta.function-call.arguments.shell - meta.interpolation
#    ^^ keyword.operator.assignment.redirection
#      ^ punctuation.definition.variable.shell
#       ^ punctuation.section.interpolation.begin.shell


####################################################################
# 3.2.4.2 Conditional Constructs                                   #
####################################################################

 if;
#^^ keyword.control.conditional.if.shell
 if&
#^^ keyword.control.conditional.if.shell
 if|
#^^ keyword.control.conditional.if.shell
 if>/dev/null
#^^ keyword.control.conditional.if.shell
 if -
#^^ keyword.control.conditional.if.shell
 if-
#^^^ - keyword.control
 -if
#^^^ - keyword.control
 if+
#^^^ - keyword.control
 if$
#^^^ - keyword.control
 if$var
#^^^^^^ - keyword.control
 if=
#^^^ - keyword.control
 if-=
#^^^^ - keyword.control
 if+=
#^^^^ - keyword.control
 if()
#^^ keyword.control.conditional.if.shell
 if[]
#^^^^ - keyword.control
 if{}
#^^^^ - keyword.control

 then;
#^^^^ keyword.control.conditional.then.shell
 then&
#^^^^ keyword.control.conditional.then.shell
 then|
#^^^^ keyword.control.conditional.then.shell
 then>/dev/null
#^^^^ keyword.control.conditional.then.shell
 then -
#^^^^ keyword.control.conditional.then.shell
 then-
#^^^^^ - keyword.control
- then
#^^^^^ - keyword.control
 then+
#^^^^^ - keyword.control
 then$
#^^^^^ - keyword.control
 then$var
#^^^^^^^^ - keyword.control
 then=
#^^^^^ - keyword.control
 then-=
#^^^^^^ - keyword.control
 then+=
#^^^^^^ - keyword.control
 then()
#^^^^ keyword.control.conditional.then.shell
 then[]
#^^^^^^ - keyword.control
 then{}
#^^^^^^ - keyword.control

if cmd && \
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.identifier.shell variable.function.shell
if cmd &&
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.identifier.shell variable.function.shell
if cmd || \
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.identifier.shell variable.function.shell
if cmd ||
    ! cmd
#   ^ keyword.operator.logical.shell
#     ^^^ meta.function-call.identifier.shell variable.function.shell
if \
   ! cmd
#  ^ keyword.operator.logical.shell
#    ^^^ meta.function-call.identifier.shell variable.function.shell
if !cmd
#  ^ punctuation.definition.history.shell
#   ^^^ meta.function-call.identifier.shell variable.function.shell
! cmd
# <- keyword.operator.logical.shell
# ^^^ meta.function-call.identifier.shell variable.function.shell
!cmd
# <- punctuation.definition.history.shell
#^^^ meta.function-call.identifier.shell variable.function.shell
! \
# <- keyword.operator.logical.shell
# ^ punctuation.separator.continuation.line.shell
! \
 cmd
#^^^ meta.function-call.identifier.shell variable.function.shell
!\
# <- punctuation.definition.history.shell
#^ punctuation.separator.continuation.line.shell
!\
 cmd
#^^^ meta.function-call.identifier.shell variable.function.shell
!!
# <- variable.language.history.shell punctuation.definition.history.shell
#^ variable.language.history.shell
!-1
# <- variable.language.history.shell punctuation.definition.history.shell
#^^ variable.language.history.shell
!51
# <- variable.language.history.shell punctuation.definition.history.shell
#^^ variable.language.history.shell

[ ]
# <- support.function.test.begin.shell
# ^ support.function.test.end.shell

! [ ]
# <- keyword.operator.logical.shell
# ^ support.function.test.begin.shell
#   ^ support.function.test.end.shell

![ ]
# <- punctuation.definition.history.shell
#^ support.function.test.begin.shell
#  ^ support.function.test.end.shell

[[ ]]
# <- support.function.double-brace.begin.shell
#^ support.function.double-brace.begin.shell
#  ^^ support.function.double-brace.end.shell

! [[ ]]
# <- keyword.operator.logical.shell
# ^^ support.function.double-brace.begin.shell
#    ^^ support.function.double-brace.end.shell

![[ ]]
# <- punctuation.definition.history.shell
#^^^^^ meta.conditional.shell
#^^ support.function.double-brace.begin.shell
#   ^^ support.function.double-brace.end.shell

if [[ expr ]] && [[ expr ]] || [[ expr ]] ; then cmd ; fi
#  ^^^^^^^^^^ meta.conditional.shell
#  ^^ support.function.double-brace.begin.shell
#          ^^ support.function.double-brace.end.shell
#             ^^ keyword.operator.logical.shell
#                ^^^^^^^^^^ meta.conditional.shell
#                ^^ support.function.double-brace.begin.shell
#                        ^^ support.function.double-brace.end.shell
#                           ^^ keyword.operator.logical.shell
#                              ^^^^^^^^^^ meta.conditional.shell
#                              ^^ support.function.double-brace.begin.shell
#                                      ^^ support.function.double-brace.end.shell
#                                         ^ punctuation.terminator.statement.shell

if [[ expr && expr || expr ]] ; then cmd ; fi
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#  ^^ support.function.double-brace.begin.shell
#          ^^ keyword.operator.logical.shell
#                  ^^ keyword.operator.logical.shell
#                          ^^ support.function.double-brace.end.shell
#                             ^ punctuation.terminator.statement.shell

if [[ expr && ( expr || expr ) ]] ; then cmd ; fi
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#             ^^^^^^^^^^^^^^^^ meta.group.shell
#  ^^ support.function.double-brace.begin.shell
#          ^^ keyword.operator.logical.shell
#             ^ punctuation.section.group.begin.shell
#                    ^^ keyword.operator.logical.shell
#                            ^ punctuation.section.group.end.shell
#                              ^^ support.function.double-brace.end.shell
#                                 ^ punctuation.terminator.statement.shell

if [[ $- != *i* ]] ; then echo shell is not interactive; fi
#^ keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.conditional.shell
#  ^^^^^^^^^ - meta.pattern
#           ^^^ meta.pattern.regexp.shell
#              ^^^ - meta.pattern
#                         ^^^^ meta.function-call.identifier.shell
#                              ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ support.function.double-brace.begin.shell
#     ^^ meta.interpolation.parameter.shell variable.language.shell
#     ^ punctuation.definition.variable.shell
#        ^^ keyword.operator.comparison.shell
#           ^ keyword.operator.quantifier.regexp.shell
#             ^ keyword.operator.quantifier.regexp.shell
#               ^^ support.function.double-brace.end.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^^^ keyword.control.conditional.then.shell
#                         ^^^^ support.function.echo.shell
#                                                      ^ punctuation.terminator.statement.shell
#                                                        ^^ keyword.control.conditional.end.shell

if [[ "$ERL_TOP" != ";"; ]];then;fi
#^ keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#  ^^^^^^^^^^^^^^^^^ - meta.pattern
#                   ^^^^ meta.pattern.regexp.shell
#                       ^^^ - meta.pattern
#                          ^ punctuation.terminator.statement.shell
#                           ^^^^ keyword.control.conditional.then.shell
#                               ^ punctuation.terminator.statement.shell
#                                ^^ keyword.control.conditional.end.shell

if [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2; then PLATFORM=docker; fi
#^ keyword.control.conditional.if.shell
#     ^ keyword.operator.logical.shell
#                         ^^ keyword.operator.logical.shell
#                            ^ keyword.operator.logical.shell
#                              ^^^ meta.function-call.identifier.shell variable.function.shell
#                                  ^^ keyword.operator.logical.shell
#                                     ^ keyword.operator.logical.shell
#                                       ^^^^ meta.function-call.identifier.shell variable.function.shell
#                                           ^ punctuation.terminator.statement.shell
#                                             ^^^^ keyword.control.conditional.then.shell
#                                                         ^ variable.other.readwrite.shell
#                                                          ^ keyword.operator.assignment.shell
#                                                           ^ meta.string string.unquoted.shell

if { [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2; }; then PLATFORM=docker; fi
#^ keyword.control.conditional.if.shell
#  ^ punctuation.section.compound.begin.shell
#       ^ keyword.operator.logical.shell
#                           ^^ keyword.operator.logical.shell
#                              ^ keyword.operator.logical.shell
#                                ^^^ meta.function-call.identifier.shell variable.function.shell
#                                    ^^ keyword.operator.logical.shell
#                                       ^ keyword.operator.logical.shell
#                                         ^^^^ meta.function-call.identifier.shell variable.function.shell
#                                               ^ punctuation.section.compound.end.shell
#                                                ^ punctuation.terminator.statement.shell
#                                                  ^^^^ keyword.control.conditional.then.shell
#                                                              ^ variable.other.readwrite.shell
#                                                               ^ keyword.operator.assignment.shell
#                                                                ^ meta.string string.unquoted.shell

if ( [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2 ); then PLATFORM=docker; fi
#^ keyword.control.conditional.if.shell
#  ^ punctuation.section.compound.begin.shell
#       ^ keyword.operator.logical.shell
#                           ^^ keyword.operator.logical.shell
#                              ^ keyword.operator.logical.shell
#                                ^^^ meta.function-call.identifier.shell variable.function.shell
#                                    ^^ keyword.operator.logical.shell
#                                       ^ keyword.operator.logical.shell
#                                         ^^^^ meta.function-call.identifier.shell variable.function.shell
#                                              ^ punctuation.section.compound.end.shell
#                                               ^ punctuation.terminator.statement.shell
#                                                 ^^^^ keyword.control.conditional.then.shell
#                                                             ^ variable.other.readwrite.shell
#                                                              ^ keyword.operator.assignment.shell
#                                                               ^ meta.string string.unquoted.shell

if [ ! -f q4m-$Q4MVER.tar.gz ]; then
#  ^ support.function.test.begin.shell
#    ^ keyword.operator.logical.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#      ^ punctuation.definition.parameter.shell
#        ^ - keyword.operator
#             ^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                            ^ support.function.test.end.shell
#                             ^ punctuation.terminator.statement.shell
#                               ^^^^ keyword.control.conditional.then.shell
    :
#   ^ meta.function-call.identifier.shell support.function.colon.shell
fi
# <- keyword.control.conditional.end.shell

if true ; then false ; fi
#^ keyword.control.conditional.if.shell
#  ^^^^ constant.language.boolean.shell
#       ^ punctuation.terminator.statement.shell
#         ^^^^ keyword.control.conditional.then.shell
#              ^^^^^ constant.language.boolean.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^ keyword.control.conditional.end.shell

if (ruby extconf.rb &&
#  ^ punctuation.section.compound.begin.shell
    { make clean || true; } &&
    # <- punctuation.section.compound.begin.shell
    #                     ^ punctuation.section.compound.end.shell
    make) 1> build.log 2>&1
    #   ^ punctuation.section.compound.end.shell
    #        ^ - variable.function
fi

if [ "$1" != "" -a "$2" != "" ]; then
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.shell
#^ keyword.control.conditional.if.shell
# <- keyword.control.conditional.if.shell
#  ^ support.function.test.begin.shell
#         ^^ keyword.operator.comparison.shell
#               ^^ meta.conditional.shell variable.parameter.option.shell
#                   ^^ variable.other.readwrite.shell
#                       ^^ keyword.operator.comparison.shell
#                             ^ support.function.test.end.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ keyword.control.conditional.then.shell
    local DIR=$1
    # <- keyword.declaration.variable.shell
    #     ^^^ variable.other.readwrite.shell
    #        ^ keyword.operator.assignment.shell
    #         ^^ variable.other.readwrite.shell
    local TARGET=$2
    # <- keyword.declaration.variable.shell
    #     ^^^^^^ variable.other.readwrite.shell
    #           ^ keyword.operator.assignment.shell
    #            ^^ variable.other.readwrite.shell
elif [ "$1" ]; then
# <- keyword.control.conditional.elseif.shell
#    ^^^^^^^^ meta.conditional.shell
#            ^ punctuation.terminator.statement.shell
#              ^^^^ keyword.control.conditional.then.shell
    local DIR=$PWD
    # <- keyword.declaration.variable.shell
    #     ^^^ variable.other.readwrite.shell
    #        ^ keyword.operator.assignment.shell
    #         ^^^^ variable.other.readwrite.shell
    local TARGET=$1
    # <- keyword.declaration.variable.shell
    #     ^^^^^^ variable.other.readwrite.shell
    #           ^ keyword.operator.assignment.shell
    #            ^^ variable.other.readwrite.shell
fi
# <- keyword.control.conditional.end.shell

asdf foo && FOO=some-value pwd
# <- meta.function-call.identifier.shell variable.function.shell
#        ^^ keyword.operator.logical.shell
#           ^^^ variable.other.readwrite.shell
#              ^ keyword.operator.assignment.shell
#               ^^^^^^^^^^ meta.string.shell string.unquoted.shell
#                          ^^^ meta.function-call.identifier.shell support.function.pwd.shell

(cd Layer1-linux  && PLATFORM=${PLATFORM} ./build ) &&
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^ meta.string.shell meta.interpolation.parameter.shell - string
#                                         ^^^^^^^ variable.function.shell
#                                                 ^ punctuation.section.compound.end.shell
#                                                   ^^ keyword.operator.logical.shell
(cd Layer2-nodejs && PLATFORM=${PLATFORM} ./build ) &&
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^ meta.string.shell meta.interpolation.parameter.shell - string
#                                         ^^^^^^^ variable.function.shell
#                                                 ^ punctuation.section.compound.end.shell
#                                                   ^^ keyword.operator.logical.shell
(cd Layer3-base   && PLATFORM=${PLATFORM} ./build ) &&
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^ meta.string.shell meta.interpolation.parameter.shell - string
#                                         ^^^^^^^ variable.function.shell
#                                                 ^ punctuation.section.compound.end.shell
#                                                   ^^ keyword.operator.logical.shell
(cd Layer4-custom && PLATFORM=${PLATFORM} name=${NOSN} ./build ) || err $?
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^^^^^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#                                         ^^^^ variable.other.readwrite.shell
#                                             ^ keyword.operator.assignment.shell
#                                              ^^^^^^^ meta.string.shell meta.interpolation.parameter.shell - string
#                                                      ^^^^^^^ variable.function.shell
#                                                              ^ punctuation.section.compound.end.shell
#                                                                ^^ keyword.operator.logical.shell
#                                                                   ^^^ meta.function-call.identifier.shell variable.function.shell
#                                                                      ^^^ meta.function-call.arguments.shell
#                                                                       ^^ variable.language.shell

####################################################################
# Case Statements                                                  #
####################################################################

case-
# <- - keyword
#^^^^ - keyword

esac
# <- keyword.control.conditional.end.shell
#^^^ keyword.control.conditional.end.shell - meta.conditional.case

case
# <- meta.conditional.case.shell keyword.control.conditional.case.shell
#^^^ meta.conditional.case.shell keyword.control.conditional.case.shell

esac
# <- meta.conditional.case.shell keyword.control.conditional.end.shell
#^^^ meta.conditional.case.shell keyword.control.conditional.end.shell

case var in
  ( patt ( esac
#^ meta.conditional.case.shell
# ^^^^^^^ meta.conditional.case.clause.patterns.shell - meta.group
#        ^^ meta.conditional.case.clause.patterns.shell meta.group.regexp.shell
#          ^^^^ meta.conditional.case.shell
# ^ keyword.control.conditional.patterns.begin.shell
#        ^ punctuation.definition.group.begin.regexp.shell
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
# <- meta.conditional.case.shell keyword.control.conditional.end.shell
#^^^ meta.conditional.case.shell keyword.control.conditional.end.shell


case "$1" in
# <- keyword.control.conditional.case.shell
#^^^ keyword.control.conditional.case.shell
#    ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#     ^ meta.string.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#      ^ meta.string.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.end.shell
#         ^^ keyword.control.in.shell
setup )
# <- - variable.function - support.function - meta.function-call
#     ^ keyword.control.conditional.patterns.end.shell
echo Preparing the server...
# <- meta.function-call support.function.echo
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
dep\
loy )
# <- - variable.function - support.function - meta.function-call
#   ^ keyword.control.conditional.patterns.end.shell
echo Deploying...
# <- meta.function-call support.function.echo
#   ^^^^^^^^^^^^^ meta.function-call.arguments
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
* )
# <- keyword.operator.quantifier.regexp.shell
# ^ keyword.control.conditional.patterns.end.shell
cat <<'ENDCAT'
# <- meta.function-call.identifier.shell variable.function.shell
#   ^^ meta.function-call.arguments.shell - meta.string - meta.tag
#     ^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#             ^ meta.function-call.arguments.shell meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#     ^ punctuation.definition.tag.begin.shell - entity
#      ^^^^^^ entity.name.tag.heredoc.shell
#            ^ punctuation.definition.tag.end.shell - entity

foo
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
ENDCAT
# <- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
esac
# <- meta.conditional.case.shell keyword.control.conditional.end.shell
#^^^ meta.conditional.case.shell keyword.control.conditional.end.shell


case "${foo}" in- in_ in=10 in
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional.case.shell
# <- keyword.control.conditional.case.shell
#^^^ keyword.control.conditional.case.shell
#             ^^ - keyword.control.in
#                 ^^ - keyword.control.in
#                     ^^ - keyword.control.in
#                           ^^ keyword.control.in
    ( help | h ) bar ;;
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^^^^^^^^^^^ meta.conditional.case.clause.patterns.shell - meta.conditional.case.clause.commands - meta.conditional.case.shell
#               ^^^^^^^ meta.conditional.case.clause.commands.shell - meta.conditional.case.clause.patterns - meta.conditional.case.shell
#                      ^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
    # <- keyword.control.conditional.patterns.begin.shell
    #          ^ keyword.control.conditional.patterns.end.shell
    #                ^^ punctuation.terminator.case.clause.shell
    do1 ) foo1 ;&
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^^^^ meta.conditional.case.clause.patterns.shell - meta.conditional.case.clause.commands - meta.conditional.case.shell
#        ^^^^^^^^ meta.conditional.case.clause.commands.shell - meta.conditional.case.clause.patterns - meta.conditional.case.shell
#                ^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
    #   ^ keyword.control.conditional.patterns.end.shell
    #          ^^ punctuation.terminator.case.clause.shell
    (do2 ) foo2 ;;&
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^^^^^ meta.conditional.case.clause.patterns.shell - meta.conditional.case.clause.commands - meta.conditional.case.shell
#         ^^^^^^^^^ meta.conditional.case.clause.commands.shell - meta.conditional.case.clause.patterns - meta.conditional.case.shell
#                  ^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
    # <- keyword.control.conditional.patterns.begin.shell
    #    ^ keyword.control.conditional.patterns.end.shell
    #           ^^^ punctuation.terminator.case.clause.shell
    *) bar
#^^^ meta.conditional.case.shell - meta.conditional.case.clause.patterns - meta.conditional.case.clause.commands
#   ^^ meta.conditional.case.clause.patterns.shell - meta.conditional.case.clause.commands - meta.conditional.case.shell
#     ^^^^^ meta.conditional.case.clause.commands.shell - meta.conditional.case.clause.patterns - meta.conditional.case.shell
    #^ keyword.control.conditional.patterns.end.shell
esac
# <- keyword.control.conditional.end.shell

case $TERM in
    sun-cmd)
        #  ^ keyword.control.conditional.patterns.end.shell
        update_terminal_cwd() { print -Pn "\e]l%~\e\\" };;
        #                                              ^ meta.function punctuation.section.compound.end.shell
        #                                               ^^ punctuation.terminator.case.clause.shell
    *xterm*|rxvt|(dt|k|E)term)
        # ^ keyword.operator.quantifier.regexp.shell
        #  ^ keyword.operator.logical.regexp.shell
        #       ^ keyword.operator.logical.regexp.shell
        #        ^ punctuation.definition.group.begin.regexp.shell
        #           ^ keyword.operator.logical.regexp.shell
        #             ^ keyword.operator.logical.regexp.shell
        #               ^ punctuation.definition.group.end.regexp.shell
        #                    ^ keyword.control.conditional.patterns.end.shell
        update_terminal_cwd() { print -Pn "\e]2;%~\a" };;
        #                                             ^ meta.function punctuation.section.compound.end.shell
        #                                              ^^ punctuation.terminator.case.clause.shell
    *)
    # <- keyword.operator.quantifier.regexp.shell
    #^ keyword.control.conditional.patterns.end.shell
        update_terminal_cwd() {};;
        #                      ^ meta.function punctuation.section.compound.end.shell
        #                       ^^ punctuation.terminator.case.clause.shell
esac
# <- keyword.control.conditional.end.shell

case $SERVER in
# <- keyword.control.conditional.case.shell
ws-+([0-9]).host.com) echo "Web Server"
#^^^ meta.conditional.case.clause.patterns.shell meta.pattern.regexp.shell - meta.group
#   ^^^^^^^ meta.conditional.case.clause.patterns.shell meta.pattern.regexp.shell meta.group.regexp.shell
#          ^^^^^^^^^^ meta.conditional.case.clause.patterns.shell meta.pattern.regexp.shell - meta.group
#  ^ keyword.operator.quantifier.regexp.shell
#   ^ punctuation.definition.group.begin.regexp.shell
#    ^ punctuation.definition.set.begin.regexp.shell
#      ^ punctuation.separator.range.regexp.shell
#        ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.definition.group.end.regexp.shell
#                   ^ keyword.control.conditional.patterns.end.shell
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
db-+([0-9])\.host\.com) echo "DB server"
#^^^ meta.conditional.case.clause.patterns.shell meta.pattern.regexp.shell - meta.group
#   ^^^^^^^ meta.conditional.case.clause.patterns.shell meta.pattern.regexp.shell meta.group.regexp.shell
#          ^^^^^^^^^^^ meta.conditional.case.clause.patterns.shell meta.pattern.regexp.shell - meta.group
#  ^ keyword.operator.quantifier.regexp.shell
#   ^ punctuation.definition.group.begin.regexp.shell
#    ^ punctuation.definition.set.begin.regexp.shell
#      ^ punctuation.separator.range.regexp.shell
#        ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.definition.group.end.regexp.shell
#                     ^ keyword.control.conditional.patterns.end.shell
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
bk-+([0-9])\.host\.com) echo "Backup server"
#  ^ keyword.operator.quantifier.regexp.shell
#   ^ punctuation.definition.group.begin.regexp.shell
#    ^ punctuation.definition.set.begin.regexp.shell
#      ^ punctuation.separator.range.regexp.shell
#        ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.definition.group.end.regexp.shell
#                     ^ keyword.control.conditional.patterns.end.shell
#                       ^^^^ support.function.echo.shell
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
*)echo "Unknown server"
# <- keyword.operator.quantifier.regexp.shell
#^ keyword.control.conditional.patterns.end.shell
# ^^^^ support.function.echo.shell
;;
# <- punctuation.terminator.case.clause.shell
#^ punctuation.terminator.case.clause.shell
esac
# <- keyword.control.conditional.end.shell
#^^^ keyword.control.conditional.end.shell

case $_G_unquoted_arg in
*[\[\~\#\&\*\(\)\{\}\|\;\<\>\?\'\ ]*|*]*|"")
#^ punctuation.definition.set.begin.regexp.shell
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.shell
#                                 ^ punctuation.definition.set.end.regexp.shell
#                                     ^ - keyword.control
  _G_quoted_arg=\"$_G_unquoted_arg\"
  ;;
*)
  _G_quoted_arg=$_G_unquoted_arg
;;
esac
case $1 in
*[\\\`\"\$]*)
#^ punctuation.definition.set.begin.regexp.shell
# ^^^^^^^^ constant.character.escape.shell
#         ^ punctuation.definition.set.end.regexp.shell
  _G_unquoted_arg=`printf '%s\n' "$1" |$SED "$sed_quote_subst"` ;;
*)
  _G_unquoted_arg=$1 ;;
esac


####################################################################
# select loops                                                     #
####################################################################

select fname in *;
# <- keyword.control.loop.select.shell
#^^^^^ keyword.control.loop.select.shell
#            ^^ keyword.control.in.shell
#               ^ keyword.operator.quantifier.regexp.shell
#                ^ punctuation.terminator.statement.shell
do
# <- keyword.control.loop.do.shell
  echo you picked $fname \($REPLY\)
# ^^^^ meta.function-call.identifier.shell support.function.echo.shell
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                  ^ - meta.function-call
  break;
# ^^^^^ keyword.control.flow.break.shell
#      ^ punctuation.terminator.statement.shell
done
# <- keyword.control.loop.end.shell


####################################################################
# while loops                                                      #
####################################################################

while true; do
# <- keyword.control.loop.while
#^^^^ keyword.control.loop.while.shell
#    ^ - constant - keyword
#     ^^^^ constant.language.boolean.shell
#         ^ punctuation.terminator.statement.shell
#           ^^ keyword.control.loop.do.shell
    break
#   ^^^^^ keyword.control.flow.break.shell
    break 2;
#   ^^^^^ keyword.control.flow.break.shell
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.terminator.statement.shell
    continue
#   ^^^^^^^^ keyword.control.flow.continue.shell
    continue 2;
#   ^^^^^^^^ keyword.control.flow.continue.shell
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ punctuation.terminator.statement.shell
done
# <- keyword.control.loop.end

while ! true; do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^^^^ constant.language.boolean.shell
#           ^ punctuation.terminator.statement.shell
#             ^^ keyword.control.loop.do.shell
#                ^^^^ support.function.echo.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^^^ keyword.control.loop.end.shell

while ! { true; }; do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^^^ constant.language.boolean.shell
#             ^ punctuation.terminator.statement.shell
#               ^ punctuation.section.compound.end.shell
#                ^ punctuation.terminator.statement.shell
#                  ^^ keyword.control.loop.do.shell
#                               ^^^^ keyword.control.loop.end.shell

while ! { [[ true ]]; }; do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^ support.function.double-brace.begin.shell
#            ^^^^ constant.language.boolean.shell
#                 ^^ support.function.double-brace.end.shell
#                   ^ punctuation.terminator.statement.shell
#                     ^ punctuation.section.compound.end.shell
#                      ^ punctuation.terminator.statement.shell
#                        ^^ keyword.control.loop.do.shell
#                                     ^^^^ keyword.control.loop.end.shell

while ! ( [[ true ]] ); do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^ support.function.double-brace.begin.shell
#            ^^^^ constant.language.boolean.shell
#                 ^^ support.function.double-brace.end.shell
#                    ^ punctuation.section.compound.end.shell
#                     ^ punctuation.terminator.statement.shell
#                       ^^ keyword.control.loop.do.shell
#                                    ^^^^ keyword.control.loop.end.shell

while read -r -d '' f; do
# <- keyword.control.loop.while.shell
#     ^^^^ support.function.read.shell
#          ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^^ string.quoted.single.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^ keyword.control.loop.do.shell
done
# <- keyword.control.loop.end.shell

while IFS= read -r -d '' f; do
# <- keyword.control.loop.while.shell
#     ^^^ variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#          ^^^^ support.function.read.shell
#               ^^ meta.parameter.option.shell variable.parameter.option.shell
#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
#                     ^^ string.quoted.single.shell
#                         ^ punctuation.terminator.statement.shell
#                           ^^ keyword.control.loop.do.shell
done
# <- keyword.control.loop.end.shell


####################################################################
# do...until loops                                                 #
####################################################################

do echo bar; until ! { [[ true ]]; }
# <- keyword.control.loop.do.shell
#            ^^^^^ keyword.control.loop.until.shell
#                  ^ keyword.operator.logical.shell
#                    ^ punctuation.section.compound.begin.shell
#                      ^^ support.function.double-brace.begin.shell
#                         ^^^^ constant.language.boolean.shell
#                              ^^ support.function.double-brace.end.shell
#                                ^ punctuation.terminator.statement.shell
#                                  ^ punctuation.section.compound.end.shell


####################################################################
# for loops                                                        #
####################################################################

for;
#^^ keyword.control.loop.for.shell
for&
#^^ keyword.control.loop.for.shell
for|
#^^ keyword.control.loop.for.shell
for>/dev/null
#^^ keyword.control.loop.for.shell
for -
#^^ keyword.control.loop.for.shell
for()
#^^ keyword.control.loop.for.shell
for[]
#^^^^ - keyword.control
for{}
#^^^^ - keyword.control
for-
#^^^ - keyword.control
-for
#^^^ - keyword.control
for+
#^^^ - keyword.control
for$
#^^^ - keyword.control
for$var
#^^^^^^ - keyword.control
for=
#^^^ - keyword.control
for-=
#^^^^ - keyword.control
for+=
#^^^^ - keyword.control

 do;
#^^ keyword.control.loop.do.shell
 do&
#^^ keyword.control.loop.do.shell
 do|
#^^ keyword.control.loop.do.shell
 do>/dev/null
#^^ keyword.control.loop.do.shell
 do -
#^^ keyword.control.loop.do.shell
 do()
#^^ keyword.control.loop.do.shell
 do[]
#^^^^ - keyword.control
 do{}
#^^^^ - keyword.control
 do-
#^^^ - keyword.control
 -do
#^^^ - keyword.control
 do+
#^^^ - keyword.control
 do$
#^^^ - keyword.control
do$var
#^^^^^^ - keyword.control
 do=
#^^^ - keyword.control
 do-=
#^^^^ - keyword.control
 do+=
#^^^^ - keyword.control

for done
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^ keyword.control.loop.end.shell

for do done
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^ keyword.control.loop.do.shell
#      ^^^^ keyword.control.loop.end.shell

for x; do
#<- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#    ^ punctuation.terminator.statement.shell
#      ^^ keyword.control.loop.do.shell
    echo "${!x}"
#   ^^^^ meta.function-call.identifier.shell support.function.echo.shell
#       ^^^^^^^^ meta.function-call.arguments.shell
done
#<- keyword.control.loop.end.shell

for (( i = 0; i < 10; i++ )); do
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
# <- keyword.control.loop.for.shell
#   ^^ punctuation.section.arithmetic.begin.shell
#        ^ keyword.operator.assignment.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell - punctuation
#           ^ punctuation.terminator.statement.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ punctuation.terminator.statement.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.arithmetic.end.shell
#                           ^ punctuation.terminator.statement.shell
#                             ^^ keyword.control.loop.do.shell
    echo $i
    # <- meta.function-call support.function.echo.shell
    #    ^ meta.function-call.arguments punctuation.definition.variable.shell
    #     ^ meta.function-call.arguments variable.other.readwrite.shell
done
# <- keyword.control.loop.end.shell

for (( i = 0; i < 10; i++ )) #; do
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
# <- keyword.control.loop.for.shell
#   ^^ punctuation.section.arithmetic.begin.shell
#        ^ keyword.operator.assignment.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell - punctuation
#           ^ punctuation.terminator.statement.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ punctuation.terminator.statement.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.arithmetic.end.shell
#                            ^^^^^^ comment.line.number-sign.shell
do
#<- keyword.control.loop.do.shell
    echo $i
    # <- meta.function-call support.function.echo.shell
    #    ^ meta.function-call.arguments punctuation.definition.variable.shell
    #     ^ meta.function-call.arguments variable.other.readwrite.shell
done
# <- keyword.control.loop.end.shell

for i in $(seq 100); do
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#        ^^^^^^^^^^ meta.interpolation.command.shell
#     ^^ keyword.control.in.shell
#        ^ punctuation.definition.variable.shell
#         ^ punctuation.section.interpolation.begin.shell
#          ^^^ meta.function-call variable.function.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^ keyword.control.loop.do.shell
  :
  # <- meta.function-call support.function.colon.shell
done
# <- keyword.control.loop.end.shell

`for i in $(seq 100); do echo i; done`
# <- meta.interpolation.command.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.interpolation.command.shell - meta.interpolation meta.interpolation
#         ^^^^^^^^^^ meta.interpolation.command.shell
#                   ^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell - meta.interpolation meta.interpolation
#^^^ keyword.control.loop.for.shell
#      ^^ keyword.control.in.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^^^ meta.function-call.identifier.shell variable.function.shell
#                  ^ punctuation.section.interpolation.end.shell
#                   ^ punctuation.terminator.statement.shell
#                     ^^ keyword.control.loop.do.shell
#                        ^^^^ support.function.echo.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ keyword.control.loop.end.shell
#                                    ^ punctuation.section.interpolation.end.shell

for domain in $domains; do echo $domain; done
# <- keyword.control.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^^^ variable.other.readwrite.shell - keyword
#          ^^ keyword.control.in.shell
#             ^^^^^^^^ variable.other.readwrite.shell
#                     ^ punctuation.terminator.statement.shell
#                       ^^ keyword.control.loop.do.shell
#                          ^^^^ meta.function-call.identifier.shell support.function.echo.shell
#                              ^^^^^^^^ meta.function-call.arguments.shell
#                               ^^^^^^^ variable.other.readwrite.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^^^ keyword.control.loop.end.shell

####################################################################
# Here documents                                                   #
####################################################################

var=world!
cat <<FOOSTRING ; echo more stuff here
#  ^^^ - meta.string - meta.tag
#     ^^^^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell
#              ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#                 ^^^^ meta.function-call.identifier.shell
#                     ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^ - keyword - variable
#   ^^ keyword.operator.assignment.redirection.shell
#     ^^^^^^^^^ entity.name.tag.heredoc.shell
#               ^ punctuation.terminator.statement.shell
#                 ^^^^ support.function.echo.shell
Hello, ${"v"'a'r}
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
#^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
#      ^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.interpolation.parameter.shell
#      ^ punctuation.definition.variable.shell
#       ^ punctuation.section.interpolation.begin.shell
#        ^^^ string.quoted.double - string string
#        ^ punctuation.definition.string.begin
#          ^ punctuation.definition.string.end
#           ^^^ string.quoted.single - string string
#           ^ punctuation.definition.string.begin
#             ^ punctuation.definition.string.end
#               ^ punctuation.section.interpolation.end.shell
FOOSTRING
# <- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
cat << 'WHAT' ; echo more stuff here
#  ^^^^ - meta.string - meta.tag
#      ^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell
#            ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.tag
#               ^^^^ meta.function-call.identifier.shell
#                   ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#  ^ - keyword - variable
#   ^^ keyword.operator.assignment.redirection.shell
#      ^ punctuation.definition.tag.begin.shell - entity
#       ^^^^ entity.name.tag.heredoc.shell
#           ^ punctuation.definition.tag.end.shell - entity
#             ^ punctuation.terminator.statement.shell
#               ^^^^ support.function.echo.shell
Hello, ${var}
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
#^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
WHAT
# <- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell

cat <<< "A wild herestring appears" ; cat more stuff | bar | qux
# <- meta.function-call.identifier.shell variable.function.shell
#   ^^^ meta.function-call.arguments keyword.operator.herestring
#       ^ meta.function-call.arguments string.quoted.double punctuation.definition.string.begin
#        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments string.quoted.double
#                                 ^ meta.function-call.arguments string.quoted.double punctuation.definition.string.end
#                                  ^
#                                   ^ punctuation.terminator.statement
#                                    ^ - meta.function-call
#                                     ^^^ meta.function-call.identifier.shell variable.function.shell
#                                        ^^^^^^^^^^^ meta.function-call.arguments
#                                                    ^ keyword.operator.assignment.pipe.shell
#                                                          ^ keyword.operator.assignment.pipe.shell

if opam upgrade --check; then
    opam upgrade --dry-run <<<n
#                          ^^^ keyword.operator.herestring
#                             ^ - keyword.control.heredoc-token - string.unquoted.heredoc
fi
# <- keyword.control.conditional.end - string.unquoted.heredoc

cat -c <<<$(echo pipephobic)
#  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
#      ^^^ keyword.operator.herestring
#         ^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#           ^^^^ support.function

# Escaped and non-escaped backticks in heredocs...
cat << backticks_are_deprecated
#^^^^^^ - meta.string - meta.tag
#      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#                              ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#     ^ - entity - keyword
#      ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.heredoc.shell
#                              ^ - entity
foo=\`pwd\`
#^^^^^^^^^^^ meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
#   ^^ constant.character.escape.shell
#        ^^ constant.character.escape.shell
foo=`pwd`
#^^^ meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
#   ^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.interpolation.command.shell - string.unquoted.heredoc
#   ^ punctuation.section.interpolation.begin.shell
#       ^ punctuation.section.interpolation.end.shell
backticks_are_deprecated
#<- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#                       ^ - meta.function-call - meta.string - meta.tag - entity

# Redirection after heredoc token
cat << redirection_comes_next > foo.txt
#^^^^^^ - meta.string - meta.tag
#      ^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#                            ^^^^^^^^^^^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#     ^ - entiy - keyword
#      ^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.heredoc.shell
#                            ^ - entiy - keyword
#                             ^ keyword.operator.assignment.redirection.shell
#                               ^^^^^^^ - variable.function
hello
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
redirection_comes_next
#<- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#                     ^ - meta.function-call - meta.string - meta.tag - entity

cat <<     FARAWAY
#^^^^^^^^^^ - meta.string - meta.tag
#          ^^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#                 ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#     ^^^^^ - entiy - keyword
#          ^^^^^^^ entity.name.tag.heredoc.shell
#                 ^ - entity
foo
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
FARAWAY
#<- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#      ^ - meta.function-call - meta.string - meta.tag - entity

cat <<- INDENTED
#^^^^^^^ - meta.string - meta.tag
#       ^^^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#               ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^^ keyword.operator.assignment.redirection.shell
#      ^ - entity - keyword
#       ^^^^^^^^ entity.name.tag.heredoc.shell
#               ^ - entity
  say what now ${foo}
# ^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
#              ^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.interpolation.parameter.shell - string
  INDENTED
#^ meta.function-call.arguments.shell meta.string.heredoc.shell - meta.tag
# ^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#         ^ - meta.function-call - meta.string - meta.tag - entity

cat <<-  'indented_without_expansions'
#^^^^^^^^ - meta.string - meta.tag
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#                                     ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^^ keyword.operator.assignment.redirection.shell
#        ^ punctuation.definition.tag.begin.shell - entity
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.heredoc.shell
#                                    ^ punctuation.definition.tag.end.shell - entity
    ${foo}
#^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
#     ^^^ - variable.other
    indented_without_expansions
#^^^ meta.function-call.arguments.shell meta.string.heredoc.shell - meta.tag
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#                              ^ - meta.function-call - meta.string - meta.tag - entity

variable=$(cat <<SETVAR
This variable
runs over multiple lines.
SETVAR
# <- meta.string.shell meta.interpolation.command.shell meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
)
# <- meta.string.shell meta.interpolation.command.shell punctuation.section.interpolation.end.shell

cat <<- "FOO"
#^^^^^^^ - meta.string - meta.tag
#       ^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#            ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^^ keyword.operator.assignment.redirection.shell
#       ^ punctuation.definition.tag.begin.shell - entity
#        ^^^ entity.name.tag.heredoc.shell
#           ^ punctuation.definition.tag.end.shell - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
  FOO
# ^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#    ^ - meta.function-call - meta.string - meta.tag - entity

cat <<- \FOO
#^^^^^^^ - meta.string - meta.tag
#       ^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#           ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^^ keyword.operator.assignment.redirection.shell
#       ^ punctuation.definition.tag.shell - entity
#        ^^^ entity.name.tag.heredoc.shell
#           ^ - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
  FOO
# ^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#    ^ - meta.function-call - meta.string - meta.tag - entity

cat << "FOO"
#^^^^^^ - meta.string - meta.tag
#      ^^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#           ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#      ^ punctuation.definition.tag.begin.shell - entity
#       ^^^ entity.name.tag.heredoc.shell
#          ^ punctuation.definition.tag.end.shell - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
FOO
# <- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#  ^ - meta.function-call - meta.string - meta.tag - entity

cat << \FOO
#^^^^^^ - meta.string - meta.tag
#      ^^^^ meta.string.heredoc.shell meta.tag.heredoc.shell - string.unquoted.heredoc
#          ^ meta.string.heredoc.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#      ^ punctuation.definition.tag.shell - entity
#       ^^^ entity.name.tag.heredoc.shell
#          ^ - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
FOO
# <- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#  ^ - meta.function-call - meta.string - meta.tag - entity

sed 's/^    //' << EOF >$dummy.c
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell - string.unquoted.heredoc
#   ^^^^^^^^^^^ meta.string.shell string.quoted.single.shell
#              ^^^^ - meta.string
#                  ^^^ meta.string.heredoc.shell meta.tag.heredoc.shell
#                     ^^^^^^^^^^ meta.string.heredoc.shell - meta.tag
#               ^^ keyword.operator.assignment.redirection.shell
#                  ^^^ entity.name.tag.heredoc.shell
#                      ^ keyword.operator.assignment.redirection.shell
#                       ^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
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
# <- meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.tag.heredoc.shell entity.name.tag.heredoc.shell
#  ^ - meta.function-call - meta.string - meta.tag - entity


####################################################################
# Misc statement tests                                             #
####################################################################

function clk {
    typeset base=/sys/class/drm/card0/device
    #<- keyword.declaration.variable.shell
    #       ^^^^ variable.other.readwrite.shell
    #           ^ keyword.operator.assignment.shell
    #            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.unquoted.shell
    [[ -r ${base}/hwmon/hwmon0/temp1_input && -r ${base}/power_profile ]] || return 1
    # <- support.function.double-brace.begin.shell
    #                                                                  ^^ support.function.double-brace.end.shell
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
    # <- meta.function keyword.control.conditional.end.shell
}
# <- punctuation.section.compound.end.shell

if   [ "$*" = '*' ]
then remotefilter="cat"
#               ^ variable.other.readwrite.shell
#                ^ keyword.operator.assignment.shell
else remotefilter="grep"
#               ^ variable.other.readwrite.shell
#                 ^ meta.string.shell string.quoted.double.shell punctuation.definition.string.begin.shell
     for glob in "$@"
     do  glob=$(
     # ^^^^^^^ - meta.string - meta.interpolation
     #        ^^^ meta.string.shell meta.interpolation.command.shell
     #      ^ variable.other.readwrite.shell
     #       ^ keyword.operator.assignment.shell
     #        ^ punctuation.definition.variable.shell
     #         ^ punctuation.section.interpolation.begin.shell
           echo "$glob" |
           sed -e 's@\*@[^ ]*@g' -e 's/\?/[^ ]/g'
           # <- meta.string.shell meta.interpolation.command.shell meta.function-call.identifier.shell variable.function.shell - string
         )
         # <- meta.string.shell meta.interpolation.command.shell punctuation.section.interpolation.end.shell - string
         remotefilter="$remotefilter -e '^$glob ' -e ' $glob\$'"
         #          ^ variable.other.readwrite.shell
         #           ^ keyword.operator.assignment.shell
     done
     # <- keyword.control.loop.end.shell
fi
# <- keyword.control.conditional.end.shell
