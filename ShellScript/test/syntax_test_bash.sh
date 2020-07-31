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
#^^^^^^^^^^^ comment.line.number-sign.shell - punctuation
#           ^^ comment.line.number-sign.shell punctuation.separator.continuation.line.shell
  command.
#^^^^^^^^^^ - comment.line

# This is a \
  comment.
#^^^^^^^^^^ comment.line.number-sign.shell - punctuation

# \\ \. \a \b \f \n \r
#^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell - constant.character.escape


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

foo | `# get quarks ` \
# <- variable.function
#   ^ keyword.operator.logical.pipe
#     ^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                    ^^^ - meta.interpolation
#     ^ punctuation.section.interpolation.begin.shell
#      ^^^^^^^^^^^^^ comment.line.number-sign
#                   ^ punctuation.section.interpolation.end.shell - comment
#                     ^^ punctuation.separator.continuation.line - comment

foo | ` # get quarks ` \
bar   ` # important; this and that ` "${USELESS_TEXT}" | ` # match text` \
# <- meta.function-call.arguments
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                   ^^^^^^^^^^^^^^^^^^^^^ - meta.interpolation.command
#                                                        ^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#     ^^ - comment
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign
#                                  ^^^^^^^^^^^^^^^^^^^^^^^^ - comment
#                                                          ^^^^^^^^^^^^ comment.line.number-sign
#                                                                      ^^^ - comment
#     ^ punctuation.section.interpolation.begin.shell
#                                  ^ punctuation.section.interpolation.end.shell
#                                    ^ meta.string string.quoted.double punctuation.definition.string.begin
#                                     ^^^^^^^^^^^^^^^ meta.string meta.interpolation.parameter.shell - string
#                                                    ^ meta.string string.quoted.double punctuation.definition.string.end
#                                                      ^ keyword.operator.logical.pipe
#                                                        ^ punctuation.section.interpolation.begin.shell
#                                                                        ^^ punctuation.separator.continuation.line

randomname argument --opt1 --opt2 -x -y &>/dev/null
# <- meta.function-call.identifier.shell variable.function - meta.function-call.arguments
#^^^^^^^^^ meta.function-call.identifier.shell variable.function.shell - meta.function-call.arguments
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
# <- meta.function-call.identifier.shell variable.function
#^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#     ^^^ meta.function-call.identifier.shell meta.string.shell - meta.interpolation
#        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#^^^^^^^^ - variable.function
#^^ punctuation.section.interpolation.begin.shell
#  ^^ variable.other.readwrite
#    ^ punctuation.section.interpolation.end.shell
#     ^ string.quoted.double punctuation.definition.string.begin
#      ^ string.quoted.double
#       ^ string.quoted.double punctuation.definition.string.end
e=e
${e}'ch'o hello, world!
# <- meta.function-call.identifier.shell - variable.function
#^^^^^^^^ meta.function-call.identifier.shell
#        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# <- punctuation.section.interpolation.begin.shell
#^^^^^^^ - variable.function
#       ^ variable.function.shell
#^ punctuation.section.interpolation.begin.shell
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
set -e=10
#   ^ variable.parameter.option punctuation
#    ^ variable.parameter.option - punctuation
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
#            ^^^^^^^^ meta.interpolation.brace.shell

shift 2 -- 
#       ^^ - keyword

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

foo -e =Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ punctuation.definition.parameter.shell
#   ^^ variable.parameter.option.shell
#      ^ - keyword.operator

foo -e=Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^ meta.function-call.arguments.shell
#   ^ punctuation.definition.parameter.shell
#   ^^ variable.parameter.option.shell
#     ^ keyword.operator.assignment.shell

foo -$e=Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ punctuation.definition.parameter.shell
#   ^^^ variable.parameter.option.shell
#    ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell

python foo.py --option=value --other-option
#^^^^^ meta.function-call.identifier.shell variable.function.shell
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                          ^ - meta.function-call
#             ^^ punctuation.definition.parameter.shell
#             ^^^^^^^^ variable.parameter.option.shell
#                     ^ keyword.operator.assignment.shell
#                            ^^^^^^^^^^^^^^ variable.parameter.option.shell
#                            ^^ punctuation.definition.parameter.shell

git log --format="%h git has this pattern, too"
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                              ^ - meta.function-call
#       ^^ punctuation.definition.parameter.shell
#       ^^^^^^^^ variable.parameter.option.shell
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.double.shell

{cmd} -o --option -- -o
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^ meta.function-call.identifier.shell variable.function.shell
#     ^^ variable.parameter.option.shell
#       ^ - variable
#        ^^^^^^^^ variable.parameter.option.shell
#                 ^^ keyword.operator.end-of-options.shell
#                    ^^ - variable

[cmd] -o
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^ meta.function-call.identifier.shell variable.function.shell
#    ^^^ meta.function-call.arguments.shell

+cmd -o
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell
#   ^^^ meta.function-call.arguments.shell
-cmd -o
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell
#   ^^^ meta.function-call.arguments.shell

####################################################################
# Variable assignments                                             #
####################################################################

x= # some comment
#^ keyword.operator.assignment.shell
# ^ - string.unquoted
#  ^^^^^^^^^^^^^^^ comment.line.number-sign.shell
x= & pwd
#^ keyword.operator.assignment.shell
# ^ - string.unquoted
#  ^ keyword.operator.logical.job.shell
#    ^^^ support.function
x=a
# <- variable.other.readwrite
#^ keyword.operator.assignment.shell
# ^ meta.string string.unquoted
x=a # some comment
#^ keyword.operator.assignment.shell
#  ^ - string.unquoted
x=a#not-a-comment
#^ keyword.operator.assignment.shell
#  ^ meta.string string.unquoted - comment
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
# ^ meta.string string.unquoted
#  ^ - string.unquoted
#    ^ keyword.operator.assignment.shell
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
x=${foo} y=${baz}"asdf" pwd
#^ keyword.operator.assignment.shell
# ^^^^^^ meta.string meta.interpolation - string
#       ^^^ - meta.string - mete.interpolation - string
#          ^^^^^^ meta.string meta.interpolation - string
#                ^^^^^^ meta.string.shell string.quoted.double.shell - meta.interpolation
#                      ^^^^ - meta.string - mete.interpolation - string
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite
#      ^ punctuation.section.interpolation.end.shell
#         ^ keyword.operator.assignment.shell
#          ^^ punctuation.section.interpolation.begin.shell
#            ^^^ variable.other.readwrite
#               ^ punctuation.section.interpolation.end.shell
#                ^ punctuation.definition.string.begin
#                     ^ punctuation.definition.string.end
#                       ^^^ meta.function-call support.function
x="$(( foo++ ))"
#^ keyword.operator.assignment.shell
#  ^^^ punctuation.section.interpolation.begin.shell
#         ^^ keyword
#            ^^ punctuation.section.interpolation.end.shell

# Spaces following an assignment token means an empty string value!
x= pwd
# <- variable.other.readwrite
#^ keyword.operator.assignment
#  ^^^ meta.function-call support.function

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
#          ^^^^^ punctuation.section.interpolation.begin.shell
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
# <- - storage.modifier
#    ^ keyword.operator.assignment.shell
typeset=hello
# <- - storage.modifier
#      ^ keyword.operator.assignment.shell
declare=hello
# <- - storage.modifier
#      ^ keyword.operator.assignment.shell
local=hello
# <- - storage.modifier
#    ^ keyword.operator.assignment.shell
export=hello
# <- - storage.modifier
#     ^ keyword.operator.assignment.shell
readonly=hello
# <- - storage.modifier
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

(foo=bar)
# <- punctuation.section.compound.begin.shell
#   ^ keyword.operator.assignment
#    ^^^ meta.string string.unquoted
#       ^ punctuation.section.compound.end.shell - string-unquoted

declare -a array
array[500]=value
#^^^^ meta.variable.shell variable.other.readwrite.shell
#    ^^^^^ meta.variable.shell meta.item-access.shell - variable
#    ^ punctuation.section.item-access.begin.shell
#     ^^^ constant.numeric.integer.decimal.shell
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
#    ^^^^^ meta.variable.shell meta.item-access.shell - variable
#    ^ punctuation.section.item-access.begin.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.assignment.shell
#          ^^^ meta.string.shell string.unquoted.shell
array=($one "two" ${three} 'four' $5)
#^^^^^ - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.shell
#                                    ^ - meta.sequence
# <- variable.other.readwrite
#    ^ keyword.operator.assignment
#     ^ punctuation.section.sequence.begin
#      ^ punctuation.definition.variable
#       ^^^ variable.other.readwrite
#           ^ string.quoted.double punctuation.definition.string.begin
#            ^^^ string.quoted.double
#               ^ string.quoted.double punctuation.definition.string.end
#                 ^^ punctuation.section.interpolation.begin.shell
#                   ^^^^^ variable.other.readwrite
#                        ^ punctuation.section.interpolation.end.shell
#                          ^ string.quoted.single punctuation.definition.string.begin
#                           ^^^^ string.quoted.single
#                               ^ string.quoted.single punctuation.definition.string.end
#                                 ^ punctuation.definition.variable
#                                  ^ variable.other.readwrite
#                                   ^ punctuation.section.sequence.end
array=([foo]== ["bar"]='what' [5+10]=qux)
#^^^^^ - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.shell
#                                        ^ - meta.sequence
#    ^ keyword.operator.assignment
#     ^ punctuation.section.sequence.begin
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
#                                       ^ punctuation.section.sequence.end
array=()  # an empty array
#    ^ keyword.operator.assignment
#     ^ punctuation.section.sequence.begin
#      ^ punctuation.section.sequence.end

