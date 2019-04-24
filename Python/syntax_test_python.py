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
from os import path, chdir # comment
#^^^ keyword.control.import.from
#       ^^^^^^ keyword.control.import
#                  ^ punctuation.separator.import-list
#                          ^ comment
from . import module
#    ^ keyword.control.import.relative.python
#      ^^^^^^ keyword.control.import
from .import module  # yes, this is actually legit
#    ^ keyword.control.import.relative.python
#     ^^^^^^ keyword.control.import.python
from collections.abc import Iterable
#                    ^^^^^^ keyword.control.import
from a.b.c.else import module
#          ^^^^ invalid.illegal.name.python
#               ^^^^^^ keyword.control.import
from .while import module
#     ^^^^^ invalid.illegal.name.python
#           ^^^^^^ keyword.control.import
from .index import module
#     ^^^^^ - invalid
from \
    os \
    import \
    path
#   ^^^^ meta.statement.import
from sys import (version, # comment
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.import
#               ^ punctuation.section.import-list.begin
#                         ^ comment
                 version_info, . ) # comment
#                ^^^^^^^^^^^^^ meta.statement.import
#                              ^ invalid.illegal.name.import
#                                ^ punctuation.section.import-list.end
#                                  ^ comment
import path from os
#           ^^^^ invalid.illegal.name
from .sub import *
#                ^ constant.language.import-all.python
import a as b
#        ^^ keyword.control.import.as.python
from a import b as c, d as e
#               ^^ keyword.control.import.as.python
#                       ^^ keyword.control.import.as.python
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
#^^^^ storage.type.class
def
#^^ storage.type.function

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

open.open.open
#    ^^^^^^^^^ - support

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

    yield fromsomething
#         ^^^^ - keyword

    a if b else c
#     ^^ keyword.control.flow
#          ^^^^ keyword.control.flow

    c = lambda: pass
#       ^^^^^^^ meta.function.inline
#       ^^^^^^ storage.type.function.inline
#             ^ punctuation.section.function.begin
#               ^^^^ keyword

    _(lambda x, y: 10)
#     ^^^^^^^^^^^^ meta.function.inline
#     ^^^^^^ storage.type.function.inline
#           ^^^^^ meta.function.inline.parameters
#            ^ variable.parameter
#             ^ punctuation.separator.parameters
#               ^ variable.parameter
#                  ^^ constant.numeric

    lambda \
        a, \
        b=2: pass
#       ^^^^ meta.function.inline
#        ^ keyword.operator.assignment
#          ^ punctuation.section.function.begin
#            ^^^^ keyword

    lambda as, in=2: pass
#          ^^ invalid.illegal.name
#              ^^ invalid.illegal.name

    lambda *a, **kwa, ab*, * *: (a, kwa)
#          ^ keyword.operator.unpacking.sequence.python
#           ^ variable.parameter.python
#                ^^^ variable.parameter.python
#              ^^ keyword.operator.unpacking.mapping.python
#                       ^ invalid.illegal.expected-parameter.python
#                            ^ invalid.illegal.expected-parameter.python

    lambda x
#   ^^^^^^ storage.type.function.inline

    lambda (x, y): pass
