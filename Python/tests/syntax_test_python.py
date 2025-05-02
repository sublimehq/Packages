# SYNTAX TEST "Packages/Python/Python.sublime-syntax"
# <- source.python comment.line.number-sign punctuation.definition.comment

r"""This is a syntax test file.
# <- storage.type.string - comment
#^^^ comment.block.documentation.python punctuation.definition.comment.begin.python
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.summary.python

And this right here, where we're writing in, is a docstring.
# <- comment.block.documentation.python
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.python
"""
# <- comment.block.documentation.python punctuation.definition.comment.end.python

ur"""Raw docstring \""""
# <- storage.type.string.python - comment
# ^^^ comment.block.documentation.python punctuation.definition.comment.begin.python
#    ^^^^^^^^^^^^^^^^ comment.block.documentation.summary.python
#                  ^^ - constant.character.escape
#                    ^^^ comment.block.documentation.python punctuation.definition.comment.end.python

R"""
C:\Users
# ^^ - constant.character - invalid
"""

"""Normal docstring \""""
# <- comment.block.documentation.python punctuation.definition.comment.begin.python
#^^ comment.block.documentation.python punctuation.definition.comment.begin.python
#  ^^^^^^^^^^^^^^^^^^^ comment.block.documentation.summary.python
#                   ^^ constant.character.escape.python
#                     ^^^ comment.block.documentation.python punctuation.definition.comment.end.python

"""
#^^^ comment.block.documentation.python
docstring starting on the second line
"""

"""
docstring starting on the second line
# <- comment.block.documentation.summary.python
#^^^ comment.block.documentation.summary.python
"""

"""
S\u0815mma\ry\n
# <- comment.block.documentation.summary.python
#^^^^^^^^^^^^^^ comment.block.documentation.summary.python
#^^^^^^ constant.character.escape.unicode.16bit.python
#         ^^ constant.character.escape.python
#            ^^ constant.character.escape.python
\n
# <- comment.block.documentation.python constant.character.escape.python
#^ comment.block.documentation.python constant.character.escape.python
"""

r"""
S\u0815mma\ry\n
# <- comment.block.documentation.summary.python
#^^^^^^^^^^^^^^ comment.block.documentation.summary.python - constant.character.escape
\n
# <- comment.block.documentation.python - constant.character.escape
#^ comment.block.documentation.python - constant.character.escape
"""

debug = False
"""
This is a variable docstring, as supported by sphinx and epydoc
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
"""

#: This is a prefixed "doc comment", supported by sphinx
# <- comment.line.documentation.python punctuation.definition.comment.python
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.python
#^ punctuation.definition.comment.python
attribute = ... #: also supported on the same line
#               ^^ comment.line.documentation.python punctuation.definition.comment.python
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.python

r'''This is a syntax test file.
# <- storage.type.string - comment
#^^^ comment.block.documentation.python punctuation.definition.comment.begin.python
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.summary.python

And this right here, where we're writing in, is a docstring.
# <- comment.block.documentation.python
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.python
'''
# <- comment.block.documentation.python punctuation.definition.comment.end.python

ur'''Raw docstring \''''
# <- storage.type.string.python - comment
# ^^^ comment.block.documentation.python punctuation.definition.comment.begin.python
#    ^^^^^^^^^^^^^^^^ comment.block.documentation.summary.python
#                  ^^ - constant.character.escape
#                    ^^^ comment.block.documentation.python punctuation.definition.comment.end.python

R'''
C:\Users
# ^^ - constant.character - invalid
'''

'''Normal docstring \''''
# <- comment.block.documentation.python punctuation.definition.comment.begin.python
#^^ comment.block.documentation.python punctuation.definition.comment.begin.python
#  ^^^^^^^^^^^^^^^^^^^ comment.block.documentation.summary.python
#                   ^^ constant.character.escape.python
#                     ^^^ comment.block.documentation.python punctuation.definition.comment.end.python

'''
#^^^ comment.block.documentation.python
docstring starting on the second line
'''

'''
docstring starting on the second line
# <- comment.block.documentation.summary.python
#^^^ comment.block.documentation.summary.python
'''

'''
S\u0815mma\ry\n
# <- comment.block.documentation.summary.python
#^^^^^^^^^^^^^^ comment.block.documentation.summary.python
#^^^^^^ constant.character.escape.unicode.16bit.python
#         ^^ constant.character.escape.python
#            ^^ constant.character.escape.python
\n
# <- comment.block.documentation.python constant.character.escape.python
#^ comment.block.documentation.python constant.character.escape.python
'''

r'''
S\u0815mma\ry\n
# <- comment.block.documentation.summary.python
#^^^^^^^^^^^^^^ comment.block.documentation.summary.python - constant.character.escape
\n
# <- comment.block.documentation.python - constant.character.escape
#^ comment.block.documentation.python - constant.character.escape
'''


##################
# Imports
##################

import sys # comment
#^^^^^ keyword.control.import
#          ^ comment
import sys. # comment
#^^^^^ keyword.control.import
#         ^ punctuation.accessor.dot.python
#           ^ comment
import sys.path # comment
#^^^^^ keyword.control.import
#         ^ punctuation.accessor.dot.python
#               ^ comment
import .
#      ^ invalid.illegal.unexpected-relative-import.python
import ..
#      ^^ invalid.illegal.unexpected-relative-import.python
import .. sys
#      ^^ invalid.illegal.unexpected-relative-import.python
import *
#      ^ invalid.illegal.name.import.python

from os import *  # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#      ^ meta.statement.import.python meta.import-source.python - meta.import-path
#       ^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
# <- keyword.control.import.from.python
#^^^ keyword.control.import.from.python
#    ^^ meta.import-name.python
#       ^^^^^^ keyword.control.import.python
#              ^ constant.other.wildcard.asterisk.python
#               ^^ - comment - constant - meta.statement
#                 ^^^^^^^^^^ comment.line.number-sign.python
from os import *, path # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#      ^ meta.statement.import.python meta.import-source.python - meta.import-path
#       ^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#               ^^^^^^^^^^^^^^^^^ - meta.statement
#              ^ constant.other.wildcard.asterisk.python
#               ^ invalid.illegal.unexpected-import.python
#                 ^^^^ invalid.illegal.unexpected-import.python
#                      ^^^^^^^^^^ comment.line.number-sign.python
from os import path, * # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#      ^ meta.statement.import.python meta.import-source.python - meta.import-path
#       ^^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                  ^ punctuation.separator.import-list.python
#                    ^ invalid.illegal.name.import.python
#                     ^ - meta.statement
#                      ^^^^^^^^^^ comment.line.number-sign.python
from os import path, chdir # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#      ^ meta.statement.import.python meta.import-source.python - meta.import-path
#       ^^^^^^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                         ^ - meta.statement
#^^^ keyword.control.import.from
#       ^^^^^^ keyword.control.import
#                  ^ punctuation.separator.import-list
#                          ^^^^^^^^^^ comment.line.number-sign.python
from . import module
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^ meta.statement.import.python meta.import-source.python meta.import-path.python
#     ^ meta.statement.import.python meta.import-source.python - meta.import-path
#      ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                   ^ - meta.statement
#    ^ keyword.control.import.relative.python
#      ^^^^^^ keyword.control.import
from .import module  # yes, this is actually legit
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^ meta.statement.import.python meta.import-source.python meta.import-path.python
#     ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                  ^ - meta.statement
#    ^ keyword.control.import.relative.python
#     ^^^^^^ keyword.control.import.python
#            ^^^^^^ meta.generic-name.python
#                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python
from collections.abc import Iterable
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^^^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#                   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#                    ^^^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                                   ^ - meta.statement
#                    ^^^^^^ keyword.control.import
from a.b.c.
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#     ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#         ^ punctuation.accessor.dot.python
from a.b.c. import module
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#           ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                        ^ - meta.statement
#     ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#         ^ punctuation.accessor.dot.python
#           ^^^^^^ keyword.control.import
from a.b.c. as module # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#           ^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                    ^ - meta.statement
#     ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#         ^ punctuation.accessor.dot.python
#           ^^ keyword.control.import.as.python
#                     ^^^^^^^^^^ comment.line.number-sign.python
from a.b.c.. # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#           ^ - meta.statement
#     ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#         ^^ invalid.illegal.name.python
#            ^^^^^^^^^^ comment.line.number-sign.python
from a.b.c.. import module
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#           ^ meta.statement.import.python meta.import-source.python - meta.import-path
#            ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                         ^ - meta.statement
#     ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#         ^^ invalid.illegal.name.python
#            ^^^^^^ keyword.control.import
from a.b.c.else import module
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#              ^ meta.statement.import.python meta.import-source.python - meta.import-path
#               ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                            ^ - meta.statement
#     ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#         ^ punctuation.accessor.dot.python
#          ^^^^ invalid.illegal.name.python
#               ^^^^^^ keyword.control.import
from .while import module
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#          ^ meta.statement.import.python meta.import-source.python - meta.import-path
#           ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                        ^ - meta.statement
#    ^ keyword.control.import.relative.python
#     ^^^^^ invalid.illegal.name.python
#           ^^^^^^ keyword.control.import
from .index import module
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#          ^ meta.statement.import.python meta.import-source.python - meta.import-path
#           ^^^^^^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#                        ^ - meta.statement
#    ^ keyword.control.import.relative.python
#     ^^^^^ - invalid
#           ^^^^^^ keyword.control.import.python
from \
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^^^ meta.statement.import.python meta.import-source.python - meta.import-path
from \
    ..\
#^^^ meta.statement.import.python meta.import-source.python - meta.import-path
#   ^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#     ^^ meta.statement.import.python meta.import-source.python - meta.import-path
#   ^^ keyword.control.import.relative.python
#     ^ punctuation.separator.continuation.line.python
from \
    ..\
    lib \
#^^^ meta.statement.import.python meta.import-source.python - meta.import-path
#   ^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#      ^^^ meta.statement.import.python meta.import-source.python - meta.import-path
#       ^ punctuation.separator.continuation.line.python
from \
    ..\
    lib \
    import \
#^^^ meta.statement.import.python meta.import-source.python - meta.import-path
#   ^^^^^^^^^ meta.statement.import.python - meta.import-source meta.import-path.python
#   ^^^^^^ keyword.control.import.python
#          ^ punctuation.separator.continuation.line.python
from \
    os \
    import \
    path
# ^^^^^^ meta.statement.import
#       ^ - meta.statement
from sys import (version, # comment
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.import
#               ^ punctuation.section.import-list.begin
#                         ^ comment
                 anything \
#                         ^ invalid.illegal.name.import.python
                 version_info, . ) # comment
#                ^^^^^^^^^^^^^^^^^ meta.statement.import
#                              ^ invalid.illegal.name.import.python
#                                ^ punctuation.section.import-list.end
#                                  ^ comment
import path from os
#           ^^^^ invalid.illegal.name
from .sub import *
#                ^ constant.other.wildcard.asterisk.python
import a as b
#        ^^ keyword.control.import.as.python
import a as b#comment
#        ^^ keyword.control.import.as.python
#            ^^^^^^^^^ comment.line.number-sign.python
import a as .b, .b
#        ^^ keyword.control.import.as.python
#           ^^ invalid.illegal.name.import.python
#               ^ invalid.illegal.unexpected-relative-import.python
#                ^ meta.generic-name.python
import a.b as c, a.e as f
#      ^^^ meta.path.python
#          ^^ keyword.control.import.as.python
#             ^ meta.generic-name.python
#              ^ punctuation.separator.import-list.python
#                ^^^ meta.path.python
#                    ^^ keyword.control.import.as.python
#                       ^ meta.generic-name.python
from a import b as c, d as  # comment
#               ^^ keyword.control.import.as.python
#                       ^^ keyword.control.import.as.python
#                           ^^^^^^^^^^ comment.line.number-sign.python
from a import (b as c)
#                ^^ keyword.control.import.as.python

import re; re.compile(r'')
#        ^^^^^^^^^^^^^^^^^ - meta.statement.import
#        ^ punctuation.terminator.statement

from unicode.__init__ . 123 import unicode as unicode
#    ^^^^^^^^^^^^^^^^^^^^^^ meta.import-source.python meta.import-path.python
#    ^^^^^^^ meta.import-name.python - support
#           ^ punctuation.accessor.dot.python
#            ^^^^^^^^ meta.import-name.python - support
#                     ^^^^^ invalid.illegal.name.python
#                                  ^^^^^^^ support.type.python
#                                             ^^^^^^^ support.type.python

import .str
#      ^ invalid.illegal.unexpected-relative-import.python
#       ^^^ support.type.python

import str
#      ^^^ support.type.python

from importlib import import_module
# <- meta.statement.import.python keyword.control.import.from.python
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.import.python
#^^^ keyword.control.import.from.python
#    ^^^^^^^^^ - keyword
#              ^^^^^^ keyword.control.import.python
#                     ^^^^^^^^^^^^^ - keyword

##################
# Identifiers
##################

identifier
#^^^^^^^^^ meta.path meta.generic-name

class
#^^^^ keyword.declaration.class.python
def
#^^ keyword.declaration.function.python

# async and await are still recognized as valid identifiers unless in an "async" block
async
#^^^^ - invalid.illegal.name

__all__
#^^^^^^ meta.path support.variable.magic - meta.generic-name
__file__
#^^^^^^^ support.variable.magic
__missing__
#^^^^^^^^^^ support.function.magic
__bool__ abc.__nonzero__
#^^^^^^^ support.function.magic
#            ^^^^^^^^^^^ support.function.magic

TypeError module.TypeError
#^^^^^^^^ support.class.exception
#                ^^^^^^^^^ - support

open.open.open.
#    ^^^^^^^^^ - support
#   ^ punctuation.accessor.dot.python
#        ^ punctuation.accessor.dot.python
#             ^ punctuation.accessor.dot.python

... Ellipsis __debug__
#^^ constant.language.python
#   ^^^^^^^^ constant.language.python
#            ^^^^^^^^^ constant.language.python

CONSTANT._13_
#^^^^^^^ meta.path.python variable.other.constant.python
#        ^^^^ - variable.other.constant

 _A_B A1
#^^^^ - variable.other.constant
#     ^^ - variable.other.constant

some.NO
#    ^^ meta.path.python variable.other.constant.python

NO_SWEAT NO AA1
# <- meta.path.python variable.other.constant.python
#        ^^ variable.other.constant
#           ^^^ variable.other.constant

_ self
# <- variable.language.anonymous.python
# ^^^^ variable.language.python


##################
# Function Calls
##################

identifier()
# <- meta.function-call.identifier.python variable.function.python
#^^^^^^^^^ meta.function-call.identifier.python
#         ^^ meta.function-call.arguments.python
#^^^^^^^^^ variable.function.python
#         ^ punctuation.section.arguments.begin
#          ^ punctuation.section.arguments.end

IDENTIFIER()
# <- meta.function-call.identifier.python variable.function.python
#^^^^^^^^^ meta.function-call.identifier.python
#         ^^ meta.function-call.arguments.python
#^^^^^^^^^ variable.function.python
#         ^ punctuation.section.arguments.begin
#          ^ punctuation.section.arguments.end

dotted.
# <- meta.path.python - meta.function-call
#^^^^^^^ - meta.function-call
#     ^ punctuation.accessor.dot

dotted .
# <- meta.path.python - meta.function-call
#^^^^^^^^ - meta.function-call
#      ^ punctuation.accessor.dot

dotted . identifier(12, True)
# <- meta.path.python - meta.function-call
#^^^^^^^^ - meta.function-call
#        ^^^^^^^^^^ meta.function-call.identifier.python - meta.function-call meta.function-call
#                  ^^^^^^^^^^ meta.function-call.arguments.python - meta.function-call meta.function-call
#^^^^^^^^^^^^^^^^^^ meta.path
#^^^^^^^^ - variable.function
#      ^ punctuation.accessor.dot
#        ^^^^^^^^^^ variable.function

open.__new__(12, \
# <- - meta.function-call
#^^^^ - meta.function-call
#    ^^^^^^^ meta.function-call.identifier.python
#           ^^^^^^^ meta.function-call.arguments.python
#^^^ support.function.builtin
#   ^ punctuation.accessor.dot
#    ^^^^^^^ support.function.magic
#                ^ punctuation.separator.continuation.line.python
             True)
#           ^^^^^^ meta.function-call.arguments.python

iter()
#^^^ support.function.builtin
aiter()
#^^^^ support.function.builtin

next()
#^^^ support.function.builtin
anext()
#^^^^ support.function.builtin


TypeError()
#^^^^^^^^ support.class.exception
#
module.TypeError()
# <- - meta.function-call
#^^^^^^ - meta.function-call
#      ^^^^^^^^^ meta.function-call.identifier.python
#               ^^ meta.function-call.arguments.python
#^^^^^^^^^^^^^^^ meta.path.python
#     ^ punctuation.accessor.dot.python
#      ^^^^^^^^^ variable.function - support
#               ^ punctuation.section.arguments.begin.python
#                ^ punctuation.section.arguments.end.python

open.open.open()
#^^^ support.function.builtin
#   ^ punctuation.accessor.dot
#    ^^^^^^^^^ - support
#         ^^^^ variable.function

call(2**10, *range(10), **dict(), * *{}, ***a)
#     ^^ keyword.operator.arithmetic
#           ^ keyword.operator.unpacking.sequence.python
#                       ^^ keyword.operator.unpacking.mapping.python
#                                 ^ keyword.operator.unpacking.sequence.python
#                                   ^ - keyword.operator.unpacking
#                                        ^^^ invalid.illegal.syntax.python
call(*args, **kwargs)
#    ^ keyword.operator.unpacking.sequence.python
#           ^^ keyword.operator.unpacking.mapping.python

call(**kwargs)
#    ^^ keyword.operator.unpacking.mapping.python

if p.type not in ('NUMBER', 'INTEGER'):
#             ^^ keyword.operator - meta.function-call invalid

call(from='no', from_='yes')
#^^^^^^^^^^^^^^ meta.function-call
#    ^^^^ invalid.illegal.name
#        ^ keyword.operator.assignment
#         ^^^^ string

##################
# Expressions
##################

def _():
    yield from
#   ^^^^^ keyword.control.flow.yield
#         ^^^^ keyword.control.flow.yield-from

    yield fromsomething.
#         ^^^^ - keyword
#                      ^ punctuation.accessor.dot.python

    a if b else c
