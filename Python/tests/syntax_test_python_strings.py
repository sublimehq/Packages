# SYNTAX TEST "Packages/Python/Python.sublime-syntax"

###############################
# Strings and embedded syntaxes
###############################

var = "\x00 \xaa \xAF \070 \0 \r \n \t \\ \a \b \' \v \f \u0aF1 \UFe0a182f \N{SPACE} \N{dashed-name}"
#     ^ meta.string.python
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
#                                                     ^^ constant.character.escape
#                                                        ^^^^^^ constant.character.escape.unicode.16bit
#                                                               ^^^^^^^^^^ constant.character.escape.unicode.32bit
#                                                                          ^^^^^^^^^ constant.character.escape.unicode.name
#                                                                                    ^^^^^^^^^^^^^^^ constant.character.escape.unicode.name

invalid_escapes = "\.  \-"
#                  ^^ invalid.deprecated.character.escape.python
#                      ^^ invalid.deprecated.character.escape.python

conn.execute("SELECT * FROM foobar")
#              ^ meta.string.python keyword.other.dml.sql

conn.execute('SELECT * FROM foobar')
#              ^ keyword.other.dml.sql

conn.execute(U"SELECT * FROM foobar")
#             ^ meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#              ^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql
#                                  ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python
#              ^ keyword.other.dml.sql

conn.execute(U'SELECT * FROM foobar')
#             ^ meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#              ^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql
#                                  ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python
#              ^ keyword.other.dml.sql

# In this example, the Python string is not raw, so \t is a python escape
conn.execute(u"SELECT * FROM foobar WHERE foo = '\t'")
#            ^ storage.type.string.python
#             ^ meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql
#              ^ keyword.other.dml.sql
#                                                 ^ constant.character.escape.python
#                                                   ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

conn.execute(u'SELECT * FROM foobar')
#             ^ meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#              ^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql
#                                  ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python
#              ^ keyword.other.dml.sql

# In this example, the Python string is raw, so the \b should be a SQL escape
conn.execute(r"SELECT * FROM foobar WHERE baz = '\b")
#              ^ meta.string.python keyword.other.dml.sql
#                                                 ^ constant.character.escape.sql

# This tests to ensure the Python placeholder will be highlighted even in a raw SQL string
conn.execute(r'SELECT * FROM foobar WHERE %s')
#              ^ keyword.other.dml.sql
#                                         ^ constant.other.placeholder.python

conn.execute(r"SELECT * FROM foobar")
#              ^ keyword.other.dml.sql

conn.execute(r'SELECT * FROM foobar')
#              ^ keyword.other.dml.sql

conn.execute(r"""SELECT * FROM foobar WHERE %s and foo = '\t'""")
#                 ^ keyword.other.dml.sql
#                                            ^ constant.other.placeholder.python
#                                                          ^ constant.character.escape.sql

# Capital R prevents all syntax embedding
conn.execute(R'SELECT * FROM foobar')
#              ^ meta.string.python - keyword.other.dml.sql

conn.execute(R"SELECT * FROM foobar")
#              ^ - keyword.other.dml.sql

conn.execute(R"""SELECT * FROM foobar""")
#                ^ - keyword.other.dml.sql

conn.execute(r'''SELECT * FROM foobar''')
#                 ^ keyword.other.dml.sql

conn.execute(u"""SELECT * FROM foobar WHERE %s and foo = '\t'""")
#                 ^ keyword.other.dml.sql
#                                            ^ constant.other.placeholder.python
#                                                          ^ constant.character.escape.python

regex = r'\b ([fobar]*){1}(?:a|b)?'
#         ^^ meta.string.python keyword.control.anchor.regexp
#                      ^^^ keyword.operator.quantifier.regexp

regex = r'.* # Not a comment (yet)'
#            ^^^^^^^^^^^^^^^^^^^^^ - comment
#                                 ^ punctuation.definition.string.end.python - comment
#                                  ^ - invalid

regex = r".* # Not a comment (yet)"
#            ^^^^^^^^^^^^^^^^^^^^^ - comment
#                                 ^ punctuation.definition.string.end.python - comment
#                                  ^ - invalid

regex = r"(backref) \1 "
#                   ^^ keyword.other.backref-and-recursion.regexp
#                    ^ variable.other.backref-and-recursion.regexp
#                     ^ - keyword

regex = r'(?P<quote>[\'"]).*?(?P=quote)'
#          ^^ keyword.other.backref-and-recursion.regexp
#            ^ punctuation.definition.capture-group-name.begin.regexp
#             ^^^^^ entity.name.capture-group.regexp - invalid
#                  ^ punctuation.definition.capture-group-name.end.regexp
#                             ^^^ keyword.other.back-reference.named.regexp
#                                ^^^^^ variable.other.backref-and-recursion.regexp - invalid

regex = r'(?P<Quote>[\'"]).*?(?P=Quote)'
#          ^^ keyword.other.backref-and-recursion.regexp
#            ^ punctuation.definition.capture-group-name.begin.regexp
#             ^^^^^ entity.name.capture-group.regexp - invalid
#                  ^ punctuation.definition.capture-group-name.end.regexp
#                             ^^^ keyword.other.back-reference.named.regexp
#                                ^^^^^ variable.other.backref-and-recursion.regexp - invalid

regex = r'(?P<quote>[\'"]).*?\g<quote>'
#          ^^ keyword.other.backref-and-recursion.regexp
#            ^ punctuation.definition.capture-group-name.begin.regexp
#             ^^^^^ entity.name.capture-group.regexp - invalid
#                  ^ punctuation.definition.capture-group-name.end.regexp
#                            ^^ keyword.other.backref-and-recursion.regexp
#                               ^^^^^ variable.other.backref-and-recursion.regexp - invalid

regex = r'(?P<Quote>[\'"]).*?\g<Quote>'
#          ^^ keyword.other.backref-and-recursion.regexp
#            ^ punctuation.definition.capture-group-name.begin.regexp
#             ^^^^^ entity.name.capture-group.regexp - invalid
#                  ^ punctuation.definition.capture-group-name.end.regexp
#                            ^^ keyword.other.backref-and-recursion.regexp
#                               ^^^^^ variable.other.backref-and-recursion.regexp - invalid

regex = r'''\b ([fobar]*){1}(?:a|b)?'''
#           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.mode.extended.regexp
#           ^^ keyword.control.anchor.regexp
#                        ^^^ keyword.operator.quantifier.regexp
#                                  ^ keyword.operator.quantifier.regexp

regex = r'''
    \b ([fobar]*){1} (?: a | b )?
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mode.extended.regexp
#   ^^ keyword.control.anchor.regexp
#                ^^^ keyword.operator.quantifier.regexp
#                               ^ keyword.operator.quantifier.regexp
'''

regex = r"""\b ([fobar]*){1}(?:a|b)?"""
#           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.mode.extended.regexp
#           ^^ keyword.control.anchor.regexp
#                        ^^^ keyword.operator.quantifier.regexp
#                                  ^ keyword.operator.quantifier.regexp

regex = r"""
    \b ([fobar]*){1} (?: a | b )?
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mode.extended.regexp
#   ^^ keyword.control.anchor.regexp
#                ^^^ keyword.operator.quantifier.regexp
#                               ^ keyword.operator.quantifier.regexp
"""

# Capital R prevents all syntax embedding
regex = R'\b ([fobar]*){1}(?:a|b)?'
#         ^ - keyword.control.anchor.regexp
#                       ^ - keyword.operator.quantifier.regexp

regex = R"\b ([fobar]*){1}(?:a|b)?"
#         ^ - keyword.control.anchor.regexp
#                       ^ - keyword.operator.quantifier.regexp

bad_string = 'SELECT * FROM users
#                                ^ invalid.illegal.unclosed-string

more_bad_string = r"
#                   ^ invalid.illegal.unclosed-string.python

string = '''

# <- string.quoted.single.block
'''

string = """

# <- string.quoted.double.block
"""

string = """
#        ^^^ string.quoted.double.block - string string
\
# <- punctuation.separator.continuation.line.python
"""

string = r"""
#         ^^^ meta.string.python string.quoted.double.block
\
# <- - punctuation
"""

