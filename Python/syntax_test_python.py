# SYNTAX TEST "Packages/Python/Python.sublime-syntax"
# <- source.python comment.line.number-sign punctuation.definition.comment

import sys # comment
#^^^^^ keyword.control.import
#          ^ comment
from os import path, chdir # comment
#^^^ keyword.control.import.from
#       ^^^^^^ keyword.control.import
#              ^^^^ meta.name
#                  ^ punctuation.separator.import-list
#                    ^^^^^ meta.name
#                          ^ comment
from \
    os \
    import \
    path
#   ^^^^ meta.statement.import
from sys import (version, # comment
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.import
#               ^ punctuation.definition.begin.import-list
#                         ^ comment
                 version_info, . ) # comment
#                ^^^^^^^^^^^^^ meta.statement.import
#                              ^ invalid.illegal.name.import
#                                ^ punctuation.definition.end.import-list
#                                  ^ comment
import path from os
#           ^^^^ invalid.illegal.name
from .sub import *
#                ^ keyword.other.import-all.python
import a as b
#        ^^ keyword.control.import.as.python
from a import b as c, d as e
#               ^^ keyword.control.import.as.python
#                       ^^ keyword.control.import.as.python
from a import (b as c)
#                ^^ keyword.control.import.as.python

name
#^^^ meta.name
#
name1 . name2
#^^^^^^^^^^^^ meta.name.dotted
#     ^ punctuation.accessor
#^^^^ meta.name.dotted meta.name

class
#^^^^ invalid.illegal.name
def
#^^ invalid.illegal.name

# Currently, async and await are still recognized as valid identifiers unless in an "async" block
async
#^^^^ - invalid.illegal.name
#

def abc():
    global from, for, variable, .
#   ^^^^^^ storage.modifier.global
#          ^^^^ invalid.illegal.name
#                ^^^ invalid.illegal.name
#                     ^^^^^^^^ meta.name
#                               ^ invalid.illegal.name.storage

def my_func(param1, # Multi-line function definition
#                 ^ punctuation.separator.parameters
#                   ^ comment.line.number-sign
    # This is defaulted
#   ^ comment.line.number-sign
    param2='#1'):
#              ^ punctuation.definition.parameters.end
    print('Hi!')

    async for i in myfunc():
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.for
#   ^^^^^ keyword.control.flow.async
#         ^^^ keyword.control.flow.for
#               ^^ keyword.control.flow.for.in
#                          ^ punctuation.definition.block.for
        pass

    for \
        a \
        in \
        b:
#       ^^ meta.statement.for

    for
#   ^^^ keyword.control.flow.for
    b = c in d
#         ^^ keyword.operator.logical

    for i:
#        ^ invalid.illegal.missing-in

    a for b in c: # TODO make this invalid (for not at beginning of line)

    async with context_manager() as c:
#   ^^^^^ keyword.control.flow.async
#         ^^^^ keyword.control.flow.with
#                                ^^ keyword.control.flow.with.as
#                                    ^ punctuation.definition.block.with
        await something()
#       ^^^^^ keyword.other.await

    with \
        open() \
        as \
        x:
#       ^^ meta.statement.with

    with
#   ^^^^ keyword.control.flow.with
    yield from
#   ^^^^^ keyword.control.flow.yield
#         ^^^^ keyword.control.flow.yield-from

    yield fromsomething
#         ^^^^ - keyword

    print (file=None)
#   ^^^^^ support.function.builtin - keyword
    print . __class__
#   ^^^^^ support.function.builtin - keyword
    print "keyword"
#   ^^^^^^^^^^^^^^^ meta.statement.print
#   ^^^^^ keyword
    print __init__
#   ^^^^^ keyword
#
    exec 123
#   ^^^^^^^^ meta.statement.exec
#   ^^^^ keyword
    exec ("print('ok')")
#   ^^^^ support.function.builtin - keyword
    callback(print , print
#            ^^^^^ - keyword
#                  ^ punctuation.separator.parameters
#                    ^^^^^ - keyword
             , print)
#              ^^^^^ - keyword

