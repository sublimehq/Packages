# SYNTAX TEST "Packages/R/R.sublime-syntax"

# comment
# ^^^^^^^^ comment.line.number-sign.r

# no section ---
# ^^^^^^^^^^^^^^^ comment.line.number-sign.r - entity

# section 1 ----
#^ comment.line.number-sign.r - entity
# ^^^^^^^^^ entity.name.section.r
#          ^^^^^^ comment.line.number-sign.r - entity

## section 1.1 ----
#^^ comment.line.number-sign.r - entity
#  ^^^^^^^^^^^ entity.name.section.r
#             ^^^^^^ comment.line.number-sign.r - entity

  #### section 1.1.1 ----
#^ - comment
# ^^^^^ comment.line.number-sign.r - entity
#      ^^^^^^^^^^^^^ entity.name.section.r
#                   ^^^^^^ comment.line.number-sign.r - entity

# no section ===
# ^^^^^^^^^^^^^^ comment.line.number-sign.r - entity

# section 2 ====
#^ comment.line.number-sign.r - entity
# ^^^^^^^^^ entity.name.section.r
#          ^^^^^^ comment.line.number-sign.r - entity

## section 2.1 ====
#^^ comment.line.number-sign.r - entity
#  ^^^^^^^^^^^ entity.name.section.r
#             ^^^^^^ comment.line.number-sign.r - entity

#### section 2.1.1 ====
#^^^^ comment.line.number-sign.r - entity
#    ^^^^^^^^^^^^^ entity.name.section.r
#                 ^^^^^^ comment.line.number-sign.r - entity

# no section ###
# ^^^^^^^^^^^^^^^ comment.line.number-sign.r - entity

# no section -=#=-
# ^^^^^^^^^^^^^^^^^ comment.line.number-sign.r - entity

# section 3 ####
#^ comment.line.number-sign.r - entity
# ^^^^^^^^^ entity.name.section.r
#          ^^^^^^ comment.line.number-sign.r - entity

## section 3.1 ####
#^^ comment.line.number-sign.r - entity
#  ^^^^^^^^^^^ entity.name.section.r
#             ^^^^^^ comment.line.number-sign.r - entity

#### section 3.1.1 ####
#^^^^ comment.line.number-sign.r - entity
#    ^^^^^^^^^^^^^ entity.name.section.r
#                 ^^^^^^ comment.line.number-sign.r - entity

# constants
pi
# <- support.constant.misc.r
letters
# <- support.constant.misc.r
LETTERS
# <- support.constant.misc.r
month.name
# <- support.constant.misc.r
month.abb
# <- support.constant.misc.r
TRUE
# <- constant.language.r
FALSE
# <- constant.language.r
NULL
# <- constant.language.r
NA
# <- constant.language.r
NA_integer_
# <- constant.language.r
NA_real_
# <- constant.language.r
NA_complex_
# <- constant.language.r
NA_character_
# <- constant.language.r
Inf
# <- constant.language.r
NaN
# <- constant.language.r

# complex imaginary

  0x1afi
# ^^ punctuation.definition.numeric.hexadecimal.r
# ^^^^^^ constant.numeric.imaginary.hexadecimal.r
#      ^ storage.type.numeric.r

  0X1afi 0X1afI
# ^^ punctuation.definition.numeric.hexadecimal.r
# ^^^^^^ constant.numeric.imaginary.hexadecimal.r
#      ^ storage.type.numeric.r
#        ^^ punctuation.definition.numeric.hexadecimal.r
#        ^^^^^^ constant.numeric.imaginary.hexadecimal.r
#             ^ invalid.illegal.numeric.r

  12i 12I
# ^^^ constant.numeric.imaginary.decimal.r
#   ^ storage.type.numeric.r
#     ^^^ constant.numeric.imaginary.decimal.r
#       ^ invalid.illegal.numeric.r

  12.i 12.I
# ^^^^ constant.numeric.imaginary.decimal.r
#   ^ punctuation.separator.decimal.r
#    ^ storage.type.numeric.r
#      ^^^^ constant.numeric.imaginary.decimal.r
#        ^ punctuation.separator.decimal.r
#         ^ invalid.illegal.numeric.r

  .345i
# ^^^^^ constant.numeric.imaginary.decimal.r
# ^ punctuation.separator.decimal.r
#     ^ storage.type.numeric.r

  12.34e-12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r
#   ^ punctuation.separator.decimal.r
#          ^ storage.type.numeric.r

  12.34E-12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r
#   ^ punctuation.separator.decimal.r
#          ^ storage.type.numeric.r

  12.34e+12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r