#     ^^ keyword.control.conditional.if
#          ^^^^ keyword.control.conditional.else

    a[0] if b[1] else c[3]
#        ^^ keyword.control.conditional.if
#                ^^^^ keyword.control.conditional.else

    c = lambda: pass
#       ^^^^^^^^^^^^ meta.function.inline
#       ^^^^^^ storage.type.function.inline keyword.declaration.function.inline.python
#             ^ punctuation.section.function.begin
#               ^^^^ invalid.illegal.name.python

    c = lambda x, y=0: x + y
#       ^^^^^^ meta.function.inline.python
#             ^^^^^^^ meta.function.inline.parameters.python
#                    ^ meta.function.inline.python
#                     ^^^^^^ meta.function.inline.body.python
#       ^^^^^^ storage.type.function.inline keyword.declaration.function.inline.python
#              ^ meta.function.inline.parameters.python variable.parameter.python
#                    ^ punctuation.section.function.begin
#                        ^ keyword.operator.arithmetic.python

    {key: lambda x, y: 10}
#   ^ punctuation.section.mapping.begin
#         ^^^^^^ meta.function.inline.python
#               ^^^^^ meta.function.inline.parameters.python
#                    ^ meta.function.inline.python
#                     ^^^ meta.function.inline.body.python
#         ^^^^^^ keyword.declaration.function.inline.python
#                ^ variable.parameter
#                 ^ punctuation.separator.parameters
#                   ^ variable.parameter
#                      ^^ constant.numeric
#                        ^ punctuation.section.mapping.end

    {lambda x, y: 10}
#   ^ punctuation.section.set.begin
#    ^^^^^^ meta.function.inline.python
#          ^^^^^ meta.function.inline.parameters.python
#               ^ meta.function.inline.python
#                ^^^ meta.function.inline.body.python
#    ^^^^^^ keyword.declaration.function.inline.python
#           ^ variable.parameter
#            ^ punctuation.separator.parameters
#              ^ variable.parameter
#                 ^^ constant.numeric
#                   ^ punctuation.section.set.end

    [lambda x, y: 10]
#   ^ punctuation.section.sequence.begin
#    ^^^^^^ meta.function.inline.python
#          ^^^^^ meta.function.inline.parameters.python
#               ^ meta.function.inline.python
#                ^^^ meta.function.inline.body.python
#    ^^^^^^ keyword.declaration.function.inline.python
#           ^ variable.parameter
#            ^ punctuation.separator.parameters
#              ^ variable.parameter
#                 ^^ constant.numeric
#                   ^ punctuation.section.sequence.end

    _(lambda x, y: 10)
#     ^^^^^^^^^^^^^^^ meta.function.inline
#     ^^^^^^ keyword.declaration.function.inline.python
#           ^^^^^ meta.function.inline.parameters
#            ^ variable.parameter
#             ^ punctuation.separator.parameters
#               ^ variable.parameter
#                  ^^ constant.numeric

    lambda \
        a, \
        b=2: True
#       ^^^^^^^^^ meta.function.inline
#        ^ keyword.operator.assignment
#          ^ punctuation.section.function.begin
#           ^^^^^ meta.function.inline.body
#            ^^^^ constant.language.boolean.true.python

    lambda as, in=2: 0
#          ^^ invalid.illegal.name
#              ^^ invalid.illegal.name

    lambda *a, **kwa, ab*, * *: (a, kwa)
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.inline meta.function.inline
#   ^^^^^^ meta.function.inline.python
#         ^^^^^^^^^^^^^^^^^^^^ meta.function.inline.parameters.python
#                             ^ meta.function.inline.python
#                              ^^^^^^^^^ meta.function.inline.body.python
#          ^ keyword.operator.unpacking.sequence.python
#           ^ variable.parameter.python
#                ^^^ variable.parameter.python
#              ^^ keyword.operator.unpacking.mapping.python
#                       ^ invalid.illegal.expected-parameter.python
#                            ^ invalid.illegal.expected-parameter.python

    lambda x
#   ^^^^^^ storage.type.function.inline keyword.declaration.function.inline.python

    lambda (x, y): 0
#   ^^^^^^^^^^^^^^^^ - meta.function.inline meta.function.inline
#   ^^^^^^ meta.function.inline.python
#         ^ meta.function.inline.parameters.python - meta.group
#          ^^^^^^ meta.function.inline.parameters.python meta.group.python
#                ^ meta.function.inline.python
#                 ^^ meta.function.inline.body.python
#          ^ punctuation.section.group.begin.python
#           ^ variable.parameter.python
#            ^ punctuation.separator.parameters.python
#              ^ variable.parameter.python
#               ^ punctuation.section.group.end.python
#                ^ punctuation.section.function.begin.python
    lambda (
#   ^^^^^^^^^ - meta.function.inline meta.function.inline
#   ^^^^^^ meta.function.inline.python
#         ^^^ meta.function.inline.parameters.python
#          ^^ meta.group.python
#          ^ punctuation.section.group.begin.python
        x,
#      ^^^^ meta.function.inline.parameters.python meta.group.python
#       ^ variable.parameter.python
#        ^ punctuation.separator.parameters.python
        y
#      ^^^^ meta.function.inline.parameters.python meta.group.python
#       ^ variable.parameter.python
    ):
#^^^^^^ - meta.function.inline meta.function.inline
#^^^^ meta.function.inline.parameters.python meta.group.python
#   ^ punctuation.section.group.end.python
#    ^ punctuation.section.function.begin.python
        pass
#       ^^^^ keyword.control.flow.pass.python

    ( 3 - 6 \
#   ^^^^^^^^^ meta.group.python
#   ^ punctuation.section.group.begin.python
#     ^ meta.number.integer.decimal.python constant.numeric.value.python
#       ^ keyword.operator.arithmetic.python
#         ^ meta.number.integer.decimal.python constant.numeric.value.python
#           ^ punctuation.separator.continuation.line.python
     )
#^^^^^ meta.group.python

##################
# Compound expressions
##################

myobj.method().attribute
#^^^^^ - meta.function-call
#     ^^^^^^^^ meta.function-call
#             ^^^^^^^^^^ - meta.function-call
#    ^ punctuation.accessor.dot
#     ^^^^^^ variable.function
#             ^ punctuation.accessor.dot

'foo'. upper()
#^^^^^^ - meta.function-call
#      ^^^^^^^ meta.function-call
#    ^ punctuation.accessor.dot
#      ^^^^^ variable.function

'foo'.and()
#^^^^^ - meta.function-call
#     ^^^^^ meta.function-call
#    ^ punctuation.accessor.dot
#     ^^^ invalid.illegal.name.python

'foo'and()
#    ^^^ keyword.operator.logical.python
#       ^^ meta.sequence.tuple.empty.python

func()(1, 2)
# <- meta.function-call
#^^^^^^^^^^^ meta.function-call
#^^^^^^^^^^^ - meta.function-call meta.function-call

myobj[1](True)
#^^^^ - meta.brackets
#    ^ punctuation.section.brackets.begin.python
#    ^^^ meta.brackets.python
#      ^ punctuation.section.brackets.end.python
#       ^^^^^^ meta.function-call.arguments.python

myobj[1][2](0)
#^^^^ - meta.brackets
#    ^ punctuation.section.brackets.begin.python
#    ^^^^^^ meta.brackets.python
#      ^ punctuation.section.brackets.end.python
#       ^ punctuation.section.brackets.begin.python
#         ^ punctuation.section.brackets.end.python
#          ^^^ meta.function-call.arguments.python

a[0].b[1].d[2](e[3])[f[g[4].h[5]]]
# <- - meta.brackets
#^^^ meta.brackets.python
#   ^^ - meta.brackets
#     ^^^ meta.brackets.python
#        ^^ - meta.brackets
#          ^^^ meta.brackets.python
#             ^^ - meta.brackets
#               ^^^ meta.brackets.python
#                  ^ - meta.brackets
#                   ^^ meta.brackets.python - meta.brackets meta.brackets
#                     ^^ meta.brackets.python meta.brackets.python - meta.brackets meta.brackets meta.brackets
#                       ^^^ meta.brackets.python meta.brackets.python meta.brackets.python
#                          ^^ meta.brackets.python meta.brackets.python - meta.brackets meta.brackets meta.brackets
#                            ^^^ meta.brackets.python meta.brackets.python meta.brackets.python
#                               ^ meta.brackets.python meta.brackets.python - meta.brackets meta.brackets meta.brackets
#                                ^ meta.brackets.python - meta.brackets meta.brackets
#                                 ^ - meta.brackets

self[5] = 0
#   ^^^ meta.brackets.python

range(20)[10:2:-2]
#           ^ punctuation.separator.slice
#             ^ punctuation.separator.slice

"string"[12]
#       ^^^^ meta.brackets - meta.sequence

"string".
#       ^ punctuation.accessor.dot.python

"string".upper()
#^^^^^^^^ - meta.function-call
#        ^^^^^^^ meta.function-call
#       ^ punctuation.accessor.dot.python

(i for i in range(10))[5]
#                     ^^^ meta.brackets - meta.sequence

[1, 2, 3][2]
#^^^^^^^^ meta.sequence
#        ^^^ meta.brackets - meta.sequence

[1, 2, 3] \
    [2]
#   ^^^ meta.brackets - meta.sequence

[a.b., a., .][2]
#^^^^^^^^^^^^ meta.sequence
# ^ punctuation.accessor.dot.python
#   ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#          ^ punctuation.accessor.dot.python
#            ^^^ meta.brackets - meta.sequence

{foo.: bar.baz.}.
#   ^ punctuation.accessor.dot.python
#    ^ punctuation.separator.key-value.python
#         ^ punctuation.accessor.dot.python
#             ^ punctuation.accessor.dot.python
#               ^ punctuation.accessor.dot.python

{True: False}.get(True)
#^^^^^^^^^^^^^ - meta.function-call
#             ^^^^^^^^^ meta.function-call
#            ^ punctuation.accessor.dot.python

1[12]
#^^^^ - meta.brackets


##################
# print & exec
##################

def _():
    print (file=None)
#   ^^^^^ support.function.builtin - keyword
    print .
#   ^^^^^ support.function.builtin - keyword
#         ^ punctuation.accessor.dot.python
    print . __class__
#   ^^^^^ support.function.builtin - keyword
#         ^ punctuation.accessor.dot.python
    print "keyword"
#   ^^^^^ keyword.other.print
    print __init__
#   ^^^^^ keyword.other.print
#
    exec 123
#   ^^^^ keyword
    exec ("print('ok')")
#   ^^^^ support.function.builtin - keyword
    callback(print , print
#            ^^^^^ - keyword
#                  ^ punctuation.separator.arguments
#                    ^^^^^ - keyword
             , print)
#              ^^^^^ - keyword

    some \
      print \
#     ^^^^^ keyword.other.print

    func(
        print
#       ^^^^^ support.function.builtin - keyword
    )

    print
#   ^^^^^ keyword.other.print


##################
# Block statements
##################
def _():
    for
#   ^^^ keyword.control.loop.for
    b = c in d
#         ^^ keyword.operator.logical - keyword.operator.iteration.in

    for \
        a \
        in \
        b:
#       ^^ meta.statement.loop.for
#        ^ punctuation.section.block.loop.for.python

    async for i in myfunc():
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for
#   ^^^^^ storage.modifier.async
#         ^^^ keyword.control.loop.for
#               ^^ keyword.operator.iteration.in
#                          ^ punctuation.section.block.loop.for
        pass

    for i:
#        ^ invalid.illegal.missing-in

    a for b in c:  # TODO make this invalid (for not at beginning of line)


    something as nothing:
#             ^^ invalid.illegal.name

    with \
        open() \
        as \
        x:
#       ^^ meta.statement.with

    with (folder / "file.txt").open() as x:
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.with.python - meta.statement.with meta.statement.with
#        ^^^^^^^^^^^^^^^^^^^^^ meta.group.python
#                              ^^^^ meta.function-call.identifier.python meta.path.python
#                                  ^^ meta.function-call.arguments.python
#   ^^^^ keyword.control.flow.with.python
#        ^ punctuation.section.group.begin.python
#         ^^^^^^ meta.generic-name.python
#                ^ keyword.operator.arithmetic.python
#                  ^^^^^^^^^^ meta.string.python string.quoted.double.python
#                            ^ punctuation.section.group.end.python
#                             ^ punctuation.accessor.dot.python
#                              ^^^^ variable.function.python - support
#                                  ^ punctuation.section.arguments.begin.python
#                                   ^ punctuation.section.arguments.end.python
#                                     ^^ keyword.control.flow.with.as.python
#                                        ^ meta.generic-name.python
#                                         ^ punctuation.section.block.with.python

    with ((folder / "file.txt").open() as x):
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.with.python - meta.statement.with meta.statement.with
#        ^ meta.sequence.tuple.python - meta.sequence meta.sequence - meta.sequence meta.group
#         ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.python meta.group.python - meta.sequence meta.sequence
#                               ^^^^^^^^^^^^ meta.sequence.tuple.python - meta.sequence meta.sequence - meta.sequence meta.group
#                               ^^^^ meta.function-call.identifier.python
#                                   ^^ meta.function-call.arguments.python
#                                           ^ - meta.sequence
#   ^^^^ keyword.control.flow.with.python
#        ^ punctuation.section.sequence.begin.python
#         ^ punctuation.section.group.begin.python
#          ^^^^^^ meta.generic-name.python
#                 ^ keyword.operator.arithmetic.python
#                   ^^^^^^^^^^ meta.string.python string.quoted.double.python
#                             ^ punctuation.section.group.end.python
#                              ^ punctuation.accessor.dot.python
#                               ^^^^ variable.function.python - support
#                                   ^ punctuation.section.arguments.begin.python
#                                    ^ punctuation.section.arguments.end.python
#                                      ^^ keyword.control.flow.with.as.python
#                                         ^ meta.generic-name.python
#                                          ^ punctuation.section.sequence.end.python
#                                           ^ punctuation.section.block.with.python
#

    # multiple nesting is not allowed
    with (((folder / "file.txt").open() as x)):
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.with.python - meta.statement.with meta.statement.with
#        ^ meta.group.python - meta.group meta.group
#         ^ meta.group.python meta.group.python - meta.group meta.group meta.group
#          ^^^^^^^^^^^^^^^^^^^^^ meta.group.python meta.group.python meta.group.python
#                               ^^^^^^^^^^ meta.group.python meta.group.python - meta.group meta.group meta.group
#                                         ^^^ meta.group.python - meta.group meta.group
#                                            ^ - meta.group
#   ^^^^ keyword.control.flow.with.python
#        ^ punctuation.section.group.begin.python
#         ^^ punctuation.section.group.begin.python
#           ^^^^^^ meta.generic-name.python
#                  ^ keyword.operator.arithmetic.python
#                    ^^^^^^^^^^ meta.string.python string.quoted.double.python
#                              ^ punctuation.section.group.end.python
#                               ^ punctuation.accessor.dot.python
#                                ^^^^ variable.function.python - support
#                                    ^ punctuation.section.arguments.begin.python
#                                     ^ punctuation.section.arguments.end.python
#                                       ^^ invalid.illegal.name.python
#                                          ^ meta.generic-name.python
#                                           ^ punctuation.section.group.end.python
#                                            ^ invalid.illegal.stray.python
#                                             ^ punctuation.section.block.with.python

    with open(), open() as x, open() as as:
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.with.python - meta.statement.with meta.statement.with
#   ^^^^ keyword.control.flow.with
#        ^^^^ support.function
#              ^ punctuation.separator.sequence
#                       ^^ keyword.control.flow.with.as
#                           ^ punctuation.separator.sequence
#                             ^^^^ support.function
#                                    ^^ keyword.control.flow.with.as
#                                       ^^ invalid.illegal.name.python

    with (
#   ^^^^^^^ - meta.statement.with meta.statement.with
#   ^^^^^ meta.statement.with.python - meta.sequence
#        ^^ meta.statement.with.python meta.sequence.tuple.python
#   ^^^^ keyword.control.flow.with
#        ^ punctuation.section.sequence.begin.python
        open(),
#      ^^^^^^^^^ meta.statement.with.python meta.sequence.tuple.python
#       ^^^^ support.function
#             ^ punctuation.separator.sequence

        open() as x,
#      ^^^^^^^^^^^^^^ meta.statement.with.python meta.sequence.tuple.python
#       ^^^^ support.function
#              ^^ keyword.control.flow.with.as
#                  ^ punctuation.separator.sequence
        open() as as
#      ^^^^^^^^^^^^^ meta.statement.with.python meta.sequence.tuple.python
#       ^^^^ support.function
#              ^^ keyword.control.flow.with.as
#                 ^^ invalid.illegal.name.python
    ):
# ^^^^ - meta.statement.with meta.statement.with
# ^^^ meta.statement.with.python meta.sequence.tuple.python
#    ^ meta.statement.with.python punctuation.section.block.with.python

    with captured() as (out, err):
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.with.python - meta.statement.with meta.statement.with
#   ^^^^ keyword.control.flow.with
#        ^^^^^^^^ variable.function
#                ^ punctuation.section.arguments.begin
#                 ^ punctuation.section.arguments.end
#                   ^^ keyword.control.flow.with.as
#                      ^ punctuation.section.sequence.begin
#                       ^^^ meta.generic-name
#                          ^ punctuation.separator.sequence
#                            ^^^ meta.generic-name
#                               ^ punctuation.section.sequence.end
#                                ^ punctuation.section.block.with

    with captured() \
    as (
#      ^ punctuation.section.sequence.begin
        out,
#       ^^^ meta.generic-name
#          ^ punctuation.separator.sequence
        err
#       ^^^ meta.generic-name
    ):
#   ^ punctuation.section.sequence.end
#    ^ punctuation.section.block.with

    with captured() as [out, err]:
#   ^^^^ keyword.control.flow.with
#        ^^^^^^^^ variable.function
#                ^ punctuation.section.arguments.begin
#                 ^ punctuation.section.arguments.end
#                   ^^ keyword.control.flow.with.as
#                      ^ punctuation.section.sequence.begin
#                       ^^^ meta.generic-name
#                          ^ punctuation.separator.sequence
#                            ^^^ meta.generic-name
#                               ^ punctuation.section.sequence.end
#                                ^ punctuation.section.block.with

    with captured() \
    as [
#      ^ punctuation.section.sequence.begin
        out,
#       ^^^ meta.generic-name
#          ^ punctuation.separator.sequence
        err
#       ^^^ meta.generic-name
    ]:
#   ^ punctuation.section.sequence.end
#    ^ punctuation.section.block.with

    async with context_manager() as c:
#   ^^^^^ storage.modifier.async
#         ^^^^ keyword.control.flow.with
#                                ^^ keyword.control.flow.with.as
#                                    ^ punctuation.section.block.with
        await something()
#       ^^^^^ keyword.control.flow.await

    assert foo == bar
#   ^^^^^^ keyword.control.flow.assert.python

    try:
#   ^^^^ meta.statement.exception.try.python
#   ^^^ keyword.control.exception.try.python
#      ^ punctuation.section.block.exception.try.python
        raise
#       ^^^^^ meta.statement.raise.python keyword.control.flow.raise.python
    except Exception as x:
#   ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.exception.catch.python - meta.statement.exception.catch.python meta.statement.exception.catch.python
#   ^^^^^^ keyword.control.exception.catch.python
#          ^^^^^^^^^ support.class.exception.python
#                    ^^ keyword.control.exception.catch.as.python
#                       ^ meta.generic-name.python
#                        ^ punctuation.section.block.exception.catch.python
        pass
    finally :
#   ^^^^^^^^^ meta.statement.exception.finally.python
#   ^^^^^^^ keyword.control.exception.finally.python
#           ^ punctuation.section.block.exception.finally.python
    try_except_raise:
#   ^^^ - keyword

    while (
#   ^^^^^^^^ meta.statement.loop.while.python
#   ^^^^^ keyword.control.loop.while.python
#         ^ meta.statement.loop.while.python meta.group.python punctuation.section.group.begin.python
        a is b
#       ^^^^^^ meta.statement.loop.while.python
#         ^^ keyword.operator.logical.python
    ):
#    ^ meta.statement.loop.while.python punctuation.section.block.loop.while.python
        sleep()
        if a:
            break
#           ^^^^^ keyword.control.flow.break.python
        elif b:
            continue
#           ^^^^^^^^ keyword.control.flow.continue.python

    if 213 is 231:
#   ^^^^^^^^^^^^^^ meta.statement.conditional.if.python
#   ^^ keyword.control.conditional.if.python
#      ^^^ meta.number.integer.decimal.python constant.numeric.value.python
#          ^^ keyword.operator.logical.python
#                ^ punctuation.section.block.conditional.if.python
        pass
    elif:
#   ^^^^^ meta.statement.conditional.elseif.python
#       ^ punctuation.section.block.conditional.elseif.python
        pass
    elif False :
#   ^^^^^^^^^^^^ meta.statement.conditional.elseif.python
#        ^^^^^ constant.language.boolean.false.python
#              ^ punctuation.section.block.conditional.elseif.python
        pass
    else  :
#   ^^^^^^^ meta.statement.conditional.else.python
#         ^ punctuation.section.block.conditional.else.python
        pass

    if \
        True:
#       ^^^^^ meta.statement.conditional.if.python
#       ^^^^ constant.language.boolean.true.python
#           ^ punctuation.section.block.conditional.if.python
#

    # verify that keywords also work when they are bare (useful when typing)
    for
#   ^^^ keyword.control.loop.for.python
    with
#   ^^^^ keyword.control.flow.with.python
    if
#   ^^ keyword.control.conditional.if.python
    finally
#   ^^^^^^^ keyword.control.exception.finally.python
    else
#   ^^^^ keyword.control.conditional.else.python
    while
#   ^^^^^ keyword.control.loop.while.python
    return
#   ^^^^^^ keyword.control.flow.return.python
    raise
#   ^^^^^ keyword.control.flow.raise.python


##################
# Structural Pattern Matching
##################

    match
#   ^^^^^ meta.generic-name.python

    match expr
#   ^^^^^^^^^^ - meta.statement.conditional
#   ^^^^^ meta.generic-name.python
#         ^^^^ meta.path.python meta.generic-name.python

    match expr:
#   ^^^^^^^^^^^ meta.statement.conditional.match.python
#   ^^^^^ keyword.control.conditional.match.python
#         ^^^^ meta.path.python meta.generic-name.python
#             ^ punctuation.section.block.conditional.match.python

    match(expr,)
#   ^^^^^^^^^^^^ meta.function-call
#   ^^^^^ variable.function.python - keyword
#

    match(expr,):
#   ^^^^^ meta.statement.conditional.match.python - meta.sequence
#        ^^^^^^^ meta.statement.conditional.match.python meta.sequence.tuple.python
#               ^ meta.statement.conditional.match.python - meta.sequence
#   ^^^^^ keyword.control.conditional.match.python
#         ^^^^ meta.path.python meta.generic-name.python
#             ^ punctuation.separator.sequence.python
#              ^ punctuation.section.sequence.end.python
#               ^ punctuation.section.block.conditional.match.python

    match *named_expr, other:
#   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.match.python
#   ^^^^^ keyword.control.conditional.match.python
#         ^ keyword.operator.unpacking.sequence.python
#          ^^^^^^^^^^ meta.path.python meta.generic-name.python
#                    ^ punctuation.separator.sequence.python
#                      ^^^^^ meta.path.python meta.generic-name.python
#                           ^ punctuation.section.block.conditional.match.python

    match http_code:
#   ^^^^^^^^^^^^^^^^ meta.statement.conditional.match.python
#   ^^^^^ keyword.control.conditional.match.python
#         ^^^^^^^^^ meta.path.python meta.generic-name.python
#                  ^ punctuation.section.block.conditional.match.python
    case "200":
#   ^^^^^^^^^^^^ meta.disable-dedentation.python
#   ^^^^ meta.statement.conditional.case.python
#       ^^^^^^ meta.statement.conditional.case.patterns.python
#             ^ meta.statement.conditional.case.python
#              ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^^ string.quoted.double.python
#             ^ punctuation.section.block.conditional.case.python
        print("OK")

    case ["403",
#   ^^^^^^^^^^^^ - meta.disable-dedentation
#   ^^^^ meta.statement.conditional.case.python
#       ^^^^^^^^^ meta.statement.conditional.case.patterns.python
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^^^^^^ meta.sequence.list.python
#        ^ punctuation.section.sequence.begin.python
#         ^^^^^ string.quoted.double.python
#              ^ punctuation.separator.sequence.python
        "404"]:
#      ^^^^^^^ meta.statement.conditional.case.patterns.python meta.sequence.list.python
#             ^ meta.statement.conditional.case.python - meta.sequence
#       ^^^^^ string.quoted.double.python
#            ^ punctuation.section.sequence.end.python
#             ^ punctuation.section.block.conditional.case.python
        print("Not Found")

    case \
        418: ; print("I'm a teapot")
#      ^^^^ meta.statement.conditional.case.patterns.python
#          ^ meta.statement.conditional.case.python - meta.sequence
#           ^^^ - meta.statement
#       ^^^ meta.number.integer.decimal.python constant.numeric.value.python
#          ^ punctuation.section.block.conditional.case.python
#            ^ punctuation.terminator.statement.python
#              ^^^^^^^^^^^^^^^^^^^^^ meta.function-call

    case -408+203:
#   ^^^^ meta.statement.conditional.case.python
#       ^^^^^^^^^ meta.statement.conditional.case.patterns.python
#                ^ meta.statement.conditional.case.python - meta.sequence
#                 ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^ keyword.operator.arithmetic.python
#         ^^^ constant.numeric.value.python
#            ^ keyword.operator.arithmetic.python
#             ^^^ constant.numeric.value.python
#                ^ punctuation.section.block.conditional.case.python

    case _: # comment
#   ^^^^ meta.statement.conditional.case.python
#       ^^ meta.statement.conditional.case.patterns.python
#         ^ meta.statement.conditional.case.python
#   ^^^^ keyword.control.conditional.case.python
#        ^ variable.language.anonymous.python
#         ^ punctuation.section.block.conditional.case.python
#           ^^^^^^^^^^ comment.line.number-sign.python
        print("Code not found")

    case *expr:
#   ^^^^ meta.statement.conditional.case.python
#       ^^^^^^ meta.statement.conditional.case.patterns.python
#             ^ meta.statement.conditional.case.python
#        ^ keyword.operator.unpacking.sequence.python
#         ^^^^ meta.generic-name.python
#             ^ punctuation.section.block.conditional.case.python

    case () if foo is True:
#   ^^^^ meta.statement.conditional.case.python - meta.sequence
#       ^ meta.statement.conditional.case.patterns.python - meta.sequence
#        ^^ meta.statement.conditional.case.patterns.python meta.sequence.tuple.empty.python
#          ^ meta.statement.conditional.case.patterns.python
#           ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python
#                         ^ meta.statement.conditional.case.python
#   ^^^^ keyword.control.conditional.case.python
#        ^ punctuation.section.sequence.begin.python
#         ^ punctuation.section.sequence.end.python
#           ^^ keyword.control.conditional.if.python
#              ^^^ meta.generic-name.python
#                  ^^ keyword.operator.logical.python
#                     ^^^^ constant.language.boolean.true.python
#                         ^ punctuation.section.block.conditional.case.python

    case (,) if foo in ('bar', 'baz'):
#   ^^^^ meta.statement.conditional.case.python - meta.sequence
#       ^ meta.statement.conditional.case.patterns.python - meta.sequence
#        ^^^ meta.statement.conditional.case.patterns.python meta.sequence.tuple.python
#           ^ meta.statement.conditional.case.patterns.python - meta.sequence
#            ^^^^^^^^^^ meta.statement.conditional.case.guard.python - meta.sequence.tuple
#                      ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python meta.sequence.tuple.python
#                                    ^ meta.statement.conditional.case.python - meta.sequence.tuple
#   ^^^^ keyword.control.conditional.case.python
#        ^ punctuation.section.sequence.begin.python
#         ^ punctuation.separator.sequence.python
#          ^ punctuation.section.sequence.end.python
#            ^^ keyword.control.conditional.if.python
#               ^^^ meta.generic-name.python
#                   ^^ keyword.operator.logical.python
#                      ^ punctuation.section.sequence.begin.python
#                       ^^^^^ string.quoted.single.python
#                            ^ punctuation.separator.sequence.python
#                              ^^^^^ string.quoted.single.python
#                                   ^ punctuation.section.sequence.end.python
#                                    ^ punctuation.section.block.conditional.case.python

    case [] if foo in ['bar', 'baz']:
#   ^^^^ meta.statement.conditional.case.python - meta.sequence
#       ^ meta.statement.conditional.case.patterns.python - meta.sequence
#        ^^ meta.statement.conditional.case.patterns.python meta.sequence.list.empty.python
#          ^ meta.statement.conditional.case.patterns.python - meta.sequence
#           ^^^^^^^^^^ meta.statement.conditional.case.guard.python - meta.sequence
#                     ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python meta.sequence.list.python
#                                   ^ meta.statement.conditional.case.python - meta.sequence.list
#   ^^^^ keyword.control.conditional.case.python
#        ^ punctuation.section.sequence.begin.python
#         ^ punctuation.section.sequence.end.python
#           ^^ keyword.control.conditional.if.python
#              ^^^ meta.generic-name.python
#                  ^^ keyword.operator.logical.python
#                     ^ punctuation.section.sequence.begin.python
#                      ^^^^^ string.quoted.single.python
#                           ^ punctuation.separator.sequence.python
#                             ^^^^^ string.quoted.single.python
#                                  ^ punctuation.section.sequence.end.python
#                                   ^ punctuation.section.block.conditional.case.python

    case [*expr, (*foo, *bar), *baz]:
#   ^^^^ meta.statement.conditional.case.python - meta.sequence
#       ^ meta.statement.conditional.case.patterns.python - meta.sequence
#        ^^^^^^^^ meta.statement.conditional.case.patterns.python meta.sequence.list.python - meta.sequence meta.sequence
#                ^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.sequence.list.python meta.sequence.tuple.python
#                            ^^^^^^^ meta.statement.conditional.case.patterns.python meta.sequence.list.python - meta.sequence meta.sequence
#                                   ^ meta.statement.conditional.case.python - meta.sequence

    case {} if foo is True:
#   ^^^^ meta.statement.conditional.case.python - meta.mapping
#       ^ meta.statement.conditional.case.patterns.python - meta.mapping
#        ^^ meta.statement.conditional.case.patterns.python meta.mapping.empty.python
#          ^ meta.statement.conditional.case.patterns.python - meta.mapping
#           ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python
#                         ^ meta.statement.conditional.case.python
#   ^^^^ keyword.control.conditional.case.python
#        ^ punctuation.section.mapping.begin.python
#         ^ punctuation.section.mapping.end.python
#           ^^ keyword.control.conditional.if.python
#              ^^^ meta.generic-name.python
#                  ^^ keyword.operator.logical.python
#                     ^^^^ constant.language.boolean.true.python
#                         ^ punctuation.section.block.conditional.case.python

    case { s_key : 'value' , num.key: 100, **pattern} if foo in {'foo', 'bar'}:
#   ^^^^ meta.statement.conditional.case.python - meta.mapping
#       ^ meta.statement.conditional.case.patterns.python - meta.mapping
#        ^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#          ^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.key.python
#               ^^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                  ^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.value.python
#                         ^^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                            ^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.key.python
#                                   ^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                                     ^^^ meta.statement.conditional.case.patterns.python meta.mapping.value.python
#                                        ^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                                                    ^ meta.statement.conditional.case.patterns.python - meta.mapping
#                                                     ^^^^^^^^^^ meta.statement.conditional.case.guard.python - meta.set
#                                                               ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python meta.set.python
#                                                                             ^ meta.statement.conditional.case.python - meta.set
#   ^^^^ keyword.control.conditional.case.python
#        ^ punctuation.section.mapping.begin.python
#          ^^^^^ meta.path.python meta.generic-name.python
#                ^ punctuation.separator.key-value.python
#                  ^^^^^^^ string.quoted.single.python
#                          ^ punctuation.separator.sequence.python
#                            ^^^^^^^ meta.path.python
#                                   ^ punctuation.separator.key-value.python
#                                     ^^^ constant.numeric.value.python
#                                        ^ punctuation.separator.sequence.python
#                                          ^^ keyword.operator.unpacking.mapping.python
#                                            ^^^^^^^ meta.generic-name.python
#                                                   ^ punctuation.section.mapping.end.python
#                                                     ^^ keyword.control.conditional.if.python
#                                                        ^^^ meta.generic-name.python
#                                                            ^^ keyword.operator.logical.python
#                                                               ^ punctuation.section.set.begin.python
#                                                                ^^^^^ string.quoted.single.python
#                                                                     ^ punctuation.separator.set.python
#                                                                       ^^^^^ string.quoted.single.python
#                                                                            ^ punctuation.section.set.end.python
#                                                                             ^ punctuation.section.block.conditional.case.python

    case {
        'key'    # comment
#      ^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python
#      ^ meta.mapping.python
#       ^^^^^ meta.mapping.key.python meta.string.python string.quoted.single.python
#            ^^^^^^^^^^^^^^ meta.mapping.key.python
        :        # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.python
        'value'  # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python
# ^^^^^^ meta.mapping.python
#       ^^^^^^^ meta.mapping.value.python meta.string.python string.quoted.single.python
#              ^^^^^^^^^^^^ meta.mapping.value.python
    }:
# ^^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#    ^ meta.statement.conditional.case.python punctuation.section.block.conditional.case.python
#
    case int():
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#           ^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#             ^ meta.statement.conditional.case.python - meta.function-call
#   ^^^^ keyword.control.conditional.case.python
#        ^^^ support.type.python
#           ^ punctuation.section.arguments.begin.python
#            ^ punctuation.section.arguments.end.python
#             ^ punctuation.section.block.conditional.case.python

    case else():
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#            ^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#              ^ meta.statement.conditional.case.python - meta.function-call
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^ invalid.illegal.name.python
#            ^ punctuation.section.arguments.begin.python
#             ^ punctuation.section.arguments.end.python
#              ^ punctuation.section.block.conditional.case.python

    case name(*pattern, *expr):
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#            ^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                             ^ meta.statement.conditional.case.python - meta.function-call
#                              ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^ support.class.python
#            ^ punctuation.section.arguments.begin.python
#             ^ keyword.operator.unpacking.sequence.python
#              ^^^^^^^ meta.generic-name.python
#                     ^ punctuation.separator.arguments.python
#                       ^ keyword.operator.unpacking.sequence.python
#                        ^^^^ meta.generic-name.python
#                            ^ punctuation.section.arguments.end.python
#                             ^ punctuation.section.block.conditional.case.python

    case name(key = pattern):
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#            ^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                           ^ meta.statement.conditional.case.python - meta.function-call
#                            ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^ support.class.python
#            ^ punctuation.section.arguments.begin.python
#             ^^^ variable.parameter.python
#                 ^ keyword.operator.assignment.python
#                   ^^^^^^^ meta.path.python meta.generic-name.python
#                          ^ punctuation.section.arguments.end.python
#                           ^ punctuation.section.block.conditional.case.python

    case path.name(key = pattern):
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^^^^^^ meta.statement.conditional.case.patterns.python - meta.function-call
#             ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#                 ^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                                ^ meta.statement.conditional.case.python - meta.function-call
#                                 ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^^^^^^ meta.path.python
#        ^^^^ meta.generic-name.python
#            ^ punctuation.accessor.dot.python
#             ^^^^ support.class.python
#                 ^ punctuation.section.arguments.begin.python
#                  ^^^ variable.parameter.python
#                      ^ keyword.operator.assignment.python
#                        ^^^^^^^ meta.path.python meta.generic-name.python
#                               ^ punctuation.section.arguments.end.python
#                                ^ punctuation.section.block.conditional.case.python

    case path \
        . \
        name(key = pattern):
#   ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python
#       ^^^^ meta.function-call.identifier.python
#           ^^^^^^^^^^^^^^^ meta.function-call.arguments.python
#                          ^ meta.statement.conditional.case.python
#       ^^^^ support.class.python
#           ^ punctuation.section.arguments.begin.python
#            ^^^ variable.parameter.python
#                ^ keyword.operator.assignment.python
#                  ^^^^^^^ meta.generic-name.python
#                         ^ punctuation.section.arguments.end.python
#                          ^ punctuation.section.block.conditional.case.python

    case int(), MyClass(keyword=('('|')') as foo, if=*args), else() if foo is None:
#  ^ - meta.statement
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#           ^^ meta.statement.conditional.case.patterns.python  meta.function-call.arguments.python
#             ^^ meta.statement.conditional.case.patterns.python - meta.function-call
#               ^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#                      ^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python - meta.group
#                               ^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python meta.group.python
#                                        ^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python - meta.group
#                                                          ^^ meta.statement.conditional.case.patterns.python - meta.function-call
#                                                            ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.identifier.python
#                                                                ^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                                                                  ^ meta.statement.conditional.case.patterns.python - meta.function-call
#                                                                   ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python - meta.function-call
#                                                                                 ^ meta.statement.conditional.case.python
#                                                                                  ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^ support.type.python
#           ^ punctuation.section.arguments.begin.python
#            ^ punctuation.section.arguments.end.python
#             ^ punctuation.separator.sequence.python
#               ^^^^^^^ support.class.python
#                      ^ punctuation.section.arguments.begin.python
#                       ^^^^^^^ variable.parameter.python
#                              ^ keyword.operator.assignment.python
#                               ^ punctuation.section.group.begin.python
#                                ^^^ string.quoted.single.python
#                                   ^ keyword.operator.logical.python
#                                    ^^^ string.quoted.single.python
#                                       ^ punctuation.section.group.end.python
#                                         ^^ keyword.control.conditional.case.as.python
#                                            ^^^ meta.generic-name.python
#                                               ^ punctuation.separator.arguments.python
#                                                 ^^ invalid.illegal.name.python
#                                                   ^ keyword.operator.assignment.python
#                                                    ^ keyword.operator.unpacking.sequence.python
#                                                     ^^^^ meta.generic-name.python
#                                                         ^ punctuation.section.arguments.end.python
#                                                          ^ punctuation.separator.sequence.python
#                                                            ^^^^ invalid.illegal.name.python
#                                                                ^ punctuation.section.arguments.begin.python
#                                                                 ^ punctuation.section.arguments.end.python
#                                                                   ^^ keyword.control.conditional.if.python
#                                                                      ^^^ meta.generic-name.python
#                                                                          ^^ keyword.operator.logical.python
#                                                                             ^^^^ constant.language.null.python
#                                                                                 ^ punctuation.section.block.conditional.case.python

    case *expr as _:
#              ^^ keyword.control.conditional.case.as.python
#                 ^ variable.language.anonymous.python

    case *expr as isinstance:
#              ^^ keyword.control.conditional.case.as.python
#                 ^^^^^^^^^^ meta.generic-name.python

    case *expr as elif:
#              ^^ keyword.control.conditional.case.as.python
#                 ^^^^ invalid.illegal.name.python

    if not case:
#          ^^^^ meta.generic-name.python - keyword
        case = 10
#       ^^^^ meta.generic-name.python - keyword
        g = case.foo(1)
#           ^^^^ meta.generic-name.python - keyword
        e = case + foo
#           ^^^^ meta.generic-name.python - keyword
        case.case
#       ^^^^ meta.generic-name.python - keyword
#           ^ punctuation.accessor.dot.python
#            ^^^^ meta.generic-name.python - keyword
        case()
#       ^^^^ variable.function.python - keyword

    case: int = 0
#   ^^^^ meta.generic-name.python - keyword
#       ^ punctuation.separator.annotation.python
#         ^^^ support.type.python
#             ^ keyword.operator.assignment.python
#               ^ meta.number.integer.decimal.python constant.numeric.value.python

    case \
#   ^^^^ meta.generic-name.python - keyword
#        ^ punctuation.separator.continuation.line.python
    : int = 0
#   ^ punctuation.separator.annotation.python
#     ^^^ support.type.python
#         ^ keyword.operator.assignment.python
#           ^ meta.number.integer.decimal.python constant.numeric.value.python

    match = re.match(r"^.*$")
#   ^^^^^ meta.generic-name.python - keyword
#              ^^^^^ meta.function-call.identifier.python variable.function.python
    if match:
#      ^^^^^ meta.generic-name.python - keyword
        g = match.group(1)
#           ^^^^^ meta.generic-name.python - keyword
        e = match + foo
#           ^^^^^ meta.generic-name.python - keyword
        match()
#       ^^^^^ variable.function.python - keyword
        match.match
#       ^^^^^ meta.generic-name.python - keyword
#            ^ punctuation.accessor.dot.python
#             ^^^^^ meta.generic-name.python - keyword

    match: int = 0
#   ^^^^^ meta.generic-name.python - keyword
#        ^ punctuation.separator.annotation.python
#          ^^^ support.type.python
#              ^ keyword.operator.assignment.python
#                ^ meta.number.integer.decimal.python constant.numeric.value.python

    match \
#   ^^^^^ meta.generic-name.python - keyword
#         ^ punctuation.separator.continuation.line.python
    : int = 0
#   ^ punctuation.separator.annotation.python
#     ^^^ support.type.python
#         ^ keyword.operator.assignment.python
#           ^ meta.number.integer.decimal.python constant.numeric.value.python

##################
# Function definitions
##################

def abc():
    global from, for, variable, .
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.modifier.python
#   ^^^^^^ storage.modifier.global
#          ^^^^ invalid.illegal.name
#                ^^^ invalid.illegal.name
#                               ^ invalid.illegal.name.storage

def my_func # comment
#^^^^^^^^^^ meta.function.python - meta.function meta.function
#          ^^^^^^^^^^^ - meta.function
#   ^^^^^^^ entity.name.function.python
#           ^^^^^^^^^ comment.line.number-sign.python

def my_func() # comment
#^^^^^^^^^^^^^ - meta.function meta.function
#^^^^^^^^^^ meta.function.python
#          ^^ meta.function.parameters.python
#            ^^^^^^^^^^^ - meta.function
#   ^^^^^^^ entity.name.function.python
#          ^ punctuation.section.parameters.begin.python
#           ^ punctuation.section.parameters.end.python
#             ^^^^^^^^^ comment.line.number-sign.python

def my_func(): # comment
#^^^^^^^^^^^^^ - meta.function meta.function
#^^^^^^^^^^ meta.function.python
#          ^^ meta.function.parameters.python
#            ^ meta.function.python
#             ^^^^^^^^^^^ - meta.function
#   ^^^^^^^ entity.name.function.python
#          ^ punctuation.section.parameters.begin.python
#           ^ punctuation.section.parameters.end.python
#            ^ punctuation.section.function.begin.python
#              ^^^^^^^^^ comment.line.number-sign.python

def my_func(param1, # Multi-line function definition
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
#^^^^^^^^^^ meta.function.python
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.python
#                 ^ punctuation.separator.parameters
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign

    # This is defaulted
#   ^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python

    param2='#1' \
#  ^^^^^^^^^^^^^^^ meta.function.parameters - meta.function meta.function
#               ^ punctuation.separator.continuation.line.python

    ,
#   ^ punctuation.separator.parameters.python

    ( arg1 # comment )
#  ^ meta.function.parameters.python - meta.group
#   ^^^^^^^ meta.function.parameters.python meta.group.python - comment
#          ^^^^^^^^^^^^ meta.function.parameters.python meta.group.python comment.line.number-sign.python

    # comment
#   ^^^^^^^^^^ comment.line.number-sign.python
        ,

    # comment
#   ^^^^^^^^^^ comment.line.number-sign.python
    )
#  ^^ meta.function.parameters.python meta.group.python
#   ^ punctuation.section.group.end.python
#    ^ meta.function.parameters.python - meta.group

) :
# <- meta.function.parameters.python punctuation.section.parameters.end
#^^ meta.function.python - meta.function meta.function
#  ^ - meta.function
# ^ punctuation.section.function.begin.python
    print('Hi!')


def func(from='me'):
#^^^^^^^^^^^^^^^^^^^ meta.function - meta.function meta.function
#        ^^^^ invalid.illegal.name
    pass

def type_annotations(param1: int, param2: MyType | None , param3: max(2, 3), param4: "string" = "default") -> int :
#^^^^^^^^^^^^^^^^^^^ meta.function.python - meta.function meta.function
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters - meta.function meta.function
#                                                                                                         ^ meta.function.python - meta.function meta.function
#                                                                                                          ^^^ meta.function.return-type.python - meta.type - meta.function meta.function
#                                                                                                             ^^^ meta.function.return-type.python meta.type.python - meta.function meta.function
#                                                                                                                ^ meta.function.return-type.python - meta.type - meta.function meta.function
#                                                                                                                 ^ meta.function.python - meta.function meta.function
#                   ^ - meta.function meta.function.parameters
#                    ^^^^^^ variable.parameter
#                          ^^^^^ meta.function.parameters.annotation
#                          ^ punctuation.separator.annotation
#                            ^^^ meta.type.python support.type.python
#                               ^ punctuation.separator.parameters
#                                 ^^^^^^ variable.parameter
#                                       ^ punctuation.separator.annotation
#                                         ^^^^^^^^^^^^^ meta.type.python
#                                         ^^^^^^ meta.path.python meta.generic-name.python
#                                                ^ keyword.operator.arithmetic.python
#                                                  ^^^^ constant.language.null.python
#                                                       ^ punctuation.separator.parameters
#                                                         ^^^^^^ variable.parameter
#                                                               ^ punctuation.separator.annotation
#                                                                 ^^^^^^^^^ meta.function-call
#                                                                    ^ punctuation.section.arguments.begin
#                                                                     ^ constant.numeric
#                                                                        ^ constant.numeric
#                                                                         ^ punctuation.section.arguments.end
#                                                                            ^^^^^^ variable.parameter
#                                                                                  ^ punctuation.separator.annotation
#                                                                                    ^^^^^^^^ meta.type.python meta.string.python string.quoted.double.python
#                                                                                             ^^^^^^^^^^^ meta.function.parameters.default-value
#                                                                                             ^ keyword.operator.assignment
#                                                                                               ^^^^^^^^^ string.quoted.double
#                                                                                                        ^ punctuation.section.parameters.end
#                                                                                                          ^^ punctuation.separator.return-type.python
#                                                                                                             ^^^ support.type
#                                                                                                                 ^ punctuation.section.function.begin

def type_annotations_arrow_only() ->
    pass
# <- - meta.function - meta.type
#   ^^^^ keyword.control.flow.pass.python

def type_annotations_without_terminator() -> int
    pass
# <- - meta.function - meta.type
#   ^^^^ keyword.control.flow.pass.python

def type_annotations_terminated_by_keyword() -> int if
    pass
# <- - meta.function - meta.type
#   ^^^^ keyword.control.flow.pass.python

def type_annotations_without_terminator_followed_by_comment() -> int # comment
#                                                             ^^^ meta.function.return-type.python - meta.type
#                                                                ^^^ meta.function.return-type.python meta.type.python
#                                                                   ^^^^^^^^^^^ - meta.function - meta.type
#                                                             ^^ punctuation.separator.return-type.python
#                                                                ^^^ support.type.python
    pass
# <- - meta.function - meta.type
#   ^^^^ keyword.control.flow.pass.python

def type_annotations_line_continuation_without_terminator() \
      -> int
#^^^^^^^^^^^ - meta.function meta.function
#           ^ - meta.function
#^^^^^ meta.function.python
#     ^^^^^^ meta.function.return-type
#     ^^ punctuation.separator.return-type.python
#        ^^^ meta.type support.type
    pass

def type_annotations_line_continuation_without_terminator_but_comment() \
      -> int # comment
#^^^^^^^^^^^ - meta.function meta.function
#           ^^^^^^^^^^ - meta.function
#^^^^^ meta.function.python
#     ^^^^^^ meta.function.return-type
#     ^^ punctuation.separator.return-type.python
#        ^^^ meta.type support.type
    pass

def type_annotations_line_continuation() \
      -> int:
#^^^^^^^^^^^^ - meta.function meta.function
#^^^^^ meta.function.python
#     ^^^^^^ meta.function.return-type
#           ^ meta.function.python
#     ^^ punctuation.separator.return-type.python
#        ^^^ meta.type support.type
#           ^ punctuation.section.function.begin
    pass

def type_annotations_line_continuation() \
      -> \
      int:
# <- meta.function.return-type.python - meta.type
#^^^^^ meta.function.return-type.python - meta.type
#     ^^^ meta.function.return-type.python meta.type.python support.type.python
#        ^ meta.function.python punctuation.section.function.begin.python
    pass

def type_annotations_line_continuation() \
      -> \
      int \
      :
# <- meta.function.return-type.python - meta.type
#^^^^^ meta.function.return-type.python - meta.type
#     ^ meta.function.python punctuation.section.function.begin.python
    pass

def type_annotation_with_defaults(foo: str | None = None)
#                                    ^^ meta.function.parameters.annotation.python - meta.function.parameters.default-value - meta.type
#                                      ^^^^^^^^^^ meta.function.parameters.annotation.python meta.type.python - meta.function.parameters.default-value
#                                                ^ meta.function.parameters.annotation.python - meta.function.parameters.default-value - meta.type
#                                                 ^^^^^^ meta.function.parameters.default-value.python - meta.function.parameters.annotation
#                                      ^^^ support.type.python
#                                          ^ keyword.operator.arithmetic.python
#                                            ^^^^ constant.language.null.python
#                                                 ^ keyword.operator.assignment.python
#                                                   ^^^^ constant.language.null.python

def last_type_annotation(
    foo: str | None
#   ^^^ meta.function.parameters.python
#      ^^ meta.function.parameters.annotation.python - meta.type
#        ^^^^^^^^^^ meta.function.parameters.annotation.python meta.type.python
#                  ^ meta.function.parameters.python - meta.type
): pass
# <- meta.function.parameters.python punctuation.section.parameters.end.python

async def coroutine(param1):
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                  ^^^^^^^^ meta.function.parameters - meta.function meta.function
# <- keyword.declaration.async
#     ^^^ keyword.declaration.function.python
#         ^ entity.name.function
   pass

def func(*): pass
#       ^^^ meta.function.parameters.python
#        ^ keyword.operator.unpacking.sequence.python

def func(p1, p2, *): pass
#                ^ keyword.operator.unpacking.sequence.python
#                 ^ punctuation.section.parameters.end.python

def func(*args, other_arg=2**10, **kwargs):
#        ^ keyword.operator.unpacking.sequence.python
#                          ^^ keyword.operator.arithmetic.python
#                                ^^ keyword.operator.unpacking.mapping.python
    pass

def func(
    *args,
#   ^ keyword.operator.unpacking.sequence
    other_arg=2**10,
#              ^^ keyword.operator.arithmetic
    **kwargs
#   ^^ keyword.operator.unpacking.mapping
):
    pass

def func(

    *
#   ^ keyword.operator.unpacking.sequence.python

    args,
#   ^^^^ variable.parameter.python

    other_arg
    = 2

    **
#   ^^ keyword.operator.arithmetic.python
    10,

    **
#   ^^ keyword.operator.unpacking.mapping.python

    kwargs
#   ^^^^^^ variable.parameter.python
):
    pass

def func(args, (x, y)=(0,0)):
#       ^^^^^^^^^^^^^ meta.function.parameters.python
#                    ^^^^^^ meta.function.parameters.default-value.python
#                          ^ meta.function.parameters.python
#              ^^^^^^ meta.group.python
#                    ^ - meta.group.python
#                     ^^^^^ meta.sequence.tuple.python
#                          ^ - meta.group.python
#       ^ punctuation.section.parameters.begin.python
#            ^ punctuation.separator.parameters.python
#              ^ punctuation.section.group.begin.python
#               ^ variable.parameter.python
#                ^ punctuation.separator.parameters.python
#                  ^ variable.parameter.python
#                   ^ punctuation.section.group.end.python
#                    ^ keyword.operator.assignment.python
#                     ^ punctuation.section.sequence.begin.python
#                      ^ meta.number.integer.decimal.python constant.numeric.value.python
#                       ^ punctuation.separator.sequence.python
#                        ^ meta.number.integer.decimal.python constant.numeric.value.python
#                         ^ punctuation.section.sequence.end.python
#                          ^ punctuation.section.parameters.end.python
    pass

def func(arg: int = 0, (x: float, y=20) = (0.0, "default")):
#                      ^^^^^^^^^^^^^^^^ meta.group.python
#                                      ^^^ - meta.group.python
#                                         ^^^^^^^^^^^^^^^^ meta.sequence.tuple.python
#                      ^ punctuation.section.group.begin.python
#                       ^ variable.parameter.python
#                        ^^^^^^^ invalid.illegal.annotation.python
#                               ^ punctuation.separator.parameters.python
#                                 ^ variable.parameter.python
#                                  ^^^ invalid.illegal.default-value.python
#                                     ^ punctuation.section.group.end.python
#                                       ^ keyword.operator.assignment.python
#                                         ^ punctuation.section.sequence.begin.python
#                                                        ^ punctuation.section.sequence.end.python
    pass

def func(p1, p2=None, /, p_or_kw=None, *, kw): pass
#                     ^ storage.modifier.positional-args-only.python
#                      ^ punctuation.separator.parameters.python
#                                    ^ punctuation.separator.parameters.python
#                                      ^ storage.modifier.named-args-only.python
#                                       ^ punctuation.separator.parameters.python

def func(p1, p2, /): pass
#                ^ storage.modifier.positional-args-only.python
#                 ^ punctuation.section.parameters.end.python

def func(p1, p2, *,): pass
#                ^ storage.modifier.named-args-only.python
#                 ^ punctuation.separator.parameters.python
#                  ^ punctuation.section.parameters.end.python

def func(*,): pass
#       ^^^^ meta.function.parameters.python
#        ^ storage.modifier.named-args-only.python

def func(
    bar: str,

    *
#  ^^^ meta.function.parameters.python
#   ^ storage.modifier.named-args-only.python

    ,
#  ^^^ meta.function.parameters.python
#   ^ punctuation.separator.parameters.python

    baz: str,
#  ^^^^^^^^^^^ meta.function.parameters
#   ^^^ variable.parameter.python
#      ^ punctuation.separator.annotation
#        ^^^ support.type.python
#           ^ punctuation.separator.parameters.python
): pass

# generic function (python 3.12+)

