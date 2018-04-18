# SYNTAX TEST "Packages/Python/Python.sublime-syntax"

###############################
# Strings and embedded syntaxes
###############################

var = "\x00 \xaa \xAF \070 \r \n \t \\ \a \b \' \v \f \u0aF1 \UFe0a182f \N{SPACE}"
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
#                                                     ^^^^^^ constant.character.escape.unicode
#                                                            ^^^^^^^^^^ constant.character.escape.unicode
#                                                                       ^^^^^^^^^ constant.character.escape.unicode

invalid_escapes = "\.  \7 \-"
#                  ^^ invalid.deprecated.character.escape.python
#                      ^^ invalid.deprecated.character.escape.python
#                         ^^ invalid.deprecated.character.escape.python

conn.execute("SELECT * FROM foobar")
#              ^ meta.string.python keyword.other.DML.sql

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
#              ^ meta.string.python keyword.other.DML.sql
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
#              ^ meta.string.python - keyword.other.DML.sql

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
#         ^ meta.string.python keyword.control.anchor.regexp
#                       ^ keyword.operator.quantifier.regexp

regex = r'.* # Not a comment (yet)'
#            ^^^^^^^^^^^^^^^^^^^^^ - comment
#                                 ^ punctuation.definition.string.end.python - comment
#                                  ^ - invalid

regex = r".* # Not a comment (yet)"
#            ^^^^^^^^^^^^^^^^^^^^^ - comment
#                                 ^ punctuation.definition.string.end.python - comment
#                                  ^ - invalid

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
"""

string = r"""
#         ^^^ meta.string.python string.quoted.double.block
"""

string = r"""
    # An indented comment.
#  ^ - comment
#   ^ comment.line.number-sign.regexp
### <<This comment>> @includes some &punctutation.
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
### <<This comment>> @includes some &punctutation.
# <- comment.line.number-sign.regexp
'''

string = r'''
    [set]
#   ^^^^^ constant.other.character-class.set.regexp
#   ^ punctuation.definition.character-class.begin.regexp
#       ^ punctuation.definition.character-class.end.regexp
    (group)
#   ^^^^^^^ meta.group.regexp
#   ^ punctuation.definition.group.begin.regexp
#         ^ punctuation.definition.group.end.regexp
    (?<!group)
#   ^^^^^^^^^^ meta.group.assertion.regexp
#   ^ punctuation.definition.group.begin.regexp
#    ^^^ constant.other.assertion.regexp
#            ^ punctuation.definition.group.end.regexp
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
br'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
Br'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
rb'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
rB'This is a \n (test|with), %s no unicode \uDEAD'
# <- storage.type.string
# ^ string.quoted.single punctuation.definition.string.begin
#            ^^ constant.character.escape.backslash.regexp
#                    ^ keyword.operator.or.regexp
#                            ^^ - constant
#                                          ^^ constant.character.escape.backslash.regexp
#                                            ^^^^ - constant
br'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant
Br'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant
rb'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
#                                              ^^^^ - constant
rB'''This is a \n (test|with), %s no unicode \uDEAD'''
# <- storage.type.string
# ^^^ meta.string.python string.quoted.single punctuation.definition.string.begin
#              ^^ constant.character.escape.backslash.regexp
#                      ^ keyword.operator.or.regexp
#                              ^^ - constant
#                                            ^^ constant.character.escape.backslash.regexp
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
#  ^^^ constant.other.format-spec.python
#      ^ - constant.other.placeholder.python
#       ^^^^^^ constant.other.placeholder.python
#          ^^ constant.other.format-spec.python
#             ^ - constant.other.placeholder.python
#              ^^^^^^ constant.other.placeholder.python
#                 ^^ constant.other.format-spec.python
'{0:%Y}-{0:%m
# ^^^^^^^^^^^ string.quoted.single.python
# ^^^^^ constant.other.placeholder.python
#  ^^^ constant.other.format-spec.python
#      ^^^^ - constant.other.placeholder.python
#            ^ invalid.illegal.unclosed-string.python
'{0:%Y}-{0:%
# ^^^^^^^^^^^ string.quoted.single.python
# ^^^^^ constant.other.placeholder.python
#  ^^^ constant.other.format-spec.python
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

sql = "SELECT `name` FROM `users` \
    WHERE `password` LIKE 'abc'"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double source.sql
#                              ^ punctuation.definition.string.end.python

sql = Ur"SELECT `name` FROM `users` \
    WHERE `password` LIKE 'abc'"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double source.sql
#                              ^ punctuation.definition.string.end.python

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
#         ^^^^^ constant.other.format-spec