#   ^ punctuation.separator.decimal.r
#          ^ storage.type.numeric.r

  12.34E+12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r
#   ^ punctuation.separator.decimal.r
#          ^ storage.type.numeric.r

  12.3456i 12.3456I
# ^^^^^^^^ constant.numeric.imaginary.decimal.r
#   ^ punctuation.separator.decimal.r
#        ^ storage.type.numeric.r
#          ^^^^^^^^ constant.numeric.imaginary.decimal.r
#            ^ punctuation.separator.decimal.r
#                 ^ invalid.illegal.numeric.r

# integers

  0x1afL 0x1afl 0x1afx
# ^^ punctuation.definition.numeric.hexadecimal.r
# ^^^^^^ constant.numeric.integer.hexadecimal.r
#      ^ storage.type.numeric.r
#        ^^ punctuation.definition.numeric.hexadecimal.r
#        ^^^^^^ constant.numeric.integer.hexadecimal.r
#             ^ invalid.illegal.numeric.r
#               ^^^^^^ - constant

  0X1afL
# ^^ punctuation.definition.numeric.hexadecimal.r
# ^^^^^^ constant.numeric.integer.hexadecimal.r
#      ^ storage.type.numeric.r

  12L 12l
# ^^^ constant.numeric.integer.decimal.r
#   ^ storage.type.numeric.r
#     ^^^ constant.numeric.integer.decimal.r
#       ^ invalid.illegal.numeric.r

  12.L
# ^^^^ constant.numeric.integer.decimal.r
#   ^ punctuation.separator.decimal.r
#    ^ storage.type.numeric.r

  12.000L
# ^^^^^^^ constant.numeric.integer.decimal.r
#   ^ punctuation.separator.decimal.r
#       ^ storage.type.numeric.r

# floats

  0x1af
# ^^ punctuation.definition.numeric.hexadecimal.r
# ^^^^^ constant.numeric.float.hexadecimal.r

  0X1af
# ^^ punctuation.definition.numeric.hexadecimal.r
# ^^^^^ constant.numeric.float.hexadecimal.r

  12
# ^^ constant.numeric.float.decimal.r

  12.
# ^^^ constant.numeric.float.decimal.r
#   ^ punctuation.separator.decimal.r

  .3456
# ^ punctuation.separator.decimal.r
# ^^^^^ constant.numeric.float.decimal.r

  12.3456
# ^^^^^^^ constant.numeric.float.decimal.r
#   ^ punctuation.separator.decimal.r

  12.34e-12
# ^^^^^^^^^ constant.numeric.float.decimal.r
#   ^ punctuation.separator.decimal.r

  12.34E-12
# ^^^^^^^^^ constant.numeric.float.decimal.r
#   ^ punctuation.separator.decimal.r

  12.34e+12
# ^^^^^^^^^ constant.numeric.float.decimal.r
#   ^ punctuation.separator.decimal.r

  12.34E+12
# ^^^^^^^^^ constant.numeric.float.decimal.r
#   ^ punctuation.separator.decimal.r

  12e34
# ^^^^^ constant.numeric.float.decimal.r

  12e-34
# ^^^^^^ constant.numeric.float.decimal.r

  %*% %/% %% %o% %x% %:% %+%
# ^^^ keyword.operator.arithmetic.r
#     ^^^ keyword.operator.arithmetic.r
#         ^^ keyword.operator.arithmetic.r
#            ^^^ keyword.operator.arithmetic.r
#                ^^^ keyword.operator.arithmetic.r
#                    ^^^ keyword.operator.other.r
#                        ^^^ keyword.operator.other.r

  ** * - + / ^
# ^^ keyword.operator.arithmetic.r
#    ^ keyword.operator.arithmetic.r
#      ^ keyword.operator.arithmetic.r
#        ^ keyword.operator.arithmetic.r
#          ^ keyword.operator.arithmetic.r
#            ^ keyword.operator.arithmetic.r

  <<- <- = -> ->>
# ^^^ keyword.operator.assignment.r
#     ^^ keyword.operator.assignment.r
#        ^ keyword.operator.assignment.r
#          ^^ keyword.operator.assignment.r
#             ^^^ keyword.operator.assignment.r

  == != <= >= <> < > && & || | !
# ^^ keyword.operator.logical.r
#    ^^ keyword.operator.logical.r
#       ^^ keyword.operator.logical.r
#          ^^ keyword.operator.logical.r
#             ^^ keyword.operator.logical.r
#                ^ keyword.operator.logical.r
#                  ^ keyword.operator.logical.r
#                    ^^ keyword.operator.logical.r
#                       ^ keyword.operator.logical.r
#                         ^^ keyword.operator.logical.r
#                            ^ keyword.operator.logical.r
#                              ^ keyword.operator.logical.r

  %:% := ::: ::
