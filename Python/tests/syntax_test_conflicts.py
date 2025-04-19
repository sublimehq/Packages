# SYNTAX TEST "Packages/Python/Python.sublime-syntax" \

## Top-level

<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

in_dicts = {    
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    "ours": "val",
#^^^ meta.mapping.python
#   ^^^^^^ meta.mapping.key.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#        ^ punctuation.definition.string.end.python
#         ^^ meta.mapping.python
#         ^ punctuation.separator.key-value.python
#           ^^^^^ meta.mapping.value.python meta.string.python string.quoted.double.python
#           ^ punctuation.definition.string.begin.python
#               ^ punctuation.definition.string.end.python
#                ^ meta.mapping.python punctuation.separator.sequence.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    "theirs": "bar"
#^^^ meta.mapping.python
#   ^^^^^^^^ meta.mapping.key.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#          ^ punctuation.definition.string.end.python
#           ^^ meta.mapping.python
#           ^ punctuation.separator.key-value.python
#             ^^^^^ meta.mapping.value.python meta.string.python string.quoted.double.python
#             ^ punctuation.definition.string.begin.python
#                 ^ punctuation.definition.string.end.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
}

in_lists = [
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    "ours",
#   ^^^^^^ meta.sequence.list.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#        ^ punctuation.definition.string.end.python
#         ^ punctuation.separator.sequence.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    "theirs"
#   ^^^^^^^^ meta.sequence.list.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#          ^ punctuation.definition.string.end.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
]

in_sets = {
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    "ours",
#   ^^^^^^ meta.set.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#        ^ punctuation.definition.string.end.python
#         ^ punctuation.separator.set.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    "theirs"
#   ^^^^^^^^ meta.set.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#          ^ punctuation.definition.string.end.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
}

in_tuples = (
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    "ours",
#   ^^^^^^ meta.sequence.tuple.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#        ^ punctuation.definition.string.end.python
#         ^ punctuation.separator.sequence.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    "theirs"
#   ^^^^^^^^ meta.sequence.tuple.python meta.string.python string.quoted.double.python
#   ^ punctuation.definition.string.begin.python
#          ^ punctuation.definition.string.end.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
)

in_string = "before \
<<<<<<< HEAD
# <- meta.string.python string.quoted.double.python meta.block.conflict.begin.diff punctuation.section.block.begin.diff \
#^^^^^^^^^^^ meta.string.python string.quoted.double.python meta.block.conflict.begin.diff \
#^^^^^^ punctuation.section.block.begin.diff \
#       ^^^^ entity.name.section.diff \
ours \
=======
# <- meta.string.python string.quoted.double.python meta.block.conflict.separator.diff punctuation.section.block.diff \
#^^^^^^ meta.string.python string.quoted.double.python meta.block.conflict.separator.diff punctuation.section.block.diff \
theirs \
>>>>>>> master
# <- meta.string.python string.quoted.double.python meta.block.conflict.end.diff punctuation.section.block.end.diff \
#^^^^^^^^^^^^^ meta.string.python string.quoted.double.python meta.block.conflict.end.diff \
#^^^^^^ punctuation.section.block.end.diff \
#       ^^^^^^ entity.name.section.diff \
after"
#^^^^^ meta.string.python string.quoted.double.python
#    ^ punctuation.definition.string.end.python

in_strings = """
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
#^^^^^^^ meta.string.python string.quoted.double.block.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    theirs
#^^^^^^^^^^ meta.string.python string.quoted.double.block.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
"""

in_strings = b"""
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
#^^^^^^^ meta.string.python string.quoted.double.block.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    theirs
#^^^^^^^^^^ meta.string.python string.quoted.double.block.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
"""

in_strings = f"""
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
#^^^^^^^ meta.string.python string.quoted.double.block.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    theirs
#^^^^^^^^^^ meta.string.python string.quoted.double.block.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
"""

in_strings = r"""
<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
#^^^^^^^ meta.string.python string.quoted.double.block.python
=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation
    theirs
#^^^^^^^^^^ meta.string.python string.quoted.double.block.python
>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation
"""
