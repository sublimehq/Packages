# SYNTAX TEST "Packages/Python/Python.sublime-syntax"

  t"""^A {t"""{foo + """bar"""}"""!r} \t-string[0-9]$ \""""
# ^ - meta.string
#  ^^^^^^ meta.string.python - meta.interpolation
#        ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#          ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#             ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                    ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                             ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                              ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                 ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                                          ^ - meta.string
# ^ - string
#  ^^^^^^ string.quoted.double.block.python
#        ^^ - string
#          ^^^ string.quoted.double.block.python
#             ^^^^^^^ - string
#                    ^^^^^^^^^ string.quoted.double.block.python
#                             ^ - string
#                              ^^^ string.quoted.double.block.python
#                                 ^^^ - string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block.python
# ^ storage.type.string.python
#  ^^^ punctuation.definition.string.begin.python
#     ^^^ - constant - keyword - punctuation
#        ^ punctuation.section.interpolation.begin.python
#         ^ storage.type.string.python
#          ^^^ punctuation.definition.string.begin.python
#             ^ punctuation.section.interpolation.begin.python
#              ^^^ meta.generic-name.python
#                  ^ keyword.operator.arithmetic.python
#                    ^^^ punctuation.definition.string.begin.python
#                          ^^^ punctuation.definition.string.end.python
#                             ^ punctuation.section.interpolation.end.python
#                              ^^^ punctuation.definition.string.end.python
#                                 ^^ storage.modifier.conversion.python
#                                   ^ punctuation.section.interpolation.end.python
#                                     ^^ constant.character.escape.python
#                                       ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                                     ^^ constant.character.escape.python
#                                                       ^^^ punctuation.definition.string.end.python

  T"""^A {t"""{foo + """bar"""}"""!r} \t-string[0-9]$ \""""
# ^ - meta.string
#  ^^^^^^ meta.string.python - meta.interpolation
#        ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#          ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#             ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                    ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                             ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                              ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                 ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
# ^ - string
#  ^^^^^^ string.quoted.double.block.python
#        ^^ - string
#          ^^^ string.quoted.double.block.python
#             ^^^^^^^ - string
#                    ^^^^^^^^^ string.quoted.double.block.python
#                             ^ - string
#                              ^^^ string.quoted.double.block.python
#                                 ^^^ - string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block.python
# ^ storage.type.string.python
#  ^^^ punctuation.definition.string.begin.python
#     ^^^ - constant - keyword - punctuation
#        ^ punctuation.section.interpolation.begin.python
#         ^ storage.type.string.python
#          ^^^ punctuation.definition.string.begin.python
#             ^ punctuation.section.interpolation.begin.python
#              ^^^ meta.generic-name.python
#                  ^ keyword.operator.arithmetic.python
#                    ^^^ punctuation.definition.string.begin.python
#                          ^^^ punctuation.definition.string.end.python
#                             ^ punctuation.section.interpolation.end.python
#                              ^^^ punctuation.definition.string.end.python
#                                 ^^ storage.modifier.conversion.python
#                                   ^ punctuation.section.interpolation.end.python
#                                     ^^ constant.character.escape.python
#                                       ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                                     ^^ constant.character.escape.python
#                                                       ^^^ punctuation.definition.string.end.python
#                                                          ^ - meta.string

  rt"""^A {t"""{foo + """bar"""}"""!r} \t-string[0-9]$ \""""
# ^^ - meta.string
#   ^^^^^^ meta.string.python - meta.interpolation
#         ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#           ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#              ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                     ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                              ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                               ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                  ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
# ^^ - string
#   ^^^^^^ string.quoted.double.block.python
#         ^^ - string
#           ^^^ string.quoted.double.block.python
#              ^^^^^^^ - string
#                     ^^^^^^^^^ string.quoted.double.block.python
#                              ^ - string
#                               ^^^ string.quoted.double.block.python
#                                  ^^^ - string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block.python
# ^^ storage.type.string.python
#   ^^^ punctuation.definition.string.begin.python
#      ^ keyword.control.anchor.regexp
#       ^^ - constant - keyword - punctuation
#         ^ punctuation.section.interpolation.begin.python
#          ^ storage.type.string.python
#           ^^^ punctuation.definition.string.begin.python
#              ^ punctuation.section.interpolation.begin.python
#               ^^^ meta.generic-name.python
#                   ^ keyword.operator.arithmetic.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^^ punctuation.definition.string.end.python
#                              ^ punctuation.section.interpolation.end.python
#                               ^^^ punctuation.definition.string.end.python
#                                  ^^ storage.modifier.conversion.python
#                                    ^ punctuation.section.interpolation.end.python
#                                      ^^ constant.character.escape.regexp
#                                        ^^^^^^^ - constant - keyword - punctuation
#                                               ^^^^^ meta.set.regexp
#                                                    ^ keyword.control.anchor.regexp
#                                                     ^ - constant - keyword - punctuation
#                                                      ^^ constant.character.escape.regexp
#                                                        ^^^ punctuation.definition.string.end.python
#                                                           ^ - meta.string

  RT"""^A {t"""{foo + """bar"""}"""!r} \t-string[0-9]$ \""""