#   ^^^^^^^^^^^^^^ meta.function.inline.python
#         ^^^^^^^ meta.function.inline.parameters.python
#          ^^^^^^ meta.group.python
#          ^ punctuation.section.group.begin.python
#           ^ variable.parameter.python
#            ^ punctuation.separator.parameters.python
#              ^ variable.parameter.python
#               ^ punctuation.section.group.end.python
#                ^ punctuation.section.function.begin.python
#                  ^^^^ keyword.control.flow.pass.python
    lambda (
#   ^^^^^^^^^ meta.function.inline.python
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
#^^^^ meta.function.inline.parameters.python meta.group.python
#   ^ punctuation.section.group.end.python
#    ^ punctuation.section.function.begin.python
        pass
#       ^^^^ keyword.control.flow.pass.python

    ( 3 - 6 \
#   ^^^^^^^^^ meta.group.python
#   ^ punctuation.section.group.begin.python
#     ^ constant.numeric.integer.decimal.python
#       ^ keyword.operator.arithmetic.python
#         ^ constant.numeric.integer.decimal.python
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

"string".upper()
#       ^^^^^^^^ meta.function-call

(i for i in range(10))[5]
#                     ^^^ meta.item-access - meta.structure

[1, 2, 3][2]
#^^^^^^^^ meta.sequence
#        ^^^ meta.item-access - meta.structure

{True: False}.get(True)
#            ^^^^^^^^^^ meta.function-call

1[12]
#^^^^ - meta.item-access


##################
# print & exec
##################

def _():
    print (file=None)
#   ^^^^^ support.function.builtin - keyword
    print . __class__
#   ^^^^^ support.function.builtin - keyword
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
#   ^^^ keyword.control.flow.for
    b = c in d
#         ^^ keyword.operator.logical - keyword.control.flow.for.in

    for \
        a \
        in \
        b:
#       ^^ meta.statement.for
#        ^ punctuation.section.block.for.python

    async for i in myfunc():
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.for
#   ^^^^^ storage.modifier.async
#         ^^^ keyword.control.flow.for
#               ^^ keyword.control.flow.for.in
#                          ^ punctuation.section.block.for
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
#                      ^ punctuation.section.group.begin
#                       ^^^ meta.generic-name
#                          ^ punctuation.separator.tuple
#                            ^^^ meta.generic-name
#                               ^ punctuation.section.group.end
#                                ^ punctuation.section.block.with

    with captured() \
    as (
#      ^ punctuation.section.group.begin
        out,
#       ^^^ meta.generic-name
#          ^ punctuation.separator.tuple
        err
#       ^^^ meta.generic-name
    ):
#   ^ punctuation.section.group.end
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

    try:
#   ^^^^ meta.statement.try.python
#   ^^^ keyword.control.flow.try.python
#      ^ punctuation.section.block.try.python
        raise
#       ^^^^^ meta.statement.raise.python keyword.control.flow.raise.python
    except Exception as x:
#   ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.except.python - meta.statement.except.python meta.statement.except.python
#   ^^^^^^ keyword.control.flow.except.python
#          ^^^^^^^^^ support.type.exception.python
#                    ^^ keyword.control.flow.as.python
#                       ^ meta.generic-name.python
#                        ^ punctuation.section.block.except.python
        pass
    finally :
#   ^^^^^^^^^ meta.statement.finally.python
#   ^^^^^^^ keyword.control.flow.finally.python
#           ^ punctuation.section.block.finally.python
    try_except_raise:
#   ^^^ - keyword

    while (
#   ^^^^^^^^ meta.statement.while.python
#   ^^^^^ keyword.control.flow.while.python
#         ^ meta.statement.while.python meta.group.python punctuation.section.group.begin.python
        a is b
#       ^^^^^^ meta.statement.while.python
#         ^^ keyword.operator.logical.python
    ):
#    ^ meta.statement.while.python punctuation.section.block.while.python
        sleep()
        if a:
            break
#           ^^^^^ keyword.control.flow.break.python
        elif b:
            continue
#           ^^^^^^^^ keyword.control.flow.continue.python

    if 213 is 231:
#   ^^^^^^^^^^^^^^ meta.statement.if.python
#   ^^ keyword.control.flow.conditional.python
#      ^^^ constant.numeric.integer.decimal.python
#          ^^ keyword.operator.logical.python
#                ^ punctuation.section.block.conditional.python
        pass
    elif:
#   ^^^^^ meta.statement.conditional.python
#       ^ punctuation.section.block.python
        pass
    elif False :
#   ^^^^^^^^^^^^ meta.statement.conditional.python
#        ^^^^^ constant.language
#              ^ punctuation.section.block.python
        pass
    else  :
#   ^^^^^^^ meta.statement.conditional.python
#         ^ punctuation.section.block.python
        pass

    if \
        True:
#       ^^^^^ meta.statement.if.python
#       ^^^^ constant.language.python
#           ^ punctuation.section.block.conditional.python
#

    # verify that keywords also work when they are bare (useful when typing)
    for
#   ^^^ keyword.control.flow.for.python
    with
#   ^^^^ keyword.control.flow.with.python
    if
#   ^^ keyword.control.flow.conditional.python
    finally
#   ^^^^^^^ keyword.control.flow.finally.python
    else
#   ^^^^ keyword.control.flow.conditional.python
    while
#   ^^^^^ keyword.control.flow.while.python
    return
#   ^^^^^^ keyword.control.flow.return.python
    raise
#   ^^^^^ keyword.control.flow.raise.python


##################
# Function definitions
##################

def abc():
    global from, for, variable, .
#   ^^^^^^ storage.modifier.global
#          ^^^^ invalid.illegal.name
#                ^^^ invalid.illegal.name
#                               ^ invalid.illegal.name.storage


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
    pass


async def coroutine(param1):
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                  ^^^^^^^^ meta.function.parameters - meta.function meta.function
# <- storage.modifier.async
#     ^ storage.type
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
#                      ^ constant.numeric.integer.decimal.python
#                       ^ punctuation.separator.sequence.python
#                        ^ constant.numeric.integer.decimal.python
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
#   ^^^ storage.type.function - meta.decorator


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
#             ^^^^^^^^^^^^^^^ - meta.sequence
#                ^ - keyword
#                        ^ - keyword

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
#                ^ meta.mapping-or-set.python punctuation.section.mapping-or-set.begin.python
    1: True
#   ^ meta.mapping.key.python constant.numeric.integer.decimal.python
#    ^ punctuation.separator.mapping.key-value.python
}
# <- meta.mapping.python punctuation.section.mapping.end.python

complex_mapping = {(): "value"}
#                 ^^^ meta.mapping-or-set.python
#                    ^^^^^^^^^^ meta.mapping - meta.mapping-or-set

generator = (i for i in range(100))
#           ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
#              ^^^^^^^^ meta.expression.generator
#              ^^^ keyword.control.flow.for.generator
#                    ^^ keyword.control.flow.for.in
list_ = [i for i in range(100)]
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#          ^^^^^^^^ meta.expression.generator
#          ^^^ keyword.control.flow.for.generator
#                ^^ keyword.control.flow.for.in
set_ = {i for i in range(100)}
#      ^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping-or-set
#         ^^^^^^^^ meta.expression.generator
#         ^^^ keyword.control.flow.for.generator
#               ^^ keyword.control.flow.for.in
dict_ = {i: i for i in range(100)}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
#        ^ meta.mapping.key.python
#         ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.mapping.key.python
#           ^ meta.mapping.value.python
#            ^^^^^^^^^^^^^^^^^^^^^ - meta.mapping.value
#             ^^^^^^^^ meta.expression.generator
#             ^^^ keyword.control.flow.for.generator
#                   ^^ keyword.control.flow.for.in
list_ = [i for i in range(100) if i > 0 else -1]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence
#          ^^^^^^^^ meta.expression.generator
#                              ^^ keyword.control.flow.if.inline
#                                       ^^^^ keyword.control.flow.else.inline

list2_ = [i in range(10) for i in range(100) if i in range(5, 15)]
#           ^^ keyword.operator.logical
#                              ^^ keyword.control.flow.for.in
#                                                 ^^ keyword.operator.logical

generator = ((k1, k2, v) for ((k1, k2), v) in xs)
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.python
#            ^^^^^^^^^^^ meta.sequence.tuple.python
#           ^ punctuation.section.group.begin.python
#            ^ punctuation.section.sequence.begin.python
#                      ^ punctuation.section.sequence.end.python
#                            ^^ punctuation.section.target-list.begin.python
#                                    ^ punctuation.section.target-list.end.python
#                                        ^ punctuation.section.target-list.end.python
#                                               ^ punctuation.section.group.end.python

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

list(i for i in generator)
#      ^^^^^^^^ meta.expression.generator
list((i for i in generator), 123)
#       ^^^^^^^^ meta.expression.generator
#                         ^^^^^^^ - meta.expression.generator
#                          ^ punctuation.separator.arguments

_ = [m
     for cls in self.__class__.mro()
#    ^^^ keyword.control.flow.for.generator
#            ^^ keyword.control.flow.for.in
     for m in cls.__dict__]
#    ^^^ keyword.control.flow.for.generator
#          ^^ keyword.control.flow.for.in

result = [i async for i in aiter() if i % 2]
#           ^^^^^ storage.modifier.async
result = [await fun() for fun in funcs]
#         ^^^^^ keyword.other.await.python


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
#   ^^^ keyword.control.flow.for.generator
    i
    in
#   ^^ keyword.control.flow.for.in
    range(100)
)