def f[T: Hashable, U: (int, str), *V, **P](x: T = SOME_CONSTANT, y: U, *args: *Ts, **kwargs: P.kwargs) -> T:
#   ^ meta.function.python - meta.generic
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.python meta.generic
#                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#   ^ entity.name.function.python
#    ^ punctuation.definition.generic.begin.python
#     ^ variable.parameter.type.python
#      ^ punctuation.separator.bound.python
#        ^^^^^^^^ support.class.typing.python
#                ^ punctuation.separator.parameters.python
#                  ^ variable.parameter.type.python
#                   ^ punctuation.separator.bound.python
#                     ^^^^^^^^^^ meta.sequence.tuple.python
#                     ^ punctuation.section.sequence.begin.python
#                      ^^^ support.type.python
#                         ^ punctuation.separator.sequence.python
#                           ^^^ meta.path.python support.type.python
#                              ^ punctuation.section.sequence.end.python
#                               ^ punctuation.separator.parameters.python
#                                 ^ keyword.operator.unpacking.sequence.python
#                                  ^ variable.parameter.type.python
#                                   ^ punctuation.separator.parameters.python
#                                     ^^ keyword.operator.unpacking.mapping.python
#                                       ^ variable.parameter.type.python
#                                        ^ punctuation.definition.generic.end.python
#                                         ^ punctuation.section.parameters.begin.python
#                                          ^ variable.parameter.python
#                                           ^ punctuation.separator.annotation.python
#                                             ^ meta.type.python meta.path.python meta.generic-name.python
#                                               ^ meta.function.parameters.default-value.python keyword.operator.assignment.python
#                                                 ^^^^^^^^^^^^^ meta.path.python variable.other.constant.python
#                                                              ^ punctuation.separator.parameters.python
#                                                                ^ variable.parameter.python
#                                                                 ^ punctuation.separator.annotation.python
#                                                                   ^ meta.type.python meta.path.python meta.generic-name.python
#                                                                    ^ punctuation.separator.parameters.python
#                                                                      ^ keyword.operator.unpacking.sequence.python
#                                                                       ^^^^ variable.parameter.python
#                                                                           ^ punctuation.separator.annotation.python
#                                                                             ^ meta.type.python keyword.operator.arithmetic.python
#                                                                              ^^ meta.type.python meta.path.python meta.generic-name.python
#                                                                                ^ punctuation.separator.parameters.python
#                                                                                  ^^ keyword.operator.unpacking.mapping.python
#                                                                                    ^^^^^^ variable.parameter.python
#                                                                                          ^ punctuation.separator.annotation.python
#                                                                                            ^ meta.type.python meta.path.python meta.generic-name.python
#                                                                                             ^ meta.type.python meta.path.python punctuation.accessor.dot.python
#                                                                                              ^^^^^^ meta.type.python meta.path.python meta.generic-name.python
#                                                                                                    ^ punctuation.section.parameters.end.python
#                                                                                                      ^^ punctuation.separator.return-type.python
#                                                                                                         ^ meta.type.python meta.path.python meta.generic-name.python

def f[
# ^^^ meta.function.python - meta.generic
#    ^^ meta.function.python meta.generic.python
# ^ keyword.declaration.function.python
#   ^ entity.name.function.python
#    ^ punctuation.definition.generic.begin.python
    T: Hashable,
#   ^^ meta.generic.python
#     ^ meta.generic.bound.python - meta.type
#      ^^^^^^^^ meta.generic.bound.python meta.type.python
#              ^ meta.generic.python - meta.type
#   ^ variable.parameter.type.python
#    ^ punctuation.separator.bound.python
#      ^^^^^^^^ support.class.typing.python
#              ^ punctuation.separator.parameters.python
    U: (int, str)
#   ^^ meta.generic.python
#     ^ meta.generic.bound.python - meta.type
#      ^^^^^^^^^^ meta.generic.bound.python meta.type.python meta.sequence.tuple.python
#                ^ meta.generic.python - meta.type
#   ^ variable.parameter.type.python
#    ^ punctuation.separator.bound.python
#      ^ punctuation.section.sequence.begin.python
#       ^^^ support.type.python
#          ^ punctuation.separator.sequence.python
#            ^^^ support.type.python
#               ^ punctuation.section.sequence.end.python
    ]() -> T:
# <- meta.function.python meta.generic.python
#^^^^ meta.function.python meta.generic.python
#    ^^ meta.function.parameters.python
#       ^^^^ meta.function.return-type.python
#   ^ punctuation.definition.generic.end.python
#    ^ punctuation.section.parameters.begin.python
#     ^ punctuation.section.parameters.end.python
#       ^^ punctuation.separator.return-type.python
#          ^ meta.type.python meta.path.python meta.generic-name.python
#           ^ meta.function.python punctuation.section.function.begin.python


##################
# Class definitions
##################

class MyClass():
#^^^^^^^^^^^^ meta.class.python - meta.class meta.class
#            ^^ meta.class.inheritance.python - meta.class meta.class
#              ^ meta.class.python - meta.class meta.class punctuation.section.class.begin
    def my_func(self, param1, # Multi-line function definition
#               ^^^^ variable.parameter.python variable.language.python
#                   ^ punctuation.separator.parameters.python
#                     ^^^^^^ variable.parameter.python - variable.language
#                             ^ comment.line.number-sign
        # This is defaulted
#       ^ comment.line.number-sign
        param2='#1'):
#                  ^ punctuation.section.parameters.end
        print('Hi!')


class UnicødeIdentifier():
#     ^^^^^^^^^^^^^^^^^ entity.name.class
    def résumé():
#       ^^^^^^ entity.name.function
        """
#       ^^^ punctuation.definition.comment.begin
        A function-level docstring
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.python
        """
#       ^^^ punctuation.definition.comment.end

        yield from range(100)
#       ^^^^^ keyword.control.flow
#            ^ - keyword
#             ^^^^ keyword.control.flow


class MyClass(Inherited, \
#     ^^^^^^^ entity.name.class
#             ^^^^^^^^^ entity.other.inherited-class
#                      ^ punctuation.separator.inheritance
#                        ^ punctuation.separator.continuation.line.python
              module . Inherited2, metaclass=ABCMeta):
#             ^^^^^^^^^^^^^^^^^^^ meta.path - meta.path meta.path
#             ^^^^^^ variable.namespace - entity
#                    ^ punctuation.accessor.dot
#                      ^^^^^^^^^^ entity.other.inherited-class
#                                ^ punctuation.separator.inheritance
#                                  ^^^^^^^^^ variable.parameter.class-inheritance
#                                           ^ keyword.operator.assignment
#                                            ^^^^^^^ entity.other.inherited-class.python
    ur'''
#   ^^ storage.type.string
    This is a test of docstrings
    '''
#   ^^^ comment.block.documentation.python
    pass


class DataClass(TypedDict, None, total=False, True=False):
#     ^^^^^^^^^ entity.name.class.python
#               ^^^^^^^^^ entity.other.inherited-class.python
#                        ^ punctuation.separator.inheritance.python
#                          ^^^^ constant.language.null.python
#                              ^ punctuation.separator.inheritance.python
#                                ^^^^^ variable.parameter.class-inheritance.python
#                                     ^ keyword.operator.assignment.python
#                                      ^^^^^ constant.language.boolean.false.python
#                                           ^ punctuation.separator.inheritance.python
#                                             ^^^^ constant.language.boolean.true.python
#                                                 ^ invalid.illegal.assignment.python
#                                                  ^^^^^ constant.language.boolean.false.python

class MyClass(func(var, arg=var), module.func(var, arg=var)):
#     ^^^^^^^ meta.class.python
#            ^ meta.class.inheritance.python - meta.function-call
#             ^^^^ meta.class.inheritance.python meta.function-call.identifier.python
#                 ^^^^^^^^^^^^^^ meta.class.inheritance.python meta.function-call.arguments.python
#                               ^^^^^^^^^ meta.class.inheritance.python - meta.function-call
#                                        ^^^^ meta.class.inheritance.python meta.function-call.identifier.python
#                                            ^^^^^^^^^^^^^^ meta.class.inheritance.python meta.function-call.arguments.python
#                                                          ^ meta.class.inheritance.python
#                                                           ^ meta.class.python
#     ^^^^^^^ entity.name.class.python
#            ^ punctuation.section.inheritance.begin.python
#             ^^^^ variable.function.python
#                 ^ punctuation.section.arguments.begin.python
#                  ^^^ meta.generic-name.python
#                     ^ punctuation.separator.arguments.python
#                       ^^^ variable.parameter.python
#                          ^ keyword.operator.assignment.python
#                           ^^^ meta.generic-name.python
#                              ^ punctuation.section.arguments.end.python
#                               ^ punctuation.separator.inheritance.python
#                                 ^^^^^^ meta.path.python meta.generic-name.python
#                                       ^ meta.path.python punctuation.accessor.dot.python
#                                        ^^^^ meta.path.python variable.function.python
#                                            ^ punctuation.section.arguments.begin.python
#                                             ^^^ meta.generic-name.python
#                                                ^ punctuation.separator.arguments.python
#                                                  ^^^ variable.parameter.python
#                                                     ^ keyword.operator.assignment.python
#                                                      ^^^ meta.generic-name.python
#                                                         ^ punctuation.section.arguments.end.python
#                                                          ^ punctuation.section.inheritance.end.python
#                                                           ^ punctuation.section.class.begin.python

class MyClass:
    def foo():
        return None

    def bar():
#   ^^^^^^^^^^ meta.function
#   ^^^ keyword.declaration.function.python
        return True