string = r"""
    # An indented comment.
#  ^ - comment
#   ^ comment.line.number-sign.regexp
### <<This comment>> @includes some &punctuation.
# <- comment.line.number-sign.regexp
"""

string = '''
#        ^^^ string.quoted.single.block
'''

string = r'''
#         ^^^ string.quoted.single.block
'''

string = r'''
    # An indented comment.
#  ^ - comment
#   ^ comment.line.number-sign.regexp
### <<This comment>> @includes some &punctuation.
# <- comment.line.number-sign.regexp
'''

string = r'''
    [set]
#   ^^^^^ meta.set.regexp
#   ^ punctuation.definition.set.begin.regexp
#       ^ punctuation.definition.set.end.regexp
    (group)
#   ^^^^^^^ meta.group.regexp
#   ^ punctuation.section.group.begin.regexp
#         ^ punctuation.section.group.end.regexp
    (?<!group)
#   ^^^^^^^^^^ meta.group.regexp
#   ^ punctuation.section.group.begin.regexp
#    ^^^ constant.other.assertion.regexp
#            ^ punctuation.section.group.end.regexp
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
        END) as result
    """ + test
#   ^^^ meta.string.python string.quoted.double.block.python punctuation.definition.string.end.python
#       ^ keyword.operator.arithmetic.python
#         ^^^^ meta.path.python meta.generic-name.python

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
        END) as result
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
    END) as result
'''

query = """
    WITH OrderedOrders AS
    (
        SELECT SalesOrderID, OrderDate,
        ROW_NUMBER() OVER (ORDER BY OrderDate) AS 'RowNumber'
        FROM Sales.SalesOrderHeader
    )
    SELECT *
    FROM OrderedOrders
    WHERE RowNumber BETWEEN 50 AND 60"""
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string

query = """
    MERGE INTO some_table
    USING another_table
    ON some_table.id = another_table.id
    WHEN MATCHED THEN
        UPDATE
        SET col1 = another_table.col1"""
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string

sql = 'SELECT * FROM foo -- bar baz'
#       ^ source.sql
#                            ^ source.sql comment.line.double-dash
#                                  ^ punctuation.definition.string.end.python - source.sql

###################################################
# escaped quotes in raw strings prevent termination
###################################################

r'''\''''
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

r"""\""""
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

R'''\''''
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

R"""\""""
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

r'''\\'''
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

r"""\\"""
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

R'''\\'''
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

R"""\\"""
#^^^^^^^^ comment.block.documentation
#   ^^ - constant.character.escape

raw = r'foo\'' + r'foo\"' + r'foo\\'
#      ^^^^^^^ meta.string.python string.quoted.single.python
#      ^ punctuation.definition.string.begin.python
#          ^^ constant.character.escape
#            ^ punctuation.definition.string.end.python
#                 ^^^^^^^ meta.string.python string.quoted.single.python
#                 ^ punctuation.definition.string.begin.python
#                     ^^ constant.character.escape
#                       ^ punctuation.definition.string.end.python
#                            ^^^^^^^ meta.string.python string.quoted.single.python
#                            ^ punctuation.definition.string.begin.python
#                                ^^ constant.character.escape
#                                  ^ punctuation.definition.string.end.python

raw = r"foo\"" + r"foo\'" + r"foo\\"
#      ^^^^^^^ meta.string.python string.quoted.double.python
#      ^ punctuation.definition.string.begin.python
#          ^^ constant.character.escape
#            ^ punctuation.definition.string.end.python
#                 ^^^^^^^ meta.string.python string.quoted.double.python
#                 ^ punctuation.definition.string.begin.python
#                     ^^ constant.character.escape
#                       ^ punctuation.definition.string.end.python
#                            ^^^^^^^ meta.string.python string.quoted.double.python
#                            ^ punctuation.definition.string.begin.python
#                                ^^ constant.character.escape
#                                  ^ punctuation.definition.string.end.python

raw = rb'foo\'' + rb'foo\"' + rb'foo\\'
#       ^^^^^^^ meta.string.python string.quoted.single.python
#       ^ punctuation.definition.string.begin.python
#           ^^ constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.single.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.single.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = rb"foo\"" + rb"foo\'" + rb"foo\\"
#       ^^^^^^^ meta.string.python string.quoted.double.python
#       ^ punctuation.definition.string.begin.python
#           ^^ constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.double.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ constant.character.escape
#                         ^ punctuation.definition.string.end.python

raw = rf'foo\'' + rf'foo\"' + rf'foo\\'
#       ^^^^^^^ meta.string.python string.quoted.single.python
#       ^ punctuation.definition.string.begin.python
#           ^^ constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.single.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.single.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = rf"foo\"" + rf"foo\'" + rf"foo\\"
#       ^^^^^^^ meta.string.python string.quoted.double.python
#       ^ punctuation.definition.string.begin.python
#           ^^ constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.double.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.double.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = R'foo\'' + R'foo\"' + R'foo\\'
#      ^^^^^^^ meta.string.python string.quoted.single.python
#      ^ punctuation.definition.string.begin.python
#          ^^ - constant.character.escape
#            ^ punctuation.definition.string.end.python
#                 ^^^^^^^ meta.string.python string.quoted.single.python
#                 ^ punctuation.definition.string.begin.python
#                     ^^ - constant.character.escape
#                       ^ punctuation.definition.string.end.python
#                            ^^^^^^^ meta.string.python string.quoted.single.python
#                            ^ punctuation.definition.string.begin.python
#                                ^^ - constant.character.escape
#                                  ^ punctuation.definition.string.end.python

raw = R"foo\"" + R"foo\'" + R"foo\\"
#      ^^^^^^^ meta.string.python string.quoted.double.python
#      ^ punctuation.definition.string.begin.python
#          ^^ - constant.character.escape
#            ^ punctuation.definition.string.end.python
#                 ^^^^^^^ meta.string.python string.quoted.double.python
#                 ^ punctuation.definition.string.begin.python
#                     ^^ - constant.character.escape
#                       ^ punctuation.definition.string.end.python
#                            ^^^^^^^ meta.string.python string.quoted.double.python
#                            ^ punctuation.definition.string.begin.python
#                                ^^ - constant.character.escape
#                                  ^ punctuation.definition.string.end.python

raw = RB'foo\'' + RB'foo\"' + RB'foo\\'
#       ^^^^^^^ meta.string.python string.quoted.single.python
#       ^ punctuation.definition.string.begin.python
#           ^^ - constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.single.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ - constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.single.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ - constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = RB"foo\"" + RB"foo\'" + RB"foo\\"
#       ^^^^^^^ meta.string.python string.quoted.double.python
#       ^ punctuation.definition.string.begin.python
#           ^^ - constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.double.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ - constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.double.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ - constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = RF'foo\'' + RF'foo\"' + RF'foo\\'
#       ^^^^^^^ meta.string.python string.quoted.single.python
#       ^ punctuation.definition.string.begin.python
#           ^^ - constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.single.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ - constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.single.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ - constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = RF"foo\"" + RF"foo\'" + RF"foo\\"
#       ^^^^^^^ meta.string.python string.quoted.double.python
#       ^ punctuation.definition.string.begin.python
#           ^^ - constant.character.escape
#             ^ punctuation.definition.string.end.python
#                   ^^^^^^^ meta.string.python string.quoted.double.python
#                   ^ punctuation.definition.string.begin.python
#                       ^^ - constant.character.escape
#                         ^ punctuation.definition.string.end.python
#                               ^^^^^^^ meta.string.python string.quoted.double.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^^ - constant.character.escape
#                                     ^ punctuation.definition.string.end.python

raw = r'''foo\'''' + r'''foo\"''' + r'''foo\\'''
#      ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#      ^ punctuation.definition.string.begin.python
#            ^^ constant.character.escape
#              ^^^ punctuation.definition.string.end.python
#                     ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^ constant.character.escape
#                             ^^^ punctuation.definition.string.end.python
#                                    ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                                    ^^^ punctuation.definition.string.begin.python
#                                          ^^ constant.character.escape
#                                            ^^^ punctuation.definition.string.end.python

