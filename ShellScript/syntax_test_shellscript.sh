# SYNTAX TEST "Packages/ShellScript/Shell-Unix-Generic.sublime-syntax"
# <- source.shell comment.line.number-sign punctuation.definition.comment

#
# Scopes underlined with "!" are known to be incorrect and need fixing.
#


ls -la
#^ keyword.other

cat /etc/passwd|grep root
#^^ keyword.other
#              ^ keyword.operator.pipe
#               ^^^^ keyword.other

cat /etc/passwd 2>&1 >/dev/null
#               ^^^^ keyword.operator.redirect
#                    ^ keyword.operator.redirect

cat </etc/passwd
#   ^ keyword.operator.redirect

cat <(cat /etc/passwd)
#     ^^^ keyword.other
#   ^^ punctuation.definition.string.begin
#   ^^^^^^^^^^^^^^^^^^ string.interpolated.process-substitution
#                    ^ punctuation.definition.string.end

FOO=`ls -la /etc | grep "$USER" 'user'`
#  ^ keyword.operator.assign
#    ^^ keyword.other
#                ^ keyword.operator.pipe
#                        ^^^^^ variable.other.normal
#                       ^^^^^^^ string.quoted.double
#                               ^^^^^^ string.quoted.single
#   ^ punctuation.definition.string.begin
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.interpolated.backtick
#                                     ^ punctuation.definition.string.end

FOO=$(ls -la /etc | grep "$USER" 'user')
#  ^ keyword.operator.assign
#     ^^ keyword.other
#                 ^ keyword.operator.pipe
#                         ^^^^^ variable.other.normal
#                        ^^^^^^^ string.quoted.double
#                                ^^^^^^ string.quoted.single
#   ^^ punctuation.definition.string.begin
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.interpolated.dollar
#                                      ^ punctuation.definition.string.end

test -f /usr/bin/gcc
#^^^ support.function.builtin
#                ^^^ -keyword

yum install gcc-c++
#^^ keyword.other
#   !!!!!!! -keyword
#           ^^^ -keyword

echo g++-something
#^^^ support.function.builtin
#    ^^^ -keyword

rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 # comment
#     ^^^^^^ -keyword
#                                                ^ comment

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
#      ^^^^^^^^ -keyword.other

while-if-for
#^^^^ -keyword
#     ^^ -keyword
#        ^^^ -keyword

  if [[ "true" -eq "true" ]]; then
#^ -meta.scope.if-block
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scope.if-block
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
# ^^^^^^^^^^^^^^^^^^^^^^^^ meta.scope.for-in-loop
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

  while [[ 1 == 1 ]]; do
#^ -meta.scope.while-loop
# ^^^^^^^^^^^^^^^^^^^^^ meta.scope.while-loop
# ^^^^^ keyword.control
#       ^^ punctuation.definition.logical-expression
#            ^^ keyword.operator.logical
#                 ^^ punctuation.definition.logical-expression
#       ^^^^^^^^^^^^ meta.scope.logical-expression
#                   ^ keyword.operator.list
#                     ^^ keyword.control
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