# ^^ - meta.string
#   ^^^^^^ meta.string.python - meta.interpolation
#         ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#           ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#              ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                     ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                              ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                               ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                  ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
# ^^ - string
#   ^^^^^^ string.quoted.double.block.python
#         ^^ - string
#           ^^^ string.quoted.double.block.python
#              ^^^^^^^ - string
#                     ^^^^^^^^^ string.quoted.double.block.python
#                              ^ - string
#                               ^^^ string.quoted.double.block.python
#                                  ^^^ - string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.block.python
# ^^ storage.type.string.python
#   ^^^ punctuation.definition.string.begin.python
#      ^^^ - constant - keyword - punctuation
#         ^ punctuation.section.interpolation.begin.python
#          ^ storage.type.string.python
#           ^^^ punctuation.definition.string.begin.python
#              ^ punctuation.section.interpolation.begin.python
#               ^^^ meta.generic-name.python
#                   ^ keyword.operator.arithmetic.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^^ punctuation.definition.string.end.python
#                              ^ punctuation.section.interpolation.end.python
#                               ^^^ punctuation.definition.string.end.python
#                                  ^^ storage.modifier.conversion.python
#                                    ^ punctuation.section.interpolation.end.python
#                                      ^^^^^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                                        ^^^ punctuation.definition.string.end.python
#                                                           ^ - meta.string


  t'''^A {t'''{foo + '''bar'''}'''!r} \t-string[0-9]$ \''''
# ^ - meta.string
#  ^^^^^^ meta.string.python - meta.interpolation
#        ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#          ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#             ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                    ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                             ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                              ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                 ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                                          ^ - meta.string
# ^ - string
#  ^^^^^^ string.quoted.single.block.python
#        ^^ - string
#          ^^^ string.quoted.single.block.python
#             ^^^^^^^ - string
#                    ^^^^^^^^^ string.quoted.single.block.python
#                             ^ - string
#                              ^^^ string.quoted.single.block.python
#                                 ^^^ - string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block.python
# ^ storage.type.string.python
#  ^^^ punctuation.definition.string.begin.python
#     ^^^ - constant - keyword - punctuation
#        ^ punctuation.section.interpolation.begin.python
#         ^ storage.type.string.python
#          ^^^ punctuation.definition.string.begin.python
#             ^ punctuation.section.interpolation.begin.python
#              ^^^ meta.generic-name.python
#                  ^ keyword.operator.arithmetic.python
#                    ^^^ punctuation.definition.string.begin.python
#                          ^^^ punctuation.definition.string.end.python
#                             ^ punctuation.section.interpolation.end.python
#                              ^^^ punctuation.definition.string.end.python
#                                 ^^ storage.modifier.conversion.python
#                                   ^ punctuation.section.interpolation.end.python
#                                     ^^ constant.character.escape.python
#                                       ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                                     ^^ constant.character.escape.python
#                                                       ^^^ punctuation.definition.string.end.python

  T'''^A {t'''{foo + '''bar'''}'''!r} \t-string[0-9]$ \''''