raw = r"""foo\"""" + r"""foo\'""" + r"""foo\\"""
#      ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#      ^ punctuation.definition.string.begin.python
#            ^^ constant.character.escape
#              ^^^ punctuation.definition.string.end.python
#                     ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^ constant.character.escape
#                             ^^^ punctuation.definition.string.end.python
#                                    ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                                    ^^^ punctuation.definition.string.begin.python
#                                          ^^ constant.character.escape
#                                            ^^^ punctuation.definition.string.end.python

raw = rb'''foo\'''' + rb'''foo\"''' + rb'''foo\\'''
#       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = rb"""foo\"""" + rb"""foo\'""" + rb"""foo\\"""
#       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = rf'''foo\'''' + rf'''foo\"''' + rf'''foo\\'''
#       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = rf"""foo\"""" + rf"""foo\'""" + rf"""foo\\"""
#       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = R'''foo\'''' + R'''foo\"''' + R'''foo\\'''
#      ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#      ^ punctuation.definition.string.begin.python
#            ^^ - constant.character.escape
#              ^^^ punctuation.definition.string.end.python
#                     ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^ - constant.character.escape
#                             ^^^ punctuation.definition.string.end.python
#                                    ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                                    ^^^ punctuation.definition.string.begin.python
#                                          ^^ - constant.character.escape
#                                            ^^^ punctuation.definition.string.end.python

raw = R"""foo\"""" + R"""foo\'""" + R"""foo\\"""
#      ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#      ^ punctuation.definition.string.begin.python
#            ^^ - constant.character.escape
#              ^^^ punctuation.definition.string.end.python
#                     ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                     ^^^ punctuation.definition.string.begin.python
#                           ^^ - constant.character.escape
#                             ^^^ punctuation.definition.string.end.python
#                                    ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                                    ^^^ punctuation.definition.string.begin.python
#                                          ^^ - constant.character.escape
#                                            ^^^ punctuation.definition.string.end.python

raw = RB'''foo\'''' + RB'''foo\"''' + RB'''foo\\'''
#       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ - constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ - constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ - constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = RB"""foo\"""" + RB"""foo\'""" + RB"""foo\\"""
#       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ - constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ - constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ - constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = RF'''foo\'''' + RF'''foo\"''' + RF'''foo\\'''
#       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ - constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ - constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.single.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ - constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

raw = RF"""foo\"""" + RF"""foo\'""" + RF"""foo\\"""
#       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#       ^ punctuation.definition.string.begin.python
#             ^^ - constant.character.escape
#               ^^^ punctuation.definition.string.end.python
#                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                       ^^^ punctuation.definition.string.begin.python
#                             ^^ - constant.character.escape
#                               ^^^ punctuation.definition.string.end.python
#                                       ^^^^^^^^^^^ meta.string.python string.quoted.double.block.python
#                                       ^^^ punctuation.definition.string.begin.python
#                                             ^^ - constant.character.escape
#                                               ^^^ punctuation.definition.string.end.python

###################################################
# There are many variations of making a byte string
###################################################

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

# Bytes by default support placeholders and character escapes, but not unicode
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
br'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.regexp
#                    ^ keyword.operator.alternation.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.regexp
#                                            ^^^^ - constant
Br'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.regexp
#                    ^ keyword.operator.alternation.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.regexp
#                                            ^^^^ - constant
rb'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.regexp
#                    ^ keyword.operator.alternation.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.regexp
#                                            ^^^^ - constant
rB'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.regexp
#                    ^ keyword.operator.alternation.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.regexp
#                                            ^^^^ - constant
br'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.regexp
#                      ^ keyword.operator.alternation.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.regexp
#                                              ^^^^ - constant
Br'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.regexp
#                      ^ keyword.operator.alternation.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.regexp
#                                              ^^^^ - constant
rb'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.regexp
#                      ^ keyword.operator.alternation.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.regexp
#                                              ^^^^ - constant
rB'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ meta.string.python string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.regexp
#                      ^ keyword.operator.alternation.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.regexp
#                                              ^^^^ - constant

datetime.strptime('2011227', '%Y%V%u')
#                            ^^^^^^^^ string.quoted.single.python
#                             ^^^^^^ constant.other.placeholder.python
datetime.strftime(datetime.now(), '%Y%V%uT')
#                                 ^^^^^^^^^ string.quoted.single.python
#                                  ^^^^^^ constant.other.placeholder.python
#                                        ^ - constant.other.placeholder.python

'{0:%Y%m%d}'.format(datetime.date.today())
# ^^^^^^^^^^ string.quoted.single.python
# ^^^^^^^^ constant.other.placeholder.python
#   ^^^^^^ constant.other.format-spec.python
'{0:%Y-%m-%d}'.format(datetime.date.today())
# ^^^^^^^^^^^^ string.quoted.single.python
# ^^^^^^^^^^ constant.other.placeholder.python
#   ^^^^^^^^ constant.other.format-spec.python
'{0:%Y-%m-%dT}'.format(datetime.date.today())
# ^^^^^^^^^^^^ string.quoted.single.python
# ^^^^^^^^^^^ constant.other.placeholder.python
#   ^^^^^^^^^ constant.other.format-spec.python
'{0:T}'.format(datetime.date.today())  # This is legal but uninteresting
# ^^^^^ string.quoted.single.python
'{0:%Y}-{0:%m}-{0:%d}'.format(datetime.date.today())
# ^^^^^^^^^^^^^^^^^^^ string.quoted.single.python
# ^^^^^ constant.other.placeholder.python
#  ^ punctuation.separator.format-spec.python
#   ^^ meta.format-spec.python constant.other.format-spec.python
#      ^ - constant.other.placeholder.python
#       ^^^^^^ constant.other.placeholder.python
#          ^^ constant.other.format-spec.python
#             ^ - constant.other.placeholder.python
#              ^^^^^^ constant.other.placeholder.python
#                 ^^ constant.other.format-spec.python
'{0:%Y}-{0:%m
# ^^^^^^^^^^^^ meta.string.python string.quoted.single.python
# ^^^^^ constant.other.placeholder.python
#      ^^^^ - constant.other.placeholder.python
#            ^ invalid.illegal.unclosed-string.python
'{0:%Y}-{0:%
# ^^^^^^^^^^^ meta.string.python string.quoted.single.python
# ^^^^^ constant.other.placeholder.python
#      ^^^^^ - constant.other.placeholder.python
#           ^ invalid.illegal.unclosed-string.python

x = "hello \
#   ^^^^^^^^^ string.quoted.double.python - invalid.illegal.unclosed-string.python, \
#          ^ punctuation.separator.continuation.line.python, \
world"
#^^^^^ string.quoted.double.python
#     ^ - string.quoted.double.python
#    ^ punctuation.definition.string.end.python

x = 'hello \
#   ^^^^^^^^^ string.quoted.single.python - invalid.illegal.unclosed-string.python, \
#          ^ punctuation.separator.continuation.line.python, \
world'
#^^^^^ string.quoted.single.python
#     ^ - string.quoted.single.python
#    ^ punctuation.definition.string.end.python

x = 'hello\s world'
#         ^^ - punctuation.separator.continuation.line.python
#          ^^^^^^^^ - invalid.illegal.unexpected-text.python

sql = 'SELECT * FROM table'
#     ^ meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string
#                         ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python

sql = 'DROP TABLE foo'
#     ^ meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^^^ meta.string.python source.sql - string
#                    ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python

sql = 'UPDATE table'
#     ^ meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^ meta.string.python source.sql - string
#                  ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python

sql = 'TRUNCATE foo'
#     ^ meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^ meta.string.python source.sql - string
#                  ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python


sql = "SELECT * FROM table"
#     ^ meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string
#                         ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

sql = "DROP TABLE foo"
#     ^ meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^^^ meta.string.python source.sql - string
#                    ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

sql = "UPDATE table"
#     ^ meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^ meta.string.python source.sql - string
#                  ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

sql = "TRUNCATE foo"
#     ^ meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#      ^^^^^^^^^^^^ meta.string.python source.sql - string
#                  ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

sql = "SELECT `name` FROM `users` \
    WHERE `password` LIKE 'abc'"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string.quoted.double
#                              ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

