# SYNTAX TEST "Packages/ShellScript/bash.sublime-syntax"
# <- comment.line punctuation.definition.comment
#^ comment.line
#                                                      ^ comment.line
#                                                       ^ - comment.line

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
randomname argument --opt1 --opt2 -x -y &>/dev/null
# <- meta.function-call variable.function - meta.function-call.arguments
#^^^^^^^^^ meta.function-call variable.function - meta.function-call.arguments
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
#                   ^^ variable.parameter punctuation
#                     ^^^^ variable.parameter - punctuation
#                          ^^ variable.parameter punctuation
#                            ^^^^ variable.parameter - punctuation
#                                 ^ variable.parameter punctuation
#                                  ^ variable.parameter - punctuation
#                                    ^ variable.parameter punctuation
#                                     ^ variable.parameter - punctuation
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
#^ variable.other.readwrite keyword.other.expansion
# ^ variable.other.readwrite punctuation.section.brackets.begin
#  ^^ variable.other.readwrite
#    ^ variable.other.readwrite punctuation.section.brackets.end
#     ^ string.quoted.double punctuation.definition.string.begin
#      ^ string.quoted.double
#       ^ string.quoted.double punctuation.definition.string.end
e=e
${e}'ch'o hello, world!
# <- meta.function-call variable.function
#^^^^^^^^ meta.function-call variable.function
#        ^^^^^^^^^^^^^^ meta.function-call.arguments
# <- variable.other.readwrite keyword.other.expansion
#^ variable.other.readwrite punctuation.section.brackets.begin
# ^ variable.other.readwrite
#  ^ variable.other.readwrite punctuation.section.brackets.end
#   ^ string.quoted.single punctuation.definition.string.begin
#    ^^ string.quoted.single
#      ^ string.quoted.single punctuation.definition.string.end
echo hello#not-a-comment
#         ^^^^^^^^^^^^^^ meta.function-call.arguments - comment.line - variable.function
echo -e "foo"
#    ^ variable.parameter punctuation
#     ^ variable.parameter
foo --opt1 arg1
#   ^^ variable.parameter punctuation
#   ^^^^^^ variable.parameter
foo --opt1 arg1 -- --not-an-option
#               ^^ keyword.operator
#                  ^ - variable.parameter punctuation
set -e
#   ^ variable.parameter punctuation
#    ^ variable.parameter  
set +e
#   ^ variable.parameter punctuation
#    ^ variable.parameter  

########################
# Variable assignments #
########################
x=a
# <- variable.other.readwrite.assignment
#^ keyword.operator.assignment
# ^ string.unquoted
x=a pwd
# <- variable.other.readwrite.assignment
#^ keyword.operator.assignment
#   ^^^ meta.function-call support.function
x="a b" pwd
# ^ string.quoted.double punctuation.definition.string.begin
#  ^^^ string.quoted.double
#     ^ string.quoted.double punctuation.definition.string.end
#       ^^^ meta.function-call support.function
x=a y=b pwd
#^ keyword.operator.assignment
# ^ string.unquoted
#    ^ keyword.operator.assignment
#     ^ string.unquoted
#       ^^^ meta.function-call support.function
foo=bar baz=qux
#   ^^^ string.unquoted
#           ^^^ string.unquoted
x=${foo} y=${baz}"asdf" pwd
#^ keyword.operator.assignment
# ^ string.unquoted variable.other.readwrite keyword.other.expansion
#  ^ string.unquoted variable.other.readwrite punctuation.section.brackets.begin
#   ^^^ string.unquoted variable.other.readwrite
#      ^ string.unquoted variable.other.readwrite punctuation.section.brackets.end
#         ^ keyword.operator.assignment
#          ^ string.unquoted variable.other.readwrite keyword.other.expansion
#           ^ string.unquoted variable.other.readwrite punctuation.section.brackets.begin
#            ^^^ string.unquoted variable.other.readwrite
#               ^ string.unquoted variable.other.readwrite punctuation.section.brackets.end
#                ^ string.unquoted string.quoted.double punctuation.definition.string.begin
#                 ^^^^ string.unquoted string.quoted.double
#                     ^ string.unquoted string.quoted.double punctuation.definition.string.end
#                       ^^^ meta.function-call support.function