foo[${j}+10]="`foo`"
#<- meta.variable.shell variable.other.readwrite.shell
#^^ meta.variable.shell - meta.item-access
#  ^^^^^^^^^ meta.variable.shell meta.item-access.shell
#^^ variable.other.readwrite.shell
#  ^ punctuation.section.item-access.begin.shell
#   ^^ punctuation.section.interpolation.begin.shell
#     ^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ keyword.operator.arithmetic.shell
#        ^^ constant.numeric.integer.decimal.shell
#          ^ punctuation.section.item-access.end.shell
#           ^ keyword.operator.assignment.shell


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
#   ^ keyword.operator.regexp.quantifier.shell

%1
# <- meta.interpolation.job.shell variable.language.job.shell punctuation.definition.variable.shell
#^ meta.interpolation.job.shell variable.language.job.shell

sleep 2 & jobs
# <- meta.function-call.identifier.shell variable.function.shell
#     ^ meta.function-call.arguments
#       ^ keyword.operator
#         ^ meta.function-call support.function - meta.function-call.arguments

subdir/./myscript.sh --option arg1 arg2 -x
# <- meta.function-call.identifier.shell variable.function.shell

${foo}/${bar}/${baz}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell
#                   ^ - meta.function-call
#^^^^^ meta.interpolation.parameter.shell - variable.function
#     ^ variable.function.shell - meta.interpolation
#      ^^^^^^ meta.interpolation.parameter.shell - variable.function
#            ^ variable.function.shell - meta.interpolation
#             ^^^^^^ meta.interpolation.parameter.shell - variable.function

{
# <- punctuation.section.compound.begin.shell
  {
  # <- punctuation.section.compound.begin.shell
    foo args
    # <- meta.function-call.identifier.shell variable.function
  } 2>> "$stderr_log"
  # <- punctuation.section.compound.end.shell
  # ^ constant.numeric.integer.decimal.file-descriptor - variable.function
} 1>> "$stdout_log"
# <- punctuation.section.compound.end.shell
# ^ constant.numeric.integer.decimal.file-descriptor - variable.function


####################################################################
# 4.2 Bash Builtin Commands                                        #
####################################################################

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
declare             # comment
#<- meta.function-call.identifier.shell storage.modifier.shell
#^^^^^^ meta.function-call.identifier.shell storage.modifier.shell
#      ^ - meta.function-call
#                   ^^^^^^^^^^ comment.line.number-sign.shell
declare foo         # 'foo' is a variable name
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function-call
# <- storage.modifier
#          ^ - variable.other.readwrite
#                  ^ - meta.function-call
declare -A          # this is a comment
#^^^^^^ meta.function-call.identifier.shell
#      ^^^ meta.function-call.arguments.shell
#         ^ - meta.function-call
#                   ^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
declare -A foo bar  # 'foo' and 'bar' are variable names
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^^^^^^^^ meta.function-call.arguments.shell
#                 ^ - meta.function-call
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
declare ret; bar=foo # comment
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function-call
# <- storage.modifier
#          ^ keyword.operator.logical.continue.shell
#               ^ keyword.operator.assignment.shell
#                ^^^ meta.string.shell string.unquoted.shell
#                   ^ - meta.string - string - comment
#                    ^^^^^^^^^^ comment.line.number-sign.shell
declare ret ;
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function-call
# <- storage.modifier
#           ^ keyword.operator
declare ret&
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function-call
# <- storage.modifier
#          ^ keyword.operator
declare ret &
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function-call
# <- storage.modifier
#           ^ keyword.operator
declare bar=\
foo # comment
# <- meta.function-call.arguments.shell meta.string.shell string.unquoted.shell
#^^ meta.function-call.arguments.shell meta.string.shell string.unquoted.shell
#  ^ - meta.function
#   ^^^^^^^^^^ comment.line.number-sign.shell
declare bar=\
(foo) # comment
#^^^^ meta.function-call.arguments.shell
#    ^ - meta.function
# <- punctuation.section.sequence.begin.shell
#   ^ punctuation.section.sequence.end.shell
#     ^^^^^^^^^^ comment.line.number-sign.shell
declare -a owners=(
    # dogs
#   ^^^^^^^ meta.function-call.arguments.shell meta.sequence.shell comment.line.number-sign.shell
    [susan]=labrador
#   ^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.sequence.shell
#   ^^^^^^^ meta.brackets.shell
#          ^ keyword.operator.assignment.shell
    # cats
#   ^^^^^^^ meta.function-call.arguments.shell meta.sequence.shell comment.line.number-sign.shell
    [terry]=tabby
#   ^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.sequence.shell
#   ^^^^^^^ meta.brackets.shell
#          ^ keyword.operator.assignment.shell
)

printFunction "$variableString1" "$(declare -p variableArray)"
#             ^ meta.string string.quoted.double punctuation.definition.string.begin
#              ^^^^^^^^^^^^^^^^ meta.string meta.interpolation.parameter.shell - string
#                              ^ meta.string string.quoted.double punctuation.definition.string.end
#                                ^ meta.string string.quoted.double punctuation.definition.string.begin
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string meta.interpolation.command.shell - string
#                                                            ^ meta.string string.quoted.double punctuation.definition.string.end
#                                  ^ punctuation.section.interpolation.begin.shell
#                                   ^^^^^^^ storage.modifier
#                                           ^^ variable.parameter.option
#                                              ^^^^^^^^^^^^^ variable.other.readwrite
#                                                           ^ punctuation.section.interpolation.end.shell

# <- - variable.other
printFunction "$variableString1" "`declare -p variableArray`"
#             ^ meta.string string.quoted.double punctuation.definition.string.begin
#              ^^^^^^^^^^^^^^^^ meta.string meta.interpolation.parameter.shell - string
#                              ^ meta.string string.quoted.double punctuation.definition.string.end
#                                ^ meta.string string.quoted.double punctuation.definition.string.begin
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string meta.interpolation.command.shell - string
#                                                           ^ meta.string string.quoted.double punctuation.definition.string.end
#                                 ^ punctuation.section.interpolation.begin.shell
#                                  ^^^^^^^ storage.modifier
#                                          ^^ variable.parameter.option
#                                             ^^^^^^^^^^^^^ variable.other.readwrite
#                                                          ^ punctuation.section.interpolation.end.shell
foo=`readonly x=5`
# <- variable.other.readwrite
#   ^ meta.interpolation.command.shell punctuation.section.interpolation.begin.shell
#    ^^^^^^^^ meta.interpolation.command.shell storage.modifier
#             ^ meta.interpolation.command.shell variable.other.readwrite
#              ^ meta.interpolation.command.shell keyword.operator.assignment
#               ^ meta.interpolation.command.shell string.unquoted
#                ^ meta.interpolation.command.shell punctuation.section.interpolation.end.shell

# <- - meta.interpolation.command.shell
export foo          # 'foo' is a variable name
#^^^^^^^^^ meta.function-call
# <- storage.modifier
#      ^^^ variable.other.readwrite
#                  ^ - meta.function-call
export foo bar      # 'foo' and 'bar' are variable names
# <- storage.modifier
#      ^^^ variable.other.readwrite
#         ^ - variable
#          ^^^ variable.other.readwrite
#                  ^ - meta.function-call
export foo='bar'    # 'foo' is a variable name
# <- storage.modifier
#^^^^^^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
#      ^^^ variable.other.readwrite
#         ^ keyword.operator.assignment
#          ^^^^^ meta.string string.quoted.single
#          ^ punctuation.definition.string.begin
#              ^ punctuation.definition.string.end
local foo bar       # 'foo' and 'bar' are variable names
# <- storage.modifier
#    ^ - variable
#     ^^^ variable.other.readwrite
#        ^ - variable
#         ^^^ variable.other.readwrite
#                  ^ - meta.function-call
local foo bar='baz' # 'foo' and 'bar' are variable names
# <- storage.modifier
#    ^ - variable
#     ^^^ variable.other.readwrite
#        ^ - variable
#         ^^^ variable.other.readwrite
#            ^ keyword.operator.assignment
#             ^^^^^ meta.string string.quoted.single
#             ^ punctuation.definition.string.begin
#                 ^ punctuation.definition.string.end
#                  ^ - string
#^^^^^^^^^^^^^^^^^^ meta.function-call
#                  ^ - meta.function-call
local pid="$(cat "$PIDFILE" 2>/dev/null)"
#     ^^^ - variable.parameter
local-pid
#^^^^ - storage.modifier
#     ^^^ - variable.parameter
local-
#^^^^^ - storage.modifier

readonly foo        # 'foo' is a variable name
# <- meta.function-call.identifier.shell storage.modifier.shell
#^^^^^^^ meta.function-call.identifier.shell
#       ^^^^ meta.function-call.arguments.shell
#           ^ - meta.function-call
#^^^^^^^ storage.modifier.shell
#       ^ - storage - variable
#        ^^^ variable.other.readwrite
#           ^ - variable
typeset foo         # 'foo' is a variable name
# <- meta.function-call.identifier.shell storage.modifier.shell
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function-call
#^^^^^^ storage.modifier.shell
#      ^ - storage - variable
#       ^^^ variable.other.readwrite
#          ^ - variable
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