sql = "BEGIN TRANSACTION; \
    DELETE FROM HumanResources.JobCandidate  \
    WHERE JobCandidateID = 13; \
    COMMIT;"
#   ^^^^^^ meta.string.python source.sql - string

sql = "DELETE FROM HumanResources.JobCandidate WHERE JobCandidateID = 13;"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string.quoted

sql = Ur"SELECT `name` FROM `users` \
    WHERE `password` LIKE 'abc'"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python source.sql - string.quoted.double
#                              ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

sql = b'just some \
#      ^^^^^^^^^^^^^ string.quoted.single.python - invalid.illegal.unclosed-string.python, \
#                 ^ punctuation.separator.continuation.line.python, \
    string'
#^^^^^^^^^^ string.quoted.single
#         ^ punctuation.definition.string.end.python

# https://docs.python.org/3/library/string.html#formatspec
"First, thou shalt count to {0}"  # References first positional argument
#                           ^^^ constant.other.placeholder.python
"Bring me a {}"                   # Implicitly references the first positional argument
#           ^^ constant.other.placeholder.python
"From {} to {}"                   # Same as "From {0} to {1}"
#     ^^ constant.other.placeholder.python
#       ^^^^ - constant.other.placeholder.python
#           ^^ constant.other.placeholder.python
"My quest is {name}"              # References keyword argument 'name'
#            ^^^^^^ constant.other.placeholder.python
"Weight in tons {0.weight}"       # 'weight' attribute of first positional arg
#               ^^^^^^^^^^ constant.other.placeholder.python
#                 ^ punctuation.accessor.dot.python
"Units destroyed: {players[0]}"   # First element of keyword argument 'players'.
#                 ^^^^^^^^^^^^ constant.other.placeholder.python
"Harold's a clever {0!s}"         # Calls str() on the argument first
#                  ^^^^^ constant.other.placeholder.python
#                    ^^ storage.modifier.conversion.python
"Bring out the holy {name!r}"     # Calls repr() on the argument first
#                   ^^^^^^^^ constant.other.placeholder.python
"More {!a}"                       # Calls ascii() on the argument first
#     ^^^^ constant.other.placeholder.python
"More {!a: <10s}"                 # Calls ascii() on the argument first, then formats
#     ^^^^^^^^^^ constant.other.placeholder.python
#        ^ punctuation.separator.format-spec.python - meta.format-spec.python
#         ^^^^^ meta.format-spec.python constant.other.format-spec.python
"Escaped {{0}}"                   # outputs: "Escaped {0}"
#        ^^^^^ - constant.other.placeholder.python
#        ^^ constant.character.escape.python
#           ^^ constant.character.escape.python
"Escaped {{}} {} {}"              # outputs: "Escaped {} arg1 arg2"
#        ^^^^ constant.character.escape.python - constant.other.placeholder.python
#             ^^ constant.other.placeholder.python
#               ^ - constant.other.placeholder.python
#                ^^ constant.other.placeholder.python

datetime.datetime.utcnow().strftime("%Y%m%d%H%M")
#                                    ^^^^^^^^^^ constant.other.placeholder

"My String %% %s"
#          ^^ constant.other.placeholder
#             ^^ constant.other.placeholder

"My String %(s)s %s"
#          ^^^^^ constant.other.placeholder
#            ^ variable.other.placeholder
#                ^^ constant.other.placeholder

"Testing {:,.2f}".format(1000)
#        ^^^^^^^ constant.other.placeholder
#        ^ punctuation.definition.placeholder.begin
#              ^ punctuation.definition.placeholder.end

"Testing {0:>9,}".format(1000)
#        ^^^^^^^ constant.other.placeholder

"Testing {:j^9,}".format(1000)
#        ^^^^^^^ constant.other.placeholder
#          ^^^^ meta.format-spec.python constant.other.format-spec

"result: {value:{width}.{precision}}"
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.placeholder
#               ^^^^^^^^^^^^^^^^^^^ meta.format-spec.python
#        ^ punctuation.definition.placeholder.begin
#              ^ punctuation.separator.format-spec.python
#               ^^^^^^^ constant.other.placeholder constant.other.placeholder
#               ^ punctuation.definition.placeholder.begin
#                       ^^^^^^^^^^^ constant.other.placeholder constant.other.placeholder
#                                 ^^ punctuation.definition.placeholder.end

# Nested quotes and escaped quotes

"Testing {foo['bar']:'^9}".format(foo={"bar": 1000})
# <- meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python string.quoted.double.python
#        ^^^^^^^^^^^^^^^^ constant.other.placeholder
#                   ^ punctuation.separator.format-spec.python
#                        ^ punctuation.definition.string.end.python
#                         ^ punctuation.accessor.dot.python

"Testing {foo[\"bar\"]:\"^9}".format(foo={"bar": 1000})
# <- meta.string.python string.quoted.double.python punctuation.definition.string.begin.python
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python string.quoted.double.python
#        ^^^^^^^^^^^^^^^^^^^ constant.other.placeholder
#             ^^ constant.character.escape.python
#                  ^^ constant.character.escape.python
#                     ^ punctuation.separator.format-spec.python
#                      ^^ constant.character.escape.python
#                           ^ punctuation.definition.string.end.python
#                            ^ punctuation.accessor.dot.python

'Testing {foo["bar"]:"^9}'.format(foo={"bar": 1000})
# <- meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python string.quoted.single.python
#        ^^^^^^^^^^^^^^^^ constant.other.placeholder
#                   ^ punctuation.separator.format-spec.python
#                        ^ punctuation.definition.string.end.python
#                         ^ punctuation.accessor.dot.python

'Testing {foo[\'bar\']:\'^9}'.format(foo={"bar": 1000})
# <- meta.string.python string.quoted.single.python punctuation.definition.string.begin.python
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python string.quoted.single.python
#        ^^^^^^^^^^^^^^^^^^^ constant.other.placeholder
#             ^^ constant.character.escape.python
#                  ^^ constant.character.escape.python
#                     ^ punctuation.separator.format-spec.python
#                      ^^ constant.character.escape.python
#                           ^ punctuation.definition.string.end.python
#                            ^ punctuation.accessor.dot.python

a=["aaaa{", "bbbb{"]
#       ^ - constant.other.placeholder
#        ^ punctuation.definition.string.end.python

foo = "{text{" # Comment
#      ^^^^^^ - constant.other.placeholder
#            ^ punctuation.definition.string.end
bar = "}}" # Comment
#      ^^ constant.character.escape

# The following section contains unusual and legal or illegal format placeholders.
# We don't actually want to match the syntax 100% of the time,
# since we never know for sure if the string is used as a format string,
# so some of these matches are incorrect because of implementation details.

# Not format specs
"{:{ }"            # unclosed
# ^ - constant.other.placeholder
'{:{ }'            # unclosed
# ^ - constant.other.placeholder
"{{foo!r:4.2}"     # escaped opening
# ^ - constant.other.placeholder
'{{foo!r:4.2}'     # escaped opening
# ^ - constant.other.placeholder
"{{foo!r:4.2}}"    # escaped opening and closing
# ^ - constant.other.placeholder
'{{foo!r:4.2}}'    # escaped opening and closing
# ^ - constant.other.placeholder
"{foo!a:ran{dom}"  # unclosed
# ^ - constant.other.placeholder
'{foo!a:ran{dom}'  # unclosed
# ^ - constant.other.placeholder

# Incomplete field elements
"{foo["      # unclosed element index
#^^^^^ - constant.other.placeholder
'{foo['      # unclosed element index
#^^^^^ - constant.other.placeholder
"{foo[}"     # unclosed element index
#^^^^^^ - constant.other.placeholder
'{foo[}'     # unclosed element index
#^^^^^^ - constant.other.placeholder
"{foo[""]}"  # unsupported nested quotes
#^^^^^^^^^ - constant.other.placeholder
'{foo['']}'  # unsupported nested quotes
#^^^^^^^^^ - constant.other.placeholder

