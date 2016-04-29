# SYNTAX TEST "Packages/Python/Python.sublime-syntax"

import sys
#^^^^^ keyword.control.import
import path from os
#^^^^^ keyword.control.import
#           ^^^^ keyword.control.import.from

def my_func(param1, # Multi-line function definition
#                   ^ comment.line.number-sign
    # This is defaulted
#   ^ comment.line.number-sign
    param2='#1'):
#              ^ punctuation.definition.parameters.end
    print('Hi!')


def type_annotations(param1: int, param2: MyType, param3: max(2, 3), param4: "string" = "default") -> int:
#                    ^^^^^^ variable.parameter.function
#                          ^ punctuation.separator.annotation
#                            ^^^ support.type
#                               ^ punctuation.separator.parameters
#                                 ^^^^^^ variable.parameter.function
#                                       ^ punctuation.separator.annotation
#                                               ^ punctuation.separator.parameters
#                                                 ^^^^^^ variable.parameter.function
#                                                       ^ punctuation.separator.annotation
#                                                         ^^^^^^^^^ meta.function-call
#                                                            ^ punctuation.definition.arguments.begin
#                                                             ^ constant.numeric
#                                                                ^ constant.numeric
#                                                                 ^ punctuation.definition.arguments.end
#                                                                  ^ punctuation.separator.parameters
#                                                                    ^^^^^^ variable.parameter.function
#                                                                          ^ punctuation.separator.annotation
#                                                                            ^^^^^^^^ string.quoted.double
#                                                                                     ^ keyword.operator.assignment
#                                                                                       ^^^^^^^^^ string.quoted.double
#                                                                                                ^ punctuation.definition.parameters.end
#                                                                                                  ^^ punctuation.separator.annotation
#                                                                                                     ^^^ support.type
#                                                                                                        ^ punctuation.section.function
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
#                      ^ punctuation.separator
              module.Inherited2):
#             ^^^^^^^^^^^^^^^^^ entity.other.inherited-class
#                   ^ punctuation.accessor
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
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.structure.dictionary
#         ^^^^^ string.quoted.double
#              ^ punctuation.separator.key-value
#                ^^^^ constant.language
#                    ^ punctuation.separator.dictionary
#                          ^ punctuation.separator.key-value
#                            ^^^^^^^^^^^^^^^^ meta.group
#                            ^ punctuation.definition.group.begin
#                             ^ constant.numeric
#                                ^ constant.numeric
#                                   ^^^^^^^ meta.structure.list
#                                      ^ punctuation.separator.list
#                                           ^ punctuation.definition.group.end
#        ^ punctuation.definition.dictionary.begin
#                                            ^ punctuation.definition.dictionary.end

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
