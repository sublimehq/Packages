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

######
# <- comment.line.number-sign.r punctuation.definition.comment.r - entity
#^^^^^ comment.line.number-sign.r punctuation.definition.comment.r - entity
#     ^ comment.line.number-sign.r - entity - punctuation

# # ####
# <- comment.line.number-sign.r punctuation.definition.comment.r - entity
#^ comment.line.number-sign.r - entity - punctuation
# ^ comment.line.number-sign.r entity.name.section.r
#  ^^^^^^ comment.line.number-sign.r - entity - punctuation

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

<<<<<<< HEAD
#  <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
#  <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
#  <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff


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
# <- constant.language.boolean.true.r
FALSE
# <- constant.language.boolean.false.r
NULL
# <- constant.language.null.r
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
# ^^ meta.number.imaginary.hexadecimal.r constant.numeric.base.r
#   ^^^ meta.number.imaginary.hexadecimal.r constant.numeric.value.r
#      ^ meta.number.imaginary.hexadecimal.r constant.numeric.suffix.r

  0X1afi 0X1afI
# ^^ meta.number.imaginary.hexadecimal.r constant.numeric.base.r
#   ^^^ meta.number.imaginary.hexadecimal.r constant.numeric.value.r
#      ^ meta.number.imaginary.hexadecimal.r constant.numeric.suffix.r
#        ^^ meta.number.imaginary.hexadecimal.r constant.numeric.base.r
#          ^^^ meta.number.imaginary.hexadecimal.r constant.numeric.value.r
#             ^ meta.number.imaginary.hexadecimal.r invalid.illegal.numeric.r

  12i 12I
# ^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r
#     ^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#       ^ meta.number.imaginary.decimal.r invalid.illegal.numeric.r

  12.i 12.I
# ^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#    ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r
#      ^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#        ^ punctuation.separator.decimal.r
#         ^ meta.number.imaginary.decimal.r invalid.illegal.numeric.r

  .345i
# ^ punctuation.separator.decimal.r
# ^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#     ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r

  12.34e-12i
# ^^^^^^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#          ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r

  12.34E-12i
# ^^^^^^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#          ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r

  12.34e+12i
# ^^^^^^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#          ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r

  12.34E+12i
# ^^^^^^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#          ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r

  12.3456i 12.3456I
# ^^^^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#        ^ meta.number.imaginary.decimal.r constant.numeric.suffix.r
#          ^^^^^^^ meta.number.imaginary.decimal.r constant.numeric.value.r
#            ^ punctuation.separator.decimal.r
#                 ^ meta.number.imaginary.decimal.r invalid.illegal.numeric.r

# integers

  0x1afL 0x1afl 0x1afx
# ^^ meta.number.integer.hexadecimal.r constant.numeric.base.r
#   ^^^ meta.number.integer.hexadecimal.r constant.numeric.value.r
#      ^ meta.number.integer.hexadecimal.r constant.numeric.suffix.r
#        ^^ meta.number.integer.hexadecimal.r constant.numeric.base.r
#          ^^^ meta.number.integer.hexadecimal.r constant.numeric.value.r
#             ^ meta.number.integer.hexadecimal.r invalid.illegal.numeric.r
#               ^^^^^^ - constant

  0X1afL
# ^^ meta.number.integer.hexadecimal.r constant.numeric.base.r
#   ^^^ meta.number.integer.hexadecimal.r constant.numeric.value.r
#      ^ meta.number.integer.hexadecimal.r constant.numeric.suffix.r

  12L 12l
# ^^ meta.number.integer.decimal.r constant.numeric.value.r
#   ^ meta.number.integer.decimal.r constant.numeric.suffix.r
#     ^^ meta.number.integer.decimal.r constant.numeric.value.r
#       ^ meta.number.integer.decimal.r invalid.illegal.numeric.r

  12.L
# ^^^ meta.number.integer.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#    ^ meta.number.integer.decimal.r constant.numeric.suffix.r

  12.000L
# ^^^^^^ meta.number.integer.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r
#       ^ meta.number.integer.decimal.r constant.numeric.suffix.r

# floats

  0x1af
# ^^ meta.number.float.hexadecimal.r constant.numeric.base.r
#   ^^^ meta.number.float.hexadecimal.r constant.numeric.value.r

  0X1af
# ^^ meta.number.float.hexadecimal.r constant.numeric.base.r
#   ^^^ meta.number.float.hexadecimal.r constant.numeric.value.r

  12
# ^^ meta.number.float.decimal.r constant.numeric.value.r

  12.
