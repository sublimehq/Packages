# SYNTAX TEST "Packages/ShellScript/Shell-Unix-Generic.sublime-syntax"
# <- source.shell comment.line.number-sign punctuation.definition.comment

#
# Scopes underlined with "!" are known to be incorrect and need fixing.
#


ls -la
#^ support.command

cat /etc/passwd|grep root
#^^ support.command
#              ^ keyword.operator.pipe
#               ^^^^ support.command

cat /etc/passwd 2>&1 >/dev/null
#               ^^^^ keyword.operator.redirect
#                    ^ keyword.operator.redirect

cat </etc/passwd
#   ^ keyword.operator.redirect

cat <(cat /etc/passwd | grep $USER)
#   ^^ punctuation.definition.string.begin
#                            ^^^^^ variable.other.normal
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.interpolated.process-substitution
#                                 ^ punctuation.definition.string.end

FOO=`echo "$USER" '$USER' $(echo foo) | grep $USER`
#  ^ keyword.operator.assign
#          ^^^^^ variable.other.normal
#                  ^^^^^ -variable.other.normal
#                                            ^^^^^ variable.other.normal
#         ^^^^^^^ string.quoted.double
#                 ^^^^^^^ string.quoted.single
#                         ^^^^^^^^^^^ string.interpolated.dollar
#   ^ punctuation.definition.string.begin
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.interpolated.backtick
#                                                 ^ punctuation.definition.string.end

FOO=`echo `echo bar``
#  ^ keyword.operator.assign
#   ^^^^^^^ string.interpolated.backtick
#          ^^^^^^^^ -string.interpolated.backtick

FOO=$(grep "$USER" '$USER' $(echo foo) `echo bar` | grep $USER)
#  ^ keyword.operator.assign
#           ^^^^^ variable.other.normal
#                                                        ^^^^^ variable.other.normal
#                   ^^^^^ -variable.other.normal
#          ^^^^^^^ string.quoted.double
#                  ^^^^^^^ string.quoted.single
#                          ^^ punctuation.definition.string.begin
#                                    ^ punctuation.definition.string.end
#                                      ^ punctuation.definition.string.begin
#                                               ^ punctuation.definition.string.end
#                                      ^^^^^^^^^^ string.interpolated.backtick
#   ^^ punctuation.definition.string.begin
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.interpolated.dollar
#                                                             ^ punctuation.definition.string.end

echo $((1+1))
#    ^^^ punctuation.definition.string.begin
#       ^ constant.numeric.integer
#        ^ keyword.operator.arithmetic
#         ^ constant.numeric.integer
#          ^^ punctuation.definition.string.end
#    ^^^^^^^^ string.other.math

cat <<< hello world
#   ^^^ keyword.operator.herestring
#       ^^^^^ string.unquoted
#             ^^^^^ -string

cat <<< "hello" world
#   ^^^ keyword.operator.herestring
#       ^^^^^^^ string.quoted.double
#               ^^^^^ -string

cat <<< 'hello' world
#   ^^^ keyword.operator.herestring
#       ^^^^^^^ string.quoted.single
#               ^^^^^ -string

test -f /usr/bin/gcc
#^^^ support.function.builtin
#                ^^^ -support.command

yum install gcc-c++
#^^ support.command
#   !!!!!!! -support.command
#           ^^^ -support.command

echo g++-something
#^^^ support.function.builtin
#    ^^^ -support.command

rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 # comment
#     ^^^^^^ -support.command
#                                                ^ comment

sudo systemctl -q enable avahi-daemon
#^^^ support.command.privileged
#                 !!!!!! -support.function.builtin

enable alias
#^^^^^ support.function.builtin
#      ^^^^^ support.function.builtin

  (true || false) && true; echo "hello" | cat
# ^^^^^^^^^^^^^^^ meta.scope.subshell
# ^ punctuation.definition.subshell
#       ^ -keyword.operator.pipe
#       ^^ keyword.operator.list
#                 ^^ keyword.operator.list
#               ^ punctuation.definition.subshell
#                        ^ keyword.operator.list
#                                       ^ keyword.operator.pipe

