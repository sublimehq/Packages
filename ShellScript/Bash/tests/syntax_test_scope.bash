# SYNTAX TEST "Packages/ShellScript/Bash.sublime-syntax"

###############################################################################
# 3.1.3 Comments                                                              #
# https://www.gnu.org/software/bash/manual/bash.html#Comments                 #
###############################################################################

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

curl \
  `# --proxy=socks5://localhost:4321` \
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell comment.block.number-sign.shell - string
#                                    ^^^ meta.function-call.arguments.shell - meta.string - meta.interpolation - comment
# ^ punctuation.section.interpolation.begin.shell
#  ^ punctuation.definition.comment.shell
#                                   ^ punctuation.section.interpolation.end.shell
#                                     ^ punctuation.separator.continuation.line.shell
curl \
  `# --proxy=socks5://localhost:4321` \
  --url=https://example.com
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
# ^^ punctuation.definition.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell

foo | `# get quarks ` `# --param=value` \
# <- variable.function
#   ^ keyword.operator.assignment.pipe.shell
#     ^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.command.shell comment.block.number-sign.shell - variable
#                    ^ meta.function-call.arguments.shell - meta.command - meta.interpolation - comment - string - variable
#                     ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell comment.block.number-sign.shell - string
#     ^ punctuation.section.interpolation.begin.shell
#      ^ punctuation.definition.comment.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^ punctuation.section.interpolation.begin.shell
#                      ^ punctuation.definition.comment.shell
#                                     ^ punctuation.section.interpolation.end.shell
#                                       ^ punctuation.separator.continuation.line.shell

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
#                                    ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#                                     ^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                                                    ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                                      ^ keyword.operator.assignment.pipe.shell
#                                                        ^ punctuation.section.interpolation.begin.shell
#                                                                        ^ punctuation.separator.continuation.line.shell
#                                                                         ^ - punctuation - comment

# https://github.com/sublimehq/Packages/issues/3661

[[ # ' ]]
# <- meta.compound.conditional.shell - comment
#^^ meta.compound.conditional.shell - comment
#  ^^^^^^^ meta.compound.conditional.shell comment.line.number-sign.shell
]]
# <- meta.compound.conditional.shell punctuation.section.compound.end.shell

[[
    # '
#   ^^^ comment

# <- - comment - string
]]
# <- - comment - string

$(( # comment ))
#^^^^^^^^^^^^^^^ - comment

$((
  # comment
# ^^^^^^^^^^ - comment
))


###############################################################################
# Git Conflict Marker Tests
###############################################################################

<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

## in braces

{
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
}

## heredoc

var=<<EOF
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
}
EOF


###############################################################################
# 3.1.2 Quoting                                                               #
# https://www.gnu.org/software/bash/manual/bash.html#Quoting                  #
###############################################################################

echo hello, world!
#^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^ meta.function-call.arguments.shell - variable
#                 ^ - meta.function-call

echo hello, \
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^ meta.function-call.arguments.shell
#           ^ punctuation.separator.continuation.line.shell
#            ^ - punctuation

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
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                        ^ - meta.function-call
#         ^ punctuation.definition.string.begin.shell
#         ^^^^^^ meta.string.glob.shell string.quoted.double.shell
#              ^ punctuation.definition.string.end.shell
#                 ^ punctuation.definition.string.begin.shell
#                 ^^^^ meta.string.glob.shell string.quoted.double.shell
#                    ^ punctuation.definition.string.end.shell
#                        ^ punctuation.definition.string.begin.shell
#                        ^^^^ meta.string.glob.shell string.quoted.double.shell
#                           ^ punctuation.definition.string.end.shell
#                                ^ punctuation.definition.string.begin.shell
#                                ^^^^ meta.string.glob.shell string.quoted.double.shell
#                                   ^ punctuation.definition.string.end.shell
#                                       ^ punctuation.definition.string.begin.shell
#                                       ^^^^ meta.string.glob.shell string.quoted.single.shell
#                                          ^ punctuation.definition.string.end.shell
#                                            ^ punctuation.definition.string.begin.shell
#                                            ^^^^ meta.string.glob.shell string.quoted.single.shell
#                                               ^ punctuation.definition.string.end.shell
#                                                   ^ punctuation.definition.string.begin.shell
#                                                   ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                                       ^ punctuation.definition.string.end.shell

echo 'no\e$capes\in\$ingle\quotes'
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ meta.function-call.arguments.shell - keyword - string
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell string.quoted.single.shell - constant - keyword - variable
#    ^ punctuation.definition.string.begin.shell
#                                ^ punctuation.definition.string.end.shell

echo 'singe\' \\''
#    ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^^^^^ meta.string.glob.shell string.quoted.single.shell - string.unquoted
#    ^ punctuation.definition.string.begin.shell
#          ^^ - constant
#             ^^ meta.string.glob.shell string.unquoted.shell - string.quoted
#             ^^ constant.character.escape.shell
#               ^^ meta.string.glob.shell string.quoted.single.shell - string.unquoted
#                 ^ - meta.string - string

echo $'\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z\''
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
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

echo -e "\e[33mcolored text\e[0m uncolored"
#        ^^^^^^ constant.character.escape.color.shell
#                          ^^^^^ constant.character.escape.color.shell

echo -e -a -n <1 ! # unknown options start printed text
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^ meta.function-call.arguments.shell
#    ^^ variable.parameter.option.shell
#       ^^ meta.string.glob.shell string.unquoted.shell
#          ^^ meta.string.glob.shell string.unquoted.shell
#             ^^ meta.redirection.shell
#             ^ keyword.operator.assignment.redirection.shell
#              ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ meta.string.glob.shell string.unquoted.shell
#                 ^ - meta.function-call - comment
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

echo $'Hello\' World\\'
#    ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#    ^^ punctuation.definition.string.begin.shell
#           ^^ constant.character.escape.shell
#                   ^^ constant.character.escape.shell
#                     ^ punctuation.definition.string.end.shell
#                      ^ - meta.string - string

echo $"Hello\" World\\"
#    ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#    ^^ punctuation.definition.string.begin.shell
#           ^^ constant.character.escape.shell
#                   ^^ constant.character.escape.shell
#                     ^ punctuation.definition.string.end.shell
#                      ^ - meta.string - string

echo $"Hello
#    ^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#    ^^ punctuation.definition.string.begin.shell
  World\\"
#^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#      ^^ constant.character.escape.shell
#        ^ punctuation.definition.string.end.shell
#         ^ - meta.string - string

# Note: Line continuation causes the linefeed to be removed from the output string.
echo $"Hello \
#    ^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#    ^^ punctuation.definition.string.begin.shell
#            ^ punctuation.separator.continuation.line.shell
#             ^ - punctuation
  World\\"
#^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#      ^^ constant.character.escape.shell
#        ^ punctuation.definition.string.end.shell
#         ^ - meta.string - string

echo $"Hello \\\"$world\""
#    ^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation - variable
#                ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                      ^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation - variable
#    ^^ punctuation.definition.string.begin.shell
#            ^^^^ constant.character.escape.shell
#                ^ punctuation.definition.variable.shell
#                ^^^^^^ variable.other.readwrite.shell
#                      ^^ constant.character.escape.shell
#                        ^ punctuation.definition.string.end.shell

echo $"Hello \\\"`echo World`\""
#    ^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation - variable
#                ^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell
#                            ^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation - variable
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
#     ^^^^ support.function
#          ^^ constant.character.escape
#                              ^^ constant.character.escape
#                                ^ punctuation.section.interpolation.end.shell

echo `echo \`echo hello, world!\\`
#   ^ - meta.interpolation
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                 ^ - meta.interpolation
#    ^ punctuation.section.interpolation.begin.shell
#     ^^^^ support.function
#          ^^ constant.character.escape
#                              ^^ constant.character.escape
#                                ^ punctuation.section.interpolation.end.shell

echo `echo \`echo hello\\\`, world\\\\\`!`
#   ^ - meta.interpolation
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.command.shell
#                                         ^ - meta.interpolation
#    ^ punctuation.section.interpolation.begin.shell
#     ^^^^ support.function
#          ^^ constant.character.escape
#                      ^^^^ constant.character.escape
#                                 ^^^^^^ constant.character.escape
#                                        ^ punctuation.section.interpolation.end.shell

echo "`dirname -- foo/bar`"
#    ^ meta.function-call.arguments.shell meta.string.glob.shell - meta.interpolation
#     ^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell
#      ^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#             ^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#                        ^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell
#                         ^ meta.function-call.arguments.shell meta.string.glob.shell - meta.interpolation
#    ^ string.quoted.double.shell punctuation.definition.string.begin.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^^^^^^^ variable.function.shell
#              ^^ keyword.operator.end-of-options
#                        ^ punctuation.section.interpolation.end.shell
#                         ^ string.quoted.double.shell punctuation.definition.string.end.shell

echo git rev-list "$(echo --all)" | grep -P 'c354a80'
#                 ^ meta.string.glob.shell
#                  ^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell - string.quoted.double
#                               ^ meta.string.glob.shell - meta.interpolation
#                 ^ string.quoted.double.shell punctuation.definition.string.begin.shell
#                  ^ punctuation.definition.variable.shell
#                   ^ punctuation.section.interpolation.begin.shell
#                    ^^^^ support.function.shell
#                         ^^^^^ - variable
#                              ^ punctuation.section.interpolation.end.shell
#                               ^ string.quoted.double.shell punctuation.definition.string.end.shell
#                                 ^ keyword.operator.assignment.pipe.shell
#                                   ^^^^ variable.function.shell
#                                        ^^ variable.parameter.option.shell
#                                           ^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell

' echo '
# <- meta.function-call.identifier.shell meta.command.shell
#^^^^^^^ meta.function-call.identifier.shell meta.command.shell
# <- variable.function.shell punctuation.definition.quoted.begin.shell
#^^^^^^^ variable.function.shell
#      ^ punctuation.definition.quoted.end.shell
#       ^ - meta - variable

e'cho'o
# <- meta.function-call.identifier.shell
#^^^^^ meta.function-call.identifier.shell
#     ^ meta.function-call.identifier.shell
# <- variable.function.shell
#^^^^^^ variable.function.shell
#      ^ - meta - variable

e' cho'o
# <- meta.function-call.identifier.shell
#^^^^^^ meta.function-call.identifier.shell
#      ^ meta.function-call.identifier.shell
# <- variable.function.shell
#^^^^^^^ variable.function.shell
#       ^ - meta - variable

e"\" \t ${ch} "o
# <- meta.function-call.identifier.shell - meta.interpolation
#^^^^^^^ meta.function-call.identifier.shell - meta.interpolation
#       ^^^^^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#            ^^ meta.function-call.identifier.shell - meta.interpolation
#              ^ meta.function-call.identifier.shell - meta.interpolation
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
#     ^^^ meta.function-call.identifier.shell - meta.interpolation
#        ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#^^^^^ - variable.function
#     ^^^ variable.function.shell
#^ punctuation.definition.variable.shell
# ^ punctuation.section.interpolation.begin.shell
#  ^^ variable.other.readwrite
#    ^ punctuation.section.interpolation.end.shell
#     ^ punctuation.definition.quoted.begin.shell
#       ^ punctuation.definition.quoted.end.shell
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
#   ^ punctuation.definition.quoted.begin.shell
#      ^ punctuation.definition.quoted.end.shell
e=e
$e'ch'o Hello, world!
# <- meta.function-call.identifier.shell meta.interpolation.parameter.shell
#^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
# ^^^^ meta.function-call.identifier.shell
#     ^ meta.function-call.identifier.shell
#      ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# <- variable.other.readwrite.shell punctuation.definition.variable.shell
#^ variable.other.readwrite.shell
# ^^^^^ variable.function.shell
# ^ punctuation.definition.quoted.begin.shell
#    ^ punctuation.definition.quoted.end.shell

./~foo/../bar../baz.sh
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell constant.other.path.self.shell
#^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ punctuation.separator.path.shell
# ^ - variable.language
#     ^ punctuation.separator.path.shell
#      ^^ constant.other.path.parent.shell
#        ^ punctuation.separator.path.shell
#            ^^ - constant.other.path - punctuation
#              ^ punctuation.separator.path.shell

"./~foo/../bar../baz.sh"
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.definition.quoted.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ constant.other.path.self.shell
# ^ punctuation.separator.path.shell
#  ^ - variable.language
#      ^ punctuation.separator.path.shell
#       ^^ constant.other.path.parent.shell
#         ^ punctuation.separator.path.shell
#             ^^ - constant.other.path - punctuation
#               ^ punctuation.separator.path.shell
#                      ^ punctuation.definition.quoted.end.shell

"./"~foo"/../"bar"../"baz.sh
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.definition.quoted.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ constant.other.path.self.shell
# ^ punctuation.separator.path.shell
#  ^ punctuation.definition.quoted.end.shell
#   ^ - variable.language
#       ^ punctuation.definition.quoted.begin.shell
#        ^ punctuation.separator.path.shell
#         ^^ constant.other.path.parent.shell
#           ^ punctuation.separator.path.shell
#            ^ punctuation.definition.quoted.end.shell
#                ^ punctuation.definition.quoted.begin.shell
#                 ^^ - constant.other.path - punctuation
#                   ^ punctuation.separator.path.shell
#                    ^ punctuation.definition.quoted.end.shell

../my?script[1-9].*
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell constant.other.path.parent.shell
#^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ constant.other.path.parent.shell
# ^ punctuation.separator.path.shell
#    ^ constant.other.wildcard.questionmark.shell
#           ^^^^^ meta.set.regexp.shell
#           ^ punctuation.definition.set.begin.regexp.shell
#            ^^^ constant.other.range.regexp.shell
#               ^ punctuation.definition.set.end.regexp.shell
#                 ^ constant.other.wildcard.asterisk.shell

"../my?script[1-9].*"   # no pattern matching within quotes
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.definition.quoted.begin.shell
#^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^^ constant.other.path.parent.shell
#  ^ punctuation.separator.path.shell
#     ^ - constant
#            ^^^^^ - meta.set.regexp - punctuation
#                  ^ - constant
#                   ^ punctuation.definition.quoted.end.shell


###############################################################################
# 3.2 Shell Commands (Basic Command Arguments)                                #
# https://www.gnu.org/software/bash/manual/bash.html#Simple-Commands          #
###############################################################################

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
#    ^^^ variable.parameter.option.shell - punctuation
set -e -- -o {str,ing}
#   ^^ variable.parameter.option.shell
#     ^ - variable - keyword
#      ^^ keyword.operator.end-of-options.shell
#        ^ - variable - keyword
#         ^^ - variable.parameter.option
#            ^^^^^^^^^ meta.interpolation.brace.shell

shift 2 -- 
#^^^^ meta.function-call.identifier.shell support.function.shell
#    ^^^^^ meta.function-call.arguments.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#       ^^ keyword.operator.end-of-options.shell

umask 0777
#^^^^ meta.function-call.identifier.shell support.function.shell
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
#  ^^^^^ meta.string.glob.shell string.unquoted.shell

foo -e =Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ punctuation.definition.parameter.shell
#   ^^ meta.parameter.option.shell variable.parameter.option.shell
#      ^^^^^^ meta.string.glob.shell string.unquoted.shell
#      ^ - keyword.operator

foo -e=Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^ meta.function-call.arguments.shell
#  ^ - meta.parameter
#   ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#     ^ keyword.operator.assignment.shell
#      ^^^^^ meta.string.glob.shell string.unquoted.shell

foo -$e=Hello
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#    ^^ meta.parameter.option.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - variable variable
#      ^ keyword.operator.assignment.shell
#       ^^^^^ meta.string.glob.shell string.unquoted.shell

any --h\elp
#   ^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#      ^^ constant.character.escape.shell

any --"h\elp"
#   ^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^ punctuation.definition.quoted.begin.shell
#       ^^ - constant.character.escape
#           ^ punctuation.definition.quoted.end.shell

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
#                       ^^^^ constant.language.boolean.true.shell
#                            ^^ meta.parameter.option.shell variable.parameter.option.shell
#                               ^^^^^ constant.language.boolean.false.shell

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
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell

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
#         ^^^^ meta.function-call.identifier.shell support.function.shell

{foo} -o --option -- -o
# <- meta.function-call.identifier.shell variable.function.shell - meta.interpolation
#^^^^ meta.function-call.identifier.shell - meta.interpolation
#    ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                      ^ - meta.function-call
#^^^^ variable.function.shell
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ - variable
#        ^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^ - variable - keyword
#                 ^^ keyword.operator.end-of-options.shell
#                   ^ - variable - keyword
#                    ^^ - variable

[foo] -o
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell meta.set.regexp.shell punctuation.definition.set.begin.regexp.shell
#^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell meta.set.regexp.shell - punctuation
#   ^ meta.function-call.identifier.shell meta.command.shell variable.function.shell meta.set.regexp.shell punctuation.definition.set.end.regexp.shell
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
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^ meta.function-call.arguments.shell - support.function
#   ^ keyword.operator.assignment.redirection.shell

ls>foo.txt
# <- meta.function-call.identifier.shell variable.function.shell
#^ meta.function-call.identifier.shell variable.function.shell
# ^^^^^^^^ meta.function-call.arguments.shell - variable.function
# ^ keyword.operator.assignment.redirection.shell

cd foo/bar-2345
#^ meta.function-call.identifier.shell support.function.shell
# ^^^^^^^^^^^^^ meta.function-call.arguments.shell - constant.numeric

cd foo/bar2345
#^ meta.function-call.identifier.shell support.function.shell
# ^^^^^^^^^^^^ meta.function-call.arguments.shell - constant.numeric


###############################################################################
# 3.2.3 Pipelines                                                             #
# https://www.gnu.org/software/bash/manual/bash.html#Pipelines                #
###############################################################################

cmd1 --opt1 arg1 | cmd2 --opt2 arg2 | cmd3 --opt3 arg3
#  ^ meta.function-call.identifier.shell variable.function.shell
#         ^ variable.parameter - variable.function
#              ^ - variable
#                ^ keyword
#                     ^ meta.function-call.identifier.shell variable.function.shell
#                            ^ variable.parameter - variable.function
#                                 ^ - variable
#                                   ^ keyword
#                                        ^ meta.function-call.identifier.shell variable.function.shell
#                                               ^ variable.parameter - variable.function
#                                                    ^ - variable

C2=c2 C3=c3 C4=c4
c1 -c1 c1 && ${C2} -c2 c2 || c3 -c3 ${C3} ; c4 -${C4} c4 | c5 -c5 c5
#^ meta.function-call.identifier.shell variable.function.shell
#    ^ variable.parameter - variable.function
#      ^ - variable
#         ^ keyword
#            ^ meta.function-call.identifier.shell meta.interpolation.parameter.shell
#                   ^ variable.parameter - variable.function
#                       ^ - variable
#                          ^ keyword
#                            ^ meta.function-call.identifier.shell variable.function.shell
#                                ^ variable.parameter - variable.function
#                                   ^ - variable.parameter
#                                         ^ punctuation.terminator.statement.shell
#                                           ^^ variable.function
#                                              ^ variable.parameter

###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.1 Looping Constructs (do..done)                                       #
# https://www.gnu.org/software/bash/manual/bash.html#index-for                #
###############################################################################

 do;
#^^ keyword.control.loop.do.shell
#  ^ - keyword.control.loop
 do&
#^^ keyword.control.loop.do.shell
#  ^ - keyword.control.loop
 do|
#^^ keyword.control.loop.do.shell
#  ^ - keyword.control.loop
 do>/dev/null
#^^ keyword.control.loop.do.shell
#  ^ - keyword.control.loop
 do -
#^^ keyword.control.loop.do.shell
#  ^ - keyword.control.loop
 do()
#^^ keyword.control.loop.do.shell
#  ^ - keyword.control.loop
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

 done;
#^^^^ keyword.control.loop.end.shell
#    ^ - keyword.control.loop
 done&
#^^^^ keyword.control.loop.end.shell
#    ^ - keyword.control.loop
 done|
#^^^^ keyword.control.loop.end.shell
#    ^ - keyword.control.loop
 done>/dev/null
#^^^^ keyword.control.loop.end.shell
#    ^ - keyword.control.loop
 done -
#^^^^ keyword.control.loop.end.shell
#    ^ - keyword.control.loop
 done()
#^^^^ keyword.control.loop.end.shell
#    ^ - keyword.control.loop
 done[]
#^^^^^^ - keyword.control
 done{}
#^^^^^^ - keyword.control
 done-
#^^^^^ - keyword.control
 -done
#^^^^^ - keyword.control
 done+
#^^^^^ - keyword.control
 done$
#^^^^^ - keyword.control
done$var
#^^^^^^^^ - keyword.control
 done=
#^^^^^ - keyword.control
 done-=
#^^^^^^ - keyword.control
 done+=
#^^^^^^ - keyword.control

do
# <- keyword.control.loop.do.shell
#^ keyword.control.loop.do.shell

    break
#   ^^^^^ keyword.control.flow.break.shell
    break 2;
#   ^^^^^ keyword.control.flow.break.shell
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.terminator.statement.shell
    break ${levels};
#   ^^^^^ keyword.control.flow.break.shell
#         ^^^^^^^^^ meta.interpolation.parameter.shell
#                  ^ punctuation.terminator.statement.shell
    continue
#   ^^^^^^^^ keyword.control.flow.continue.shell
    continue 2;
#   ^^^^^^^^ keyword.control.flow.continue.shell
#            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#             ^ punctuation.terminator.statement.shell
    continue ${levels};
#   ^^^^^^^^ keyword.control.flow.continue.shell
#            ^^^^^^^^^ meta.interpolation.parameter.shell
#                     ^ punctuation.terminator.statement.shell

    exit
#   ^^^^ keyword.control.flow.exit.shell
    exit 2;
#   ^^^^ keyword.control.flow.exit.shell
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ punctuation.terminator.statement.shell
    exit ${code};
#   ^^^^ keyword.control.flow.exit.shell
#        ^^^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.terminator.statement.shell

    return
#   ^^^^^^ keyword.control.flow.return.shell
    return 2;
#   ^^^^^^ keyword.control.flow.return.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ punctuation.terminator.statement.shell
    return ${code};
#   ^^^^^^ keyword.control.flow.return.shell
#          ^^^^^^^ meta.interpolation.parameter.shell
#                 ^ punctuation.terminator.statement.shell

done
# <- keyword.control.loop.end.shell
#^^^ keyword.control.loop.end.shell


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.1 Looping Constructs (for loops)                                      #
# https://www.gnu.org/software/bash/manual/bash.html#index-for                #
###############################################################################

for;
#^^ keyword.control.loop.for.shell
#  ^ - keyword.control.loop
for&
#^^ keyword.control.loop.for.shell
#  ^ - keyword.control.loop
for|
#^^ keyword.control.loop.for.shell
#  ^ - keyword.control.loop
for>/dev/null
#^^ keyword.control.loop.for.shell
#  ^ - keyword.control.loop
for -
#^^ keyword.control.loop.for.shell
#  ^ - keyword.control.loop
for()
#^^ keyword.control.loop.for.shell
#  ^ - keyword.control.loop
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

for (( i = 0; i < 10; i++ )); do
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^ meta.statement.loop.for.shell - meta.compound
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell meta.compound.arithmetic.shell
#   ^^ punctuation.section.compound.begin.shell
#        ^ keyword.operator.assignment.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell - punctuation
#           ^ punctuation.terminator.statement.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ punctuation.terminator.statement.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.compound.end.shell
#                           ^ punctuation.terminator.statement.shell
#                             ^^ keyword.control.loop.do.shell
    echo $i
    # <- meta.function-call support.function.shell
    #    ^ meta.function-call.arguments punctuation.definition.variable.shell
    #     ^ meta.function-call.arguments variable.other.readwrite.shell
done
# <- keyword.control.loop.end.shell

for (( i = 0; i < 10; i++ )) #; do
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^ meta.statement.loop.for.shell - meta.compound
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell meta.compound.arithmetic.shell
#   ^^ punctuation.section.compound.begin.shell
#        ^ keyword.operator.assignment.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell - punctuation
#           ^ punctuation.terminator.statement.shell
#               ^ keyword.operator.comparison.shell
#                 ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ punctuation.terminator.statement.shell
#                      ^^ keyword.operator.arithmetic.shell
#                         ^^ punctuation.section.compound.end.shell
#                            ^^^^^^ comment.line.number-sign.shell
do
# <- keyword.control.loop.do.shell
    echo $i
    # <- meta.function-call support.function.shell
    #    ^ meta.function-call.arguments punctuation.definition.variable.shell
    #     ^ meta.function-call.arguments variable.other.readwrite.shell
done
# <- keyword.control.loop.end.shell

for \
  (( i = 0; i < 10; i++ )) do echo $i; done;
#^ meta.statement.loop.for.shell - meta.compound
# ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell meta.compound.arithmetic.shell
#                          ^^ keyword.control.loop.do.shell
#                             ^^^^^^^ meta.function-call
#                             ^^^^ support.function.shell
#                                  ^^ variable.other.readwrite.shell
#                                    ^ punctuation.terminator.statement.shell
#                                      ^^^^ keyword.control.loop.end.shell
#                                          ^ punctuation.terminator.statement.shell

# Iterator form


for in
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^ meta.statement.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^ variable.other.readwrite.shell - keyword

for in in in in
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^ variable.other.readwrite.shell - keyword
#      ^^ keyword.operator.iteration.in.shell
#         ^^ meta.string.glob.shell string.unquoted.shell
#            ^^ meta.string.glob.shell string.unquoted.shell

for do do do do
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^ meta.statement.loop.for.shell
#      ^^^^^^^^ - meta.statement.loop
#^^ keyword.control.loop.for.shell
#   ^^ variable.other.readwrite.shell - keyword
#      ^^ keyword.control.loop.do.shell
#         ^^ keyword.control.loop.do.shell
#            ^^ keyword.control.loop.do.shell

for done done
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^ meta.statement.loop.for.shell
#        ^^^^ - meta.statement.loop
#^^ keyword.control.loop.for.shell
#   ^^^^ variable.other.readwrite.shell - keyword
#        ^^^^ keyword.control.loop.end.shell

for x; do echo "${!x}"; done
#<- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^ meta.statement.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^ variable.other.readwrite.shell
#    ^ punctuation.terminator.statement.shell
#      ^^ keyword.control.loop.do.shell
#         ^^^^ meta.function-call.identifier.shell support.function.shell
#             ^^^^^^^^ meta.function-call.arguments.shell
#                     ^ punctuation.terminator.statement.shell
#                       ^^^^ keyword.control.loop.end.shell

for i in for in do echo done; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#     ^^ keyword.operator.iteration.in.shell
#       ^ - meta.string
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ - meta.string
#            ^^ meta.string.glob.shell string.unquoted.shell
#              ^ - meta.string
#               ^^ meta.string.glob.shell string.unquoted.shell
#                 ^ - meta.string
#                  ^^^^ meta.string.glob.shell string.unquoted.shell
#                      ^ - meta.string
#                       ^^^^ meta.string.glob.shell string.unquoted.shell
#                           ^ punctuation.terminator.statement.shell
#                             ^^ keyword.control.loop.do.shell
#                                ^^^^ support.function.shell
#                                     ^^ variable.other.readwrite.shell
#                                       ^ punctuation.terminator.statement.shell
#                                         ^^^^ keyword.control.loop.end.shell
#                                             ^ punctuation.terminator.statement.shell

for i in { [ \( ; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#       ^ - meta.string
#        ^ meta.string.glob.shell string.unquoted.shell
#         ^ - meta.string
#          ^ meta.string.glob.shell string.unquoted.shell
#           ^ - meta.string
#            ^^ meta.string.glob.shell string.unquoted.shell constant.character.escape.shell
#              ^ - meta.string
#               ^ punctuation.terminator.statement.shell
#                 ^^ keyword.control.loop.do.shell
#                    ^^^^ support.function.shell
#                         ^^ variable.other.readwrite.shell
#                           ^ punctuation.terminator.statement.shell
#                             ^^^^ keyword.control.loop.end.shell
#                                 ^ punctuation.terminator.statement.shell

for i in str1 $str2 "str3" 'str4' st$r5; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^^^^ meta.string.glob.shell string.unquoted.shell
#             ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                   ^^^^^^ meta.string.glob.shell string.quoted.double.shell
#                          ^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                 ^^ meta.string.glob.shell string.unquoted.shell
#                                   ^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^ keyword.control.loop.do.shell
#                                           ^^^^ meta.function-call.identifier.shell support.function.shell
#                                                ^^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                                  ^ punctuation.terminator.statement.shell
#                                                    ^^^^ keyword.control.loop.end.shell
#                                                        ^ punctuation.terminator.statement.shell

for i in <files.txt; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^ keyword.operator.assignment.redirection.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^ keyword.control.loop.do.shell
#                       ^^^^ meta.function-call.identifier.shell support.function.shell
#                           ^^^ meta.function-call.arguments.shell
#                            ^^ variable.other.readwrite.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ keyword.control.loop.end.shell
#                                    ^ punctuation.terminator.statement.shell
#

for i in {foo,bar,baz}; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.section.interpolation.begin.shell - string
#         ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#            ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell - string
#             ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell - string
#                 ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                    ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.section.interpolation.end.shell - string
#                     ^ punctuation.terminator.statement.shell

for i in for pre{foo,bar,baz}suf; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ - meta.string
#            ^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#               ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.section.interpolation.begin.shell - string
#                ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                   ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell - string
#                    ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                       ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.separator.sequence.shell - string
#                        ^^^ meta.string.glob.shell meta.interpolation.brace.shell meta.string.shell string.unquoted.shell
#                           ^ meta.string.glob.shell meta.interpolation.brace.shell punctuation.section.interpolation.end.shell - string
#                            ^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#                               ^ punctuation.terminator.statement.shell

for i in {1..10}; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^^^^^^^ meta.interpolation.brace.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^^ keyword.operator.range.shell
#            ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#              ^ punctuation.section.interpolation.end.shell
#               ^ punctuation.terminator.statement.shell
#                 ^^ keyword.control.loop.do.shell
#                    ^^^^ meta.function-call.identifier.shell support.function.shell
#                         ^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#                          ^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                           ^ punctuation.terminator.statement.shell
#                             ^^^^ keyword.control.loop.end.shell
#                                 ^ punctuation.terminator.statement.shell

for i in {-10..+20}; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^^^^^^^^^^ meta.interpolation.brace.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#          ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^^ keyword.operator.range.shell
#              ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#               ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^ keyword.control.loop.do.shell
#                       ^^^^ meta.function-call.identifier.shell support.function.shell
#                            ^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#                             ^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ keyword.control.loop.end.shell
#                                    ^ punctuation.terminator.statement.shell

for i in {-10..+20..-4}; do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^^^^^^^^^^^^^^ meta.interpolation.brace.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#          ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^^ keyword.operator.range.shell
#              ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#               ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                 ^^ keyword.operator.range.shell
#                   ^ meta.number.integer.decimal.shell keyword.operator.arithmetic.shell
#                    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                     ^ punctuation.section.interpolation.end.shell
#                      ^ punctuation.terminator.statement.shell
#                        ^^ keyword.control.loop.do.shell
#                           ^^^^ meta.function-call.identifier.shell support.function.shell
#                                ^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#                                 ^ meta.function-call.arguments.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                  ^ punctuation.terminator.statement.shell
#                                    ^^^^ keyword.control.loop.end.shell
#                                        ^ punctuation.terminator.statement.shell

for i in (foo bar baz); do echo $i; done;
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#   ^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^ meta.statement.loop.for.shell invalid.illegal.unexpected-token.shell
#         ^^^ meta.statement.loop.for.shell meta.string.glob.shell string.unquoted.shell
#            ^ - meta.string
#             ^^^ meta.statement.loop.for.shell meta.string.glob.shell string.unquoted.shell
#                ^ - meta.string
#                 ^^^ meta.statement.loop.for.shell meta.string.glob.shell string.unquoted.shell
#                    ^ invalid.illegal.stray.shell
#                    ^ invalid.illegal.stray.shell
#                     ^ punctuation.terminator.statement.shell

for i in $*; do echo $i; done;
#        ^^ meta.interpolation.parameter.shell variable.language.special.shell

for domain in $domains; do echo $domain; done
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#^^ keyword.control.loop.for.shell
#   ^^^^^^ variable.other.readwrite.shell - keyword
#          ^^ keyword.operator.iteration.in.shell
#             ^^^^^^^^ variable.other.readwrite.shell
#                     ^ punctuation.terminator.statement.shell
#                       ^^ keyword.control.loop.do.shell
#                          ^^^^ meta.function-call.identifier.shell support.function.shell
#                              ^^^^^^^^ meta.function-call.arguments.shell
#                               ^^^^^^^ variable.other.readwrite.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^^^ keyword.control.loop.end.shell

for i in $(seq 100); do
# <- meta.statement.loop.for.shell keyword.control.loop.for.shell
#^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
#^^ keyword.control.loop.for.shell
#        ^^^^^^^^^^ meta.interpolation.command.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^ punctuation.definition.variable.shell
#         ^ punctuation.section.interpolation.begin.shell
#          ^^^ meta.function-call variable.function.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^ keyword.control.loop.do.shell
  echo $i
  # <- meta.function-call support.function.shell
done
# <- keyword.control.loop.end.shell

for
  var in foo bar baz;
# ^^^ - variable.other
#     ^^ - keyword
# ^^^^^^^^^^^^^^^^^^ meta.function-call

for \
  var in foo bar baz;
#<- meta.statement.loop.for.shell
#^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.shell
# ^^^ variable.other.readwrite.shell
#     ^^ keyword.operator.iteration.in.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^^^ meta.string.glob.shell string.unquoted.shell
#                ^^^ meta.string.glob.shell string.unquoted.shell
#                   ^ punctuation.terminator.statement.shell

for \
  var \
in foo bar baz;
#<- meta.statement.loop.for.shell keyword.operator.iteration.in.shell
#^^^^^^^^^^^^^ meta.statement.loop.for.shell
#^ meta.statement.loop.for.shell keyword.operator.iteration.in.shell
#  ^^^ meta.string.glob.shell string.unquoted.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#          ^^^ meta.string.glob.shell string.unquoted.shell
#             ^ punctuation.terminator.statement.shell

`for i in $(seq 100); do echo $i; done`
# <- meta.interpolation.command.shell punctuation.section.interpolation.begin.shell
#^^^^^^^^^ meta.interpolation.command.shell meta.statement.loop.for.shell - meta.interpolation meta.interpolation
#         ^^^^^^^^^^ meta.interpolation.command.shell meta.statement.loop.for.shell
#                   ^^^^^^^^^^ meta.interpolation.command.shell - meta.statement.loop - meta.interpolation meta.interpolation
#                             ^^ meta.interpolation.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - meta.statement.loop
#                               ^^^^^^ meta.interpolation.command.shell - meta.statement.loop - meta.interpolation meta.interpolation
#^^^ keyword.control.loop.for.shell
#      ^^ keyword.operator.iteration.in.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^^^ meta.function-call.identifier.shell variable.function.shell
#                  ^ punctuation.section.interpolation.end.shell
#                   ^ punctuation.terminator.statement.shell
#                     ^^ keyword.control.loop.do.shell
#                        ^^^^ support.function.shell
#                             ^^ variable.other.readwrite.shell
#                               ^ punctuation.terminator.statement.shell
#                                 ^^^^ keyword.control.loop.end.shell
#                                     ^ punctuation.section.interpolation.end.shell


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.1 Looping Constructs (select loops)                                   #
# https://www.gnu.org/software/bash/manual/bash.html#index-select             #
###############################################################################

select;
#^^^^^ keyword.control.loop.select.shell
#     ^ - keyword.control.loop
select&
#^^^^^ keyword.control.loop.select.shell
#     ^ - keyword.control.loop
select|
#^^^^^ keyword.control.loop.select.shell
#     ^ - keyword.control.loop
select>/dev/null
#^^^^^ keyword.control.loop.select.shell
#     ^ - keyword.control.loop
select -
#^^^^^ keyword.control.loop.select.shell
#     ^ - keyword.control.loop
select()
#^^^^^ keyword.control.loop.select.shell
#     ^ - keyword.control.loop
select[]
#^^^^^^^ - keyword.control
select{}
#^^^^^^^ - keyword.control
select-
#^^^^^^ - keyword.control
-select
#^^^^^^ - keyword.control
select+
#^^^^^^ - keyword.control
select$
#^^^^^^ - keyword.control
select$var
#^^^^^^^^^ - keyword.control
select=
#^^^^^^ - keyword.control
select-=
#^^^^^^^ - keyword.control
select+=
#^^^^^^^ - keyword.control

select select select select
# <- meta.statement.loop.select.shell keyword.control.loop.select.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.select.shell
#                          ^ - meta.statement.loop
#^^^^^ keyword.control.loop.select.shell
#      ^^^^^^ variable.other.readwrite.shell
#             ^^^^^^ keyword.control.loop.select.shell
#                    ^^^^^^ variable.other.readwrite.shell

select in in in select do done; do echo $in; done;
# <- meta.statement.loop.select.shell keyword.control.loop.select.shell
#^^^^^^^^^^^ meta.statement.loop.select.shell - meta.sequence
#           ^^^^^^^^^^^^^^^^^^ meta.statement.loop.select.shell meta.sequence.list.shell
#                             ^^ - meta.statement.loop - meta.sequence
#^^^^^ keyword.control.loop.select.shell
#      ^^ variable.other.readwrite.shell
#         ^^ keyword.operator.iteration.in.shell
#           ^ - meta.string - string
#            ^^ meta.string.glob.shell string.unquoted.shell
#              ^ - meta.string - string
#               ^^^^^^ meta.string.glob.shell string.unquoted.shell
#                     ^ - meta.string - string
#                      ^^ meta.string.glob.shell string.unquoted.shell
#                        ^ - meta.string - string
#                         ^^^^ meta.string.glob.shell string.unquoted.shell
#                             ^ punctuation.terminator.statement.shell
#                               ^^ keyword.control.loop.do.shell
#                                  ^^^^ support.function.shell
#                                       ^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                          ^ punctuation.terminator.statement.shell
#                                            ^^^^ keyword.control.loop.end.shell
#                                                ^ punctuation.terminator.statement.shell

select \
  fname in ~/**/*.~\$tmp; do rm -f $fname; done;
# <- meta.statement.loop.select.shell
#^^^^^^^^^ meta.statement.loop.select.shell - meta.sequence
#         ^ meta.statement.loop.select.shell meta.sequence.list.shell - meta.string
#          ^^^^^^^^^^^^^ meta.statement.loop.select.shell meta.sequence.list.shell meta.string.glob.shell
#                       ^^ - meta.statement.loop - meta.sequence
# ^^^^^ variable.other.readwrite.shell
#       ^^ keyword.operator.iteration.in.shell
#          ^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#           ^^^^^^^^^^^^ string.unquoted.shell
#            ^^ constant.other.wildcard.asterisk.shell
#               ^ constant.other.wildcard.asterisk.shell
#                  ^^ constant.character.escape.shell

select \
  fname \
  in ~/**/*.~\$tmp; do rm -f $fname; done;
# <- meta.statement.loop.select.shell
#^^^ meta.statement.loop.select.shell - meta.sequence
#   ^ meta.statement.loop.select.shell meta.sequence.list.shell - meta.string
#    ^^^^^^^^^^^^^ meta.statement.loop.select.shell meta.sequence.list.shell meta.string.glob.shell
#                 ^^ - meta.statement.loop - meta.sequence
# ^^ keyword.operator.iteration.in.shell
#    ^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#     ^^^^^^^^^^^^ string.unquoted.shell
#      ^^ constant.other.wildcard.asterisk.shell
#         ^ constant.other.wildcard.asterisk.shell
#            ^^ constant.character.escape.shell

select \
  fname \
  in \
  ~/**/*.~\$tmp; do rm -f $fname; done;
# <- meta.statement.loop.select.shell
#^ meta.statement.loop.select.shell meta.sequence.list.shell - meta.string
# ^^^^^^^^^^^^^ meta.statement.loop.select.shell meta.sequence.list.shell meta.string.glob.shell
#              ^^ - meta.statement.loop - meta.sequence
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#  ^^^^^^^^^^^^ string.unquoted.shell
#   ^^ constant.other.wildcard.asterisk.shell
#      ^ constant.other.wildcard.asterisk.shell
#         ^^ constant.character.escape.shell

select fname in *;
# <- keyword.control.loop.select.shell
#^^^^^ keyword.control.loop.select.shell
#            ^^ keyword.operator.iteration.in.shell
#               ^ meta.string.glob.shell string.unquoted.shell
#                ^ punctuation.terminator.statement.shell
do
# <- keyword.control.loop.do.shell
  echo you picked $fname \($REPLY\)
# ^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                  ^ - meta.function-call
  break;
# ^^^^^ keyword.control.flow.break.shell
#      ^ punctuation.terminator.statement.shell
done
# <- keyword.control.loop.end.shell


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.1 Looping Constructs (until loops)                                    #
# https://www.gnu.org/software/bash/manual/bash.html#index-until              #
###############################################################################

until;
#^^^^ keyword.control.loop.until.shell
#    ^ - keyword.control.loop
until&
#^^^^ keyword.control.loop.until.shell
#    ^ - keyword.control.loop
until|
#^^^^ keyword.control.loop.until.shell
#    ^ - keyword.control.loop
until>/dev/null
#^^^^ keyword.control.loop.until.shell
#    ^ - keyword.control.loop
until -
#^^^^ keyword.control.loop.until.shell
#    ^ - keyword.control.loop
until()
#^^^^ keyword.control.loop.until.shell
#    ^ - keyword.control.loop
until[]
#^^^^^^ - keyword.control
until{}
#^^^^^^ - keyword.control
until-
#^^^^^ - keyword.control
-until
#^^^^^ - keyword.control
until+
#^^^^^ - keyword.control
until$
#^^^^^ - keyword.control
until$var
#^^^^^^^^ - keyword.control
until=
#^^^^^ - keyword.control
until-=
#^^^^^^ - keyword.control
until+=
#^^^^^^ - keyword.control

until test-commands --arg val; do cmd --arg; done
# <- keyword.control.loop.until.shell
#^^^^ keyword.control.loop.until.shell
#     ^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                  ^^^^^^^^^^ meta.function-call.arguments.shell
#                            ^ punctuation.terminator.statement.shell
#                              ^^ keyword.control.loop.do.shell
#                                 ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                                    ^^^^^^ meta.function-call.arguments.shell
#                                          ^ punctuation.terminator.statement.shell
#                                            ^^^^ keyword.control.loop.end.shell

until
  test-commands --arg val; do cmd --arg; done
# ^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#              ^^^^^^^^^^ meta.function-call.arguments.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^ keyword.control.loop.do.shell
#                             ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                                ^^^^^^ meta.function-call.arguments.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^^^ keyword.control.loop.end.shell

until
  test-commands \
  --arg val; do cmd --arg; done
#^^^^^^^^^^ meta.function-call.arguments.shell
#          ^ punctuation.terminator.statement.shell
#            ^^ keyword.control.loop.do.shell
#               ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                  ^^^^^^ meta.function-call.arguments.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^^^ keyword.control.loop.end.shell

until
  test-commands \
  --arg val
#^^^^^^^^^^ meta.function-call.arguments.shell
  do cmd --arg; done
# ^^ keyword.control.loop.do.shell
#    ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#       ^^^^^^ meta.function-call.arguments.shell
#             ^ punctuation.terminator.statement.shell
#               ^^^^ keyword.control.loop.end.shell

until ! (( i < 10 )) ; do echo Step $(( i+= 1 ))...; done
# <- keyword.control.loop.until.shell
#^^^^ keyword.control.loop.until.shell
#     ^ keyword.operator.logical.shell
#       ^^^^^^^^^^^^ meta.compound.arithmetic.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^ keyword.control.loop.do.shell
#                         ^^^^ meta.function-call.identifier.shell support.function.shell
#                             ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                  ^ punctuation.terminator.statement.shell
#                                                    ^^^^ keyword.control.loop.end.shell


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.1 Looping Constructs (while loops)                                    #
# https://www.gnu.org/software/bash/manual/bash.html#index-while              #
###############################################################################

while;
#^^^^ keyword.control.loop.while.shell
#    ^ - keyword.control.loop
while&
#^^^^ keyword.control.loop.while.shell
#    ^ - keyword.control.loop
while|
#^^^^ keyword.control.loop.while.shell
#    ^ - keyword.control.loop
while>/dev/null
#^^^^ keyword.control.loop.while.shell
#    ^ - keyword.control.loop
while -
#^^^^ keyword.control.loop.while.shell
#    ^ - keyword.control.loop
while()
#^^^^ keyword.control.loop.while.shell
#    ^ - keyword.control.loop
while[]
#^^^^^^ - keyword.control
while{}
#^^^^^^ - keyword.control
while-
#^^^^^ - keyword.control
-while
#^^^^^ - keyword.control
while+
#^^^^^ - keyword.control
while$
#^^^^^ - keyword.control
while$var
#^^^^^^^^ - keyword.control
while=
#^^^^^ - keyword.control
while-=
#^^^^^^ - keyword.control
while+=
#^^^^^^ - keyword.control

while test-commands --arg val; do cmd --arg; done
# <- keyword.control.loop.while.shell
#^^^^ keyword.control.loop.while.shell
#     ^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                  ^^^^^^^^^^ meta.function-call.arguments.shell
#                            ^ punctuation.terminator.statement.shell
#                              ^^ keyword.control.loop.do.shell
#                                 ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                                    ^^^^^^ meta.function-call.arguments.shell
#                                          ^ punctuation.terminator.statement.shell
#                                            ^^^^ keyword.control.loop.end.shell

while
  test-commands --arg val; do cmd --arg; done
# ^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#              ^^^^^^^^^^ meta.function-call.arguments.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^ keyword.control.loop.do.shell
#                             ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                                ^^^^^^ meta.function-call.arguments.shell
#                                      ^ punctuation.terminator.statement.shell
#                                        ^^^^ keyword.control.loop.end.shell

while
  test-commands \
  --arg val; do cmd --arg; done
#^^^^^^^^^^ meta.function-call.arguments.shell
#          ^ punctuation.terminator.statement.shell
#            ^^ keyword.control.loop.do.shell
#               ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                  ^^^^^^ meta.function-call.arguments.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^^^ keyword.control.loop.end.shell

while
  test-commands \
  --arg val
#^^^^^^^^^^ meta.function-call.arguments.shell
  do cmd --arg; done
# ^^ keyword.control.loop.do.shell
#    ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#       ^^^^^^ meta.function-call.arguments.shell
#             ^ punctuation.terminator.statement.shell
#               ^^^^ keyword.control.loop.end.shell

while ! true; do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^^^^ constant.language.boolean.true.shell
#           ^ punctuation.terminator.statement.shell
#             ^^ keyword.control.loop.do.shell
#                ^^^^ support.function.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^^^ keyword.control.loop.end.shell

while ! { true; }; do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^^^ constant.language.boolean.true.shell
#             ^ punctuation.terminator.statement.shell
#               ^ punctuation.section.compound.end.shell
#                ^ punctuation.terminator.statement.shell
#                  ^^ keyword.control.loop.do.shell
#                               ^^^^ keyword.control.loop.end.shell

while ! { [[ true ]]; }; do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^ punctuation.section.compound.begin.shell
#            ^^^^ constant.language.boolean.true.shell
#                 ^^ punctuation.section.compound.end.shell
#                   ^ punctuation.terminator.statement.shell
#                     ^ punctuation.section.compound.end.shell
#                      ^ punctuation.terminator.statement.shell
#                        ^^ keyword.control.loop.do.shell
#                                     ^^^^ keyword.control.loop.end.shell

while ! ( [[ true ]] ); do echo bar; done
# <- keyword.control.loop.while.shell
#     ^ keyword.operator.logical.shell
#       ^ punctuation.section.compound.begin.shell
#         ^^ punctuation.section.compound.begin.shell
#            ^^^^ constant.language.boolean.true.shell
#                 ^^ punctuation.section.compound.end.shell
#                    ^ punctuation.section.compound.end.shell
#                     ^ punctuation.terminator.statement.shell
#                       ^^ keyword.control.loop.do.shell
#                                    ^^^^ keyword.control.loop.end.shell

while read -r -d '' f; do
# <- keyword.control.loop.while.shell
#     ^^^^ support.function.shell
#          ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^^ string.quoted.single.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^ keyword.control.loop.do.shell
done
# <- keyword.control.loop.end.shell

while IFS= read -r -d '' f; do
# <- keyword.control.loop.while.shell
#     ^^^ variable.language.builtin.shell
#        ^ keyword.operator.assignment.shell
#          ^^^^ support.function.shell
#               ^^ meta.parameter.option.shell variable.parameter.option.shell
#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
#                     ^^ string.quoted.single.shell
#                         ^ punctuation.terminator.statement.shell
#                           ^^ keyword.control.loop.do.shell
done
# <- keyword.control.loop.end.shell


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.2 Conditional Constructs (If Statements)                              #
# https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs   #
# https://www.gnu.org/software/bash/manual/bash.html#index-case               #
###############################################################################

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

[[ ]]
# <- punctuation.section.compound.begin.shell
#^ punctuation.section.compound.begin.shell
#  ^^ punctuation.section.compound.end.shell

[[
]]
# <- meta.compound.conditional.shell punctuation.section.compound.end.shell
#^ meta.compound.conditional.shell punctuation.section.compound.end.shell

! [[ ]]
# <- keyword.operator.logical.shell
# ^^ punctuation.section.compound.begin.shell
#    ^^ punctuation.section.compound.end.shell

![[ ]]
# <- punctuation.definition.history.shell
#^^^^^ meta.compound.conditional.shell
#^^ punctuation.section.compound.begin.shell
#   ^^ punctuation.section.compound.end.shell

[[ ! ($line == ^0[1-9]$) ]]
# <- meta.compound.conditional.shell - meta.group
#^^^^ meta.compound.conditional.shell - meta.group
#    ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#              ^^^^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#                      ^ meta.compound.conditional.shell meta.group.shell - meta.string
#                       ^^^ meta.compound.conditional.shell - meta.group
#

[[ ! ($line != \() ]]
# <- meta.compound.conditional.shell - meta.group
#^^^^ meta.compound.conditional.shell - meta.group
#    ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#              ^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell constant.character.escape.shell
#                ^ meta.compound.conditional.shell meta.group.shell - meta.string
#                 ^^^ meta.compound.conditional.shell - meta.group
#

[[ '-e' == -e ]]   # -e undergoes pattern matching on the right
#  ^^^^ meta.string.glob.shell string.quoted.single.shell
#       ^^ keyword.operator.comparison.shell
#          ^^ meta.compound.conditional.shell meta.string.regexp.shell string.unquoted.shell - variable

[[ -e == -e ]]     # a syntax error in bash but allowed in zsh
#  ^^ meta.string.glob.shell string.unquoted.shell - variable
#     ^^ keyword.operator.comparison.shell
#        ^^ meta.compound.conditional.shell meta.string.regexp.shell string.unquoted.shell - variable

[[ $foo == 'bar' || $foo == "baz" && $bar == baz ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^^^ variable.other.readwrite.shell
#       ^^ keyword.operator.comparison.shell
#          ^^^^^ meta.string.regexp.shell
#                ^^ keyword.operator.logical.shell
#                   ^^^^ variable.other.readwrite.shell
#                        ^^ keyword.operator.comparison.shell
#                           ^^^^^ meta.string.regexp.shell
#                                 ^^ keyword.operator.logical.shell
#                                    ^^^^ variable.other.readwrite.shell
#                                         ^^ keyword.operator.comparison.shell
#                                            ^^^ meta.string.regexp.shell
#                                                ^^ punctuation.section.compound.end.shell

[[ ( $foo == 'bar' || $foo == "baz" ) && $bar == baz ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                    ^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell - meta.group
#  ^ punctuation.section.group.begin.shell
#    ^^^^ variable.other.readwrite.shell
#         ^^ keyword.operator.comparison.shell
#            ^^^^^ meta.string.regexp.shell
#                  ^^ keyword.operator.logical.shell
#                     ^^^^ variable.other.readwrite.shell
#                          ^^ keyword.operator.comparison.shell
#                             ^^^^^ meta.string.regexp.shell
#                                   ^ punctuation.section.group.end.shell
#                                     ^^ keyword.operator.logical.shell
#                                        ^^^^ variable.other.readwrite.shell
#                                             ^^ keyword.operator.comparison.shell
#                                                ^^^ meta.string.regexp.shell
#                                                    ^^ punctuation.section.compound.end.shell

if [[ expr ]] && [[ expr ]] || [[ expr ]] ; then cmd ; fi
#  ^^^^^^^^^^ meta.compound.conditional.shell
#  ^^ punctuation.section.compound.begin.shell
#          ^^ punctuation.section.compound.end.shell
#             ^^ keyword.operator.logical.shell
#                ^^^^^^^^^^ meta.compound.conditional.shell
#                ^^ punctuation.section.compound.begin.shell
#                        ^^ punctuation.section.compound.end.shell
#                           ^^ keyword.operator.logical.shell
#                              ^^^^^^^^^^ meta.compound.conditional.shell
#                              ^^ punctuation.section.compound.begin.shell
#                                      ^^ punctuation.section.compound.end.shell
#                                         ^ punctuation.terminator.statement.shell

if [[ expr && expr || expr ]] ; then cmd ; fi
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^ punctuation.section.compound.begin.shell
#          ^^ keyword.operator.logical.shell
#                  ^^ keyword.operator.logical.shell
#                          ^^ punctuation.section.compound.end.shell
#                             ^ punctuation.terminator.statement.shell

if [[ expr && ( expr || expr ) ]] ; then cmd ; fi
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#             ^^^^^^^^^^^^^^^^ meta.group.shell
#  ^^ punctuation.section.compound.begin.shell
#          ^^ keyword.operator.logical.shell
#             ^ punctuation.section.group.begin.shell
#                    ^^ keyword.operator.logical.shell
#                            ^ punctuation.section.group.end.shell
#                              ^^ punctuation.section.compound.end.shell
#                                 ^ punctuation.terminator.statement.shell

if [[ $- =~ *i* ]] ; then echo shell is not interactive; fi
#^ keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^^^^^^^^ - meta.string.regexp
#           ^^^ meta.string.regexp.shell
#              ^^^ - meta.string.regexp
#                         ^^^^ meta.function-call.identifier.shell
#                              ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#  ^^ punctuation.section.compound.begin.shell
#     ^^ meta.interpolation.parameter.shell variable.language.special.shell
#     ^ punctuation.definition.variable.shell
#        ^^ keyword.operator.comparison.shell
#           ^ invalid.illegal.unexpected-quantifier.regexp.shell
#             ^ keyword.operator.quantifier.regexp.shell
#               ^^ punctuation.section.compound.end.shell
#                  ^ punctuation.terminator.statement.shell
#                    ^^^^ keyword.control.conditional.then.shell
#                         ^^^^ support.function.shell
#                                                      ^ punctuation.terminator.statement.shell
#                                                        ^^ keyword.control.conditional.endif.shell

if [[ "$ERL_TOP" != ";"; ]];then;fi
#^ keyword.control.conditional.if.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^^^^^^^^^^^^^^^^ - meta.string.regexp
#                   ^^^ meta.string.regexp.shell
#                      ^ invalid.illegal.unexpected-token.shell - meta.string
#                       ^^^ - meta.string.regexp
#                          ^ punctuation.terminator.statement.shell
#                           ^^^^ keyword.control.conditional.then.shell
#                               ^ punctuation.terminator.statement.shell
#                                ^^ keyword.control.conditional.endif.shell

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
#  ^ punctuation.section.compound.begin.shell
#    ^ keyword.operator.logical.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#      ^ punctuation.definition.parameter.shell
#        ^ - keyword.operator
#             ^^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                            ^ punctuation.section.compound.end.shell
#                             ^ punctuation.terminator.statement.shell
#                               ^^^^ keyword.control.conditional.then.shell
    :
#   ^ meta.function-call.identifier.shell support.function.shell
fi
# <- keyword.control.conditional.endif.shell

if true ; then false ; fi
#^ keyword.control.conditional.if.shell
#  ^^^^ constant.language.boolean.true.shell
#       ^ punctuation.terminator.statement.shell
#         ^^^^ keyword.control.conditional.then.shell
#              ^^^^^ constant.language.boolean.false.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^ keyword.control.conditional.endif.shell

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
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^ keyword.control.conditional.if.shell
# <- keyword.control.conditional.if.shell
#  ^ punctuation.section.compound.begin.shell
#     ^^ variable.language.positional.shell
#         ^^ keyword.operator.comparison.shell
#               ^^ meta.compound.conditional.shell variable.parameter.option.shell
#                   ^^ variable.language.positional.shell
#                       ^^ keyword.operator.comparison.shell
#                             ^ punctuation.section.compound.end.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ keyword.control.conditional.then.shell
    local DIR=$1
    # <- keyword.declaration.variable.shell
    #     ^^^ variable.other.readwrite.shell
    #        ^ keyword.operator.assignment.shell
    #         ^^ variable.language.positional.shell
    local TARGET=$2
    # <- keyword.declaration.variable.shell
    #     ^^^^^^ variable.other.readwrite.shell
    #           ^ keyword.operator.assignment.shell
    #            ^^ variable.language.positional.shell
elif [ "$1" ]; then
# <- keyword.control.conditional.elseif.shell
#    ^^^^^^^^ meta.compound.conditional.shell
#            ^ punctuation.terminator.statement.shell
#              ^^^^ keyword.control.conditional.then.shell
    local DIR=$PWD
    # <- keyword.declaration.variable.shell
    #     ^^^ variable.other.readwrite.shell
    #        ^ keyword.operator.assignment.shell
    #         ^^^^ variable.language.builtin.shell
    local TARGET=$1
    # <- keyword.declaration.variable.shell
    #     ^^^^^^ variable.other.readwrite.shell
    #           ^ keyword.operator.assignment.shell
    #            ^^ variable.language.positional.shell
fi
# <- keyword.control.conditional.endif.shell

asdf foo && FOO=some-value pwd
# <- meta.function-call.identifier.shell variable.function.shell
#        ^^ keyword.operator.logical.shell
#           ^^^ variable.other.readwrite.shell
#              ^ keyword.operator.assignment.shell
#               ^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                          ^^^ meta.function-call.identifier.shell support.function.shell

(cd Layer1-linux  && PLATFORM=${PLATFORM} ./build ) &&
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.command.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                                         ^^^^^^^ variable.function.shell
#                                                 ^ punctuation.section.compound.end.shell
#                                                   ^^ keyword.operator.logical.shell
(cd Layer2-nodejs && PLATFORM=${PLATFORM} ./build ) &&
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.command.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                                         ^^^^^^^ variable.function.shell
#                                                 ^ punctuation.section.compound.end.shell
#                                                   ^^ keyword.operator.logical.shell
(cd Layer3-base   && PLATFORM=${PLATFORM} ./build ) &&
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.command.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                                         ^^^^^^^ variable.function.shell
#                                                 ^ punctuation.section.compound.end.shell
#                                                   ^^ keyword.operator.logical.shell
(cd Layer4-custom && PLATFORM=${PLATFORM} name=${NOSN} ./build ) || err $?
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.command.shell
# <- punctuation.section.compound.begin.shell
#                 ^^ keyword.operator.logical.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.assignment.shell
#                             ^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                                         ^^^^ variable.other.readwrite.shell
#                                             ^ keyword.operator.assignment.shell
#                                              ^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                                                      ^^^^^^^ variable.function.shell
#                                                              ^ punctuation.section.compound.end.shell
#                                                                ^^ keyword.operator.logical.shell
#                                                                   ^^^ meta.function-call.identifier.shell variable.function.shell
#                                                                      ^^^ meta.function-call.arguments.shell
#                                                                       ^^ variable.language.special.shell


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.2 Conditional Constructs (Case Statements)                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-case               #
###############################################################################

case-
# <- - keyword
#^^^^ - keyword

esac
# <- keyword.control.conditional.endcase.shell
#^^^ keyword.control.conditional.endcase.shell - meta.statement.conditional.case

case
# <- keyword.control.conditional.case.shell
#^^^ keyword.control.conditional.case.shell

esac
# <- keyword.control.conditional.endcase.shell
#^^^ keyword.control.conditional.endcase.shell

case var in
  ( patt ( esac
#^ meta.statement.conditional.case.body.shell
# ^^ meta.clause.patterns.shell - meta.string - meta.group - string
#   ^^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.groupD
#       ^^^ meta.clause.patterns.shell - meta.string - meta.group - string
#          ^^^^ meta.statement.conditional.case.end.shell
# ^ punctuation.section.patterns.begin.shell
#        ^ invalid.illegal.unexpected-token.shell
#          ^^^^ keyword.control.conditional.endcase.shell
#              ^ - meta.conditional

case   # comment
#^^^ meta.statement.conditional.case.shell
#   ^^^^^^^^^^^^^ meta.statement.conditional.case.word.shell
#^^^ keyword.control.conditional.case.shell
#      ^^^^^^^^^^ comment.line.number-sign.shell
  var  # comment
#^^^^^^^^^^^^^^^^ meta.statement.conditional.case.word.shell
#      ^^^^^^^^^^ comment.line.number-sign.shell
  in   # comment
# <- meta.statement.conditional.case.word.shell
#^ meta.statement.conditional.case.word.shell
# ^^ meta.statement.conditional.case.shell
#   ^^^^^^^^^^^^^ meta.statement.conditional.case.body.shell
# ^^ keyword.control.conditional.in.shell
#      ^^^^^^^^^^ comment.line.number-sign.shell
  pattern) # comment
#^ meta.statement.conditional.case.body.shell
# ^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.group
#        ^ meta.clause.patterns.shell - meta.clause.body - meta.string - meta.group - string
#         ^^^^^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.shell - meta.clause.patterns
#          ^^^^^^^^^^ comment.line.number-sign.shell
esac
# <- meta.statement.conditional.case.end.shell keyword.control.conditional.endcase.shell
#^^^ meta.statement.conditional.case.end.shell keyword.control.conditional.endcase.shell


case "$1" in
# <- keyword.control.conditional.case.shell
#^^^ keyword.control.conditional.case.shell
#    ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#     ^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.positional.shell punctuation.definition.variable.shell
#      ^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.positional.shell
#       ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#         ^^ keyword.control.conditional.in.shell
setup )
# <- meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#^^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#    ^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string - string
# <- - variable.function - support.function - meta.function-call
#     ^ punctuation.section.patterns.end.shell
echo Preparing the server...
# <- meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.identifier.shell support.function.shell
#^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell
;;
# <- meta.statement.conditional.case.body.shell meta.clause.shell punctuation.terminator.clause.shell
#^ meta.statement.conditional.case.body.shell meta.clause.shell punctuation.terminator.clause.shell
# ^ meta.statement.conditional.case.body.shell - meta.clause
dep\
loy )
# <- meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
#  ^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string - string
# <- - variable.function - support.function - meta.function-call
#   ^ punctuation.section.patterns.end.shell
echo Deploying...
# <- meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.identifier.shell support.function.shell
#^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell
;;
# <- meta.statement.conditional.case.body.shell meta.clause.shell punctuation.terminator.clause.shell
#^ meta.statement.conditional.case.body.shell meta.clause.shell punctuation.terminator.clause.shell
# ^ meta.statement.conditional.case.body.shell - meta.clause
* )
# <- meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
#^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string - string - punctuation
# ^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell punctuation.section.patterns.end.shell
#  ^ meta.statement.conditional.case.body.shell meta.clause.shell
cat <<'ENDCAT' # comment
# <- meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.identifier.shell meta.command.shell variable.function.shell
#  ^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell - meta.redirection - meta.string - meta.tag
#   ^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell meta.redirection.shell - meta.string - meta.tag
#     ^^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.begin.shell - string.unquoted.heredoc
#             ^^^^^^^^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell meta.redirection.shell - meta.tag - string.unquoted.heredoc
#   ^^ keyword.operator.assignment.redirection.shell
#     ^ punctuation.definition.tag.begin.shell - entity
#      ^^^^^^ entity.name.tag.heredoc.shell
#            ^ punctuation.definition.tag.end.shell - entity
#              ^^^^^^^^^^ comment.line.number-sign.shell

foo
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
ENDCAT
# <- meta.statement.conditional.case.body.shell meta.clause.body.shell meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
;;
# <- meta.statement.conditional.case.body.shell meta.clause.shell punctuation.terminator.clause.shell
#^ meta.statement.conditional.case.body.shell meta.clause.shell punctuation.terminator.clause.shell
# ^ meta.statement.conditional.case.body.shell - meta.clause
esac
# <- meta.statement.conditional.case.end.shell keyword.control.conditional.endcase.shell
#^^^ meta.statement.conditional.case.end.shell keyword.control.conditional.endcase.shell


case "${foo}" in- in_ in=10 in
#^^^ meta.statement.conditional.case.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.word.shell
#                           ^^ meta.statement.conditional.case.shell
#                             ^ meta.statement.conditional.case.body.shell
# <- keyword.control.conditional.case.shell
#^^^ keyword.control.conditional.case.shell
#             ^^ - keyword.control.conditional.in
#                 ^^ - keyword.control.conditional.in
#                     ^^ - keyword.control.conditional.in
#                           ^^ keyword.control.conditional.in
    ( help | h ) bar ;;
#^^^ meta.statement.conditional.case.body.shell - meta.clause.patterns
#   ^^ meta.clause.patterns.shell - meta.string - meta.group - string
#     ^^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.group
#         ^^^ meta.clause.patterns.shell - meta.string - meta.group - string
#            ^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.group
#             ^^ meta.clause.patterns.shell - meta.string - meta.group - string
#               ^ meta.statement.conditional.case.body.shell meta.clause.shell
#                ^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell - meta.clause.patterns
#                    ^^ meta.statement.conditional.case.body.shell meta.clause.shell
#                      ^ meta.statement.conditional.case.body.shell - meta.clause
#   ^ punctuation.section.patterns.begin.shell
#          ^ keyword.operator.logical.shell
#              ^ punctuation.section.patterns.end.shell
#                    ^^ punctuation.terminator.clause.shell
    do1 ) foo1 ;&
#^^^ meta.statement.conditional.case.body.shell - meta.clause.patterns
#   ^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.group
#      ^^ meta.clause.patterns.shell - meta.string - meta.group - string
#        ^ meta.statement.conditional.case.body.shell meta.clause.shell
#         ^^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell - meta.clause.patterns
#              ^^ meta.statement.conditional.case.body.shell meta.clause.shell
#                ^ meta.statement.conditional.case.body.shell - meta.clause
#       ^ punctuation.section.patterns.end.shell
#              ^^ punctuation.terminator.clause.shell
    (do2 ) foo2 ;;&
#^^^ meta.statement.conditional.case.body.shell - meta.clause.patterns
#   ^ meta.clause.patterns.shell - meta.string - meta.group - string
#    ^^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.group
#       ^^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string - meta.group - string
#         ^ meta.statement.conditional.case.body.shell meta.clause.shell
#          ^^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell
#               ^^^ meta.statement.conditional.case.body.shell meta.clause.shell
#                  ^ meta.statement.conditional.case.body.shell - meta.clause
#   ^ punctuation.section.patterns.begin.shell
#        ^ punctuation.section.patterns.end.shell
#               ^^^ punctuation.terminator.clause.shell
    *) bar
#^^^ meta.statement.conditional.case.body.shell - meta.clause.patterns
#   ^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell - meta.group
#    ^ meta.statement.conditional.case.body.shell meta.clause.patterns.shell - meta.string - meta.group - string
#     ^ meta.statement.conditional.case.body.shell meta.clause.shell
#      ^^^^ meta.statement.conditional.case.body.shell meta.clause.body.shell
#   ^ constant.other.wildcard.asterisk.shell
#    ^ punctuation.section.patterns.end.shell
esac
# <- meta.statement.conditional.case.end.shell keyword.control.conditional.endcase.shell
#^^^ meta.statement.conditional.case.end.shell keyword.control.conditional.endcase.shell
#   ^ - meta.conditional - keyword

case $TERM in
    sun-cmd)
        #  ^ punctuation.section.patterns.end.shell
        update_terminal_cwd() { print -Pn "\e]l%~\e\\" };;
        #                                              ^ meta.function punctuation.section.block.end.shell
        #                                               ^^ punctuation.terminator.clause.shell
    *xterm*|rxvt|?(dt|k|E)term)
        #^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
        #  ^ meta.clause.patterns.shell - meta.string - meta.group - string
        #   ^^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
        #       ^ meta.clause.patterns.shell - meta.string - meta.group - string
        #        ^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
        #         ^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell string.unquoted.shell
        #                 ^^^^ meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell
        #                     ^ meta.clause.patterns.shell - meta.string - meta.group - string
        # ^ constant.other.wildcard.asterisk.shell
        #  ^ keyword.operator.logical.shell
        #       ^ keyword.operator.logical.shell
        #        ^ keyword.operator.quantifier.regexp.shell
        #         ^ punctuation.section.group.begin.regexp.shell
        #            ^ keyword.operator.alternation.regexp.shell
        #              ^ keyword.operator.alternation.regexp.shell
        #                ^ punctuation.section.group.end.regexp.shell
        #                     ^ punctuation.section.patterns.end.shell
        update_terminal_cwd() { print -Pn "\e]2;%~\a" };;
        #                                             ^ meta.function punctuation.section.block.end.shell
        #                                              ^^ punctuation.terminator.clause.shell
    *)
    # <- meta.clause.patterns.shell meta.string.glob.shell string.unquoted.shell constant.other.wildcard.asterisk.shell
    #^ punctuation.section.patterns.end.shell
        update_terminal_cwd() {};;
        #                      ^ meta.function punctuation.section.block.end.shell
        #                       ^^ punctuation.terminator.clause.shell
esac
# <- keyword.control.conditional.endcase.shell

case $SERVER in
# <- keyword.control.conditional.case.shell
ws-+([0-9]).host.com) echo "Web Server"
#^^^ meta.clause.patterns.shell meta.string.glob.shell - meta.group
#   ^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell
#          ^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell - meta.group
#                   ^ meta.clause.patterns.shell - meta.string - meta.group - string
#^^^^^^^^^^^^^^^^^^^ string.unquoted.shell
#  ^ keyword.operator.quantifier.regexp.shell
#   ^ punctuation.section.group.begin.regexp.shell
#    ^ punctuation.definition.set.begin.regexp.shell
#     ^^^ constant.other.range.regexp.shell
#      ^ punctuation.separator.sequence.regexp.shell
#        ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.section.group.end.regexp.shell
#                   ^ punctuation.section.patterns.end.shell
;;
# <- punctuation.terminator.clause.shell
#^ punctuation.terminator.clause.shell
db-+([0-9])\.host\.com) echo "DB server"
#^^^ meta.clause.patterns.shell meta.string.glob.shell - meta.group
#   ^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell meta.group.regexp.shell
#          ^^^^^^^^^^^ meta.clause.patterns.shell meta.string.glob.shell - meta.group
#  ^ keyword.operator.quantifier.regexp.shell
#   ^ punctuation.section.group.begin.regexp.shell
#    ^ punctuation.definition.set.begin.regexp.shell
#     ^^^ constant.other.range.regexp.shell
#      ^ punctuation.separator.sequence.regexp.shell
#        ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.section.group.end.regexp.shell
#                     ^ punctuation.section.patterns.end.shell
;;
# <- punctuation.terminator.clause.shell
#^ punctuation.terminator.clause.shell
bk-+([0-9])\.host\.com) echo "Backup server"
#  ^ keyword.operator.quantifier.regexp.shell
#   ^ punctuation.section.group.begin.regexp.shell
#    ^ punctuation.definition.set.begin.regexp.shell
#     ^^^ constant.other.range.regexp.shell
#      ^ punctuation.separator.sequence.regexp.shell
#        ^ punctuation.definition.set.end.regexp.shell
#         ^ punctuation.section.group.end.regexp.shell
#                     ^ punctuation.section.patterns.end.shell
#                       ^^^^ support.function.shell
;;
# <- punctuation.terminator.clause.shell
#^ punctuation.terminator.clause.shell
*)echo "Unknown server"
# <- constant.other.wildcard.asterisk.shell
#^ punctuation.section.patterns.end.shell
# ^^^^ support.function.shell
;;
# <- punctuation.terminator.clause.shell
#^ punctuation.terminator.clause.shell
esac
# <- keyword.control.conditional.endcase.shell
#^^^ keyword.control.conditional.endcase.shell

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