class Unterminated(Inherited:
# <- meta.class.python keyword.declaration.class.python
#                           ^ invalid.illegal


class AClass:
    # `def` immediately after a line-continued string within a class
    x =  "Type help() for interactive help, " \
         "or help(object) for help about object."
    def __call__(self, *args, **kwds):
#   ^^^ - invalid.illegal
        pass


class GenericClass[T: X, **U]:
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.python
#     ^^^^^^^^^^^^ entity.name.class.python
#                 ^^^ meta.generic.python
#                    ^ meta.generic.bound.python - meta.type
#                     ^ meta.generic.bound.python meta.type.python
#                      ^^^^^^ meta.generic.python - meta.type
#                 ^ punctuation.definition.generic.begin.python
#                  ^ variable.parameter.type.python
#                   ^ punctuation.separator.bound.python
#                     ^ meta.path.python meta.generic-name.python
#                      ^ punctuation.separator.parameters.python
#                        ^^ keyword.operator.unpacking.mapping.python
#                          ^ variable.parameter.type.python
#                           ^ punctuation.definition.generic.end.python
#                            ^ punctuation.section.class.begin.python

    from typing import override
#                      ^^^^^^^^ support.function.typing.python

    __override__ = True
#   ^^^^^^^^^^^^ support.variable.magic.python

    @override
#   ^^^^^^^^^ meta.annotation.python
#   ^ punctuation.definition.annotation.python
#    ^^^^^^^^ variable.annotation.python
    def method(arg: T):
#   ^^^^^^^^^^ meta.function.python
#             ^^^^^^^^ meta.function.parameters
#                   ^ meta.type.python meta.path.python meta.generic-name.python


##################
# Type definitions
##################

type
# <- meta.generic-name - keyword
#^^^ meta.generic-name - keyword

type Alias # [T: int] = list[T]
# <- meta.type-alias.python keyword.declaration.class.python
#^^^^^^^^^ meta.type-alias.python
#    ^^^^^ entity.name.type.alias.python
#          ^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python

type Alias[T: int] = list[T]
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.type-alias.python
#^^^ keyword.declaration.class.python
#    ^^^^^ entity.name.type.alias.python
#         ^^^^^^^^ meta.generic
#         ^ punctuation.definition.generic.begin.python
#          ^ variable.parameter.type.python
#           ^ punctuation.separator.bound.python
#             ^^^ meta.type.python support.type.python
#                ^ punctuation.definition.generic.end.python
#                  ^ keyword.operator.assignment.python
#                    ^^^^ support.type.python
#                        ^^^ meta.brackets.python
#                        ^ punctuation.section.brackets.begin.python
#                         ^ meta.generic-name.python
#                          ^ punctuation.section.brackets.end.python

type \
 Alias[T: int] = list[T]
#^^^^^^^^^^^^^^^^^^^^^^^ meta.type-alias.python
#^^^^^ entity.name.type.alias.python
#     ^^^^^^^^ meta.generic
#     ^ punctuation.definition.generic.begin.python
#      ^ variable.parameter.type.python
#       ^ punctuation.separator.bound.python
#         ^^^ meta.type.python support.type.python
#            ^ punctuation.definition.generic.end.python
#              ^ keyword.operator.assignment.python
#                ^^^^ support.type.python
#                    ^^^ meta.brackets.python
#                    ^ punctuation.section.brackets.begin.python
#                     ^ meta.generic-name.python
#                      ^ punctuation.section.brackets.end.python

type \
 Alias \
 [T: int] = list[T]
#^^^^^^^^^^^^^^^^^^ meta.type-alias.python
#^^^^^^^^ meta.generic
#^ punctuation.definition.generic.begin.python
# ^ variable.parameter.type.python
#  ^ punctuation.separator.bound.python
#    ^^^ meta.type.python support.type.python
#       ^ punctuation.definition.generic.end.python
#         ^ keyword.operator.assignment.python
#           ^^^^ support.type.python
#               ^^^ meta.brackets.python
#               ^ punctuation.section.brackets.begin.python
#                ^ meta.generic-name.python
#                 ^ punctuation.section.brackets.end.python

type \
 Alias \
 [T: int] \
 = list[T]
#^^^^^^^^^ meta.type-alias.python
#^ keyword.operator.assignment.python
#  ^^^^ support.type.python
#      ^^^ meta.brackets.python
#      ^ punctuation.section.brackets.begin.python
#       ^ meta.generic-name.python
#        ^ punctuation.section.brackets.end.python

  type Alias
# <- meta.type-alias.python
#^^^^^^^^^^^ meta.type-alias.python
# ^^^^ keyword.declaration.class.python
#      ^^^^^ entity.name.type.alias.python

type(data)
# <- meta.function-call.identifier.python support.function.builtin.python
#^^^ meta.function-call.identifier.python support.function.builtin.python
#   ^^^^^^ meta.function-call.arguments.python
#   ^ punctuation.section.arguments.begin.python
#    ^^^^ meta.path.python meta.generic-name.python
#        ^ punctuation.section.arguments.end.python

type: Alias
# <- meta.generic-name.python
#^^^ meta.generic-name.python
#   ^ punctuation.separator.annotation.python
#     ^^^^^ meta.type.python meta.path.python meta.generic-name.python

type = 10
# <- meta.generic-name.python
#^^^ meta.generic-name.python
#    ^ keyword.operator.assignment.python
#      ^^ meta.number.integer.decimal.python constant.numeric.value.python

class Foo:
    type: Alias
#   ^^^^ meta.generic-name.python
#       ^ punctuation.separator.annotation.python
#         ^^^^^ meta.type.python meta.path.python meta.generic-name.python

    type = 10
#   ^^^^ meta.generic-name.python
#        ^ keyword.operator.assignment.python
#          ^^ meta.number.integer.decimal.python constant.numeric.value.python

    def __init__(self, type: int):
#                      ^^^^ variable.parameter.python
        self.type = type
#            ^^^^ meta.path.python meta.generic-name.python
#                   ^^^^ meta.path.python meta.generic-name.python

        self.me = type(type)
#                 ^^^^ meta.function-call.identifier.python support.function.builtin.python
#                     ^^^^^^ meta.function-call.arguments.python
#                     ^ punctuation.section.arguments.begin.python
#                      ^^^^ meta.path.python meta.generic-name.python
#                          ^ punctuation.section.arguments.end.python

##################
# Decorators
##################

@ normal . decorator
# <- meta.annotation punctuation.definition.annotation
#^^^^^^^^^^^^^^^^^^^ meta.annotation
# ^^^^^^^^^^^^^^^^^^ meta.path
# ^^^^^^ meta.generic-name - variable.annotation
#          ^^^^^^^^^ variable.annotation
#        ^ punctuation.accessor.dot - variable
#                   ^ - meta.annotation
class Class():

    @functools.wraps(method, 12, kwarg=None)# comment
#^^^ - meta.annotation
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.python
#    ^^^^^^^^^^^^^^^ meta.function-call.identifier.python meta.path.python
#                   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.python
#   ^ punctuation.definition.annotation
#    ^^^^^^^^^ meta.generic-name - variable.annotation
#             ^ punctuation.accessor.dot
#              ^^^^^ variable.annotation.python
#                   ^ punctuation.section.arguments.begin
#                          ^ punctuation.separator.arguments
#                            ^^ constant.numeric
#                              ^ punctuation.separator.arguments
#                                ^^^^^ variable.parameter
#                                     ^ keyword.operator
#                                      ^^^^ constant.language
#                                          ^ punctuation.section.arguments.end
#                                           ^^^^^^^^^ comment - meta.annotation
    def wrapper(self):
        return self.__class__(method)

    @deco(*args)
#         ^ keyword.operator.unpacking.sequence.python

    @deco(**kwargs)
#         ^^ keyword.operator.unpacking.mapping.python

    @deco #comment
#^^^ - meta.annotation
#   ^^^^^ meta.annotation
#    ^^^^ variable.annotation
#        ^^ - meta.annotation
#         ^^^^^^^^ comment

    @staticmethod
#   ^^^^^^^^^^^^^ meta.annotation
#    ^^^^^^^^^^^^ variable.annotation - support
#                ^ - meta.annotation

    @not_a.staticmethod
#   ^^^^^^^^^^^^^^^^^^^ meta.annotation
#          ^^^^^^^^^^^^ variable.annotation - support
#         ^ punctuation.accessor.dot

    @not_a.__init__()
#   ^^^^^^^^^^^^^^^ meta.annotation
#         ^ punctuation.accessor.dot
#          ^^^^^^^^ variable.annotation.python - support

    @deco[4]
#        ^^^ meta.brackets.python
#        ^ punctuation.section.brackets.begin.python
#         ^ meta.number.integer.decimal.python constant.numeric.value.python
#          ^ punctuation.section.brackets.end.python

    @deco[4].foo.bar
#   ^^^^^^^^^^^^^^^^ meta.annotation.python
#   ^ punctuation.definition.annotation.python
#    ^^^^ variable.annotation.python
#        ^^^ meta.brackets.python
#        ^ punctuation.section.brackets.begin.python
#         ^ meta.number.integer.decimal.python constant.numeric.value.python
#          ^ punctuation.section.brackets.end.python
#           ^ punctuation.accessor.dot.python
#            ^^^ meta.generic-name.python
#               ^ punctuation.accessor.dot.python
#                ^^^ variable.annotation.python

    @deco \
        . rator
#       ^^^^^^^ meta.annotation
#       ^ punctuation.accessor.dot

    @ deco \
        . rator()
#       ^^^^^^^ meta.annotation.python meta.function-call.identifier.python meta.path.python
#              ^^ meta.annotation.python meta.function-call.arguments.python
#         ^^^^^ variable.annotation

    @ deco \
#     ^^^^ meta.path meta.generic-name - variable.annotation
#          ^ punctuation.separator.continuation.line

    @deco \

    def f(): pass
#   ^^^ keyword.declaration.function.python - meta.decorator - invalid

    @(y := _)
#  ^ - meta.annotation
#   ^ meta.annotation.python punctuation.definition.annotation.python
#    ^^^^^^^^ meta.annotation.python meta.group.python
#            ^ - meta.annotation
#    ^ punctuation.section.group.begin.python
#     ^ meta.generic-name.python
#       ^^ keyword.operator.assignment.inline.python
#          ^ variable.language.anonymous.python
#           ^ punctuation.section.group.end.python

    @z := _
#  ^ - meta.annotation
#   ^^^^^^^ meta.annotation.python
#          ^ - meta.annotation
#   ^ punctuation.definition.annotation.python
#    ^ variable.annotation.python
#      ^^ keyword.operator.assignment.inline.python
#         ^ variable.annotation.python

    @[k for k in buttons()].clicked
#   ^ meta.annotation.python punctuation.definition.annotation.python
#    ^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.python meta.sequence.list.python
#                          ^^^^^^^^ meta.annotation.python meta.path.python
#    ^ punctuation.section.sequence.begin.python
#     ^ meta.generic-name.python
#       ^^^ keyword.control.loop.for.generator.python
#           ^ meta.generic-name.python
#             ^^ keyword.operator.iteration.in.python
#                ^^^^^^^ meta.function-call.identifier.python variable.function.python
#                       ^^ meta.function-call.arguments.python
#                         ^ punctuation.section.sequence.end.python
#                          ^ punctuation.accessor.dot.python
#                           ^^^^^^^ variable.annotation.python
#

    @(k for k in buttons()).clicked
#   ^ meta.annotation.python punctuation.definition.annotation.python
#    ^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.python meta.sequence.generator.python
#                          ^^^^^^^^ meta.annotation.python meta.path.python
#    ^ punctuation.section.sequence.begin.python
#     ^ meta.generic-name.python
#       ^^^ keyword.control.loop.for.generator.python
#           ^ meta.generic-name.python
#             ^^ keyword.operator.iteration.in.python
#                ^^^^^^^ meta.function-call.identifier.python variable.function.python
#                       ^^ meta.function-call.arguments.python
#                         ^ punctuation.section.sequence.end.python
#                          ^ punctuation.accessor.dot.python
#                           ^^^^^^^ variable.annotation.python
#

##################
# Collection literals and generators
##################

mytuple = ("this", 'is', 4, tuple)
#         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.python
#         ^ punctuation.section.sequence.begin
#          ^^^^^^ string.quoted.double
#                ^ punctuation.separator.sequence
#                  ^^^^ string.quoted.single
#                      ^ punctuation.separator.sequence
#                        ^ constant.numeric
#                         ^ punctuation.separator.sequence
#                           ^^^^^ support.type
#                                ^ punctuation.section.sequence.end

also_a_tuple = ()[-1]
#              ^^ meta.sequence.tuple.empty.python
#                ^^^^ meta.brackets

tuple_expression = ()and()
#                  ^^ meta.sequence.tuple.empty.python
#                    ^^^ keyword.operator.logical.python
#                       ^^ meta.sequence.tuple.empty.python

not_a_tuple = (a = 2, b += 3)
#             ^^^^^^^^^^^^^^^ meta.sequence
#                ^ invalid.illegal.assignment.python
#                       ^^ invalid.illegal.assignment.python

just_a_group = (1)
#              ^^^ meta.group.python

mylist = []
#        ^^ meta.sequence.list.empty.python
#        ^ punctuation.section.sequence.begin
#         ^ punctuation.section.sequence.end

mylist = [1, "testing", ["sublist", True]]
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#        ^ punctuation.section.sequence.begin
#         ^ constant.numeric
#          ^ punctuation.separator.sequence
#            ^^^^^^^^^ string.quoted.double
#                     ^ punctuation.separator
#                       ^^^^^^^^^^^^^^^^^ meta.sequence meta.sequence
#                       ^ punctuation.section.sequence.begin
#                        ^^^^^^^^^ string.quoted.double
#                                 ^ punctuation.separator.sequence
#                                   ^^^^ constant.language
#                                       ^ punctuation.section.sequence.end
#                                        ^ punctuation.section.sequence.end

mydict = {}
#        ^^ meta.mapping.empty.python
#        ^ punctuation.section.mapping.begin
#         ^ punctuation.section.mapping.end

key2 = "my_key"
mydict = {"key": True, key2: (1, 2, [-1, -2]), ,}
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#        ^ punctuation.section.mapping.begin
#         ^^^^^ meta.mapping.key.python string.quoted.double
#              ^ punctuation.separator.key-value
#                ^^^^ meta.mapping.value.python constant.language
#                    ^ punctuation.separator.sequence.python
#                      ^^^^ meta.mapping.key.python meta.path
#                          ^ punctuation.separator.key-value.python
#                            ^^^^^^^^^^^^^^^^ meta.sequence.tuple
#                            ^ punctuation.section.sequence.begin
#                             ^ constant.numeric
#                                ^ constant.numeric
#                                   ^^^^^^^^ meta.sequence.list
#                                      ^ punctuation.separator.sequence
#                                           ^ punctuation.section.sequence.end
#                                            ^ punctuation.separator.sequence.python
#                                              ^ invalid.illegal.unexpected-comma.python
#                                               ^ punctuation.section.mapping.end - meta.mapping.key

mydict = { 'a' : xform, 'b' : form, 'c' : frm }
#                                 ^ meta.mapping.python punctuation.separator.sequence.python
#                                       ^ punctuation.separator.key-value.python

mydict = { a : b for b in { 'foo', 'bar', 'baz' } }
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.mapping meta.mapping
#        ^^ meta.mapping.python
#          ^ meta.mapping.key.python
#           ^^^ meta.mapping.python
#              ^ meta.mapping.value.python - meta.set
#               ^^^^^^^^^^ meta.mapping.python - meta.set
#                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping.python meta.set.python
#                                                ^^ meta.mapping.python - meta.set
#                ^^^ keyword.control.loop.for.generator.python

mydict = { a : b async for b in range(1, 2) }
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.mapping meta.mapping
#        ^^ meta.mapping.python
#          ^ meta.mapping.key.python
#           ^^^ meta.mapping.python
#              ^ meta.mapping.value.python
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping.python
#                ^^^^^ storage.modifier.async.python
#                      ^^^ keyword.control.loop.for.generator.python

myset = {"key", True, key2, [-1], {}:1}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set
#       ^ punctuation.section.set.begin.python
#        ^^^^^ string.quoted.double
#             ^ punctuation.separator.set
#               ^^^^ constant.language
#                   ^ punctuation.separator.set
#                         ^ punctuation.separator.set
#                           ^^^^ meta.sequence
#                             ^ constant.numeric
#                               ^ punctuation.separator.set
#                                 ^^ meta.mapping.empty.python
#                                   ^ invalid.illegal.unexpected-colon.python
#                                     ^ punctuation.section.set.end.python

myset = {a := 1, b := 2}
#       ^^^^^^^^^^^^^^^^ meta.set.python
#       ^ punctuation.section.set.begin.python
#          ^^ keyword.operator.assignment.inline.python
#             ^ constant.numeric.value.python
#              ^ punctuation.separator.set.python
#                  ^^ keyword.operator.assignment.inline.python
#                     ^ constant.numeric.value.python
#                      ^ punctuation.section.set.end.python

{a := 1: 2}
# <- meta.set.python punctuation.section.set.begin.python
#^^^^^^^^^^ meta.set.python
#  ^^ keyword.operator.assignment.inline.python
#      ^ invalid.illegal.unexpected-colon.python
#         ^ punctuation.section.set.end.python

{1, b := 2}
# <- meta.set.python punctuation.section.set.begin.python
#^^^^^^^^^^ meta.set.python
# ^ punctuation.separator.set.python
#     ^^ keyword.operator.assignment.inline.python
#         ^ punctuation.section.set.end.python

mapping_or_set = {
#                ^ meta.mapping.python punctuation.section.mapping.begin.python
    1: True
#   ^ meta.mapping.key.python meta.number.integer.decimal.python constant.numeric.value.python
#    ^ punctuation.separator.key-value.python
}
# <- meta.mapping.python punctuation.section.mapping.end.python

complex_mapping = {(): "value"}
#                 ^^^^^^^^^^^^^ meta.mapping

more_complex_mapping = {**{1: 1}, 2: 2}
#                      ^ meta.mapping.python
#                               ^ meta.mapping.python punctuation.separator.sequence.python
#                                  ^ meta.mapping.python punctuation.separator.key-value.python

more_complex_set = {
#                  ^ meta.set.python
    *{1}, 2: 2}
#   ^ meta.set.python
#       ^ meta.set.python punctuation.separator.set.python
#          ^ meta.set.python invalid.illegal.unexpected-colon.python

generator = (i for i in range(100))
#           ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.generator.python
#              ^^^^^^^^ meta.expression.generator
#              ^^^ keyword.control.loop.for.generator
#                    ^^ keyword.operator.iteration.in
list_ = [i for i in range(100)]
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#          ^^^^^^^^ meta.expression.generator
#          ^^^ keyword.control.loop.for.generator
#                ^^ keyword.operator.iteration.in
set_ = {i for i in range(100)}
#      ^^^^^^^^^^^^^^^^^^^^^^^ meta.set
#         ^^^^^^^^ meta.expression.generator
#         ^^^ keyword.control.loop.for.generator
#               ^^ keyword.operator.iteration.in
set_ = {x * x for x in y}
#      ^^^^^^^^^^^^^^^^^^ meta.set
#             ^^^^^^^^ meta.expression.generator
#      ^ punctuation.section.set.begin
#         ^ keyword.operator.arithmetic
#             ^^^ keyword.control.loop.for.generator
#                   ^^ keyword.operator.iteration.in
#                       ^ punctuation.section.set.end
set_ = {x ** 2 for x in y}
#      ^^^^^^^^^^^^^^^^^^ meta.set
#              ^^^^^^^^ meta.expression.generator
#      ^ punctuation.section.set.begin
#         ^^ keyword.operator.arithmetic
#              ^^^ keyword.control.loop.for.generator
#                    ^^ keyword.operator.iteration.in
#                        ^ punctuation.section.set.end
dict_ = {i: i for i in range(100)}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#       ^ meta.mapping.python
#        ^ meta.mapping.key.python
#         ^^ meta.mapping.python - meta.mapping.key - meta.mapping.value
#           ^ meta.mapping.value.python
#            ^^^^^^^^^^^^^^^^^^^^^ meta.mapping.python
#             ^^^^^^^^ meta.expression.generator
#             ^^^ keyword.control.loop.for.generator
#                   ^^ keyword.operator.iteration.in
dict_ = {x * x: 1 for x in y}
#       ^ meta.mapping.python
#        ^^^^^ meta.mapping.key.python
#             ^^ meta.mapping.python
#               ^ meta.mapping.value.python
#                ^^^^^^^^^^^^ meta.mapping.python
#       ^ punctuation.section.mapping.begin
#          ^ keyword.operator.arithmetic
#             ^ punctuation.separator.key-value
#                 ^^^ keyword.control.loop.for.generator
#                       ^^ keyword.operator.iteration.in
#                           ^ punctuation.section.mapping.end
dict_ = {x ** 2: 1 for x in y}
#       ^ meta.mapping.python
#        ^^^^^^ meta.mapping.key.python
#              ^^ meta.mapping.python
#                ^ meta.mapping.value.python
#                 ^^^^^^^^^^^^ meta.mapping.python
#       ^ punctuation.section.mapping.begin
#          ^^ keyword.operator.arithmetic
#              ^ punctuation.separator.key-value
#                  ^^^ keyword.control.loop.for.generator
#                        ^^ keyword.operator.iteration.in
#                            ^ punctuation.section.mapping.end
list_ = [i for i in range(100) if i > 0 else -1]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#          ^^^^^^^^ meta.expression.generator
#                              ^^ keyword.control.conditional.if
#                                       ^^^^ keyword.control.conditional.else

list2_ = [i in range(10) for i in range(100) if i in range(5, 15)]
#           ^^ keyword.operator.logical
#                              ^^ keyword.operator.iteration.in
#                                                 ^^ keyword.operator.logical

generator = ((k1, k2, v) for ((k1, k2), v) in xs)
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.generator.python
#            ^^^^^^^^^^^ meta.sequence.tuple.python
#           ^^ punctuation.section.sequence.begin.python
#                      ^ punctuation.section.sequence.end.python
#                            ^^ punctuation.section.sequence.begin.python
#                                    ^ punctuation.section.sequence.end.python
#                                        ^ punctuation.section.sequence.end.python
#                                               ^ punctuation.section.sequence.end.python

list_ = [(k1, k2, v) for ((k1, k2), v) in xs]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.python
#        ^^^^^^^^^^^ meta.sequence.tuple.python
#                   ^ - meta.sequence.tuple.python - meta.expression.generator.python
#       ^ punctuation.section.sequence.begin.python
#        ^ punctuation.section.sequence.begin.python
#                  ^ punctuation.section.sequence.end.python
#                        ^^ punctuation.section.sequence.begin.python
#                                ^ punctuation.section.sequence.end.python
#                                    ^ punctuation.section.sequence.end.python
#                                           ^ punctuation.section.sequence.end.python

dict_ = {k1: (k2, v) for ((k1, k2), v) in xs}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#       ^ punctuation.section.mapping.begin.python
#            ^^^^^^^ meta.sequence.tuple.python
#            ^ punctuation.section.sequence.begin.python
#                  ^ punctuation.section.sequence.end.python
#                        ^^ punctuation.section.sequence.begin.python
#                                ^ punctuation.section.sequence.end.python
#                                    ^ punctuation.section.sequence.end.python
#                                           ^ punctuation.section.mapping.end.python

unpack_ = [*(_ for [[][:], *_] in [((1, 2), "woops")])]
#         ^^ meta.sequence.list.python - meta.sequence.generator
#           ^^^^^^^ meta.sequence.list.python meta.sequence.generator.python
#                  ^^^^^^^^^^^ meta.sequence.list.python meta.sequence.generator.python meta.sequence.list.python
#                             ^^^ meta.sequence.list.python meta.sequence.generator.python
#                                 ^ meta.sequence.list.python meta.sequence.generator.python meta.sequence.list.python
#                                  ^ meta.sequence.list.python meta.sequence.generator.python meta.sequence.list.python meta.sequence.tuple.python
#                                   ^^^^^^ meta.sequence.list.python meta.sequence.generator.python meta.sequence.list.python meta.sequence.tuple.python meta.sequence.tuple.python
#                                         ^^^^^^^^^^ meta.sequence.list.python meta.sequence.generator.python meta.sequence.list.python meta.sequence.tuple.python
#                                                   ^ meta.sequence.list.python meta.sequence.generator.python meta.sequence.list.python
#                                                    ^ meta.sequence.list.python meta.sequence.generator.python
#                                                     ^ meta.sequence.list.python - meta.sequence.generator
#                                                      ^ - meta.sequence
#         ^ punctuation.section.sequence.begin.python
#          ^ keyword.operator.unpacking.sequence.python
#           ^ punctuation.section.sequence.begin.python
#            ^ meta.path.python variable.language.anonymous.python
#              ^^^ keyword.control.loop.for.generator.python
#                  ^ punctuation.section.sequence.begin.python
#                   ^ punctuation.section.sequence.begin.python
#                    ^ punctuation.section.sequence.end.python
#                     ^ punctuation.section.brackets.begin.python
#                      ^ punctuation.separator.slice.python
#                       ^ punctuation.section.brackets.end.python
#                        ^ punctuation.separator.sequence.python
#                          ^ keyword.operator.unpacking.sequence.python
#                           ^ meta.path.python variable.language.anonymous.python
#                            ^ punctuation.section.sequence.end.python
#                              ^^ keyword.operator.iteration.in.python
#                                 ^ punctuation.section.sequence.begin.python
#                                  ^ punctuation.section.sequence.begin.python
#                                   ^ punctuation.section.sequence.begin.python
#                                    ^ meta.number.integer.decimal.python constant.numeric.value.python
#                                     ^ punctuation.separator.sequence.python
#                                       ^ meta.number.integer.decimal.python constant.numeric.value.python
#                                        ^ punctuation.section.sequence.end.python
#                                         ^ punctuation.separator.sequence.python
#                                           ^^^^^^^ meta.string.python string.quoted.double.python
#                                                  ^ punctuation.section.sequence.end.python
#                                                   ^ punctuation.section.sequence.end.python
#                                                    ^ punctuation.section.sequence.end.python
#                                                     ^ punctuation.section.sequence.end.python

list_ = [lambda: 1 for i in range(10)]
#       ^ meta.sequence.list.python - meta.function
#        ^^^^^^ meta.sequence.list.python meta.function.inline.python
#              ^ meta.sequence.list.python meta.function.inline.python
#               ^^^ meta.sequence.list.python meta.function.inline.body.python
#                  ^^^^^^^^^^^^^^^^^^^ meta.sequence.list.python - meta.function
#                                     ^ - meta.sequence
#       ^ punctuation.section.sequence.begin.python
#        ^^^^^^ keyword.declaration.function.inline.python
#              ^ punctuation.section.function.begin.python
#                ^ constant.numeric.value.python
#                  ^^^ keyword.control.loop.for.generator.python
#                      ^ meta.generic-name.python
#                        ^^ keyword.operator.iteration.in.python
#                           ^^^^^ support.function.builtin.python
#                                ^ punctuation.section.arguments.begin.python
#                                 ^^ constant.numeric.value.python
#                                   ^ punctuation.section.arguments.end.python
#                                    ^ punctuation.section.sequence.end.python

generator_ = (lambda: 1 for i in range(10))
#            ^ meta.sequence.generator.python - meta.function
#             ^^^^^^ meta.sequence.generator.python meta.function.inline.python
#                   ^ meta.sequence.generator.python meta.function.inline.python
#                    ^^^ meta.sequence.generator.python meta.function.inline.body.python
#                       ^^^^^^^^^^^^^^^^^^^ meta.sequence.generator.python - meta.function
#                                          ^ - meta.sequence
#            ^ punctuation.section.sequence.begin.python
#             ^^^^^^ keyword.declaration.function.inline.python
#                   ^ punctuation.section.function.begin.python
#                     ^ constant.numeric.value.python
#                       ^^^ keyword.control.loop.for.generator.python
#                           ^ meta.generic-name.python
#                             ^^ keyword.operator.iteration.in.python
#                                ^^^^^ support.function.builtin.python
#                                     ^ punctuation.section.arguments.begin.python
#                                      ^^ constant.numeric.value.python
#                                        ^ punctuation.section.arguments.end.python
#                                         ^ punctuation.section.sequence.end.python

set_ = {lambda: 1 for i in range(10)}
#      ^ meta.set.python - meta.function
#       ^^^^^^ meta.set.python meta.function.inline.python
#             ^ meta.set.python meta.function.inline.python
#              ^^^ meta.set.python meta.function.inline.body.python
#                 ^^^^^^^^^^^^^^^^^^^ meta.set.python - meta.function
#                                    ^ - meta.set
#      ^ punctuation.section.set.begin.python
#       ^^^^^^ keyword.declaration.function.inline.python
#             ^ punctuation.section.function.begin.python
#               ^ constant.numeric.value.python
#                 ^^^ keyword.control.loop.for.generator.python
#                     ^ meta.generic-name.python
#                       ^^ keyword.operator.iteration.in.python
#                          ^^^^^ support.function.builtin.python
#                               ^ punctuation.section.arguments.begin.python
#                                ^^ constant.numeric.value.python
#                                  ^ punctuation.section.arguments.end.python
#                                   ^ punctuation.section.set.end.python

invalid_ = lambda: 1 for i in range(10)
#                    ^^^ invalid.illegal.name.python

list(i for i in generator)
#      ^^^^^^^^ meta.expression.generator
list((i for i in generator), 123)
#       ^^^^^^^^ meta.expression.generator
#                         ^^^^^^^ - meta.expression.generator
#                          ^ punctuation.separator.arguments

_ = [m
     for cls in self.__class__.mro()
#    ^^^ keyword.control.loop.for.generator
#            ^^ keyword.operator.iteration.in
     for m in cls.__dict__]
#    ^^^ keyword.control.loop.for.generator
#          ^^ keyword.operator.iteration.in

result = [i async for i in aiter() if i % 2]
#           ^^^^^ storage.modifier.async
result = [await fun() for fun in funcs]
#         ^^^^^ keyword.control.flow.await.python

foo, bar = get_vars()
#  ^ punctuation.separator.sequence.python
#        ^ keyword.operator.assignment.python

t = (*tuple(), *[1, 2], 3*1)
#   ^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.python
#    ^ keyword.operator.arithmetic.python
#     ^^^^^ support.type.python
#              ^ keyword.operator.unpacking.sequence.python
#                        ^ keyword.operator.arithmetic.python

l = [1 * 2, 2**10, *result]
#      ^ keyword.operator.arithmetic.python
#            ^^ keyword.operator.arithmetic.python
#                  ^ keyword.operator.unpacking.sequence.python

l = [*l]
#    ^ keyword.operator.unpacking.sequence.python

d = {1: 3**4, **dict_}
#   ^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#        ^^ keyword.operator.arithmetic.python
#             ^^ keyword.operator.unpacking.mapping.python

d = {**d, **dict()}
#   ^^^^^^^^^^^^^^^ meta.mapping.python - meta.mapping meta.mapping
#    ^^^ - meta.mapping.key
#    ^^ keyword.operator.unpacking.mapping.python
#      ^ meta.path.python
#       ^ punctuation.separator.sequence.python
#         ^^^^^^^^ - meta.mapping.key
#         ^^ keyword.operator.unpacking.mapping.python
#           ^^^^ support.type.python

d = {**d, *list()}
#   ^^^^^^^^^^^^^^ meta.mapping.python - meta.mapping meta.mapping
#   ^ punctuation.section.mapping.begin.python
#    ^^^ - meta.mapping.key
#    ^^ keyword.operator.unpacking.mapping.python
#      ^ meta.path.python
#       ^ punctuation.separator.sequence.python
#         ^^^^^^^ - meta.mapping.key
#         ^ invalid.illegal.unexpected-operator.python
#          ^^^^ support.type.python
#                ^ punctuation.section.mapping.end.python

s = {*d, *set()}
#   ^^^^^^^^^^^^ meta.set.python - meta.set meta.set
#    ^ keyword.operator.unpacking.sequence.python
#     ^ meta.path.python
#      ^ punctuation.separator.set.python
#        ^ keyword.operator.unpacking.sequence.python
#         ^^^ support.type.python

s = {*d, **dict()}
#   ^^^^^^^^^^^^^^ meta.set.python - meta.set meta.set
#   ^ punctuation.section.set.begin.python
#    ^ keyword.operator.unpacking.sequence.python
#     ^ meta.path.python
#      ^ punctuation.separator.set.python
#        ^^ invalid.illegal.unexpected-operator.python
#          ^^^^ support.type.python
#                ^ punctuation.section.set.end.python

generator = (
    i
    for
#   ^^^ keyword.control.loop.for.generator
    i
    in
#   ^^ keyword.operator.iteration.in
    range(100)
)

class Cls:
    __slots__ = "item",
#               ^^^^^^ meta.string.python string.quoted.double.python
#                     ^ punctuation.separator.sequence.python

    __slots__ = "item",

    def method():
# <- meta.function.python
#^^^^^^^^^^^^^^^^ meta.function
#   ^^^ keyword.declaration.function.python
#       ^^^^^^ entity.name.function.python
#             ^ punctuation.section.parameters.begin.python
#              ^ punctuation.section.parameters.end.python
#               ^ punctuation.section.function.begin.python

##################
# Exception handling
##################

except Exception:
#^^^^^^^^^^^^^^^^ meta.statement.exception.catch
#^^^^^ keyword.control.exception.catch
#      ^^^^^^^^^ support.class.exception
#               ^ punctuation.section.block
except (KeyError, NameError) as e:
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.exception.catch
#^^^^^ keyword.control.exception.catch
#       ^^^^^^^^ support.class.exception
#               ^ punctuation.separator.sequence
#                 ^^^^^^^^^ support.class.exception
#                            ^^ keyword.control.exception.catch.as
#                                ^ punctuation.section.block
except \
    StopIteration \
    as \
    err:
#   ^^^^ meta.statement.exception.catch

except StopIteration
    as
#   ^^ invalid.illegal.name - meta.statement.exception.catch

except
#^^^^^ keyword.control.exception.catch

raise
#^^^^ meta.statement.raise keyword.control.flow.raise
raise Ellipsis
#^^^^^^^^^^^^^ meta.statement.raise
#^^^^ keyword.control.flow.raise
#     ^^^^^^^^ constant.language
raise KeyError() from z
#^^^^^^^^^^^^^^^^^^^^^^ meta.statement.raise - meta.statement.raise meta.statement.raise
#^^^^ keyword.control.flow.raise
#     ^^^^^^^^ support.class.exception
#                ^^^^ keyword.control.flow.raise.from



##################
# Stray brackets
##################

)
# <- invalid.illegal.stray
]
# <- invalid.illegal.stray
}
# <- invalid.illegal.stray