# ^ - meta.string
#  ^^^^^^ meta.string.python - meta.interpolation
#        ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#          ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#             ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                    ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                             ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                              ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                 ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                                          ^ - meta.string
# ^ - string
#  ^^^^^^ string.quoted.single.block.python
#        ^^ - string
#          ^^^ string.quoted.single.block.python
#             ^^^^^^^ - string
#                    ^^^^^^^^^ string.quoted.single.block.python
#                             ^ - string
#                              ^^^ string.quoted.single.block.python
#                                 ^^^ - string
#                                    ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block.python
# ^ storage.type.string.python
#  ^^^ punctuation.definition.string.begin.python
#     ^^^ - constant - keyword - punctuation
#        ^ punctuation.section.interpolation.begin.python
#         ^ storage.type.string.python
#          ^^^ punctuation.definition.string.begin.python
#             ^ punctuation.section.interpolation.begin.python
#              ^^^ meta.generic-name.python
#                  ^ keyword.operator.arithmetic.python
#                    ^^^ punctuation.definition.string.begin.python
#                          ^^^ punctuation.definition.string.end.python
#                             ^ punctuation.section.interpolation.end.python
#                              ^^^ punctuation.definition.string.end.python
#                                 ^^ storage.modifier.conversion.python
#                                   ^ punctuation.section.interpolation.end.python
#                                     ^^ constant.character.escape.python
#                                       ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                                     ^^ constant.character.escape.python
#                                                       ^^^ punctuation.definition.string.end.python

  rt'''^A {t'''{foo + '''bar'''}'''!r} \t-string[0-9]$ \''''
# ^^ - meta.string
#   ^^^^^^ meta.string.python - meta.interpolation
#         ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#           ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#              ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                     ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                              ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                               ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                  ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
# ^^ - string
#   ^^^^^^ string.quoted.single.block.python
#         ^^ - string
#           ^^^ string.quoted.single.block.python
#              ^^^^^^^ - string
#                     ^^^^^^^^^ string.quoted.single.block.python
#                              ^ - string
#                               ^^^ string.quoted.single.block.python
#                                  ^^^ - string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block.python
# ^^ storage.type.string.python
#   ^^^ punctuation.definition.string.begin.python
#      ^ keyword.control.anchor.regexp
#       ^^ - constant - keyword - punctuation
#         ^ punctuation.section.interpolation.begin.python
#          ^ storage.type.string.python
#           ^^^ punctuation.definition.string.begin.python
#              ^ punctuation.section.interpolation.begin.python
#               ^^^ meta.generic-name.python
#                   ^ keyword.operator.arithmetic.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^^ punctuation.definition.string.end.python
#                              ^ punctuation.section.interpolation.end.python
#                               ^^^ punctuation.definition.string.end.python
#                                  ^^ storage.modifier.conversion.python
#                                    ^ punctuation.section.interpolation.end.python
#                                      ^^ constant.character.escape.regexp
#                                        ^^^^^^^ - constant - keyword - punctuation
#                                               ^^^^^ meta.set.regexp
#                                                    ^ keyword.control.anchor.regexp
#                                                     ^ - constant - keyword - punctuation
#                                                      ^^ constant.character.escape.regexp
#                                                        ^^^ punctuation.definition.string.end.python
#                                                           ^ - meta.string

  RT'''^A {t'''{foo + '''bar'''}'''!r} \t-string[0-9]$ \''''
# ^^ - meta.string
#   ^^^^^^ meta.string.python - meta.interpolation
#         ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#           ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#              ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                     ^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                              ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                               ^^^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                                  ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
# ^^ - string
#   ^^^^^^ string.quoted.single.block.python
#         ^^ - string
#           ^^^ string.quoted.single.block.python
#              ^^^^^^^ - string
#                     ^^^^^^^^^ string.quoted.single.block.python
#                              ^ - string
#                               ^^^ string.quoted.single.block.python
#                                  ^^^ - string
#                                     ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.block.python
# ^^ storage.type.string.python
#   ^^^ punctuation.definition.string.begin.python
#      ^^^ - constant - keyword - punctuation
#         ^ punctuation.section.interpolation.begin.python
#          ^ storage.type.string.python
#           ^^^ punctuation.definition.string.begin.python
#              ^ punctuation.section.interpolation.begin.python
#               ^^^ meta.generic-name.python
#                   ^ keyword.operator.arithmetic.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^^ punctuation.definition.string.end.python
#                              ^ punctuation.section.interpolation.end.python
#                               ^^^ punctuation.definition.string.end.python
#                                  ^^ storage.modifier.conversion.python
#                                    ^ punctuation.section.interpolation.end.python
#                                      ^^^^^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                                        ^^^ punctuation.definition.string.end.python
#                                                           ^ - meta.string

  t"^A {t"{foo + "bar"}"!r} \t-string[0-9]$ \""