###############################################################################
# 3.2.5 Compound Commands                                                     #
# 3.2.5.3 Grouping Commands                                                   #
# https://www.gnu.org/software/bash/manual/bash.html#Command-Grouping         #
###############################################################################

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

{ foo -o }
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^^^^^^^^^ meta.compound.command.shell - meta.compound meta.compound
# ^^^ meta.function-call.identifier.shell
#    ^^^ meta.function-call.arguments.shell
#       ^^ - meta.function-call
#         ^ - meta.compound
# ^^^ variable.function.shell
#     ^ meta.parameter.option.shell variable.parameter.option.shell punctuation.definition.parameter.shell
#      ^ meta.parameter.option.shell variable.parameter.option.shell - punctuation
#        ^ punctuation.section.compound.end.shell

{
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^ meta.compound.command.shell - meta.compound meta.compound
  {
#^ meta.compound.command.shell - meta.compound meta.compound
# ^^ meta.compound.command.shell meta.compound.command.shell
# ^ punctuation.section.compound.begin.shell
    foo args
#^^^^^^^^^^^^ meta.compound.command.shell meta.compound.command.shell
#   ^^^ meta.function-call.identifier.shell variable.function.shell
#      ^^^^^ meta.function-call.arguments.shell
  } 2>> "$stderr_log"
#^^ meta.compound.command.shell meta.compound.command.shell
#  ^ meta.compound.command.shell - meta.compound meta.compound
#   ^^^^^^^^^^^^^^^^^ meta.compound.command.shell meta.redirection.shell
# ^ punctuation.section.compound.end.shell
} 1>> "$stdout_log"
# <- meta.compound.command.shell - meta.compound meta.compound
#^ - meta
# ^^^^^^^^^^^^^^^^^ meta.redirection.shell
# <- punctuation.section.compound.end.shell


###############################################################################
# 3.2.6 Coprocesses                                                           #
# https://www.gnu.org/software/bash/manual/bash.html#Coprocesses              #
###############################################################################

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
#                            ^^^^^^^^^^^^^ - meta.coproc
#                              ^^^^ meta.function-call.identifier.shell
#                                  ^^^^^^ - meta.function-call.identifier.shell
#^^^^^ keyword.declaration.coproc.shell
#      ^^ variable.function.shell
#                            ^ punctuation.terminator.statement.shell
#                              ^^^^ support.function.shell
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
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell - meta.interpolation
#          ^ punctuation.definition.string.begin.shell
#                                    ^ punctuation.definition.string.end.shell