##################
# Integral numbers
##################

decimal = 1234567890 + 9876543210L + -1 + -42L * 0000
#         ^^^^^^^^^^ meta.number.integer.decimal.python constant.numeric.value.python
#                      ^^^^^^^^^^ meta.number.integer.decimal.python constant.numeric.value.python
#                                ^ meta.number.integer.decimal.python constant.numeric.suffix.python
#                                    ^ keyword.operator.arithmetic.python - constant.numeric
#                                     ^ meta.number.integer.decimal.python constant.numeric.value.python
#                                         ^ keyword.operator.arithmetic.python - constant.numeric
#                                          ^^ meta.number.integer.decimal.python constant.numeric.value.python
#                                            ^ meta.number.integer.decimal.python constant.numeric.suffix.python
#                                                ^ meta.number.integer.octal.python constant.numeric.base.python
#                                                 ^^^ meta.number.integer.octal.python constant.numeric.value.python

floating = 0.1 - .1 * 10e-20 - 0.0e2 % 2.
#          ^^^ meta.number.float.decimal.python constant.numeric.value.python
#                ^^ meta.number.float.decimal.python constant.numeric.value.python
#                ^ punctuation.separator.decimal.python
#                     ^^^^^^ meta.number.float.decimal.python constant.numeric.value.python
#                              ^^^^^ meta.number.float.decimal.python constant.numeric.value.python
#                               ^ punctuation.separator.decimal.python
#                                      ^^ meta.number.float.decimal.python constant.numeric.value.python
#                                       ^ punctuation.separator.decimal.python

binary = 0b1010011 | 0b0110110L
#        ^^ meta.number.integer.binary.python constant.numeric.base.python
#          ^^^^^^^ meta.number.integer.binary.python constant.numeric.value.python
#                  ^ keyword.operator.arithmetic.python
#                    ^^ meta.number.integer.binary.python constant.numeric.base.python
#                      ^^^^^^^ meta.number.integer.binary.python constant.numeric.value.python
#                             ^ meta.number.integer.binary.python constant.numeric.suffix.python

octal = 0o755 ^ 0o644L
#       ^^ meta.number.integer.octal.python constant.numeric.base.python
#         ^^^ meta.number.integer.octal.python constant.numeric.value.python
#             ^ keyword.operator.arithmetic.python
#               ^^ meta.number.integer.octal.python constant.numeric.base.python
#                 ^^^ meta.number.integer.octal.python constant.numeric.value.python
#                    ^ meta.number.integer.octal.python constant.numeric.suffix.python

old_style_octal = 010 + 007 - 012345670L
#                 ^ meta.number.integer.octal.python constant.numeric.base.python
#                  ^^ meta.number.integer.octal.python constant.numeric.value.python
#                     ^ keyword.operator.arithmetic.python
#                       ^ meta.number.integer.octal.python constant.numeric.base.python
#                        ^^ meta.number.integer.octal.python constant.numeric.value.python
#                           ^ keyword.operator.arithmetic.python
#                             ^ meta.number.integer.octal.python constant.numeric.base.python
#                              ^^^^^^^^ meta.number.integer.octal.python constant.numeric.value.python
#                                      ^ meta.number.integer.octal.python constant.numeric.suffix.python

hexadecimal = 0x100af - 0XDEADF00L
#             ^^ meta.number.integer.hexadecimal.python constant.numeric.base.python
#               ^^^^^ meta.number.integer.hexadecimal.python constant.numeric.value.python
#                     ^ keyword.operator.arithmetic.python
#                       ^^ meta.number.integer.hexadecimal.python constant.numeric.base.python
#                         ^^^^^^^ meta.number.integer.hexadecimal.python constant.numeric.value.python
#                                ^ meta.number.integer.hexadecimal.python constant.numeric.suffix.python

unintuitive = 0B101 + 0O101 + 10l
#             ^^ meta.number.integer.binary.python constant.numeric.base.python
#               ^^^ meta.number.integer.binary.python constant.numeric.value.python
#                   ^ keyword.operator.arithmetic.python
#                     ^^ meta.number.integer.octal.python constant.numeric.base.python
#                       ^^^ meta.number.integer.octal.python constant.numeric.value.python
#                           ^ keyword.operator.arithmetic.python
#                             ^^ meta.number.integer.decimal.python constant.numeric.value.python
#                               ^ meta.number.integer.decimal.python constant.numeric.suffix.python

illegal = 1LL << 08 | 0b010203 | 0xAbraCadabra
#           ^ - meta.number - constant.numeric
#                ^^ meta.number.integer.decimal.python constant.numeric.value.python
#                ^ invalid.illegal.digits.python
#                     ^^ meta.number.integer.binary.python constant.numeric.base.python
#                       ^^^ meta.number.integer.binary.python constant.numeric.value.python
#                          ^^^ invalid.illegal.digit.python
#                             ^^^ - meta.number - constant.numeric
#                                ^^ meta.number.integer.hexadecimal.python constant.numeric.base.python
#                                  ^^ meta.number.integer.hexadecimal.python constant.numeric.value.python
#                                    ^^^^^^^^^ - meta.number- constant.numeric

amount = 10_000_000.0_2e2_0 + .e2 + 2_2._2
#        ^^^^^^^^^^^^^^^^^^ meta.number.float.decimal.python constant.numeric.value.python
#                  ^ punctuation.separator.decimal.python
#                             ^^^ - meta.number constant.numeric
#                                   ^^^^ meta.number.float.decimal.python constant.numeric.value.python
#                                      ^ punctuation.separator.decimal.python
#                                       ^^ - meta.number constant.numeric

very_complex = 23_2.2e2_0J + 2_1j
#              ^^^^^^^^^^ meta.number.imaginary.decimal.python constant.numeric.value.python
#                  ^ punctuation.separator.decimal.python
#                        ^ meta.number.imaginary.decimal.python constant.numeric.suffix.python
#                            ^^^ meta.number.imaginary.decimal.python constant.numeric.value.python
#                               ^ meta.number.imaginary.decimal.python constant.numeric.suffix.python

addr = 0xCAFE_F00D
#      ^^ meta.number.integer.hexadecimal.python constant.numeric.base.python
#        ^^^^^^^^^ meta.number.integer.hexadecimal.python constant.numeric.value.python

flags = 0b_0011_1111_0100_1110 | 0b_1 & 0b_0_
#       ^^ meta.number.integer.binary.python constant.numeric.base.python
#         ^^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary.python constant.numeric.value.python
#                                ^^ meta.number.integer.binary.python constant.numeric.base.python
#                                  ^^ meta.number.integer.binary.python constant.numeric.value.python
#                                       ^^ meta.number.integer.binary.python constant.numeric.base.python
#                                         ^^ meta.number.integer.binary.python constant.numeric.value.python
#                                           ^ - constant

octoct = 0o_2 ^ 0o_
#        ^^ meta.number.integer.octal.python constant.numeric.base.python
#          ^^ meta.number.integer.octal.python constant.numeric.value.python
#               ^ meta.number.integer.decimal.python constant.numeric.value.python
#                ^^ - constant

if 5in range(10):
#^^^^^^^^^^^^^^^ meta.statement.conditional.if.python
#  ^ meta.number.integer.decimal.python constant.numeric.value.python
#   ^^ keyword.operator.logical.python

   5if 0else 6
#  ^ meta.number.integer.decimal.python constant.numeric.value.python
#   ^^ keyword.control.conditional.if.python
#      ^ meta.number.integer.decimal.python constant.numeric.value.python
#       ^^^^ keyword.control.conditional.else.python


##################
# Operators
##################

# This is to test the difference between the assignment operator (=) and
# the comparison operator (==)
foo = bar()
#   ^ keyword.operator.assignment.python
foo == bar()
#   ^^ keyword.operator.comparison.python

foo = bar = baz = 0
#   ^ keyword.operator.assignment.python
#         ^ keyword.operator.assignment.python
#               ^ keyword.operator.assignment.python

# https://github.com/sublimehq/Packages/issues/3939
x = "foo" if True else \
    "bar"
y = "baz"
# <- meta.path.python meta.generic-name.python
# ^ keyword.operator.assignment.python
#   ^^^^^ meta.string.python string.quoted.double.python

x = "foo" \
    "bar" \
    "baz"
y = "baz"
# <- meta.path.python meta.generic-name.python
# ^ keyword.operator.assignment.python
#   ^^^^^ meta.string.python string.quoted.double.python

foo <<= bar <<= baz
#   ^^^ keyword.operator.assignment.augmented.python
#           ^^^ invalid.illegal.assignment.python

foo >>= bar >>= baz
#   ^^^ keyword.operator.assignment.augmented.python
#           ^^^ invalid.illegal.assignment.python

foo **= bar **= baz
#   ^^^ keyword.operator.assignment.augmented.python
#           ^^^ invalid.illegal.assignment.python

foo *= bar *= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo //= bar //= baz
#   ^^^ keyword.operator.assignment.augmented.python
#           ^^^ invalid.illegal.assignment.python

foo /= bar /= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo += bar += baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo -= bar -= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo %= bar %= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo @= bar @= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo &= bar &= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo |= bar |= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

foo ^= bar ^= baz
#   ^^ keyword.operator.assignment.augmented.python
#          ^^ invalid.illegal.assignment.python

# arithmetic operators

  << >> ** * // / - + & % | ~ ^ @
# ^^ keyword.operator.arithmetic.python
#   ^ - keyword
#    ^^ keyword.operator.arithmetic.python
#      ^ - keyword
#       ^^ keyword.operator.arithmetic.python
#         ^ - keyword
#          ^ keyword.operator.arithmetic.python
#           ^ - keyword
#            ^^ keyword.operator.arithmetic.python
#              ^ - keyword
#               ^ keyword.operator.arithmetic.python
#                ^ - keyword
#                 ^ keyword.operator.arithmetic.python
#                  ^ - keyword
#                   ^ keyword.operator.arithmetic.python
#                    ^ - keyword
#                     ^ keyword.operator.arithmetic.python
#                      ^ - keyword
#                       ^ keyword.operator.arithmetic.python
#                        ^ - keyword
#                         ^ keyword.operator.arithmetic.python
#                          ^ - keyword
#                           ^ keyword.operator.arithmetic.python
#                            ^ - keyword
#                             ^ keyword.operator.arithmetic.python
#                              ^ - keyword
#                               ^ keyword.operator.arithmetic.python
#                                ^ - keyword

# comparison operators

  <= >= == != < > <>
# ^^ keyword.operator.comparison.python
#   ^ - keyword
#    ^^ keyword.operator.comparison.python
#      ^ - keyword
#       ^^ keyword.operator.comparison.python
#         ^ - keyword
#          ^^ keyword.operator.comparison.python
#            ^ - keyword
#             ^ keyword.operator.comparison.python
#              ^ - keyword
#               ^ keyword.operator.comparison.python
#                ^ - keyword
#                 ^^ invalid.deprecated.operator.python