# ^ - meta.string
#  ^^^^ meta.string.python - meta.interpolation
#      ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#        ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#         ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                     ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                       ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                          ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                              ^ - meta.string
# ^ - string
#  ^^^^ string.quoted.double.python
#      ^^ - string
#        ^ string.quoted.double.python
#         ^^^^^^^ - string
#                ^^^^^ string.quoted.double.python
#                     ^ - string
#                      ^ string.quoted.double.python
#                       ^^^ - string
#                          ^^^^^^^^^^^^^^^^^^^^ string.quoted.double.python
# ^ storage.type.string.python
#  ^ punctuation.definition.string.begin.python
#   ^^^ - constant - keyword - punctuation
#      ^ punctuation.section.interpolation.begin.python
#       ^ storage.type.string.python
#        ^ punctuation.definition.string.begin.python
#         ^ punctuation.section.interpolation.begin.python
#          ^^^ meta.generic-name.python
#              ^ keyword.operator.arithmetic.python
#                ^ punctuation.definition.string.begin.python
#                    ^ punctuation.definition.string.end.python
#                     ^ punctuation.section.interpolation.end.python
#                      ^ punctuation.definition.string.end.python
#                       ^^ storage.modifier.conversion.python
#                         ^ punctuation.section.interpolation.end.python
#                           ^^ constant.character.escape.python
#                             ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                           ^^ constant.character.escape.python
#                                             ^ punctuation.definition.string.end.python

  T"^A {t"{foo + "bar"}"!r} \t-string[0-9]$ \""
# ^ - meta.string
#  ^^^^ meta.string.python - meta.interpolation
#      ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#        ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#         ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                     ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                       ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                          ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                              ^ - meta.string
# ^ - string
#  ^^^^ string.quoted.double.python
#      ^^ - string
#        ^ string.quoted.double.python
#         ^^^^^^^ - string
#                ^^^^^ string.quoted.double.python
#                     ^ - string
#                      ^ string.quoted.double.python
#                       ^^^ - string
#                          ^^^^^^^^^^^^^^^^^^^^ string.quoted.double.python
# ^ storage.type.string.python
#  ^ punctuation.definition.string.begin.python
#   ^^^ - constant - keyword - punctuation
#      ^ punctuation.section.interpolation.begin.python
#       ^ storage.type.string.python
#        ^ punctuation.definition.string.begin.python
#         ^ punctuation.section.interpolation.begin.python
#          ^^^ meta.generic-name.python
#              ^ keyword.operator.arithmetic.python
#                ^ punctuation.definition.string.begin.python
#                    ^ punctuation.definition.string.end.python
#                     ^ punctuation.section.interpolation.end.python
#                      ^ punctuation.definition.string.end.python
#                       ^^ storage.modifier.conversion.python
#                         ^ punctuation.section.interpolation.end.python
#                           ^^ constant.character.escape.python
#                             ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                           ^^ constant.character.escape.python
#                                             ^ punctuation.definition.string.end.python

  rt"^A {t"{foo + "bar"}"!r} \t-string[0-9]$ \""
# ^^ - meta.string
#   ^^^^ meta.string.python - meta.interpolation
#       ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#         ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#          ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                 ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                       ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                        ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                           ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                               ^ - meta.string
# ^^ - string
#   ^^^^ string.quoted.double.python
#       ^^ - string
#         ^ string.quoted.double.python
#          ^^^^^^^ - string
#                 ^^^^^ string.quoted.double.python
#                      ^ - string
#                       ^ string.quoted.double.python
#                        ^^^ - string
#                           ^^^^^^^^^^^^^^^^^^^^ string.quoted.double.python
# ^^ storage.type.string.python
#   ^ punctuation.definition.string.begin.python
#    ^ keyword.control.anchor.regexp
#     ^^ - constant - keyword - punctuation
#       ^ punctuation.section.interpolation.begin.python
#        ^ storage.type.string.python
#         ^ punctuation.definition.string.begin.python
#          ^ punctuation.section.interpolation.begin.python
#           ^^^ meta.generic-name.python
#               ^ keyword.operator.arithmetic.python
#                 ^ punctuation.definition.string.begin.python
#                     ^ punctuation.definition.string.end.python
#                      ^ punctuation.section.interpolation.end.python
#                       ^ punctuation.definition.string.end.python
#                        ^^ storage.modifier.conversion.python
#                          ^ punctuation.section.interpolation.end.python
#                            ^^ constant.character.escape.regexp
#                              ^^^^^^^ - constant - keyword - punctuation
#                                     ^^^^^ meta.set.regexp
#                                          ^ keyword.control.anchor.regexp
#                                           ^ - constant - keyword - punctuation
#                                            ^^ constant.character.escape.regexp
#                                              ^ punctuation.definition.string.end.python

  RT"^A {t"{foo + "bar"}"!r} \t-string[0-9]$ \""
