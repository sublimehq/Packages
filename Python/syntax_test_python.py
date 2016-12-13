# SYNTAX TEST "Packages/Python/Python.sublime-syntax"
# <- source.python comment.line.number-sign punctuation.definition.comment

r"""This is a syntax test file.
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
#^^^ punctuation.definition.comment.begin
# <- storage.type.string

And this right here, where we're writing in, is a docstring.
"""

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
from collections.abc import Iterable
#                    ^^^^^^ keyword.control.import
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


##################
# Identifiers
##################

class
#^^^^ storage.type.class
def
#^^ storage.type.function

# Currently, async and await are still recognized as valid identifiers unless in an "async" block
async
#^^^^ - invalid.illegal.name
#


##################
# Compound expressions
##################

myobj.method().attribute
#^^^^^^^^^^^^^ meta.function-call
#    ^ punctuation.accessor
#     ^^^^^^ variable.function
#             ^ punctuation.accessor

'foo'.upper()
#    ^^^^^^^^ meta.function-call
#    ^ punctuation.accessor
#     ^^^^^ variable.function

func()
#^^^^^ meta.function-call
#^^^ variable.function

func()(1, 2)
# <- meta.function-call
#^^^^^^^^^^^ meta.function-call

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

myobj.attribute
#    ^ punctuation.accessor

"string"[12]
#       ^^^^ meta.item-access - meta.structure

"string".upper()
#       ^^^^^^^^ meta.function-call

(i for i in range(10))[5]
#                     ^^^ meta.item-access - meta.structure

[1, 2, 3][2]
#^^^^^^^^ meta.structure.list
#        ^^^ meta.item-access - meta.structure

{True: False}.get(True)
#            ^^^^^^^^^^ meta.function-call

1[12]
#^^^^ - meta.item-access

##################
# Block statements
##################
def _():
    for
#   ^^^ keyword.control.flow.for
    b = c in d
#         ^^ keyword.operator.logical

    for \
        a \
        in \
        b:
#       ^^ meta.statement.for

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


    with
#   ^^^^ keyword.control.flow.with
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
    async with context_manager() as c:
#   ^^^^^ storage.modifier.async
#         ^^^^ keyword.control.flow.with
#                                ^^ keyword.control.flow.with.as
#                                    ^ punctuation.section.block.with
        await something()
#       ^^^^^ keyword.other.await



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
#     ^^^^^^^^^ meta.function.inline
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
    call(from='no')
#   ^^^^^^^^^^^^^^^ meta.function-call
#        ^^^^ invalid.illegal.name
#            ^ keyword.operator.assignment
#             ^^^^ string
    lambda
#   ^^^^^^ storage.type.function.inline


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
#                  ^ punctuation.separator.parameters
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
    param2='#1'):
#              ^ punctuation.section.parameters.end
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
#                  ^^^^^^^^ meta.function.parameters
# <- storage.modifier.async
#     ^ storage.type
#         ^ entity.name.function
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


class MyClass(Inherited,
#     ^^^^^^^ entity.name.class
#             ^^^^^^^^^ entity.other.inherited-class
#                      ^ punctuation.separator.inheritance
              module . Inherited2, metaclass=ABCMeta):
#             ^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class
#                    ^ punctuation.accessor
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


@normal . decorator
#^^^^^^^^^^^^^^^^^^ meta.statement.decorator
# <- keyword.other.decorator
#       ^ punctuation.accessor
class Class():

    @wraps(method, 12)# comment
#^^^ - meta.statement.decorator
#   ^^^^^^^^^^^^^^^^^^ meta.statement.decorator
#   ^ keyword.other.decorator
#    ^^^^^^^^^^^^^^^^^ meta.function-call
#                     ^^^^^^^^^ comment
    def wrapper(self):
        (self, __class__)
        pass


##################
# Collection literals and generators
##################

mytuple = ("this", 'is', 4, tuple)
#         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
#         ^ punctuation.section.group.begin
#          ^^^^^^ string.quoted.double
#                ^ punctuation.separator.tuple
#                  ^^^^ string.quoted.single
#                      ^ punctuation.separator.tuple
#                        ^ constant.numeric
#                         ^ punctuation.separator.tuple
#                           ^^^^^ support.type
#                                ^ punctuation.section.group.end
not_a_tuple = (a = 2, b += 3)
#                ^ - keyword
#                        ^ - keyword

mylist = []
#        ^^ meta.structure.list.python
#        ^ punctuation.section.list.begin
#         ^ punctuation.section.list.end

mylist = [1, "testing", ["sublist", True]]
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.list
#        ^ punctuation.section.list.begin
#         ^ constant.numeric
#          ^ punctuation.separator.list
#            ^^^^^^^^^ string.quoted.double
#                     ^ punctuation.separator
#                       ^^^^^^^^^^^^^^^^^ meta.structure.list meta.structure.list
#                       ^ punctuation.section.list.begin
#                        ^^^^^^^^^ string.quoted.double
#                                 ^ punctuation.separator.list
#                                   ^^^^ constant.language
#                                       ^ punctuation.section.list.end
#                                        ^ punctuation.section.list.end