# Invalid field names
"{foo{d}}"
# ^ - constant.other.placeholder
'{foo{d}}'
# ^ - constant.other.placeholder
"{:{ {}}"  # issue 2232
# ^ - constant.other.placeholder
'{:{ {}}'  # issue 2232
# ^ - constant.other.placeholder
"{foo.!a:d}"  # incomplete accessor (in simple form)
# ^ constant.other.placeholder
#    ^ punctuation.accessor.dot
'{foo.!a:d}'  # incomplete accessor (in simple form)
# ^ constant.other.placeholder
#    ^ punctuation.accessor.dot

# Issue 3649
{"msg": "Type '{ _client: { _user?: { [x: string]: unknown; | undefined; }"}
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted - constant.other.placeholder
#                                                                          ^ punctuation.section.mapping.end.python

# Syntactically correct, but hardly come up in real code and not covered by
# https://docs.python.org/3.11/library/string.html#format-string-syntax
"{:{ ()}}".format(0, **{" ()": "d"}) == '0'
#^^^^^^^^^ meta.string.python string.quoted.double.python
#^^^^^^ - constant.other.placeholder
'{foo/bar}'.format(**{"foo/bar": 1}) == '1'
#^^^^^^^^^^ meta.string.python string.quoted.single.python
#^^^^^^^^^ - constant.other.placeholder
#         ^ punctuation.definition.string.end.python

# Legal but non-standard format spec
'{foo:^}}}'         # valid format specifier
#^^^^^^^ constant.other.placeholder
#^ punctuation.definition.placeholder.begin
#    ^ punctuation.separator.format-spec
#      ^ punctuation.definition.placeholder.end
#       ^^ constant.character.escape.python
'{foo:w}}}'         # invalid format code
#^^^^^^^ constant.other.placeholder
#^ punctuation.definition.placeholder.begin
#    ^ punctuation.separator.format-spec
#      ^ punctuation.definition.placeholder.end
#       ^^ constant.character.escape.python
'{foo:{{w}}.{{p}}}' # invalid format specifier
#^^^^^^^^^^^^^^^^^ - constant.other.placeholder
#     ^^ constant.character.escape
#        ^^ constant.character.escape
#           ^^ constant.character.escape
#              ^^ constant.character.escape
'{foo!a:random}'    # invalid format specifier
#^^^^^^^^^^^^^^ constant.other.placeholder
'{foo!a:ran{d}om}'  # nested specification
#^^^^^^^^^^^^^^^^ constant.other.placeholder

f"string"
# <- storage.type.string
#^^^^^^^^ string.quoted.double

 RF"""string"""
#^^ storage.type.string - string
#  ^^^^^^^^^^^^ meta.string string.quoted.double.block

F'''string'''
# <- storage.type.string
#^^^^^^^^^^^^ meta.string string.quoted.single.block
#^ meta.string.python string.quoted.single.block.python punctuation.definition.string.begin.python
#         ^ meta.string.python string.quoted.single.block.python punctuation.definition.string.end.python

    f"{size:.2f}"
#    ^ meta.string.python - meta.interpolation
#     ^^^^^^ meta.string.python meta.interpolation.python - meta.format-spec
#           ^^^ meta.string.python meta.interpolation.python meta.format-spec.python - meta.format-spec meta.format-spec
#              ^ meta.string.python meta.interpolation.python - meta.format-spec
#               ^ meta.string.python string.quoted.double.python - meta.interpolation
#    ^ punctuation.definition.string.begin.python
#     ^ punctuation.section.interpolation.begin.python
#      ^^^^ meta.path.python meta.generic-name.python
#          ^ punctuation.separator.format-spec.python
#           ^^^ constant.other.format-spec.python
#              ^ punctuation.section.interpolation.end.python
#               ^ punctuation.definition.string.end.python

 rf'string'
#^^ storage.type.string - string
#  ^^^^^^^^ meta.string string.quoted.single

rf'\r\n' f'\r\n' Rf'\r\n'
#  ^^^^ source.regexp constant.character.escape.regexp
#          ^^^^ constant.character.escape.python
#                   ^^^^ - constant

rf"\r\n" f"\r\n" Rf'\r\n'
#  ^^^^ source.regexp constant.character.escape.regexp
#          ^^^^ constant.character.escape.python
#                   ^^^^ - constant

expr = fr"^\s*({label}|{notlabel})"
#         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python
#         ^ meta.string.python string.quoted.double.python source.regexp.python keyword.control.anchor.regexp
#             ^ source.regexp.python meta.group.regexp punctuation.section.group.begin.regexp
#              ^^^^^^^ source.python meta.string.python meta.interpolation.python
#               ^^^^^ meta.path.python meta.generic-name.python
#                                ^ source.regexp.python meta.group.regexp punctuation.section.group.end.regexp

line = re.sub(rf" ?\{{\\i.?\}}({x})\{{\\i.?\}}", r"\1", line)
#                  ^ constant.character.escape.regexp - constant.character.escape.python
#                   ^^ constant.character.escape.regexp constant.character.escape.python
#                     ^^ constant.character.escape.regexp
#                          ^ constant.character.escape.regexp - constant.character.escape.python
#                           ^^ constant.character.escape.regexp constant.character.escape.python
#                              ^ punctuation.section.interpolation.begin.python
#                                  ^ constant.character.escape.regexp - constant.character.escape.python
#                                   ^^ constant.character.escape.regexp constant.character.escape.python
#                                     ^^ constant.character.escape.regexp
#                                          ^ constant.character.escape.regexp - constant.character.escape.python
#                                           ^^ constant.character.escape.regexp constant.character.escape.python

match = re.match(r'(?P<test>a)?b(?(test)c|d)', line)
#                  ^^^^^^^^^^ meta.group.regexp
#                  ^ punctuation.section.group.begin
#                   ^^ keyword.other.backref-and-recursion
#                     ^ punctuation.definition.capture-group-name.begin
#                      ^^^^ entity.name.capture-group
#                          ^ punctuation.definition.capture-group-name.end
#                            ^ punctuation.section.group.end
#                             ^ keyword.operator.quantifier
#                               ^ punctuation.section.group.begin
#                                ^ keyword.other.backref-and-recursion.conditional
#                                 ^ punctuation.definition.group.begin.assertion.conditional
#                                  ^^^^ variable.other.back-reference
#                                      ^ punctuation.definition.group.end.assertion.conditional
#                                        ^ keyword.operator.alternation
#                                          ^ punctuation.section.group.end
match = re.match(r'(a)?b(?(1)c|d)', line)
#                  ^^^ meta.group.regexp
#                  ^ punctuation.section.group.begin
#                    ^ punctuation.section.group.end
#                     ^ keyword.operator.quantifier
#                       ^ punctuation.section.group.begin
#                        ^ keyword.other.backref-and-recursion.conditional
#                         ^ punctuation.definition.group.begin.assertion.conditional
#                          ^ variable.other.back-reference - punctuation - keyword
#                           ^ punctuation.definition.group.end.assertion.conditional
#                             ^ keyword.operator.alternation
#                               ^ punctuation.section.group.end
match = re.search(r'''(?P<quote>['"]).*?(?P=quote)''', line)
#                     ^^^^^^^^^^^^^^^ meta.group.regexp
#                     ^ punctuation.section.group.begin
#                      ^^ keyword.other.backref-and-recursion
#                        ^ punctuation.definition.capture-group-name.begin
#                         ^^^^^ entity.name.capture-group
#                              ^ punctuation.definition.capture-group-name.end
#                               ^^^^ meta.set
#                               ^ punctuation.definition.set.begin
#                                  ^ punctuation.definition.set.end
#                                   ^ punctuation.section.group.end
#                                    ^ keyword.other.any - meta.group
#                                     ^^ keyword.operator.quantifier
#                                        ^^^ keyword.other.back-reference.named
#                                           ^^^^^ variable.other.backref-and-recursion - keyword
match = re.search(r'''(?ix)some text(?-i)''', line)
#                     ^ punctuation.definition.modifier.begin
#                       ^^ storage.modifier.mode
#                         ^ punctuation.definition.modifier.end
#                                   ^ punctuation.definition.modifier.begin
#                                     ^^ storage.modifier.mode
#                                       ^ punctuation.definition.modifier.end
match = re.search(r'''(?ix:some text(?-i:hello))(?iLmsux)(?a)foo''', line)
#                                              ^ meta.function-call.arguments meta.string string.quoted.single.block source.regexp meta.group meta.mode.extended punctuation.section.group.end
#                                               ^ punctuation.definition.modifier.begin
#                                                 ^^^^^^ storage.modifier.mode
#                                                       ^ punctuation.definition.modifier.end
#                                                        ^^^^ meta.modifier
#                                                          ^ storage.modifier.mode