def type_annotations(param1: int, param2: MyType, param3: max(2, 3), param4: "string" = "default") -> int:
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                                                                                                  ^^^^^^ meta.function.annotation.return
#                   ^ - meta.function meta.function.parameters
#                    ^^^^^^ variable.parameter
#                          ^^^^^ meta.function.annotation.parameter
#                          ^ punctuation.separator.annotation
#                            ^^^ support.type
#                               ^ punctuation.separator.parameters
#                                 ^^^^^^ variable.parameter
#                                       ^ punctuation.separator.annotation
#                                               ^ punctuation.separator.parameters
#                                                 ^^^^^^ variable.parameter
#                                                       ^ punctuation.separator.annotation
#                                                         ^^^^^^^^^ meta.function-call
#                                                            ^ punctuation.definition.arguments.begin
#                                                             ^ constant.numeric
#                                                                ^ constant.numeric
#                                                                 ^ punctuation.definition.arguments.end
#                                                                  ^ punctuation.separator.parameters
#                                                                    ^^^^^^ variable.parameter
#                                                                          ^ punctuation.separator.annotation
#                                                                            ^^^^^^^^ string.quoted.double
#                                                                                     ^^^^^^^^^^^ meta.function.default-value
#                                                                                     ^ keyword.operator.assignment
#                                                                                       ^^^^^^^^^ string.quoted.double
#                                                                                                ^ punctuation.definition.parameters.end
#                                                                                                  ^^ punctuation.separator.annotation
#                                                                                                     ^^^ support.type
#                                                                                                        ^ punctuation.section.function
    pass


async def coroutine(param1):
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                  ^^^^^^^^ meta.function.parameters
# <- storage.modifier.async
#     ^ storage.type
#         ^ entity.name.function
   pass


class MyClass():

    def my_func(self, param1, # Multi-line function definition
#                             ^ comment.line.number-sign
        # This is defaulted
#       ^ comment.line.number-sign
        param2='#1'):
#                  ^ punctuation.definition.parameters.end
        print('Hi!')


class UnicødeIdentifier():
#     ^^^^^^^^^^^^^^^^^ entity.name.type.class
    def résumé():
#       ^^^^^^ entity.name.function
        """
        A function-level docstring
        """
#       ^^^ comment.block

        yield from range(100)
#       ^^^^^ keyword.control.flow
#            ^ - keyword
#             ^^^^ keyword.control.flow


class MyClass(Inherited,
#     ^^^^^^^ entity.name.type.class
#             ^^^^^^^^^ entity.other.inherited-class
#                      ^ punctuation.separator.inheritance
              module . Inherited2, metaclass=ABCMeta):
#             ^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class
#                                ^ punctuation.separator.inheritance
#                                  TODO
    """
    This is a test of docstrings
    """
#   ^ comment.block
    pass