# ^^^ meta.number.float.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r

  .3456
# ^ punctuation.separator.decimal.r
# ^^^^^ meta.number.float.decimal.r constant.numeric.value.r

  12.3456
# ^^^^^^^ meta.number.float.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r

  12.34e-12
# ^^^^^^^^^ meta.number.float.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r

  12.34E-12
# ^^^^^^^^^ meta.number.float.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r

  12.34e+12
# ^^^^^^^^^ meta.number.float.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r

  12.34E+12
# ^^^^^^^^^ meta.number.float.decimal.r constant.numeric.value.r
#   ^ punctuation.separator.decimal.r

  12e34
# ^^^^^ meta.number.float.decimal.r constant.numeric.value.r

  12e-34
# ^^^^^^ meta.number.float.decimal.r constant.numeric.value.r

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

  <<- <- = -> ->> |>
# ^^^ keyword.operator.assignment.r
#     ^^ keyword.operator.assignment.r
#        ^ keyword.operator.assignment.r
#          ^^ keyword.operator.assignment.r
#             ^^^ keyword.operator.assignment.r
#                 ^^ keyword.operator.assignment.redirection.r

  == != <= >= <> < > && & || | !
# ^^ keyword.operator.comparison.r
#    ^^ keyword.operator.comparison.r
#       ^^ keyword.operator.comparison.r
#          ^^ keyword.operator.comparison.r
#             ^^ keyword.operator.comparison.r
#                ^ keyword.operator.comparison.r
#                  ^ keyword.operator.comparison.r
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
#      ^^ keyword.operator.interation.in.r
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
# <- meta.function.identifier.r
#^ meta.function.identifier.r - meta.function.r
# ^^^^^^^^^^ meta.function.r - meta.function.parameters.r
# <- entity.name.function.r
# ^ keyword.operator.assignment.r
#   ^^^^^^^^ keyword.declaration.function.r
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
#                          ^ meta.function.parameters.r meta.number.float.decimal.r constant.numeric.value.r

foo(200, x = function(x) {x + y})
#^^ meta.function-call.identifier.r - meta.function-call.arguments.r
# <- variable.function.r
#  ^ punctuation.section.arguments.begin.r
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.r - meta.function-call.identifier.r
#   ^^^ meta.function-call.arguments.r meta.number.float.decimal.r constant.numeric.value.r
#        ^ variable.parameter.r
#          ^ keyword.operator.assignment.r
#            ^^^^^^^^ meta.function.r keyword.declaration.function.r - meta.function.parameters.r
#                    ^^^ meta.function.parameters.r
#                               ^ punctuation.section.arguments.end.r

.foo(200, x = function(x) {x + y})
# <- meta.function-call.identifier.r
#^^^ meta.function-call.identifier.r - meta.function-call.arguments.r
# <- variable.function.r
#   ^ punctuation.section.arguments.begin.r
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.r - meta.function-call.identifier.r
#    ^^^ meta.number.float.decimal.r constant.numeric.value.r
#         ^ variable.parameter.r
#           ^ keyword.operator.assignment.r
#             ^^^^^^^^ meta.function.r - meta.function.parameters.r
#                     ^^^ meta.function.parameters.r
#                                ^ punctuation.section.arguments.end.r


print.foo()
#^^^^^^^^ variable.function.r

  plot()
# ^^^^ meta.function-call.identifier.r - meta.function-call.arguments.r
#     ^^ meta.function-call.arguments.r - meta.function-call.identifier.r
# ^^^^ support.function.r

#' @param xyz abcde
#^^^^^^^^^^^^^^^^^^ comment.line.documentation.r
#  ^^^^^^ keyword.other.r
#         ^^^ variable.parameter.r


    #' @param xyz abcde
#   ^^^^^^^^^^^^^^^^^^^ comment.line.documentation.r
#      ^^^^^^ keyword.other.r
#             ^^^ variable.parameter.r


#' "@param xyz abcde"
#  ^^^^^^^^^ comment.line.documentation.r
#   ^^^^^^ -keyword.other.r



# issue #1019
foo[[bar[1]]] #
#         ^ source.r meta.item-access.r meta.item-access.arguments.r meta.item-access.r
#              ^ - meta.item-access.r


`1+1` = 2
# ^ - keyword.operator.arithmetic.r

# issue #1120
sum(x == 1)
#   ^^^^^^ - variable.parameter.r
#     ^^ keyword.operator.comparison.r

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
#   ^^^^^^ meta.function-call.identifier.r variable.function.r
#   ^^^^^^ - support.function.r