match = re.match(r"([^" + charset + r"]*)", line)
#                  ^ punctuation.section.group.begin.regexp
#                   ^ punctuation.definition.set.begin.regexp
#                                     ^ punctuation.definition.set.end.regexp
#                                       ^ punctuation.section.group.end.regexp

###############################
# f-strings
###############################

f"\{{{x}\}} test"
# ^ invalid.deprecated.character.escape.python
# ^^^ constant.character.escape.python
#    ^ punctuation.section.interpolation.begin.python

f"{something}"
# <- storage.type.string.python
#^ meta.string.python - meta.interpolation
# ^^^^^^^^^^^ meta.string.python meta.interpolation.python - string
#            ^ meta.string.python - meta.interpolation
#^ string.quoted.double.python punctuation.definition.string.begin.python
# ^ punctuation.section.interpolation.begin
#           ^ punctuation.section.interpolation.end
#            ^ string.quoted.double.python punctuation.definition.string.end.python
#             ^ - meta - string

f"{True!a:02f}"
#^ meta.string.python - meta.interpolation
# ^^^^^^^^^^^^ meta.string.python meta.interpolation.python - string
#             ^ meta.string.python - meta.interpolation
#^ string.quoted.double.python punctuation.definition.string.begin.python
#  ^^^^ constant.language.boolean.true.python
#      ^^ storage.modifier.conversion - constant.other.format-spec
#         ^^^ constant.other.format-spec
#            ^ punctuation.section.interpolation.end
#             ^ string.quoted.double.python punctuation.definition.string.end.python
#              ^ - meta - string

f"result: {value:{width}.{precision}}\n"
#^^^^^^^^^ meta.string.python - meta.interpolation
#         ^^^^^^^ meta.string.python meta.interpolation.python - meta.format-spec - meta.interpolation meta.interpolation
#                ^^^^^^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python
#                       ^ meta.string.python meta.interpolation.python meta.format-spec.python constant.other.format-spec.python
#                        ^^^^^^^^^^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python
#                                   ^ meta.string.python meta.interpolation.python - meta.format-spec - meta.interpolation meta.interpolation
#                                    ^^^ meta.string.python - meta.interpolation
#^^^^^^^^^ string.quoted.double.python
#^ punctuation.definition.string.begin.python
#         ^ punctuation.section.interpolation.begin.python
#          ^^^^^ meta.path.python meta.generic-name.python
#               ^ punctuation.separator.format-spec.python
#                ^ punctuation.section.interpolation.begin.python
#                 ^^^^^ meta.path.python meta.generic-name.python
#                      ^ punctuation.section.interpolation.end.python
#                       ^ constant.other.format-spec.python
#                        ^ punctuation.section.interpolation.begin.python
#                         ^^^^^^^^^ meta.path.python meta.generic-name.python
#                                  ^ punctuation.section.interpolation.end.python
#                                   ^ punctuation.section.interpolation.end.python
#                                    ^^^ string.quoted.double.python
#                                    ^^ constant.character.escape.python
#                                      ^ punctuation.definition.string.end.python

rf"{value:{width!s:d}}"
# <- storage.type.string.python
#^ storage.type.string.python
# ^ meta.string.python - meta.interpolation
#  ^^^^^^^ meta.string.python meta.interpolation.python - meta.format-spec
#         ^^^^^^^^^^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python
#                    ^ meta.string.python meta.interpolation.python - meta.format-spec
# ^ string.quoted.double.python punctuation.definition.string.begin.python
#  ^ punctuation.section.interpolation.begin.python
#   ^^^^^ meta.path.python meta.generic-name.python
#        ^ punctuation.separator.format-spec.python
#         ^ punctuation.section.interpolation.begin.python
#          ^^^^^ meta.path.python meta.generic-name.python
#               ^^ storage.modifier.conversion.python
#                 ^ punctuation.separator.format-spec.python
#                  ^ meta.format-spec.python constant.other.format-spec.python
#                   ^ punctuation.section.interpolation.end.python
#                    ^ punctuation.section.interpolation.end.python
#                     ^ string.quoted.double.python punctuation.definition.string.end.python

fr"{var}? {var}* {var}{2,3} [{foo}-{bar}]+"
# ^ meta.string.python string.quoted
#  ^^^^^ meta.string.python meta.interpolation.python - string
#       ^^ meta.string.python string.quoted
#         ^^^^^ meta.string.python meta.interpolation.python - string
#              ^^ meta.string.python string.quoted
#                ^^^^^ meta.string.python meta.interpolation.python - string
#                     ^^^^^^^ meta.string.python string.quoted
#                            ^^^^^ meta.string.python meta.interpolation.python - string
#                                 ^ meta.string.python string.quoted
#                                  ^^^^^ meta.string.python meta.interpolation.python - string
#                                       ^^ meta.string.python string.quoted
#       ^ keyword.operator.quantifier.regexp
#              ^ keyword.operator.quantifier.regexp
#                     ^^^^^ keyword.operator.quantifier.regexp
#                                        ^ keyword.operator.quantifier.regexp

fr'{var}? {var}* {var}{2,3} [{foo}-{bar}]+'
# ^ meta.string.python string.quoted
#  ^^^^^ meta.string.python meta.interpolation.python - string
#       ^^ meta.string.python string.quoted
#         ^^^^^ meta.string.python meta.interpolation.python - string
#              ^^ meta.string.python string.quoted
#                ^^^^^ meta.string.python meta.interpolation.python - string
#                     ^^^^^^^ meta.string.python string.quoted
#                            ^^^^^ meta.string.python meta.interpolation.python - string
#                                 ^ meta.string.python string.quoted
#                                  ^^^^^ meta.string.python meta.interpolation.python - string
#                                       ^^ meta.string.python string.quoted
#       ^ keyword.operator.quantifier.regexp
#              ^ keyword.operator.quantifier.regexp
#                     ^^^^^ keyword.operator.quantifier.regexp
#                                        ^ keyword.operator.quantifier.regexp

# Most of these were inspired by
# https://github.com/python/cpython/commit/9a4135e939bc223f592045a38e0f927ba170da32
f'{x=:}'
#   ^ storage.modifier.debug.python
f'{x=:.2f}'
#   ^ storage.modifier.debug.python
f'{x=!r}'
#   ^ storage.modifier.debug.python
f'{x=!a}'
#   ^ storage.modifier.debug.python
f'{x=!s:*^20}'
# ^^^^^^^^^^^ meta.string.python meta.interpolation.python
#   ^ storage.modifier.debug.python
#    ^^ storage.modifier.conversion.python
#      ^ punctuation.separator.format-spec.python - constant.other.format-spec
#       ^^^^ constant.other.format-spec.python
f'{"Σ"=}'
#     ^ storage.modifier.debug.python
f'{"Σ"= }'
# ^^^^^^^ meta.string.python meta.interpolation.python
#     ^ storage.modifier.debug.python
f'{"Σ" =}'
# ^^^^^^^ meta.string.python meta.interpolation.python
#      ^ storage.modifier.debug.python
f'{"Σ" = }'
# ^^^^^^^^ meta.string.python meta.interpolation.python
#      ^ storage.modifier.debug.python
f'{"Σ" = !s}'
# ^^^^^^^^^^ meta.string.python meta.interpolation.python
#      ^ storage.modifier.debug.python
#        ^^ storage.modifier.conversion.python
f'{0==1}'
#   ^^ -storage.modifier.debug.python
f'{0!=1}'
#    ^ -storage.modifier.debug.python
f'{0<=1}'
#    ^ -storage.modifier.debug.python
f'{0>=1}'
#    ^ -storage.modifier.debug.python
f'{f(a="3=")}'
#     ^^^^ -storage.modifier.debug.python