class Unterminated(Inherited:
#                           ^ invalid.illegal



##################
# Lists and dicts
##################

mytuple = ("this", 'is', 4, tuple)
#         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
#         ^ punctuation.definition.group.begin
#          ^^^^^^ string.quoted.double
#                ^ punctuation.separator.tuple
#                  ^^^^ string.quoted.single
#                      ^ punctuation.separator.tuple
#                        ^ constant.numeric
#                         ^ punctuation.separator.tuple
#                           ^^^^^ support.type
#                                ^ punctuation.definition.group.end
not_a_tuple = (a = 2, b += 3)
#                ^ - keyword
#                        ^ - keyword

mylist = []
#        ^^ meta.structure.list.python
#        ^ punctuation.definition.list.begin
#         ^ punctuation.definition.list.end

mylist = [1, "testing", ["sublist", True]]
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.list
#        ^ punctuation.definition.list.begin
#         ^ constant.numeric
#          ^ punctuation.separator.list
#            ^^^^^^^^^ string.quoted.double
#                     ^ punctuation.separator
#                       ^^^^^^^^^^^^^^^^^ meta.structure.list meta.structure.list
#                       ^ punctuation.definition.list.begin
#                        ^^^^^^^^^ string.quoted.double
#                                 ^ punctuation.separator.list
#                                   ^^^^ constant.language
#                                       ^ punctuation.definition.list.end
#                                        ^ punctuation.definition.list.end

mydict = {}
#        ^^ meta.structure.dictionary
#        ^ punctuation.definition.dictionary.begin
#         ^ punctuation.definition.dictionary.end

key2 = "my_key"
mydict = {"key": True, key2: (1, 2, [-1, -2])}
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#         ^^^^^ string.quoted.double
#              ^ punctuation.separator.key-value
#                ^^^^ constant.language
#                    ^ punctuation.separator.dictionary-or-set
#                      ^^^^ meta.name.dotted
#                          ^ punctuation.separator.key-value
#                            ^^^^^^^^^^^^^^^^ meta.group
#                            ^ punctuation.definition.group.begin
#                             ^ constant.numeric
#                                ^ constant.numeric
#                                   ^^^^^^^ meta.structure.list
#                                      ^ punctuation.separator.list
#                                           ^ punctuation.definition.group.end
#        ^ punctuation.definition.dictionary-or-set.begin
#                                            ^ punctuation.definition.dictionary-or-set.end

myset = {"key", True, key2, [-1], {}}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#        ^^^^^ string.quoted.double
#             ^ punctuation.separator.dictionary-or-set
#               ^^^^ constant.language
#                   ^ punctuation.separator.dictionary-or-set
#                     ^^^^ meta.name.dotted
#                         ^ punctuation.separator.dictionary-or-set
#                           ^^^^ meta.structure.list
#                             ^ constant.numeric
#                               ^ punctuation.separator.dictionary-or-set
#                                 ^^ meta.structure.dictionary

generator = (i for i in range(100))
#           ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
#              ^^^^^^^^^^^^^^^^^^^ meta.expression.generator
#              ^^^ keyword.control.flow.for.generator
#                  ^ meta.name
#                    ^^ keyword.control.flow.for.in
list_ = [i for i in range(100)]
#       ^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.list
#          ^^^^^^^^^^^^^^^^^^^ meta.expression.generator
#          ^^^ keyword.control.flow.for.generator
#                ^^ keyword.control.flow.for.in
set_ = {i for i in range(100)}
#      ^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#         ^^^^^^^^^^^^^^^^^^^ meta.expression.generator
#         ^^^ keyword.control.flow.for.generator
#               ^^ keyword.control.flow.for.in
dict_ = {i: i for i in range(100)}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary-or-set
#             ^^^^^^^^^^^^^^^^^^^ meta.expression.generator
#             ^^^ keyword.control.flow.for.generator
#                   ^^ keyword.control.flow.for.in
list_ = [i for i in range(100) if i > 0 else -1]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.list
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.expression.generator
#                              ^^ keyword.control.flow.if.inline
#                                       ^^^^ keyword.control.flow.else.inline

list2_ = [i in range(10) for i in range(100) if i in range(5, 15)]
#           ^^ keyword.operator.logical
#                              ^^ keyword.control.flow.for.in
#                                                 ^^ keyword.operator.logical

list(i for i in generator)
#      ^^^^^^^^^^^^^^^^^^ meta.expression.generator
list((i for i in generator), 123)
#       ^^^^^^^^^^^^^^^^^^ meta.expression.generator
#                         ^^^^^^^ - meta.expression.generator
#                          ^ punctuation.separator.parameters

a if b else c
# ^^ keyword.control.flow
#      ^^^^ keyword.control.flow

except Exception:
#^^^^^^^^^^^^^^^^ meta.statement.except
#^^^^^ keyword.control.flow.except
#      ^^^^^^^^^ support.type.exception
#               ^ punctuation.definition.block
except (KeyError, NameError) as e:
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.except
#^^^^^ keyword.control.flow.except
#       ^^^^^^^^ support.type.exception
#               ^ punctuation.separator.target-list
#                 ^^^^^^^^^ support.type.exception
#                            ^^ keyword.control.flow.as
#                                ^ punctuation.definition.block
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
#                     ^ meta.name

)
# <- invalid.illegal.stray.brace.round
]
# <- invalid.illegal.stray.brace.square
}
# <- invalid.illegal.stray.brace.curly

###############################
# Strings and embedded syntaxes
###############################