##################
# Exception handling
##################

except Exception:
#^^^^^^^^^^^^^^^^ meta.statement.except
#^^^^^ keyword.control.flow.except
#      ^^^^^^^^^ support.type.exception
#               ^ punctuation.section.block
except (KeyError, NameError) as e:
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.except
#^^^^^ keyword.control.flow.except
#       ^^^^^^^^ support.type.exception
#               ^ punctuation.separator.target-list
#                 ^^^^^^^^^ support.type.exception
#                            ^^ keyword.control.flow.as
#                                ^ punctuation.section.block
except \
    StopIteration \
    as \
    err:
#   ^^^^ meta.statement.except

except StopIteration
    as
#   ^^ invalid.illegal.name - meta.statement.except

except
#^^^^^ keyword.control.flow.except

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
#         ^^^^^^^^^^ constant.numeric.integer.decimal.python
#                      ^^^^^^^^^^^ constant.numeric.integer.long.decimal.python
#                                ^ storage.type.numeric.long.python
#                                    ^ keyword.operator.arithmetic.python - constant.numeric
#                                         ^ keyword.operator.arithmetic.python - constant.numeric
#                                            ^ storage.type.numeric.long.python
#                                                ^^^^ constant.numeric.integer

floating = 0.1 - .1 * 10e-20 - 0.0e2 % 2.
#          ^^^ constant.numeric.float.python
#                ^ punctuation.separator.decimal.python
#                ^^ constant.numeric.float.python
#                     ^^^^^^ constant.numeric.float.python
#                               ^ punctuation.separator.decimal.python
#                              ^^^^^ constant.numeric.float.python
#                                      ^^ constant.numeric.float.python
#                                       ^ punctuation.separator.decimal.python

