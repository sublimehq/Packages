# SYNTAX TEST "Packages/Python/Python.sublime-syntax"
# <- source.python comment.line.number-sign punctuation.definition.comment

r"""This is a syntax test file.
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
#^^^ punctuation.definition.comment.begin
# <- storage.type.string

And this right here, where we're writing in, is a docstring.
"""

ur"""Raw docstring \"""
# <- storage.type.string.python
# ^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.python
#                   ^^^ punctuation.definition.comment.end.python

"""Normal docstring \""""
# ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.python
#                   ^^ constant.character.escape.python
#                     ^^^ punctuation.definition.comment.end.python

debug = False
"""
This is a variable docstring, as supported by sphinx and epydoc
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
"""


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
#              ^ constant.language.import-all.python
#               ^^ - comment - constant - meta.statement
#                 ^^^^^^^^^^ comment.line.number-sign.python
from os import *, path # comment
#^^^ meta.statement.import.python - meta.import-source - meta.import-path
#   ^ meta.statement.import.python meta.import-source.python - meta.import-path
#    ^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#      ^ meta.statement.import.python meta.import-source.python - meta.import-path
#       ^^^^^^^^ meta.statement.import.python - meta.import-source - meta.import-path
#               ^^^^^^^^^^^^^^^^^ - meta.statement
#              ^ constant.language.import-all.python
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
#    ^^^^^^ meta.statement.import.python meta.import-source.python meta.import-path.python
#          ^ - meta.statement
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
#                ^ constant.language.import-all.python
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
#      ^^^ meta.qualified-name.python
#          ^^ keyword.control.import.as.python
#             ^ meta.generic-name.python
#              ^ punctuation.separator.import-list.python
#                ^^^ meta.qualified-name.python
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


##################
# Identifiers
##################

identifier
#^^^^^^^^^ meta.qualified-name meta.generic-name

class
#^^^^ keyword.declaration.class.python
def
#^^ keyword.declaration.function.python

# async and await are still recognized as valid identifiers unless in an "async" block
async
#^^^^ - invalid.illegal.name

__all__
#^^^^^^ meta.qualified-name support.variable.magic - meta.generic-name
__file__
#^^^^^^^ support.variable.magic
__missing__
#^^^^^^^^^^ support.function.magic
__bool__ abc.__nonzero__
#^^^^^^^ support.function.magic
#            ^^^^^^^^^^^ support.function.magic

TypeError module.TypeError
#^^^^^^^^ support.type.exception
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
#^^^^^^^ meta.qualified-name.python variable.other.constant.python
#        ^^^^ - variable.other.constant

 _A_B A1
#^^^^ - variable.other.constant
#     ^^ - variable.other.constant

some.NO
#    ^^ meta.qualified-name.python variable.other.constant.python

NO_SWEAT NO AA1
# <- meta.qualified-name.python variable.other.constant.python
#        ^^ variable.other.constant
#           ^^^ variable.other.constant

_ self
# <- variable.language.python
# ^^^^ variable.language.python


##################
# Function Calls
##################

identifier()
#^^^^^^^^^^^ meta.function-call
#^^^^^^^^^ meta.qualified-name variable.function
#         ^ punctuation.section.arguments.begin
#          ^ punctuation.section.arguments.end

IDENTIFIER()
#^^^^^^^^^ meta.qualified-name variable.function - variable.other.constant

dotted.
#     ^ punctuation.accessor.dot

dotted .
#      ^ punctuation.accessor.dot

dotted . identifier(12, True)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call - meta.function-call meta.function-call
#                  ^^^^^^^^^^ meta.function-call.arguments
#^^^^^^^^^^^^^^^^^^ meta.qualified-name
#^^^^^^ - variable.function
#      ^ punctuation.accessor.dot
#        ^^^^^^^^^^ variable.function

open.__new__(12, \
#^^^^^^^^^^^^^^^^^^^^^ meta.function-call
#^^^ support.function.builtin
#   ^ punctuation.accessor.dot
#    ^^^^^^^ variable.function support.function.magic
#                ^ punctuation.separator.continuation.line.python
             True)

iter()
#^^^ support.function.builtin
aiter()
#^^^^ support.function.builtin

next()
#^^^ support.function.builtin
anext()
#^^^^ support.function.builtin


TypeError()
#^^^^^^^^ support.type.exception
#
module.TypeError()
#^^^^^^^^^^^^^^^ meta.function-call
#      ^^^^^^^^^ variable.function - support

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

    c = lambda: pass
#       ^^^^^^^^^^^^ meta.function.inline
#       ^^^^^^ storage.type.function.inline keyword.declaration.function.inline.python
#             ^ punctuation.section.function.begin
#               ^^^^ invalid.illegal.name.python

    {key: lambda x, y: 10}
#   ^ punctuation.section.mapping.begin
#         ^^^^^^^^^^^^^^^ meta.function.inline
#         ^^^^^^ keyword.declaration.function.inline.python
#                ^^^^^ meta.function.inline.parameters
#                ^ variable.parameter
#                 ^ punctuation.separator.parameters
#                   ^ variable.parameter
#                      ^^ constant.numeric
#                        ^ punctuation.section.mapping.end

    {lambda x, y: 10}
#   ^ punctuation.section.set.begin
#    ^^^^^^^^^^^^^^^ meta.function.inline
#    ^^^^^^ keyword.declaration.function.inline.python
#           ^^^^^ meta.function.inline.parameters
#           ^ variable.parameter
#            ^ punctuation.separator.parameters
#              ^ variable.parameter
#                 ^^ constant.numeric
#                   ^ punctuation.section.set.end

    [lambda x, y: 10]
#   ^ punctuation.section.sequence.begin
#    ^^^^^^^^^^^^^^^ meta.function.inline
#    ^^^^^^ keyword.declaration.function.inline.python
#           ^^^^^ meta.function.inline.parameters
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
#            ^^^^ constant.language.boolean.python

    lambda as, in=2: 0
#          ^^ invalid.illegal.name
#              ^^ invalid.illegal.name

    lambda *a, **kwa, ab*, * *: (a, kwa)
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function.inline meta.function.inline
#   ^^^^^^ meta.function.inline.python
#         ^^^^^^^^^^^^^^^^^^^^^ meta.function.inline.parameters.python
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
#         ^^^^^^^^ meta.function.inline.parameters.python
#          ^^^^^^ meta.group.python
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
#^^^^^^^^^^^^^ meta.function-call
#    ^ punctuation.accessor.dot
#     ^^^^^^ variable.function
#             ^ punctuation.accessor.dot

'foo'. upper()
#    ^^^^^^^^^ meta.function-call
#    ^ punctuation.accessor.dot
#      ^^^^^ variable.function

func()(1, 2)
# <- meta.function-call
#^^^^^^^^^^^ meta.function-call
#^^^^^^^^^^^ - meta.function-call meta.function-call

myobj[1](True)
#^^^^^^^ meta.item-access
#    ^ punctuation.section.brackets.begin - meta.item-access.arguments
#     ^ meta.item-access.arguments
#      ^ punctuation.section.brackets.end - meta.item-access.arguments
#       ^^^^^^ meta.function-call

myobj[1][2](0)
#^^^^^^^^^^ meta.item-access
#    ^ punctuation.section.brackets.begin - meta.item-access.arguments
#     ^ meta.item-access.arguments
#      ^ punctuation.section.brackets.end - meta.item-access.arguments
#       ^ punctuation.section.brackets.begin - meta.item-access.arguments
#        ^ meta.item-access.arguments
#         ^ punctuation.section.brackets.end - meta.item-access.arguments
#          ^^^ meta.function-call

range(20)[10:2:-2]
#           ^ punctuation.separator.slice
#             ^ punctuation.separator.slice

"string"[12]
#       ^^^^ meta.item-access - meta.structure

"string".
#       ^ punctuation.accessor.dot.python

"string".upper()
#       ^^^^^^^^ meta.function-call
#       ^ punctuation.accessor.dot.python

(i for i in range(10))[5]
#                     ^^^ meta.item-access - meta.structure

[1, 2, 3][2]
#^^^^^^^^ meta.sequence
#        ^^^ meta.item-access - meta.structure

[a.b., a., .][2]
#^^^^^^^^^^^^ meta.sequence
# ^ punctuation.accessor.dot.python
#   ^ punctuation.accessor.dot.python
#       ^ punctuation.accessor.dot.python
#          ^ punctuation.accessor.dot.python
#            ^^^ meta.item-access - meta.structure

{foo.: bar.baz.}.
#   ^ punctuation.accessor.dot.python
#    ^ punctuation.separator.mapping.key-value.python
#         ^ punctuation.accessor.dot.python
#             ^ punctuation.accessor.dot.python
#               ^ punctuation.accessor.dot.python

{True: False}.get(True)
#            ^^^^^^^^^^ meta.function-call
#            ^ punctuation.accessor.dot.python

1[12]
#^^^^ - meta.item-access


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
#         ^^ keyword.operator.logical - keyword.control.loop.for.in

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
#               ^^ keyword.control.loop.for.in
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

    with open(), open() as x, open() as y:
#   ^^^^ keyword.control.flow.with
#        ^^^^ support.function
#              ^ punctuation.separator.with-resources
#                       ^^ keyword.control.flow.with.as
#                           ^ punctuation.separator.with-resources
#                             ^^^^ support.function
#                                    ^^ keyword.control.flow.with.as

    with captured() as (out, err):
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
#       ^^^^^ keyword.other.await

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
#          ^^^^^^^^^ support.type.exception.python
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
#        ^^^^^ constant.language.boolean.python
#              ^ punctuation.section.block.conditional.elseif.python
        pass
    else  :
#   ^^^^^^^ meta.statement.conditional.else.python
#         ^ punctuation.section.block.conditional.else.python
        pass

    if \
        True:
#       ^^^^^ meta.statement.conditional.if.python
#       ^^^^ constant.language.boolean.python
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
#         ^^^^ meta.qualified-name.python meta.generic-name.python

    match expr:
#   ^^^^^^^^^^^ meta.statement.conditional.match.python
#   ^^^^^ keyword.control.conditional.match.python
#         ^^^^ meta.qualified-name.python meta.generic-name.python
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
#         ^^^^ meta.qualified-name.python meta.generic-name.python
#             ^ punctuation.separator.sequence.python
#              ^ punctuation.section.sequence.end.python
#               ^ punctuation.section.block.conditional.match.python

    match *named_expr, other:
#   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.match.python
#   ^^^^^ keyword.control.conditional.match.python
#         ^ keyword.operator.unpacking.sequence.python
#          ^^^^^^^^^^ meta.qualified-name.python meta.generic-name.python
#                    ^ punctuation.separator.sequence.python
#                      ^^^^^ meta.qualified-name.python meta.generic-name.python
#                           ^ punctuation.section.block.conditional.match.python

    match http_code:
#   ^^^^^^^^^^^^^^^^ meta.statement.conditional.match.python
#   ^^^^^ keyword.control.conditional.match.python
#         ^^^^^^^^^ meta.qualified-name.python meta.generic-name.python
#                  ^ punctuation.section.block.conditional.match.python
    case "200":
#   ^^^^ meta.statement.conditional.case.python
#       ^^^^^^ meta.statement.conditional.case.patterns.python
#             ^ meta.statement.conditional.case.python
#              ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^^ string.quoted.double.python
#             ^ punctuation.section.block.conditional.case.python
        print("OK")

    case ["403",
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
#        ^ variable.language.python
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
#                     ^^^^ constant.language.boolean.python
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
#                     ^^^^ constant.language.boolean.python
#                         ^ punctuation.section.block.conditional.case.python

    case {s_key: 'value', num.key: 100, **pattern} if foo in {'foo', 'bar'}:
#   ^^^^ meta.statement.conditional.case.python - meta.mapping
#       ^ meta.statement.conditional.case.patterns.python - meta.mapping
#        ^ meta.statement.conditional.case.patterns.python meta.mapping.python
#         ^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.key.python
#              ^ meta.statement.conditional.case.patterns.python meta.mapping.python
#               ^^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.value.python
#                       ^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                         ^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.key.python
#                                ^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                                 ^^^^ meta.statement.conditional.case.patterns.python meta.mapping.value.python
#                                     ^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.mapping.python
#                                                 ^ meta.statement.conditional.case.patterns.python - meta.mapping
#                                                  ^^^^^^^^^^ meta.statement.conditional.case.guard.python - meta.set
#                                                            ^^^^^^^^^^^^^^ meta.statement.conditional.case.guard.python meta.set.python
#                                                                          ^ meta.statement.conditional.case.python - meta.set
#   ^^^^ keyword.control.conditional.case.python
#        ^ punctuation.section.mapping.begin.python
#         ^^^^^ meta.qualified-name.python meta.generic-name.python
#              ^ punctuation.separator.mapping.key-value.python
#                ^^^^^^^ string.quoted.single.python
#                       ^ punctuation.separator.mapping.pair.python
#                         ^^^^^^^ meta.qualified-name.python
#                                ^ punctuation.separator.mapping.key-value.python
#                                  ^^^ constant.numeric.value.python
#                                     ^ punctuation.separator.mapping.pair.python
#                                       ^^ keyword.operator.unpacking.mapping.python
#                                         ^^^^^^^ meta.generic-name.python
#                                                ^ punctuation.section.mapping.end.python
#                                                  ^^ keyword.control.conditional.if.python
#                                                     ^^^ meta.generic-name.python
#                                                         ^^ keyword.operator.logical.python
#                                                            ^ punctuation.section.set.begin.python
#                                                             ^^^^^ string.quoted.single.python
#                                                                  ^ punctuation.separator.set.python
#                                                                    ^^^^^ string.quoted.single.python
#                                                                         ^ punctuation.section.set.end.python
#                                                                          ^ punctuation.section.block.conditional.case.python

    case int():
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
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
#        ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
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
#        ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
#            ^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                             ^ meta.statement.conditional.case.python - meta.function-call
#                              ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^ storage.type.class.python
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
#        ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
#            ^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                           ^ meta.statement.conditional.case.python - meta.function-call
#                            ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^ storage.type.class.python
#            ^ punctuation.section.arguments.begin.python
#             ^^^ variable.parameter.python
#                 ^ keyword.operator.assignment.python
#                   ^^^^^^^ meta.qualified-name.python meta.generic-name.python
#                          ^ punctuation.section.arguments.end.python
#                           ^ punctuation.section.block.conditional.case.python

    case path.name(key = pattern):
#   ^^^^ meta.statement.conditional.case.python - meta.function-call
#       ^ meta.statement.conditional.case.patterns.python - meta.function-call
#        ^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
#                 ^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python
#                                ^ meta.statement.conditional.case.python - meta.function-call
#                                 ^ - meta.statement
#   ^^^^ keyword.control.conditional.case.python
#        ^^^^^^^^^ meta.qualified-name.python
#        ^^^^ meta.generic-name.python
#            ^ punctuation.accessor.dot.python
#             ^^^^ storage.type.class.python
#                 ^ punctuation.section.arguments.begin.python
#                  ^^^ variable.parameter.python
#                      ^ keyword.operator.assignment.python
#                        ^^^^^^^ meta.qualified-name.python meta.generic-name.python
#                               ^ punctuation.section.arguments.end.python
#                                ^ punctuation.section.block.conditional.case.python

    case path \
        . \
        name(key = pattern):
#   ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python
#       ^^^^ meta.function-call.python meta.qualified-name.python
#           ^^^^^^^^^^^^^^^ meta.function-call.arguments.python
#                          ^ meta.statement.conditional.case.python
#       ^^^^ storage.type.class.python
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
#        ^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
#           ^^ meta.statement.conditional.case.patterns.python  meta.function-call.arguments.python
#             ^^ meta.statement.conditional.case.patterns.python - meta.function-call
#               ^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
#                      ^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python - meta.group
#                               ^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python meta.group.python
#                                        ^^^^^^^^^^^^^^^^^^ meta.statement.conditional.case.patterns.python meta.function-call.arguments.python - meta.group
#                                                          ^^ meta.statement.conditional.case.patterns.python - meta.function-call
#                                                            ^^^^ meta.statement.conditional.case.patterns.python meta.function-call.python
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
#               ^^^^^^^ storage.type.class.python
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
#                 ^ variable.language.python

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
#       ^ punctuation.separator.annotation.variable.python
#         ^^^ meta.qualified-name.python support.type.python
#             ^ keyword.operator.assignment.python
#               ^ meta.number.integer.decimal.python constant.numeric.value.python

    case \
#   ^^^^ meta.generic-name.python - keyword
#        ^ punctuation.separator.continuation.line.python
    : int = 0
#   ^ punctuation.separator.annotation.variable.python
#     ^^^ meta.qualified-name.python support.type.python
#         ^ keyword.operator.assignment.python
#           ^ meta.number.integer.decimal.python constant.numeric.value.python

    match = re.match(r"^.*$")
#   ^^^^^ meta.generic-name.python - keyword
#              ^^^^^ meta.function-call.python variable.function.python
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
#        ^ punctuation.separator.annotation.variable.python
#          ^^^ meta.qualified-name.python support.type.python
#              ^ keyword.operator.assignment.python
#                ^ meta.number.integer.decimal.python constant.numeric.value.python

    match \
#   ^^^^^ meta.generic-name.python - keyword
#         ^ punctuation.separator.continuation.line.python
    : int = 0
#   ^ punctuation.separator.annotation.variable.python
#     ^^^ meta.qualified-name.python support.type.python
#         ^ keyword.operator.assignment.python
#           ^ meta.number.integer.decimal.python constant.numeric.value.python

##################
# Function definitions
##################

def abc():
    global from, for, variable, .
#   ^^^^^^ storage.modifier.global
#          ^^^^ invalid.illegal.name
#                ^^^ invalid.illegal.name
#                               ^ invalid.illegal.name.storage

def my_func # comment
#^^^^^^^^^^ meta.function.python
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
#                 ^ punctuation.separator.parameters
#                   ^ comment.line.number-sign
    # This is defaulted
#   ^ comment.line.number-sign
    param2='#1' \
#               ^ punctuation.separator.continuation.line.python
):
# <- punctuation.section.parameters.end
    print('Hi!')


def func(from='me'):
#        ^^^^ invalid.illegal.name
    pass

def type_annotations(param1: int, param2: MyType, param3: max(2, 3), param4: "string" = "default") -> int:
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                                                                                                  ^^^^^^ meta.function.annotation.return
#                   ^ - meta.function meta.function.parameters
#                    ^^^^^^ variable.parameter
#                          ^^^^^ meta.function.parameters.annotation
#                          ^ punctuation.separator.annotation
#                            ^^^ support.type
#                               ^ punctuation.separator.parameters
#                                 ^^^^^^ variable.parameter
#                                       ^ punctuation.separator.annotation
#                                               ^ punctuation.separator.parameters
#                                                 ^^^^^^ variable.parameter
#                                                       ^ punctuation.separator.annotation
#                                                         ^^^^^^^^^ meta.function-call
#                                                            ^ punctuation.section.arguments.begin
#                                                             ^ constant.numeric
#                                                                ^ constant.numeric
#                                                                 ^ punctuation.section.arguments.end
#                                                                  ^ punctuation.separator.parameters
#                                                                    ^^^^^^ variable.parameter
#                                                                          ^ punctuation.separator.annotation
#                                                                            ^^^^^^^^ string.quoted.double
#                                                                                     ^^^^^^^^^^^ meta.function.parameters.default-value
#                                                                                     ^ keyword.operator.assignment
#                                                                                       ^^^^^^^^^ string.quoted.double
#                                                                                                ^ punctuation.section.parameters.end
#                                                                                                  ^^ punctuation.separator.annotation
#                                                                                                     ^^^ support.type
#                                                                                                        ^ punctuation.section.function.begin

def type_annotations_line_continuation_without_terminator() \
      -> int
#^^^^^^^^^^^ - meta.function meta.function
#           ^ - meta.function
#^^^^^ meta.function.python
#     ^^^^^^ meta.function.annotation.return
#     ^^ punctuation.separator.annotation
#        ^^^ support.type
    pass

def type_annotations_line_continuation_without_terminator_but_comment() \
      -> int # comment
#^^^^^^^^^^^ - meta.function meta.function
#           ^^^^^^^^^^ - meta.function
#^^^^^ meta.function.python
#     ^^^^^^ meta.function.annotation.return
#     ^^ punctuation.separator.annotation
#        ^^^ support.type
    pass

def type_annotations_line_continuation() \
      -> int:
#^^^^^^^^^^^^ - meta.function meta.function
#^^^^^ meta.function.python
#     ^^^^^^ meta.function.annotation.return
#           ^ meta.function.python
#     ^^ punctuation.separator.annotation
#        ^^^ support.type
#           ^ punctuation.section.function.begin
    pass

def type_annotations_line_continuation() \
      -> \
      int:
#^^^^^^^^ meta.function.annotation.return
#        ^ meta.function.python
#     ^^^ support.type
#        ^ punctuation.section.function.begin
    pass

def type_annotations_line_continuation() \
      -> \
      int \
      :
#^^^^^ meta.function.annotation.return
#     ^ meta.function.python punctuation.section.function.begin.python
    pass

async def coroutine(param1):
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                  ^^^^^^^^ meta.function.parameters - meta.function meta.function
# <- keyword.declaration.async
#     ^^^ keyword.declaration.function.python
#         ^ entity.name.function
   pass

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

def foo(arg: int = 0, (x: float, y=20) = (0.0, "default")):
#                     ^^^^^^^^^^^^^^^^ meta.group.python
#                                     ^^^ - meta.group.python
#                                        ^^^^^^^^^^^^^^^^ meta.sequence.tuple.python
#                     ^ punctuation.section.group.begin.python
#                      ^ variable.parameter.python
#                       ^^^^^^^ invalid.illegal.annotation.python
#                              ^ punctuation.separator.parameters.python
#                                ^ variable.parameter.python
#                                 ^^^ invalid.illegal.default-value.python
#                                    ^ punctuation.section.group.end.python
#                                      ^ keyword.operator.assignment.python
#                                        ^ punctuation.section.sequence.begin.python
#                                                       ^ punctuation.section.sequence.end.python
    pass

def name(p1, p2=None, /, p_or_kw=None, *, kw): pass
#                     ^ storage.modifier.positional-args-only.python
#                      ^ punctuation.separator.parameters.python
#                                      ^ keyword.operator.unpacking.sequence.python
def name(p1, p2, /): pass
#                ^ storage.modifier.positional-args-only.python
#                 ^ punctuation.section.parameters.end.python


##################
# Class definitions
##################

class MyClass():
#^^^^^^^^^^^^^^^ meta.class
#            ^^ meta.class.inheritance
#              ^ punctuation.section.class.begin
    def my_func(self, param1, # Multi-line function definition
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
#             ^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class
#                    ^ punctuation.accessor.dot
#                                ^ punctuation.separator.inheritance
#                                  ^^^^^^^^^ variable.parameter.class-inheritance
#                                           ^ keyword.operator.assignment
    ur'''
#   ^^ storage.type.string
    This is a test of docstrings
    '''
#   ^^^ comment.block.documentation.python
    pass


class Unterminated(Inherited:
#                           ^ invalid.illegal


##################
# Decorators
##################

@ normal . decorator
# <- meta.annotation punctuation.definition.annotation
#^^^^^^^^^^^^^^^^^^^ meta.annotation
# ^^^^^^^^^^^^^^^^^^ meta.qualified-name
# ^^^^^^ meta.generic-name - variable.annotation
#          ^^^^^^^^^ variable.annotation
#        ^ punctuation.accessor.dot - variable
#                   ^ - meta.annotation
class Class():

    @functools.wraps(method, 12, kwarg=None)# comment
#^^^ - meta.annotation
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.annotation - meta.annotation meta.annotation
#                    ^^^^^^^^^^^^^^^^^^^^^^ meta.annotation.arguments
#   ^ punctuation.definition.annotation
#    ^^^^^^^^^^^^^^^^ meta.annotation.function
#    ^^^^^^^^^^^^^^^ meta.qualified-name
#    ^^^^^^^^^ meta.generic-name - variable.annotation
#             ^ punctuation.accessor.dot
#              ^^^^^ variable.annotation.function meta.generic-name
#                   ^ punctuation.section.arguments.begin
#                          ^ punctuation.separator.arguments
#                            ^^ constant.numeric
#                                ^^^^^ variable.parameter
#                                     ^ keyword.operator
#                                      ^^^^ constant.language
#                              ^ punctuation.separator.arguments
#                                          ^ meta.annotation.function punctuation.section.arguments.end
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
#    ^^^^ meta.qualified-name variable.annotation
#        ^^ - meta.annotation
#         ^^^^^^^^ comment

    @staticmethod
#   ^^^^^^^^^^^^^ meta.annotation
#    ^^^^^^^^^^^^ variable.annotation support.function.builtin
#                ^ - meta.annotation

    @not_a.staticmethod
#   ^^^^^^^^^^^^^^^^^^^ meta.annotation
#          ^^^^^^^^^^^^ variable.annotation - support
#         ^ punctuation.accessor.dot

    @not_a.__init__()
#   ^^^^^^^^^^^^^^^ meta.annotation
#          ^^^^^^^^ variable.annotation support.function.magic
#         ^ punctuation.accessor.dot

    @deco[4]
#        ^ invalid.illegal.character

    @deco \
        . rator
#       ^^^^^^^ meta.annotation
#       ^ punctuation.accessor.dot

    @ deco \
        . rator()
#       ^^^^^^^^^ meta.annotation.function
#         ^^^^^ variable.annotation.function

    @ deco \
#     ^^^^ meta.qualified-name meta.generic-name - variable.annotation
#          ^ punctuation.separator.continuation.line

    @deco \

    def f(): pass
#   ^^^ keyword.declaration.function.python - meta.decorator


class AClass:
    # `def` immediately after a line-continued string within a class
    x =  "Type help() for interactive help, " \
         "or help(object) for help about object."
    def __call__(self, *args, **kwds):
#   ^^^ - invalid.illegal
        pass


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
#                ^^^^ meta.item-access

not_a_tuple = (a = 2, b += 3)
#             ^^^^^^^^^^^^^^^ meta.sequence
#                ^ invalid.illegal.unexpected-assignment-in-tuple - keyword
#                        ^ invalid.illegal.unexpected-assignment-in-tuple - keyword

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
#              ^ punctuation.separator.mapping.key-value
#                ^^^^ meta.mapping.value.python constant.language
#                    ^ punctuation.separator.mapping
#                      ^^^^ meta.mapping.key.python meta.qualified-name
#                          ^ punctuation.separator.mapping
#                            ^^^^^^^^^^^^^^^^ meta.sequence.tuple
#                            ^ punctuation.section.sequence.begin
#                             ^ constant.numeric
#                                ^ constant.numeric
#                                   ^^^^^^^^ meta.sequence.list
#                                      ^ punctuation.separator.sequence
#                                           ^ punctuation.section.sequence.end
#                                            ^ punctuation.separator.mapping.python
#                                              ^ invalid.illegal.expected-colon.python
#                                               ^ punctuation.section.mapping.end - meta.mapping.key

mydict = { 'a' : xform, 'b' : form, 'c' : frm }
#                                 ^ meta.mapping.python punctuation.separator.mapping.python
#                                       ^ punctuation.separator.mapping.key-value.python

mydict = { a : b async for b in range(1, 2) }
#                ^^^^^ storage.modifier.async.python

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
#                                   ^ invalid.illegal.colon-inside-set.python
#                                     ^ punctuation.section.set.end.python

mapping_or_set = {
#                ^ meta.mapping.python punctuation.section.mapping.begin.python
    1: True
#   ^ meta.mapping.key.python meta.number.integer.decimal.python constant.numeric.value.python
#    ^ punctuation.separator.mapping.key-value.python
}
# <- meta.mapping.python punctuation.section.mapping.end.python

complex_mapping = {(): "value"}
#                 ^^^^^^^^^^^^^ meta.mapping

more_complex_mapping = {**{1: 1}, 2: 2}
#                      ^ meta.mapping.python
#                               ^ meta.mapping.python punctuation.separator.mapping.python
#                                  ^ meta.mapping.python punctuation.separator.mapping.key-value.python

more_complex_set = {
#                  ^ meta.set.python
    *{1}, 2: 2}
#   ^ meta.set.python
#       ^ meta.set.python punctuation.separator.set.python
#          ^ meta.set.python invalid.illegal.colon-inside-set.python

generator = (i for i in range(100))
#           ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.generator.python
#              ^^^^^^^^ meta.expression.generator
#              ^^^ keyword.control.loop.for.generator
#                    ^^ keyword.control.loop.for.in
list_ = [i for i in range(100)]
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#          ^^^^^^^^ meta.expression.generator
#          ^^^ keyword.control.loop.for.generator
#                ^^ keyword.control.loop.for.in
set_ = {i for i in range(100)}
#      ^^^^^^^^^^^^^^^^^^^^^^^ meta.set
#         ^^^^^^^^ meta.expression.generator
#         ^^^ keyword.control.loop.for.generator
#               ^^ keyword.control.loop.for.in
dict_ = {i: i for i in range(100)}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#        ^ meta.mapping.key.python
#         ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.mapping.key.python
#           ^ meta.mapping.value.python
#            ^^^^^^^^^^^^^^^^^^^^^ - meta.mapping.value
#             ^^^^^^^^ meta.expression.generator
#             ^^^ keyword.control.loop.for.generator
#                   ^^ keyword.control.loop.for.in
list_ = [i for i in range(100) if i > 0 else -1]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#          ^^^^^^^^ meta.expression.generator
#                              ^^ keyword.control.conditional.if
#                                       ^^^^ keyword.control.conditional.else

list2_ = [i in range(10) for i in range(100) if i in range(5, 15)]
#           ^^ keyword.operator.logical
#                              ^^ keyword.control.loop.for.in
#                                                 ^^ keyword.operator.logical

generator = ((k1, k2, v) for ((k1, k2), v) in xs)
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.generator.python
#            ^^^^^^^^^^^ meta.sequence.tuple.python
#           ^^ punctuation.section.sequence.begin.python
#                      ^ punctuation.section.sequence.end.python
#                            ^^ punctuation.section.target-list.begin.python
#                                    ^ punctuation.section.target-list.end.python
#                                        ^ punctuation.section.target-list.end.python
#                                               ^ punctuation.section.sequence.end.python

list_ = [(k1, k2, v) for ((k1, k2), v) in xs]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.python
#        ^^^^^^^^^^^ meta.sequence.tuple.python
#                   ^ - meta.sequence.tuple.python - meta.expression.generator.python
#       ^ punctuation.section.sequence.begin.python
#        ^ punctuation.section.sequence.begin.python
#                  ^ punctuation.section.sequence.end.python
#                        ^^ punctuation.section.target-list.begin.python
#                                ^ punctuation.section.target-list.end.python
#                                    ^ punctuation.section.target-list.end.python
#                                           ^ punctuation.section.sequence.end.python

dict_ = {k1: (k2, v) for ((k1, k2), v) in xs}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#       ^ punctuation.section.mapping.begin.python
#            ^^^^^^^ meta.sequence.tuple.python
#            ^ punctuation.section.sequence.begin.python
#                  ^ punctuation.section.sequence.end.python
#                        ^^ punctuation.section.target-list.begin.python
#                                ^ punctuation.section.target-list.end.python
#                                    ^ punctuation.section.target-list.end.python
#                                           ^ punctuation.section.mapping.end.python

list_ = [lambda: 1 for i in range(10)]
#       ^ meta.sequence.list.python - meta.function
#        ^^^^^^ meta.sequence.list.python meta.function.inline.python
#              ^ meta.sequence.list.python meta.function.inline.parameters.python
#               ^^^ meta.sequence.list.python meta.function.inline.body.python
#                  ^^^^^^^^^^^^^^^^^^^ meta.sequence.list.python - meta.function
#                                     ^ - meta.sequence
#       ^ punctuation.section.sequence.begin.python
#        ^^^^^^ keyword.declaration.function.inline.python
#              ^ punctuation.section.function.begin.python
#                ^ constant.numeric.value.python
#                  ^^^ keyword.control.loop.for.generator.python
#                      ^ meta.generic-name.python
#                        ^^ keyword.control.loop.for.in.python
#                           ^^^^^ support.function.builtin.python
#                                ^ punctuation.section.arguments.begin.python
#                                 ^^ constant.numeric.value.python
#                                   ^ punctuation.section.arguments.end.python
#                                    ^ punctuation.section.sequence.end.python

generator_ = (lambda: 1 for i in range(10))
#            ^ meta.sequence.generator.python - meta.function
#             ^^^^^^ meta.sequence.generator.python meta.function.inline.python
#                   ^ meta.sequence.generator.python meta.function.inline.parameters.python
#                    ^^^ meta.sequence.generator.python meta.function.inline.body.python
#                       ^^^^^^^^^^^^^^^^^^^ meta.sequence.generator.python - meta.function
#                                          ^ - meta.sequence
#            ^ punctuation.section.sequence.begin.python
#             ^^^^^^ keyword.declaration.function.inline.python
#                   ^ punctuation.section.function.begin.python
#                     ^ constant.numeric.value.python
#                       ^^^ keyword.control.loop.for.generator.python
#                           ^ meta.generic-name.python
#                             ^^ keyword.control.loop.for.in.python
#                                ^^^^^ support.function.builtin.python
#                                     ^ punctuation.section.arguments.begin.python
#                                      ^^ constant.numeric.value.python
#                                        ^ punctuation.section.arguments.end.python
#                                         ^ punctuation.section.sequence.end.python

set_ = {lambda: 1 for i in range(10)}
#      ^ meta.set.python - meta.function
#       ^^^^^^ meta.set.python meta.function.inline.python
#             ^ meta.set.python meta.function.inline.parameters.python
#              ^^^ meta.set.python meta.function.inline.body.python
#                 ^^^^^^^^^^^^^^^^^^^ meta.set.python - meta.function
#                                    ^ - meta.set
#      ^ punctuation.section.set.begin.python
#       ^^^^^^ keyword.declaration.function.inline.python
#             ^ punctuation.section.function.begin.python
#               ^ constant.numeric.value.python
#                 ^^^ keyword.control.loop.for.generator.python
#                     ^ meta.generic-name.python
#                       ^^ keyword.control.loop.for.in.python
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
#            ^^ keyword.control.loop.for.in
     for m in cls.__dict__]
#    ^^^ keyword.control.loop.for.generator
#          ^^ keyword.control.loop.for.in

result = [i async for i in aiter() if i % 2]
#           ^^^^^ storage.modifier.async
result = [await fun() for fun in funcs]
#         ^^^^^ keyword.other.await.python

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
#        ^^ keyword.operator.arithmetic.python
#             ^^ keyword.operator.unpacking.mapping.python

d = {**d, **dict()}
#   ^^^^^^^^^^^^^^^ meta.mapping.python
#    ^^^ - meta.mapping.key
#    ^^ keyword.operator.unpacking.mapping.python
#      ^ meta.qualified-name.python
#       ^ punctuation.separator.mapping.python
#         ^^^^^^^^ - meta.mapping.key
#         ^^ keyword.operator.unpacking.mapping.python
#           ^^^^ support.type.python

s = {*d, *set()}
#   ^^^^^^^^^^^^ meta.set.python
#    ^ keyword.operator.unpacking.sequence.python
#     ^ meta.qualified-name.python
#      ^ punctuation.separator.set.python
#        ^ keyword.operator.unpacking.sequence.python
#         ^^^ support.type.python

generator = (
    i
    for
#   ^^^ keyword.control.loop.for.generator
    i
    in
#   ^^ keyword.control.loop.for.in
    range(100)
)


##################
# Exception handling
##################

except Exception:
#^^^^^^^^^^^^^^^^ meta.statement.exception.catch
#^^^^^ keyword.control.exception.catch
#      ^^^^^^^^^ support.type.exception
#               ^ punctuation.section.block
except (KeyError, NameError) as e:
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.exception.catch
#^^^^^ keyword.control.exception.catch
#       ^^^^^^^^ support.type.exception
#               ^ punctuation.separator.target-list
#                 ^^^^^^^^^ support.type.exception
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
#^^^^^^^^^^^^^^^^^^^^^^ meta.statement.raise
#^^^^ keyword.control.flow.raise
#     ^^^^^^^^ support.type.exception
#                ^^^^ keyword.control.flow.raise.from



##################
# Stray braces
##################

)
# <- invalid.illegal.stray.brace.round
]
# <- invalid.illegal.stray.brace.square
}
# <- invalid.illegal.stray.brace.curly



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
#                 ^ - meta.number - constant.numeric
#                     ^^ meta.number.integer.binary.python constant.numeric.base.python
#                       ^^^ meta.number.integer.binary.python constant.numeric.value.python
#                          ^^^^^^ - meta.number - constant.numeric
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
#               ^^^ - constant

##################
# Operators
##################

# This is to test the difference between the assignment operator (=) and
# the comparison operator (==)
foo = bar()
#   ^ keyword.operator.assignment.python
foo == bar()
#   ^^ keyword.operator.comparison.python
#
foo <<= bar
#   ^^^ keyword.operator.assignment.augmented.python

matrix @ multiplication
#      ^ keyword.operator.matrix.python

a @= b
# ^^ keyword.operator.assignment.augmented.python


##################
# Context "Fail Early"
##################

# Pop contexts gracefully
def func(unclosed, parameters: if else
    pass
#   ^^^^ invalid.illegal.name

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
#<- invalid.illegal.stray.brace.square

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
#     ^ punctuation.separator.annotation.variable.python
#                 ^ keyword.operator.assignment

captain: str  # Note: no initial value!
#      ^ punctuation.separator.annotation.variable.python

class Starship:
    stats: ClassVar[Dict[str, int]] = {}
#        ^ punctuation.separator.annotation.variable.python
#                                   ^ keyword.operator.assignment


##################
# Assignment Expressions
##################

# Examples from https://www.python.org/dev/peps/pep-0572/

y := f(x)
# ^^ invalid.illegal.not-allowed-here.python

(y := f(x))
#  ^^ keyword.operator.assignment.inline.python

y0 = y1 := f(x)
#       ^^ invalid.illegal.not-allowed-here.python

y0 = (y1 := f(x))
#        ^^ keyword.operator.assignment.inline.python

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
def foo(x: y:=f(x)) -> a:=None: pass
#           ^^ invalid.illegal.not-allowed-here.python
#                       ^^ invalid.illegal.not-allowed-here.python
foo(x = y := f(x), y=x:=2)
#         ^^ invalid.illegal.not-allowed-here.python
#                     ^^ invalid.illegal.not-allowed-here.python
{a := 1: 2}
#  ^^ invalid.illegal.not-allowed-here.python
{1, b := 2}
#     ^^ invalid.illegal.not-allowed-here.python
[1][x:=0]
#    ^^ invalid.illegal.not-allowed-here.python
def foo(answer = p := 42):  pass
#                  ^^ invalid.illegal.not-allowed-here.python
(lambda: x := 1)
#          ^^ invalid.illegal.not-allowed-here.python


# <- - meta
# ensure we're not leaking a context