mydict = {}
#        ^^ meta.structure.dictionary
#        ^ punctuation.section.dictionary.begin
#         ^ punctuation.section.dictionary.end

key2 = "my_key"
mydict = {"key": True, key2: (1, 2, [-1, -2])}
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#         ^^^^^ string.quoted.double
#              ^ punctuation.separator.key-value
#                ^^^^ constant.language
#                    ^ punctuation.separator.dictionary-or-set
#                          ^ punctuation.separator.key-value
#                            ^^^^^^^^^^^^^^^^ meta.group
#                            ^ punctuation.section.group.begin
#                             ^ constant.numeric
#                                ^ constant.numeric
#                                   ^^^^^^^ meta.structure.list
#                                      ^ punctuation.separator.list
#                                           ^ punctuation.section.group.end
#        ^ punctuation.section.dictionary-or-set.begin
#                                            ^ punctuation.section.dictionary-or-set.end

myset = {"key", True, key2, [-1], {}}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#        ^^^^^ string.quoted.double
#             ^ punctuation.separator.dictionary-or-set
#               ^^^^ constant.language
#                   ^ punctuation.separator.dictionary-or-set
#                         ^ punctuation.separator.dictionary-or-set
#                           ^^^^ meta.structure.list
#                             ^ constant.numeric
#                               ^ punctuation.separator.dictionary-or-set
#                                 ^^ meta.structure.dictionary

generator = (i for i in range(100))
#           ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
#              ^^^^^^^^ meta.expression.generator
#              ^^^ keyword.control.flow.for.generator
#                    ^^ keyword.control.flow.for.in
list_ = [i for i in range(100)]
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.list
#          ^^^^^^^^ meta.expression.generator
#          ^^^ keyword.control.flow.for.generator
#                ^^ keyword.control.flow.for.in
set_ = {i for i in range(100)}
#      ^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#         ^^^^^^^^ meta.expression.generator
#         ^^^ keyword.control.flow.for.generator
#               ^^ keyword.control.flow.for.in
dict_ = {i: i for i in range(100)}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#             ^^^^^^^^ meta.expression.generator
#             ^^^ keyword.control.flow.for.generator
#                   ^^ keyword.control.flow.for.in
list_ = [i for i in range(100) if i > 0 else -1]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.list
#          ^^^^^^^^ meta.expression.generator
#                              ^^ keyword.control.flow.if.inline
#                                       ^^^^ keyword.control.flow.else.inline

list2_ = [i in range(10) for i in range(100) if i in range(5, 15)]
#           ^^ keyword.operator.logical
#                              ^^ keyword.control.flow.for.in
#                                                 ^^ keyword.operator.logical

list(i for i in generator)
#      ^^^^^^^^ meta.expression.generator
list((i for i in generator), 123)
#       ^^^^^^^^ meta.expression.generator
#                         ^^^^^^^ - meta.expression.generator
#                          ^ punctuation.separator.parameters

_ = [m
     for cls in self.__class__.mro()
#    ^^^ keyword.control.flow.for.generator
#            ^^ keyword.control.flow.for.in
     for m in cls.__dict__]
#    ^^^ keyword.control.flow.for.generator
#          ^^ keyword.control.flow.for.in



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

decimal = 1234567890 + 9876543210L + -1 + -42L
#         ^^^^^^^^^^ constant.numeric.integer.decimal.python
#                      ^^^^^^^^^^^ constant.numeric.integer.long.decimal.python
#                                    ^ keyword.operator.arithmetic.python - constant.numeric
#                                         ^ keyword.operator.arithmetic.python - constant.numeric

binary = 0b1010011 | 0b0110110L
#        ^^^^^^^^^ constant.numeric.integer.binary.python
#                    ^^^^^^^^^^ constant.numeric.integer.long.binary.python

octal = 0o755 ^ 0o644L
#       ^^^^^ constant.numeric.integer.octal.python
#               ^^^^^^ constant.numeric.integer.long.octal.python

old_style_octal = 010 + 007 - 012345670L
#                 ^^^ constant.numeric.integer.octal.python
#                       ^^^ constant.numeric.integer.octal.python
#                             ^^^^^^^^^^ constant.numeric.integer.long.octal.python

hexadecimal = 0x100af - 0XDEADF00L
#             ^^^^^^^ constant.numeric.integer.hexadecimal.python
#                       ^^^^^^^^^^ constant.numeric.integer.long.hexadecimal.python

unintuitive = 0B101 + 0O101 + 10l
#             ^^^^^ constant.numeric.integer.binary.python
#                     ^^^^^ constant.numeric.integer.octal.python
#                             ^^^ constant.numeric.integer.long.decimal.python

illegal = 1LL << 08 | 0b010203 | 0xAbraCadabra
#           ^ - constant.numeric
#                 ^ - constant.numeric
#                          ^^^ - constant.numeric
#                                    ^^^^^^^^^ - constant.numeric


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
#        ^ - meta.structure.list


with open(x) as y:
#^^^ -invalid
#            ^^ - invalid

]
#<- invalid.illegal.stray.brace.square

class Class(object
    def __init__(self):
#   ^^^ invalid.illegal.name
#      ^ - meta.class