printf '"hello' "\"world\"\n"
#^^^^^ support.function.builtin
#      ^^^^^^^ string.quoted.single
#      ^ punctuation.definition.string.begin
#       ^ -punctuation.definition.string.begin
#             ^ punctuation.definition.string.end
#                ^^        constant.character.escape
#               ^^^^^^^^^^^^^ string.quoted.double
#               ^ punctuation.definition.string.begin
#                       ^^ constant.character.escape
#                           ^ punctuation.definition.string.end

FOO=something
#  ^ keyword.operator.assign

export FOO
#^^^^^ storage.modifier

FOO=("a" "b" "c")
#  ^ keyword.operator.assign
#   ^^^^^^^^^^^^^ -meta.scope.subshell

echo true|[[ ! "a" == "a" ]]
#        ^ keyword.operator.pipe
#         ^^ punctuation.definition.logical-expression
#            ^ keyword.operator.logical
#                  ^^ keyword.operator.logical
#                         ^^ punctuation.definition.logical-expression
#         ^^^^^^^^^^^^^^^^^^ meta.scope.logical-expression

echo true[[ "a" == "a" ]]
#        ^^^^^^^^^^^^^^^^ -meta.scope.logical-expression

[["a" == "a" ]]
#^^^^^^^^^^^^^^ -meta.scope.logical-expression

echo true|[ ! "a" == "a" ]
#        ^ keyword.operator.pipe
#         ^ punctuation.definition.logical-expression
#           ^ keyword.operator.logical
#                 ^^ keyword.operator.logical
#                        ^ punctuation.definition.logical-expression
#         ^^^^^^^^^^^^^^^^ meta.scope.logical-expression

echo true[ "a" == "a" ]
#        ^^^^^^^^^^^^^^ -meta.scope.logical-expression

["a" == "a" ]
#^^^^^^^^^^^^ -meta.scope.logical-expression

echo true|! grep something /etc/passwd
#    ^^^^ support.function.builtin
#        ^ keyword.operator.pipe
#         ^ -keyword.operator.pipe
#         ^ keyword.operator.logical
#           ^^^^ support.command

echo true| ! grep something /etc/passwd
#    ^^^^ support.function.builtin
#        ^ keyword.operator.pipe
#          ^ -keyword.operator.pipe
#          ^ keyword.operator.logical
#            ^^^^ support.command

!grep
#<- -keyword.operator.pipe
#<- -keyword.operator.logical
#^^^^ support.command

sudo !!
#^^^ support.command
#    ^^ -keyword.operator.pipe

echo "${FOO}$FOO-bar"
#^^^ support.function.builtin
#    ^^^^^^^^^^^^^^^^ string.quoted.double
#     ^^^^^^ variable.other.bracket
#           ^^^^ variable.other.normal
#               ^^^^ -variable

echo ${FOO:-1}
#    ^^ punctuation.definition.variable
#            ^ punctuation.definition.variable
#    ^^^^^^^^^ variable.other.bracket

echo ${FOO-$BAR}
#    ^^ punctuation.definition.variable
#              ^ punctuation.definition.variable
#    ^^^^^^^^^^^ variable.other.bracket

echo ${FOO:+1}
#    ^^ punctuation.definition.variable
#            ^ punctuation.definition.variable
#    ^^^^^^^^^ variable.other.bracket

echo ${FOO?"error error"}
#    ^^ punctuation.definition.variable
#                       ^ punctuation.definition.variable
#    ^^^^^^^^^^^^^^^^^^^^ variable.other.bracket

echo "blah ${FOO?"error error"} blah"
#          ^^ punctuation.definition.variable
#                             ^ punctuation.definition.variable
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
#          ^^^^^^^^^^^^^^^^^^^^ variable.other.bracket
#                ^ -punctuation.definition.string
#                            ^ -punctuation.definition.string