binary = 0b1010011 | 0b0110110L
#        ^^^^^^^^^ constant.numeric.integer.binary.python
#        ^^ punctuation.definition.numeric.binary.python
#                    ^^^^^^^^^^ constant.numeric.integer.long.binary.python
#                    ^^ punctuation.definition.numeric.binary.python
#                             ^ storage.type.numeric.long.python

octal = 0o755 ^ 0o644L
#       ^^^^^ constant.numeric.integer.octal.python
#       ^^ punctuation.definition.numeric.octal.python
#                    ^ storage.type.numeric.long.python
#               ^^^^^^ constant.numeric.integer.long.octal.python
#               ^^ punctuation.definition.integer.octal.python

old_style_octal = 010 + 007 - 012345670L
#                 ^^^ constant.numeric.integer.octal.python
#                 ^ punctuation.definition.numeric.octal.python
#                       ^^^ constant.numeric.integer.octal.python
#                       ^ punctuation.definition.numeric.octal.python
#                             ^^^^^^^^^^ constant.numeric.integer.long.octal.python
#                             ^ punctuation.definition.integer.octal.python
#                                      ^ storage.type.numeric.long.python

hexadecimal = 0x100af - 0XDEADF00L
#             ^^^^^^^ constant.numeric.integer.hexadecimal.python
#             ^^ punctuation.definition.numeric.hexadecimal.python
#                       ^^^^^^^^^^ constant.numeric.integer.long.hexadecimal.python
#                       ^^ punctuation.definition.numeric.hexadecimal.python
#                                ^ storage.type.numeric.long.python

unintuitive = 0B101 + 0O101 + 10l
#             ^^^^^ constant.numeric.integer.binary.python
#             ^^ punctuation.definition.numeric.binary.python
#                     ^^^^^ constant.numeric.integer.octal.python
#                     ^^ punctuation.definition.numeric.octal.python
#                             ^^^ constant.numeric.integer.long.decimal.python
#                               ^ storage.type.numeric.long.python

illegal = 1LL << 08 | 0b010203 | 0xAbraCadabra
#           ^ - constant.numeric
#                 ^ - constant.numeric
#                          ^^^ - constant.numeric
#                                    ^^^^^^^^^ - constant.numeric

amount = 10_000_000.0_2e2_0 + .e2 + 2_2._2
#        ^^^^^^^^^^^^^^^^^^ constant.numeric.float
#                  ^ punctuation.separator.decimal.python
#                             ^^^ - constant
#                                       ^^ - constant

very_complex = 23_2.2e2_0J + 2_1j
#              ^^^^^^^^^^^ constant.numeric.complex.python
#                  ^ punctuation.separator.decimal.python
#                            ^^^^ constant.numeric.complex.python
#                        ^ storage.type.numeric.complex.python
#                               ^ storage.type.numeric.complex.python

addr = 0xCAFE_F00D
#      ^^^^^^^^^^^ constant.numeric
#      ^^ punctuation.definition.numeric.hexadecimal.python

flags = 0b_0011_1111_0100_1110 | 0b_1 & 0b_0_
#       ^^^^^^^^^^^^^^^^^^^^^^ constant.numeric
#       ^^ punctuation.definition.numeric.binary.python
#                                ^^^^ constant.numeric.integer.binary.python
#                                           ^ - constant

octoct = 0o_2 ^ 0o_
#        ^^^^ constant.numeric.integer.octal.python
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


# <- - meta
# ensure we're not leaking a context