coproc { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^^ meta.coproc.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.compound.command.shell
#                                            ^^^ - meta.coproc - meta.compound - meta.function-call
#                                               ^^^ meta.function-call.identifier.shell
#                                                  ^ - meta.function-call - meta.function.coproc
#        ^^ meta.function-call.identifier.shell
#          ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ - meta.function-call.identifier.shell
#                                ^^^^ meta.function-call.identifier.shell
#                                    ^^^^^^^^^^^ - meta.function-call
#                                               ^^^ meta.function-call.identifier.shell
#^^^^^ keyword.declaration.coproc.shell
#      ^ punctuation.section.compound.begin.shell
#        ^^ variable.function.shell
#                              ^ punctuation.terminator.statement.shell
#                                ^^^^ support.function.shell
#                                    ^ punctuation.terminator.statement.shell
#                                      ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                       ^^ keyword.operator.assignment.redirection.shell
#                                         ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                           ^ punctuation.section.compound.end.shell
#                                             ^ keyword.operator.assignment.pipe.shell
#                                               ^^^ variable.function.shell

coproc myls { ls thisfiledoesntexist; read; 2>&1 } | foo
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^^ meta.coproc.shell
#      ^^^^^ meta.coproc.identifier.shell - meta.compound
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.coproc.command.shell meta.compound.command.shell
#                                                 ^^^ - meta.function-call
#                                                    ^^^ meta.function-call.identifier.shell
#^^^^^ keyword.declaration.coproc.shell
#           ^ punctuation.section.compound.begin.shell
#             ^^ variable.function.shell
#                                   ^ punctuation.terminator.statement.shell
#                                     ^^^^ support.function.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                            ^^ keyword.operator.assignment.redirection.shell
#                                              ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                ^ punctuation.section.compound.end.shell
#                                                  ^ keyword.operator.assignment.pipe.shell
#                                                    ^^^ variable.function.shell

{ coproc tee { tee logfile ;} >&3 ;} 3>&1
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
# ^^^^^^^ meta.compound.command.shell meta.coproc.shell
#        ^^^^ meta.compound.command.shell meta.coproc.identifier.shell
#            ^^^^^^^^^^^^^^^^ meta.compound.command.shell meta.coproc.command.shell meta.compound.command.shell
#                            ^ meta.compound.command.shell - meta.redirection - meta.coproc
#                             ^^^ meta.compound.command.shell meta.redirection.shell - meta.coproc
#                                ^^^ meta.compound.command.shell - meta.redirection - meta.coproc
#                                   ^ - meta
#                                    ^^^^ meta.redirection.shell
# ^^^^^^ keyword.declaration.coproc.shell
#        ^^^ entity.name.function.shell
#            ^ punctuation.section.compound.begin.shell
#              ^^^ variable.function.shell
#                  ^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                          ^ punctuation.terminator.statement.shell
#                           ^ punctuation.section.compound.end.shell
#                             ^^ keyword.operator.assignment.redirection
#                               ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                 ^ punctuation.terminator.statement.shell
#                                  ^ punctuation.section.compound.end.shell
#                                    ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                     ^^ keyword.operator.assignment.redirection
#                                       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

coproc foobar {
# <- meta.coproc.shell keyword.declaration.coproc.shell
#^^^^^^ meta.coproc.shell
#      ^^^^^^^ meta.coproc.identifier.shell
#             ^^ meta.coproc.command.shell meta.compound.command.shell
#^^^^^ keyword.declaration.coproc.shell
#      ^^^^^^ entity.name.function.shell
#             ^ punctuation.section.compound.begin.shell
    read
#^^^^^^^^ meta.coproc.command.shell meta.compound.command.shell
#   ^^^^ meta.coproc.command.shell meta.compound.command.shell meta.function-call.identifier.shell support.function.shell
}
# <- meta.coproc.command.shell meta.compound.command.shell punctuation.section.compound.end.shell
#^ - meta


###############################################################################
# 3.3 Shell Functions                                                         #
# https://www.gnu.org/software/bash/manual/bash.html#Shell-Functions          #
###############################################################################

# Anonymous Functions

   ()
#^^ - meta.function-call - meta.function
#  ^^^ meta.function-call.shell
#  ^^ meta.function.anonymous.parameters.shell
#  ^ punctuation.section.parameters.begin.shell
#   ^ punctuation.section.parameters.end.shell
#    ^ meta.function.anonymous.shell

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

   () { [[ $# == 2 ]] && tput setaf $2 || tput setaf 3; echo -e "$1"; tput setaf 15; } arg1 arg2
#^^ source.shell - meta.function-call - meta.function
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell meta.function-call.shell - meta.function meta.function
#  ^^ meta.function.anonymous.parameters.shell
#    ^ meta.function.anonymous.shell - meta.compound
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.anonymous.body.shell meta.block.shell
#                                                                                     ^^^^^^^^^^ meta.function-call.arguments.shell
#  ^ punctuation.section.parameters.begin.shell
#   ^ punctuation.section.parameters.end.shell
#    ^ - punctuation
#     ^ punctuation.section.block.begin.shell
#       ^^ punctuation.section.compound.begin
#          ^ punctuation.definition.variable
#           ^ variable.language
#             ^^ keyword.operator.comparison
#                  ^^ punctuation.section.compound.end
#                     ^^ keyword.operator.logical
#                                                                                    ^ punctuation.section.block.end.shell
#                                                                                      ^^^^ meta.string.glob.shell string.unquoted.shell
#                                                                                           ^^^^ meta.string.glob.shell string.unquoted.shell

function ; {} arg
# <- meta.function-call.shell meta.function.anonymous.shell keyword.declaration.function.shell
#^^^^^^^^ meta.function-call.shell meta.function.anonymous.shell
#        ^^^^^^^^^ - meta.function.anonymous
#          ^^ meta.function-call.identifier.shell meta.command.shell
#            ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.terminator.statement.shell
#          ^^ variable.function.shell
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
#^^^^^^^^^^^ meta.function-call.shell
#^^^^^^^^ meta.function.anonymous.shell
#        ^^ meta.function.anonymous.parameters.shell
#          ^ meta.function.anonymous.shell
#           ^^^^^^^^ - meta.function.anonymous
#             ^^ meta.function-call.identifier.shell
#               ^^^^ meta.function-call.arguments.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ punctuation.section.parameters.begin.shell
#         ^ punctuation.section.parameters.end.shell
#           ^ punctuation.terminator.statement.shell
#             ^^ variable.function.shell
#                ^^^ meta.string.glob.shell string.unquoted.shell

# Posix Functions

  func() ;
#^ source.shell - meta.function
# ^^^^ meta.function.identifier.shell
#     ^^ meta.function.parameters.shell
#       ^ meta.function.shell

  func () ;
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell

  func () ()
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell

  func () {}
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell

  func () {} >&2 # comment
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell
#            ^^^ meta.redirection.shell
#                 ^^^^^^^^^^ comment.line.number-sign.shell

  func () {} rest # comment
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell
#            ^^^^ invalid.illegal.unexpected-token.shell
#                 ^^^^^^^^^^ comment.line.number-sign.shell

  func () {} rest ; echo done
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell
#            ^^^^ invalid.illegal.unexpected-token.shell
#                 ^ punctuation.terminator.statement.shell
#                   ^^^^ support.function.shell
#                        ^^^^ meta.string.glob.shell string.unquoted.shell

  func () {} rest && echo done
#^ source.shell - meta.function
# ^^^^^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell
#         ^^ meta.function.body.shell meta.block.shell
#            ^^^^ invalid.illegal.unexpected-token.shell
#                 ^^ keyword.operator.logical.shell
#                    ^^^^ support.function.shell
#                         ^^^^ meta.string.glob.shell string.unquoted.shell

  logC () { [[ $# == 2 ]] && tput setaf $2 || tput setaf 3; echo -e "$1"; tput setaf 15; }
#^ source.shell - meta.function
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell - meta.function meta.function
# ^^^^ meta.function.identifier.shell
#     ^ meta.function.identifier.shell
#      ^^ meta.function.parameters.shell
#        ^ meta.function.shell - meta.function.identifier - meta.compound
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.shell meta.block.shell
#^ - entity
# ^^^^ entity.name.function.shell
#     ^ - entity - punctuation
#      ^ punctuation.section.parameters.begin.shell
#       ^ punctuation.section.parameters.end.shell
#        ^ - punctuation
#         ^ punctuation.section.block.begin.shell
#           ^^ punctuation.section.compound.begin.shell
#              ^ punctuation.definition.variable.shell
#              ^^ variable.language.special.shell
#                 ^^ keyword.operator.comparison.shell
#                      ^^ punctuation.section.compound.end.shell
#                         ^^ keyword.operator.logical.shell

logExit ( ) {
# <- source.shell meta.function.identifier.shell entity.name.function.shell
#^^^^^^^^^^^^^ source.shell - meta.function meta.function
#^^^^^^ meta.function.identifier.shell entity.name.function.shell
#      ^ meta.function.identifier.shell
#       ^^^ meta.function.parameters.shell
#          ^ meta.function.shell - meta.block
#           ^^ meta.function.body.shell meta.block.shell
#^^^^^^ entity.name.function.shell
#      ^ - entity - punctuation
#       ^ punctuation.section.parameters.begin.shell
#         ^ punctuation.section.parameters.end.shell
#           ^ punctuation.section.block.begin.shell
  [[ $1 == '0' ]] && tput setaf 2  || tput setaf 1;
  #<- meta.compound.conditional.shell punctuation.section.compound.begin.shell
  #^ meta.compound.conditional.shell punctuation.section.compound.begin.shell
  #            ^^ meta.compound.conditional.shell punctuation.section.compound.end.shell
  [[ $1 == '0' ]] && echo -e "$2 PASSED" || echo -e "$2 FAILED";
  #<- meta.compound.conditional.shell punctuation.section.compound.begin.shell
  #^ meta.compound.conditional.shell punctuation.section.compound.begin.shell
  #            ^^ meta.compound.conditional.shell punctuation.section.compound.end.shell
  #               ^^ keyword.operator.logical.shell
  #                  ^^^^ meta.function-call.identifier.shell support.function.shell
  tput setaf 15;
  # <- meta.function meta.function-call variable.function
  #            ^ meta.function punctuation.terminator.statement
  [[ $1 == '0' ]] || exit -1
  #<- meta.compound.conditional.shell punctuation.section.compound.begin.shell
  #^ meta.compound.conditional.shell punctuation.section.compound.begin.shell
  #            ^^ meta.compound.conditional.shell punctuation.section.compound.end.shell
  #               ^^ keyword.operator.logical.shell
  #                  ^^^^ keyword.control.flow.exit.shell
  #                       ^ keyword.operator.arithmetic.shell
  #                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

logExit $? $WEIRD
# <- meta.function-call.identifier.shell variable.function.shell
#^^^^^^ meta.function-call.identifier.shell variable.function.shell
#      ^^^^^^^^^^ meta.function-call.arguments.shell
#      ^ - meta.interpolation - variable
#       ^^ meta.interpolation.parameter.shell variable.language.special.shell
#         ^ - meta.interpolation - variable
#          ^^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                ^ - meta.function-call - meta.interpolation - variable

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

function foo
#^^^^^^^^^^^^ source.shell - meta.function meta.function
# <- source.shell meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^ meta.function.identifier.shell
#           ^ meta.function.shell
#^^^^^^^ keyword.declaration.function.shell
#       ^ - entity - keyword - storage
#        ^^^ entity.name.function.shell
#           ^ - entity
{
# <- meta.function.body.shell meta.block.shell punctuation.section.block.begin.shell
    foo bar
    # <- meta.function.body.shell meta.block.shell meta.function-call.identifier.shell
    # <- variable.function.shell

    return 0
    # <- keyword.control.flow.return.shell
    #^^^^^ keyword.control.flow.return.shell
    #      ^ meta.number.integer.decimal.shell constant.numeric.value.shell

    return ${RETURN_CODE}
    # <- keyword.control.flow.return.shell
    #^^^^^ keyword.control.flow.return.shell
    #      ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function

function func\
name
# <- source.shell meta.function.identifier.shell entity.name.function.shell

function \
func\
name
# <- source.shell meta.function.identifier.shell entity.name.function.shell

function foo (     ) {
#^^^^^^^^^^^^^^^^^^^^^^ source.shell - meta.function meta.function
# <- source.shell meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^ meta.function.identifier.shell
#            ^^^^^^^ meta.function.parameters.shell
#                   ^ meta.function.shell
#                    ^^ meta.function.body.shell meta.block.shell
#       ^ - entity.name.function
#        ^^^ entity.name.function.shell
#           ^ - entity.name.function
#            ^ punctuation.section.parameters.begin.shell
#                  ^ punctuation.section.parameters.end.shell
#                    ^ punctuation.section.block.begin.shell
    echo 'hello from foo'
    # <- meta.function.body.shell meta.block.shell meta.function-call.identifier.shell
    # <- support.function.shell
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function

f () (
# <- meta.function.identifier.shell entity.name.function.shell
#^ meta.function.identifier.shell - entity - punctuation
# ^^ meta.function.parameters.shell
#   ^ meta.function.shell - meta.block
#    ^ meta.function.body.shell meta.block.shell punctuation.section.block.begin.shell
  echo hello
  # <- meta.function.body.shell meta.block.shell meta.function-call.identifier.shell
  # <- support.function.shell
)
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

function f (
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^ meta.function.identifier.shell
#          ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^ entity.name.function.shell
#          ^ punctuation.section.block.begin.shell
  echo hello
  # <- meta.function meta.function-call support.function
)
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
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
# <- meta.function-call.identifier.shell variable.function.shell punctuation.definition.quoted.begin.shell
#^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
# ^  punctuation.definition.quoted.end.shell
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

function 7zip {
# <- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell keyword.declaration.function.shell
#       ^^^^^^ meta.function.identifier.shell
#        ^^^^ entity.name.function.shell
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
7zip
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function [] () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^ meta.function.identifier.shell
#           ^^ meta.function.parameters.shell
#             ^ meta.function.shell
#              ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ entity.name.function.shell
#           ^ punctuation.section.parameters.begin.shell
#            ^ punctuation.section.parameters.end.shell
#              ^ meta.block.shell punctuation.section.block.begin.shell
  echo "Hello from []"
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
[]
# <- meta.function-call.identifier.shell variable.function.shell
#^ meta.function-call.identifier.shell variable.function.shell

function [[]] () {
#<- meta.function.shell keyword.declaration.function.shell
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^ meta.function.shell
#                ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.block.shell punctuation.section.block.begin.shell
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
#             ^ meta.function.shell
#              ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^ entity.name.function.shell
#           ^ punctuation.section.parameters.begin.shell
#            ^ punctuation.section.parameters.end.shell
#              ^ meta.block.shell punctuation.section.block.begin.shell
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
#               ^ meta.function.shell
#                ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.block.shell punctuation.section.block.begin.shell
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
#               ^ meta.function.shell
#                ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.block.shell punctuation.section.block.begin.shell
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
#               ^ meta.function.shell
#                ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.block.shell punctuation.section.block.begin.shell
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
#               ^ meta.function.shell
#                ^^ meta.function.body.shell meta.block.shell
#^^^^^^^ keyword.declaration.function.shell
#        ^^^^ entity.name.function.shell
#             ^ punctuation.section.parameters.begin.shell
#              ^ punctuation.section.parameters.end.shell
#                ^ meta.block.shell punctuation.section.block.begin.shell
  echo "Hello from =foo"
}
=foo
# <- meta.function-call.identifier.shell variable.function.shell
#^^^ meta.function-call.identifier.shell variable.function.shell

function fo${bar}baz () {}
#       ^^^ meta.function.identifier.shell - meta.interpolation - meta.string
#          ^^^^^^ meta.function.identifier.shell meta.interpolation.parameter.shell - meta.string
#                ^^^ meta.function.identifier.shell - meta.interpolation
#                    ^^ meta.function.parameters.shell
#                      ^ meta.function.shell
#                       ^^ meta.function.body.shell meta.block.shell
#        ^^ entity.name.function.shell
#          ^^^^^^ - entity.name
#                ^^^ entity.name.function.shell

# Functions may replace booleans. Won't respect that in function calls though.
function true () {} ; function false () {}
#^^^^^^^ meta.function.shell
#       ^^^^^^ meta.function.identifier.shell
#             ^^ meta.function.parameters.shell
#               ^ meta.function.shell
#                ^^ meta.function.body.shell meta.block.shell
#                  ^^^ - meta.function
#                     ^^^^^^^^ meta.function.shell
#                             ^^^^^^^ meta.function.identifier.shell
#                                    ^^ meta.function.parameters.shell
#                                      ^ meta.function.shell
#                                       ^^ meta.function.body.shell meta.block.shell
#                                         ^ - meta.function
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
#        ^ punctuation.section.patterns.end.shell
        \'*)    : skip opening quote after sh -c ;;
        *)
            echo "$word"
            return
        esac
    done
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell
#^ - meta.function

# <- - meta.function


###############################################################################
# 3.4 Shell Parameters                                                        #
# https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters         #
###############################################################################

x= # some comment
#^ keyword.operator.assignment.shell
# ^ - string.unquoted
#  ^^^^^^^^^^^^^^^ comment.line.number-sign.shell
x=a
# <- variable.other.readwrite
#^ keyword.operator.assignment.shell
# ^ meta.string.glob.shell string.unquoted.shell
x=a # some comment
#^ keyword.operator.assignment.shell
#  ^ - string.unquoted
x=a#not-a-comment
#^ keyword.operator.assignment.shell
#  ^ meta.string string.unquoted - comment
foo=bar baz=qux
#   ^^^ meta.string.glob.shell string.unquoted.shell
#           ^^^ meta.string.glob.shell string.unquoted.shell
foo=bar\
qux
#<- meta.string.glob.shell string.unquoted.shell
#^^ meta.string.glob.shell string.unquoted.shell
foo=bar"baz"qux
#<- variable.other.readwrite.shell
#^^ variable.other.readwrite.shell
#  ^ keyword.operator.assignment.shell
#   ^^^^^^^^^^^ meta.string.glob.shell - string string
#   ^^^ string.unquoted.shell
#      ^^^^^ string.quoted.double.shell
#           ^^^ string.unquoted.shell
foo='bar'
#<- variable.other.readwrite.shell
#^^ variable.other.readwrite.shell
#  ^ keyword.operator.assignment.shell
#   ^^^^^ meta.string.glob.shell string.quoted.single.shell
x=0.19.8.1
# <- variable.other.readwrite.shell
#^ keyword.operator.assignment.shell
# ^^^^^^^^ string.unquoted.shell
x=10
# <- variable.other.readwrite.shell
#^ keyword.operator.assignment.shell
# ^^ meta.string.glob.shell string.unquoted.shell

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
# ^ meta.string.glob.shell string.unquoted.shell
#  ^ - string.unquoted
#    ^ keyword.operator.assignment.shell
#     ^ meta.string.glob.shell string.unquoted.shell
#      ^ - string.unquoted
#       ^^^ meta.function-call support.function
x=${foo} y=${baz}"asdf" pwd
#^ keyword.operator.assignment.shell
# ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#       ^^^ - meta.string - mete.interpolation - string
#          ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                ^^^^^^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation
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
#    ^^^^^ constant.language.boolean.false.shell
false=true
# <- variable.other.readwrite.shell - constant
#^^^^ variable.other.readwrite.shell - constant
#    ^ keyword.operator.assignment.shell
#     ^^^^ constant.language.boolean.true.shell
charclass=\}ower
# <- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^^^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
#        ^ meta.assignment.shell keyword.operator.assignment.shell
#         ^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#         ^^ constant.character.escape.shell

(foo=bar)
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^^^ meta.compound.command.shell meta.assignment.l-value.shell variable.other.readwrite.shell
#   ^ meta.compound.command.shell meta.assignment.shell keyword.operator.assignment.shell
#    ^^^ meta.compound.command.shell meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#       ^ meta.compound.command.shell punctuation.section.compound.end.shell - string

{ foo=bar }
# <- meta.compound.command.shell punctuation.section.compound.begin.shell
#^ meta.compound.command.shell - meta.assignment
# ^^^ meta.compound.command.shell meta.assignment.l-value.shell variable.other.readwrite.shell
#    ^ meta.compound.command.shell meta.assignment.shell keyword.operator.assignment.shell
#     ^^^ meta.compound.command.shell meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#        ^ meta.compound.command.shell - meta.assignment
#         ^ meta.compound.command.shell punctuation.section.compound.end.shell

foo+=" baz"
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^ meta.assignment.l-value.shell variable.other.readwrite.shell
#  ^^ meta.assignment.shell keyword.operator.assignment.shell
#    ^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.quoted.double.shell

foo-=" baz"
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^ meta.assignment.l-value.shell variable.other.readwrite.shell
#  ^^ meta.assignment.shell keyword.operator.assignment.shell
#    ^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.quoted.double.shell

## Arrays ##

array=()  # an empty array
#    ^ keyword.operator.assignment
#     ^ punctuation.section.sequence.begin
#      ^ punctuation.section.sequence.end

array=(one two three four -5 (foo bar baz)
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^ meta.assignment.l-value.shell - meta.sequence
#    ^ meta.assignment.shell - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.sequence meta.sequence
#                                         ^ - meta
#^^^^ variable.other.readwrite.shell
#    ^ keyword.operator.assignment.shell
#     ^ punctuation.section.sequence.begin.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ - meta.string - string
#          ^^^ meta.string.glob.shell string.unquoted.shell
#             ^ - meta.string - string
#              ^^^^^ meta.string.glob.shell string.unquoted.shell
#                   ^ - meta.string - string
#                    ^^^^ meta.string.glob.shell string.unquoted.shell
#                        ^ - meta.string - string
#                         ^^ meta.string.glob.shell string.unquoted.shell
#                           ^^ - meta.string - string
#                            ^ invalid.illegal.unexpected-token.shell
#                             ^^^ meta.string.glob.shell string.unquoted.shell
#                                ^ - meta.string - string
#                                 ^^^ meta.string.glob.shell string.unquoted.shell
#                                    ^ - meta.string - string
#                                     ^^^ meta.string.glob.shell string.unquoted.shell
#                                        ^ punctuation.section.sequence.end.shell

array=($one "two" ${three} 'four' $5)
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^ meta.assignment.l-value.shell - meta.sequence
#    ^ meta.assignment.shell - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.sequence meta.sequence
#                                    ^ - meta
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
#                                 ^^ variable.language.positional.shell
#                                 ^ punctuation.definition.variable.shell
#                                   ^ punctuation.section.sequence.end.shell

array=([one]== ["two"]='what' [4+5]=qux [five]=0 [six]=0s)
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^ meta.assignment.l-value.shell - meta.sequence
#    ^ meta.assignment.shell - meta.sequence
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.sequence.list.shell - meta.sequence meta.sequence
#                                                         ^ - meta
#      ^^^^^ meta.item-access.shell
#              ^^^^^^^ meta.item-access.shell
#                             ^^^^^ meta.item-access.shell
#                                       ^^^^^^ meta.item-access.shell
#                                                ^^^^^ meta.item-access.shell
#    ^ keyword.operator.assignment.shell
#     ^ punctuation.section.sequence.begin.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^^^ entity.name.key.shell
#          ^ punctuation.section.item-access.end.shell
#           ^ keyword.operator.assignment.shell
#            ^ meta.string.glob.shell string.unquoted.shell - keyword
#              ^ punctuation.section.item-access.begin.shell
#               ^^^^^ entity.name.key.shell
#               ^ punctuation.definition.quoted.begin.shell
#                   ^ punctuation.definition.quoted.end.shell
#                    ^ punctuation.section.item-access.end.shell
#                     ^ keyword.operator.assignment.shell
#                      ^^^^^^ string.quoted.single.shell
#                             ^ punctuation.section.item-access.begin.shell
#                              ^^^ entity.name.key.shell - constant - keyword
#                                 ^ punctuation.section.item-access.end.shell
#                                  ^ keyword.operator.assignment.shell
#                                   ^^^ meta.string.glob.shell string.unquoted.shell
#                                       ^ punctuation.section.item-access.begin.shell
#                                        ^^^^ entity.name.key.shell
#                                            ^ punctuation.section.item-access.end.shell
#                                             ^ keyword.operator.assignment.shell
#                                              ^ meta.string.glob.shell string.unquoted.shell
#                                                ^ punctuation.section.item-access.begin.shell
#                                                 ^^^ entity.name.key.shell
#                                                    ^ punctuation.section.item-access.end.shell
#                                                     ^ keyword.operator.assignment.shell
#                                                      ^^ meta.string.glob.shell string.unquoted.shell
#                                                        ^ punctuation.section.sequence.end.shell

declare -a array
array[500]=value
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^ meta.assignment.l-value.shell - meta.item-access
#    ^^^^^ meta.assignment.l-value.shell meta.item-access.shell
#         ^ meta.assignment.shell - meta.item-access
#          ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#               ^ - meta
#^^^^ variable.other.readwrite.shell
#    ^ punctuation.section.item-access.begin.shell
#     ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.assignment
#          ^^^^^ meta.string.glob.shell string.unquoted.shell

array["foo"]=bar
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^ meta.assignment.l-value.shell - meta.item-access
#    ^ meta.assignment.l-value.shell meta.item-access.shell - meta.arithmetic
#     ^^^^^ meta.assignment.l-value.shell meta.item-access.shell meta.arithmetic.shell
#          ^ meta.assignment.l-value.shell meta.item-access.shell - meta.arithmetic
#           ^ meta.assignment.shell - meta.item-access
#            ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#               ^ - meta
#^^^^ variable.other.readwrite.shell
#    ^ punctuation.section.item-access.begin.shell
#     ^ punctuation.definition.quoted.begin.shell
#      ^^^ variable.other.readwrite.shell
#         ^ punctuation.definition.quoted.end.shell
#          ^ punctuation.section.item-access.end.shell
#           ^ keyword.operator.assignment.shell
#            ^^^ meta.string.glob.shell string.unquoted.shell

array[foo]=bar
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^^^ meta.assignment.l-value.shell - meta.item-access
#    ^^^^^ meta.assignment.l-value.shell meta.item-access.shell
#         ^ meta.assignment.shell - meta.item-access
#          ^^^ meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#             ^ - meta
#    ^ punctuation.section.item-access.begin.shell - variable
#     ^^^ meta.arithmetic.shell variable.other.readwrite.shell
#        ^ punctuation.section.item-access.end.shell - variable
#         ^ keyword.operator.assignment.shell
#          ^^^ meta.string.glob.shell string.unquoted.shell

foo[${j}+10]="`foo`"
#<- meta.assignment.l-value.shell variable.other.readwrite.shell
#^^ meta.assignment.l-value.shell - meta.item-access
#  ^ meta.assignment.l-value.shell meta.item-access.shell - meta.arithmetic
#   ^^^^^^^ meta.assignment.l-value.shell meta.item-access.shell meta.arithmetic.shell
#          ^ meta.assignment.l-value.shell meta.item-access.shell - meta.arithmetic
#           ^ meta.assignment.shell - meta.item-access
#            ^ meta.assignment.r-value.shell meta.string.glob.shell - meta.interpolation
#             ^^^^^ meta.assignment.r-value.shell meta.string.glob.shell meta.interpolation.command.shell
#                  ^ meta.assignment.r-value.shell meta.string.glob.shell - meta.interpolation
#                   ^ - meta
#^^ variable.other.readwrite.shell
#  ^ punctuation.section.item-access.begin.shell
#   ^^^^ meta.interpolation.parameter.shell
#   ^ punctuation.definition.variable.shell
#    ^ punctuation.section.interpolation.begin.shell
#     ^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ keyword.operator.arithmetic.shell
#        ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ punctuation.section.item-access.end.shell
#           ^ keyword.operator.assignment.shell
#            ^ string.quoted.double.shell punctuation.definition.string.begin.shell
#             ^ punctuation.section.interpolation.begin.shell
#              ^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ string.quoted.double.shell punctuation.definition.string.end.shell

foo=`cd -L`
#   ^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#      ^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#         ^ meta.string.glob.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^ support.function.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^ punctuation.section.interpolation.end.shell

foo=`echo -e`
#   ^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#        ^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#           ^ meta.string.glob.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^ support.function.shell
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^ punctuation.section.interpolation.end.shell

foo=`let 5+5`
#   ^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#       ^^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell meta.arithmetic.shell
#           ^ meta.string.glob.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^ support.function.shell
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ keyword.operator.arithmetic.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ punctuation.section.interpolation.end.shell

foo=`some-command --long1`
#   ^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#                ^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#                        ^ meta.string.glob.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^^^^^^^^^ variable.function.shell
#                 ^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                        ^ punctuation.section.interpolation.end.shell

foo=`some-command -x`
#   ^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell
#                ^^^ meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell
#                   ^ meta.string.glob.shell meta.interpolation.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^^^^^^^^^ variable.function.shell
#                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                   ^ punctuation.section.interpolation.end.shell

foo=`(uname -r --) 2>/dev/null`
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^^^^^^^^^^^^ meta.compound.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#     ^^^^^ variable.function.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#              ^^ keyword.operator.end-of-options.shell
#                ^ punctuation.section.compound.end.shell
#                  ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                   ^ keyword.operator.assignment.redirection.shell
#                             ^ punctuation.section.interpolation.end.shell - punctuation.section.interpolation.begin

foo=`(uname -r) 2>/dev/null` || foo=unknown
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell
#    ^^^^^^^^^^ meta.compound.command.shell
#   ^ punctuation.section.interpolation.begin.shell
#     ^^^^^ variable.function.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^ punctuation.section.compound.end.shell
#               ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^ keyword.operator.assignment.redirection.shell
#                          ^ punctuation.section.interpolation.end.shell - punctuation.section.interpolation.begin
#                            ^^ keyword.operator.logical.shell
#                               ^^^ variable.other.readwrite.shell
#                                  ^ keyword.operator.assignment.shell
#                                   ^^^^^^^ meta.string.glob.shell string.unquoted.shell

commits=($(git rev-list --reverse --$abbrev-commit "$latest".. -- "$prefix"))
#       ^ meta.sequence.list.shell - meta.interpolation
#        ^^ meta.sequence.list.shell meta.string.glob.shell meta.interpolation.command.shell - meta.function
#          ^^^ meta.sequence.list.shell meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell - meta.function meta.function
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.shell meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell  - meta.function meta.function
#                                 ^^ meta.parameter.option.shell - meta.parameter.option.shell meta.interpolation
#                                   ^^^^^^^ meta.parameter.option.shell meta.interpolation.parameter.shell
#                                          ^^^^^^^ meta.parameter.option.shell - meta.parameter.option.shell meta.interpolation
#                                                  ^^^^^^^^^ meta.string.glob.shell
#                                                                 ^^^^^^^^^ meta.string.glob.shell
#                                                                          ^ meta.sequence.list.shell meta.string.glob.shell meta.interpolation.command.shell - meta.function
#                                                                           ^ meta.sequence.list.shell - meta.interpolation
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

# `=` must immediately follow without whitespace
novar =20
# <- - variable.other
#^^^^^^^^ - variable.other

# `-` is not a valid variable identifier char
my-var=20
# <- - variable.other
#^^^^^^^^ - variable.other

5var=20
# <- - variable.other
#^^^^^^ - variable.other

# not a variable due to command interpolation in name
B$(cat)OWL=$(($(cat food.txt | wc -l) + 5))
# <- meta.function-call.identifier.shell meta.command.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell


###############################################################################
# 3.4.1 Positional Parameters                                                 #
# https://www.gnu.org/software/bash/manual/bash.html#Positional-Parameters    #
###############################################################################

: $1 $2 $3 $45 $678
# ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#   ^ - meta.interpolation - variable
#    ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#      ^ - meta.interpolation - variable
#       ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#         ^ - meta.interpolation - variable
#          ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#            ^^ - meta.interpolation - variable
#              ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#                ^^^ - meta.interpolation - variable

# When a positional parameter consisting of more than a single digit is expanded,
# it must be enclosed in braces.
: ${45} ${678}
# ^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^ variable.language.positional.shell
#     ^ punctuation.section.interpolation.end.shell
#       ^^^^^^ meta.interpolation.parameter.shell
#       ^ punctuation.definition.variable.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^^^ variable.language.positional.shell
#            ^ punctuation.section.interpolation.end.shell


###############################################################################
# 3.4.2 Special Parameters                                                    #
# https://www.gnu.org/software/bash/manual/bash.html#Special-Parameters       #
###############################################################################

# Expands to the positional parameters, starting from one. When the expansion is
# not within double quotes, each positional parameter expands to a separate
# word. In contexts where it is performed, those words are subject to further
# word splitting and pathname expansion. When the expansion occurs within double
# quotes, it expands to a single word with the value of each parameter separated
# by the first character of the IFS special variable. That is, "$*" is
# equivalent to "$1c$2c…", where c is the first character of the value of the
# IFS variable. If IFS is unset, the parameters are separated by spaces. If IFS
# is null, the parameters are joined without intervening separators.
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
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the positional parameters, starting from one. When the expansion
# occurs within double quotes, each parameter expands to a separate word. That
# is, "$@" is equivalent to "$1" "$2" …. If the double-quoted expansion occurs
# within a word, the expansion of the first parameter is joined with the
# beginning part of the original word, and the expansion of the last parameter
# is joined with the last part of the original word. When there are no
# positional parameters, "$@" and $@ expand to nothing (i.e., they are removed).
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
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the number of positional parameters in decimal.
: $# ${#} ${!#} ${##} _$#_
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
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the exit status of the most recently executed foreground pipeline.
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
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the current option flags as specified upon invocation, by the set
# builtin command, or those set by the shell itself (such as the -i option).
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
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the process ID of the shell. In a () subshell, it expands to the
# process ID of the invoking shell, not the subshell.
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
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the process ID of the job most recently placed into the background,
# whether executed as an asynchronous command or using the bg builtin
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
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.special.shell
#                        ^ meta.string.glob.shell string.unquoted.shell

# Expands to the name of the shell or shell script. This is set at shell
# initialization. If Bash is invoked with a file of commands (see Shell
# Scripts), $0 is set to the name of that file. If Bash is started with the -c
# option (see Invoking Bash), then $0 is set to the first argument after the
# string to be executed, if one is present. Otherwise, it is set to the filename
# used to invoke Bash, as given by argument zero.
: $0 ${0} ${!0} ${#0} _$0_
# ^^ meta.interpolation.parameter.shell variable.language.positional.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.positional.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.positional.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.positional.shell
#                   ^ punctuation.section.interpolation.end.shell
#                     ^ meta.string.glob.shell string.unquoted.shell
#                      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.language.positional.shell
#                        ^ meta.string.glob.shell string.unquoted.shell


###############################################################################
# 3.5.1 Brace Expansion                                                       #
# https://www.gnu.org/software/bash/manual/bash.html#Brace-Expansion          #
###############################################################################

# Patterns to be brace expanded take the form of an optional preamble,
# followed by a series of comma-separated strings ... between a pair of braces,
# followed by an optional postscript.

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
#      ^ meta.string.glob.shell string.unquoted.shell - keyword - punctuation - variable
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
# ^^^^ meta.compound.command.shell - meta.interpolation
#     ^^^^^^^ meta.compound.command.shell meta.interpolation.brace.shell
#            ^^ meta.compound.command.shell - meta.interpolation

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
# 3.5.2 Tilde Expansion                                                       #
# https://www.gnu.org/software/bash/manual/bash.html#Tilde-Expansion          #
###############################################################################

: ~     # expand to $HOME
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#  ^ - meta.interpolation

: ~/    # expand to $HOME
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#  ^ - meta.interpolation

: ~+    # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~+/   # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~-    # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~-/   # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~0    # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~0/   # expand to current working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~1    # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~1/   # expand to previous working dir
# ^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#   ^ - meta.interpolation

: ~+0   # equivalent to ~+
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#    ^ - meta.interpolation

: ~+0/  # equivalent to ~+
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#    ^ - meta.interpolation

: ~+1   # top of directory stack
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#    ^ - meta.interpolation

: ~+1/  # top of directory stack
# ^^^ meta.interpolation.tilde.shell variable.language.tilde.shell - string
#    ^ - meta.interpolation

: ~fred/foo*  # The subdirectory foo of the home directory of the user fred
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#  ^^^^ meta.interpolation.tilde.shell constant.other.username.shell - variable
#      ^^^^^ - meta.interpolation
#          ^ constant.other.wildcard.asterisk.shell

: ~fr\
ed/foo*  # The subdirectory foo of the home directory of the user fred
# <- meta.interpolation.tilde.shell constant.other.username.shell - variable
#^ meta.interpolation.tilde.shell constant.other.username.shell - variable
# ^^^^^ - meta.interpolation
#     ^ constant.other.wildcard.asterisk.shell

: ~${fred}/foo?bar
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell - variable meta.interpolation
#  ^^^^^^^ meta.interpolation.tilde.shell meta.interpolation.parameter.shell
#         ^^^^^^^^ - meta.interpolation
#  ^ punctuation.definition.variable.shell
#   ^ punctuation.section.interpolation.begin.shell
#    ^^^^ variable.other.readwrite.shell
#        ^ punctuation.section.interpolation.end.shell
#             ^ constant.other.wildcard.questionmark.shell

: ~f${re}d/foo?bar
# ^ meta.interpolation.tilde.shell variable.language.tilde.shell - meta.interpolation meta.interpolation - string
#  ^ meta.interpolation.tilde.shell constant.other.username.shell - meta.interpolation meta.interpolation
#   ^^^^^ meta.interpolation.tilde.shell meta.interpolation.parameter.shell - string
#        ^ meta.interpolation.tilde.shell constant.other.username.shell - meta.interpolation meta.interpolation
#         ^^^^^^^^ - meta.interpolation
#   ^ punctuation.definition.variable.shell
#    ^ punctuation.section.interpolation.begin.shell
#     ^^ variable.other.readwrite.shell
#       ^ punctuation.section.interpolation.end.shell

: $(~)
# ^^ meta.interpolation.command.shell - meta.interpolation meta.interpolation
#   ^ meta.interpolation.command.shell meta.function-call.identifier.shell meta.command.shell meta.interpolation.tilde.shell
#    ^ meta.interpolation.command.shell - meta.interpolation meta.interpolation
#     ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.tilde.shell
#    ^ punctuation.section.interpolation.end.shell

foo=~/~
#   ^ variable.language.tilde.shell - string
#    ^^ string.unquoted.shell - variable

foo=~/~${bar}
#   ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#    ^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation
#      ^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#            ^ - meta.string - meta.interpolation
#   ^ variable.language.tilde.shell
#    ^^ string.unquoted.shell
#     ^ - variable
#      ^ punctuation.definition.variable.shell
#       ^ punctuation.section.interpolation.begin.shell
#        ^^^ variable.other.readwrite.shell
#           ^ punctuation.section.interpolation.end.shell

foo=(~)
#   ^ meta.sequence.list.shell - meta.string - meta.interpolation
#    ^ meta.sequence.list.shell meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#     ^ meta.sequence.list.shell - meta.string - meta.interpolation
#      ^ - meta.sequence
#   ^ punctuation.section.sequence.begin.shell
#    ^ variable.language.tilde.shell
#     ^ punctuation.section.sequence.end.shell

foo=(~/~foo ~/~bar)
#   ^^^^^^^^^^^^^^^ meta.sequence.list.shell
#    ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#     ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable
#           ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#            ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable

cmd --foo=~/~bar --baz =~/~buz
#        ^ keyword.operator.assignment.shell
#         ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#          ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable
#                      ^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - keyword - variable

cmd ~/f~oo b~ar -- ~/f~oo b~ar
#   ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#    ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable
#          ^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable
#               ^^ keyword.operator.end-of-options.shell
#                  ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#                   ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable
#                         ^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable

echo ~/~foo ~/~foo  # tilde expansions, but no path pattern support
#    ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#     ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable
#           ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#            ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable

echo "~/~foo" # literal quoted string
#    ^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell string.quoted.double.shell - meta.interpolation - variable

test $me -eq ~/~foo
#            ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#             ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation - variable

~/.bin/~app
# <- meta.function-call.identifier.shell meta.interpolation.tilde.shell variable.language.tilde.shell - variable.function
#^^^^^^^^^^ meta.function-call.identifier.shell variable.function.shell
#^ punctuation.separator.path.shell
#     ^ punctuation.separator.path.shell
#      ^ - variable.language.tilde

"~/.bin/~app"
# <- meta.function-call.identifier.shell meta.command.shell variable.function.shell punctuation.definition.quoted.begin.shell
#^^^^^^^^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#^ - variable.language.tilde
# ^ punctuation.separator.path.shell
#      ^ punctuation.separator.path.shell
#       ^ - variable.language.tilde
#           ^ punctuation.definition.quoted.end.shell

###############################################################################
# 3.5.3 Shell Parameter Expansion                                             #
# https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameter-Expansion#
###############################################################################

$__ $__
# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - variable variable
#  ^ meta.function-call.arguments.shell - meta.string - meta.interpolation - variable
#   ^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#   ^ punctuation.definition.variable.shell
#      ^ - meta.function-call - meta.string - meta.interpolation - variable

$var_0 $var_0
# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - variable variable
#     ^ meta.function-call.arguments.shell - meta.string - meta.interpolation - variable
#      ^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#      ^ punctuation.definition.variable.shell
#            ^ - meta.function-call - meta.string - meta.interpolation - variable

$_var0 $_var0
# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - variable variable
#     ^ meta.function-call.arguments.shell - meta.string - meta.interpolation - variable
#      ^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#      ^ punctuation.definition.variable.shell
#            ^ - meta.function-call - meta.string - meta.interpolation - variable

$_0var_ $_0var_
# <- meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell punctuation.definition.variable.shell
#^^^^^^ meta.function-call.identifier.shell meta.command.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - variable variable
#      ^ meta.function-call.arguments.shell - meta.string - meta.interpolation - variable
#       ^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^ punctuation.definition.variable.shell
#              ^ - meta.function-call - meta.string - meta.interpolation - variable

################################

# When braces are used, the matching ending brace is the first ‘}’
: ${}
# ^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.section.interpolation.end.shell
#    ^ - meta

# ...not escaped by a backslash,
: ${\}}   # bad substitution
# ^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^ constant.character.escape.shell
#     ^ punctuation.section.interpolation.end.shell
#      ^ - meta

# ... not within a quoted string,
: ${"}"}  # bad substitution
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.quoted.begin.shell
#     ^ punctuation.definition.quoted.end.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta

# ... not within and command substitution,
: ${$( } )}
# ^^ meta.interpolation.parameter.shell - meta.interpolation.command
#   ^^^^^^ meta.interpolation.parameter.shell meta.interpolation.command.shell
#         ^ meta.interpolation.parameter.shell - meta.interpolation.command
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.variable.shell
#    ^ punctuation.section.interpolation.begin.shell
#      ^ variable.function.shell
#        ^^ punctuation.section.interpolation.end.shell
#          ^ - meta

# ...not within an embedded arithmetic expansion,
: ${$(( } ))}
# ^^ meta.interpolation.parameter.shell - meta.interpolation.arithmetic
#   ^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.arithmetic.shell
#           ^ meta.interpolation.parameter.shell - meta.interpolation.arithmetic
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ punctuation.definition.variable.shell
#    ^ punctuation.section.interpolation.begin.shell
#       ^ - punctuation
#         ^^^ punctuation.section.interpolation.end.shell
#            ^ - meta

################################

: ${foo}
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}@
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}#
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}?
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}!
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}*
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}-
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

: ${foo}_
# ^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ punctuation.section.interpolation.end.shell
#       ^ - meta.interpolation - punctuation - variable

################################

# If the first character of parameter is an exclamation point (!), and
# parameter is not a nameref, it introduces a level of indirection. Bash uses
# the value formed by expanding the rest of parameter as the new parameter;
# this is then expanded and that value is used in the rest of the expansion,
# rather than the expansion of the original parameter. This is known as
# indirect expansion.

: ${!foo}
#   ^ keyword.operator.expansion.indirection.shell

: ${\
!foo}
# <- keyword.operator.expansion.indirection.shell

: ${\
!\
foo}
# <- meta.interpolation.parameter.shell variable.other.readwrite.shell

: ${foo!}
#      ^ - keyword

# Expands to the names of variables whose names begin with prefix, separated
# by the first character of the IFS special variable. When ‘@’ is used and the
# expansion appears within double quotes, each variable name expands to a
# separate word.

: ${!prefix*}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.indirection.shell
#          ^ variable.language.special.shell
#           ^ punctuation.section.interpolation.end.shell

: ${!prefix@}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.indirection.shell
#          ^ variable.language.special.shell
#           ^ punctuation.section.interpolation.end.shell

: ${!${prefix}@}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.indirection.shell
#             ^ variable.language.special.shell
#              ^ punctuation.section.interpolation.end.shell

# If name is an array variable, expands to the list of array indices (keys)
# assigned in name. If name is not an array, expands to 0 if name is set and
# null otherwise. When ‘@’ is used and the expansion appears within double
# quotes, each key expands to a separate word.

: ${!prefix[*]} ${!array[ *]} ${!array[* ]}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.indirection.shell
#           ^ variable.language.array.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.indirection.shell
#                  ^^^^^ variable.other.readwrite.shell
#                       ^^^^ meta.item-access.shell - variable.other
#                       ^ punctuation.section.item-access.begin.shell
#                         ^ - variable.language
#                          ^ punctuation.section.item-access.end.shell
#                           ^ punctuation.section.interpolation.end.shell
#                             ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#                             ^ punctuation.definition.variable.shell
#                              ^ punctuation.section.interpolation.begin.shell
#                               ^ keyword.operator.expansion.indirection.shell
#                                ^^^^^ variable.other.readwrite.shell
#                                     ^^^^ meta.item-access.shell - variable.other
#                                     ^ punctuation.section.item-access.begin.shell
#                                       ^ - variable.language
#                                        ^ punctuation.section.item-access.end.shell
#                                         ^ punctuation.section.interpolation.end.shell

: ${!prefix[@]} ${!array[ @]} ${!array[@ ]}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ keyword.operator.expansion.indirection.shell
#           ^ variable.language.array.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.indirection.shell
#                  ^^^^^ variable.other.readwrite.shell
#                       ^^^^ meta.item-access.shell - variable.other
#                       ^ punctuation.section.item-access.begin.shell
#                         ^ - variable.language
#                          ^ punctuation.section.item-access.end.shell
#                           ^ punctuation.section.interpolation.end.shell
#                             ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#                             ^ punctuation.definition.variable.shell
#                              ^ punctuation.section.interpolation.begin.shell
#                               ^ keyword.operator.expansion.indirection.shell
#                                ^^^^^ variable.other.readwrite.shell
#                                     ^^^^ meta.item-access.shell - variable.other
#                                     ^ punctuation.section.item-access.begin.shell
#                                       ^ - variable.language
#                                        ^ punctuation.section.item-access.end.shell
#                                         ^ punctuation.section.interpolation.end.shell

################################

: ${#foo}
#   ^ keyword.operator.expansion.length.shell

: ${\
#foo}
# <- keyword.operator.expansion.length.shell

: ${\
#\
foo}
# <- meta.interpolation.parameter.shell variable.other.readwrite.shell

################################

# If parameter is unset or null, the expansion of word is substituted.
# Otherwise, the value of parameter is substituted.

: ${@-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${?-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${#-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${$-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${--bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${!-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${_-bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo-bar}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
#           ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo-~}
# ^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#        ^ punctuation.section.interpolation.end.shell

: ${foo-~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#         ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo-m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#        ^^ - constant - variable
#           ^ constant.other.wildcard.asterisk.shell

: ${foo-~u${se}r/*bar}
# ^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#        ^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - string string
#         ^^^^^ meta.string.glob.shell meta.interpolation.tilde.shell meta.interpolation.parameter.shell - string
#              ^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - string string
#               ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#                ^ constant.other.wildcard.asterisk.shell
#                    ^ punctuation.section.interpolation.end.shell

################################

: ${@:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${*:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${?:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${#:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${$:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${-:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${!:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${_:-bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo:-bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#            ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo:-~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#          ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo:-m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#         ^^ - constant - variable
#            ^ constant.other.wildcard.asterisk.shell

: ${foo:-~u${se}r/*bar}
# ^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#         ^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - string string
#          ^^^^^ meta.string.glob.shell meta.interpolation.tilde.shell meta.interpolation.parameter.shell - string
#               ^ meta.string.glob.shell meta.interpolation.tilde.shell constant.other.username.shell - string string
#                ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#                 ^ constant.other.wildcard.asterisk.shell
#                     ^ punctuation.section.interpolation.end.shell

################################

# If parameter is unset or null, the expansion of word is assigned to
# parameter. The value of parameter is then substituted. Positional parameters
# and special parameters may not be assigned to in this way.

: ${@=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${#=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${?=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${$=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${-=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${!=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${_=bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo=bar}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
#           ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo=~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#         ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo=m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#        ^^ - constant - variable
#           ^ constant.other.wildcard.asterisk.shell

################################

: ${@:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${*:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${#:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${?:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${$:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${-:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${!:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${_:=bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo:=bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#            ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo:=~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#          ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo:=m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#         ^^ - constant - variable
#            ^ constant.other.wildcard.asterisk.shell

################################

# If parameter is null or unset, the expansion of word (or a message to that
# effect if word is not present) is written to the standard error and the
# shell, if it is not interactive, exits. Otherwise, the value of parameter is
# substituted.

: ${@?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${#?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${??bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${$?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${-?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${!?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${_?bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo?bar}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
#           ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo?~+/?bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#         ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#          ^ constant.other.wildcard.questionmark.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo?m~+/?bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#        ^^ - constant - variable
#           ^ constant.other.wildcard.questionmark.shell

################################

: ${@:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${*:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${#:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${?:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${$:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${-:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${!:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${_:?bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo:?bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#            ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo:?~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#          ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo:?m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#         ^^ - constant - variable
#            ^ constant.other.wildcard.asterisk.shell

################################

# If parameter is null or unset, nothing is substituted, otherwise the
# expansion of word is substituted.

: ${@+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${#+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${?+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${$+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${-+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${!+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${_+bar}
# ^^^^^^^^ meta.interpolation.parameter.shell
#         ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.assignment.shell
#     ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo+bar}
# ^^^^^^^^^^ meta.interpolation.parameter.shell
#           ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.section.interpolation.end.shell

: ${foo+~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#         ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo+m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.assignment.shell
#       ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#        ^^ - constant - variable
#           ^ constant.other.wildcard.asterisk.shell

################################

: ${@:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${*:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${#:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${?:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${$:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${-:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${!:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${_:+bar}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#          ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.assignment.shell
#      ^^^ meta.string.glob.shell string.unquoted.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo:+bar}
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#            ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.interpolation.end.shell

: ${foo:+~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^ meta.string.glob.shell meta.interpolation.tilde.shell variable.language.tilde.shell - string
#          ^^^^^ meta.string.glob.shell string.unquoted.shell - meta.interpolation.tilde
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo:+m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.assignment.shell
#        ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#         ^^ - constant - variable
#            ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter:offset:length}

: ${@:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${*:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${#:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${?:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${$:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${-:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${!:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

: ${_:0:1}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.substring.begin.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#      ^ keyword.operator.substring.end.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ punctuation.section.interpolation.end.shell

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

: ${var:pos:len}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#               ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.substring.begin.shell
#          ^ keyword.operator.substring.end.shell
#              ^ punctuation.section.interpolation.end.shell

: ${var:pos + 2:len * 4}
# ^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#                       ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.substring.begin.shell
#       ^^^ variable.other.readwrite.shell
#           ^ keyword.operator.arithmetic.shell
#             ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#              ^ keyword.operator.substring.end.shell
#               ^^^ variable.other.readwrite.shell
#                   ^ keyword.operator.arithmetic.shell
#                     ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                      ^ punctuation.section.interpolation.end.shell

: ${var:"pos + 2":'len * 4'}
# ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#                           ^ - meta.interpolation
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.substring.begin.shell
#       ^ punctuation.definition.quoted.begin.shell
#        ^^^ variable.other.readwrite.shell
#            ^ keyword.operator.arithmetic.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#               ^ punctuation.definition.quoted.end.shell
#                ^ keyword.operator.substring.end.shell
#                 ^ punctuation.definition.quoted.begin.shell
#                  ^^^ variable.other.readwrite.shell
#                      ^ keyword.operator.arithmetic.shell
#                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                         ^ punctuation.definition.quoted.end.shell
#                          ^ punctuation.section.interpolation.end.shell

: ${${var}:${pos}:${len}}
# ^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#   ^^^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell
#         ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#          ^^^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell
#                ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                 ^^^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell
#                       ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                        ^ - meta.interpolation

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
#        ^ - keyword - variable
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
#        ^ keyword.operator.quantifier.regexp.shell
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
#        ^ keyword.operator.quantifier.regexp.shell
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

################################
# ${parameter#pattern}

: ${@#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${##pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!#pattern}  # bad substitution
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ keyword.operator.expansion.indirection.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${_#pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo#}
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^ punctuation.section.interpolation.end.shell

: ${foo#pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^ meta.string.regexp.shell string.unquoted.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo@#pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo*#pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo[@]#pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo[@]#pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo# #pattern} # comment
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^^ meta.string.regexp.shell
#        ^ - comment - keyword
#                ^ punctuation.section.interpolation.end.shell
#                  ^^^^^^^^^^ comment.line.number-sign.shell

: ${foo# #} # hello
# ^^^^^^^^^ meta.interpolation.parameter.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

: ${foo#\ \#} # hello
# ^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^ constant.character.escape.shell
#          ^ - comment.line
#           ^ punctuation.section.interpolation.end.shell
#             ^ comment.line punctuation

: ${foo#~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#         ^^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell string.unquoted.shell
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo#m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^ meta.string.regexp.shell
#        ^^ - variable
#           ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter##pattern}

: ${@##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${###pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#     ^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ keyword.operator.expansion.indirection.shell
#    ^ variable.language.special.shell
#     ^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!###pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ keyword.operator.expansion.indirection.shell
#    ^ variable.language.special.shell
#     ^^ keyword.operator.expansion.shell
#       ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!####pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ keyword.operator.expansion.indirection.shell
#    ^ variable.language.special.shell
#     ^^ keyword.operator.expansion.shell
#       ^^^^^^^^ meta.string.regexp.shell
#       ^ - keyword

: ${_##pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo##}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo##pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo###pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#        ^ - keyword
#                ^ punctuation.section.interpolation.end.shell

: ${foo@##pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo*##pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo[@]##pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo[@]##pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo## #pattern} # comment
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^^ meta.string.regexp.shell
#         ^ - comment - keyword
#                 ^ punctuation.section.interpolation.end.shell
#                   ^^^^^^^^^^ comment.line.number-sign.shell

: ${foo##~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#        ^^ variable.language.tilde.shell
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo##m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#         ^^ - variable
#            ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter%pattern}

: ${@%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${*%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${#%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${?%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${$%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${-%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${!%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell

: ${_%pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.expansion.shell

: ${foo%}
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^ punctuation.section.interpolation.end.shell

: ${foo%pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.expansion.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo@%pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo*%pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo[@]%pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo[@]%pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo% #pattern} # comment
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#        ^ - comment - keyword
#                ^ punctuation.section.interpolation.end.shell
#                  ^^^^^^^^^^ comment.line.number-sign.shell

: ${foo% #} # hello
#      ^ keyword.operator.expansion.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

: ${foo%\ \#} # hello
#      ^ keyword.operator.expansion.shell
#       ^^^^ meta.string.regexp.shell constant.character.escape.shell
#          ^ - comment.line
#           ^ punctuation.section.interpolation.end.shell
#             ^ comment.line punctuation

: ${foo%~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#         ^^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell string.unquoted.shell
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo%m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^ meta.string.regexp.shell
#        ^^ - variable
#           ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter%%pattern}

: ${@%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${#%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${_%%pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo%%}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo%%pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo%%%pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#        ^ - keyword
#                ^ punctuation.section.interpolation.end.shell

: ${foo@%%pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo*%%pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo[@]%%pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo[@]%%pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo%%~}
# ^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^ meta.interpolation.tilde.shell variable.language.tilde.shell
#         ^ punctuation.section.interpolation.end.shell

: ${foo%%~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#        ^^ variable.language.tilde.shell
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo%%m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#         ^^ - variable
#            ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter,pattern}

: ${@,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${#,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${_,pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo,}
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^ punctuation.section.interpolation.end.shell

: ${foo,pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^ meta.string.regexp.shell string.unquoted.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo@,pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo*,pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo[@],pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo[@],pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo, #pattern} # comment
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^^ meta.string.regexp.shell
#        ^ - comment - keyword
#                ^ punctuation.section.interpolation.end.shell
#                  ^^^^^^^^^^ comment.line.number-sign.shell

: ${foo, #} # hello
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

: ${foo,\ \#} # hello
#      ^ keyword.operator.expansion.shell
#       ^^^^ meta.string.regexp.shell constant.character.escape.shell
#          ^ - comment.line
#           ^ punctuation.section.interpolation.end.shell
#             ^ comment.line punctuation

: ${foo,~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#         ^^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell string.unquoted.shell
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo,m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^ meta.string.regexp.shell
#        ^^ - variable
#           ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter,,pattern}

: ${@,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${#,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${_,,pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo,,}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo,,pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo,,,pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#        ^ - keyword
#                ^ punctuation.section.interpolation.end.shell

: ${foo@,,pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo*,,pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo[@],,pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo[@],,pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo,,~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#        ^^ variable.language.tilde.shell
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo,,m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#         ^^ - variable
#            ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter^pattern}

: ${@^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${#^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${_^pattern}
# ^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.expansion.shell
#     ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo^}
# ^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^ punctuation.section.interpolation.end.shell

: ${foo^pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^ meta.string.regexp.shell string.unquoted.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo@^pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo*^pattern}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo[@]^pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo[@]^pattern}
# ^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^ keyword.operator.expansion.shell
#          ^^^^^^^ meta.string.regexp.shell
#                 ^ punctuation.section.interpolation.end.shell

: ${foo^ #pattern} # comment
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^^ meta.string.regexp.shell
#        ^ - comment - keyword
#                ^ punctuation.section.interpolation.end.shell
#                  ^^^^^^^^^^ comment.line.number-sign.shell

: ${foo^ #} # hello
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell
#        ^ - comment.line
#         ^ punctuation.section.interpolation.end.shell
#           ^ comment.line punctuation

: ${foo^\ \#} # hello
#      ^ keyword.operator.expansion.shell
#       ^^^^ meta.string.regexp.shell constant.character.escape.shell
#          ^ - comment.line
#           ^ punctuation.section.interpolation.end.shell
#             ^ comment.line punctuation

: ${foo^~+/*bar}
# ^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^ meta.string.regexp.shell meta.interpolation.tilde.shell variable.language.tilde.shell
#         ^^^^^ meta.interpolation.parameter.shell meta.string.regexp.shell string.unquoted.shell
#          ^ constant.other.wildcard.asterisk.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo^m~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^ keyword.operator.expansion.shell
#       ^^^^^^^^ meta.string.regexp.shell
#        ^^ - variable
#           ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter^^pattern}

: ${@^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${*^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${#^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${?^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${$^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${-^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${!^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${_^^pattern}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^^ keyword.operator.expansion.shell
#      ^^^^^^^ meta.string.regexp.shell string.unquoted.shell

: ${foo^^}
# ^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^ punctuation.section.interpolation.end.shell

: ${foo^^pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo^^^pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#        ^ - keyword
#                ^ punctuation.section.interpolation.end.shell

: ${foo@^^pattern}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo*^^pattern}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^ variable.language.special.shell
#       ^^ keyword.operator.expansion.shell
#         ^^^^^^^ meta.string.regexp.shell
#                ^ punctuation.section.interpolation.end.shell

: ${foo[@]^^pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo[@]^^pattern}
# ^^^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
# ^ punctuation.definition.variable.shell
#  ^ punctuation.section.interpolation.begin.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^ variable.language.array.shell
#        ^ punctuation.section.item-access.end.shell
#         ^^ keyword.operator.expansion.shell
#           ^^^^^^^ meta.string.regexp.shell
#                  ^ punctuation.section.interpolation.end.shell

: ${foo^^~+/*bar}
# ^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^ meta.string.regexp.shell
#        ^^ variable.language.tilde.shell
#           ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.section.interpolation.end.shell

: ${foo^^m~+/*bar}
# ^^^^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^ keyword.operator.expansion.shell
#        ^^^^^^^^ meta.string.regexp.shell
#         ^^ - variable
#            ^ constant.other.wildcard.asterisk.shell

################################
# ${parameter@operator}

  ${@@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${*@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${?@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${$@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${-@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${!@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${-@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.special.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

  ${_@A}
# ^^^^^^ meta.interpolation.parameter.shell
#   ^ variable.language.builtin.shell
#    ^ keyword.operator.expansion.shell
#     ^ variable.parameter.switch.shell

# The expansion is a string in the form of an assignment statement or declare
# command that, if evaluated, will recreate parameter with its attributes and
# value.
: ${foo@A}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string that is the value of parameter with backslash
# escape sequences expanded as with the $'…' quoting mechanism.
: ${foo@E}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# Produces a possibly-quoted version of the value of parameter, except that it
# prints the values of indexed and associative arrays as a sequence of quoted
# key-value pairs (see Arrays).
: ${foo@K}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string that is the value of parameter with uppercase
# alphabetic characters converted to lowercase.
: ${foo@L}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string that is the result of expanding the value of
# parameter as if it were a prompt string (see Controlling the Prompt).
: ${foo@P}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string that is the value of parameter quoted in a format
# that can be reused as input.
: ${foo@Q}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string that is the value of parameter with lowercase
# alphabetic characters converted to uppercase.
: ${foo@U}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string consisting of flag values representing parameter’s
# attributes.
: ${foo@a}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# Like the ‘K’ transformation, but expands the keys and values of indexed and
# associative arrays to separate words after word splitting.
: ${foo@k}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

# The expansion is a string that is the value of parameter with the first
# character converted to uppercase, if it is alphabetic.
: ${foo@u}
#      ^ keyword.operator.expansion.shell
#       ^ variable.parameter.switch.shell

: ${foo@t}
#      ^ - keyword.operator
#       ^ - variable.parameter.switch

: ${foo@@u}
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^ variable.parameter.switch.shell

: ${foo*@u}
#      ^ variable.language.special.shell
#       ^ keyword.operator.expansion.shell
#        ^ variable.parameter.switch.shell

: ${foo[@]@u}
#       ^ variable.language.array.shell
#         ^ keyword.operator.expansion.shell
#          ^ variable.parameter.switch.shell

: ${foo[*]@u}
#       ^ variable.language.array.shell
#         ^ keyword.operator.expansion.shell
#          ^ variable.parameter.switch.shell

################################

: ${foo:='bar'}
# ^^^^^^^^^^^^^ meta.interpolation.parameter.shell
#        ^ punctuation.definition.string.begin.shell
#        ^^^^^ meta.string.glob.shell string.quoted.single.shell
#            ^ punctuation.definition.string.end.shell
#             ^ punctuation.section.interpolation.end.shell

: ${foo:=`bar`}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^ meta.interpolation.parameter.shell meta.interpolation.command.shell
#             ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^ punctuation.section.interpolation.begin.shell
#            ^^ punctuation.section.interpolation.end.shell

: ${foo:=$( bar )}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.command.shell
#                ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^ punctuation.definition.variable.shell
#         ^ punctuation.section.interpolation.begin.shell
#               ^^ punctuation.section.interpolation.end.shell

: ${foo:=$(( 1 + 1 ))}
# ^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^^^^^ meta.interpolation.parameter.shell meta.interpolation.arithmetic.shell
#                    ^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
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
#        ^ punctuation.definition.variable.shell
#         ^^^ variable.other
#            ^ punctuation.section.interpolation.end.shell

: ${foo:="$bar"}
# ^^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#         ^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#             ^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^ punctuation.definition.string.begin.shell
#         ^ punctuation.definition.variable.shell
#         ^^^^ variable.other.readwrite.shell
#             ^ punctuation.definition.string.end.shell
#              ^ punctuation.section.interpolation.end.shell

: ${foo:="${bar} baz"}
# ^^^^^^^^ meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#        ^^^^^^^^^^^^ meta.string.glob.shell
#         ^^^^^^ meta.interpolation.parameter.shell meta.interpolation.parameter.shell - string
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

################################

status="${status#"${status%%[![:space:]]*}"}"
#      ^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation
#       ^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                ^ meta.string.glob.shell meta.interpolation.parameter.shell meta.string.regexp.shell - meta.interpolation meta.interpolation
#                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell meta.string.regexp.shell meta.interpolation.parameter.shell
#                                         ^ meta.string.glob.shell meta.interpolation.parameter.shell meta.string.regexp.shell - meta.interpolation meta.interpolation
#                                          ^ meta.string.glob.shell meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                                           ^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation
#                                            ^ - meta - string
#     ^ keyword.operator.assignment.shell
#               ^ keyword.operator.expansion.shell
#                ^ punctuation.definition.string.begin.shell
#                         ^^ keyword.operator.expansion.shell
#                           ^ punctuation.definition.set.begin.regexp.shell
#                            ^ keyword.operator.logical.regexp.shell
#                             ^ punctuation.definition.set.begin.regexp.shell
#                              ^ punctuation.definition.class.begin.regexp.shell
#                               ^^^^^^ constant.other.posix-class.regexp.shell
#                                     ^ punctuation.definition.set.end.regexp.shell
#                                     ^^ punctuation.definition.set.end.regexp.shell
#                                       ^ constant.other.wildcard.asterisk.shell
#                                        ^ punctuation.section.interpolation.end.shell
#                                         ^ punctuation.definition.string.end.shell
#                                          ^ punctuation.section.interpolation.end.shell

status="${status#${status%%[![:space:]]*}}"
#      ^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation
#       ^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - meta.interpolation meta.interpolation
#                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell meta.string.regexp.shell meta.interpolation.parameter.shell
#                                        ^ meta.string.glob.shell meta.interpolation.parameter.shell
#                                         ^ meta.string.glob.shell string.quoted.double.shell - meta.interpolation
#                                          ^ - meta - string
#     ^ keyword.operator.assignment.shell
#               ^ keyword.operator.expansion.shell
#                        ^^ keyword.operator.expansion.shell
#                          ^ punctuation.definition.set.begin.regexp.shell
#                           ^ keyword.operator.logical.regexp.shell
#                            ^ punctuation.definition.set.begin.regexp.shell
#                                    ^^ punctuation.definition.set.end.regexp.shell
#                                      ^ constant.other.wildcard.asterisk.shell

CURPOS=${CURPOS#*[}
#               ^ constant.other.wildcard.asterisk.shell
#                ^ - keyword.control.regexp.shell

echo "${ROW#*[}"
#           ^ constant.other.wildcard.asterisk.shell
#            ^ - keyword.control.regexp.shell

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


###############################################################################
# 3.5.4 Command Expansions                                                    #
# https://www.gnu.org/software/bash/manual/bash.html#Command-Expansion        #
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
# 3.5.5 Arithmetic Expansions                                                 #
# https://www.gnu.org/software/bash/manual/bash.html#Arithmetic-Expansion     #
###############################################################################

: $(())
# ^^^^^ meta.string.glob.shell meta.interpolation.arithmetic.shell

: $((  ))
# ^^^^^^^ meta.interpolation.arithmetic.shell
# ^ punctuation.definition.variable.shell
#  ^^ punctuation.section.interpolation.begin.shell
#      ^^ punctuation.section.interpolation.end.shell


###############################################################################
# 3.5.8.1 Pattern Matching                                                    #
# https://www.gnu.org/software/bash/manual/bash.html#Pattern-Matching         #
###############################################################################

: @([^:]*)
#^^^^^^^^^ meta.function-call.arguments.shell
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^ keyword.operator.logical.regexp.shell
#      ^ punctuation.definition.set.end.regexp.shell
#       ^ constant.other.wildcard.asterisk.shell
#        ^ punctuation.section.group.end.regexp.shell

: @([[] []] [![] [!]] [^[] [^]])
#   ^^^ meta.group.regexp.shell meta.set.regexp.shell
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^ - punctuation
#     ^ punctuation.definition.set.end.regexp.shell
#       ^^^ meta.group.regexp.shell meta.set.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#        ^ - punctuation
#         ^ punctuation.definition.set.end.regexp.shell
#           ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#           ^ punctuation.definition.set.begin.regexp.shell
#            ^ keyword.operator.logical.regexp.shell
#             ^ - punctuation
#              ^ punctuation.definition.set.end.regexp.shell
#                ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                ^ punctuation.definition.set.begin.regexp.shell
#                 ^ keyword.operator.logical.regexp.shell
#                  ^ - punctuation
#                   ^ punctuation.definition.set.end.regexp.shell
#                     ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                     ^ punctuation.definition.set.begin.regexp.shell
#                      ^ keyword.operator.logical.regexp.shell
#                       ^ - punctuation
#                        ^ punctuation.definition.set.end.regexp.shell
#                          ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                          ^ punctuation.definition.set.begin.regexp.shell
#                           ^ keyword.operator.logical.regexp.shell
#                            ^ - punctuation
#                             ^ punctuation.definition.set.end.regexp.shell

: @([-[] [-]] [[-)] []-)] [!-[] [!-]] [^-[] [^-]])
#   ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^^ - punctuation
#      ^ punctuation.definition.set.end.regexp.shell
#        ^^^ meta.group.regexp.shell meta.set.regexp.shell
#        ^ punctuation.definition.set.begin.regexp.shell
#         ^ - punctuation
#          ^ punctuation.definition.set.end.regexp.shell
#           ^ - punctuation
#             ^^^^^ meta.group.regexp.shell meta.set.regexp.shell
#             ^ punctuation.definition.set.begin.regexp.shell
#              ^^^ constant.other.range.regexp.shell
#                 ^ punctuation.definition.set.end.regexp.shell
#                   ^^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                   ^ punctuation.definition.set.begin.regexp.shell
#                    ^^^ constant.other.range.regexp.shell
#                       ^ punctuation.definition.set.end.regexp.shell
#                         ^^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                         ^ punctuation.definition.set.begin.regexp.shell
#                          ^ keyword.operator.logical.regexp.shell
#                           ^^ - punctuation
#                             ^ punctuation.definition.set.end.regexp.shell
#                               ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                               ^ punctuation.definition.set.begin.regexp.shell
#                                ^ keyword.operator.logical.regexp.shell
#                                 ^ - punctuation
#                                  ^ punctuation.definition.set.end.regexp.shell
#                                   ^ - punctuation
#                                     ^^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                                     ^ punctuation.definition.set.begin.regexp.shell
#                                      ^ keyword.operator.logical.regexp.shell
#                                       ^^ - punctuation
#                                         ^ punctuation.definition.set.end.regexp.shell
#                                           ^^^^ meta.group.regexp.shell meta.set.regexp.shell
#                                           ^ punctuation.definition.set.begin.regexp.shell
#                                            ^ keyword.operator.logical.regexp.shell
#                                             ^ - punctuation
#                                              ^ punctuation.definition.set.end.regexp.shell
#                                               ^ - punctuation

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
#                                 ^^^^^^^ meta.set.regexp.shell - meta.set meta.set
#                                        ^^ - meta.set
#   ^ punctuation.definition.set.begin.regexp.shell
#    ^^^ - constant.character
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
#                                 ^ punctuation.definition.set.begin.regexp.shell
#                                  ^^^^^ - keyword - punctuation - constant
#                                       ^ punctuation.definition.set.end.regexp.shell
#                                        ^ - punctuation

: @([[=c=]] [[=c=illegal]])
#   ^^ punctuation.definition.set.begin.regexp.shell
#     ^ constant.character.equivalence-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#      ^ constant.character.equivalence-class.regexp.shell - punctuation
#       ^ constant.character.equivalence-class.regexp.shell punctuation.definition.class.end.regexp.shell
#        ^^ punctuation.definition.set.end.regexp.shell
#           ^ punctuation.definition.set.begin.regexp.shell
#            ^^^^^^^^^^^ - constant.character.equivalence-class
#                       ^ punctuation.definition.set.end.regexp.shell
#                        ^ - punctuation

: @([[:alnum:]] [[:alnum]] [[alnum:]] [[alnum]] [[:alnum:other]])
#     ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#      ^^^^^ constant.other.posix-class.regexp.shell - punctuation
#           ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant.other.posix-class

: *(g[[:${charclass/\}/l}:]]*)
#^^ meta.function-call.arguments.shell - meta.group
#  ^^ meta.function-call.arguments.shell meta.group.regexp.shell - meta.set
#    ^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.group.regexp.shell meta.set.regexp.shell
#       ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.group.regexp.shell meta.set.regexp.shell meta.set.regexp.shell meta.interpolation.parameter.shell
#                        ^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.group.regexp.shell meta.set.regexp.shell
#                           ^^ meta.function-call.arguments.shell meta.string.glob.shell meta.group.regexp.shell - meta.set
#                             ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#    ^^ punctuation.definition.set.begin.regexp.shell
#      ^ constant.other.posix-class.regexp.shell
#       ^ punctuation.definition.variable.shell
#        ^ punctuation.section.interpolation.begin.shell
#         ^^^^^^^^^ variable.other.readwrite.shell
#                  ^ keyword.operator.substitution.shell - variable.other.readwrite
#                   ^^ constant.character.escape.shell
#                     ^ keyword.operator.substitution.shell
#                       ^ punctuation.section.interpolation.end.shell
#                        ^ constant.other.posix-class.regexp.shell
#                         ^^ punctuation.definition.set.end.regexp.shell
#                           ^ constant.other.wildcard.asterisk.shell
#                            ^ punctuation.section.group.end.regexp.shell

: ?([[:alpha:]]|[[:digit:]]|[[:unknown:]])*
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#                                         ^ meta.function-call.arguments.shell - meta.group
#                                          ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#   ^^ punctuation.definition.set.begin.regexp.shell
#     ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#      ^^^^^ constant.other.posix-class.regexp.shell - punctuation
#           ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#            ^^ punctuation.definition.set.end.regexp.shell
#              ^ keyword.operator.alternation.regexp.shell
#               ^^ punctuation.definition.set.begin.regexp.shell
#                 ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#                  ^^^^^ constant.other.posix-class.regexp.shell - punctuation
#                       ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#                        ^^ punctuation.definition.set.end.regexp.shell
#                          ^ keyword.operator.alternation.regexp.shell
#                           ^ punctuation.definition.set.begin.regexp.shell
#                            ^^^^^^^^^^ - constant.other.posix-class
#                                      ^ punctuation.definition.set.end.regexp.shell
#                                       ^ - punctuation
#                                        ^ punctuation.section.group.end.regexp.shell
#                                         ^ constant.other.wildcard.asterisk.shell

: @(foo*)*
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#        ^ meta.function-call.arguments.shell - meta.group
#         ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ constant.other.wildcard.asterisk.shell
#       ^ punctuation.section.group.end.regexp.shell
#        ^ constant.other.wildcard.asterisk.shell

: +(foo|bar)|baz
#^^ meta.function-call.arguments.shell - meta.group
#  ^^^^^^^^^ meta.function-call.arguments.shell meta.group.regexp.shell
#           ^ - meta.function-call - meta.group
# ^ keyword.operator.quantifier.regexp.shell
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ keyword.operator.alternation.regexp.shell
#          ^ punctuation.section.group.end.regexp.shell
#           ^ keyword.operator.assignment.pipe.shell
#            ^^^ variable.function.shell

: +(foo&bar)|baz  # `&` terminates group and command arguments
#  ^^^^^^^^^ meta.group.regexp.shell string.unquoted.shell
#           ^^^^^ - meta.group
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ - keyword
#          ^ punctuation.section.group.end.regexp.shell
#           ^ keyword.operator.assignment.pipe.shell
#            ^^^ variable.function.shell

: +(foo;bar)|baz  # `;` terminates group and command arguments
#  ^^^^^^^^^ meta.group.regexp.shell string.unquoted.shell
#           ^^^^^ - meta.group
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ - keyword
#          ^ punctuation.section.group.end.regexp.shell
#           ^ keyword.operator.assignment.pipe.shell
#            ^^^ variable.function.shell

: +(foo>bar)|baz  # `>` terminates group and command arguments
#  ^^^^^^^^^ meta.group.regexp.shell string.unquoted.shell
#           ^^^^^ - meta.group
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ - keyword
#          ^ punctuation.section.group.end.regexp.shell
#           ^ keyword.operator.assignment.pipe.shell
#            ^^^ variable.function.shell

: +(foo<bar)|baz  # `<` terminates group and command arguments
#  ^^^^^^^^^ meta.group.regexp.shell string.unquoted.shell
#           ^^^^^ - meta.group
#  ^ punctuation.section.group.begin.regexp.shell
#      ^ - keyword
#          ^ punctuation.section.group.end.regexp.shell
#           ^ keyword.operator.assignment.pipe.shell
#            ^^^ variable.function.shell


###############################################################################
# 3.5.8.1 Pattern Matching                                                    #
# https://www.gnu.org/software/bash/manual/bash.html#Pattern-Matching         #
#    in test expressions                                                      #
###############################################################################

[[ abc == ?[a-z]? ]]  # evaluates to true
#         ^ meta.string.regexp.shell - meta.set
#          ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#               ^ meta.string.regexp.shell - meta.set
#                ^ - meta.string.regexp
#         ^ constant.other.wildcard.questionmark.shell
#          ^ punctuation.definition.set.begin.regexp.shell
#           ^^^ constant.other.range.regexp.shell
#              ^ punctuation.definition.set.end.regexp.shell
#               ^ constant.other.wildcard.questionmark.shell

[[ abc == ??[a-z] ]]  # evaluates to true
#         ^^ meta.string.regexp.shell - meta.set
#           ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#                ^ - meta.string.regexp
#         ^^ constant.other.wildcard.questionmark.shell
#           ^ punctuation.definition.set.begin.regexp.shell
#            ^^^ constant.other.range.regexp.shell
#               ^ punctuation.definition.set.end.regexp.shell

[[ abc == [a-z]?? ]]  # evaluates to true
#         ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#              ^^ meta.string.regexp.shell - meta.set
#                ^ - meta.string.regexp
#         ^ punctuation.definition.set.begin.regexp.shell
#          ^^^ constant.other.range.regexp.shell
#             ^ punctuation.definition.set.end.regexp.shell
#              ^^ constant.other.wildcard.questionmark.shell

[[ abc == *[a-z] ]]  # evaluates to true
#         ^ meta.string.regexp.shell - meta.set
#          ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#               ^ - meta.string.regexp
#         ^ constant.other.wildcard.asterisk.shell
#          ^ punctuation.definition.set.begin.regexp.shell
#           ^^^ constant.other.range.regexp.shell
#              ^ punctuation.definition.set.end.regexp.shell

[[ abc == ?(?[a-z]?) ]]  # evaluates to true
#         ^ meta.string.regexp.shell - meta.group
#          ^^ meta.string.regexp.shell meta.group.regexp.shell - meta.set
#            ^^^^^ meta.string.regexp.shell meta.group.regexp.shell meta.set.regexp.shell
#                 ^^ meta.string.regexp.shell meta.group.regexp.shell - meta.set
#                   ^ - meta.string.regexp
#         ^ keyword.operator.quantifier.regexp.shell
#          ^ punctuation.section.group.begin.regexp.shell
#           ^ constant.other.wildcard.questionmark.shell
#            ^ punctuation.definition.set.begin.regexp.shell
#             ^^^ constant.other.range.regexp.shell
#                ^ punctuation.definition.set.end.regexp.shell
#                 ^ constant.other.wildcard.questionmark.shell

[[ abc == ^abc|bca$ ]]
#^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#         ^^^^^^^^^ meta.string.regexp.shell - keyword
#             ^ invalid.illegal.unexpected-token.shell
#                   ^^ punctuation.section.compound.end.shell

[[ abc == ^abc&bca$ ]]
#^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#         ^^^^^^^^^ meta.string.regexp.shell - keyword
#             ^ invalid.illegal.unexpected-token.shell
#                   ^^ punctuation.section.compound.end.shell

[[ a\$b*c == a'$b*'? ]]
#^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#            ^^^^^^^ meta.string.regexp.shell
#             ^ punctuation.definition.string.begin.shell
#              ^^^ - constant - keyword - variable
#                 ^ punctuation.definition.string.end.shell
#                  ^ constant.other.wildcard.questionmark.shell

[[ a"$bc*"c == *"$bc*"c ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#              ^^^^^^^^ meta.string.regexp.shell
#              ^ constant.other.wildcard.asterisk.shell
#               ^ punctuation.definition.string.begin.shell
#                ^^^ variable.other.readwrite.shell
#                   ^ - constant - keyword
#                    ^ punctuation.definition.string.end.shell

[[ $foo == !(foo|bar|???|*|'?'|'*') ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#          ^ meta.string.regexp.shell
#           ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.shell meta.group.regexp.shell
#          ^ keyword.operator.quantifier.regexp.shell
#           ^ punctuation.section.group.begin.regexp.shell
#               ^ keyword.operator.alternation.regexp.shell
#                   ^ keyword.operator.alternation.regexp.shell
#                    ^^^ constant.other.wildcard.questionmark.shell
#                       ^ keyword.operator.alternation.regexp.shell
#                        ^ constant.other.wildcard.asterisk.shell
#                         ^ keyword.operator.alternation.regexp.shell
#                          ^ punctuation.definition.string.begin.shell
#                            ^ punctuation.definition.string.end.shell
#                             ^ keyword.operator.alternation.regexp.shell
#                              ^ punctuation.definition.string.begin.shell
#                                ^ punctuation.definition.string.end.shell
#                                 ^ punctuation.section.group.end.regexp.shell
#                                   ^^ punctuation.section.compound.end.shell

[[ ( $foo == *
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#             ^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp invalid.illegal.unexpected-token.shell

[[ ( $foo == *\
   [^0-9]? ) ]]   # note: line continuation is only valid without leading whitespace, but we ignore it
# <- meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell - meta.set
#  ^^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell meta.set.regexp.shell
#        ^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell - meta.set
#         ^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#           ^^^ meta.compound.conditional.shell - meta.group
#            ^^ punctuation.section.compound.end.shell

[[ ( $foo == ? ]]
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#             ^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#              ^^ invalid.illegal.unexpected-token.shell

[[ ( $foo == ? ]]
   [^0-9]+ ) ]]
# <- - meta.conditional
#^^^^^^^^^^^^^^ - meta.conditional

[[ $foo == +( ]]
#^^^^^^^^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#          ^ meta.compound.conditional.shell meta.string.regexp.shell - meta.group
#           ^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#          ^ keyword.operator.quantifier.regexp.shell
#           ^ punctuation.section.group.begin.regexp.shell
#             ^^ - punctuation
   [!0-9]+ ) ]]
# <- meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell - meta.set
#  ^^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell meta.set.regexp.shell
#        ^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell - meta.set
#           ^^^ - meta.string.regexp
#  ^ punctuation.definition.set.begin.regexp.shell
#   ^ keyword.operator.logical.regexp.shell
#    ^^^ constant.other.range.regexp.shell
#       ^ punctuation.definition.set.end.regexp.shell
#        ^ - constant - keyword
#          ^ punctuation.section.group.end.regexp.shell
#            ^^ punctuation.section.compound.end.shell


###############################################################################
# POSIX extended regular expression pattern matching                          #
# https://en.wikibooks.org/wiki/Regular_Expressions/POSIX-Extended_Regular_Expressions
#    in test expressions                                                      #
###############################################################################

[[ a =~ [ ]]
#^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^ meta.string.regexp.shell - meta.set
#        ^^^ - meta.string.regexp.shell
#         ^^ punctuation.section.compound.end.shell

[[ a =~ ] ]]
#^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^ meta.string.regexp.shell - meta.set
#        ^^^ - meta.string.regexp.shell
#         ^^ punctuation.section.compound.end.shell

[[ a =~ [[] ]]
#^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^ meta.string.regexp.shell meta.set.regexp.shell
#          ^^^ - meta.string.regexp.shell
#           ^^ punctuation.section.compound.end.shell

[[ a =~ [^[] ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^ meta.string.regexp.shell meta.set.regexp.shell
#           ^^^ - meta.string.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#        ^ keyword.operator.logical.regexp.shell
#         ^ - punctuation
#          ^ punctuation.definition.set.end.regexp.shell
#            ^^ punctuation.section.compound.end.shell

[[ a =~ [![] ]]  # ! is not an operator in ERE
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^ meta.string.regexp.shell meta.set.regexp.shell
#           ^^^ - meta.string.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#        ^^ - keyword - punctuation
#          ^ punctuation.definition.set.end.regexp.shell
#            ^^ punctuation.section.compound.end.shell

[[ a =~ [\[] ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^ meta.string.regexp.shell meta.set.regexp.shell
#           ^^^ - meta.string.regexp.shell
#            ^^ punctuation.section.compound.end.shell

[[ a =~ [^\[] ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#            ^^^ - meta.string.regexp.shell
#             ^^ punctuation.section.compound.end.shell

[[ a =~ []] ]]
#^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^ meta.string.regexp.shell meta.set.regexp.shell
#          ^^^ - meta.string.regexp.shell
#           ^^ punctuation.section.compound.end.shell

[[ a =~ []-[] ]]
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#            ^^^ - meta.string.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#        ^^^ constant.other.range.regexp.shell
#           ^ punctuation.definition.set.end.regexp.shell
#             ^^ punctuation.section.compound.end.shell

[[ a =~ [^]] ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^ meta.string.regexp.shell meta.set.regexp.shell
#           ^^^ - meta.string.regexp.shell
#            ^^ punctuation.section.compound.end.shell

[[ a =~ [!]] ]]  # ! is not an operator in ERE
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^ meta.string.regexp.shell meta.set.regexp.shell
#          ^ meta.string.regexp.shell - meta.set
#           ^^^ - meta.string.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#        ^ - keyword - punctuation
#         ^ punctuation.definition.set.end.regexp.shell
#          ^ - punctuation
#            ^^ punctuation.section.compound.end.shell

[[ a =~ [\]] ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^ meta.string.regexp.shell meta.set.regexp.shell
#           ^^^ - meta.string.regexp.shell
#            ^^ punctuation.section.compound.end.shell

[[ a =~ [^\]] ]]
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#            ^^^ - meta.string.regexp.shell
#             ^^ punctuation.section.compound.end.shell

[[ a =~ [\\\]] ]]
#^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#             ^^^ - meta.string.regexp.shell
#              ^^ punctuation.section.compound.end.shell

[[ a =~ [\\\] ]]
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^ meta.string.regexp.shell - meta.set
#            ^^^ - meta.string.regexp.shell
#             ^^ punctuation.section.compound.end.shell

[[ a =~ [[:alpha: ]]
#^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^ meta.string.regexp.shell - meta.set
#                ^^^ - meta.string.regexp.shell
#                 ^^ punctuation.section.compound.end.shell

[[ a =~ [[:alpha:] ]]
#^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^ meta.string.regexp.shell - meta.set
#        ^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#                 ^^^ - meta.string.regexp.shell
#                  ^^ punctuation.section.compound.end.shell

[[ a =~ [[:alpha:]][^[:alpha:]][[^:alpha:]] ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#                                         ^ meta.string.regexp.shell - meta.set
#                                          ^^^ - meta.string.regexp.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ punctuation.definition.class.begin.regexp.shell
#         ^^^^^^^ constant.other.posix-class.regexp.shell
#               ^ punctuation.definition.class.end.regexp.shell
#                ^^ punctuation.definition.set.end.regexp.shell
#                  ^ punctuation.definition.set.begin.regexp.shell
#                   ^ keyword.operator.logical.regexp.shell
#                    ^ punctuation.definition.set.begin.regexp.shell
#                     ^^^^^^^ constant.other.posix-class.regexp.shell
#                            ^^ punctuation.definition.set.end.regexp.shell
#                              ^ punctuation.definition.set.begin.regexp.shell
#                               ^^^^^^^^^ - constant.other.posix-class
#                                        ^ punctuation.definition.set.end.regexp.shell
#                                         ^ - punctuation
#                                           ^^ punctuation.section.compound.end.shell

[[ a =~ [[:${posix}:]][[:$foo:]] ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^ meta.string.regexp.shell meta.set.regexp.shell - meta.interpolation
#          ^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell meta.set.regexp.shell meta.interpolation.parameter.shell
#                  ^^^^^^ meta.string.regexp.shell meta.set.regexp.shell  - meta.interpolation
#                        ^^^^ meta.string.regexp.shell meta.set.regexp.shell meta.set.regexp.shell meta.interpolation.parameter.shell
#                            ^^^ meta.string.regexp.shell meta.set.regexp.shell  - meta.interpolation
#                               ^^^ - meta.string.regexp.shell
#                                ^^ punctuation.section.compound.end.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ constant.other.posix-class.regexp.shell punctuation.definition.class.begin.regexp.shell
#          ^ punctuation.definition.variable.shell
#           ^ punctuation.section.interpolation.begin.shell
#            ^^^^^ variable.other.readwrite.shell
#                 ^ punctuation.section.interpolation.end.shell
#                  ^ constant.other.posix-class.regexp.shell punctuation.definition.class.end.regexp.shell
#                   ^^ punctuation.definition.set.end.regexp.shell
#                     ^^ punctuation.definition.set.begin.regexp.shell
#                       ^ punctuation.definition.class.begin.regexp.shell
#                        ^^^^ variable.other.readwrite.shell
#                            ^ punctuation.definition.class.end.regexp.shell
#                             ^^ punctuation.definition.set.end.regexp.shell
#                                ^^ punctuation.section.compound.end.shell

[[ a =~ [[=a=]] ]]
#^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#              ^^^ - meta.string.regexp.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ punctuation.definition.class.begin.regexp.shell
#         ^^^ constant.character.equivalence-class.regexp.shell
#           ^ punctuation.definition.class.end.regexp.shell
#            ^^ punctuation.definition.set.end.regexp.shell
#               ^^ punctuation.section.compound.end.shell

[[ a =~ [[=$a=]] ]]
#^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#               ^^^ - meta.string.regexp.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ punctuation.definition.class.begin.regexp.shell
#         ^^^^ constant.character.equivalence-class.regexp.shell
#          ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#            ^ punctuation.definition.class.end.regexp.shell
#             ^^ punctuation.definition.set.end.regexp.shell
#                ^^ punctuation.section.compound.end.shell

[[ a =~ [[.ch.]] ]]
#^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#               ^^^ - meta.string.regexp.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ punctuation.definition.collate.begin.regexp.shell
#         ^^^^ constant.character.collate.regexp.shell
#            ^ punctuation.definition.collate.end.regexp.shell
#             ^^ punctuation.definition.set.end.regexp.shell
#                ^^ punctuation.section.compound.end.shell

[[ a =~ [[.dollar-sign.]] ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#                        ^^^ - meta.string.regexp.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ punctuation.definition.collate.begin.regexp.shell
#         ^^^^^^^^^^^^^ constant.character.collate.regexp.shell
#                     ^ punctuation.definition.collate.end.regexp.shell
#                      ^^ punctuation.definition.set.end.regexp.shell
#                         ^^ punctuation.section.compound.end.shell

[[ a =~ [[.${equiv}.]] ]]
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#                     ^^^ - meta.string.regexp.shell
#       ^^ punctuation.definition.set.begin.regexp.shell
#         ^ punctuation.definition.collate.begin.regexp.shell
#         ^^^^^^^^^^ constant.character.collate.regexp.shell
#          ^^^^^^^^ meta.interpolation.parameter.shell
#                  ^ punctuation.definition.collate.end.regexp.shell
#                   ^^ punctuation.definition.set.end.regexp.shell
#                      ^^ punctuation.section.compound.end.shell

[[ a =~ [[.alpha=]] ]]
#^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell - constant
#                 ^ meta.string.regexp.shell - meta.set
#                  ^^^ - meta.string.regexp.shell
#                   ^^ punctuation.section.compound.end.shell

[[ a =~ [-9][0-][$0-9][0-$9] ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#        ^^ - constant - operator
#                ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#                  ^^ constant.other.range.regexp.shell
#                      ^^ constant.other.range.regexp.shell
#                        ^^ meta.interpolation.parameter.shell variable.language.positional.shell
#                           ^^^ - meta.string.regexp.shell
#                            ^^ punctuation.section.compound.end.shell

[[ a =~ [${ bar }] ]]
#^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^^^^ meta.string.regexp.shell meta.set.regexp.shell
#        ^^^^^^^^ meta.interpolation.parameter.shell
#                 ^^^ - meta.string.regexp.shell
#                  ^^ punctuation.section.compound.end.shell

[[ a =~ { ]]
#^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^ meta.string.regexp.shell - meta.interpolation
#        ^^^ - meta.string.regexp.shell
#         ^^ punctuation.section.compound.end.shell


[[ a =~ } ]]
#^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^ meta.string.regexp.shell - meta.interpolation
#        ^^^ - meta.string.regexp.shell
#         ^^ punctuation.section.compound.end.shell

[[ a =~ \${* ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^ meta.string.regexp.shell - meta.interpolation
#           ^^^ - meta.string.regexp.shell
#       ^^ constant.character.escape
#          ^ keyword.operator.quantifier.regexp.shell

[[ a =~ ${* ]]} ]]
#^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^ meta.string.regexp.shell meta.interpolation.parameter.shell
#              ^^^ - meta.string.regexp.shell
#       ^ punctuation.definition.variable.shell
#        ^ punctuation.section.interpolation.begin.shell
#           ^^ - support.function
#             ^ punctuation.section.interpolation.end.shell
#               ^^ punctuation.section.compound.end.shell

[[ a =~ %1* ]]
#^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^ meta.string.regexp.shell - meta.interpolation
#         ^ keyword.operator.quantifier.regexp.shell
#          ^^^ - meta.string.regexp.shell

[[ a =~ [abc[]* ]]
#^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^ - meta.string.regexp.shell
#       ^^^^^^^ meta.string.regexp.shell - meta.interpolation
#              ^^^ - meta.string.regexp.shell
#       ^ punctuation.definition.set.begin.regexp.shell
#           ^ - keyword.control
#            ^ punctuation.definition.set.end.regexp.shell
#             ^ keyword.operator.quantifier.regexp.shell

[[ "${foo}" =~ bar*baz ]]
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^^^^^^^^ - meta.string.regexp.shell
#              ^^^^^^^ meta.string.regexp.shell - meta.interpolation
#                     ^^^ - meta.string.regexp.shell
#           ^^ keyword.operator.comparison.shell
#                 ^ keyword.operator.quantifier.regexp.shell

[[ "${foo}" =~ bar|baz ]]
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^^^^^^^^ - meta.string.regexp.shell
#              ^^^^^^^ meta.string.regexp.shell - meta.interpolation
#                     ^^^ - meta.string.regexp.shell
#           ^^ keyword.operator.comparison.shell
#                 ^ keyword.operator.alternation.regexp.shell

[[ "${foo}" =~ bar&baz ]]
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^^^^^^^^ - meta.string.regexp.shell
#              ^^^^^^^ meta.string.regexp.shell - meta.interpolation
#                     ^^^ - meta.string.regexp.shell
#           ^^ keyword.operator.comparison.shell
#                 ^ invalid.illegal.unexpected-token.shell

[[ $foo =~ ^$'\t' ]]
#^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                   ^ - meta.conditional
#^^^^^^^^^^ - meta.string.regexp.shell
#          ^^^^^^ meta.string.regexp.shell - meta.interpolation
#                ^^^ - meta.string.regexp.shell
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.comparison.shell

[[ $foo =~ ^abc$var$ ]]
#^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                      ^ - meta.conditional
#^^^^^^^^^^ - meta.string.regexp.shell
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.comparison.shell
#          ^^^^ meta.string.regexp.shell - meta.interpolation
#              ^^^^ meta.string.regexp.shell meta.interpolation.parameter.shell
#                  ^ meta.string.regexp.shell - meta.interpolation
#                   ^^^ - meta.string.regexp.shell

[[ $foo =~ [[:space:]]*?(a)b ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                              ^ - meta.conditional
#^^^^^^^^^^ - meta.string.regexp.shell
#          ^^^^^^^^^^^^^^^^^ meta.string.regexp.shell
#          ^^^^^^^^^^^ meta.set.regexp.shell
#                       ^^^ meta.group.regexp.shell
#                           ^^^ - meta.string.regexp.shell
#  ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^^ keyword.operator.comparison.shell
#          ^^ punctuation.definition.set.begin.regexp.shell
#            ^^^^^^^ constant.other.posix-class.regexp.shell
#                   ^^ punctuation.definition.set.end.regexp.shell
#                     ^^ keyword.operator.quantifier.regexp.shell
#                       ^ punctuation.section.group.begin.regexp.shell
#                         ^ punctuation.section.group.end.regexp.shell

[[ $foo =~ ^0[1-9]$ ]]
#^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                     ^ - meta.conditional
#^^^^^^^^^^ - meta.string.regexp.shell
#          ^^^^^^^^ meta.string.regexp.shell
#          ^ keyword.control.anchor.regexp.shell
#                 ^ keyword.control.anchor.regexp.shell
#                  ^^^ - meta.string.regexp.shell

[[ $foo =~ ^0[1-9]{2,3}$ ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                          ^ - meta.conditional
#^^^^^^^^^^ - meta.string.regexp.shell
#          ^^^^^^^^^^^^^ meta.string.regexp.shell
#          ^ keyword.control.anchor.regexp.shell
#                 ^^^^^ keyword.operator.quantifier.regexp.shell
#                      ^ keyword.control.anchor.regexp.shell
#                       ^^^ - meta.string.regexp.shell

[[ $foo =~ ^0[1-9]{a,b}$ ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                          ^ - meta.conditional
#^^^^^^^^^^ - meta.string.regexp.shell
#          ^^^^^^^^^^^^^ meta.string.regexp.shell
#          ^ keyword.control.anchor.regexp.shell
#                 ^^^^^ meta.interpolation.brace.shell
#                 ^ punctuation.section.interpolation.begin.shell
#                  ^ string.unquoted.shell
#                   ^ punctuation.separator.sequence.shell
#                    ^ string.unquoted.shell
#                     ^ punctuation.section.interpolation.end.shell
#                      ^ keyword.control.anchor.regexp.shell
#                       ^^^ - meta.string.regexp.shell

[[ ! ($foo =~ ^0[1-9]$) ]]
# <- meta.compound.conditional.shell - meta.group
#^^^^ meta.compound.conditional.shell - meta.group
#    ^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#             ^^^^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#                     ^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#                      ^^^ meta.compound.conditional.shell - meta.group
#                         ^ - meta.conditional - meta.group

[[ ! ($foo =~ ^(\([0-9]+)$) ]]
# <- meta.compound.conditional.shell - meta.group
#^^^^ meta.compound.conditional.shell - meta.group
#    ^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#             ^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#                         ^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#                          ^^^ meta.compound.conditional.shell - meta.group
#                             ^ - meta.conditional - meta.group
# <- punctuation.section.compound.begin.shell
#^ punctuation.section.compound.begin.shell
#  ^ keyword.operator.logical.shell
#    ^ punctuation.section.group.begin.shell
#     ^^^^ variable.other.readwrite.shell
#          ^^ keyword.operator.comparison.shell
#              ^^^^^^^^ meta.group.regexp.shell
#              ^ punctuation.section.group.begin.regexp.shell
#               ^^ constant.character.escape
#                 ^^^^^ meta.set.regexp.shell
#                 ^ punctuation.definition.set.begin.regexp.
#                     ^ punctuation.definition.set.end.regexp.shell
#                      ^ keyword.operator.quantifier.regexp.shell
#                       ^ punctuation.section.group.end.regexp.shell
#                         ^ punctuation.section.group.end.shell
#                           ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ ^
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#             ^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp invalid.illegal.unexpected-token.shell

[[ ( $foo =~ ^\
   [^0-9]+ ) ]]
# <- meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#^^^^^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#         ^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#           ^^^ meta.compound.conditional.shell - meta.group
#            ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ ^ ]]
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#             ^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#              ^^ invalid.illegal.unexpected-token.shell

[[ ( $foo =~ ^ ]]
   [^0-9]+ ) ]]
# <- - meta.conditional
#^^^^^^^^^^^^^^ - meta.conditional

[[ $foo =~ ( ]]
#^^^^^^^^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#          ^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#          ^ punctuation.section.group.begin.regexp.shell
#            ^^ - punctuation
   [^0-9]+ ) ]]
# <- meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#^^^^^^^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#           ^^^ - meta.string.regexp
#            ^^ punctuation.section.compound.end.shell

[[ $foo =~ ) ]]
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#          ^ meta.string.regexp.shell invalid.illegal.stray.regexp.shell

[[ $foo =~ ( ) ]]
#^^^^^^^^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#          ^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#             ^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#                ^ - meta.conditional

[[ $foo =~ ( [ ) ]]
#^^^^^^^^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#          ^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#               ^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#                  ^ - meta.conditional

[[ $foo =~ ( ] ) ]]
#^^^^^^^^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#          ^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#               ^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#                  ^ - meta.conditional

[[ $foo =~ ( [\\\] ) ]]
#^^^^^^^^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#          ^^^^^^^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell
#                   ^^^ meta.compound.conditional.shell - meta.string.regexp - meta.group
#                      ^ - meta.conditional

[[ ( $foo =~ [\\\] ) ]]
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#                 ^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#                   ^^^ meta.compound.conditional.shell - meta.group - meta.string.regexp
#                      ^ - meta.conditional

[[ ( $foo =~ ([\\\])) ]]
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^^^^^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell meta.group.regexp.shell
#                   ^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#                    ^^^ meta.compound.conditional.shell - meta.group - meta.string.regexp
#                       ^ - meta.conditional

[[ $foo =~ (?x) ]]
#^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#          ^^^^ meta.string.regexp.shell meta.group.regexp.shell
#          ^ punctuation.section.group.begin.regexp.shell
#           ^ invalid.illegal.unexpected-quantifier.regexp.shell
#             ^ punctuation.section.group.end.regexp.shell

[[ $foo =~ (?:bar) ]]
#^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#          ^^^^^^^ meta.string.regexp.shell meta.group.regexp.shell
#          ^ punctuation.section.group.begin.regexp.shell
#           ^ invalid.illegal.unexpected-quantifier.regexp.shell
#                ^ punctuation.section.group.end.regexp.shell

[[ $foo =~ (?i:bar) ]]
#^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#          ^^^^^^^^ meta.string.regexp.shell meta.group.regexp.shell
#          ^ punctuation.section.group.begin.regexp.shell
#           ^ invalid.illegal.unexpected-quantifier.regexp.shell
#                 ^ punctuation.section.group.end.regexp.shell

[[ ' foo ' =~ ( foo ) ]]  # evaluates to true
#^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#          ^^ keyword.operator.comparison.shell
#             ^^^^^^^ meta.string.regexp.shell meta.group.regexp.shell
#             ^ punctuation.section.group.begin.regexp.shell
#                   ^ punctuation.section.group.end.regexp.shell
#                     ^^ punctuation.section.compound.end.shell

[[ ' foo ' =~ ([ ]foo[ ]) ]]  # evaluates to true
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#             ^ meta.string.regexp.shell meta.group.regexp.shell - meta.set
#              ^^^ meta.string.regexp.shell meta.group.regexp.shell meta.set.regexp.shell
#                 ^^^ meta.string.regexp.shell meta.group.regexp.shell - meta.set
#                    ^^^ meta.string.regexp.shell meta.group.regexp.shell meta.set.regexp.shell
#                       ^ meta.string.regexp.shell meta.group.regexp.shell - meta.set
#          ^^ keyword.operator.comparison.shell
#             ^ punctuation.section.group.begin.regexp.shell
#              ^ punctuation.definition.set.begin.regexp.shell
#                ^ punctuation.definition.set.end.regexp.shell
#                    ^ punctuation.definition.set.begin.regexp.shell
#                      ^ punctuation.definition.set.end.regexp.shell
#                       ^ punctuation.section.group.end.regexp.shell
#                         ^^ punctuation.section.compound.end.shell

[[ foo =~ ^foo//:/[}] ]]
#^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#^^^^^^^^^ - meta.string.regexp.shell
#         ^^^^^^^^ meta.string.regexp.shell - meta.set
#                 ^^^ meta.string.regexp.shell meta.set.regexp.shell
#                    ^^^ - meta.string.regexp.shell
#      ^^ keyword.operator.comparison.shell
#                 ^ punctuation.definition.set.begin.regexp.shell
#                   ^ punctuation.definition.set.end.regexp.shell
#                     ^^ punctuation.section.compound.end.shell

[[ foo =~ ^[0-9]+\.[0-9]+(([ab]|rc)[0-9]+)?$ ]]
#                        ^ meta.group.regexp.shell - meta.group meta.group
#                         ^^^^^^^^^ meta.group.regexp.shell meta.group.regexp.shell
#                                  ^^^^^^^ meta.group.regexp.shell - meta.group meta.group
#                        ^^ punctuation.section.group.begin.regexp.shell
#                                 ^ punctuation.section.group.end.regexp.shell
#                                        ^ punctuation.section.group.end.regexp.shell

[[ ' foobar' =~ [\ ]foo* ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                          ^ - meta.conditional
#^^^^^^^^^^^^^^^ - meta.string.regexp.shell
#               ^^^^ meta.set.regexp.shell
#               ^^^^^^^^ meta.string.regexp.shell
#                       ^^^ - meta.string.regexp.shell
#               ^ punctuation.definition.set.begin.regexp.shell
#                ^^ constant.character.escape
#                  ^ punctuation.definition.set.end.regexp.shell
#                      ^ keyword.operator.quantifier.regexp.shell

[[ a\$bc =~ ^a'$b'c$ ]]
#^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#           ^^^^^^^^ meta.string.regexp.shell - variable
#           ^ keyword.control.anchor.regexp.shell
#             ^ punctuation.definition.string.begin.shell
#                ^ punctuation.definition.string.end.shell
#                  ^ keyword.control.anchor.regexp.shell

[[ a"$bc"c =~ ^a"$bc"c$ ]]
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#             ^^^^^^^^^ meta.string.regexp.shell
#             ^ keyword.control.anchor.regexp.shell
#               ^ punctuation.definition.string.begin.shell
#                ^^^ variable.other.readwrite.shell
#                   ^ punctuation.definition.string.end.shell
#                     ^ keyword.control.anchor.regexp.shell

echo '([^.[:space:]]+)   Class::method()' # colon not scoped as path separator
#          ^^^^^^^^^^^^^^^^^^^^^ string.quoted.single - punctuation.separator.sequence

[[ $foo =~ 'bar' || $foo =~ "baz" && $bar =~ baz ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#  ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#      ^^^^ - meta.string
#       ^^ keyword.operator.comparison.shell
#          ^^^^^ meta.string.regexp.shell
#               ^^^^ - meta.string
#                ^^ keyword.operator.logical.shell
#                   ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                       ^^^^ - meta.string
#                        ^^ keyword.operator.comparison.shell
#                           ^^^^^ meta.string.regexp.shell
#                                ^^^^ - meta.string
#                                 ^^ keyword.operator.logical.shell
#                                    ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                        ^^^^ - meta.string
#                                         ^^ keyword.operator.comparison.shell
#                                            ^^^ meta.string.regexp.shell
#                                               ^^^^ - meta.string
#                                                ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ 'bar' || $foo =~ "baz" ) && $bar =~ baz ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                                    ^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell - meta.group
#^^^^ - meta.string
#  ^ punctuation.section.group.begin.shell
#    ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^^^^ - meta.string
#         ^^ keyword.operator.comparison.shell
#            ^^^^^ meta.string.regexp.shell
#                 ^^^^ - meta.string
#                  ^^ keyword.operator.logical.shell
#                     ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                         ^^^^ - meta.string
#                          ^^ keyword.operator.comparison.shell
#                             ^^^^^ meta.string.regexp.shell
#                                  ^^^^^^ - meta.string
#                                   ^ punctuation.section.group.end.shell
#                                     ^^ keyword.operator.logical.shell
#                                        ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                            ^^^^ - meta.string
#                                             ^^ keyword.operator.comparison.shell
#                                                ^^^ meta.string.regexp.shell
#                                                   ^^^^ - meta.string
#                                                    ^^ punctuation.section.compound.end.shell

[[ $foo =~ ; ]]       # unquoted semicolons are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#              ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ invalid.illegal.unexpected-token.shell
#            ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ ; ) ]]   # unquoted semicolons are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#               ^^^ meta.compound.conditional.shell - meta.group
#                  ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ invalid.illegal.unexpected-token.shell
#              ^ punctuation.section.group.end.shell
#                ^^ punctuation.section.compound.end.shell

[[ $foo =~ (;) ]]     # unquoted semicolons allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ meta.compound.conditional.shell - meta.group
#          ^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#             ^^^ meta.compound.conditional.shell - meta.group
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ punctuation.section.group.begin.regexp.shell
#            ^ punctuation.section.group.end.regexp.shell
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ (;) ) ]] # unquoted semicolons allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#               ^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ punctuation.section.group.begin.regexp.shell
#              ^ punctuation.section.group.end.regexp.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ \; ]]      # escaped semicolons are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#               ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^ constant.character.escape.shell
#             ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ \; ) ]]  # escaped semicolons are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                ^^^ meta.compound.conditional.shell - meta.group
#                   ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^^ constant.character.escape.shell
#               ^ punctuation.section.group.end.shell
#                 ^^ punctuation.section.compound.end.shell

[[ $foo =~ ";" ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^^ string
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ ";" ) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#               ^^ meta.compound.conditional.shell meta.group.shell - meta.string
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ & ]]       # unquoted ampersands are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#              ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ invalid.illegal.unexpected-token.shell
#            ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ & ) ]]   # unquoted ampersands are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#               ^^^ meta.compound.conditional.shell - meta.group
#                  ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ invalid.illegal.unexpected-token.shell
#              ^ punctuation.section.group.end.shell
#                ^^ punctuation.section.compound.end.shell

[[ $foo =~ (&) ]]     # unquoted ampersands allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ meta.compound.conditional.shell - meta.group
#          ^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#             ^^^ meta.compound.conditional.shell - meta.group
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ punctuation.section.group.begin.regexp.shell
#            ^ punctuation.section.group.end.regexp.shell
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ (&) ) ]] # unquoted ampersands allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#               ^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ punctuation.section.group.begin.regexp.shell
#              ^ punctuation.section.group.end.regexp.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ \& ]]      # escaped ampersands are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#               ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^ constant.character.escape.shell
#             ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ \& ) ]]  # escaped ampersands are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                ^^^ meta.compound.conditional.shell - meta.group
#                   ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^^ constant.character.escape.shell
#               ^ punctuation.section.group.end.shell
#                 ^^ punctuation.section.compound.end.shell

[[ $foo =~ "&" ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^^ string
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ "&" ) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#               ^^ meta.compound.conditional.shell meta.group.shell - meta.string
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ < ]]       # unquoted redirections are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#              ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ invalid.illegal.unexpected-token.shell
#            ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ < ) ]]   # unquoted redirections are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#               ^^^ meta.compound.conditional.shell - meta.group
#                  ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ invalid.illegal.unexpected-token.shell
#              ^ punctuation.section.group.end.shell
#                ^^ punctuation.section.compound.end.shell

[[ $foo =~ (<) ]]     # unquoted redirections allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ meta.compound.conditional.shell - meta.group
#          ^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#             ^^^ meta.compound.conditional.shell - meta.group
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ punctuation.section.group.begin.regexp.shell
#            ^ punctuation.section.group.end.regexp.shell
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ (<) ) ]] # unquoted redirections allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#               ^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ punctuation.section.group.begin.regexp.shell
#              ^ punctuation.section.group.end.regexp.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ \< ]]      # escaped redirections are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#               ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^ constant.character.escape.shell
#             ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ \< ) ]]  # escaped redirections are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                ^^^ meta.compound.conditional.shell - meta.group
#                   ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^^ constant.character.escape.shell
#               ^ punctuation.section.group.end.shell
#                 ^^ punctuation.section.compound.end.shell

[[ $foo =~ "<" ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^^ string
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ "<" ) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#               ^^ meta.compound.conditional.shell meta.group.shell - meta.string
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ > ]]       # unquoted redirections are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^ meta.compound.conditional.shell
#              ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ invalid.illegal.unexpected-token.shell
#            ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ > ) ]]   # unquoted redirections are illegal
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#               ^^^ meta.compound.conditional.shell - meta.group
#                  ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ invalid.illegal.unexpected-token.shell
#              ^ punctuation.section.group.end.shell
#                ^^ punctuation.section.compound.end.shell

[[ $foo =~ (>) ]]     # unquoted redirections allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ meta.compound.conditional.shell - meta.group
#          ^^^ meta.compound.conditional.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#             ^^^ meta.compound.conditional.shell - meta.group
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^ punctuation.section.group.begin.regexp.shell
#            ^ punctuation.section.group.end.regexp.shell
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ (>) ) ]] # unquoted redirections allowed in pattern groups
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell meta.group.regexp.shell string.unquoted.shell
#               ^ meta.compound.conditional.shell meta.group.shell - meta.group meta.group
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^ punctuation.section.group.begin.regexp.shell
#              ^ punctuation.section.group.end.regexp.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell

[[ $foo =~ \> ]]      # escaped redirections are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#               ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^ constant.character.escape.shell
#             ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ \> ) ]]  # escaped redirections are allowed
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell
#                ^^^ meta.compound.conditional.shell - meta.group
#                   ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#            ^^ constant.character.escape.shell
#               ^ punctuation.section.group.end.shell
#                 ^^ punctuation.section.compound.end.shell

[[ $foo =~ ">" ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                ^ - meta.conditional
#       ^^ keyword.operator.comparison.shell
#          ^^^ string
#              ^^ punctuation.section.compound.end.shell

[[ ( $foo =~ ">" ) ]]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^ meta.compound.conditional.shell - meta.group
#  ^^^^^^^^^^ meta.compound.conditional.shell meta.group.shell - meta.string.regexp
#            ^^^ meta.compound.conditional.shell meta.group.shell meta.string.regexp.shell
#               ^^ meta.compound.conditional.shell meta.group.shell - meta.string
#                 ^^^ meta.compound.conditional.shell - meta.group
#                    ^ - meta.conditional
#         ^^ keyword.operator.comparison.shell
#                ^ punctuation.section.group.end.shell
#                  ^^ punctuation.section.compound.end.shell


###############################################################################
# 3.6 Redirections                                                            #
# https://www.gnu.org/software/bash/manual/bash.html#Redirections             #
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
#       ^ - meta.redirection
#        ^^^^^^^ meta.redirection.shell
#        ^^ keyword.operator.assignment.redirection.shell
#           ^^^^ meta.string.glob.shell string.unquoted.shell
#               ^ - meta.redirection
#                ^^^^^^^ meta.redirection.shell
#                ^^ keyword.operator.assignment.redirection.shell
#                   ^^^^ meta.string.glob.shell string.unquoted.shell
#                       ^ - meta.redirection

: > /dev/null
# ^^^^^^^^^^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#   ^^^^^^^^^ meta.path.shell constant.language.null.shell
#   ^ punctuation.separator.path.shell
#       ^ punctuation.separator.path.shell
#            ^ - meta.redirection

: > out~put-
# ^^^^^^^^^^ meta.redirection.shell
# ^ keyword.operator.assignment.redirection.shell
#   ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#    ^ - variable
#          ^ - punctuation
#           ^ - meta.redirection

: > ~/.local/file
# ^^ meta.redirection.shell - meta.string
#   ^ meta.redirection.shell meta.string.glob.shell meta.interpolation.tilde.shell
#    ^^^^^^^^^^^^ meta.redirection.shell meta.string.glob.shell string.unquoted.shell - meta.interpolation
# ^ keyword.operator.assignment.redirection.shell
#   ^ variable.language.tilde.shell

: > "~/.local/file"
# ^^ meta.redirection.shell - meta.string
#   ^^^^^^^^^^^^^^^ meta.redirection.shell meta.string.glob.shell string.quoted.double.shell
# ^ keyword.operator.assignment.redirection.shell
#   ^ punctuation.definition.string.begin.shell
#    ^ - variable.language
#                 ^ punctuation.definition.string.end.shell

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

foo 2>&1
#   ^^^^ meta.redirection.shell
#   ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#      ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

foo 2>&-
#   ^^^^ meta.redirection.shell
#      ^ variable.language.stdio.shell

foo | bar 2>&1
#         ^^^^ meta.redirection.shell
#         ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#            ^ meta.function-call.arguments meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell

foo | bar --opt1 arg1 < file.txt
#        ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                     ^^ meta.redirection.shell - meta.command
#                     ^ keyword.operator.assignment.redirection.shell
#                       ^^^^^^^^ meta.redirection.shell

foo | bar --opt1 arg1 > file.txt
#        ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                     ^^ meta.redirection.shell - meta.command
#                     ^ keyword.operator.assignment.redirection.shell
#                       ^^^^^^^^ meta.redirection.shell

foo -x arg1 &>/dev/null
#  ^^^^^^^^^ meta.function-call.arguments.shell - meta.redirection
#           ^^ meta.function-call.arguments.shell meta.redirection.shell - meta.command
#           ^^ keyword.operator.assignment.redirection.shell
#             ^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell

foo -x arg1 &> /dev/null
#  ^^^^^^^^^ meta.function-call.arguments.shell - meta.redirection
#           ^^^ meta.function-call.arguments.shell meta.redirection.shell - meta.command
#           ^^ keyword.operator.assignment.redirection.shell
#              ^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell
#                       ^ - meta.function

tr "o" "a" < <(echo "Foo")
#  ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#          ^ keyword.operator.assignment.redirection.shell
#            ^ keyword.operator.assignment.redirection.shell
#             ^ punctuation.section.compound.begin.shell
#                        ^ punctuation.section.compound.end.shell

wc <(cat /usr/share/dict/linux.words)
# ^ meta.function-call.arguments.shell - meta.redirection
#  ^ meta.function-call.arguments.shell meta.redirection.shell - meta.compound
#   ^ meta.function-call.arguments.shell meta.redirection.shell meta.compound.command.shell - meta.function-call meta.function-call
#    ^^^ meta.function-call.arguments.shell meta.redirection.shell meta.compound.command.shell meta.function-call.identifier.shell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.compound.command.shell meta.function-call.arguments.shell
#                                   ^ meta.function-call.arguments.shell meta.redirection.shell meta.compound.command.shell - meta.function-call meta.function-call
#  ^ keyword.operator.assignment.redirection.shell
#   ^ punctuation.section.compound.begin.shell
#    ^^^ variable.function.shell
#                                   ^ punctuation.section.compound.end.shell

comm <(ls -l) <(ls -al)
#    ^ meta.redirection.shell - meta.compound
#     ^^^^^^^ meta.redirection.shell meta.compound.command.shell
#            ^ - meta.redirection - meta.compound
#             ^ meta.redirection.shell - meta.compound
#              ^^^^^^^^ meta.redirection.shell meta.compound.command.shell
#                      ^ - meta.redirection - meta.compound
#    ^ keyword.operator.assignment.redirection.shell
#     ^ punctuation.section.compound.begin.shell
#      ^^ variable.function.shell
#         ^^ variable.parameter.option.shell
#           ^ punctuation.section.compound.end.shell
#             ^ keyword.operator.assignment.redirection.shell
#              ^ punctuation.section.compound.begin.shell
#               ^^ variable.function.shell
#                  ^^^ variable.parameter.option.shell
#                     ^ punctuation.section.compound.end.shell

gzip | tee >(md5sum - | sed 's/-$/mydata.lz2/'>mydata-gz.md5) > mydata.gz
#    ^ keyword.operator.assignment.pipe.shell
#          ^ keyword.operator.assignment.redirection.shell
#           ^ punctuation.section.compound.begin.shell
#                     ^ keyword.operator.assignment.pipe.shell
#                                             ^ keyword.operator.assignment.redirection.shell
#                                                           ^ punctuation.section.compound.end.shell
#                                                             ^ keyword.operator.assignment.redirection.shell

LC_ALL=C 2> /dev/null
#        ^^^ meta.redirection.shell - meta.command
#        ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ keyword.operator.assignment.redirection
#           ^^^^^^^^^ meta.redirection.shell - variable

2>&1 echo foo
# <- meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#^^ keyword.operator.assignment.redirection
#  ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^^^^ meta.function-call support.function
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


###############################################################################
# 3.6.6 Here Documents                                                        #
# https://www.gnu.org/software/bash/manual/bash.html#Here-Documents           #
###############################################################################

var=world!
cat <<FOOSTRING ; echo "more stuff here"
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^ meta.redirection.shell - meta.string - meta.tag
#     ^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell - meta.tag - meta.string.heredoc - string.unquoted.heredoc
#                 ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#                     ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#  ^ - keyword - variable
#   ^^ keyword.operator.assignment.redirection.shell
#     ^^^^^^^^^ entity.name.tag.heredoc.shell
#               ^ punctuation.terminator.statement.shell
#                 ^^^^ support.function.shell
#                      ^^^^^^^^^^^^^^^^^ string.quoted.double.shell
Hello, ${var}
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
#^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
#      ^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.interpolation.parameter.shell
#      ^ punctuation.definition.variable.shell
#       ^ punctuation.section.interpolation.begin.shell
#        ^^^variable.other.readwrite.shell
#           ^ punctuation.section.interpolation.end.shell
FOOSTRING
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
cat << 'WHAT' ; echo "more stuff here"
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^ meta.redirection.shell - meta.string - meta.tag
#      ^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#            ^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell - meta.tag - meta.string.heredoc - string.unquoted.heredoc
#               ^^^^ meta.function-call.arguments.shell meta.function-call.identifier.shell
#                   ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.function-call.arguments.shell
#  ^ - keyword - variable
#   ^^ keyword.operator.assignment.redirection.shell
#      ^ punctuation.definition.tag.begin.shell - entity
#       ^^^^ entity.name.tag.heredoc.shell
#           ^ punctuation.definition.tag.end.shell - entity
#             ^ punctuation.terminator.statement.shell
#               ^^^^ support.function.shell
#                    ^^^^^^^^^^^^^^^^^ string.quoted.double.shell
Hello, ${var}
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
#^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
WHAT
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string

# Escaped and non-escaped backticks in heredocs...
cat << backticks_are_deprecated
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^ meta.redirection.shell - meta.string - meta.tag
#      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#                              ^ meta.redirection.shell - meta.tag - meta.string - string
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
#<- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#                       ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

# Redirection after heredoc token
cat << redirection_comes_next > foo.txt
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^ meta.redirection.shell - meta.string - meta.tag
#      ^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#                            ^ meta.redirection.shell - meta.tag - meta.string - string
#                             ^^ meta.redirection.shell meta.redirection.shell - meta.string
#                               ^^^^^^^ meta.redirection.shell meta.redirection.shell meta.string.glob.shell string.unquoted.shell
#   ^^ keyword.operator.assignment.redirection.shell
#     ^ - entity - keyword
#      ^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.heredoc.shell
#                            ^ - entity - keyword
#                             ^ keyword.operator.assignment.redirection.shell
#                               ^^^^^^^ - variable.function
hello
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
redirection_comes_next
#<- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#                     ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

cat <<     FARAWAY
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^^^^^ meta.redirection.shell - meta.string - meta.tag
#          ^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#                 ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^ keyword.operator.assignment.redirection.shell
#     ^^^^^ - entity - keyword
#          ^^^^^^^ entity.name.tag.heredoc.shell
#                 ^ - entity
foo
# <- meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
FARAWAY
#<- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#      ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

cat <<- INDENTED
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^^ meta.redirection.shell - meta.string - meta.tag
#       ^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#               ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^^ keyword.operator.assignment.redirection.shell
#      ^ - entity - keyword
#       ^^^^^^^^ entity.name.tag.heredoc.shell
#               ^ - entity
  say what now ${foo}
# ^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
#              ^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell meta.interpolation.parameter.shell - string
	INDENTED
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string
#^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#        ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

cat <<-  'indented_without_expansions'
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^^^ meta.redirection.shell - meta.string - meta.tag
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#                                     ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^^ keyword.operator.assignment.redirection.shell
#        ^ punctuation.definition.tag.begin.shell - entity
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.heredoc.shell
#                                    ^ punctuation.definition.tag.end.shell - entity
    ${foo}
#^^^^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell - meta.interpolation
#     ^^^ - variable.other
		indented_without_expansions
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string
#^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#                            ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

variable=$(cat <<SETVAR
This variable
runs over multiple lines.
SETVAR
# <- meta.string.glob.shell meta.interpolation.command.shell meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell
)
# <- meta.string.glob.shell meta.interpolation.command.shell punctuation.section.interpolation.end.shell

cat <<- "FOO"
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^^ meta.redirection.shell - meta.string - meta.tag
#       ^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#            ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^^ keyword.operator.assignment.redirection.shell
#       ^ punctuation.definition.tag.begin.shell - entity
#        ^^^ entity.name.tag.heredoc.shell
#           ^ punctuation.definition.tag.end.shell - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
		FOO
# ^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#    ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

cat <<- \FOO
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^^ meta.redirection.shell - meta.string - meta.tag
#       ^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#           ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^^ keyword.operator.assignment.redirection.shell
#       ^ punctuation.definition.tag.shell - entity
#        ^^^ entity.name.tag.heredoc.shell
#           ^ - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
    FOO
#^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
	  FOO
#^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
  	FOO
#^^^^^^^ meta.function-call.arguments.shell meta.string.heredoc.shell string.unquoted.heredoc.shell
		FOO
# ^^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#    ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

cat << "FOO"
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^ meta.redirection.shell - meta.string - meta.tag
#      ^^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#           ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^ keyword.operator.assignment.redirection.shell
#      ^ punctuation.definition.tag.begin.shell - entity
#       ^^^ entity.name.tag.heredoc.shell
#          ^ punctuation.definition.tag.end.shell - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
FOO
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#  ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

cat << \FOO
#^^^ - meta.redirection - meta.string - meta.tag
#   ^^^ meta.redirection.shell - meta.string - meta.tag
#      ^^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string - string
#          ^ meta.redirection.shell - meta.tag - meta.string - string
#   ^^ keyword.operator.assignment.redirection.shell
#      ^ punctuation.definition.tag.shell - entity
#       ^^^ entity.name.tag.heredoc.shell
#          ^ - entity
    no \"escape\'\$ and $expansion
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.shell meta.string.heredoc.shell - meta.interpolation
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.shell - constant - keyword - variable
FOO
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#  ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string

sed 's/^    //' << EOF >$dummy.c
#^^ meta.function-call.identifier.shell variable.function.shell
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell - string.unquoted.heredoc
#   ^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#              ^ - meta.redirection - meta.tag - meta.string
#               ^^ meta.redirection.shell - meta.tag - meta.string
#                  ^^^ meta.redirection.shell meta.tag.heredoc.begin.shell - meta.string
#                     ^ - meta.redirection.shell meta.tag - meta.string.heredoc
#                      ^^^^^^^^^ meta.redirection.shell meta.redirection.shell - meta.tag - meta.string.heredoc
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
# <- meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#^^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell - meta.string - string
#  ^ meta.function-call.arguments.shell meta.redirection.shell meta.tag.heredoc.end.shell - entity - meta.string - string


###############################################################################
# 3.6.7 Here Strings                                                          #
# https://www.gnu.org/software/bash/manual/bash.html#Here-Strings             #
###############################################################################

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
# 4.2 Bash Builtin Commands (alias)                                           #
# https://www.gnu.org/software/bash/manual/bash.html#index-alias              #
# https://www.gnu.org/software/bash/manual/bash.html#Aliases                  #
# alias [-p] [name[=value] …]                                                 #
###############################################################################

alias
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^ meta.declaration.alias.shell keyword.declaration.alias.shell
#    ^ - meta.declaration.alias - storage

alias foo=bar
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^ meta.declaration.alias.shell
#            ^ - meta.declaration.alias
#     ^^^ meta.command.shell entity.name.function.shell
#        ^ keyword.operator.assignment.shell
#         ^^^ meta.command.shell variable.function.shell

alias foo=bar -p 7za=qux
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.alias.shell
#                       ^ - meta.declaration.alias
#     ^^^ meta.command.shell entity.name.function.shell
#        ^ keyword.operator.assignment.shell
#         ^^^ meta.command.shell variable.function.shell
#             ^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^^^ meta.command.shell entity.name.function.shell
#                   ^ keyword.operator.assignment.shell
#                    ^^^ meta.command.shell variable.function.shell

alias -p foo=bar 7za=qux
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.alias.shell
#                       ^ - meta.declaration.alias
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^^ meta.command.shell entity.name.function.shell
#           ^ keyword.operator.assignment.shell
#            ^^^ meta.command.shell variable.function.shell
#                ^^^ meta.command.shell entity.name.function.shell
#                   ^ keyword.operator.assignment.shell
#                    ^^^ meta.command.shell variable.function.shell

alias -a -p -- foo=bar baz=qux
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.alias.shell
#                             ^ - meta.declaration.alias
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ keyword.operator.end-of-options.shell
#              ^^^ meta.command.shell entity.name.function.shell
#                 ^ keyword.operator.assignment.shell
#                  ^^^ meta.command.shell variable.function.shell
#                      ^^^ meta.command.shell entity.name.function.shell
#                         ^ keyword.operator.assignment.shell
#                          ^^^ meta.command.shell variable.function.shell

alias $foo=bar
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^ meta.declaration.alias.shell
#             ^ - meta.declaration.alias
#     ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#         ^ keyword.operator.assignment.shell
#          ^^^ meta.command.shell variable.function.shell

alias ..='cd ..'
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^^^ meta.declaration.alias.shell
#^^^^ keyword.declaration.alias.shell
#     ^^ meta.command.shell entity.name.function.shell
#       ^ keyword.operator.assignment.shell
#        ^ meta.quoted.shell punctuation.definition.quoted.begin.shell
#         ^^ meta.quoted.shell meta.function-call.identifier.shell meta.command.shell support.function.shell - string
#           ^ meta.quoted.shell meta.function-call.arguments.shell - string
#            ^^ meta.quoted.shell meta.function-call.arguments.shell meta.string.glob.shell string.unquoted.shell
#              ^ meta.quoted.shell punctuation.definition.quoted.end.shell

alias -p ..='cd ..'
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^^^^^^ meta.declaration.alias.shell
#^^^^ keyword.declaration.alias.shell
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.command.shell entity.name.function.shell
#          ^ keyword.operator.assignment.shell
#           ^ meta.quoted.shell punctuation.definition.quoted.begin.shell
#            ^^ meta.quoted.shell meta.function-call.identifier.shell meta.command.shell support.function.shell - string
#              ^ meta.quoted.shell meta.function-call.arguments.shell - string
#               ^^ meta.quoted.shell meta.function-call.arguments.shell meta.string.glob.shell string.unquoted.shell
#                 ^ meta.quoted.shell punctuation.definition.quoted.end.shell

alias -- -='cd -'
# <- meta.declaration.alias.shell keyword.declaration.alias.shell
#^^^^^^^^^^^^^^^^ meta.declaration.alias.shell
#^^^^ keyword.declaration.alias.shell
#     ^^ keyword.operator.end-of-options.shell
#        ^ meta.command.shell entity.name.function.shell
#         ^ keyword.operator.assignment.shell
#          ^ meta.quoted.shell punctuation.definition.quoted.begin.shell
#           ^^ meta.quoted.shell meta.function-call.identifier.shell meta.command.shell support.function.shell - string
#             ^ meta.quoted.shell meta.function-call.arguments.shell - string
#              ^ meta.quoted.shell meta.function-call.arguments.shell meta.string.glob.shell string.unquoted.shell
#               ^ meta.quoted.shell punctuation.definition.quoted.end.shell


###############################################################################
# 4.2 Bash Builtin Commands (builtin)                                         #
# https://www.gnu.org/software/bash/manual/bash.html#index-builtin            #
# builtin [shell-builtin [args]]                                              #
###############################################################################

builtin
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell

builtin -pV -v cmd -a val
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell
#       ^^^ meta.function-call.identifier.shell
#          ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#       ^^^ variable.function.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#              ^^^ meta.string.glob.shell string.unquoted.shell
#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
#                     ^^^ meta.string.glob.shell string.unquoted.shell


###############################################################################
# 4.2 Bash Builtin Commands (command)                                         #
# https://www.gnu.org/software/bash/manual/bash.html#index-command            #
# command [-pVv] command [arguments …]                                        #
###############################################################################

command
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell

command -pV -v cmd -a val
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell
#      ^^^^^^^^ meta.function-call.arguments.shell
#              ^^^ meta.function-call.identifier.shell meta.command.shell
#                 ^^^^^^^ meta.function-call.arguments.shell
#       ^^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#              ^^^ variable.function.shell
#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
#                     ^^^ meta.string.glob.shell string.unquoted.shell


###############################################################################
# 4.2 Bash Builtin Commands (declare)                                         #
# https://www.gnu.org/software/bash/manual/bash.html#index-declare            #
# declare [-aAfFgiIlnrtux] [-p] [name[=value] …]                              #
###############################################################################

declare             # comment
#<- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#      ^ - meta.declaration.variable
#                   ^^^^^^^^^^ comment.line.number-sign.shell

declare foo         # 'foo' is a variable name
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration
# <- keyword.declaration.variable.shell
#          ^ - variable.other.readwrite
#                  ^ - meta.declaration.variable

declare foo|       # '|' terminates statement
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration
# <- keyword.declaration.variable.shell
#          ^ keyword.operator

declare foo |      # '|' terminates statement
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration
# <- keyword.declaration.variable.shell
#           ^ keyword.operator

declare foo&       # '&' terminates statement
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration
# <- keyword.declaration.variable.shell
#          ^ keyword.operator

declare foo &      # '&' terminates statement
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration
# <- keyword.declaration.variable.shell
#           ^ keyword.operator

declare foo ;     # ';' terminates statement
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration
# <- keyword.declaration.variable.shell
#           ^ punctuation.terminator.statement.shell

declare foo; bar=baz # 2nd statement after ';'
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^^ - meta.declaration
# <- keyword.declaration.variable.shell
#^^^^^^ keyword.declaration.variable.shell
#       ^^^ variable.other.readwrite.shell
#          ^ punctuation.terminator.statement.shell
#            ^^^ variable.other.readwrite.shell
#               ^ keyword.operator.assignment.shell
#                ^^^ meta.string.glob.shell string.unquoted.shell
#                   ^ - meta.string - string - comment
#                    ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

declare foo==bar baz =buz  # assignment must immediately follow a variable
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                        ^ - meta.declaration
# <- keyword.declaration.variable.shell
#      ^ - variable
#       ^^^ variable.other.readwrite.shell
#          ^ keyword.operator.assignment.shell
#           ^^^^ meta.string.glob.shell string.unquoted.shell
#               ^ - variable
#                ^^^ variable.other.readwrite.shell
#                   ^ - variable
#                    ^^^^ invalid.illegal.unexpected-token.shell
#                        ^ - variable

declare foo=<input.txt
#^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.redirection
#       ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell - meta.redirection
#          ^ meta.declaration.variable.shell meta.assignment.shell - meta.redirection
#           ^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.redirection.shell
#                     ^ - meta.declaration
# <- keyword.declaration.variable.shell
#       ^^^ variable.other.readwrite.shell
#          ^ keyword.operator.assignment.shell
#           ^ keyword.operator.assignment.redirection.shell
#            ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell

# string value with pattern expansion
declare bar=\
foo?bar+2*baz/$buz # comment
# <- meta.declaration.variable.shell meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.string.glob.shell string.unquoted.shell
#             ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell - string
#                 ^ - meta.declaration
#                  ^^^^^^^^^^ comment.line.number-sign.shell

# simple arithmetic expression value
declare -i bar=\
foo?bar+2*baz/$buz # comment
# <- meta.declaration.variable.shell variable.other.readwrite.shell
#^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.arithmetic.shell
#                 ^ - meta.declaration - meta.assignment - meta.arithmetic
#^^ variable.other.readwrite.shell
#  ^ - variable
#   ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.arithmetic.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ keyword.operator.arithmetic.shell
#         ^^^ variable.other.readwrite.shell
#            ^ keyword.operator.arithmetic.shell
#             ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                  ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with string values
declare bar=\
(foo b*$r b-20 'b?r' "b*z" [100]=val [100] =val <input.txt) # comment
# <- meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell punctuation.section.sequence.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                          ^ - meta.declaration - meta.assignment - meta.sequence
#^^^ meta.string.glob.shell string.unquoted.shell
#   ^ - meta.string - string
#    ^^ meta.string.glob.shell string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^ - meta.string - string
#         ^^^^ meta.string.glob.shell string.unquoted.shell
#             ^ - meta.string - string
#              ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                   ^ - meta.string - string
#                    ^^^^^ meta.string.glob.shell string.quoted.double.shell
#                          ^^^^^ meta.item-access.shell
#                               ^ keyword.operator.assignment.shell
#                                ^^^ meta.string.glob.shell string.unquoted.shell
#                                    ^^^^^ meta.item-access.shell
#                                          ^^^^ meta.string.glob.shell string.unquoted.shell
#                                               ^ invalid.illegal.unexpected-token.shell - meta.redirection
#                                                ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.redirection
#                                                         ^ punctuation.section.sequence.end.shell
#                                                           ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with string values
declare -a bar=\
(foo b*$r b-20 'b?r' "b*z" [100]=val [100] =val <input.txt) # comment
# <- meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell punctuation.section.sequence.begin.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                          ^ - meta.declaration - meta.assignment - meta.sequence
#^^^ meta.string.glob.shell string.unquoted.shell
#   ^ - meta.string - string
#    ^^ meta.string.glob.shell string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^ - meta.string - string
#         ^^^^ meta.string.glob.shell string.unquoted.shell
#             ^ - meta.string - string
#              ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                   ^ - meta.string - string
#                    ^^^^^ meta.string.glob.shell string.quoted.double.shell
#                          ^^^^^ meta.item-access.shell
#                               ^ keyword.operator.assignment.shell
#                                ^^^ meta.string.glob.shell string.unquoted.shell
#                                    ^^^^^ meta.item-access.shell
#                                          ^^^^ meta.string.glob.shell string.unquoted.shell
#                                               ^ invalid.illegal.unexpected-token.shell - meta.redirection
#                                                ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.redirection
#                                                         ^ punctuation.section.sequence.end.shell
#                                                           ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with arithmetic values
declare -ai bar=(foo b*$r b-20 'b?r' "b*z" [100]=val [100] =val <input.txt) # comment
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#           ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#              ^ meta.declaration.variable.shell meta.assignment.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                          ^ - meta.declaration - meta.assignment - meta.sequence
#^^^^^^ keyword.declaration.variable.shell
#       ^^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^^ variable.other.readwrite.shell
#              ^ keyword.operator.assignment.shell
#               ^ punctuation.section.sequence.begin.shell
#                ^^^ variable.other.readwrite.shell
#                    ^ variable.other.readwrite.shell
#                     ^ keyword.operator.arithmetic.shell
#                      ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                         ^ variable.other.readwrite.shell
#                          ^ keyword.operator.arithmetic.shell
#                           ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                              ^ punctuation.definition.quoted.begin.shell
#                               ^ variable.other.readwrite.shell
#                                ^ keyword.operator.ternary.shell
#                                 ^ variable.other.readwrite.shell
#                                  ^ punctuation.definition.quoted.end.shell
#                                    ^ punctuation.definition.quoted.begin.shell
#                                     ^ variable.other.readwrite.shell
#                                      ^ keyword.operator.arithmetic.shell
#                                       ^ variable.other.readwrite.shell
#                                        ^ punctuation.definition.quoted.end.shell
#                                          ^^^^^ meta.item-access.shell
#                                               ^ keyword.operator.assignment.shell
#                                                ^^^ variable.other.readwrite.shell
#                                                    ^^^^^ meta.item-access.shell
#                                                          ^^^^ invalid.illegal.unexpected-token.shell
#                                                               ^^^^^^^^^^ invalid.illegal.unexpected-token.shell
#                                                                         ^ punctuation.section.sequence.end.shell
#                                                                           ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with arithmetic values
declare -ia bar=(foo b*$r b-20 'b?r' "b*z" [100]=val [100] =val <input.txt) # comment
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#           ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#              ^ meta.declaration.variable.shell meta.assignment.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                          ^ - meta.declaration - meta.assignment - meta.sequence
#^^^^^^ keyword.declaration.variable.shell
#       ^^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^^ variable.other.readwrite.shell
#              ^ keyword.operator.assignment.shell
#               ^ punctuation.section.sequence.begin.shell
#                ^^^ variable.other.readwrite.shell
#                    ^ variable.other.readwrite.shell
#                     ^ keyword.operator.arithmetic.shell
#                      ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                         ^ variable.other.readwrite.shell
#                          ^ keyword.operator.arithmetic.shell
#                           ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                              ^ punctuation.definition.quoted.begin.shell
#                               ^ variable.other.readwrite.shell
#                                ^ keyword.operator.ternary.shell
#                                 ^ variable.other.readwrite.shell
#                                  ^ punctuation.definition.quoted.end.shell
#                                    ^ punctuation.definition.quoted.begin.shell
#                                     ^ variable.other.readwrite.shell
#                                      ^ keyword.operator.arithmetic.shell
#                                       ^ variable.other.readwrite.shell
#                                        ^ punctuation.definition.quoted.end.shell
#                                          ^^^^^ meta.item-access.shell
#                                               ^ keyword.operator.assignment.shell
#                                                ^^^ variable.other.readwrite.shell
#                                                    ^^^^^ meta.item-access.shell
#                                                          ^^^^ invalid.illegal.unexpected-token.shell
#                                                               ^^^^^^^^^^ invalid.illegal.unexpected-token.shell
#                                                                         ^ punctuation.section.sequence.end.shell
#                                                                           ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with arithmetic values
declare -a -i bar=(foo b*$r b-20 'b?r' "b*z" [100]=val [100] =val <input.txt) # comment
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#             ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#                ^ meta.declaration.variable.shell meta.assignment.shell
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                            ^ - meta.declaration - meta.assignment - meta.sequence
#^^^^^^ keyword.declaration.variable.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^^^ variable.other.readwrite.shell
#                ^ keyword.operator.assignment.shell
#                 ^ punctuation.section.sequence.begin.shell
#                  ^^^ variable.other.readwrite.shell
#                      ^ variable.other.readwrite.shell
#                       ^ keyword.operator.arithmetic.shell
#                        ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.arithmetic.shell
#                             ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                ^ punctuation.definition.quoted.begin.shell
#                                 ^ variable.other.readwrite.shell
#                                  ^ keyword.operator.ternary.shell
#                                   ^ variable.other.readwrite.shell
#                                    ^ punctuation.definition.quoted.end.shell
#                                      ^ punctuation.definition.quoted.begin.shell
#                                       ^ variable.other.readwrite.shell
#                                        ^ keyword.operator.arithmetic.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ punctuation.definition.quoted.end.shell
#                                            ^^^^^ meta.item-access.shell
#                                                 ^ keyword.operator.assignment.shell
#                                                  ^^^ variable.other.readwrite.shell
#                                                      ^^^^^ meta.item-access.shell
#                                                            ^^^^ invalid.illegal.unexpected-token.shell
#                                                                 ^^^^^^^^^^ invalid.illegal.unexpected-token.shell
#                                                                           ^ punctuation.section.sequence.end.shell
#                                                                             ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with arithmetic values
declare -i -a bar=(foo b*$r b-20 'b?r' "b*z" [100]=val [100] =val <input.txt) # comment
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#             ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#                ^ meta.declaration.variable.shell meta.assignment.shell
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                            ^ - meta.declaration - meta.assignment - meta.sequence
#^^^^^^ keyword.declaration.variable.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^^^ variable.other.readwrite.shell
#                ^ keyword.operator.assignment.shell
#                 ^ punctuation.section.sequence.begin.shell
#                  ^^^ variable.other.readwrite.shell
#                      ^ variable.other.readwrite.shell
#                       ^ keyword.operator.arithmetic.shell
#                        ^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#                           ^ variable.other.readwrite.shell
#                            ^ keyword.operator.arithmetic.shell
#                             ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                ^ punctuation.definition.quoted.begin.shell
#                                 ^ variable.other.readwrite.shell
#                                  ^ keyword.operator.ternary.shell
#                                   ^ variable.other.readwrite.shell
#                                    ^ punctuation.definition.quoted.end.shell
#                                      ^ punctuation.definition.quoted.begin.shell
#                                       ^ variable.other.readwrite.shell
#                                        ^ keyword.operator.arithmetic.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ punctuation.definition.quoted.end.shell
#                                            ^^^^^ meta.item-access.shell
#                                                 ^ keyword.operator.assignment.shell
#                                                  ^^^ variable.other.readwrite.shell
#                                                      ^^^^^ meta.item-access.shell
#                                                            ^^^^ invalid.illegal.unexpected-token.shell
#                                                                 ^^^^^^^^^^ invalid.illegal.unexpected-token.shell
#                                                                           ^ punctuation.section.sequence.end.shell
#                                                                             ^^^^^^^^^^ comment.line.number-sign.shell

# associative array with implicit keys and string values
declare -A var=(key1 val key+2 1+2 key-3 3-foo key/4 "4 / val" key%5 val%-5)
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#          ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#             ^ meta.declaration.variable.shell meta.assignment.shell
#              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                           ^ - meta.declaration - meta.assignment - meta.sequence
#              ^ punctuation.section.sequence.begin.shell
#               ^^^^ meta.item-access.shell entity.name.key.shell
#                    ^^^ meta.string.glob.shell string.unquoted.shell
#                        ^^^^^ meta.item-access.shell entity.name.key.shell
#                              ^^^ meta.string.glob.shell string.unquoted.shell
#                                  ^^^^^ meta.item-access.shell entity.name.key.shell
#                                        ^^^^^ meta.string.glob.shell string.unquoted.shell
#                                              ^^^^^ meta.item-access.shell entity.name.key.shell
#                                                    ^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#                                                              ^^^^^ meta.item-access.shell entity.name.key.shell
#                                                                    ^^^^^^ meta.string.glob.shell string.unquoted.shell
#                                                                          ^ punctuation.section.sequence.end.shell

# associative array with implicit keys and arithmetic values
declare -Ai var=(key1 val key+2 1+2 key-3 3-foo key/4 "4 / val" key%5 val%-5)
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#           ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#              ^ meta.declaration.variable.shell meta.assignment.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                            ^ - meta.declaration - meta.assignment - meta.sequence
#                ^^^^ meta.item-access.shell
#                         ^^^^^ meta.item-access.shell
#                                   ^^^^^ meta.item-access.shell
#                                               ^^^^^ meta.item-access.shell
#                                                               ^^^^^ meta.item-access.shell
#               ^ punctuation.section.sequence.begin.shell
#                ^^^^ entity.name.key.shell
#                               ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                ^ keyword.operator.arithmetic.shell
#                                 ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                   ^^^^^ entity.name.key.shell
#                                         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                          ^ keyword.operator.arithmetic.shell
#                                           ^^^ variable.other.readwrite.shell
#                                               ^^^^^ entity.name.key.shell
#                                                     ^ punctuation.definition.quoted.begin.shell
#                                                      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                        ^ keyword.operator.arithmetic.shell
#                                                          ^^^ variable.other.readwrite.shell
#                                                             ^ punctuation.definition.quoted.end.shell
#                                                                     ^^^ variable.other.readwrite.shell
#                                                                        ^^ keyword.operator.arithmetic.shell
#                                                                          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                                           ^ punctuation.section.sequence.end.shell

# associative array with implicit keys and arithmetic values
declare -iA var=(key1 val key+2 1+2 key-3 3-foo key/4 "4 / val" key%5 val%-5)
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#           ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#              ^ meta.declaration.variable.shell meta.assignment.shell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                            ^ - meta.declaration - meta.assignment - meta.sequence
#                ^^^^ meta.item-access.shell
#                         ^^^^^ meta.item-access.shell
#                                   ^^^^^ meta.item-access.shell
#                                               ^^^^^ meta.item-access.shell
#                                                               ^^^^^ meta.item-access.shell
#               ^ punctuation.section.sequence.begin.shell
#                ^^^^ entity.name.key.shell
#                               ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                ^ keyword.operator.arithmetic.shell
#                                 ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                   ^^^^^ entity.name.key.shell
#                                         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                          ^ keyword.operator.arithmetic.shell
#                                           ^^^ variable.other.readwrite.shell
#                                               ^^^^^ entity.name.key.shell
#                                                     ^ punctuation.definition.quoted.begin.shell
#                                                      ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                        ^ keyword.operator.arithmetic.shell
#                                                          ^^^ variable.other.readwrite.shell
#                                                             ^ punctuation.definition.quoted.end.shell
#                                                                     ^^^ variable.other.readwrite.shell
#                                                                        ^^ keyword.operator.arithmetic.shell
#                                                                          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                                           ^ punctuation.section.sequence.end.shell

# associative array with implicit keys and arithmetic values
declare -A -i var=(key1 val key+2 1+2 key-3 3-foo key/4 "4 / val" key%5 val%-5)
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#             ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#                ^ meta.declaration.variable.shell meta.assignment.shell
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                              ^ - meta.declaration - meta.assignment - meta.sequence
#                  ^^^^ meta.item-access.shell
#                           ^^^^^ meta.item-access.shell
#                                     ^^^^^ meta.item-access.shell
#                                                 ^^^^^ meta.item-access.shell
#                                                                 ^^^^^ meta.item-access.shell
#                 ^ punctuation.section.sequence.begin.shell
#                  ^^^^ entity.name.key.shell
#                                 ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                  ^ keyword.operator.arithmetic.shell
#                                   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                     ^^^^^ entity.name.key.shell
#                                           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                            ^ keyword.operator.arithmetic.shell
#                                             ^^^ variable.other.readwrite.shell
#                                                 ^^^^^ entity.name.key.shell
#                                                       ^ punctuation.definition.quoted.begin.shell
#                                                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                          ^ keyword.operator.arithmetic.shell
#                                                            ^^^ variable.other.readwrite.shell
#                                                               ^ punctuation.definition.quoted.end.shell
#                                                                       ^^^ variable.other.readwrite.shell
#                                                                          ^^ keyword.operator.arithmetic.shell
#                                                                            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                                             ^ punctuation.section.sequence.end.shell

# associative array with implicit keys and arithmetic values
declare -i -A var=(key1 val key+2 1+2 key-3 3-foo key/4 "4 / val" key%5 val%-5)
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#             ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#                ^ meta.declaration.variable.shell meta.assignment.shell
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                                                                              ^ - meta.declaration - meta.assignment - meta.sequence
#                  ^^^^ meta.item-access.shell
#                           ^^^^^ meta.item-access.shell
#                                     ^^^^^ meta.item-access.shell
#                                                 ^^^^^ meta.item-access.shell
#                                                                 ^^^^^ meta.item-access.shell
#                 ^ punctuation.section.sequence.begin.shell
#                  ^^^^ entity.name.key.shell
#                                 ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                  ^ keyword.operator.arithmetic.shell
#                                   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                     ^^^^^ entity.name.key.shell
#                                           ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                            ^ keyword.operator.arithmetic.shell
#                                             ^^^ variable.other.readwrite.shell
#                                                 ^^^^^ entity.name.key.shell
#                                                       ^ punctuation.definition.quoted.begin.shell
#                                                        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                          ^ keyword.operator.arithmetic.shell
#                                                            ^^^ variable.other.readwrite.shell
#                                                               ^ punctuation.definition.quoted.end.shell
#                                                                       ^^^ variable.other.readwrite.shell
#                                                                          ^^ keyword.operator.arithmetic.shell
#                                                                            ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                                             ^ punctuation.section.sequence.end.shell

# indexed array with string values with explicit keys
# (implicitly turned into an associative array, if keys are strings)
declare -a owners=(
    # dogs
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell comment.line.number-sign.shell
    [susan]=labrador
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.item-access.shell
#          ^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell keyword.operator.assignment.shell - meta.mapping.key
#           ^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
    # cats
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell comment.line.number-sign.shell
    [terry]=tabby
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.item-access.shell
#          ^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell keyword.operator.assignment.shell - meta.mapping.key
#           ^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
)

# associative array with string values with explicit keys
declare -A owners=(
    # dogs
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell comment.line.number-sign.shell
    [susan]=labrador
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.item-access.shell
#          ^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell keyword.operator.assignment.shell - meta.mapping.key
#           ^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
    # cats
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell comment.line.number-sign.shell
    [terry]=tabby
#   ^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.item-access.shell
#          ^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell keyword.operator.assignment.shell - meta.mapping.key
#           ^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell meta.string.glob.shell string.unquoted.shell
)

declare -A illegals=( | & ; ( < > )
#                     ^ invalid.illegal.unexpected-token.shell
#                       ^ invalid.illegal.unexpected-token.shell
#                         ^ invalid.illegal.unexpected-token.shell
#                           ^ invalid.illegal.unexpected-token.shell
#                             ^ invalid.illegal.unexpected-token.shell
#                               ^ invalid.illegal.unexpected-token.shell

# associative array with explicit keys and arithmetic values
declare -iA var=(
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell - meta.assignment - meta.sequence
#           ^^^ meta.declaration.variable.shell meta.assignment.l-value.shell
#              ^ meta.declaration.variable.shell meta.assignment.shell
#               ^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
  [foo]=1+2
# ^^^^^ meta.item-access.shell
# ^ punctuation.section.item-access.begin.shell
#  ^^^ entity.name.key.shell
#     ^ punctuation.section.item-access.end.shell
#      ^ keyword.operator.assignment.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ keyword.operator.arithmetic.shell
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
  [bar]=1+5*foo
# ^^^^^ meta.item-access.shell
# ^ punctuation.section.item-access.begin.shell
#  ^^^ entity.name.key.shell
#     ^ punctuation.section.item-access.end.shell
#      ^ keyword.operator.assignment.shell
#       ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#        ^ keyword.operator.arithmetic.shell
#         ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#          ^ keyword.operator.arithmetic.shell
#           ^^^ variable.other.readwrite.shell

  [baz]==1/3
# ^^^^^ meta.item-access.shell
# ^ punctuation.section.item-access.begin.shell
#  ^^^ entity.name.key.shell
#     ^ punctuation.section.item-access.end.shell
#      ^ keyword.operator.assignment.shell
#       ^^^^ invalid.illegal.unexpected-token.shell

  [buz] =1/3
# ^^^^^ meta.item-access.shell
# ^ punctuation.section.item-access.begin.shell
#  ^^^ entity.name.key.shell
#     ^ punctuation.section.item-access.end.shell
#       ^^^^ invalid.illegal.unexpected-token.shell

  | & ; ( < >
# ^ invalid.illegal.unexpected-token.shell
#   ^ invalid.illegal.unexpected-token.shell
#     ^ invalid.illegal.unexpected-token.shell
#       ^ invalid.illegal.unexpected-token.shell
#         ^ invalid.illegal.unexpected-token.shell
#           ^ invalid.illegal.unexpected-token.shell
)
# <- meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell punctuation.section.sequence.end.shell
#^ - meta

# function declarations

declare -f =
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell
#^^^^^^ keyword.declaration.variable.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ entity.name.function.shell

declare -f ==cmd
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#^^^^^^ keyword.declaration.variable.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^^^^^ entity.name.function.shell

declare -f _init_completion > /dev/null && complete -F _upto upto
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                                      ^^^^ - meta.declaration - meta.function-call
#                                          ^^^^^^^^ meta.function-call.identifier.shell
#                                                  ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                                ^ - meta.function-call
#^^^^^^ keyword.declaration.variable.shell
#       ^^ variable.parameter.option.shell
#          ^^^^^^^^^^^^^^^^ meta.command.shell entity.name.function.shell
#                           ^ keyword.operator.assignment.redirection.shell
#                                       ^^ keyword.operator.logical.shell
#                                          ^^^^^^^^ variable.function.shell
#                                                   ^^ variable.parameter.option.shell

# declare called in command substitutions

printFunction "$variableString1" "$(declare -p variableArray)"
#             ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#              ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                              ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell - string
#                                                            ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                  ^ punctuation.section.interpolation.begin.shell
#                                   ^^^^^^^ keyword.declaration.variable.shell
#                                           ^^ variable.parameter.option
#                                              ^^^^^^^^^^^^^ variable.other.readwrite
#                                                           ^ punctuation.section.interpolation.end.shell

# <- - variable.other
printFunction "$variableString1" "`declare -p variableArray`"
#             ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#              ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell - string
#                              ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell - string
#                                                           ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                 ^ punctuation.section.interpolation.begin.shell
#                                  ^^^^^^^ keyword.declaration.variable.shell
#                                          ^^ variable.parameter.option
#                                             ^^^^^^^^^^^^^ variable.other.readwrite
#                                                          ^ punctuation.section.interpolation.end.shell


###############################################################################
# 4.2 Bash Builtin Commands (eval)                                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-eval               #
###############################################################################

eval
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell

eval ls .
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^ meta.function-call.arguments.shell
#    ^^ meta.string.glob.shell string.unquoted.shell
#       ^ meta.string.glob.shell string.unquoted.shell

eval "echo Helo ${name:a " + 2":$len}" !
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#               ^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                                    ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.end.shell
#                                      ^ meta.string.glob.shell string.unquoted.shell


###############################################################################
# 4.2 Bash Builtin Commands (exec)                                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-exec               #
###############################################################################

exec
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell

exec --
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell
#^^^ support.function.shell
#   ^^^ meta.function-call.arguments.shell
#    ^^ keyword.operator.end-of-options.shell

exec 3<&-
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell
#   ^^^^^ meta.function-call.arguments.shell
#^^^ support.function.shell
#    ^ constant.numeric.value.shell
#     ^^ keyword.operator.assignment.redirection.shell
#       ^ variable.language.stdio.shell

exec -- foo bar
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell
#   ^^^ meta.function-call.arguments.shell
#       ^^^ meta.function-call.identifier.shell
#          ^^^^ meta.function-call.arguments.shell
#^^^ support.function.shell
#    ^^ keyword.operator.end-of-options.shell
#       ^^^ variable.function.shell

exec -c -l -a name git status
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell
#   ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                  ^^^ meta.function-call.identifier.shell
#                     ^^^^^^^ meta.function-call.arguments.shell
# <- support.function.shell
#^^^ support.function.shell
#    ^^ variable.parameter.option.shell
#       ^^ variable.parameter.option.shell
#          ^^ variable.parameter.option.shell
#             ^^^^ meta.string.glob.shell string.unquoted.shell
#                  ^^^ variable.function.shell

exec -la name -i --bar -- foo bar
#^^^ meta.function-call.identifier.shell
#   ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                        ^ - meta.function-call
#                         ^^^ meta.function-call.identifier.shell
#                            ^^^^ meta.function-call.arguments.shell
#^^^ support.function.shell
#    ^^^ variable.parameter.option.shell
#        ^^^^ string.unquoted.shell
#             ^^ meta.parameter.option.shell variable.parameter.option.shell
#                ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                      ^^ keyword.operator.end-of-options.shell
#                         ^^^ variable.function.shell

exec -al name
#^^^ meta.function-call.identifier.shell
#   ^^^^^ meta.function-call.arguments.shell
#        ^^^^ meta.function-call.identifier.shell
#^^^ support.function.shell
#    ^^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^^^ variable.function.shell

exec git diff-index --check --cached $against --
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell
#   ^ meta.function-call.arguments.shell
#    ^^^ meta.function-call.identifier.shell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
# <- support.function.shell
#^^^ support.function.shell
#    ^^^ variable.function.shell
#                   ^^^^^^^ variable.parameter.option.shell
#                           ^^^^^^^^ variable.parameter.option.shell
#                                             ^^ keyword.operator.end-of-options.shell

exec "$cmd" \
#^^^ meta.function-call.identifier.shell
#   ^ meta.function-call.arguments.shell
#    ^^^^^^ meta.function-call.identifier.shell
#          ^^^ meta.function-call.arguments.shell
#           ^ punctuation.separator.continuation.line.shell
#            ^ - punctuation

exec "$cmd" \
  $opts \
#^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^ punctuation.separator.continuation.line.shell
#        ^ - punctuation

exec "$cmd" \
  $opts \
  --cmd-flag
#^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell

exec \
  -la name \
#^^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^ meta.parameter.option.shell variable.parameter.option.shell
#     ^^^^ meta.string.glob.shell string.unquoted.shell
#          ^ punctuation.separator.continuation.line.shell
#           ^ - punctuation

exec \
  -la name \
  "$cmd" \
#^ meta.function-call.arguments.shell
# ^^^^^^ meta.function-call.identifier.shell
#       ^^^ meta.function-call.arguments.shell
#        ^ punctuation.separator.continuation.line.shell
#         ^ - punctuation

exec \
  -la name \
  "$cmd" \
  $opts \
#^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#       ^ punctuation.separator.continuation.line.shell
#        ^ - punctuation

exec \
  -la name \
  "$cmd" \
  $opts \
  --cmd-flag
#^^^^^^^^^^^ meta.function-call.arguments.shell
# ^^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell


###############################################################################
# 4.2 Bash Builtin Commands (export)                                          #
# https://www.gnu.org/software/bash/manual/bash.html#index-export             #
###############################################################################

export
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^ - meta.function-call

export foo          # 'foo' is a variable name
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^ meta.function-call.arguments.shell
#         ^ - meta.function-call
#      ^^^ variable.other.readwrite.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell
export -n foo        # remove export property
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^ meta.function-call.arguments.shell
#            ^ - meta.function-call
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^^^ variable.other.readwrite.shell
#                    ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

export foo bar      # 'foo' and 'bar' are variable names
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^ meta.function-call.arguments.shell
#             ^ - meta.function-call
#      ^^^ variable.other.readwrite.shell
#         ^ - variable
#          ^^^ variable.other.readwrite.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

export foo='bar'    # 'foo' is a variable name
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^^ meta.function-call.arguments.shell
#               ^ - meta.function-call
#      ^^^ variable.other.readwrite.shell
#         ^ keyword.operator.assignment.shell
#          ^^^^^ meta.string.glob.shell string.quoted.single.shell
#          ^ punctuation.definition.string.begin.shell
#              ^ punctuation.definition.string.end.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

export PGPASSWORD=$(cat "$DOKKU_ROOT/.postgresql/pwd_$APP")
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.string - meta.interpolation
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.string.glob.shell meta.interpolation.command.shell
#      ^^^^^^^^^^ variable.other.readwrite.shell
#                ^ keyword.operator.assignment.shell
#                 ^ punctuation.definition.variable.shell
#                  ^ punctuation.section.interpolation.begin.shell
#                   ^^^ variable.function.shell
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.command.shell meta.string.glob.shell

export -f foo
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^ meta.function-call.arguments.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^^^ meta.command.shell entity.name.function.shell

export -f =
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^ meta.function-call.arguments.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^ meta.command.shell entity.name.function.shell

export -f ==cmd
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^ meta.function-call.arguments.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^^^^^ meta.command.shell entity.name.function.shell

export -fn ==cmd
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^^ meta.function-call.arguments.shell
#      ^^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^^^^^ meta.command.shell entity.name.function.shell

export -p
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^ meta.function-call.arguments.shell
#      ^^ meta.parameter.option.shell variable.parameter.option.shell

export PATH="$PATH:$HOME/.local/bin"
# ^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
#      ^^^^ variable.language.builtin.shell
#          ^ keyword.operator.assignment
#           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string
#           ^ string.quoted.double punctuation.definition.string.begin
#            ^^^^^ meta.interpolation.parameter variable.language.builtin.shell
#            ^ punctuation.definition.variable
#                 ^ string.quoted.double punctuation.separator.sequence
#                  ^^^^^ meta.interpolation.parameter variable.language.builtin.shell
#                  ^ punctuation.definition.variable
#                       ^^^^^^^^^^^^ string.quoted.double
#                                  ^ punctuation.definition.string.end

# tilde expansion in unquoted strings
export PATH=$PATH:~/.local/bin
# ^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#      ^^^^ variable.language.builtin.shell
#          ^ keyword.operator.assignment
#           ^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#           ^^^^^ meta.interpolation.parameter.shell variable.language.builtin.shell
#                 ^ meta.interpolation.tilde.shell variable.language.tilde.shell

# no tilde expansion in quoted strings
export PATH="$PATH:~/.local/bin"
# ^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#      ^^^^ variable.language.builtin.shell
#          ^ keyword.operator.assignment.shell
#           ^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell
#           ^ punctuation.definition.string.begin.shell
#            ^^^^^ meta.interpolation.parameter.shell variable.language.builtin.shell
#                 ^ punctuation.separator.sequence.shell
#                  ^ - variable
#                              ^ punctuation.definition.string.end.shell

export SOMETHING='/etc/test:/var/test:../foo:./foo'
# ^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#      ^^^^^^^^^ variable.other.readwrite.shell
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                ^ punctuation.definition.string.begin.shell
#                          ^ punctuation.separator.sequence.shell
#                                    ^ punctuation.separator.sequence.shell
#                                           ^ punctuation.separator.sequence.shell
#                                                 ^ punctuation.definition.string.end.shell

export SOMETHING=/etc/test:/var/test
# ^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#      ^^^^^^^^^ variable.other.readwrite.shell
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                         ^ punctuation.separator.sequence

msg="Count: ${count}"
#         ^ meta.string string.quoted.double - punctuation.separator

url="https://sublimetext.com/"
#         ^ meta.string string.quoted.double - punctuation.separator


###############################################################################
# 4.2 Bash Builtin Commands (let)                                             #
# https://www.gnu.org/software/bash/manual/bash.html#index-let                #
# let expression [expression …]                                               #
###############################################################################

let
# <- meta.function-call.identifier.shell support.function.shell
#^^ meta.function-call.identifier.shell support.function.shell
#  ^ - meta.arithmetic
let;
#^^ support.function.shell
let&
#^^ support.function.shell
let|
#^^ support.function.shell
let>/dev/null
#^^ support.function.shell
let -
#^^ support.function.shell
let()
#^^^^ - storage - keyword.declaration
let[]
#^^^^ - storage - keyword.declaration
let{}
#^^^^ - storage - keyword.declaration
let-
#^^^ - storage - keyword.declaration
-let
#^^^ - storage - keyword.declaration
let+
#^^^ - storage - keyword.declaration
let$
#^^^ - storage - keyword.declaration
let$var
#^^^^^^ - storage - keyword.declaration
let=
#^^^ - storage - keyword.declaration
let-=
#^^^^ - storage - keyword.declaration
let+=
#^^^^ - storage - keyword.declaration

let expr 'expr' "expr"
# <- meta.function-call.identifier.shell support.function.shell
#^^ meta.function-call.identifier.shell
#  ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#^^ support.function.shell
#   ^^^^ variable.other.readwrite.shell
#        ^ punctuation.definition.quoted.begin.shell
#         ^^^^ variable.other.readwrite.shell
#             ^ punctuation.definition.quoted.end.shell
#               ^ punctuation.definition.quoted.begin.shell
#                ^^^^ variable.other.readwrite.shell
#                    ^ punctuation.definition.quoted.end.shell

let 5 \
    + 5
# <- meta.function-call.arguments.shell meta.arithmetic.shell
#^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#      ^ - meta.arithmetic
#   ^ keyword.operator.arithmetic.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell

let 5+5 # comment
#^^ meta.function-call.identifier.shell
#  ^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#      ^ - meta.arithmetic
#^^ support.function.shell
#   ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#    ^ keyword.operator.arithmetic.shell
#     ^ meta.number.integer.decimal.shell constant.numeric.value.shell

let var[10]=5*(20+$idx)
# <- meta.function-call.identifier.shell support.function.shell
#^^ meta.function-call.identifier.shell
#  ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#   ^^^ variable.other.readwrite.shell
#      ^^^^ meta.item-access.shell
#      ^ punctuation.section.item-access.begin.shell
#       ^^ constant.numeric.value.shell
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
# <- meta.function-call.identifier.shell support.function.shell
#^^ meta.function-call.identifier.shell
#  ^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#            ^ - meta.function-call - meta.arithmetic
#^^ support.function.shell
#   ^ punctuation.definition.quoted.begin.shell
#    ^^^ variable.other.readwrite.shell
#       ^ keyword.operator.assignment.shell
#        ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#         ^ keyword.operator.arithmetic.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#           ^ punctuation.definition.quoted.end.shell
#            ^ punctuation.terminator.statement.shell
#              ^^ keyword.control.conditional.if.shell
#                 ^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
#                                  ^ punctuation.terminator.statement.shell
#                                    ^^^^ keyword.control.conditional.then.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ keyword.operator.assignment.shell
#                                           ^^^^^ string.quoted.double.shell
#                                                ^ punctuation.terminator.statement.shell
#                                                  ^^ keyword.control.conditional.endif.shell

let test -z $2 && { }
#^^ meta.function-call.identifier.shell support.function.shell
#  ^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#             ^^^^ - meta.arithmetic - meta.compound
#                 ^^^ meta.compound.command.shell
#^^ support.function.shell
#   ^^^^ variable.other.readwrite.shell
#        ^ keyword.operator.arithmetic.shell
#         ^ variable.other.readwrite.shell
#           ^^ variable.language.positional.shell
#              ^^ keyword.operator.logical.shell
#                 ^ punctuation.section.compound.begin.shell
#                   ^ punctuation.section.compound.end.shell

let $var == test -z $5 && cmd
#^^ meta.function-call.identifier.shell support.function.shell
#  ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#                     ^^^^^^^^ - meta.arithmetic
#   ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^^ keyword.operator.comparison.shell
#           ^^^^ variable.other.readwrite.shell
#                ^ keyword.operator.arithmetic.shell
#                 ^ variable.other.readwrite.shell
#                   ^^ variable.language.positional.shell
#                      ^^ keyword.operator.logical.shell
#                         ^^^ variable.function.shell

let 'test -z $2 && { }'
#^^ meta.function-call.identifier.shell support.function.shell
#  ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.arithmetic.shell
#   ^ punctuation.definition.quoted.begin.shell
#    ^^^^ variable.other.readwrite.shell
#         ^ keyword.operator.arithmetic.shell
#          ^ variable.other.readwrite.shell
#            ^^ variable.language.positional.shell
#               ^^ keyword.operator.logical.shell
#                  ^ invalid.illegal.unexpected-token.shell
#                    ^ invalid.illegal.unexpected-token.shell
#                     ^ punctuation.definition.quoted.end.shell


###############################################################################
# 4.2 Bash Builtin Commands (local)                                           #
# https://www.gnu.org/software/bash/manual/bash.html#index-local              #
# local [option] name[=value] …                                               #
###############################################################################

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
#^^^^^^ - storage - keyword.declaration
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
#^^^^^^^^^^^^ meta.declaration.variable.shell
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.variable
#^^^^ keyword.declaration.variable.shell
#    ^ - variable
#     ^^^ variable.other.readwrite.shell
#        ^ - variable
#         ^^^ variable.other.readwrite.shell
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

local foo bar='baz' # 'foo' and 'bar' are variable names
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#^^^^ keyword.declaration.variable.shell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.variable
#    ^ - variable
#     ^^^ variable.other.readwrite.shell
#        ^ - variable
#         ^^^ variable.other.readwrite.shell
#            ^ keyword.operator.assignment.shell
#             ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                  ^ - comment - string
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

local foo+=10 bar-=true
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#^^^^ keyword.declaration.variable.shell
#     ^^^ variable.other.readwrite.shell
#        ^^ keyword.operator.assignment.shell
#          ^^ meta.string.glob.shell string.unquoted.shell
#             ^^^ variable.other.readwrite.shell
#                ^^ keyword.operator.assignment.shell
#                  ^^^^ constant.language.boolean.true.shell

local pid="$(cat "$PIDFILE" 2>/dev/null)"
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#^^^^ meta.declaration.variable.shell keyword.declaration.variable.shell
#     ^^^ variable.other.readwrite.shell
#        ^ keyword.operator.assignment.shell
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell

local -fn foo
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^ meta.declaration.variable.shell
#^^^^ keyword.declaration.variable.shell
#     ^^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^^^ meta.command.shell entity.name.function.shell

f() {
    local -a "$@"
    #^^^^^^^^^^^^ meta.declaration.variable.shell
    # <- keyword.declaration.variable.shell
    #^^^^ keyword.declaration.variable.shell
    #     ^^ meta.parameter.option.shell variable.parameter.option.shell
    #        ^ variable.other.readwrite.shell punctuation.definition.quoted.begin.shell
    #         ^^ meta.interpolation.parameter.shell variable.language.special.shell
    #           ^ variable.other.readwrite.shell punctuation.definition.quoted.end.shell
    local x
    # <- keyword.declaration.variable.shell
    #^^^^ keyword.declaration.variable.shell
    #     ^ variable.other.readwrite.shell

    for x; do
        case $x in
            $1)
                local "$x"'+=(1)' ;;&
                # <- keyword.declaration.variable.shell
                #                 ^^^ punctuation.terminator.clause.shell
            $2)
                local "$x"'+=(2)' ;&
                # <- keyword.declaration.variable.shell
                #                 ^^ punctuation.terminator.clause.shell
            $3)
                local "$x"'+=(3)' ;;
                # <- keyword.declaration.variable.shell
                #                 ^^ punctuation.terminator.clause.shell
            $1|$2)
                local "$x"'+=(4)'
                # <- keyword.declaration.variable.shell
        esac
        # <- keyword.control.conditional.endcase.shell

        IFS=, local -a "$x"'=("${x}: ${'"$x"'[*]}")'
        # ^ variable.language.builtin.shell
        #  ^ keyword.operator.assignment.shell
        #   ^ meta.string.glob.shell string.unquoted.shell
        #     ^ keyword.declaration.variable.shell
    done
    # <- keyword.control.loop.end.shell
}
# <- meta.function.body.shell meta.block.shell punctuation.section.block.end.shell


###############################################################################
# 4.2 Bash Builtin Commands (mapfile)                                         #
# https://www.gnu.org/software/bash/manual/bash.html#index-mapfile            #
# mapfile [-d delim] [-n count] [-O origin] [-s count]                        #
#    [-t] [-u fd] [-C callback] [-c quantum] [array]                          #
###############################################################################

mapfile
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^ - meta.function-call

mapfile array
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^ meta.function-call.arguments.shell
#       ^^^^^ variable.other.readwrite.shell
#            ^ - meta.function-call

mapfile -C ; result=10
#      ^^^ meta.function-call.arguments.shell
#         ^^^^^^^^^^^^^ - meta.function-call
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ punctuation.terminator.statement.shell
#            ^^^^^^ variable.other.readwrite.shell
#                  ^ keyword.operator.assignment.shell
#                   ^^ string.unquoted.shell

mapfile -C "~/.bin/app -p $val arg" array
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^ meta.function-call.arguments.shell - meta.string
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ meta.function-call.arguments.shell meta.quoted.shell punctuation.definition.quoted.begin.shell
#           ^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.identifier.shell
#                     ^^^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.arguments.shell
#                                 ^ meta.function-call.arguments.shell meta.quoted.shell punctuation.definition.quoted.end.shell
#                                  ^ meta.function-call.arguments.shell - meta.quoted - variable
#                                   ^^^^^ meta.function-call.arguments.shell variable.other.readwrite.shell
#                                        ^ - meta.function-call

mapfile -d ";" -n 10 -O $origin -s 5 -t -u 20 -C callback -c 10 array
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                                    ^ - meta.function-call
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^^^ meta.string.glob.shell string.quoted.double.shell
#              ^^ meta.parameter.option.shell variable.parameter.option.shell
#                 ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                    ^^ meta.parameter.option.shell variable.parameter.option.shell
#                       ^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                               ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                    ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                       ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                          ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                             ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                                ^^^^^^^^ meta.command.shell variable.function.shell
#                                                         ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                                            ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                               ^^^^^ variable.other.readwrite.shell


###############################################################################
# 4.2 Bash Builtin Commands (read)                                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-read               #
# read [-ers] [-a aname] [-d delim] [-i text] [-n nchars]                     #
#     [-N nchars] [-p prompt] [-t timeout] [-u fd] [name …]                   #
###############################################################################

read
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ - meta.function-call

read data
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^ meta.function-call.arguments.shell
#    ^^^^ variable.other.readwrite.shell
#        ^ - meta.function-call

read -rn 1 -nr 1
#^^^ meta.function-call.identifier.shell
#   ^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^ variable.parameter.option.shell
#        ^ constant.numeric.value.shell
#          ^^^ variable.parameter.option.shell
#              ^ invalid.illegal.unexpected-token.shell

read -d '' -sn 1 -t1 -- -t1 10 data
#^^^ meta.function-call.identifier.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#   ^ - meta.parameter
#    ^^ meta.parameter.option.shell
#      ^^^^ - meta.parameter
#          ^^^ meta.parameter.option.shell
#             ^^^ - meta.parameter
#                ^^^ meta.parameter.option.shell
#                   ^^^^^^^^^^ - meta.parameter
#^^^ support.function.shell
#    ^ variable.parameter.option.shell punctuation.definition.parameter.shell
#     ^ variable.parameter.option.shell - punctuation
#       ^^ string.quoted.single.shell
#          ^^^ variable.parameter.option.shell
#              ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                ^^^ variable.parameter.option.shell
#                    ^^ keyword.operator.end-of-options.shell
#                       ^^^ invalid.illegal.unexpected-token.shell
#                           ^^ invalid.illegal.unexpected-token.shell
#                              ^^^^ variable.other.readwrite.shell

read -ers -a aname -d ";" -i text -n 1 -N 2 -p prompt -t 10 -u 103 data
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^ variable.parameter.option.shell
#         ^^ variable.parameter.option.shell
#            ^^^^^ variable.other.readwrite.shell
#                  ^^ variable.parameter.option.shell
#                     ^^^ string.quoted.double.shell
#                         ^^ variable.parameter.option.shell
#                            ^^^^ string.unquoted.shell
#                                 ^^ variable.parameter.option.shell
#                                    ^ constant.numeric.value.shell
#                                      ^^ variable.parameter.option.shell
#                                         ^ constant.numeric.value.shell
#                                           ^^ variable.parameter.option.shell
#                                              ^^^^^^ string.unquoted.shell
#                                                     ^^ variable.parameter.option.shell
#                                                        ^^ constant.numeric.value.shell
#                                                           ^^ variable.parameter.option.shell
#                                                              ^^^ constant.numeric.value.shell
#                                                                  ^^^^ variable.other.readwrite.shell

###############################################################################
# 4.2 Bash Builtin Commands (readarray)                                       #
# https://www.gnu.org/software/bash/manual/bash.html#index-readarray          #
# readarray [-d delim] [-n count] [-O origin] [-s count]                      #
#     [-t] [-u fd] [-C callback] [-c quantum] [array]                         #
###############################################################################

readarray
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^^ meta.function-call.identifier.shell support.function.shell
#        ^ - meta.function-call

readarray array
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^^ meta.function-call.identifier.shell support.function.shell
#        ^^^^^^ meta.function-call.arguments.shell
#         ^^^^^ variable.other.readwrite.shell
#              ^ - meta.function-call

readarray -C ; result=10
#        ^^^ meta.function-call.arguments.shell
#           ^^^^^^^^^^^^^ - meta.function-call
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#            ^ punctuation.terminator.statement.shell
#              ^^^^^^ variable.other.readwrite.shell
#                    ^ keyword.operator.assignment.shell
#                     ^^ string.unquoted.shell

readarray -C "~/.bin/app -p $val arg" array
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^^ meta.function-call.identifier.shell support.function.shell
#        ^^^^ meta.function-call.arguments.shell - meta.string
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#            ^ meta.function-call.arguments.shell meta.quoted.shell punctuation.definition.quoted.begin.shell
#             ^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.identifier.shell
#                       ^^^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.arguments.shell
#                                   ^ meta.function-call.arguments.shell meta.quoted.shell punctuation.definition.quoted.end.shell
#                                    ^ meta.function-call.arguments.shell - meta.quoted - variable
#                                     ^^^^^ meta.function-call.arguments.shell variable.other.readwrite.shell
#                                          ^ - meta.function-call

readarray -d ";" -n 10 -O $origin -s 5 -t -u 20 -C callback -c 10 array
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^^^ meta.function-call.identifier.shell support.function.shell
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                                      ^ - meta.function-call
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#            ^^^ meta.string.glob.shell string.quoted.double.shell
#                ^^ meta.parameter.option.shell variable.parameter.option.shell
#                   ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                      ^^ meta.parameter.option.shell variable.parameter.option.shell
#                         ^^^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                    ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                      ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                         ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                            ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                               ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                                  ^^^^^^^^ meta.command.shell variable.function.shell
#                                                           ^^ meta.parameter.option.shell variable.parameter.option.shell
#                                                              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell
#                                                                 ^^^^^ variable.other.readwrite.shell


###############################################################################
# 4.2 Bash Builtin Commands (readonly)                                        #
# https://www.gnu.org/software/bash/manual/bash.html#index-readonly           #
# readonly [-aAf] [-p] [name[=value]] …                                       #
###############################################################################

readonly foo        # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^ meta.declaration.variable.shell
#           ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^^ variable.other.readwrite
#           ^ - variable

# indexed array with string values
readonly bar=\
(foo b*$r b-20 'b?r' "b*z" [100]=val <input.txt) # comment
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                                               ^ - meta.declaration
# <- punctuation.section.sequence.begin.shell
#^^^ meta.string.glob.shell string.unquoted.shell
#   ^ - meta.string - string
#    ^^ meta.string.glob.shell string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^ - meta.string - string
#         ^^^^ meta.string.glob.shell string.unquoted.shell
#             ^ - meta.string - string
#              ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                   ^ - meta.string - string
#                    ^^^^^ meta.string.glob.shell string.quoted.double.shell
#                          ^^^^^ meta.item-access.shell
#                               ^ keyword.operator.assignment.shell
#                                ^^^ meta.string.glob.shell string.unquoted.shell
#                                    ^ invalid.illegal.unexpected-token.shell - meta.redirection
#                                     ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.redirection
#                                              ^ punctuation.section.sequence.end.shell
#                                                ^^^^^^^^^^ comment.line.number-sign.shell

# indexed array with string values
readonly -a bar=\
(foo b*$r b-20 'b?r' "b*z" [100]=val <input.txt) # comment
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                                               ^ - meta.declaration
# <- punctuation.section.sequence.begin.shell
#^^^ meta.string.glob.shell string.unquoted.shell
#   ^ - meta.string - string
#    ^^ meta.string.glob.shell string.unquoted.shell
#     ^ constant.other.wildcard.asterisk.shell
#      ^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^ - meta.string - string
#         ^^^^ meta.string.glob.shell string.unquoted.shell
#             ^ - meta.string - string
#              ^^^^^ meta.string.glob.shell string.quoted.single.shell
#                   ^ - meta.string - string
#                    ^^^^^ meta.string.glob.shell string.quoted.double.shell
#                          ^^^^^ meta.item-access.shell
#                               ^ keyword.operator.assignment.shell
#                                ^^^ meta.string.glob.shell string.unquoted.shell
#                                    ^ invalid.illegal.unexpected-token.shell - meta.redirection
#                                     ^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.redirection
#                                              ^ punctuation.section.sequence.end.shell
#                                                ^^^^^^^^^^ comment.line.number-sign.shell

# associative array with implicit keys and string values
readonly -A var=(key1 1+2 key2 4-foo key3 val%10)
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^ meta.declaration.variable.shell - meta.sequence
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell meta.assignment.r-value.shell meta.sequence.list.shell
#                ^^^^ meta.item-access.shell entity.name.key.shell
#                         ^^^^ meta.item-access.shell entity.name.key.shell
#                                    ^^^^ meta.item-access.shell entity.name.key.shell
#               ^ punctuation.section.sequence.begin.shell
#                ^^^^ entity.name.key.shell
#                     ^^^ meta.string.glob.shell string.unquoted.shell
#                         ^^^^ entity.name.key.shell
#                              ^^^^^ meta.string.glob.shell string.unquoted.shell
#                                    ^^^^ entity.name.key.shell
#                                         ^^^ meta.string.glob.shell string.unquoted.shell
#                                            ^^^ meta.string.glob.shell meta.interpolation.job.shell variable.language.job.shell
#                                               ^ punctuation.section.sequence.end.shell

readonly -A -f foo   # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                 ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ - variable
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^ - variable
#              ^^^ meta.command.shell entity.name.function.shell
#                 ^ - variable

readonly -Af foo     # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#               ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^ - variable
#            ^^^ meta.command.shell entity.name.function.shell
#               ^ - variable

readonly -f -A foo   # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                 ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ - variable
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^ - variable
#              ^^^ meta.command.shell entity.name.function.shell
#                 ^ - variable

readonly -fA foo     # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#               ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^ - variable
#            ^^^ meta.command.shell entity.name.function.shell
#               ^ - variable

readonly -f foo      # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^ meta.declaration.variable.shell
#              ^ - meta.declaration.variable
#^^^^^^^ keyword.declaration.variable.shell
#       ^ - storage - variable
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#          ^ - variable
#           ^^^ meta.command.shell entity.name.function.shell
#              ^ - variable

foo=`readonly x=5`
# <- variable.other.readwrite
#   ^ meta.interpolation.command.shell punctuation.section.interpolation.begin.shell
#    ^^^^^^^^ meta.interpolation.command.shell keyword.declaration.variable.shell
#             ^ meta.interpolation.command.shell variable.other.readwrite.shell
#              ^ meta.interpolation.command.shell keyword.operator.assignment.shell
#               ^ meta.interpolation.command.shell meta.string.glob.shell string.unquoted.shell
#                ^ meta.interpolation.command.shell punctuation.section.interpolation.end.shell


###############################################################################
# 4.2 Bash Builtin Commands (typeset)                                         #
# https://www.gnu.org/software/bash/manual/bash.html#index-typeset            #
# typeset [-afFgrxilnrtux] [-p] [name[=value] …]                              #
###############################################################################

typeset foo         # 'foo' is a variable name
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^ meta.declaration.variable.shell
#          ^ - meta.declaration.variable
#^^^^^^ keyword.declaration.variable.shell
#      ^ - storage - variable
#       ^^^ variable.other.readwrite
#          ^ - variable
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

typeset -f _init_completion > /dev/null && complete -F _upto upto
# <- meta.declaration.variable.shell keyword.declaration.variable.shell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.variable.shell
#                                      ^^^^ - meta.declaration - meta.function-call
#                                          ^^^^^^^^ meta.function-call.identifier.shell
#                                                  ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                                ^ - meta.function-call
#^^^^^^ keyword.declaration.variable.shell
#       ^^ variable.parameter.option.shell
#          ^^^^^^^^^^^^^^^^ meta.command.shell entity.name.function.shell
#                           ^ keyword.operator.assignment.redirection.shell
#                                       ^^ keyword.operator.logical.shell
#                                          ^^^^^^^^ variable.function.shell
#                                                   ^^ variable.parameter.option.shell


###############################################################################
# 4.2 Bash Builtin Commands (test)                                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-test               #
# test expr                                                                   #
###############################################################################

test
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ - meta.function-call
test;
#^^^ support.function.shell
test&
#^^^ support.function.shell
test|
#^^^ support.function.shell
test>/dev/null
#^^^ support.function.shell
test -
#^^^ support.function.shell
test()
#^^^^^ - support.function
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

test $var != 0
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^ meta.function-call.arguments.shell - meta.string.regexp
#             ^ - meta.function-call
#         ^^ keyword.operator.comparison.shell
#            ^ constant.numeric.value.shell

test $var == true
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.string.regexp
#         ^^ keyword.operator.comparison.shell
#            ^^^^ constant.language.boolean.true.shell

test str == "str"
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^ meta.string.glob.shell string.unquoted.shell
#        ^^ keyword.operator.comparison.shell
#           ^^^^^ meta.string.glob.shell string.quoted.double.shell

test str != "str"
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^ meta.string.glob.shell string.unquoted.shell
#        ^^ keyword.operator.comparison.shell
#           ^^^^^ meta.string.glob.shell string.quoted.double.shell

test str < 'str'
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^ meta.function-call.arguments.shell
#               ^ - meta.function-call
#    ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ keyword.operator.comparison.shell
#          ^^^^^ meta.string.glob.shell string.quoted.single.shell

test str > str
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^ meta.function-call.arguments.shell
#             ^ - meta.function-call
#    ^^^ meta.string.glob.shell string.unquoted.shell
#        ^ keyword.operator.comparison.shell
#          ^^^ meta.string.glob.shell string.unquoted.shell

test var[0] != var[^0-9]*$
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^^^ meta.string.glob.shell string.unquoted.shell
#       ^^^ meta.set.regexp.shell
#           ^^ keyword.operator.comparison.shell
#              ^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.string.regexp

test $var[0] != var[^0-9]*$
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
#        ^^^ meta.set.regexp.shell
#            ^^ keyword.operator.comparison.shell
#               ^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.string.regexp

test ${var[0]} != var[^0-9]*$
#<- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^^^^^^^ meta.interpolation.parameter.shell
#      ^^^ variable.other.readwrite.shell
#         ^^^ meta.item-access.shell
#              ^^ keyword.operator.comparison.shell
#                 ^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell - meta.string.regexp

test expr -a expr -o expr -- | cmd |& cmd
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                           ^^^ - meta.function-call
#         ^^ meta.parameter.option.shell variable.parameter.option.shell
#                 ^^ meta.parameter.option.shell variable.parameter.option.shell
#                         ^^ - keyword
#                            ^ keyword.operator.assignment.pipe.shell
#                              ^^^ meta.function-call.identifier.shell variable.function.shell
#                                  ^^ keyword.operator.assignment.pipe.shell

test ! $line == ^[0-9]+$
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell - meta.function-call.arguments
#   ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call.identifier
#                       ^ - meta.function-call
#^^^ support.function.shell
#    ^ keyword.operator.logical.shell
#      ^^^^^ variable.other.readwrite.shell
#            ^^ keyword.operator.comparison.shell
#               ^^^^^^^^ meta.string.glob.shell string.unquoted.shell

test ! $line =~ ^[0-9]+$ >> /file
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell - meta.function-call.arguments
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call.identifier - meta.group
#                                ^ - meta.function-call
#^^^ support.function.shell
#    ^ keyword.operator.logical.shell
#      ^^^^^ variable.other.readwrite.shell
#            ^^ invalid.illegal.operator.shell
#               ^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                        ^^ keyword.operator.assignment.redirection.shell

if test expr -a expr ; then echo "success"; fi
# ^ - meta.function-call
#  ^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                   ^^^^^^^^ - meta.function-call
#            ^^ meta.parameter.option.shell variable.parameter.option.shell
#                    ^ punctuation.terminator.statement.shell
#                      ^^^^ keyword.control.conditional.then.shell
#                           ^^^^ support.function.shell
#                                         ^ punctuation.terminator.statement.shell
#                                           ^^ keyword.control.conditional.endif.shell

if test "$VAR" != ";";then;fi
# ^ - meta.function-call
#  ^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#       ^^^^^^ meta.string.glob.shell
#              ^^ keyword.operator.comparison.shell
#                 ^^^ meta.string.glob.shell string.quoted.double.shell
#                    ^^^^^^^^ - meta.function-call
#                    ^ punctuation.terminator.statement.shell
#                     ^^^^ keyword.control.conditional.then.shell
#                         ^ punctuation.terminator.statement.shell
#                          ^^ keyword.control.conditional.endif.shell


###############################################################################
# 4.2 Bash Builtin Commands (time)                                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-time               #
# time pipeline                                                               #
###############################################################################

time cmd1 --arg val | cmd2 -n |& cmd3
# <- keyword.control.flow.time.shell
#^^^ keyword.control.flow.time.shell
#    ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#        ^^^^^^^^^^ meta.function-call.arguments.shell
#         ^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#               ^^^ meta.string.glob.shell string.unquoted.shell
#                   ^ keyword.operator.assignment.pipe.shell
#                     ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell
#                         ^^^ meta.function-call.arguments.shell
#                          ^^ meta.parameter.option.shell variable.parameter.option.shell
#                             ^^ keyword.operator.assignment.pipe.shell
#                                ^^^^ meta.function-call.identifier.shell meta.command.shell variable.function.shell

time -p cmd -p
# <- keyword.control.flow.time.shell
#^^^ keyword.control.flow.time.shell
#    ^^ variable.parameter.option.shell
#       ^^^ meta.function-call.identifier.shell
#          ^^^ meta.function-call.arguments.shell


###############################################################################
# 4.2 Bash Builtin Commands (trap)                                            #
# https://www.gnu.org/software/bash/manual/bash.html#index-trap               #
# trap [-lp] [arg] [sigspec …]                                                #
###############################################################################

trap
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell

trap cmd
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ meta.function-call.arguments.shell
#    ^^^ meta.function-call.arguments.shell meta.command.shell variable.function.shell

trap cmd EXIT
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^^^ meta.command.shell variable.function.shell
#        ^^^^ constant.language.signal.shell

trap -p cmd EXIT
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^^^ meta.command.shell variable.function.shell
#           ^^^^ constant.language.signal.shell

trap 'cmd --args="value"' SIGINT
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^ meta.function-call.arguments.shell meta.quoted.shell
#     ^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.identifier.shell
#        ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.arguments.shell
#                       ^ meta.function-call.arguments.shell meta.quoted.shell
#                        ^^^^^^^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^ punctuation.definition.quoted.begin.shell
#     ^^^ variable.function.shell
#         ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^ meta.string.glob.shell string.quoted.double.shell
#                       ^ punctuation.definition.quoted.end.shell
#                         ^^^^^^ constant.language.signal.shell

trap "cmd --args='value'" SIGKILL
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^ meta.function-call.arguments.shell meta.quoted.shell
#     ^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.identifier.shell
#        ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.arguments.shell
#                       ^ meta.function-call.arguments.shell meta.quoted.shell
#                        ^^^^^^^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^ punctuation.definition.quoted.begin.shell
#     ^^^ variable.function.shell
#         ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#               ^ keyword.operator.assignment.shell
#                ^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                       ^ punctuation.definition.quoted.end.shell
#                         ^^^^^^^ constant.language.signal.shell

trap "\"cmd\" --args=\"val${ue}\"" SIGKILL
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^ meta.function-call.arguments.shell meta.quoted.shell
#     ^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.identifier.shell
#            ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell meta.quoted.shell meta.function-call.arguments.shell
#                                ^ meta.function-call.arguments.shell meta.quoted.shell
#                                 ^^^^^^^ meta.function-call.arguments.shell - meta.function-call meta-function-call
#    ^ punctuation.definition.quoted.begin.shell
#     ^^^^^^^ variable.function.shell
#     ^^ constant.character.escape.shell
#          ^^ constant.character.escape.shell
#             ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                   ^ keyword.operator.assignment.shell
#                    ^^^^^ meta.string.glob.shell string.unquoted.shell
#                    ^^ constant.character.escape.shell
#                         ^^^^^ meta.string.glob.shell meta.interpolation.parameter.shell
#                              ^^ constant.character.escape.shell
#                                ^ punctuation.definition.quoted.end.shell
#                                  ^^^^^^^ constant.language.signal.shell


###############################################################################
# 4.2 Bash Builtin Commands (unalias)                                         #
# https://www.gnu.org/software/bash/manual/bash.html#index-unalias            #
# unalias [-a] [name … ]                                                      #
###############################################################################

unalias
unalias -a -b
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^^^ meta.function-call.arguments.shell
#            ^ - meta.function
#       ^^ variable.parameter.option.shell
#          ^^ variable.parameter.option.shell

unalias foo
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^ - meta.function
#      ^ - variable
#       ^^^ variable.function.shell
#          ^ - variable

unalias foo # comment
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^^ meta.function-call.arguments.shell
#          ^^^^^^^^^^ - meta.function
#      ^ - variable
#       ^^^ variable.function.shell
#          ^ - variable
#           ^^^^^^^^^^ comment.line.number-sign.shell


###############################################################################
# 4.2 Bash Builtin Commands (unset)                                           #
# https://www.gnu.org/software/bash/manual/bash.html#index-unset              #
###############################################################################

unset
unset foo b'a'r ba${z}  # 'foo' and 'bar' are variable names
# <- meta.function-call.identifier.shell support.function.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                     ^ - meta.function-call
#         ^^^^^
#^^^^ support.function.shell
#    ^ - support - variable
#     ^^^ variable.other.readwrite.shell
#        ^ - variable
#         ^^^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.begin.shell
#            ^ punctuation.definition.quoted.end.shell
#              ^ - variable
#               ^^ - meta.interpolation
#                 ^^^^ meta.interpolation.parameter.shell
#                     ^ - variable
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.shell

unset -n
unset -nfv foo = == ==cmd cmd=name
# <- meta.function-call.identifier.shell support.function.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                 ^ - meta.function-call
#^^^^ support.function.shell
#     ^^^^ meta.parameter.option.shell variable.parameter.option.shell
#         ^ - variable
#          ^^^ variable.function.shell
#             ^ - variable
#              ^ variable.function.shell
#               ^ - variable
#                ^^ variable.function.shell
#                  ^ - variable
#                   ^^^^^ variable.function.shell
#                        ^ - variable
#                         ^^^^^^^^ variable.function.shell
#                                 ^ - variable

unset -f -n -v foo b'a'r; unset -vn foo 2>& /dev/null
# <- meta.function-call.identifier.shell support.function.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                       ^^ - meta.function-call
#                         ^^^^^ meta.function-call.identifier.shell
#                              ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                                                    ^ - meta.function-call
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^ - variable
#              ^^^ variable.function.shell
#                 ^ - variable
#                  ^^^^^ variable.function.shell
#                   ^ punctuation.definition.quoted.begin.shell
#                     ^ punctuation.definition.quoted.end.shell
#                       ^ punctuation.terminator.statement.shell
#                         ^^^^^ support.function.shell
#                              ^ - support - variable
#                               ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                  ^ - variable
#                                   ^^^ variable.other.readwrite.shell
#                                      ^ - variable
#                                       ^ meta.file-descriptor.shell meta.number.integer.decimal.shell constant.numeric.value.shell
#                                        ^^ keyword.operator.assignment.redirection.shell

unset -f -x +v -- foo bar; unset -vn -- foo
# <- meta.function-call.identifier.shell support.function.shell
#^^^^ meta.function-call.identifier.shell
#    ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                        ^^ - meta.function-call
#                          ^^^^^ meta.function-call.identifier.shell
#                               ^^^^^^^^^^^ meta.function-call.arguments.shell
#                                          ^ - meta.function-call
#     ^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^ meta.parameter.option.shell variable.parameter.option.shell
#             ^^^^ - variable
#              ^^ keyword.operator.end-of-options.shell
#                 ^^^ variable.function.shell
#                    ^ - variable
#                     ^^^ variable.function.shell
#                        ^ punctuation.terminator.statement.shell
#                          ^^^^^ support.function.shell
#                               ^ - support - variable
#                                ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                   ^^^^ - variable
#                                    ^^ keyword.operator.end-of-options.shell
#                                       ^^^ variable.other.readwrite.shell
#                                          ^ - variable

unset-
# <- - support.function
unset+
# <- - support.function
unset()
# <- - support.function
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


###############################################################################
# Linux builtins                                                              #
###############################################################################

sudo rm -rf
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#    ^^ meta.function-call.identifier.shell variable.function.shell
#      ^^^^ meta.function-call.arguments.shell
#       ^^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ punctuation.definition.parameter.shell

sudo -b -g network --host=$foo rm -rf
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^^ meta.function-call.identifier.shell
#                                ^^^^ meta.function-call.arguments.shell
#                                    ^ - meta.function-call
#    ^^ meta.parameter.option.shell variable.parameter.option.shell
#    ^ punctuation.definition.parameter.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell
#       ^ punctuation.definition.parameter.shell
#          ^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                  ^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                  ^^ punctuation.definition.parameter.shell
#                        ^ keyword.operator.assignment.shell
#                         ^^^^ meta.string.glob.shell meta.interpolation.parameter.shell variable.other.readwrite.shell
#                              ^^ variable.function.shell
#                                 ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                 ^ punctuation.definition.parameter.shell

sudo --reset-timestamp -n -f -- rm -rf
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                              ^ - meta.function-call
#                               ^^ meta.function-call.identifier.shell
#                                 ^^^^ meta.function-call.arguments.shell
#                                     ^ - meta.function-call
#    ^^^^^^^^^^^^^^^^^ meta.parameter.option.shell variable.parameter.option.shell
#                      ^^ meta.parameter.option.shell variable.parameter.option.shell
#                         ^^ meta.parameter.option.shell variable.parameter.option.shell
#                            ^^ keyword.operator.end-of-options.shell
#                               ^^ variable.function.shell
#                                  ^^^ meta.parameter.option.shell variable.parameter.option.shell
#                                  ^ punctuation.definition.parameter.shell


###############################################################################
# 5.2 Bash Variables                                                          #
# https://www.gnu.org/software/bash/manual/bash.html#Shell-Variables          #
###############################################################################

# At shell startup, set to the absolute pathname used to invoke the shell or
# shell script being executed as passed in the environment or argument list.
# Subsequently, expands to the last argument to the previous command, after
# expansion. Also set to the full pathname used to invoke each command executed
# and placed in the environment exported to that command. When checking mail,
# this parameter holds the name of the mail file.
: $_ ${_} ${!_} ${#_}
# ^^ meta.interpolation.parameter.shell variable.language.builtin.shell
# ^ punctuation.definition.variable.shell
#    ^^^^ meta.interpolation.parameter.shell
#    ^ punctuation.definition.variable.shell
#     ^ punctuation.section.interpolation.begin.shell
#      ^ variable.language.builtin.shell
#       ^ punctuation.section.interpolation.end.shell
#         ^^^^^ meta.interpolation.parameter.shell
#         ^ punctuation.definition.variable.shell
#          ^ punctuation.section.interpolation.begin.shell
#           ^ keyword.operator.expansion.indirection.shell
#            ^ variable.language.builtin.shell
#             ^ punctuation.section.interpolation.end.shell
#               ^^^^^ meta.interpolation.parameter.shell
#               ^ punctuation.definition.variable.shell
#                ^ punctuation.section.interpolation.begin.shell
#                 ^ keyword.operator.expansion.length.shell
#                  ^ variable.language.builtin.shell
#                   ^ punctuation.section.interpolation.end.shell

: $BASH_ALIASES
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_ARGC
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_ARGV
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_ARGV0
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_CMDS
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_COMMAND
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_COMPAT
# ^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_ENV
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_EXECUTION_STRING
# ^^^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_LINENO
# ^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_LOADABLES_PATH
# ^^^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_REMATCH
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_SOURCE
# ^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_SUBSHELL
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_VERSINFO
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_VERSION
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH_XTRACEFD
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASH
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASHOPTS
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $BASHPID
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $CDPATH
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $CHILD_MAX
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COLUMNS
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_CWORD
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_KEY
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_LINE
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_POINT
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_TYPE
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_WORDBREAKS
# ^^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMP_WORDS
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COMPREPLY
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $COPROC
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $DIRSTACK
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $ENV
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $EPOCHREALTIME
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $EPOCHSECONDS
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $EUID
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $EXECIGNORE
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $FCEDIT
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $FIGNORE
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $FUNCNAME
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $FUNCNEST
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $GLOBIGNORE
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $GROUPS
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $histchars
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTCMD
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTCONTROL
# ^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTFILE
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTFILESIZE
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTIGNORE
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTSIZE
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HISTTIMEFORMAT
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HOME
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HOSTFILE
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HOSTNAME
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $HOSTTYPE
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $IFS
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $IGNOREEOF
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $INPUTRC
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $INSIDE_EMACS
# ^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LANG
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LC_ALL
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LC_COLLATE
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LC_CTYPE
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LC_MESSAGES
# ^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LC_NUMERIC
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LC_TIME
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LINENO
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $LINES
# ^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $MACHTYPE
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $MAIL
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $MAILCHECK
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $MAILPATH
# ^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $MAPFILE
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $OLDPWD
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $OPTARG
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $OPTERR
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $OPTIND
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $OSTYPE
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PATH
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PIPESTATUS
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $POSIXLY_CORRECT
# ^^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PPID
# ^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PROMPT_COMMAND
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PROMPT_DIRTRIM
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PS0
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PS1
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PS2
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PS3
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PS4
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $PWD
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $RANDOM
# ^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $READLINE_ARGUMENT
# ^^^^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $READLINE_LINE
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $READLINE_MARK
# ^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $READLINE_POINT
# ^^^^^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $REPLY
# ^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $SECONDS
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $SHELL
# ^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $SHELLOPTS
# ^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $SHLVL
# ^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $SRANDOM
# ^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $TIMEFORMAT
# ^^^^^^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $TMOUT
# ^^^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell

: $UID
# ^^^^ variable.language.builtin.shell
# ^ punctuation.definition.variable.shell


###############################################################################
# 6.4 Bash Conditional Expressions                                            #
# https://www.gnu.org/software/bash/manual/bash.html#Bash-Conditional-Expressions
###############################################################################

![ ]
# <- punctuation.definition.history.shell
#^ punctuation.section.compound.begin.shell
#  ^ punctuation.section.compound.end.shell

! [ ]
# <- keyword.operator.logical.shell
# ^ punctuation.section.compound.begin.shell
#   ^ punctuation.section.compound.end.shell

[  ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^ meta.compound.conditional.shell
#  ^ punctuation.section.compound.end.shell

[
]
# <- - meta.conditional - support.function

[ \
]
# <- meta.compound.conditional.shell punctuation.section.compound.end.shell

[ # comment ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^ - meta.conditional - comment
# ^^^^^^^^^^^^ comment.line.number-sign.shell - meta.conditional

[ ; cmd ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^ - meta.conditional
# ^ punctuation.terminator.statement.shell
#   ^^^ variable.function.shell
#       ^ string.unquoted.shell

[ && cmd ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ - meta.conditional
# ^^ keyword.operator.logical.shell
#    ^^^ variable.function.shell
#        ^ string.unquoted.shell

[ || cmd ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ - meta.conditional
# ^^ keyword.operator.logical.shell
#    ^^^ variable.function.shell
#        ^ string.unquoted.shell

[ >>cmd ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^ meta.compound.conditional.shell
# ^^^^^ meta.redirection.shell
# ^^ keyword.operator.assignment.redirection.shell
#   ^^^ string.unquoted.shell
#       ^ punctuation.section.compound.end.shell

# heredocs causing issues, but no way around it
[ <<cmd ]  # <- ] should close the conditional
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^ meta.compound.conditional.shell
# ^^ keyword.operator.assignment.redirection.shell
#   ^^^ meta.tag.heredoc.begin.shell entity.name.tag.heredoc.shell
cmd
# <- meta.tag.heredoc.end.shell entity.name.tag.heredoc.shell

[ -a file ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^ meta.compound.conditional.shell

[ -v varname ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell

[ file1 -ef file2 ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^^^ meta.string.glob.shell string.unquoted.shell
#       ^^^ keyword.operator.comparison.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.section.compound.end.shell

[ file1 -nt file2 ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^^^ meta.string.glob.shell string.unquoted.shell
#       ^^^ keyword.operator.comparison.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.section.compound.end.shell

[ file1 -ot file2 ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^^^ meta.string.glob.shell string.unquoted.shell
#       ^^^ keyword.operator.comparison.shell
#           ^^^^^ meta.string.glob.shell string.unquoted.shell
#                 ^ punctuation.section.compound.end.shell

[ ! str != str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^ keyword.operator.logical.shell
#   ^^^ meta.string.glob.shell string.unquoted.shell
#       ^^ keyword.operator.comparison.shell
#          ^^^ meta.string.glob.shell string.unquoted.shell
#              ^ punctuation.section.compound.end.shell

[ str != str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^^ keyword.operator.comparison.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.compound.end.shell

[ str == str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^^ keyword.operator.comparison.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.compound.end.shell

[ str =~ str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^^ invalid.illegal.operator.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.compound.end.shell

[ str >= str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^^ invalid.illegal.operator.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.compound.end.shell

[ str <= str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^^ invalid.illegal.operator.shell
#        ^^^ meta.string.glob.shell string.unquoted.shell
#            ^ punctuation.section.compound.end.shell

[ str = str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^ keyword.operator.comparison.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.compound.end.shell


[ str < str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^ keyword.operator.comparison.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.compound.end.shell

[ str > str ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^ meta.string.glob.shell string.unquoted.shell
#     ^ keyword.operator.comparison.shell
#       ^^^ meta.string.glob.shell string.unquoted.shell
#           ^ punctuation.section.compound.end.shell

[ $arg -lt 2 ]
# <- meta.compound.conditional.shell punctuation.section.compound.begin.shell
#^^^^^^^^^^^^^ meta.compound.conditional.shell
# ^^^^ variable.other.readwrite.shell
#      ^^^ keyword.operator.comparison.shell
#          ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#            ^ punctuation.section.compound.end.shell

###############################################################################
# Bash Numeric Constants                                                      #
###############################################################################

true false
# <- constant.language.boolean.true.shell
#^^^ constant.language.boolean.true.shell
#   ^ - constant
#    ^^^^^ constant.language.boolean.false.shell
#         ^ - constant

(( 0 ))
# ^ - meta.number - constant
#  ^ meta.number.integer.decimal.shell constant.numeric.value.shell
#   ^ - meta.number - constant

(( 0 1 2 3 4 5 6 7 8 9))
#^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
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
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
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
#^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
#  ^ meta.number.integer.octal.shell constant.numeric.base.shell
#   ^^^^^^^^ meta.number.integer.octal.shell constant.numeric.value.shell
#           ^^^ meta.number.integer.decimal.shell constant.numeric.value.shell

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

(( 0x${_:0:2}Ag0 0xA${b}C ))
#  ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#    ^^^^^^^^ meta.number.integer.hexadecimal.shell meta.interpolation.parameter.shell
#            ^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#             ^^^ - meta.number - constant
#                ^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#                  ^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#                   ^^^^ meta.number.integer.hexadecimal.shell meta.interpolation.parameter.shell - constant
#                       ^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#                        ^ - meta.number - constant

(( 16#${_:0:2}DEF ))
#  ^^^ meta.number.integer.hexadecimal.shell constant.numeric.base.shell
#     ^^^^^^^^ meta.number.integer.hexadecimal.shell meta.interpolation.parameter.shell
#             ^^^ meta.number.integer.hexadecimal.shell constant.numeric.value.shell
#                ^ - meta.number - constant

(( 8#127 ))
#  ^^ meta.number.integer.octal.shell constant.numeric.base.shell
#    ^^^ meta.number.integer.octal.shell constant.numeric.value.shell

(( 64#123@_ ))
#  ^^^ meta.number.integer.other.shell constant.numeric.base.shell
#     ^^^^^ meta.number.integer.other.shell constant.numeric.value.shell

: -target 20.10.2.4:8080 -port 80
#         ^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell

: -target=20.10.2.4:8080 -port=80
#         ^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                              ^^ meta.number.integer.decimal.shell constant.numeric.value.shell

ip=10.10.20.14
#  ^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell

###############################################################################
# 6.5 Shell Arithmetic                                                        #
# https://www.gnu.org/software/bash/manual/bash.html#Shell-Arithmetic         #
###############################################################################

# QUOTING ARITHMETIC EXPRESSIONS
# arithmetic expressions can be unquoted or quoted words, variables within however are not.

(( foo "bar" 'baz' "foo "bar' baz' ))
#  ^^^ variable.other.readwrite.shell
#      ^ punctuation.definition.quoted.begin.shell
#       ^^^ variable.other.readwrite.shell
#          ^ punctuation.definition.quoted.end.shell
#            ^ punctuation.definition.quoted.begin.shell
#             ^^^ variable.other.readwrite.shell
#                ^ punctuation.definition.quoted.end.shell
#                  ^ punctuation.definition.quoted.begin.shell
#                   ^^^ variable.other.readwrite.shell
#                       ^ punctuation.definition.quoted.end.shell
#                        ^^^ variable.other.readwrite.shell
#                           ^ punctuation.definition.quoted.begin.shell
#                             ^^^ variable.other.readwrite.shell
#                                ^ punctuation.definition.quoted.end.shell

(( a=b, a*=b, a/=b, a%=b, a+=b, a-=b, a<<=b, a>>=b, a&=b, a^=b, a|=b ))
#  ^ variable.other.readwrite.shell
#   ^ keyword.operator.assignment.shell
#    ^ variable.other.readwrite.shell
#     ^ punctuation.separator.sequence.shell
#       ^ variable.other.readwrite.shell
#        ^^ keyword.operator.assignment.augmented.shell
#          ^ variable.other.readwrite.shell
#           ^ punctuation.separator.sequence.shell
#             ^ variable.other.readwrite.shell
#              ^^ keyword.operator.assignment.augmented.shell
#                ^ variable.other.readwrite.shell
#                 ^ punctuation.separator.sequence.shell
#                   ^ variable.other.readwrite.shell
#                    ^^ keyword.operator.assignment.augmented.shell
#                      ^ variable.other.readwrite.shell
#                       ^ punctuation.separator.sequence.shell
#                         ^ variable.other.readwrite.shell
#                          ^^ keyword.operator.assignment.augmented.shell
#                            ^ variable.other.readwrite.shell
#                             ^ punctuation.separator.sequence.shell
#                               ^ variable.other.readwrite.shell
#                                ^^ keyword.operator.assignment.augmented.shell
#                                  ^ variable.other.readwrite.shell
#                                   ^ punctuation.separator.sequence.shell
#                                     ^ variable.other.readwrite.shell
#                                      ^^^ keyword.operator.assignment.augmented.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ punctuation.separator.sequence.shell
#                                            ^ variable.other.readwrite.shell
#                                             ^^^ keyword.operator.assignment.augmented.shell
#                                                ^ variable.other.readwrite.shell
#                                                 ^ punctuation.separator.sequence.shell
#                                                   ^ variable.other.readwrite.shell
#                                                    ^^ keyword.operator.assignment.augmented.shell
#                                                      ^ variable.other.readwrite.shell
#                                                       ^ punctuation.separator.sequence.shell
#                                                         ^ variable.other.readwrite.shell
#                                                          ^^ keyword.operator.assignment.augmented.shell
#                                                            ^ variable.other.readwrite.shell
#                                                             ^ punctuation.separator.sequence.shell
#                                                               ^ variable.other.readwrite.shell
#                                                                ^^ keyword.operator.assignment.augmented.shell
#                                                                  ^ variable.other.readwrite.shell
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
# <- meta.compound.arithmetic.shell punctuation.section.compound.begin.shell - meta.group
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell
# ^^^^^ meta.group.shell
#      ^^^ - meta.group.shell
#         ^^^^^^^^^ meta.group.shell
#                  ^^^ - meta.group.shell
#                     ^^^^^^^^^ meta.group.shell
#                              ^^ - meta.group.shell
#^ punctuation.section.compound.begin.shell
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
#                              ^^ punctuation.section.compound.end.shell

((a+=b))
#    ^ - string.unquoted

(( val = ( a - ( b * c + ( d - e ) ) ) / "d" ))
#^ meta.compound.arithmetic.shell - meta.arithmetic
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell
#                                            ^^ meta.compound.arithmetic.shell - meta.arithmetic
# ^^^^^^^ - meta.group
#        ^^^^^^ meta.group.shell - meta.group meta.group
#              ^^^^^^^^^^ meta.group.shell meta.group.shell - meta.group meta.group meta.group
#                        ^^^^^^^^^ meta.group.shell meta.group.shell meta.group.shell
#                                 ^^ meta.group.shell meta.group.shell - meta.group meta.group meta.group
#                                   ^^ meta.group.shell - meta.group meta.group
#                                     ^^^^^^^ - meta.group
#^ punctuation.section.compound.begin.shell
#  ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#        ^ punctuation.section.group.begin.shell
#          ^ variable.other.readwrite.shell
#            ^ keyword.operator.arithmetic.shell
#              ^ punctuation.section.group.begin.shell
#                ^ variable.other.readwrite.shell
#                  ^ keyword.operator.arithmetic.shell
#                    ^ variable.other.readwrite.shell
#                      ^ keyword.operator.arithmetic.shell
#                        ^ punctuation.section.group.begin.shell
#                          ^ variable.other.readwrite.shell
#                            ^ keyword.operator.arithmetic.shell
#                              ^ variable.other.readwrite.shell
#                                ^ punctuation.section.group.end.shell
#                                  ^ punctuation.section.group.end.shell
#                                    ^ punctuation.section.group.end.shell
#                                      ^ keyword.operator.arithmetic.shell
#                                        ^ punctuation.definition.quoted.begin.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ punctuation.definition.quoted.end.shell
#                                            ^^ punctuation.section.compound.end.shell

(( val = '( a - ( b * c + ( d - e ) ) ) / d' ))
#^ meta.compound.arithmetic.shell - meta.arithmetic
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell
#                                            ^^ meta.compound.arithmetic.shell - meta.arithmetic
# ^^^^^^^^ - meta.group
#         ^^^^^^ meta.group.shell - meta.group meta.group
#               ^^^^^^^^^^ meta.group.shell meta.group.shell - meta.group meta.group meta.group
#                         ^^^^^^^^^ meta.group.shell meta.group.shell meta.group.shell
#                                  ^^ meta.group.shell meta.group.shell - meta.group meta.group meta.group
#                                    ^^ meta.group.shell - meta.group meta.group
#                                      ^^^^^^ - meta.group
#^ punctuation.section.compound.begin.shell
#  ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#        ^ punctuation.definition.quoted.begin.shell
#         ^ punctuation.section.group.begin.shell
#           ^ variable.other.readwrite.shell
#             ^ keyword.operator.arithmetic.shell
#               ^ punctuation.section.group.begin.shell
#                 ^ variable.other.readwrite.shell
#                   ^ keyword.operator.arithmetic.shell
#                     ^ variable.other.readwrite.shell
#                       ^ keyword.operator.arithmetic.shell
#                         ^ punctuation.section.group.begin.shell
#                           ^ variable.other.readwrite.shell
#                             ^ keyword.operator.arithmetic.shell
#                               ^ variable.other.readwrite.shell
#                                 ^ punctuation.section.group.end.shell
#                                   ^ punctuation.section.group.end.shell
#                                     ^ punctuation.section.group.end.shell
#                                       ^ keyword.operator.arithmetic.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ punctuation.definition.quoted.end.shell
#                                            ^^ punctuation.section.compound.end.shell

(( val = "( a - ( b * c + ( d - e ) ) ) / d" ))
#^ meta.compound.arithmetic.shell - meta.arithmetic
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.compound.arithmetic.shell meta.arithmetic.shell
#                                            ^^ meta.compound.arithmetic.shell - meta.arithmetic
# ^^^^^^^^ - meta.group
#         ^^^^^^ meta.group.shell - meta.group meta.group
#               ^^^^^^^^^^ meta.group.shell meta.group.shell - meta.group meta.group meta.group
#                         ^^^^^^^^^ meta.group.shell meta.group.shell meta.group.shell
#                                  ^^ meta.group.shell meta.group.shell - meta.group meta.group meta.group
#                                    ^^ meta.group.shell - meta.group meta.group
#                                      ^^^^^^ - meta.group
#^ punctuation.section.compound.begin.shell
#  ^^^ variable.other.readwrite.shell
#      ^ keyword.operator.assignment.shell
#        ^ punctuation.definition.quoted.begin.shell
#         ^ punctuation.section.group.begin.shell
#           ^ variable.other.readwrite.shell
#             ^ keyword.operator.arithmetic.shell
#               ^ punctuation.section.group.begin.shell
#                 ^ variable.other.readwrite.shell
#                   ^ keyword.operator.arithmetic.shell
#                     ^ variable.other.readwrite.shell
#                       ^ keyword.operator.arithmetic.shell
#                         ^ punctuation.section.group.begin.shell
#                           ^ variable.other.readwrite.shell
#                             ^ keyword.operator.arithmetic.shell
#                               ^ variable.other.readwrite.shell
#                                 ^ punctuation.section.group.end.shell
#                                   ^ punctuation.section.group.end.shell
#                                     ^ punctuation.section.group.end.shell
#                                       ^ keyword.operator.arithmetic.shell
#                                         ^ variable.other.readwrite.shell
#                                          ^ punctuation.definition.quoted.end.shell
#                                            ^^ punctuation.section.compound.end.shell

###############################################################################
# 7.1 Job Control Basics                                                      #
# https://www.gnu.org/software/bash/manual/bash.html#Job-Control-Basics       #
###############################################################################

: %
# ^ meta.interpolation.job.shell variable.other.readwrite.shell punctuation.definition.variable.shell
: %%
# ^^ meta.interpolation.job.shell variable.language.job.shell
# ^ punctuation.definition.variable.shell
#   ^ - meta.interpolation - variable
: %+
# ^^ meta.interpolation.job.shell variable.language.job.shell
# ^ punctuation.definition.variable.shell
#   ^ - meta.interpolation - variable
: %-
# ^^ meta.interpolation.job.shell variable.language.job.shell
# ^ punctuation.definition.variable.shell
#   ^ - meta.interpolation - variable
: %1 %2 %3
# ^^ meta.interpolation.job.shell variable.language.job.shell
# ^ punctuation.definition.variable.shell
#   ^ - meta.interpolation - variable
#    ^^ meta.interpolation.job.shell variable.language.job.shell
#    ^ punctuation.definition.variable.shell
#      ^ - meta.interpolation - variable
#       ^^ meta.interpolation.job.shell variable.language.job.shell
#       ^ punctuation.definition.variable.shell
#         ^ - meta.interpolation - variable
: %ce
# ^^^ meta.interpolation.job.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#    ^ - meta.interpolation - variable
: %?ce
# ^^^^ meta.interpolation.job.shell variable.other.readwrite.shell
# ^ punctuation.definition.variable.shell
#  ^ keyword.operator.match.shell
#     ^ - meta.interpolation - variable

%1
# <- meta.interpolation.job.shell variable.language.job.shell punctuation.definition.variable.shell
#^ meta.interpolation.job.shell variable.language.job.shell
# ^ - meta.interpolation - variable


###############################################################################
# 7.2 Job Control Builtins                                                    #
# https://www.gnu.org/software/bash/manual/bash.html#Job-Control-Builtins     #
###############################################################################

fg fg
# <- meta.function-call.identifier.shell support.function.shell
#^ meta.function-call.identifier.shell support.function.shell
# ^^^ meta.function-call.arguments.shell - support

bg bg
# <- meta.function-call.identifier.shell support.function.shell
#^ meta.function-call.identifier.shell support.function.shell
# ^^^ meta.function-call.arguments.shell - support

jobs jobs
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^ meta.function-call.arguments.shell - support

kill -s
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^ meta.function-call.arguments.shell
#    ^^ meta.parameter.option.shell variable.parameter.option.shell

wait -fn -p varname
# <- meta.function-call.identifier.shell support.function.shell
#^^^ meta.function-call.identifier.shell support.function.shell
#   ^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#    ^^^ meta.parameter.option.shell variable.parameter.option.shell
#        ^^ meta.parameter.option.shell variable.parameter.option.shell
#           ^^^^^^^ meta.string.glob.shell string.unquoted.shell

disown -ar
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^ meta.function-call.identifier.shell support.function.shell
#     ^^^^ meta.function-call.arguments.shell
#      ^^^ meta.parameter.option.shell variable.parameter.option.shell

suspend -f
# <- meta.function-call.identifier.shell support.function.shell
#^^^^^^ meta.function-call.identifier.shell support.function.shell
#      ^^^ meta.function-call.arguments.shell
#       ^^ meta.parameter.option.shell variable.parameter.option.shell


###############################################################################
# Misc statement tests                                                        #
###############################################################################

function clk {
    typeset base=/sys/class/drm/card0/device
    #<- keyword.declaration.variable.shell
    #       ^^^^ variable.other.readwrite.shell
    #           ^ keyword.operator.assignment.shell
    #            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
    [[ -r ${base}/hwmon/hwmon0/temp1_input && -r ${base}/power_profile ]] || return 1
    # <- punctuation.section.compound.begin.shell
    #                                                                  ^^ punctuation.section.compound.end.shell
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
    # <- meta.function keyword.control.conditional.endcase.shell
}
# <- punctuation.section.block.end.shell

if   [ "$*" = '*' ]
then remotefilter="cat"
#               ^ variable.other.readwrite.shell
#                ^ keyword.operator.assignment.shell
else remotefilter="grep"
#               ^ variable.other.readwrite.shell
#                 ^ meta.string.glob.shell string.quoted.double.shell punctuation.definition.string.begin.shell
     for glob in "$@"
     do  glob=$(
     # ^^^^^^^ - meta.string - meta.interpolation
     #        ^^^ meta.string.glob.shell meta.interpolation.command.shell
     #      ^ variable.other.readwrite.shell
     #       ^ keyword.operator.assignment.shell
     #        ^ punctuation.definition.variable.shell
     #         ^ punctuation.section.interpolation.begin.shell
           echo "$glob" |
           sed -e 's@\*@[^ ]*@g' -e 's/\?/[^ ]/g'
           # <- meta.string.glob.shell meta.interpolation.command.shell meta.function-call.identifier.shell variable.function.shell - string
         )
         # <- meta.string.glob.shell meta.interpolation.command.shell punctuation.section.interpolation.end.shell - string
         remotefilter="$remotefilter -e '^$glob ' -e ' $glob\$'"
         #          ^ variable.other.readwrite.shell
         #           ^ keyword.operator.assignment.shell
     done
     # <- keyword.control.loop.end.shell
fi
# <- keyword.control.conditional.endif.shell

curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | POETRY_PREVIEW=1 python
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