# ^^ - meta.string
#   ^^^^ meta.string.python - meta.interpolation
#       ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#         ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#          ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                 ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                       ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                        ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                           ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                               ^ - meta.string
# ^^ - string
#   ^^^^ string.quoted.double.python
#       ^^ - string
#         ^ string.quoted.double.python
#          ^^^^^^^ - string
#                 ^^^^^ string.quoted.double.python
#                      ^ - string
#                       ^ string.quoted.double.python
#                        ^^^ - string
#                           ^^^^^^^^^^^^^^^^^^^^ string.quoted.double.python
# ^^ storage.type.string.python
#   ^ punctuation.definition.string.begin.python
#    ^^^ - constant - keyword - punctuation
#       ^ punctuation.section.interpolation.begin.python
#        ^ storage.type.string.python
#         ^ punctuation.definition.string.begin.python
#          ^ punctuation.section.interpolation.begin.python
#           ^^^ meta.generic-name.python
#               ^ keyword.operator.arithmetic.python
#                 ^ punctuation.definition.string.begin.python
#                     ^ punctuation.definition.string.end.python
#                      ^ punctuation.section.interpolation.end.python
#                       ^ punctuation.definition.string.end.python
#                        ^^ storage.modifier.conversion.python
#                          ^ punctuation.section.interpolation.end.python
#                            ^^^^^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                              ^ punctuation.definition.string.end.python

  t'^A {t'{foo + 'bar'}'!r} \t-string[0-9]$ \''
# ^ - meta.string
#  ^^^^ meta.string.python - meta.interpolation
#      ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#        ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#         ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                     ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                       ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                          ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                              ^ - meta.string
# ^ - string
#  ^^^^ string.quoted.single.python
#      ^^ - string
#        ^ string.quoted.single.python
#         ^^^^^^^ - string
#                ^^^^^ string.quoted.single.python
#                     ^ - string
#                      ^ string.quoted.single.python
#                       ^^^ - string
#                          ^^^^^^^^^^^^^^^^^^^^ string.quoted.single.python
# ^ storage.type.string.python
#  ^ punctuation.definition.string.begin.python
#   ^^^ - constant - keyword - punctuation
#      ^ punctuation.section.interpolation.begin.python
#       ^ storage.type.string.python
#        ^ punctuation.definition.string.begin.python
#         ^ punctuation.section.interpolation.begin.python
#          ^^^ meta.generic-name.python
#              ^ keyword.operator.arithmetic.python
#                ^ punctuation.definition.string.begin.python
#                    ^ punctuation.definition.string.end.python
#                     ^ punctuation.section.interpolation.end.python
#                      ^ punctuation.definition.string.end.python
#                       ^^ storage.modifier.conversion.python
#                         ^ punctuation.section.interpolation.end.python
#                           ^^ constant.character.escape.python
#                             ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                           ^^ constant.character.escape.python
#                                             ^ punctuation.definition.string.end.python

  T'^A {t'{foo + 'bar'}'!r} \t-string[0-9]$ \''
# ^ - meta.string
#  ^^^^ meta.string.python - meta.interpolation
#      ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#        ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#         ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                     ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                       ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                          ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                              ^ - meta.string
# ^ - string
#  ^^^^ string.quoted.single.python
#      ^^ - string
#        ^ string.quoted.single.python
#         ^^^^^^^ - string
#                ^^^^^ string.quoted.single.python
#                     ^ - string
#                      ^ string.quoted.single.python
#                       ^^^ - string
#                          ^^^^^^^^^^^^^^^^^^^^ string.quoted.single.python
# ^ storage.type.string.python
#  ^ punctuation.definition.string.begin.python
#   ^^^ - constant - keyword - punctuation
#      ^ punctuation.section.interpolation.begin.python
#       ^ storage.type.string.python
#        ^ punctuation.definition.string.begin.python
#         ^ punctuation.section.interpolation.begin.python
#          ^^^ meta.generic-name.python
#              ^ keyword.operator.arithmetic.python
#                ^ punctuation.definition.string.begin.python
#                    ^ punctuation.definition.string.end.python
#                     ^ punctuation.section.interpolation.end.python
#                      ^ punctuation.definition.string.end.python
#                       ^^ storage.modifier.conversion.python
#                         ^ punctuation.section.interpolation.end.python
#                           ^^ constant.character.escape.python
#                             ^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                           ^^ constant.character.escape.python
#                                             ^ punctuation.definition.string.end.python

  rt'^A {t'{foo + 'bar'}'!r} \t-string[0-9]$ \''