var = "\x00 \xaa \xAF \070 \r \n \t \\ \a \b \' \v \f \u0aF1 \UFe0a182f \N{SPACE}"
#      ^^^^ constant.character.escape.hex
#           ^^^^ constant.character.escape.hex
#                ^^^^ constant.character.escape.hex
#                     ^^^^ constant.character.escape.octal
#                          ^^ constant.character.escape
#                             ^^ constant.character.escape
#                                ^^ constant.character.escape
#                                   ^^ constant.character.escape
#                                      ^^ constant.character.escape
#                                         ^^ constant.character.escape
#                                            ^^ constant.character.escape
#                                               ^^ constant.character.escape
#                                                  ^^ constant.character.escape
#                                                     ^^^^^^ constant.character.escape.unicode
#                                                            ^^^^^^^^^^ constant.character.escape.unicode
#                                                                       ^^^^^^^^^ constant.character.escape.unicode

conn.execute("SELECT * FROM foobar")
#              ^ keyword.other.DML.sql

conn.execute('SELECT * FROM foobar')
#              ^ keyword.other.DML.sql

conn.execute(U"SELECT * FROM foobar")
#              ^ keyword.other.DML.sql

conn.execute(U'SELECT * FROM foobar')
#              ^ keyword.other.DML.sql

# In this example, the Python string is not raw, so \t is a python escape
conn.execute(u"SELECT * FROM foobar WHERE foo = '\t'")
#              ^ keyword.other.DML.sql
#                                                 ^ constant.character.escape.python

conn.execute(u'SELECT * FROM foobar')
#              ^ keyword.other.DML.sql

# In this example, the Python string is raw, so the \b should be a SQL escape
conn.execute(r"SELECT * FROM foobar WHERE baz = '\b")
#              ^ keyword.other.DML.sql
#                                                 ^ constant.character.escape.sql

# This tests to ensure the Python placeholder will be highlighted even in a raw SQL string
conn.execute(r'SELECT * FROM foobar WHERE %s')
#              ^ keyword.other.DML.sql
#                                         ^ constant.other.placeholder.python

conn.execute(r"SELECT * FROM foobar")
#              ^ keyword.other.DML.sql

conn.execute(r'SELECT * FROM foobar')
#              ^ keyword.other.DML.sql

conn.execute(r"""SELECT * FROM foobar WHERE %s and foo = '\t'""")
#                 ^ keyword.other.DML.sql
#                                            ^ constant.other.placeholder.python
#                                                          ^ constant.character.escape.sql

# Capital R prevents all syntax embedding
conn.execute(R'SELECT * FROM foobar')
#              ^ - keyword.other.DML.sql

conn.execute(R"SELECT * FROM foobar")
#              ^ - keyword.other.DML.sql

conn.execute(R"""SELECT * FROM foobar""")
#                ^ - keyword.other.DML.sql

conn.execute(r'''SELECT * FROM foobar''')
#                 ^ keyword.other.DML.sql

conn.execute(u"""SELECT * FROM foobar WHERE %s and foo = '\t'""")
#                 ^ keyword.other.DML.sql
#                                            ^ constant.other.placeholder.python
#                                                          ^ constant.character.escape.python

regex = r'\b ([fobar]*){1}(?:a|b)?'
#         ^ keyword.control.anchor.regexp
#                       ^ keyword.operator.quantifier.regexp

regex = r'''\b ([fobar]*){1}(?:a|b)?'''
#           ^ keyword.control.anchor.regexp
#                         ^ keyword.operator.quantifier.regexp

regex = r"""\b ([fobar]*){1}(?:a|b)?"""
#           ^ keyword.control.anchor.regexp
#                         ^ keyword.operator.quantifier.regexp

# Capital R prevents all syntax embedding
regex = R'\b ([fobar]*){1}(?:a|b)?'
#         ^ - keyword.control.anchor.regexp
#                       ^ - keyword.operator.quantifier.regexp

regex = R"\b ([fobar]*){1}(?:a|b)?"
#         ^ - keyword.control.anchor.regexp
#                       ^ - keyword.operator.quantifier.regexp

bad_string = 'SELECT * FROM users
#                                ^ invalid.illegal.unclosed-string

string = '''

# <- string.quoted.single.block
'''

string = """

# <- string.quoted.double.block
"""

string = """
#        ^^^ string.quoted.double.block - string string
"""

string = r"""
#         ^^^ string.quoted.double.block
"""

string = '''
#        ^^^ string.quoted.single.block
'''

string = r'''
#         ^^^ string.quoted.single.block
'''