# ^^^ keyword.operator.other.r
#     ^^ keyword.operator.other.r
#        ^^^ punctuation.accessor.colons.r
#            ^^ punctuation.accessor.colons.r

  ... : ~ @
# ^^^ keyword.other.r
#     ^ keyword.other.r
#       ^ keyword.other.r
#         ^ keyword.other.r

  foo.99 <- 1
#    ^^^ - constant.numeric
#        ^^ keyword.operator.assignment.r

x <- "abc"
# ^^ keyword.operator.assignment.r
#    ^ punctuation.definition.string.begin.r
#    ^^^^^ string.quoted.double.r
#        ^ punctuation.definition.string.end.r

x <- 'abc'
# ^^ keyword.operator.assignment.r
#    ^ punctuation.definition.string.begin.r
#    ^^^^^ string.quoted.single.r
#        ^ punctuation.definition.string.end.r

"\n\r"
#^^^^ constant.character.escape.r

r"(\foo)"
#<- storage.type.string.r
#^^ string.quoted.double.r punctuation.definition.string.begin.r
#  ^ -constant.character.escape.r
#      ^^ string.quoted.double.r punctuation.definition.string.end.r

r"[\foo]"
#<- storage.type.string.r
#^^ string.quoted.double.r punctuation.definition.string.begin.r
#  ^ -constant.character.escape.r
#      ^^ string.quoted.double.r punctuation.definition.string.end.r

r"{\foo}"
#<- storage.type.string.r
#^^ string.quoted.double.r punctuation.definition.string.begin.r
#  ^ -constant.character.escape.r
#      ^^ string.quoted.double.r punctuation.definition.string.end.r

r"-(\foo)-"
#<- storage.type.string.r
#^^^ string.quoted.double.r punctuation.definition.string.begin.r
#   ^ -constant.character.escape.r
#       ^^^ string.quoted.double.r punctuation.definition.string.end.r

r"--[\foo]--"
#<- storage.type.string.r
#^^^^ string.quoted.double.r punctuation.definition.string.begin.r
#    ^ -constant.character.escape.r
#        ^^^^ string.quoted.double.r punctuation.definition.string.end.r

r"---{\foo}---"
#<- storage.type.string.r
#^^^^^ string.quoted.double.r punctuation.definition.string.begin.r
#     ^ -constant.character.escape.r
#         ^^^^^ string.quoted.double.r punctuation.definition.string.end.r


R'(\foo)'
#<- storage.type.string.r
#^^ string.quoted.single.r punctuation.definition.string.begin.r
#  ^ -constant.character.escape.r
#      ^^ string.quoted.single.r punctuation.definition.string.end.r

R'[\foo]'
#<- storage.type.string.r
#^^ string.quoted.single.r punctuation.definition.string.begin.r
#  ^ -constant.character.escape.r
#      ^^ string.quoted.single.r punctuation.definition.string.end.r

R'{\foo}'
#<- storage.type.string.r
#^^ string.quoted.single.r punctuation.definition.string.begin.r
#  ^ -constant.character.escape.r
#      ^^ string.quoted.single.r punctuation.definition.string.end.r

R'-(\foo)-'
#<- storage.type.string.r
#^^^ string.quoted.single.r punctuation.definition.string.begin.r
#   ^ -constant.character.escape.r
#       ^^^ string.quoted.single.r punctuation.definition.string.end.r

R'--[\foo]--'
#<- storage.type.string.r
#^^^^ string.quoted.single.r punctuation.definition.string.begin.r
#    ^ -constant.character.escape.r
#        ^^^^ string.quoted.single.r punctuation.definition.string.end.r

R'---{\foo}---'
#<- storage.type.string.r
#^^^^^ string.quoted.single.r punctuation.definition.string.begin.r
#     ^ -constant.character.escape.r
#         ^^^^^ string.quoted.single.r punctuation.definition.string.end.r


if (1) {} else {return()}
#<- keyword.control.conditional.if.r
#         ^^^^ keyword.control.conditional.else.r
#               ^^^^^^ keyword.control.flow.return.r


for (i in 1:10) {
# <- keyword.control.loop.for.r
#   ^ punctuation.section.parens.begin.r
#      ^^ keyword.operator.word.r
#             ^ punctuation.section.parens.end.r
#               ^ punctuation.section.braces.begin.r
}
# <- punctuation.section.braces.end.r


repeat {next}
#^^^^^ keyword.control.loop.repeat.r
#       ^^^^ keyword.control.flow.continue.r