# ^^ - meta.string
#   ^^^^ meta.string.python - meta.interpolation
#       ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#         ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#          ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                 ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                       ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                        ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                           ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                               ^ - meta.string
# ^^ - string
#   ^^^^ string.quoted.single.python
#       ^^ - string
#         ^ string.quoted.single.python
#          ^^^^^^^ - string
#                 ^^^^^ string.quoted.single.python
#                      ^ - string
#                       ^ string.quoted.single.python
#                        ^^^ - string
#                           ^^^^^^^^^^^^^^^^^^^^ string.quoted.single.python
# ^^ storage.type.string.python
#   ^ punctuation.definition.string.begin.python
#    ^ keyword.control.anchor.regexp
#     ^^ - constant - keyword - punctuation
#       ^ punctuation.section.interpolation.begin.python
#        ^ storage.type.string.python
#         ^ punctuation.definition.string.begin.python
#          ^ punctuation.section.interpolation.begin.python
#           ^^^ meta.generic-name.python
#               ^ keyword.operator.arithmetic.python
#                 ^ punctuation.definition.string.begin.python
#                     ^ punctuation.definition.string.end.python
#                      ^ punctuation.section.interpolation.end.python
#                       ^ punctuation.definition.string.end.python
#                        ^^ storage.modifier.conversion.python
#                          ^ punctuation.section.interpolation.end.python
#                            ^^ constant.character.escape.regexp
#                              ^^^^^^^ - constant - keyword - punctuation
#                                     ^^^^^ meta.set.regexp
#                                          ^ keyword.control.anchor.regexp
#                                           ^ - constant - keyword - punctuation
#                                            ^^ constant.character.escape.regexp
#                                              ^ punctuation.definition.string.end.python

  RT'^A {t'{foo + 'bar'}'!r} \t-string[0-9]$ \''
# ^^ - meta.string
#   ^^^^ meta.string.python - meta.interpolation
#       ^^ meta.string.python meta.interpolation.python - meta.string meta.string
#         ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#          ^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                 ^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python meta.string.python
#                      ^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                       ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                        ^^^ meta.string.python meta.interpolation.python - meta.string meta.string
#                           ^^^^^^^^^^^^^^^^^^^^ meta.string.python - meta.interpolation - meta.string meta.string
#                                               ^ - meta.string
# ^^ - string
#   ^^^^ string.quoted.single.python
#       ^^ - string
#         ^ string.quoted.single.python
#          ^^^^^^^ - string
#                 ^^^^^ string.quoted.single.python
#                      ^ - string
#                       ^ string.quoted.single.python
#                        ^^^ - string
#                           ^^^^^^^^^^^^^^^^^^^^ string.quoted.single.python
# ^^ storage.type.string.python
#   ^ punctuation.definition.string.begin.python
#    ^^^ - constant - keyword - punctuation
#       ^ punctuation.section.interpolation.begin.python
#        ^ storage.type.string.python
#         ^ punctuation.definition.string.begin.python
#          ^ punctuation.section.interpolation.begin.python
#           ^^^ meta.generic-name.python
#               ^ keyword.operator.arithmetic.python
#                 ^ punctuation.definition.string.begin.python
#                     ^ punctuation.definition.string.end.python
#                      ^ punctuation.section.interpolation.end.python
#                       ^ punctuation.definition.string.end.python
#                        ^^ storage.modifier.conversion.python
#                          ^ punctuation.section.interpolation.end.python
#                            ^^^^^^^^^^^^^^^^^^ - constant - keyword - punctuation
#                                              ^ punctuation.definition.string.end.python

### [ UNSUPPORTED COMBINATIONS ]###############################################

  tu"not supported"
# ^ - storage
#  ^ storage.type.string.python

  ut"not supported"
# ^ - storage
#  ^ storage.type.string.python

  tb"not supported"
# ^ - storage
#  ^ storage.type.string.python

  bt"not supported"
# ^ - storage
#  ^ storage.type.string.python