echo ${FOO#pattern}
#    ^^ punctuation.definition.variable
#                 ^ punctuation.definition.variable
#    ^^^^^^^^^^^^^^ variable.other.bracket

echo ${FOO##pattern}
#    ^^ punctuation.definition.variable
#                  ^ punctuation.definition.variable
#    ^^^^^^^^^^^^^^^ variable.other.bracket

{
#<- punctuation.definition.group
    echo "hello"
#^^^^^^^^^^^^^^^meta.scope.group
}
#<- punctuation.definition.group

{ ls -la; }
#^^^^^^^^^^ meta.scope.group

{ls -la; }
#^^^^^^^^^ -meta.scope.group

  function fun {
#^ -meta.function
# ^^^^^^^^^^^^^^ meta.function
# ^^^^^^^^ storage.type.function
#          ^^^ entity.name.function
#              ^ punctuation.definition.group
    local bar
#   ^^^^^ storage.modifier
    echo "hello"
#^^^^^^^^^^^^^^^meta.function
#^^^^^^^^^^^^^^^meta.scope.group
 }
#^ punctuation.definition.group
#^ meta.function
# ^ -meta.function

  fun () {
#^ -meta.function
# ^^^^^^^^ meta.function
# ^^^ entity.name.function
#     ^^ punctuation.definition.arguments
#        ^ punctuation.definition.group
    echo $1
#^^^^^^^^^^meta.function
#^^^^^^^^^^meta.scope.group
}
#<- punctuation.definition.group
#<- meta.function
#^ -meta.function

fun (hello)
#^^ -meta.function

export-function
#^^^^^ -storage.modifier
#      ^^^^^^^^ -support.command

while-if-for
#^^^^ -keyword
#     ^^ -keyword
#        ^^^ -keyword

  if [[ "true" -eq "true" ]]; then
#^ -meta.scope.if-block
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scope.if-block
# ^^ keyword.control
#    ^^ punctuation.definition.logical-expression
#              ^^^ keyword.operator.logical
#                         ^^ punctuation.definition.logical-expression
#                           ^ keyword.operator.list
#                             ^^^^ keyword.control
    false
#^^^^^^^^ meta.scope.if-block
#   ^^^^^ support.function.builtin
  fi
#^^^ meta.scope.if-block
# ^^ keyword.control
#   ^ -meta.scope.if-block

  for NUMBER in 1 2 3 4; do
#^ -meta.scope.for-in-loop
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scope.for-in-loop
# ^^^ keyword.control
#     ^^^^^^ variable.other.loop
#            ^^ keyword.control
#                      ^ keyword.operator.list
#                        ^^ keyword.control
    echo $NUMBER
#^^^^^^^^^^^^^^^ meta.scope.for-in-loop
#   ^^^^ support.function.builtin
#        ^^^^^^^ variable.other.normal
#        ^ punctuation.definition.variable
   done
#^^^^^^ meta.scope.for-in-loop
#  ^^^^ keyword.control
#      ^ -meta.scope.for-in-loop

  while [ 1 == 1 ]; do
#^ -meta.scope.while-loop
# ^^^^^^^^^^^^^^^^^^^^ meta.scope.while-loop
# ^^^^^ keyword.control
#       ^ punctuation.definition.logical-expression
#           ^^ keyword.operator.logical
#                ^ punctuation.definition.logical-expression
#       ^^^^^^^^^^ meta.scope.logical-expression
#                 ^ keyword.operator.list
#                   ^^ keyword.control
    true
#^^^^^^^ meta.scope.while-loop
#   ^^^^ support.function.builtin
  done
#^^^^^ meta.scope.while-loop
# ^^^^ keyword.control
#     ^ -meta.scope.while-loop

cat /etc/passwd | while read S; do
#               ^ keyword.operator.pipe
#                 ^^^^^^^^^^^^^^^^ meta.scope.while-loop
#                       ^^^^ support.function.builtin
    echo $S
done

  case "function" in
#^ -meta.scope.case-block
# ^^^^^^^^^^^^^^^^^^ meta.scope.case-block
# ^^^^ keyword.control
#                 ^^ keyword.control
    function)
#   ^^^^^^^^^ meta.scope.case-clause
#   ^^^^^^^^ -keyword
        echo "it is hello"
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scope.case-body
        ;;
#       ^^ punctuation.terminator.case-clause
#         ^ -meta.scope.case-clause
    *)
        echo "not hello"
        ;;
  esac
#^^^^^ meta.scope.case-block
# ^^^^ keyword.control
#     ^ -meta.scope.case-block