while (1) {break}
#^^^^ keyword.control.loop.while.r
#          ^^^^^ keyword.control.flow.break.r


foo[bar]
#  ^ punctuation.section.brackets.single.begin.r
#  ^^^^^ meta.item-access.r
#   ^^^ meta.item-access.r meta.item-access.arguments.r
#      ^ punctuation.section.brackets.single.end.r


foo[[bar]]
#  ^^ punctuation.section.brackets.double.begin.r
#  ^^^^^^^ meta.item-access.r
#    ^^^ meta.item-access.r meta.item-access.arguments.r
#       ^^ punctuation.section.brackets.double.end.r


foo[1:10]
#    ^ meta.item-access.r meta.item-access.arguments.r keyword.other.r


f = function(x, y){ }
# <- meta.function.name.r
#^ meta.function.name.r - meta.function.r
# ^^^^^^^^^^ meta.function.r - meta.function.parameters.r
# <- entity.name.function.r
# ^ keyword.operator.assignment.r
#   ^^^^^^^^ storage.type.function.r
#           ^ punctuation.section.parameters.begin.r
#            ^^^^ meta.function.parameters.r - meta.function.r
#            ^ variable.parameter.r
#             ^ punctuation.separator.parameters.r
#                ^ punctuation.section.parameters.end.r
#                 ^ punctuation.section.braces.begin.r
#                   ^ punctuation.section.braces.end.r

function(x = "string", y = 2) {}
#        ^ variable.parameter.r
#            ^^^^^^^^ meta.function.parameters.r string.quoted.double.r
#                      ^ variable.parameter.r
#                          ^ meta.function.parameters.r constant.numeric.float.decimal.r

foo(200, x = function(x) {x + y})
#^^ meta.function-call.name.r - meta.function-call.arguments.r
# <- variable.function.r
#  ^ punctuation.section.arguments.begin.r
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.r - meta.function-call.name.r
#   ^^^ constant.numeric.float.decimal.r
#        ^ variable.parameter.r
#          ^ keyword.operator.assignment.r
#            ^^^^^^^^ meta.function.r storage.type.function.r - meta.function.parameters.r
#                    ^^^ meta.function.parameters.r
#                               ^ punctuation.section.arguments.end.r

.foo(200, x = function(x) {x + y})
# <- meta.function-call.name.r
#^^^ meta.function-call.name.r - meta.function-call.arguments.r
# <- variable.function.r
#   ^ punctuation.section.arguments.begin.r
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.r - meta.function-call.name.r
#    ^^^ constant.numeric.float.decimal.r
#         ^ variable.parameter.r
#           ^ keyword.operator.assignment.r
#             ^^^^^^^^ meta.function.r - meta.function.parameters.r
#                     ^^^ meta.function.parameters.r
#                                ^ punctuation.section.arguments.end.r


print.foo()
#^^^^^^^^ variable.function.r

  plot()
# ^^^^ meta.function-call.name.r - meta.function-call.arguments.r
#     ^^ meta.function-call.arguments.r - meta.function-call.name.r
# ^^^^ support.function.r

#' @param xyz abcde
#^^^^^^^^^^^^^^^^^^ comment.line.roxygen.r
#  ^^^^^^ keyword.other.r
#         ^^^ variable.parameter.r


    #' @param xyz abcde
#   ^^^^^^^^^^^^^^^^^^^ comment.line.roxygen.r
#      ^^^^^^ keyword.other.r
#             ^^^ variable.parameter.r

# issue #1019
foo[[bar[1]]] #
#         ^ source.r meta.item-access.r meta.item-access.arguments.r meta.item-access.r
#              ^ - meta.item-access.r


`1+1` = 2
# ^ - keyword.operator.arithmetic.r

# issue #1120
sum(x == 1)
#   ^^^^^^ - variable.parameter.r
#     ^^ keyword.operator.logical.r

function(
  x = 1, # this should be comment
#        ^ punctuation.definition.comment
#        ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign
  y = 2
)

foo(abc = function() {})
#   ^^^ variable.parameter

foo(
  NULL,
  bar = function() {}
# ^^^ variable.parameter
)

a[, "weight"];
# ^ meta.item-access.r meta.item-access.arguments.r punctuation.separator.parameters.r
#            ^ punctuation.terminator.semicolon.r

a[[1, 2]]
#   ^ meta.item-access.r meta.item-access.arguments.r punctuation.separator.parameters.r

foo:::bar
#  ^^^ punctuation.accessor.colons.r


foo$update()
#  ^ keyword.accessor.dollar.r
#   ^^^^^^ meta.function-call.name.r variable.function.r
#   ^^^^^^ - support.function.r