unset
unset foo bar ba${z}  # 'foo' and 'bar' are variable names
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                   ^ - meta.function-call
#^^^^ support.function.unset.shell
#    ^ - meta.variable - support - variable
#     ^^^ meta.variable.shell variable.other.readwrite.shell
#        ^ - meta.variable - variable
#         ^^^ meta.variable.shell variable.other.readwrite.shell
#            ^ - meta.variable - variable
#             ^^ meta.variable.shell - meta.interpolation
#               ^^^^ meta.variable.shell meta.interpolation.parameter.shell
#                   ^ - meta.variable - variable
#                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

unset -n
unset -nfv foo
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^ meta.function-call.arguments.shell
#             ^ - meta.function-call
#^^^^ support.function.unset.shell
#     ^^^^ variable.parameter.option.shell
#         ^ - variable
#          ^^^ variable.function.shell
#             ^ - variable

unset -f -n -v foo bar; unset -vn foo 2>& /dev/null
# <- meta.function-call.identifier.shell support.function.unset.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                     ^^ - meta.function-call
#                       ^^^^^ meta.function-call.identifier.shell
#                            ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                  ^ - meta.function-call
#     ^^ variable.parameter.option.shell
#        ^^ variable.parameter.option.shell
#           ^^ variable.parameter.option.shell
#             ^ - variable
#              ^^^ meta.variable.shell variable.function.shell
#                 ^ - variable
#                  ^^^ meta.variable.shell variable.function.shell
#                     ^ keyword.operator.logical.continue.shell
#                       ^^^^^ support.function.unset.shell
#                            ^ - support - variable
#                             ^^^ variable.parameter.option.shell
#                                ^ - variable
#                                 ^^^ meta.variable.shell variable.other.readwrite.shell
#                                    ^ - variable
#                                     ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                      ^^ keyword.operator.assignment.redirection.shell

unset-
# <- - support.function
unset+
# <- - support.function
unset()
# <- - support.function
unset[]
# <- - support.function
unset=
# <- - support.function
unset+=
# <- - support.function
unset-=
# <- - support.function


####################################################################
# Strings and interpolation in parameter expansion                 #
####################################################################