f"{d for d in range(10)}"  # yes, this doesn't make sense
#    ^^^ keyword.control.loop.for.generator.python

# Nested f-strings

f"These are the things: {", ".join(things)}"
#^^^^^^^^^^^^^^^^^^^^^^^ meta.string.python string.quoted.double.python - string string
#                       ^ meta.string.python meta.interpolation.python - string
#                        ^^^^ meta.string.python meta.interpolation.python meta.string.python string.quoted.double.python
#                            ^^^^^^^^^^^^^^ meta.string.python meta.interpolation.python - string
#                                          ^ meta.string.python string.quoted.double.python - string string

f"{source.removesuffix(".py")}.c: $(srcdir)/{source}"
#^ meta.string.python string.quoted.double.python
# ^^^^^^^^^^^^^^^^^^^^^ meta.string.python meta.interpolation.python - string
#                      ^^^^^ meta.string.python meta.interpolation.python meta.string.python string.quoted.double.python
#                           ^^ meta.string.python meta.interpolation.python - string
#                             ^^^^^^^^^^^^^^ meta.string.python string.quoted.double.python - meta.interpolation
#                                           ^^^^^^^^ meta.string.python meta.interpolation.python - string
#                                                   ^ meta.string.python string.quoted.double.python

f"{f"{f"infinite"}":{f"{foo}"}.{"bar"}}"
#^ meta.string.python - meta.interpolation
# ^^ meta.string.python meta.interpolation.python - meta.string meta.string - meta.interpolation meta.interpolation
#   ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#    ^^^^^^^^^^^^^ meta.string.python meta.interpolation.python meta.string.python meta.interpolation.python
#                 ^ meta.string.python meta.interpolation.python meta.string.python - meta.interpolation meta.interpolation
#                  ^ meta.string.python meta.interpolation.python - meta.string meta.string - meta.interpolation meta.interpolation
#                   ^^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python
#                      ^^^^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python meta.string.python meta.interpolation.python
#                           ^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python
#                             ^ meta.string.python meta.interpolation.python meta.format-spec.python - meta.string meta.string - meta.interpolation meta.interpolation
#                              ^^^^^^^ meta.string.python meta.interpolation.python meta.format-spec.python meta.interpolation.python
#                                     ^ meta.string.python meta.interpolation.python punctuation.section.interpolation.end.python
#^ string.quoted.double.python punctuation.definition.string.begin.python
# ^ punctuation.section.interpolation.begin.python
#  ^ storage.type.string.python
#   ^ string.quoted.double.python punctuation.definition.string.begin.python
#    ^ punctuation.section.interpolation.begin.python
#     ^ storage.type.string.python
#      ^^^^^^^^^^ string.quoted.double.python
#      ^ punctuation.definition.string.begin.python
#               ^ punctuation.definition.string.end.python
#                ^ punctuation.section.interpolation.end.python
#                 ^ string.quoted.double.python punctuation.definition.string.end.python
#                  ^ punctuation.separator.format-spec.python
#                   ^ punctuation.section.interpolation.begin.python
#                    ^ storage.type.string.python
#                     ^ string.quoted.double.python punctuation.definition.string.begin.python
#                      ^ punctuation.section.interpolation.begin.python
#                       ^^^ meta.path.python meta.generic-name.python
#                          ^ punctuation.section.interpolation.end.python
#                           ^ string.quoted.double.python punctuation.definition.string.end.python
#                            ^ punctuation.section.interpolation.end.python
#                             ^ constant.other.format-spec.python
#                              ^ punctuation.section.interpolation.begin.python
#                               ^^^^^ string.quoted.double.python
#                               ^ punctuation.definition.string.begin.python
#                                   ^ punctuation.definition.string.end.python
#                                    ^ punctuation.section.interpolation.end.python
#                                     ^ punctuation.section.interpolation.end.python
#                                      ^ string.quoted.double.python punctuation.definition.string.end.python

# Incomplete strings or premature bailouts

f"
#^^ meta.string.python string.quoted.double.python
# ^ invalid.illegal.unclosed-string

# <- - meta.string - string
# this test is to ensure we're not matching anything here anymore

f'
#^^ meta.string.python string.quoted.single.python
# ^ invalid.illegal.unclosed-string

# <- - meta.string - string
# this test is to ensure we're not matching anything here anymore

f" \

# <- meta.string.python string.quoted.double.python invalid.illegal.unclosed-string.python

# <- - meta.string - string
# this test is to ensure we're not matching anything here anymore

f' \

# <- meta.string.python string.quoted.single.python invalid.illegal.unclosed-string.python

# <- - meta.string - string
# this test is to ensure we're not matching anything here anymore

f"   \
 {1 + 2!a:02f}"
# <- meta.string.python string.quoted.double.python
#^^^^^^^^^^^^^ meta.string.python meta.interpolation.python - string.quoted
#^ punctuation.section.interpolation.begin.python
# ^ meta.number.integer.decimal.python constant.numeric.value.python
#   ^ keyword.operator.arithmetic.python
#     ^ meta.number.integer.decimal.python constant.numeric.value.python
#      ^^ storage.modifier.conversion.python
#        ^ punctuation.separator.format-spec.python
#         ^^^ meta.format-spec.python constant.other.format-spec.python
#            ^ punctuation.section.interpolation.end.python
#             ^ meta.string.python string.quoted.double.python punctuation.definition.string.end.python

f'   \
 {1 + 2!a:02f}'
# <- meta.string.python string.quoted.single.python
#^^^^^^^^^^^^^ meta.string.python meta.interpolation.python - string.quoted
# ^ meta.number.integer.decimal.python constant.numeric.value.python
#   ^ keyword.operator.arithmetic.python
#     ^ meta.number.integer.decimal.python constant.numeric.value.python
#      ^^ storage.modifier.conversion.python
#        ^ punctuation.separator.format-spec.python
#         ^^^ meta.format-spec.python constant.other.format-spec.python
#            ^ punctuation.section.interpolation.end.python
#             ^ meta.string.python string.quoted.single.python punctuation.definition.string.end.python

f" {
#^^^^ meta.string.python
#  ^ punctuation.section.interpolation.begin.python
#   ^ invalid.illegal.unclosed-string.python
    }"
# ^^^ - meta.string
#   ^ invalid.illegal.stray.python
#    ^ punctuation.definition.string.begin.python
#     ^ invalid.illegal.unclosed-string.python

f' {
#^^^^ meta.string.python
#  ^ punctuation.section.interpolation.begin.python
#   ^ invalid.illegal.unclosed-string.python
    }'
# ^^^ - meta.string
#   ^ invalid.illegal.stray.python
#    ^ punctuation.definition.string.begin.python
#     ^ invalid.illegal.unclosed-string.python

f" { \
#^^^^^^ meta.string.python
#  ^ punctuation.section.interpolation.begin.python
#    ^ invalid.illegal.backslash-in-fstring.python
#     ^ invalid.illegal.unclosed-string.python
    }"
# ^^^ - meta.string
#   ^ invalid.illegal.stray.python
#    ^ punctuation.definition.string.begin.python
#     ^ invalid.illegal.unclosed-string.python

f' { \
#^^^^ meta.string.python
#  ^ punctuation.section.interpolation.begin.python
#    ^ invalid.illegal.backslash-in-fstring.python
#     ^ invalid.illegal.unclosed-string.python
    }'
# ^^^ - meta.string
#   ^ invalid.illegal.stray.python
#    ^ punctuation.definition.string.begin.python
#     ^ invalid.illegal.unclosed-string.python

f" {
:2d
# <- - meta.string - meta.interpolation
#^^ - meta.string - meta.interpolation

f' {
:2d
# <- - meta.string - meta.interpolation
#^^ - meta.string - meta.interpolation

f" {
!a:2d
# <- - meta.string - meta.interpolation
#^^^^ - meta.string - meta.interpolation

f' {
!a:2d
# <- - meta.string - meta.interpolation
#^^^^ - meta.string - meta.interpolation

f" {} {\} }"
#^^^^^^^^^^^ meta.string.python
#  ^^ invalid.illegal.empty-expression.python
#     ^ punctuation.section.interpolation.begin.python
#      ^ invalid.illegal.backslash-in-fstring.python
#       ^ punctuation.section.interpolation.end.python
#         ^ invalid.illegal.stray.python