# Spaces following an assignment token means an empty string value!
x= pwd
# <- variable.other.readwrite.assignment
#^ keyword.operator.assignment
#  ^^^ meta.function-call support.function

BOWL=$(($(cat food.txt | wc -l) + 5))
#   ^ keyword.operator.assignment
#    ^ keyword.other
#     ^^ punctuation
#       ^ keyword.other
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

#############
# Variables #
#############

: $_
  #^ variable.language

: $__
  #^ variable.other

: $var_0
  #   ^ variable.other

: $_var0
  #^ variable.other

: $_0var_
  #^ variable.other

subdir/./myscript.sh --option arg1 arg2 -x

${foo}/${bar}/${baz}
# ^^^               variable.function variable.other
#        ^^^        variable.function variable.other
#               ^^^ variable.function variable.other

declare foo         # 'foo' is a variable name
declare -A foo bar  # 'foo' and 'bar' are variable names

export foo          # 'foo' is a variable name
# <- storage.modifier
#      ^^^ variable.other.readwrite.assignment
export foo bar      # 'foo' and 'bar' are variable names
# <- storage.modifier
#      ^^^ variable.other.readwrite.assignment
#         ^ - variable
#          ^^^ variable.other.readwrite.assignment
export foo='bar'    # 'foo' is a variable name
# <- storage.modifier
#      ^^^ variable.other.readwrite.assignment
#         ^ keyword.operator.assignment
#          ^ string.unquoted string.quoted.single punctuation.definition.string.begin
local foo bar       # 'foo' and 'bar' are variable names
# <- storage.modifier
#    ^ - variable
#     ^^^ variable.other.readwrite.assignment
#        ^ - variable
#         ^^^ variable.other.readwrite.assignment
local foo bar='baz' # 'foo' and 'bar' are variable names
# <- storage.modifier
#    ^ - variable
#     ^^^ variable.other.readwrite.assignment
#        ^ - variable
#         ^^^ variable.other.readwrite.assignment
#            ^ keyword.operator.assignment
#             ^ string.unquoted string.quoted.single punctuation.definition.string.begin
readonly foo        # 'foo' is a variable name
# <- storage.modifier
#       ^ - variable
#        ^^^ variable.other.readwrite.assignment
typeset foo         # 'foo' is a variable name
# <- storage.modifier
#      ^ - variable
#       ^^^ variable.other.readwrite.assignment
unset foo bar       # 'foo' and 'bar' are variable names
# <- support.function
#    ^ - variable

if [[ -z "$PLATFORM" ]]; then PLATFORM=docker; fi
#                                    ^ variable.other.readwrite.assignment
#                                     ^ keyword.operator.assignment
#                                      ^ string.unquoted

asdf foo && FOO=some-value pwd
# <- meta.function-call variable.function
#        ^^ keyword.operator.logical.and
#           ^^^ variable.other.readwrite.assignment
#              ^ keyword.operator.assignment
#               ^^^^^^^^^^ string.unquoted
#                          ^^^ meta.function-call support.function.pwd

(cd Layer1-linux  && PLATFORM=${PLATFORM} ./build ) &&
# <- punctuation.definition.compound.begin
#                                                 ^ punctuation.definition.compound.end
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ string.unquoted
#                                           ^ variable.function
(cd Layer2-nodejs && PLATFORM=${PLATFORM} ./build ) &&
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ string.unquoted
#                                           ^ variable.function
(cd Layer3-base   && PLATFORM=${PLATFORM} ./build ) &&
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ string.unquoted
#                                           ^ variable.function
(cd Layer4-custom && PLATFORM=${PLATFORM} name=${NOSN} ./build ) || err $?
#                           ^ variable.other.readwrite.assignment
#                            ^ keyword.operator.assignment
#                             ^ string.unquoted
#                                            ^ variable.other.readwrite.assignment
#                                             ^ keyword.operator.assignment
#                                              ^ string.unquoted
#                                                        ^ variable.function