${foo:=bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
# <- - variable.other.readwrite
# ^^^ variable.other.readwrite.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^^ - string.unquoted
#         ^ punctuation.section.interpolation.end.shell

: ${foo:-bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo:0:8}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substring.begin.shell
#       ^ constant.numeric.integer.decimal.shell - variable
#        ^ keyword.operator.substring.end.shell
#         ^ constant.numeric.integer.decimal.shell - variable
#          ^ punctuation.section.interpolation.end.shell

: ${@:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ constant.numeric.integer.decimal.shell
#      ^ keyword.operator.substring.end.shell
#       ^ constant.numeric.integer.decimal.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^ - variable.language
#    ^ keyword.operator.substring.begin.shell
#     ^ constant.numeric.integer.decimal.shell
#      ^ keyword.operator.substring.end.shell
#       ^ constant.numeric.integer.decimal.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo:='bar'}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.string.begin.shell
#        ^^^^^ meta.string.shell string.quoted.single.shell
#            ^ punctuation.definition.string.end.shell
#             ^ punctuation.section.interpolation.end.shell

: ${foo/#bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo/%bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo//bar/baz}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.substitution.shell
#       ^ variable.parameter.switch.shell
#           ^ keyword.operator.substitution.shell
#               ^ punctuation.section.interpolation.end.shell

: ${#*}
# ^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.arithmetic.shell
#    ^ variable.language.shell
#     ^ punctuation.section.interpolation.end.shell
: ${#@}
# ^^^^^ meta.interpolation.parameter.shell 
# ^^ punctuation.section.interpolation.begin.shell
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
# ^^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.begin.shell
#            ^^ punctuation.section.interpolation.end.shell

: ${foo:=$( bar )}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.command.shell
#                ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^^ punctuation.section.interpolation.begin.shell
#               ^^ punctuation.section.interpolation.end.shell

: ${foo:=$(( 1 + 1 ))}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.arithmetic.shell
#                    ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ punctuation.section.interpolation.begin.shell
#            ^ constant.numeric.integer.decimal.shell
#              ^ keyword.operator.arithmetic.shell
#                ^ constant.numeric.integer.decimal.shell
#                  ^^^ punctuation.section.interpolation.end.shell

: ${foo:=$bar}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#            ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
# ^^ punctuation.section.interpolation.begin.shell
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
# ^^ punctuation.section.interpolation.begin.shell
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
#   ^ keyword
: ${#foo}
#   ^ keyword

: ${foo//a\/b/c/d}
#      ^ keyword
#       ^ variable.parameter.switch
#         ^^ constant.character.escape
#            ^ keyword
#              ^ - keyword


####################################################################
# Braces in parameter expansion                                    #
####################################################################

: ${foo//foo\}foo\/foo/foo}
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^^ punctuation.section.interpolation.begin.shell
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
# ^^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#        ^ punctuation.definition.string.begin.shell
#         ^^ punctuation.section.interpolation.begin.shell
#           ^^^ variable.other.readwrite.shell
#              ^ punctuation.section.interpolation.end.shell
#               ^^^^^ string.quoted.double.shell
#                   ^ punctuation.definition.string.end.shell
#                    ^ punctuation.section.interpolation.end.shell

# Sublime bug fix: "
#                  ^ comment.line.number-sign

${!varprefix*}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
# ^ keyword.operator.indirection.shell
#           ^ variable.language.shell
#            ^ punctuation.section.interpolation.end.shell

${!varprefix@}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
# ^ keyword.operator.indirection.shell
#           ^ variable.language.shell
#            ^ punctuation.section.interpolation.end.shell

${var#Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#    ^ keyword.operator.expansion.shell
#            ^ punctuation.section.interpolation.end.shell

${var##Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#    ^^ keyword.operator.expansion.shell
#             ^ punctuation.section.interpolation.end.shell

${var###Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#    ^^ keyword.operator.expansion.shell
#      ^ - keyword.operator
#              ^ punctuation.section.interpolation.end.shell

: ${foo# #} # hello
# ^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

${var%Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#    ^ keyword.operator.expansion.shell
#            ^ punctuation.section.interpolation.end.shell

${var%%Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#    ^^ keyword.operator.expansion.shell
#             ^ punctuation.section.interpolation.end.shell

${var%%%Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
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
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//#/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//!/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//:/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo//@/}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch.shell
#      ^ - keyword
#       ^ keyword.operator.substitution.shell
#        ^ punctuation.section.interpolation.end.shell

${foo#} # "#" is not a operator here
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ - keyword.operator
#     ^ punctuation.section.interpolation.end.shell

${foo!} # "!" is not a operator here
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ - keyword.operator
#     ^ punctuation.section.interpolation.end.shell

${var:pos:len}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#             ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substring.begin.shell
#        ^ keyword.operator.substring.end.shell
#            ^ punctuation.section.interpolation.end.shell

${foo//a\/b/c/d}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#               ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.substitution.shell
#     ^ variable.parameter.switch
#       ^^ constant.character.escape
#          ^ keyword.operator.substitution.shell
#            ^ - keyword.operator
#              ^ punctuation.section.interpolation.end.shell

${foo^}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.expansion.shell
#     ^ punctuation.section.interpolation.end.shell

${foo,}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#      ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.expansion.shell
#     ^ punctuation.section.interpolation.end.shell

${foo^^}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#       ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#      ^ punctuation.section.interpolation.end.shell

${foo,,}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#       ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#      ^ punctuation.section.interpolation.end.shell

${foo,,,Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#               ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#      ^ - keyword
#              ^ punctuation.section.interpolation.end.shell

${foo,,Pattern}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#              ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.expansion.shell
#             ^ punctuation.section.interpolation.end.shell

${foo-bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.end.shell

${foo:-bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#          ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.assignment.shell
#         ^ punctuation.section.interpolation.end.shell

${foo+bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.end.shell

${foo:+bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#          ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.assignment.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo=bar}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
#           ^ - meta.interpolation
# ^^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.assignment.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo:=bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#            ^ - meta.interpolation
# ^^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.assignment.shell
#           ^ punctuation.section.interpolation.end.shell

${foo?bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#         ^ - meta.function-call - meta.interpolation
#    ^ keyword.operator.assignment.shell
#        ^ punctuation.section.interpolation.end.shell

${foo:?bar}
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#          ^ - meta.function-call - meta.interpolation
#    ^^ keyword.operator.assignment.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo}@
#       ^ - variable.language

: ${foo}#
#       ^ - variable.language

echo "Url: 'postgres://root:$DB_PASSWORD@$IP:$PORT/db'"
#    ^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.quoted.double - meta.interpolation - variable
#                           ^ meta.string meta.interpolation.parameter.shell punctuation.definition.variable - string
#                            ^^^^^^^^^^^ meta.string meta.interpolation.parameter.shell variable.other.readwrite - string
#                                       ^ meta.string string.quoted.double - meta.interpolation - variable
#                                        ^ meta.string meta.interpolation.parameter.shell punctuation.definition.variable - string
#                                         ^^ meta.string meta.interpolation.parameter.shell variable.other.readwrite
#                                           ^ meta.string string.quoted.double - meta.interpolation - variable
#                                            ^ meta.string meta.interpolation.parameter.shell punctuation.definition.variable
#                                             ^^^^ meta.string meta.interpolation.parameter.shell variable.other.readwrite
#                                                 ^^^^^ meta.string string.quoted.double - meta.interpolation - variable
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
#                           ^ - punctuation
#                            ^ keyword.operator.logical.not.shell
#                             ^ - punctuation
#                                     ^^ - punctuation
#                                       ^ keyword.operator.regexp.quantifier.shell
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
#                          ^ - punctuation
#                           ^ keyword.operator.logical.not.shell
#                            ^ - punctuation
#                                    ^^ - punctuation
#                                      ^ keyword.operator.regexp.quantifier.shell
CURPOS=${CURPOS#*[}
#                ^ - keyword.control.regexp
echo "${ROW#*[}"
#            ^ - keyword.control.regexp
echo *
#    ^ keyword.operator.regexp.quantifier
echo {a,g*}
#    ^^^^^^ meta.function-call.arguments.shell meta.interpolation.brace.shell
#    ^ punctuation.section.interpolation.begin.shell
#      ^ punctuation.separator.sequence.shell
#        ^ keyword.operator.regexp.quantifier.shell
#         ^ punctuation.section.interpolation.end.shell
echo ca{${x/z/t}" "{legs,f${o//a/o}d,f${o:0:1}t},r" "{tires,wh${o//a/e}ls}}
#      ^^^ punctuation.section.interpolation.begin.shell
#          ^ keyword.operator.substitution.shell - variable.other.readwrite
#            ^ keyword.operator.substitution.shell
#              ^ punctuation.section.interpolation.end.shell
#                ^ string.quoted.double.shell
#                  ^ punctuation.section.interpolation.begin.shell
#                       ^ punctuation.separator.sequence.shell
#                         ^^ punctuation.section.interpolation.begin.shell
#                           ^ variable.other.readwrite.shell
#                                 ^ punctuation.section.interpolation.end.shell
#                                   ^ punctuation.separator.sequence.shell
#                                     ^^ punctuation.section.interpolation.begin.shell
#                                        ^ keyword.operator.substring.begin.shell - variable.other.readwrite
#                                          ^ keyword.operator.substring.end.shell
#                                            ^ punctuation.section.interpolation.end.shell
#                                              ^ punctuation.section.interpolation.end.shell
#                                               ^ punctuation.separator.sequence.shell
#                                                 ^^^ string.quoted.double.shell
#                                                    ^ punctuation.section.interpolation.begin.shell
#                                                             ^^ punctuation.section.interpolation.begin.shell
#                                                                        ^^ punctuation.section.interpolation.end.shell
echo [^:]*
#   ^^^^^^ meta.function-call.arguments.shell
#    ^ keyword.control.regexp.set.begin.shell
#     ^ keyword.operator.logical.not.shell
#       ^ keyword.control.regexp.set.end.shell
#        ^ keyword.operator.regexp.quantifier.shell
charclass=\}ower
#         ^^ constant.character.escape
echo *(g[[:${charclass/\}/l}:]]*)
#   ^^ meta.function-call.arguments.shell - meta.group
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.shell
#                                ^ - meta.function-call - meta.group
#    ^ keyword.operator.regexp.quantifier.shell
#     ^ punctuation.section.group.begin.shell
#       ^^ keyword.control.regexp.set.begin.shell
#          ^^ punctuation.section.interpolation.begin.shell
#            ^^^^^^^^^ variable.other.readwrite.shell
#                     ^ keyword.operator.substitution.shell - variable.other.readwrite
#                      ^^ constant.character.escape.shell
#                        ^ keyword.operator.substitution.shell
#                          ^ punctuation.section.interpolation.end.shell
#                            ^^ keyword.control.regexp.set.end.shell
#                              ^ keyword.operator.regexp.quantifier.shell
#                               ^ punctuation.section.group.end.shell
echo ?([[:alpha:]]|[[:digit:]])*
#   ^^ meta.function-call.arguments.shell - meta.group
#     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.shell
#                              ^ meta.function-call.arguments.shell - meta.group
#                               ^ - meta.function-call - meta.group
#    ^ keyword.operator.regexp.quantifier.shell
#     ^ punctuation.section.group.begin.shell
#                 ^ keyword.operator.logical.or.shell
#                             ^ punctuation.section.group.end.shell
#                              ^ keyword.operator.regexp.quantifier.shell
echo @(foo*)*
#   ^^ meta.function-call.arguments.shell - meta.group
#     ^^^^^^ meta.function-call.arguments.shell meta.group.shell
#           ^ meta.function-call.arguments.shell - meta.group
#            ^ - meta.function-call - meta.group
#    ^ keyword.operator.regexp.quantifier.shell
#     ^ punctuation.section.group.begin.shell
#         ^ keyword.operator.regexp.quantifier.shell
#          ^ punctuation.section.group.end.shell
#           ^ keyword.operator.regexp.quantifier.shell
echo +(bar|qux) | wc
#   ^^ meta.function-call.arguments.shell - meta.group
#     ^^^^^^^^^ meta.function-call.arguments.shell meta.group.shell
#              ^ - meta.function-call - meta.group
#    ^ keyword.operator.regexp.quantifier.shell
#     ^ punctuation.section.group.begin.shell
#         ^ keyword.operator.logical.or.shell
#             ^ punctuation.section.group.end.shell
#               ^ keyword.operator.logical.pipe.shell
[[ a == [abc[]* ]]
#    ^^ keyword.operator.comparison.shell
#       ^ keyword.control.regexp.set.begin.shell
#           ^ - keyword.control
#            ^ keyword.control.regexp.set.end.shell
#             ^ keyword.operator.regexp.quantifier.shell
#               ^^ support.function
: ${foo//[abc[]/x}
#            ^ - keyword.control
#                ^ punctuation.section.interpolation.end.shell
if [[ ' foobar' == [\ ]foo* ]]; then
  #                ^ keyword.control.regexp.set.begin.shell
  #                 ^^ constant.character.escape.shell
  #                   ^ keyword.control.regexp.set.end.shell
  #                         ^^ support.function.double-brace.end.shell
  :
fi


####################################################################
# 3.2.5 Coprocesses                                                #
####################################################################

coproc
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
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
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell - meta.function-call
#      ^^^ meta.coproc.command.shell meta.function-call.identifier.shell
#         ^^^^^^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#                  ^ - meta.coproc - meta.function-call
#^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#      ^^^ variable.function.shell

coproc ls thisfiledoesntexist; read; 2>&1
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell
#      ^^ meta.coproc.command.shell meta.function-call.identifier.shell
#        ^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#                            ^^ meta.coproc.command.shell - meta.function-call.identifier.shell
#                              ^^^^ meta.coproc.command.shell meta.function-call.identifier.shell
#                                  ^^^^^^ meta.coproc.command.shell - meta.function-call.identifier.shell
#                                        ^ - meta.coproc
#^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#      ^^ variable.function.shell
#                            ^ keyword.operator.logical.continue.shell
#                              ^^^^ support.function.read.shell
#                                  ^ keyword.operator.logical.continue.shell
#                                    ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                     ^^ keyword.operator.assignment.redirection.shell
#                                       ^ constant.numeric.integer.decimal.file-descriptor.shell

coproc awk '{print "foo" $0;fflush()}'
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^ meta.coproc.command.shell
#      ^^^ meta.coproc.command.shell meta.function-call.identifier.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.function-call.arguments.shell
#                                     ^ - meta.coproc - meta.function-call
#^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#      ^^^ variable.function.shell
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell string.quoted.single.shell
#          ^ punctuation.definition.string.begin.shell
#                                    ^ punctuation.definition.string.end.shell

coproc { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
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
#^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#      ^ punctuation.section.compound.begin.shell
#        ^^ variable.function.shell
#                              ^ keyword.operator.logical.continue.shell
#                                ^^^^ support.function.read.shell
#                                    ^ keyword.operator.logical.continue.shell
#                                      ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                       ^^ keyword.operator.assignment.redirection.shell
#                                         ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                           ^ punctuation.section.compound.end.shell
#                                             ^ keyword.operator.logical.pipe.shell
#                                               ^^^ variable.function.shell

coproc myls { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^^^^^^ meta.coproc.identifier.shell - meta.compound
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.compound.shell
#                                                 ^^^ - meta.function-call
#                                                    ^^^ meta.function-call.identifier.shell
#^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#           ^ punctuation.section.compound.begin.shell
#             ^^ variable.function.shell
#                                   ^ keyword.operator.logical.continue.shell
#                                     ^^^^ support.function.read.shell
#                                         ^ keyword.operator.logical.continue.shell
#                                           ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                            ^^ keyword.operator.assignment.redirection.shell
#                                              ^ constant.numeric.integer.decimal.file-descriptor.shell
#                                                ^ punctuation.section.compound.end.shell
#                                                  ^ keyword.operator.logical.pipe.shell
#                                                    ^^^ variable.function.shell

{ coproc tee { tee logfile ;} >&3 ;} 3>&1
# <- meta.compound.shell punctuation.section.compound.begin.shell
# ^^^^^^ meta.compound.shell meta.coproc.shell
#       ^^^^^ meta.compound.shell meta.coproc.identifier.shell
#            ^^^^^^^^^^^^^^^^ meta.compound.shell meta.coproc.command.shell meta.compound.shell
#                            ^^^^ meta.compound.shell meta.coproc.shell - meta.compound meta.compound
#                                ^^^ meta.compound.shell - meta.coproc
#                                   ^^^^^ meta.compound.arguments.shell - meta.coproc - meta.function-call
# ^^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#        ^^^ entity.name.coproc.shell
#            ^ punctuation.section.compound.begin.shell
#              ^^^ variable.function.shell
#                           ^ punctuation.section.compound.end.shell
#                             ^^ keyword.operator.assignment.redirection
#                               ^ constant.numeric.integer.decimal.file-descriptor
#                                  ^ punctuation.section.compound.end.shell
#                                    ^ constant.numeric.integer.decimal.file-descriptor
#                                     ^^ keyword.operator.assignment.redirection
#                                       ^ constant.numeric.integer.decimal.file-descriptor

coproc foobar {
# <- meta.coproc.shell storage.type.coproc.shell keyword.declaration.coproc.shell
#^^^^^ meta.coproc.shell
#     ^^^^^^^^ meta.coproc.identifier.shell
#             ^^ meta.coproc.command.shell meta.compound.shell
#^^^^^ storage.type.coproc.shell keyword.declaration.coproc.shell
#      ^^^^^^ entity.name.coproc.shell
#             ^ punctuation.section.compound.begin.shell
    read
#^^^^^^^^ meta.coproc.command.shell meta.compound.shell
#   ^^^^ meta.coproc.command.shell meta.compound.shell meta.function-call.identifier.shell support.function.read.shell
}
# <- meta.coproc.command.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta


####################################################################
# Bash Numeric Constants                                           #
####################################################################

(( 0 ))
# ^ - meta.number - constant
#  ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#   ^ - meta.number - constant

(( 0 1 2 3 4 5 6 7 8 9))
#^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
# ^ - meta.number - constant
#  ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#   ^ - meta.number - constant
#    ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#     ^ - meta.number - constant
#      ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#       ^ - meta.number - constant
#        ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#         ^ - meta.number - constant
#          ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#           ^ - meta.number - constant
#            ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#             ^ - meta.number - constant
#              ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#               ^ - meta.number - constant
#                ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#                 ^ - meta.number - constant
#                  ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#                   ^ - meta.number - constant
#                    ^ meta.number.value.shell constant.numeric.integer.decimal.shell
#                     ^ - meta.number - constant

(( 012345670802 ))
#^^^^^^^^^^^^^^^^^ meta.arithmetic.shell
#  ^ meta.number.base.shell constant.numeric.integer.octal.shell
#   ^^^^^^^^ meta.number.value.shell constant.numeric.integer.octal.shell
#           ^^^ - meta.number - constant

(( 0x ))
# ^ - meta.number - constant
#  ^^ meta.number.base.shell constant.numeric.integer.hexadecimal.shell
#    ^ - meta.number - constant

(( 0xDEADBEEF 0xdeadbeef 0x1234567890abcdefg ))
# ^ - meta.number - constant
#  ^^ meta.number.base.shell constant.numeric.integer.hexadecimal.shell
#    ^^^^^^^^ meta.number.value.shell constant.numeric.integer.hexadecimal.shell
#            ^ - meta.number - constant
#             ^^ meta.number.base.shell constant.numeric.integer.hexadecimal.shell
#               ^^^^^^^^ meta.number.value.shell constant.numeric.integer.hexadecimal.shell
#                       ^ - meta.number - constant
#                        ^^ meta.number.base.shell constant.numeric.integer.hexadecimal.shell
#                          ^^^^^^^^^^^^^^^^ meta.number.value.shell constant.numeric.integer.hexadecimal.shell
#                                          ^^^^ - meta.number - constant

(( 64#123@_ ))
#  ^^^ meta.number.base.shell constant.numeric.integer.other.shell
#     ^^^^^ meta.number.value.shell constant.numeric.integer.other.shell


####################################################################
# Misc operators                                                   #
####################################################################

(( a=b, a*=b, a/=b, a%=b, a+=b, a-=b, a<<=b, a>>=b, a&=b, a^=b, a|=b ))
#   ^ keyword.operator.assignment.shell
#     ^ meta.arithmetic punctuation.separator
#        ^^ keyword.operator.assignment.augmented.shell
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
ls>foo.txt
# <- variable.function
# ^^ - variable.function
# ^ keyword.operator.assignment.redirection.shell
echo>foo.txt
# <- support.function
#   ^^ - support.function
#   ^ keyword.operator.assignment.redirection.shell

echo git rev-list "$(echo --all)" | grep -P 'c354a80'
#                  ^^ punctuation.section.interpolation.begin.shell
#                              ^ punctuation.section.interpolation.end.shell

foo+=" baz"
#  ^^ keyword.operator


let "two=5+5"; if [[ "$X" == "1" ]]; then X="one"; fi
#^^ meta.function-call.identifier.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#            ^ - meta.function-call
#^^ support.function.let.shell
#   ^^^^^^^^^ string.quoted.double.shell
#            ^ keyword.operator.logical.continue.shell
#              ^^ keyword.control.conditional.if.shell
#                 ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                  ^ keyword.operator.logical.continue.shell
#                                    ^^^^ keyword.control.conditional.then.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ keyword.operator.assignment.shell
#                                           ^^^^^ string.quoted.double.shell
#                                                ^ keyword.operator.logical.continue.shell
#                                                  ^^ keyword.control.conditional.end.shell

let 5 \
    + 5
#^^^^^^ meta.function-call.arguments.shell
#      ^ - meta.function-call
#   ^ keyword.operator.arithmetic.shell
#     ^ constant.numeric.integer.decimal.shell

let 5+5 # comment
#^^ meta.function-call.identifier.shell
#  ^^^^ meta.function-call.arguments.shell
#      ^ - meta.function-call
#^^ support.function.let.shell
#   ^ constant.numeric.integer.decimal.shell
#    ^ keyword.operator.arithmetic.shell
#     ^ constant.numeric.integer.decimal.shell

foo=`let 5+5`
#   ^ punctuation.section.interpolation.begin.shell
#          ^ constant.numeric.integer
#           ^ punctuation.section.interpolation.end.shell
#    ^^^^^^^ meta.function-call
foo=`some-command --long1`
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^^^^^^^^^ meta.function-call.identifier.shell variable.function.shell
#                 ^^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                   ^^^^^ meta.function-call.arguments variable.parameter
#                        ^ punctuation.section.interpolation.end.shell
foo=`some-command -x`
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^^^^^^^^^ meta.function-call.identifier.shell variable.function.shell
#                 ^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                  ^ meta.function-call.arguments variable.parameter
#                   ^ punctuation.section.interpolation.end.shell

foo=`echo -e`
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^ meta.function-call support.function.echo
#         ^ meta.function-call.arguments punctuation.definition.parameter
#          ^ meta.function-call.arguments variable.parameter
#           ^ punctuation.section.interpolation.end.shell

foo=`cd -L`
#   ^ punctuation.section.interpolation.begin.shell
#    ^^ meta.function-call support.function.cd
#       ^ meta.function-call.arguments punctuation.definition.parameter
#        ^ meta.function-call.arguments variable.parameter
#         ^ punctuation.section.interpolation.end.shell

echo "`dirname -- foo/bar`"
#     ^ punctuation.section.interpolation.begin.shell
#              ^^ keyword.operator.end-of-options
#                        ^ punctuation.section.interpolation.end.shell

foo=`(uname -r --) 2>/dev/null`
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^^ meta.compound.shell
#   ^ punctuation.section.interpolation.begin.shell
#     ^^^^^ variable.function.shell
#           ^^ variable.parameter.option.shell
#              ^^ keyword.operator.end-of-options.shell
#                ^ punctuation.section.compound.end.shell
#                  ^ constant.numeric.integer.decimal.file-descriptor.shell
#                   ^ keyword.operator.assignment.redirection.shell
#                             ^ punctuation.section.interpolation.end.shell - punctuation.section.interpolation.begin

UNAME_RELEASE=`(uname -r) 2>/dev/null` || UNAME_RELEASE=unknown
#                                    ^ punctuation.section.interpolation.end.shell
UNAME_SYSTEM=`(uname -s) 2>/dev/null`  || UNAME_SYSTEM=unknown
#                                   ^ punctuation.section.interpolation.end.shell
UNAME_VERSION=`(uname -v) 2>/dev/null` || UNAME_VERSION=unknown
#                                    ^ punctuation.section.interpolation.end.shell

commits=($(git rev-list --reverse --abbrev-commit "$latest".. -- "$prefix"))

# <- - variable.other.readwrite


####################################################################
# 3.2.4.2 Conditional Constructs                                   #
####################################################################

if [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2; then PLATFORM=docker; fi
#^ keyword.control.conditional.if
#     ^ keyword.operator.logical.shell
#                         ^^ keyword.operator.logical.and
#                            ^ keyword.operator.logical.shell
#                              ^^^ meta.function-call.identifier.shell variable.function
#                                  ^^ keyword.operator.logical.or.shell
#                                     ^ keyword.operator.logical.shell
#                                       ^^^^ meta.function-call.identifier.shell variable.function.shell
#                                           ^ keyword.operator.logical.continue
#                                             ^^^^ keyword.control.conditional.then
#                                                         ^ variable.other.readwrite
#                                                          ^ keyword.operator.assignment
#                                                           ^ meta.string string.unquoted
if { [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2; }; then PLATFORM=docker; fi
#^ keyword.control.conditional.if
#  ^ punctuation.section.compound.begin.shell
#       ^ keyword.operator.logical.shell
#                           ^^ keyword.operator.logical.and
#                              ^ keyword.operator.logical.shell
#                                ^^^ meta.function-call.identifier.shell variable.function
#                                    ^^ keyword.operator.logical.or.shell
#                                       ^ keyword.operator.logical.shell
#                                         ^^^^ meta.function-call.identifier.shell variable.function.shell
#                                               ^ punctuation.section.compound.end.shell
#                                                ^ keyword.operator.logical.continue
#                                                  ^^^^ keyword.control.conditional.then
#                                                              ^ variable.other.readwrite
#                                                               ^ keyword.operator.assignment
#                                                                ^ meta.string string.unquoted
if ( [[ ! -z "$PLATFORM" ]] && ! cmd || ! cmd2 ); then PLATFORM=docker; fi
#^ keyword.control.conditional.if
#  ^ punctuation.section.compound.begin.shell
#       ^ keyword.operator.logical.shell
#                           ^^ keyword.operator.logical.and
#                              ^ keyword.operator.logical.shell
#                                ^^^ meta.function-call.identifier.shell variable.function
#                                    ^^ keyword.operator.logical.or.shell
#                                       ^ keyword.operator.logical.shell
#                                         ^^^^ meta.function-call.identifier.shell variable.function.shell
#                                              ^ punctuation.section.compound.end.shell
#                                               ^ keyword.operator.logical.continue
#                                                 ^^^^ keyword.control.conditional.then
#                                                             ^ variable.other.readwrite
#                                                              ^ keyword.operator.assignment
#                                                               ^ meta.string string.unquoted
if [[ $- != *i* ]] ; then
#^ keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ support.function.double-brace.begin.shell
#     ^^ meta.interpolation.parameter.shell variable.language.shell
#     ^ punctuation.definition.variable.shell
#        ^^ keyword.operator.comparison.shell
#           ^ keyword.operator.regexp.quantifier.shell
#             ^ keyword.operator.regexp.quantifier.shell
#               ^^ support.function.double-brace.end.shell
#                  ^ keyword.operator.logical.continue.shell
#                    ^^^^ keyword.control.conditional.then.shell
#   
  echo shell is not interactive
fi
# <- keyword.control.conditional.end.shell

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

then;
#^^^ keyword.control.conditional.then.shell
then&
#^^^ keyword.control.conditional.then.shell
then|
#^^^ keyword.control.conditional.then.shell
then>/dev/null
#^^^ keyword.control.conditional.then.shell
then -
#^^^ keyword.control.conditional.then.shell
then-
#^^^^ - keyword
-then
#^^^^ - keyword
then+
#^^^^ - keyword
then$
#^^^^ - keyword
then$var
#^^^^^^^ - keyword
then=
#^^^ - keyword
then-=
#^^^ - keyword
then+=
#^^^ - keyword
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

test
# <- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^ - meta.function-call

test expr -a expr -o expr -- | cmd
# <- meta.function-call.identifier.shell support.function.test.shell
#^^^ meta.function-call.identifier.shell support.function.test.shell
#   ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                           ^^^ - meta.function-call
#         ^^ variable.parameter.option.shell
#                 ^^ variable.parameter.option.shell
#                         ^^ - keyword
#                            ^ keyword.operator.logical.pipe.shell
#                              ^^^ meta.function-call.identifier.shell variable.function.shell

if test expr -a expr ; then echo "success"; fi
# ^ - meta.function-call
#  ^^^^ meta.function-call.identifier.shell support.function.test.shell
#      ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                   ^^^^^^^^ - meta.function-call
#            ^^ variable.parameter.option.shell
#                    ^ keyword.operator.logical.continue.shell
#                      ^^^^ keyword.control.conditional.then.shell
#                                           ^^ keyword.control.conditional.end.shell

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
#^^^^^ meta.function-call.arguments.shell
#^^ support.function.double-brace.begin.shell
#   ^^ support.function.double-brace.end.shell

[[ "${foo}" == bar*baz ]]
# <- support.function.double-brace.begin.shell
# <- support.function.double-brace.begin.shell
#           ^^ keyword.operator.comparison.shell
#                 ^ keyword.operator.regexp.quantifier.shell
#                      ^^ support.function.double-brace.end.shell

[[ $str =~ ^$'\t' ]]
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.logical.shell
#          ^^^^^^ meta.regexp.shell - meta.interpolation

[[ $str =~ ^abc$var$ ]]
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.logical.shell
#          ^^^^ meta.regexp.shell - meta.interpolation
#              ^^^^ meta.regexp.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                  ^ meta.regexp.shell - meta.interpolation

if [[ expr ]] && [[ expr ]] || [[ expr ]] ; then cmd ; fi
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ support.function.double-brace.begin.shell
#          ^^ support.function.double-brace.end.shell
#             ^^ keyword.operator.logical.and.shell
#                ^^^^^^^^^^ meta.function-call.arguments.shell
#                ^^ support.function.double-brace.begin.shell
#                        ^^ support.function.double-brace.end.shell
#                           ^^ keyword.operator.logical.or.shell
#                              ^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ support.function.double-brace.begin.shell
#                                      ^^ support.function.double-brace.end.shell
#                                         ^ keyword.operator.logical.continue.shell

if [[ expr && expr || expr ]] ; then cmd ; fi
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ support.function.double-brace.begin.shell
#          ^^ keyword.operator.logical.shell
#                  ^^ keyword.operator.logical.shell
#                          ^^ support.function.double-brace.end.shell
#                             ^ keyword.operator.logical.continue.shell

if [[ expr && ( expr || expr ) ]] ; then cmd ; fi
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#             ^^^^^^^^^^^^^^^^ meta.group.shell
#  ^^ support.function.double-brace.begin.shell
#          ^^ keyword.operator.logical.shell
#             ^ punctuation.section.group.begin.shell
#                    ^^ keyword.operator.logical.shell
#                            ^ punctuation.section.group.end.shell
#                              ^^ support.function.double-brace.end.shell
#                                 ^ keyword.operator.logical.continue.shell

if [ ! -f q4m-$Q4MVER.tar.gz ]; then
#  ^ support.function.test.begin.shell
#    ^ keyword.operator.logical.shell
#      ^^ variable.parameter.option.shell
#      ^ punctuation.definition.parameter.shell
#        ^ - keyword.operator
#             ^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                            ^ support.function.test.end.shell
#                             ^ keyword.operator.logical.continue.shell
#                               ^^^^ keyword.control.conditional.then.shell
    :
#   ^ meta.function-call.identifier.shell support.function.colon.shell
fi
# <- keyword.control.conditional.end.shell

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
# <- keyword.control.conditional.if
#  ^ support.function.test.begin
#         ^^ meta.function-call.arguments keyword.operator.comparison
#               ^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                ^ meta.function-call.arguments variable.parameter
#                       ^^ meta.function-call.arguments keyword.operator.comparison
#                             ^ meta.function-call.arguments support.function.test.end
#                              ^ keyword.operator.logical.continue
#                                ^^^^ keyword.control.conditional.then
    local DIR=$1
    # <- storage.modifier
    #     ^^^ variable.other.readwrite
    #        ^ keyword.operator.assignment
    local TARGET=$2
    # <- storage.modifier
    #     ^^^^^^ variable.other.readwrite
    #           ^ keyword.operator.assignment
elif [ "$1" ]; then
# <- keyword.control.conditional.elseif
#              ^^^^ keyword.control.conditional.then
    local DIR=$PWD
    # <- storage.modifier
    #     ^^^ variable.other.readwrite
    #        ^ keyword.operator.assignment
    local TARGET=$1
    # <- storage.modifier
    #     ^^^^^^ variable.other.readwrite
    #           ^ keyword.operator.assignment
fi
# <- keyword.control.conditional.end

asdf foo && FOO=some-value pwd
# <- meta.function-call.identifier.shell variable.function
#        ^^ keyword.operator.logical.and
#           ^^^ variable.other.readwrite
#              ^ keyword.operator.assignment
#               ^^^^^^^^^^ meta.string string.unquoted
#                          ^^^ meta.function-call support.function.pwd

(cd Layer1-linux  && PLATFORM=${PLATFORM} ./build ) &&
# <- punctuation.section.compound.begin.shell
#                                                 ^ punctuation.section.compound.end.shell
#                           ^ variable.other.readwrite
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                           ^ variable.function
(cd Layer2-nodejs && PLATFORM=${PLATFORM} ./build ) &&
#                           ^ variable.other.readwrite
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                           ^ variable.function
(cd Layer3-base   && PLATFORM=${PLATFORM} ./build ) &&
#                           ^ variable.other.readwrite
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                           ^ variable.function
(cd Layer4-custom && PLATFORM=${PLATFORM} name=${NOSN} ./build ) || err $?
#                           ^ variable.other.readwrite
#                            ^ keyword.operator.assignment
#                             ^ meta.string meta.interpolation - string
#                                            ^ variable.other.readwrite
#                                             ^ keyword.operator.assignment
#                                              ^ meta.string meta.interpolation - string
#                                                        ^ variable.function


####################################################################
# Case Statements                                                  #
####################################################################

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
# ^^^^^^^ meta.conditional.case.clause.patterns.shell - meta.group
#        ^^ meta.conditional.case.clause.patterns.shell meta.group.shell
#          ^^^^ meta.conditional.case.shell 
# ^ keyword.control.conditional.patterns.begin.shell
#        ^ punctuation.section.group.begin.shell
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
# <- meta.function-call.identifier.shell variable.function
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
        #                                              ^ meta.function punctuation.section.compound.end
        #                                               ^^ punctuation.terminator.case.clause
    *xterm*|rxvt|(dt|k|E)term)
        # ^ keyword.operator.regexp.quantifier
        #  ^ keyword.operator.logical
        #        ^ punctuation.section.group.begin
        #           ^ keyword.operator.logical
        #             ^ keyword.operator.logical
        #               ^ punctuation.section.group.end
        #                    ^ keyword.control.conditional.patterns
        update_terminal_cwd() { print -Pn "\e]2;%~\a" };;
        #                                             ^ meta.function punctuation.section.compound.end
        #                                              ^^ punctuation.terminator.case.clause
    *)
    # <- keyword.operator.regexp.quantifier
    #^ keyword.control.conditional.patterns
        update_terminal_cwd() {};;
        #                      ^ meta.function punctuation.section.compound.end
        #                       ^^ punctuation.terminator.case.clause
esac

case $SERVER in
# <- keyword.control.conditional.case
ws-+([0-9]).host.com) echo "Web Server"
#^^^ meta.conditional.case.clause.patterns.shell - meta.group
#   ^^^^^^^ meta.conditional.case.clause.patterns.shell meta.group.shell
#          ^^^^^^^^^^ meta.conditional.case.clause.patterns.shell - meta.group
#  ^ keyword.operator.regexp.quantifier
#   ^ punctuation.section.group.begin
#    ^ keyword.control.regexp.set.begin
#      ^ keyword.operator.word
#        ^ keyword.control.regexp.set.end
#         ^ punctuation.section.group.end
#                   ^ keyword.control.conditional.patterns
;;
# <- punctuation.terminator.case.clause
 # <- punctuation.terminator.case.clause
db-+([0-9])\.host\.com) echo "DB server"
#^^^ meta.conditional.case.clause.patterns.shell - meta.group
#   ^^^^^^^ meta.conditional.case.clause.patterns.shell meta.group.shell
#          ^^^^^^^^^^^ meta.conditional.case.clause.patterns.shell - meta.group
#  ^ keyword.operator.regexp.quantifier
#   ^ punctuation.section.group.begin
#    ^ keyword.control.regexp.set.begin
#      ^ keyword.operator.word
#        ^ keyword.control.regexp.set.end
#         ^ punctuation.section.group.end
#                     ^ keyword.control.conditional.patterns
;;
# <- punctuation.terminator.case.clause
 # <- punctuation.terminator.case.clause
bk-+([0-9])\.host\.com) echo "Backup server"
#  ^ keyword.operator.regexp.quantifier
#   ^ punctuation.section.group.begin
#    ^ keyword.control.regexp.set.begin
#      ^ keyword.operator.word
#        ^ keyword.control.regexp.set.end
#         ^ punctuation.section.group.end
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


function clk {
    typeset base=/sys/class/drm/card0/device
    #<- storage.modifier
    #       ^^^^ variable.other.readwrite
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


####################################################################
# Loop Tests                                                       #
####################################################################

select fname in *;
# <- keyword.control.loop.select.shell
#^^^^^ keyword.control.loop.select.shell
#            ^^ keyword.control.in.shell
#               ^ keyword.operator.regexp.quantifier.shell
#                ^ keyword.operator.logical.continue.shell
do
# <- keyword.control.loop.do.shell
  echo you picked $fname \($REPLY\)
# ^^^^ meta.function-call.identifier.shell support.function.echo.shell
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                  ^ - meta.function-call
  break;
# ^^^^^ keyword.control.flow.break.shell
#      ^ keyword.operator.logical.continue.shell
done
# <- keyword.control.loop.end.shell

while true; do
# <- keyword.control.loop.while
#        ^ meta.function-call.identifier.shell variable.function.shell
#         ^ keyword.operator
#            ^ keyword.control
    break
#   ^^^^^ keyword.control.flow.break.shell
    break 2;
#   ^^^^^ keyword.control.flow.break.shell
#         ^ constant.numeric.integer.decimal.shell
#          ^ keyword.operator.logical.continue.shell
    continue
#   ^^^^^^^^ keyword.control.flow.continue.shell
    continue 2;
#   ^^^^^^^^ keyword.control.flow.continue.shell
#            ^ constant.numeric.integer.decimal.shell
#             ^ keyword.operator.logical.continue.shell
done
# <- keyword.control.loop.end

while ! true; do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical.shell
#           ^ keyword.operator.logical.continue
#             ^^ keyword.control.loop.do
#                          ^^^^ keyword.control.loop.end

while ! { true; }; do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^^^ variable.function
#             ^ keyword.operator.logical.continue
#               ^ punctuation.section.compound.end.shell
#                ^ keyword.operator.logical.continue
#                  ^^ keyword.control.loop.do
#                               ^^^^ keyword.control.loop.end

while ! { [[ true ]]; }; do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^ support.function.double-brace.begin
#                 ^^ support.function.double-brace.end
#                   ^ keyword.operator.logical.continue
#                     ^ punctuation.section.compound.end.shell
#                      ^ keyword.operator.logical.continue
#                        ^^ keyword.control.loop.do
#                                     ^^^^ keyword.control.loop.end

while ! ( [[ true ]] ); do echo bar; done
# <- keyword.control.loop.while
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^ support.function.double-brace.begin
#                 ^^ support.function.double-brace.end
#                    ^ punctuation.section.compound.end.shell
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
#     ^^^ variable.other.readwrite
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
#                  ^ keyword.operator.logical.shell
#                    ^ punctuation.section.compound.begin.shell
#                      ^^ support.function.double-brace.begin
#                              ^^ support.function.double-brace.end
#                                ^ keyword.operator.logical.continue
#                                  ^ punctuation.section.compound.end.shell

for (( i = 0; i < 10; i++ )); do
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic
# <- keyword.control
#   ^^ punctuation.section.arithmetic.begin
#        ^ keyword.operator.assignment.shell
#          ^ constant.numeric.integer - punctuation
#           ^ punctuation.separator.expressions.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ constant.numeric.integer
#                   ^ punctuation.separator.expressions.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.arithmetic.end
#                           ^ keyword.operator.logical.continue
#                             ^^ keyword.control.loop.do
    echo $i
    # <- meta.function-call support.function.echo
    #    ^ meta.function-call.arguments punctuation.definition.variable
    #     ^ meta.function-call.arguments variable.other.readwrite
done
# <- keyword.control.loop.end

for (( i = 0; i < 10; i++ )) #; do
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.arithmetic
# <- keyword.control
#   ^^ punctuation.section.arithmetic.begin
#        ^ keyword.operator.assignment.shell
#          ^ constant.numeric.integer - punctuation
#           ^ punctuation.separator.expressions.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ constant.numeric.integer
#                   ^ punctuation.separator.expressions.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.arithmetic.end
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
#        ^^^^^^^^^^ meta.interpolation.command.shell
#     ^^ keyword.control.in
#        ^^ punctuation.section.interpolation.begin.shell
#          ^^^ meta.function-call variable.function
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ keyword.operator.logical.continue
#                    ^^ keyword.control.loop.do
  :
  # <- meta.function-call support.function.colon
done
# <- keyword.control.loop.end

`for i in $(seq 100); do echo i; done`
# <- meta.interpolation.command.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.interpolation.command.shell - meta.interpolation meta.interpolation
#         ^^^^^^^^^^ meta.interpolation.command.shell
#                   ^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell - meta.interpolation meta.interpolation
#      ^^ keyword.control.in
#         ^^ punctuation.section.interpolation.begin.shell
#           ^^^ meta.function-call.identifier.shell variable.function.shell
#                  ^ punctuation.section.interpolation.end.shell
#                   ^ keyword.operator.logical.continue
#                     ^^ keyword.control.loop.do
#                        ^^^^ support.function.echo
#                              ^ keyword.operator.logical.continue
#                                ^^^^ keyword.control.loop.end
#                                    ^ punctuation.section.interpolation.end.shell

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
        # ^ variable.other.readwrite
        #  ^ keyword.operator.assignment
        #   ^ meta.string string.unquoted
        #     ^ storage.modifier
    done

    for x; do
        echo "${!x}"
    done
}

if   [ "$*" = '*' ]
then remotefilter="cat"
#               ^ variable.other.readwrite
#                ^ keyword.operator.assignment
else remotefilter="grep"
#               ^ variable.other.readwrite
#                 ^ meta.string string.quoted.double punctuation.definition.string.begin
     for glob in "$@"
     do  glob=$(
     #      ^ variable.other.readwrite
     #       ^ keyword.operator.assignment
     #        ^^ meta.string meta.interpolation punctuation.section.interpolation.begin.shell
           echo "$glob" |
           sed -e 's@\*@[^ ]*@g' -e 's/\?/[^ ]/g'
           # <- meta.string meta.interpolation meta.function-call variable.function - string
         )
         # <- meta.string meta.interpolation punctuation.section.interpolation.end.shell - string
         remotefilter="$remotefilter -e '^$glob ' -e ' $glob\$'"
         #          ^ variable.other.readwrite
         #           ^ keyword.operator.assignment
     done
     # <- keyword.control.loop.end
fi
# <- keyword.control.conditional.end


####################################################################
# And, or, pipes, redirections                                     #
####################################################################

function show_help() {
    echo "Usage: imgcat [-p] filename ..." 1>& 2
    #                                          ^ constant.numeric.integer.decimal.file-descriptor
    echo "   or: cat filename | imgcat" 1>& 2
    #                                       ^ constant.numeric.integer.decimal.file-descriptor
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
#      ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell


####################################################################
# Here documents                                                   #
####################################################################

var=world!
cat <<FOOSTRING ; echo more stuff here
#   ^^ meta.function-call.arguments keyword.operator
#     ^^^^^^^^^ meta.function-call.arguments keyword.control.heredoc-token
#              ^
#               ^ keyword.operator.logical.continue
#                 ^ meta.function-call support.function
#                     ^ meta.function-call.arguments
Hello, ${"v"'a'r}
# <- meta.function-call.arguments.shell meta.string.shell string.unquoted.heredoc.shell
#^^^^^^ meta.function-call.arguments.shell meta.string.shell string.unquoted.heredoc.shell
#      ^^^^^^^^^^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.parameter.shell
#      ^^ punctuation.section.interpolation.begin.shell
#        ^^^ string.quoted.double - string string
#        ^ punctuation.definition.string.begin
#          ^ punctuation.definition.string.end
#           ^^^ string.quoted.single - string string
#           ^ punctuation.definition.string.begin
#             ^ punctuation.definition.string.end
#               ^ punctuation.section.interpolation.end.shell
FOOSTRING
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
cat << 'WHAT' ; echo more stuff here
# <- meta.function-call.identifier.shell variable.function
#   ^^ meta.function-call.arguments string.unquoted.heredoc keyword.operator.assignment.redirection
#      ^ punctuation.definition.string.begin
#       ^^^^ keyword.control.heredoc-token
#           ^ punctuation.definition.string.end
#            ^
#             ^ keyword.operator.logical.continue
#               ^ meta.function-call support.function
#                   ^ meta.function-call.arguments
Hello, ${var}
# <- meta.function-call.arguments.shell meta.string.shell string.unquoted.heredoc.shell
#^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.shell string.unquoted.heredoc.shell - meta.interpolation
WHAT
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token

cat <<< "A wild herestring appears" ; cat more stuff | bar | qux
# <- meta.function-call.identifier.shell variable.function
#   ^^^ meta.function-call.arguments keyword.operator.herestring
#       ^ meta.function-call.arguments string.quoted.double punctuation.definition.string.begin
#        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments string.quoted.double
#                                 ^ meta.function-call.arguments string.quoted.double punctuation.definition.string.end
#                                  ^
#                                   ^ keyword.operator.logical.continue
#                                    ^ - meta.function-call
#                                     ^^^ meta.function-call.identifier.shell variable.function.shell
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
#         ^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#           ^^^^ support.function

# Escaped and non-escaped backticks in heredocs...
cat << backticks_are_deprecated
#      ^ meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token
foo=\`pwd\`
#   ^^ meta.function-call.arguments string.unquoted.heredoc constant.character.escape
#        ^^ meta.function-call.arguments string.unquoted.heredoc constant.character.escape
foo=`pwd`
#   ^^^^^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.command.shell - string
#   ^ punctuation.section.interpolation.begin.shell
#       ^ punctuation.section.interpolation.end.shell
backticks_are_deprecated
# <- meta.function-call.arguments string.unquoted.heredoc keyword.control.heredoc-token

# Redirection after heredoc token
cat << redirection_comes_next > foo.txt
# <- meta.function-call.identifier.shell variable.function
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
  #^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.shell string.unquoted.heredoc.shell - meta.interpolation
  #            ^^^^^^ meta.function-call.arguments.shell meta.string.shell meta.interpolation.parameter.shell - string
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
# <- punctuation.section.interpolation.end

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
# <- meta.function-call.identifier.shell variable.function
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
#            ^^ support.function.double-brace.begin
#               ^ meta.function-call.arguments punctuation.definition.variable
#                ^ meta.function-call.arguments variable.language
#                  ^^ meta.function-call.arguments keyword.operator.comparison
#                       ^^ meta.function-call.arguments support.function.double-brace.end
#                          ^^ keyword.operator.logical.and

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
  #                  ^^^^ meta.function keyword.control.flow.exit.shell
  #                       ^ keyword.operator.arithmetic.shell
  #                        ^ constant.numeric.integer.decimal.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

function connect_to_db() {
#^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^^^^^^^^^ meta.function.identifier.shell
#                     ^^ meta.function.parameters.shell
#                       ^ meta.function.shell - meta.compound
#                        ^^ meta.function.shell meta.compound.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#       ^ - entity - keyword - storage
#        ^^^^^^^^^^^^^ entity.name.function.shell
#                     ^ punctuation.section.parameters.begin.shell
#                      ^ punctuation.section.parameters.end.shell
#                        ^ punctuation.section.compound.begin.shell

    export PGPASSWORD=$(cat "$DOKKU_ROOT/.postgresql/pwd_$APP")
    # <- meta.function storage.modifier
    #      ^^^^^^^^^^ meta.function variable.other.readwrite
    #                ^ meta.function keyword.operator.assignment
    #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
    IP=$(get_postgresql_ip)
    # <- meta.function variable.other.readwrite
    # ^ meta.function keyword.operator.assignment
    #  ^^ meta.function meta.string meta.interpolation punctuation.section.interpolation.begin.shell
    #    ^^^^^^^^^^^^^^^^^ meta.function meta.string meta.interpolation meta.function-call variable.function
    #                     ^ meta.function meta.string meta.interpolation punctuation.section.interpolation.end.shell
    PORT=$(get_postgresql_port)
    # <- meta.function variable.other.readwrite
    #   ^ meta.function keyword.operator.assignment
    #    ^^ meta.function meta.string meta.interpolation punctuation.section.interpolation.begin.shell
    #      ^^^^^^^^^^^^^^^^^^^ meta.function meta.string meta.interpolation meta.function-call variable.function
    #                         ^ meta.function meta.string meta.interpolation punctuation.section.interpolation.end.shell

    psql -h $IP -p $PORT -U root db
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

# <- - meta.function

logExit $? $WEIRD
# <- meta.function-call.identifier.shell variable.function
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
# <- meta.function.shell meta.compound.shell punctuation.section.compound.begin.shell
    foo bar
    # <- variable.function
    # <- meta.function meta.function-call

    return 0
    # <- keyword.control.flow.return.shell
    #^^^^^ keyword.control.flow.return.shell
    #      ^ constant.numeric.integer.decimal.shell
}
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

# <- - meta.function

function func\
name
# <- meta.function.identifier.shell entity.name.function.shell

function foo (     ) {
#^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^ meta.function.identifier.shell
#            ^^^^^^^ meta.function.parameters.shell
#                   ^^^ meta.function.shell
#       ^ - entity.name.function
#        ^^^ entity.name.function
#           ^ - entity.name.function
#            ^ punctuation.section.parameters.begin.shell
#                  ^ punctuation.section.parameters.end.shell
#                    ^ punctuation.section.compound.begin.shell
    echo 'hello from foo'
    # <- support.function
    # <- meta.function meta.function-call
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
  # <- meta.function.shell meta.compound.shell meta.function-call.identifier.shell support.function.echo.shell
)
# <- meta.function.shell meta.compound.shell punctuation.section.compound.end.shell
#^ - meta.function

function f (
# <- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell storage.type.function.shell 
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
# <- meta.function-call.identifier.shell - variable.function
#^^ meta.function-call.identifier.shell - variable.function.shell
^ () {
# <- meta.function entity.name.function
    echo "this is ^"
}
^
# <- meta.function-call.identifier.shell variable.function
@ () {
# <- meta.function entity.name.function
    echo "this is @"
}
@
# <- meta.function-call.identifier.shell variable.function

function () ()
# <- meta.function.identifier.shell entity.name.function.shell
function () {}
# <- meta.function.identifier.shell entity.name.function.shell

function [] () {
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^ meta.function.identifier.shell
#           ^^ meta.function.parameters.shell
#             ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
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
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from [[]]"
}
[[]]
# <- meta.function-call.identifier.shell variable.function
#^^^ meta.function-call.identifier.shell variable.function.shell

function {} () {
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^ meta.function.identifier.shell
#           ^^ meta.function.parameters.shell
#             ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
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
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from {{}}"
}
{{}}
# <- meta.function-call.identifier.shell variable.function
#^^^ meta.function-call.identifier.shell variable.function.shell

function -foo () {
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from -foo"
}
-foo
# <- meta.function-call.identifier.shell variable.function
#^^^ meta.function-call.identifier.shell variable.function.shell

function +foo () {
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from +foo"
}
+foo
# <- meta.function-call.identifier.shell variable.function
#^^^ meta.function-call.identifier.shell variable.function.shell 

function =foo () {
#<- meta.function.shell storage.type.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^^^ meta.function.shell
#^^^^^^^ storage.type.function.shell keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.compound.shell punctuation.section.compound.begin.shell
  echo "Hello from =foo"
}
=foo
# <- meta.function-call.identifier.shell variable.function
#^^^ meta.function-call.identifier.shell variable.function.shell

__git_aliased_command ()
{
    local word cmdline=$(__git config --get "alias.$1")
    for word in $cmdline; do
        case "$word" in
        {)  : skip start of shell helper function ;;
#       ^ - punctuation.section.interpolation.begin
#        ^ keyword.control.conditional.patterns
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