query = \
    """
    SELECT
        (
        SELECT CASE field
            WHEN 1
            THEN -- comment's say that
#                              ^ source.sql comment.line.double-dash
                EXISTS(
                select 1)
            ELSE NULL
        ) as result
    """

query = \
    r"""

    SELECT
        (
        SELECT CASE field
            WHEN 1
            THEN -- comment's say that
#                              ^ source.sql comment.line.double-dash
                EXISTS(
                select 1)
            ELSE NULL
        ) as result
    """

query = \
    '''
    SELECT
        (
        SELECT CASE field
            WHEN 1
            THEN -- comment's say that
#                              ^ source.sql comment.line.double-dash
                EXISTS(
                select 1)
            ELSE NULL
        ) as result
    '''

sql = 'SELECT * FROM foo -- bar baz'
#       ^ source.sql
#                            ^ source.sql comment.line.double-dash
#                                  ^ punctuation.definition.string.end.python - source.sql


# There are many variations of making a byte string
(b'', B'', br'', bR'', BR'', Br'', rb'', Rb'', RB'', rB'')
#^ storage.type.string
#     ^ storage.type.string
#          ^^ storage.type.string
#                ^^ storage.type.string
#                      ^^ storage.type.string
#                            ^^ storage.type.string
#                                  ^^ storage.type.string
#                                        ^^ storage.type.string
#                                              ^^ storage.type.string
#                                                    ^^ storage.type.string

# Bytes by defaut support placeholders and character escapes, but not unicode
b'This is a \n test, %s no unicode \uDEAD'
# <- storage.type.string
#^ string.quoted.single punctuation.definition.string.begin
#           ^^ constant.character.escape
#                    ^^ constant.other.placeholder
#                                  ^^^^^^ - constant
B'This is a \n test, %s no unicode \uDEAD'
# <- storage.type.string
#^ string.quoted.single punctuation.definition.string.begin
#           ^^ constant.character.escape
#                    ^^ constant.other.placeholder
#                                  ^^^^^^ - constant
b'''This is a \n test, %s no unicode \uDEAD'''
# <- storage.type.string
#^^^ string.quoted.single punctuation.definition.string.begin
#             ^^ constant.character.escape
#                      ^^ constant.other.placeholder
#                                    ^^^^^^ - constant
B'''This is a \n test, %s no unicode \uDEAD'''
# <- storage.type.string
#^^^ string.quoted.single punctuation.definition.string.begin
#             ^^ constant.character.escape
#                      ^^ constant.other.placeholder
#                                    ^^^^^^ - constant

# Uppercase R raw bytes don't allow anything
bR'This is a \n test, %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ - constant.character.escape
#                     ^^ - constant.other.placeholder
#                                   ^^^^^^ - constant
BR'This is a \n test, %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ - constant.character.escape
#                     ^^ - constant.other.placeholder
#                                   ^^^^^^ - constant
Rb'This is a \n test, %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ - constant.character.escape
#                     ^^ - constant.other.placeholder
#                                   ^^^^^^ - constant
RB'This is a \n test, %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ - constant.character.escape
#                     ^^ - constant.other.placeholder
#                                   ^^^^^^ - constant
bR'''This is a \n test, %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ - constant.character.escape
#                       ^^ - constant.other.placeholder
#                                     ^^^^^^ - constant
BR'''This is a \n test, %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ - constant.character.escape
#                       ^^ - constant.other.placeholder
#                                     ^^^^^^ - constant
Rb'''This is a \n test, %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ - constant.character.escape
#                       ^^ - constant.other.placeholder
#                                     ^^^^^^ - constant
RB'''This is a \n test, %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ - constant.character.escape
#                       ^^ - constant.other.placeholder
#                                     ^^^^^^ - constant

# Lowercase r raw bytes are interpreted as regex
br'This is a \n (test|with), %s no unicode \UDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
Br'This is a \n (test|with), %s no unicode \UDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
rb'This is a \n (test|with), %s no unicode \UDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
rB'This is a \n (test|with), %s no unicode \UDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
br'''This is a \n (test|with), %s no unicode \UDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant
Br'''This is a \n (test|with), %s no unicode \UDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant
rb'''This is a \n (test|with), %s no unicode \UDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant
rB'''This is a \n (test|with), %s no unicode \UDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant




# <- - meta
# this test is to ensure we're not matching anything here anymore