"result: {value:{width}.{precision}}"
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.placeholder
#              ^^^^^^^^^^^^^^^^^^^^ meta.format-spec.python
#        ^ punctuation.definition.placeholder.begin
#               ^^^^^^^ constant.other.placeholder constant.other.placeholder
#               ^ punctuation.definition.placeholder.begin
#                       ^^^^^^^^^^^ constant.other.placeholder constant.other.placeholder
#                                 ^^ punctuation.definition.placeholder.end

a=["aaaa{", "bbbb{"]
#       ^ - constant.other.placeholder
#        ^ punctuation.definition.string.end.python

foo = "{text{" # Comment
#      ^^^^^^ - constant.other.placeholder
#            ^ punctuation.definition.string.end
bar = "}}" # Comment
#      ^^ constant.character.escape

f"string"
# <- storage.type.string
#^^^^^^^^ string.quoted.double

 RF"""string"""
#^^ storage.type.string - string
#  ^^^^^^^^^^^^ meta.string.interpolated string.quoted.double.block

F'''string'''
# <- storage.type.string
#^^^^^^^^^^^^ meta.string.interpolated string.quoted.single.block

 rf'string'
#^^ storage.type.string - string
#  ^^^^^^^^ meta.string.interpolated string.quoted.single

rf'\r\n' f'\r\n'
#  ^^^^ - constant
#          ^^^^ constant.character.escape

rf"\r\n" f"\r\n"
#  ^^^^ - constant
#          ^^^^ constant.character.escape

f"{something}"
#^^^^^^^^^^^^ meta.string.interpolated
# <- storage.type.string
#^ punctuation.definition.string.begin
# ^ punctuation.section.interpolation.begin
#           ^ punctuation.section.interpolation.end
#            ^ punctuation.definition.string.end
#  ^^^^^^^^^ source source.python.embedded
#              ^ source - meta, string, source source

f"{True!a:02f}"
#^^^^^^^^^^^^^^ meta.string.interpolated
# ^ - source source.python.embedded
#  ^^^^ source source.python.embedded constant.language
#      ^^^^^^^ - source source.python.embedded
#      ^^ storage.modifier.conversion - constant.other.format-spec
#        ^^^^ constant.other.format-spec
#            ^ punctuation.section.interpolation.end
#             ^ punctuation.definition.string.end
#              ^ source - meta, string, source source

f"result: {value:{width}.{precision}}\n"
#         ^ punctuation.section.interpolation.begin.python - source source
#          ^^^^^ source source.python.embedded
#               ^^ - source source
#                ^ punctuation.section.interpolation.begin.python
#                 ^^^^^ source source.python.embedded
#                      ^ punctuation.section.interpolation.end.python
#                       ^ - source source
#                        ^ punctuation.section.interpolation.begin.python
#                         ^^^^^^^^^ source source.python.embedded
#                                  ^^ punctuation.section.interpolation.end.python - source source
#                                    ^^ constant.character.escape
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.python
#               ^^^^^^^^^^^^^^^^^^^^ meta.format-spec.python
#          ^^^^^^ - meta.interpolation.python meta.interpolation.python
#                ^^^^^^^ meta.interpolation.python meta.interpolation.python
#                       ^ - meta.interpolation.python meta.interpolation.python
#                        ^^^^^^^^^^^ meta.interpolation.python meta.interpolation.python
#                                   ^^^ - meta.interpolation.python meta.interpolation.python
rf"{value:{width!s:d}}"
# <- storage.type.string.python - string
# ^^^^^^^^^^^^^^^^^^^^^ meta.string.interpolated
#          ^^^^^ source source.python.embedded
#               ^^ storage.modifier.conversion
#                 ^^ constant.other.format-spec

F""" {} {\} }
#^^^^^^^^^^^ meta.string.interpolated
#^^^ punctuation.definition.string.begin
#    ^^ invalid.illegal.empty-expression
#        ^ invalid.illegal.backslash-in-fstring
#           ^ invalid.illegal.stray-brace
"""

f" {
%   ^ invalid.illegal.unclosed-string
   # TODO make this test pass
    }"

f'   \
 {1 + 2!a:02f}'
#^^^^^^^^^^^^^^ meta.string.interpolated
# ^^^^^ source source.python.embedded

f"{d for d in range(10)}"  # yes, this doesn't make sense
#    ^^^ keyword.control.flow.for.generator.python

f'
# ^ invalid.illegal.unclosed-string


# <- - meta
# this test is to ensure we're not matching anything here anymore