f' {} {\} }'
#^^^^^^^^^^^ meta.string.python
#  ^^ invalid.illegal.empty-expression.python
#     ^ punctuation.section.interpolation.begin.python
#      ^ invalid.illegal.backslash-in-fstring.python
#       ^ punctuation.section.interpolation.end.python
#         ^ invalid.illegal.stray.python

f"{foo:"}    # nested quotes terminate formatspec
#^^^^^^^ meta.string.python
#       ^ invalid.illegal.stray.python - meta.string
f'{foo:'}    # nested quotes terminate formatspec
#^^^^^^^ meta.string.python
#       ^ invalid.illegal.stray.python - meta.string

f"{"foo":"}  # nested quotes supported by python 3.12+
#^^^^^^^^^ meta.string.python
#         ^ invalid.illegal.stray.python - meta.string
f'{'foo':'}  # nested quotes supported by python 3.12+
#^^^^^^^^^ meta.string.python
#         ^ invalid.illegal.stray.python - meta.string


###############################
# f-block-strings
###############################

f""""""
# <- storage.type.string.python
#^^^^^^ meta.string.python string.quoted.double.block.python
#^^^ punctuation.definition.string.begin.python
#   ^^^ punctuation.definition.string.end.python

f''''''
# <- storage.type.string.python
#^^^^^^ meta.string.python string.quoted.single.block.python
#^^^ punctuation.definition.string.begin.python
#   ^^^ punctuation.definition.string.end.python

f"""
# <- storage.type.string.python
#^^^^ meta.string.python string.quoted.double.block.python
#^^^ punctuation.definition.string.begin.python
#   ^ - punctuation - invalid
"""
# <- meta.string.python string.quoted.double.block.python punctuation.definition.string.end.python
#^^ meta.string.python string.quoted.double.block.python punctuation.definition.string.end.python
#  ^ - meta.string - string - punctuation

f'''
# <- storage.type.string.python
#^^^^ meta.string.python string.quoted.single.block.python
#^^^ punctuation.definition.string.begin.python
#   ^ - punctuation - invalid
'''
# <- meta.string.python string.quoted.single.block.python punctuation.definition.string.end.python
#^^ meta.string.python string.quoted.single.block.python punctuation.definition.string.end.python
#  ^ - meta.string - string - punctuation

f""" {} {\} }
#^^^^^^^^^^^^^ meta.string.python
#    ^^ invalid.illegal.empty-expression.python
#       ^ punctuation.section.interpolation.begin.python
#        ^ invalid.illegal.backslash-in-fstring.python
#         ^ punctuation.section.interpolation.end.python
#           ^ invalid.illegal.stray.python
"""

f''' {} {\} }
#^^^^^^^^^^^^^ meta.string.python
#    ^^ invalid.illegal.empty-expression.python
#       ^ punctuation.section.interpolation.begin.python
#        ^ invalid.illegal.backslash-in-fstring.python
#         ^ punctuation.section.interpolation.end.python
#           ^ invalid.illegal.stray.python
'''

fr"""
# <- storage.type.string.python
#^ storage.type.string.python
# ^^^^ meta.string.python string.quoted.double.block.python
# ^^^ punctuation.definition.string.begin.python
#    ^ - punctuation - invalid
#     ^ meta.mode.extended.regexp

    {var}? {var}* {var}{2,3} [{foo}-{bar}]+
# <- meta.mode.extended.regexp
# ^^ meta.string.python string.quoted
#   ^^^^^ meta.string.python meta.interpolation.python - string
#        ^^ meta.string.python string.quoted
#          ^^^^^ meta.string.python meta.interpolation.python - string
#               ^^ meta.string.python string.quoted
#                 ^^^^^ meta.string.python meta.interpolation.python - string
#                      ^^^^^^^ meta.string.python string.quoted
#                             ^^^^^ meta.string.python meta.interpolation.python - string
#                                  ^ meta.string.python string.quoted
#                                   ^^^^^ meta.string.python meta.interpolation.python - string
#                                        ^^ meta.string.python string.quoted
#        ^ keyword.operator.quantifier.regexp
#               ^ keyword.operator.quantifier.regexp
#                      ^^^^^ keyword.operator.quantifier.regexp
#                                         ^ keyword.operator.quantifier.regexp
"""
# <- meta.string.python string.quoted.double.block.python punctuation.definition.string.end.python
#^^ meta.string.python string.quoted.double.block.python punctuation.definition.string.end.python
#  ^ - meta.string - string - punctuation

fr'''
# <- storage.type.string.python
#^ storage.type.string.python
# ^^^^ meta.string.python string.quoted.single.block.python
# ^^^ punctuation.definition.string.begin.python
#    ^ - punctuation - invalid
#     ^ meta.mode.extended.regexp

    {var}? {var}* {var}{2,3} [{foo}-{bar}]+
# <- meta.mode.extended.regexp
# ^^ meta.string.python string.quoted
#   ^^^^^ meta.string.python meta.interpolation.python - string
#        ^^ meta.string.python string.quoted
#          ^^^^^ meta.string.python meta.interpolation.python - string
#               ^^ meta.string.python string.quoted
#                 ^^^^^ meta.string.python meta.interpolation.python - string
#                      ^^^^^^^ meta.string.python string.quoted
#                             ^^^^^ meta.string.python meta.interpolation.python - string
#                                  ^ meta.string.python string.quoted
#                                   ^^^^^ meta.string.python meta.interpolation.python - string
#                                        ^^ meta.string.python string.quoted
#        ^ keyword.operator.quantifier.regexp
#               ^ keyword.operator.quantifier.regexp
#                      ^^^^^ keyword.operator.quantifier.regexp
#                                         ^ keyword.operator.quantifier.regexp
'''
# <- meta.string.python string.quoted.single.block.python punctuation.definition.string.end.python
#^^ meta.string.python string.quoted.single.block.python punctuation.definition.string.end.python
#  ^ - meta.string - string - punctuation

fr""" {} {\} }
# <- storage.type.string.python
#^ storage.type.string.python
# ^^^^^^^^^^^^^ meta.string.python
#     ^^ invalid.illegal.empty-expression.python
#        ^ punctuation.section.interpolation.begin.python
#         ^ invalid.illegal.backslash-in-fstring.python
#          ^ punctuation.section.interpolation.end.python
#            ^ invalid.illegal.stray.python
"""

fr''' {} {\} }
# <- storage.type.string.python
#^ storage.type.string.python
# ^^^^^^^^^^^^^ meta.string.python
#     ^^ invalid.illegal.empty-expression.python
#        ^ punctuation.section.interpolation.begin.python
#         ^ invalid.illegal.backslash-in-fstring.python
#          ^ punctuation.section.interpolation.end.python
#            ^ invalid.illegal.stray.python
'''

f"""{
#   ^^ meta.string.python meta.interpolation.python - invalid
    foo
#   ^^^ meta.string.python meta.interpolation.python meta.path.python meta.generic-name.python
    !a:2d
#   ^^^^^^ meta.string.python meta.interpolation.python
#   ^^ storage.modifier.conversion.python
#     ^ punctuation.separator.format-spec.python
#      ^^^ meta.format-spec.python constant.other.format-spec.python
}"""
# <- meta.string.python meta.interpolation.python punctuation.section.interpolation.end.python
#^^^ meta.string.python string.quoted.double.block.python punctuation.definition.string.end.python

f'''{
#   ^^ meta.string.python meta.interpolation.python - invalid
    foo
#   ^^^ meta.string.python meta.interpolation.python meta.path.python meta.generic-name.python
    !a:2d
#   ^^^^^^ meta.string.python meta.interpolation.python
#   ^^ storage.modifier.conversion.python
#     ^ punctuation.separator.format-spec.python
#      ^^^ meta.format-spec.python constant.other.format-spec.python
}'''
# <- meta.string.python meta.interpolation.python punctuation.section.interpolation.end.python
#^^^ meta.string.python string.quoted.single.block.python punctuation.definition.string.end.python