# logical keywords

  and in is not or
# ^^^ keyword.operator.logical.python
#     ^^ keyword.operator.logical.python
#        ^^ keyword.operator.logical.python
#           ^^^ keyword.operator.logical.python
#               ^^ keyword.operator.logical.python


##################
# Context "Fail Early"
##################

# Pop contexts gracefully
def func(unclosed, parameters: if else
#                            ^^^^^^^^^^ meta.function.parameters.annotation.python
#                              ^^ keyword.control.conditional.if.python
#                                 ^^^^ keyword.control.conditional.else.python
    pass
#   ^^^^ invalid.illegal.name.python

# The following function should be matched as normal
# despite the above definition not being closed correctly
def another_func():
#^^ -invalid
    pass


x = [
for x in y:
    break
#   ^^^^^ invalid.illegal.name
#        ^ - meta.sequence


with open(x) as y:
#^^^ -invalid
#            ^^ - invalid

]
#<- invalid.illegal.stray

class Class(object
    def __init__(self):
#   ^^^ invalid.illegal.name
#      ^ - meta.class

# "Hang on, I'm still typing"

foo.'bar'
# ^^^^^^^ - invalid

foo.bar(baz., True)
#       ^^^^^ - invalid

##################
# Variable annotations
##################

primes: List[int] = []
#     ^ punctuation.separator.annotation.python
#     ^^ - meta.type
#       ^^^^ meta.type.python support.class.typing.python
#           ^^^^^ meta.type.python meta.brackets.python
#           ^ punctuation.section.brackets.begin.python
#            ^^^ support.type.python
#               ^ punctuation.section.brackets.end.python
#                ^^^^^^ - meta.type
#                 ^ keyword.operator.assignment

captain: str  # Note: no initial value!
#      ^ punctuation.separator.annotation.python
#      ^^ - meta.type
#        ^^^ meta.type.python support.type.python
#           ^^ - meta.type - comment
#             ^^^^^^^ comment

foo: str | None = None
#  ^^ - meta.type
#    ^^^^^^^^^^ meta.type.python
#              ^^^^^^^^ - meta.type
#  ^ punctuation.separator.annotation.python
#    ^^^ support.type.python
#        ^ keyword.operator.arithmetic.python
#          ^^^^ constant.language.null.python
#               ^ keyword.operator.assignment.python
#                 ^^^^ constant.language.null.python

bar: str | None = 'b'
#  ^^ - meta.type
#    ^^^^^^^^^^ meta.type.python
#              ^^^^^^^ - meta.type
#  ^ punctuation.separator.annotation.python
#    ^^^ support.type.python
#        ^ keyword.operator.arithmetic.python
#          ^^^^ constant.language.null.python
#               ^ keyword.operator.assignment.python
#                 ^^^ string.quoted.single.python

bar: (str | None) = 'b'
#  ^^ - meta.type
#    ^^^^^^^^^^^^ meta.type.python meta.group.python
#                ^^^^^^^ - meta.type
#  ^ punctuation.separator.annotation.python
#     ^^^ support.type.python
#         ^ keyword.operator.arithmetic.python
#           ^^^^ constant.language.null.python
#                 ^ keyword.operator.assignment.python
#                   ^^^ string.quoted.single.python

bar: list[str | None] = 'b'
#  ^^ - meta.type
#    ^^^^ meta.type.python meta.path.python support.type.python
#        ^^^^^^^^^^^^ meta.type.python meta.brackets.python
#                    ^^^^^^^ - meta.type
#  ^ punctuation.separator.annotation.python
#        ^ punctuation.section.brackets.begin.python
#         ^^^ support.type.python
#             ^ keyword.operator.arithmetic.python
#               ^^^^ constant.language.null.python
#                   ^ punctuation.section.brackets.end.python
#                     ^ keyword.operator.assignment.python
#                       ^^^ string.quoted.single.python

foo: int := 0
#  ^ punctuation.separator.annotation.python
#    ^^^ meta.type.python meta.path.python support.type.python
#       ^^^^^^ - meta.type
#        ^^ invalid.illegal.assignment.python
#           ^ meta.number.integer.decimal.python constant.numeric.value.python

foo:
    bar = baz
# <- - meta.type
#^^^^^^^^^^^^^ - meta.type
#   ^^^ meta.generic-name.python
#       ^ keyword.operator.assignment.python
#         ^^^ meta.generic-name.python

foo: \
#  ^^^^ - meta.type
foo: \
    bar = baz
# <- - meta.type
#^^^ - meta.type
#   ^^^ meta.type.python
#      ^^^^^^^ - meta.type
#       ^ keyword.operator.assignment

foo: \
#  ^^^^ - meta.type
foo: \
    bar \
# <- - meta.type
#^^^ - meta.type
#   ^^^^^^ meta.type.python
foo: \
    bar \
    = baz
# <- - meta.type
#^^^^^^^^^ - meta.type
#   ^ keyword.operator.assignment

foo: bar \
    .baz = zoo
# <- meta.type.python
#^^^^^^^ meta.type.python
#       ^^^^^^^ - meta.type

foo: bar \
    .baz
    zoo
# <- - meta.type
#^^^^^^^ - meta.type

foo: int ; print("foo")
# <- - meta.type
#^^^^ - meta.type
#    ^^^ meta.type.python
#       ^^^^^^^^^^^^^^^^ - meta.type
#        ^ punctuation.terminator.statement.python

foo: (int, float) # illegal type, but python likes them
# <- - meta.type
#^^^^ - meta.type
#    ^^^^^^^^^^^^ meta.type.python meta.sequence.tuple.python
#                ^^^^^^^^^^^^^^^^^^ - meta.type
#    ^ punctuation.section.sequence.begin.python
#     ^^^ support.type.python
#        ^ punctuation.separator.sequence.python
#          ^^^^^ support.type.python
#               ^ punctuation.section.sequence.end.python
#                 ^^^^^^^^^^^^^^^^^ comment.line.number-sign.python

class Starship:
    stats: ClassVar[Dict[str, int]] = {}
#        ^ punctuation.separator.annotation.python
#        ^^ - meta.type
#          ^^^^^^^^^^^^^^^^^^^^^^^^ meta.type.python
#                                  ^^^^^^ - meta.type
#                                   ^ keyword.operator.assignment


##################
# Type comments - type: ignore must be by itself.
##################

value = 3  # type: # type: # rest
#          ^^ comment.line.number-sign.python - meta.type
#            ^^^^^ comment.line.number-sign.python meta.type.python
#                 ^^^^^^^^^^^^^^^^^ comment.line.number-sign.python - meta.type

# This is not a type-ignore comment.
value = 3  # type: ignore_class_starting_with_ignore
#          ^^ comment.line.number-sign.python - meta.type
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.type meta.type
#                                                   ^ comment.line.number-sign.python - meta.type
#          ^ punctuation.definition.comment.python
#            ^^^^ keyword.other.type.python
#                ^ punctuation.separator.type.python
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic-name.python

# Mypy ignore extension
value = 3  # type: ignore[error-code-1, 4noint][error] # foo
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#          ^^ comment.line.number-sign.python - meta.type
#            ^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                        ^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python meta.sequence.list.errors.python
#                                              ^^^^^^^^^^^^^^ comment.line.number-sign.python - meta.type
#                  ^^^^^^ keyword.other.ignore.python
#                        ^ punctuation.section.sequence.begin.python
#                         ^^^^^^^^^^^^ constant.other.error-code
#                                     ^ punctuation.separator.sequence.python
#                                       ^^^^^^ - constant
#                                             ^ punctuation.section.sequence.end.python
#                                              ^^^^^^^ - meta.sequence - meta.sequence - meta.brackets

primes = 5  # type: ignore  # type: str  # technically ok but weird
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#           ^^ comment.line.number-sign.python - meta.type
#             ^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                         ^^^^ comment.line.number-sign.python - meta.type
#                             ^^^^^^^^^ comment.line.number-sign.python meta.type.python
#                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python - meta.type
#           ^ punctuation.definition.comment.python
#             ^^^^ keyword.other.type.python
#                 ^ punctuation.separator.type.python
#                   ^^^^^^ keyword.other.ignore.python
#                             ^^^^ keyword.other.type.python
#                                 ^ punctuation.separator.type.python
#                                   ^^^ support.type.python

primes = 5  # type: str  # type: ignore  # typical
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#           ^^ comment.line.number-sign.python - meta.type
#             ^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                      ^^^^ comment.line.number-sign.python - meta.type
#                          ^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python
#                                      ^^^^^^^^^^^^ comment.line.number-sign.python - meta.type

primes = 5  # type: str  # type: str  # invalid
#           ^^ comment.line.number-sign.python - meta.type
#             ^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python - meta.type

dct = {}  # type: Dict[str, (int, float)] # illegal parens
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#         ^^ comment.line.number-sign.python - meta.type
#           ^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                     ^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python meta.brackets.python
#                     ^ punctuation.section.brackets.begin.python
#                      ^^^ support.type.python
#                         ^ punctuation.separator.sequence.python
#                           ^ - punctuation
#                            ^^^ support.type.python
#                               ^ punctuation.separator.sequence.python
#                                 ^^^^^ support.type.python
#                                      ^ - punctuation
#                                       ^ punctuation.section.brackets.end.python

dct = {}  # type: Dict[str, str | int]
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#         ^^ comment.line.number-sign.python - meta.type
#           ^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                     ^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python meta.brackets.python
#                     ^ punctuation.section.brackets.begin.python
#                      ^^^ support.type.python
#                         ^ punctuation.separator.sequence.python
#                           ^^^ support.type.python
#                               ^ keyword.operator.arithmetic.python
#                                 ^^^ support.type.python
#                                    ^ punctuation.section.brackets.end.python

lst = []  # type: List[Dict[Any, ...]] # comment
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#         ^^ comment.line.number-sign.python - meta.type
#           ^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                     ^^^^^ comment.line.number-sign.python meta.type.python meta.brackets.python - meta.sequence meta.sequence
#                          ^^^^^^^^^^ comment.line.number-sign.python meta.type.python meta.brackets.python meta.brackets.python
#                                    ^ comment.line.number-sign.python meta.type.python meta.brackets.python - meta.sequence meta.sequence
#                                     ^^^^^^^^^^^ comment.line.number-sign.python - meta.type
#         ^ punctuation.definition.comment.python
#           ^^^^ keyword.other.type.python
#               ^ punctuation.separator.type.python
#                 ^^^^ support.class.typing.python
#                     ^ punctuation.section.brackets.begin
#                      ^^^^ support.class.typing.python
#                          ^ punctuation.section.brackets.begin.python
#                           ^^^ support.class.typing.python
#                              ^ punctuation.separator.sequence.python
#                                ^^^ constant.language.python
#                                   ^^ punctuation.section.brackets.end.python

# incomplete list
lst = []  # type: List[ # type: ignore
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#         ^^ comment.line.number-sign.python - meta.type
#           ^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                     ^ comment.line.number-sign.python meta.type.python meta.brackets.python punctuation.section.brackets.begin.python
#                      ^^^ comment.line.number-sign.python - meta.type
#                         ^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python


# incomplete list and illegal group
lst = []  # type: List[( # type: ignore
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#         ^^ comment.line.number-sign.python - meta.type
#           ^^^^^^^^^^ comment.line.number-sign.python meta.type.python - meta.sequence
#                     ^^ comment.line.number-sign.python meta.type.python meta.brackets.python
#                       ^^^ comment.line.number-sign.python - meta.type
#                          ^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python

view = None  # type: sublime.View
#            ^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#            ^^ comment.line.number-sign.python - meta.type
#              ^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python
#                                ^ comment.line.number-sign.python - meta.type
#            ^ punctuation.definition.comment.python
#              ^^^^ keyword.other.type.python
#                  ^ punctuation.separator.type.python
#                    ^^^^^^^^^^^^ meta.path.python
#                    ^^^^^^^ meta.generic-name.python
#                           ^ punctuation.accessor.dot.python
#                            ^^^^ meta.generic-name.python

for a, b in lst: # type: str, int
#                ^^^^^^^^^^^^^^^^ - meta.type meta.type
#                ^^ comment.line.number-sign.python - meta.type
#                  ^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python
#                  ^^^^ keyword.other.type.python
#                      ^ punctuation.separator.type.python
#                        ^^^ support.type.python
#                           ^ punctuation.separator.sequence.python
#                             ^^^ support.type.python

# Python 2.7 function annotations.
def function(a, b, *c, **d):
    # type: (int, str, List[str], bool) -> Dict[str, str] # type: noncomment
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.type meta.type
#   ^^ comment.line.number-sign.python - meta.type
#     ^^^^^^ comment.line.number-sign.python meta.type.python
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.function.parameters.python
#                                      ^ comment.line.number-sign.python meta.type.function.python
#                                       ^^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.function.return-type.python
#                                                        ^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.python - meta.type
#           ^ punctuation.section.parameters.begin.python
#            ^^^ support.type.python
#               ^ punctuation.separator.sequence.python
#                 ^^^ support.type.python
#                    ^ punctuation.separator.sequence.python
#                      ^^^^ support.class.typing.python
#                          ^^^^^ meta.brackets.python
#                          ^ punctuation.section.brackets.begin.python
#                           ^^^ support.type.python
#                              ^ punctuation.section.brackets.end.python
#                               ^ punctuation.separator.sequence.python
#                                 ^^^^ support.type.python
#                                     ^ punctuation.section.parameters.end.python
#                                       ^^ punctuation.separator.return-type.python
#                                          ^^^^ support.class.typing.python
#                                              ^^^^^^^^^^ meta.brackets.python
#                                              ^ punctuation.section.brackets.begin.python
#                                               ^^^ support.type.python
#                                                  ^ punctuation.separator.sequence.python
#                                                    ^^^ support.type.python
#                                                       ^ punctuation.section.brackets.end.python

class TypeCommentTest:
    member = []  # type: List[dict]
#                ^^ comment.line.number-sign.python - meta.type
#                  ^^^^^^^^^^^^^^^^ comment.line.number-sign.python meta.type.python
#                  ^^^^ keyword.other.type.python
#                      ^ punctuation.separator.type.python
#                        ^^^^ support.class.typing.python
#                            ^^^^^^ meta.brackets.python
#                            ^ punctuation.section.brackets.begin.python
#                             ^^^^ support.type.python
#                                 ^ punctuation.section.brackets.end.python


##################
# Assignment Expressions
##################

True = False
#    ^ invalid.illegal.assignment.python

False = True
#     ^ invalid.illegal.assignment.python

None = True
#    ^ invalid.illegal.assignment.python

# Examples from https://www.python.org/dev/peps/pep-0572/

y := f(x)
# ^^ invalid.illegal.assignment.python

(y := f(x))
#  ^^ keyword.operator.assignment.inline.python

y0 = y1 := f(x)
#       ^^ invalid.illegal.assignment.python

y0 = (y1 := f(x))
#        ^^ keyword.operator.assignment.inline.python

y0 = (y1 := f1(x), y2 := f2(x))
#        ^^ keyword.operator.assignment.inline.python
#                     ^^ keyword.operator.assignment.inline.python

y0 = (y := f(x) for y, x in values)
#       ^^ keyword.operator.assignment.inline.python

y0 = [y1 := f1(x), y2 := f2(x)]
#        ^^ keyword.operator.assignment.inline.python
#                     ^^ keyword.operator.assignment.inline.python

y0 = {y1 := f1(x), y2 := f2(x)}
#        ^^ keyword.operator.assignment.inline.python
#                     ^^ keyword.operator.assignment.inline.python

foo(x=(y := f(x)))
#        ^^ keyword.operator.assignment.inline.python

if (match := pattern.search(data)) is not None:
#         ^^ keyword.operator.assignment.inline.python
    pass

if tz := self._tzstr():
#     ^^ keyword.operator.assignment.inline.python
    s += tz

while chunk := file.read(8192):
#           ^^ keyword.operator.assignment.inline.python
    process(chunk)

[y := f(x), y**2, y**3]
#  ^^ keyword.operator.assignment.inline.python

filtered_data = [y for x in data if (y := f(x)) is not None]
#                                      ^^ keyword.operator.assignment.inline.python

def foo(answer=(p := 42)):
#                 ^^ keyword.operator.assignment.inline.python

lambda: (x := 1)
#          ^^ keyword.operator.assignment.inline.python

lambda line: (m := re.match(pattern, line)) and m.group(1) # Valid
#               ^^ keyword.operator.assignment.inline.python

f'{(x:=10)}'
#    ^^ keyword.operator.assignment.inline.python

f'{x:=10}'
#   ^^ - keyword.operator.assignment.inline.python


if any(len(longline := line) >= 100 for line in lines):
#                   ^^ keyword.operator.assignment.inline.python
    print("Extremely long line:", longline)

# These are all invalid. We could let linters handle them,
# but these weren't hard to implement.

def foo := :
#       ^^ invalid.illegal.assignment.python
#          ^ punctuation.section.function.begin.python

def foo() := :
#         ^^ invalid.illegal.assignment.python
#            ^ punctuation.section.function.begin.python

def foo(x = y := 42): pass
#             ^^ invalid.illegal.assignment.python

def foo(x: y:=f(x), y:=foo, (a:=b)) -> a:=None: pass
#           ^^ invalid.illegal.assignment.python
#                    ^^ invalid.illegal.assignment.python
#                             ^^ invalid.illegal.assignment.python
#                                       ^^ invalid.illegal.assignment.python

foo(x = y := f(x), y=x:=2)
#         ^^ invalid.illegal.assignment.python
#                     ^^ invalid.illegal.assignment.python

{k1: y1 := f(x)}
#       ^^ invalid.illegal.assignment.python

case {k1: y1 := f(x), k1 := f(x)}:
#            ^^ invalid.illegal.assignment.python
#                        ^^ invalid.illegal.assignment.python

foo[x:=0]
#    ^^ invalid.illegal.assignment.python

[1][x:=0]
#    ^^ invalid.illegal.assignment.python

lambda: x := 1

(lambda: x := 1)
#          ^^ invalid.illegal.assignment.python


# <- - meta
# ensure we're not leaking a context