####################################################
# Strings and interpolation in parameter expansion #
####################################################

${foo:=bar}
#    ^ keyword.operator.assignment
# <- - variable.other.readwrite.assignment
#      ^^^^ - string.unquoted
#         ^ punctuation.section.brackets.end
# <- meta.function-call variable.function

: ${foo:-bar}
  # <- keyword
  #    ^^ keyword
  #         ^ punctuation

: ${foo:='bar'}
  # <- keyword
  #    ^^ keyword
  #      ^ punctuation
  #      ^^^^^ string.quoted
  #          ^ punctuation
  #           ^ punctuation

: ${foo//bar/baz}
  # <- keyword
  #    ^ keyword
  #     ^ punctuation
  #         ^ keyword
  #             ^ punctuation

: ${foo:=`bar`}
  # <- keyword
  #    ^^ keyword
  #      ^ punctuation
  #          ^ punctuation
  #           ^ punctuation

: ${foo:=$( bar )}
  # <- keyword
  #    ^^ keyword
  #      ^ keyword
  #       ^ punctuation
  #             ^ punctuation
  #              ^ punctuation

: ${foo:=$(( 1 + 1 ))}
  # <- keyword
  #    ^^ keyword
  #      ^ keyword
  #       ^^ punctuation
  #          ^ constant.numeric
  #            ^ keyword.operator
  #              ^ constant.numeric
  #                ^^ punctuation
  #                  ^ punctuation

: ${foo:=$bar}
  # <- keyword
  #    ^^ keyword
  #      ^ keyword.other
  #       ^^^ variable.other
  #          ^ punctuation

: ${foo:="$bar"}
  # <- keyword
  #    ^^ keyword
  #      ^ punctuation
  #       ^ keyword.other
  #       ^^^^ variable.other
  #           ^ punctuation
  #            ^ punctuation

: ${foo//\}/foo}
# ^ keyword.other
#  ^ punctuation
#      ^ keyword
#       ^ punctuation
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
#       ^ punctuation
#         ^^ constant.character.escape
#            ^ keyword
#              ^ - keyword

#################################
# Braces in parameter expansion #
#################################

: ${foo//foo\}foo\/foo/foo}
  # <- keyword.other
  #    ^ keyword
  #     ^ punctuation
  #         ^^ constant.character.escape
  #              ^^ constant.character.escape
  #                   ^ keyword
  #                       ^ punctuation

: ${foo:="${bar} baz"}
  # <- keyword.other
  #    ^^ keyword
  #      ^ punctuation
  #                 ^ punctuation.definition.string.end
  #                  ^ punctuation

# Sublime bug fix: "
#                  ^ comment.line.number-sign

${!varprefix*}
# <- keyword.other
# ^ keyword.operator
#           ^ keyword.operator
#            ^ punctuation
# ^^^^^^^^^^^^ variable.function  

${!varprefix@}
# <- keyword.other
# ^ keyword.operator
#           ^ keyword.operator
#            ^ punctuation

${var#Pattern}
# <- keyword.other
#    ^ keyword.operator
#            ^ punctuation

${var##Pattern}
# <- keyword.other
#    ^^ keyword.operator
#             ^ punctuation

${var###Pattern}
# <- keyword.other
#    ^^ keyword.operator
#      ^ - keyword.operator
#              ^ punctuation

${var%Pattern}
# <- keyword.other
#    ^ keyword.operator
#            ^ punctuation

${var%%Pattern}
# <- keyword.other
#    ^^ keyword.operator
#             ^ punctuation

${var%%%Pattern}
# <- keyword.other
#    ^^ keyword.operator
#      ^ - keyword.operator
#              ^ punctuation


####################################################################
# Parameter-expansion operators                                    #
# cf. http://www.tldp.org/LDP/abs/html/parameter-substitution.html #
####################################################################

${foo//%/}
# <- keyword.other
#    ^ keyword
#     ^ punctuation
#      ^ - keyword
#       ^ keyword
#        ^ punctuation

${foo//#/}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo//!/}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo//:/}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo//@/}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation
#      ^ - keyword
#       ^ keyword.operator
#        ^ punctuation

${foo#} # "#" is not a operator here
# <- keyword.other
#    ^ - keyword.operator
#     ^ punctuation

${foo!} # "!" is not a operator here
# <- keyword.other
#    ^ - keyword.operator
#     ^ punctuation

${var:pos:len}
# <- keyword.other
#    ^ punctuation.accessor
#        ^ punctuation.accessor
#            ^ punctuation

${foo//a\/b/c/d}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation
#       ^^ constant.character.escape
#          ^ keyword.operator
#            ^ - keyword.operator
#              ^ punctuation

${foo^}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation

${foo,}
# <- keyword.other
#    ^ keyword.operator
#     ^ punctuation

${foo^^}
# <- keyword.other
#    ^^ keyword.operator
#      ^ punctuation

${foo,,}
# <- keyword.other
#    ^^ keyword.operator
#      ^ punctuation

${foo,,,Pattern}
# <- keyword.other
#    ^^ keyword.operator
#      ^ - keyword
#              ^ punctuation

${foo,,Pattern}
# <- keyword.other
#    ^^ keyword.operator
#             ^ punctuation

${foo-bar}
# <- keyword.other
#    ^ keyword.operator
#        ^ punctuation

${foo:-bar}
# <- keyword.other
#    ^^ keyword.operator
#         ^ punctuation

${foo+bar}
# <- keyword.other
#    ^ keyword.operator
#        ^ punctuation

${foo:+bar}
# <- keyword.other
#    ^^ keyword.operator
#         ^ punctuation

: ${foo=bar}
  # <- keyword.other
  #    ^ keyword.operator
  #        ^ punctuation

: ${foo:=bar}
  # <- keyword.other
  #    ^^ keyword.operator
  #         ^ punctuation

${foo?bar}
# <- keyword.other
#    ^ keyword.operator
#        ^ punctuation

${foo:?bar}
# <- keyword.other
#    ^^ keyword.operator
#         ^ punctuation

: ${foo}@
#       ^ - variable.language

: ${foo}#
#       ^ - variable.language

: ${foo:="${bar} baz"}
# <- meta.function-call support.function.colon
# ^ meta.function-call.arguments variable.other.readwrite keyword.other.expansion
#      ^^ meta.function-call.arguments variable.other.readwrite keyword.operator.assignment
#        ^ meta.function-call.arguments variable.other.readwrite string.quoted.double punctuation.definition.string.begin
#          ^ meta.function-call.arguments variable.other.readwrite string.quoted.double variable.other.readwrite punctuation.section.brackets.begin
#           ^^^ meta.function-call.arguments variable.other.readwrite string.quoted.double variable.other.readwrite
#              ^ meta.function-call.arguments variable.other.readwrite string.quoted.double variable.other.readwrite punctuation.section.brackets.end
#               ^^^^ meta.function-call.arguments variable.other.readwrite string.quoted.double
#                   ^ meta.function-call.arguments variable.other.readwrite string.quoted.double punctuation.definition.string.end
#                    ^ meta.function-call.arguments variable.other.readwrite punctuation.section.brackets.end

echo "Url: 'postgres://root:$DB_PASSWORD@$IP:$PORT/db'"
#                           ^ meta.function-call.arguments string.quoted.double variable.other.readwrite keyword.other.expansion
#                            ^^^^^^^^^^^ meta.function-call.arguments string.quoted.double variable.other.readwrite
#                                       ^ - variable.language
status="${status#"${status%%[![:space:]]*}"}"
#     ^ keyword.operator.assignment.shell
#               ^ keyword.operator.expansion
#                         ^^ keyword.operator.expansion
#                           ^ - punctuation
#                             ^ - punctuation
#                                     ^^ - punctuation
status="${status#${status%%[![:space:]]*}}"
#     ^ keyword.operator.assignment.shell
#               ^ keyword.operator.expansion
#                        ^^ keyword.operator.expansion
#                          ^ - punctuation
#                            ^ - punctuation
#                                    ^^ - punctuation

###################
# Misc. operators #
###################

foo='bar'
#  ^ keyword.operator

foo[${j}+10]="`foo`"
#  ^ variable.other.readwrite.assignment punctuation.section.braces.begin
#   ^ variable.other.readwrite.assignment variable.other.readwrite keyword.other.expansion
#    ^ variable.other.readwrite.assignment variable.other.readwrite punctuation.section.brackets.begin
#     ^ variable.other.readwrite.assignment variable.other.readwrite
#      ^ variable.other.readwrite.assignment variable.other.readwrite punctuation.section.brackets.end
#       ^ variable.other.readwrite.assignment keyword.operator.arithmetic
#        ^^ variable.other.readwrite.assignment constant.numeric.integer
#          ^ variable.other.readwrite.assignment punctuation.section.braces.end
#           ^ keyword.operator

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

foo=`let 5+5`
#   ^ punctuation.section.group.begin
#          ^ constant.numeric.integer
#           ^ punctuation.section.group.end
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

commits=($(git rev-list --reverse --abbrev-commit "$latest".. -- "$prefix"))

# <- - variable.other.readwrite

[[ $str =~ ^$'\t' ]]
#       ^^ keyword.operator.logical.shell
#          ^^^^^^ meta.regexp

[[ $str =~ ^abc$var$ ]]
#       ^^ keyword.operator.logical.shell
#          ^^^^ meta.regexp
#              ^^^^ variable.other.readwrite
#                  ^ meta.regexp

################
# Control flow #
################

while true; do
# <- keyword.control
#        ^ meta.function-call variable.function
#         ^ keyword.operator
#            ^ keyword.control
    break
    # <- keyword.control
done
# <- keyword.control

declare -a array
array[500]=value
#    ^ variable.other.readwrite.assignment punctuation.section.braces.begin
#     ^^^ variable.other.readwrite.assignment constant.numeric.integer
#        ^ variable.other.readwrite.assignment punctuation.section.braces.end
#         ^ keyword.operator.assignment
#          ^^^^^ string.unquoted
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
#          ^^^ string.unquoted
array=($one "two" ${three} 'four' $5)
# <- variable.other.readwrite.assignment
#    ^ keyword.operator.assignment
#     ^ punctuation.section.parens.begin
#      ^ variable.other.readwrite keyword.other.expansion
#       ^^^ variable.other.readwrite
#           ^ string.quoted.double punctuation.definition.string.begin
#            ^^^ string.quoted.double
#               ^ string.quoted.double punctuation.definition.string.end
#                 ^ variable.other.readwrite keyword.other.expansion
#                  ^ variable.other.readwrite punctuation.section.brackets.begin
#                   ^^^^^ variable.other.readwrite
#                        ^ variable.other.readwrite punctuation.section.brackets.end
#                          ^ string.quoted.single punctuation.definition.string.begin
#                           ^^^^ string.quoted.single
#                               ^ string.quoted.single punctuation.definition.string.end
#                                 ^ variable.other.readwrite keyword.other.expansion
#                                  ^ variable.other.readwrite variable.parameter
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
for (( i = 0; i < 10; i++ )); do
# <- keyword.control
#   ^^ punctuation.definition.expression.begin
#        ^ meta.group.for keyword.operator.assignment
#          ^ meta.group.for constant.numeric.integer
#           ^ meta.group.for punctuation.separator
#               ^ meta.group.for keyword.operator.logical
#                 ^^ meta.group.for constant.numeric.integer
#                   ^ meta.group.for punctuation.separator
#                      ^^ meta.group.for keyword.operator.arithmetic
#                         ^^ meta.group.for punctuation.definition.expression.end
#                           ^ keyword.operator.logical.continue
#                             ^^ keyword.control.do
    echo $i
    # <- meta.function-call support.function.echo
    #    ^ meta.function-call.arguments variable.other.readwrite keyword.other.expansion
    #     ^ meta.function-call.arguments variable.other.readwrite
done
# <- keyword.control

for i in $(seq 100); do
# <- keyword.control.for
#     ^^ meta.group.for keyword.control.in
#        ^ meta.group.for variable.other.readwrite keyword.other.expansion
#         ^ meta.group.for variable.other.readwrite punctuation.section.parens.begin
#          ^^^ meta.group.for variable.other.readwrite meta.function-call variable.function
#                 ^ meta.group.for variable.other.readwrite punctuation.section.parens.end
#                  ^ keyword.operator.logical.continue
#                    ^^ keyword.control.do
  :
  # <- meta.function-call support.function.colon
done
# <- keyword.control.done

case "$1" in
# <- keyword.control.case
#    ^ string.quoted.double punctuation.definition.string.begin
#     ^ string.quoted.double variable.other.readwrite keyword.other.expansion
#      ^ string.quoted.double variable.other.readwrite variable.parameter
#       ^ string.quoted.double punctuation.definition.string.end
#         ^^ keyword.control.case.in
setup )
# <- - variable.function - support.function - meta.function-call
#     ^ keyword.control.case.item
echo Preparing the server...
# <- meta.function-call support.function.echo
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments
;;
# <- punctuation.terminator.case
#^ punctuation.terminator.case
deploy )
# <- - variable.function - support.function - meta.function-call
#      ^ keyword.control.case.item
echo Deploying...
# <- meta.function-call support.function.echo
#   ^^^^^^^^^^^^^ meta.function-call.arguments
;;
# <- punctuation.terminator.case
#^ punctuation.terminator.case
* )
# <- variable.language
# ^ keyword.control.case.item
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
# <- punctuation.terminator.case
#^ punctuation.terminator.case
esac
# <- keyword.control.case.end

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

if [ "$1" != "" -a "$2" != "" ]; then
# <- keyword.control.if.begin
#  ^ support.function.test.begin
#         ^^ meta.function-call.arguments keyword.operator.logical
#               ^ meta.function-call.arguments variable.parameter punctuation.definition.parameter
#                ^ meta.function-call.arguments variable.parameter
#                       ^^ meta.function-call.arguments keyword.operator.logical
#                             ^ meta.function-call.arguments support.function.test.end
#                              ^ keyword.operator.logical.continue
#                                ^^^^ keyword.control.if.then
    local DIR=$1
    # <- storage.modifier
    #     ^^^ variable.other.readwrite.assignment
    #        ^ keyword.operator.assignment
    local TARGET=$2
    # <- storage.modifier
    #     ^^^^^^ variable.other.readwrite.assignment
    #           ^ keyword.operator.assignment
elif [ "$1" ]; then
# <- keyword.control.if.elif
#              ^^^^ keyword.control.if.then
    local DIR=$PWD
    # <- storage.modifier
    #     ^^^ variable.other.readwrite.assignment
    #        ^ keyword.operator.assignment
    local TARGET=$1
    # <- storage.modifier
    #     ^^^^^^ variable.other.readwrite.assignment
    #           ^ keyword.operator.assignment
fi
# <- keyword.control.if.end

case $TERM in
    sun-cmd)
        #  ^ keyword.control.case.item
        update_terminal_cwd() { print -Pn "\e]l%~\e\\" };;
        #                                              ^ meta.function punctuation.section.braces.end
        #                                               ^^ punctuation.terminator.case
    *xterm*|rxvt|(dt|k|E)term)
        # ^ variable.language
        #  ^ keyword.operator.logical
        #        ^ punctuation.section.parens.begin
        #           ^ keyword.operator.logical
        #             ^ keyword.operator.logical
        #               ^ punctuation.section.parens.end
        #                    ^ keyword.control.case.item
        update_terminal_cwd() { print -Pn "\e]2;%~\a" };;
        #                                             ^ meta.function punctuation.section.braces.end
        #                                              ^^ punctuation.terminator.case
    *)
    # <- variable.language
    #^ keyword.control.case.item
        update_terminal_cwd() {};;
        #                      ^ meta.function punctuation.section.braces.end
        #                       ^^ punctuation.terminator.case
esac

if   [ "$*" = '*' ]
then remotefilter="cat"
#               ^ variable.other.readwrite.assignment
#                ^ keyword.operator.assignment
else remotefilter="grep"
#               ^ variable.other.readwrite.assignment
#                 ^ string.unquoted string.quoted.double punctuation.definition.string.begin
     for glob in "$@"
     do  glob=$(
     #      ^ variable.other.readwrite.assignment
     #       ^ keyword.operator.assignment
     #        ^ string.unquoted variable.other.readwrite keyword.other.expansion
     #         ^ string.unquoted variable.other.readwrite punctuation.section.parens.begin
           echo "$glob" |
           sed -e 's@\*@[^ ]*@g' -e 's/\?/[^ ]/g'
           # <- string.unquoted variable.other.readwrite meta.function-call variable.function
         )
         # <- string.unquoted variable.other.readwrite punctuation.section.parens.end
         remotefilter="$remotefilter -e '^$glob ' -e ' $glob\$'"
         #          ^ variable.other.readwrite.assignment
         #           ^ keyword.operator.assignment
     done
     # <- keyword.control.done
fi
# <- keyword.control.if.end

################################
# And, or, pipes, redirections #
################################
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
                          #              ^
                                          # ^^ variable.function
                                          #    ^^^^^^ variable.parameter

foo 2>&1
#   ^ meta.function-call.arguments constant.numeric.file-descriptor
#    ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#      ^ meta.function-call.arguments constant.numeric.file-descriptor
foo | bar 2>&1
#         ^ meta.function-call.arguments constant.numeric.file-descriptor
#          ^^ meta.function-call.arguments keyword.operator.assignment.redirection
#            ^ meta.function-call.arguments constant.numeric.file-descriptor
foo | bar --opt1 arg1 < file.txt
#                     ^ meta.function-call.arguments keyword.operator.assignment.redirection
foo | bar --opt1 arg1 > file.txt
#                     ^ meta.function-call.arguments keyword.operator.assignment.redirection
foo -x arg1 &>/dev/null
#           ^^ meta.function-call.arguments keyword.operator.assignment.redirection
foo -x arg1 &> /dev/null
#           ^^ meta.function-call.arguments keyword.operator.assignment.redirection

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
#      ^ keyword.other.expansion
#       ^ punctuation.section.brackets.begin
#        ^ string.quoted.double punctuation.definition.string.begin
#         ^ string.quoted.double
#          ^ string.quoted.double punctuation.definition.string.end
#           ^ string.quoted.single punctuation.definition.string.begin
#            ^ string.quoted.single
#             ^ string.quoted.single punctuation.definition.string.end
#               ^ punctuation.section.brackets.end
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
#      ^ - variable.other.readwrite - keyword.other.expansion
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
    #    ^ string.unquoted.heredoc punctuation.definition.string.begin
    #     ^ string.unquoted.heredoc keyword.control.heredoc-token
    #                                ^ string.unquoted.heredoc punctuation.definition.string.end
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

#############
# Functions #
#############

   logC () { [[ $# == 2 ]] && tput setaf $2 || tput setaf 3; echo -e "$1"; tput setaf 15; }
# <- meta.function - entity.name.function
#^^ meta.function - entity.name.function
#  ^^^^ meta.function entity.name.function
#       ^ meta.function punctuation.section.parens.begin
#        ^ meta.function punctuation.section.parens.end
#         ^ meta.function
#          ^ meta.function punctuation.section.braces.begin
#            ^^ meta.function support.function.test.begin
#               ^ meta.function meta.function-call.arguments variable.other.readwrite keyword.other.expansion
#                ^ meta.function meta.function-call.arguments variable.other.readwrite variable.language
#                  ^^ meta.function meta.function-call.arguments keyword.operator.logical
#                       ^^ meta.function meta.function-call.arguments support.function.test.end
#                          ^^ meta.function keyword.operator.logical.and
logExit () {
#^^^^^^ meta.function entity.name.function
#       ^ meta.function punctuation.section.parens.begin
#        ^ meta.function punctuation.section.parens.end
#         ^ meta.function
#          ^ meta.function punctuation.section.braces.begin
  [[ $1 == '0' ]] && tput setaf 2  || tput setaf 1;
  # <- meta.function support.function.test.begin
  #            ^^ meta.function meta.function-call.arguments support.function.test.end
  [[ $1 == '0' ]] && echo -e "$2 PASSED" || echo -e "$2 FAILED";
  # <- meta.function support.function.test.begin
  #            ^^ meta.function meta.function-call.arguments support.function.test.end
  #               ^^ meta.function keyword.operator.logical.and
  #                  ^^^^ meta.function meta.function-call support.function.echo
  tput setaf 15;
  # <- meta.function meta.function-call variable.function
  #            ^ meta.function keyword.operator.logical.continue
  [[ $1 == '0' ]] || exit -1
  # <- meta.function support.function.test.begin
  #            ^^ meta.function meta.function-call.arguments support.function.test.end
  #               ^^ meta.function keyword.operator.logical.or
  #                  ^^^^ meta.function meta.function-call support.function.exit
}

function connect_to_db() {
# <- meta.function storage.type.function
#       ^ meta.function
#        ^^^^^^^^^^^^^ meta.function entity.name.function
#                     ^ meta.function punctuation.section.parens.begin
#                      ^ meta.function punctuation.section.parens.end
#                       ^ meta.function
#                        ^ meta.function punctuation.section.braces.begin
    export PGPASSWORD=$(cat "$DOKKU_ROOT/.postgresql/pwd_$APP")
    # <- meta.function storage.modifier
    #      ^^^^^^^^^^ meta.function variable.other.readwrite.assignment
    #                ^ meta.function keyword.operator.assignment
    IP=$(get_postgresql_ip)
    # <- meta.function variable.other.readwrite.assignment
    # ^ meta.function keyword.operator.assignment
    #  ^ meta.function string.unquoted variable.other.readwrite keyword.other.expansion
    #   ^ meta.function string.unquoted variable.other.readwrite punctuation.section.parens.begin
    #    ^^^^^^^^^^^^^^^^^ meta.function string.unquoted variable.other.readwrite meta.function-call variable.function
    #                     ^ meta.function string.unquoted variable.other.readwrite punctuation.section.parens.end
    PORT=$(get_postgresql_port)
    # <- meta.function variable.other.readwrite.assignment
    #   ^ meta.function keyword.operator.assignment
    #    ^ meta.function string.unquoted variable.other.readwrite keyword.other.expansion
    #     ^ meta.function string.unquoted variable.other.readwrite punctuation.section.parens.begin
    #      ^^^^^^^^^^^^^^^^^^^ meta.function string.unquoted variable.other.readwrite meta.function-call variable.function
    #                         ^ meta.function string.unquoted variable.other.readwrite punctuation.section.parens.end

    psql -h $IP -p $PORT -U root db
}
# <- meta.function punctuation.section.braces.end

# <- - meta.function

logExit $? $WEIRD
# <- meta.function-call variable.function
#       ^ meta.function-call.arguments variable.other.readwrite keyword.other.expansion
#        ^ meta.function-call.arguments variable.other.readwrite variable.language
#          ^ meta.function-call.arguments variable.other.readwrite keyword.other.expansion
#           ^^^^^ meta.function-call.arguments variable.other.readwrite

declare -f _init_completion > /dev/null && complete -F _upto upto
# <- storage.modifier
#       ^ variable.parameter punctuation
#        ^ variable.parameter
#                           ^ keyword.operator.assignment.redirection

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
