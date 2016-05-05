:: SYNTAX TEST "Packages/Batch File/Batch File.sublime-syntax"

   REM I'm a (com|ment)
:: ^^^                  keyword.command.rem.dosbatch
::     ^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch
::           ^          invalid.illegal.unexpected-character.dosbatch
::               ^      invalid.illegal.unexpected-character.dosbatch
::                    ^ invalid.illegal.unexpected-character.dosbatch

   :: Me too!
:: ^^         punctuation.definition.comment.dosbatch
:: ^^^^^^^^^^ comment.line.colon.dosbatch

   :+ Me too!
:: ^^         punctuation.definition.comment.dosbatch

   := Me too!
:: ^^         punctuation.definition.comment.dosbatch

   :, Me too!
:: ^^         punctuation.definition.comment.dosbatch

   :; Me too!
:: ^^         punctuation.definition.comment.dosbatch

   ECHO "foo"
::      ^       punctuation.definition.string.begin.dosbatch
::      ^^^^^   string.quoted.double.dosbatch
::          ^   punctuation.definition.string.end.dosbatch

   @ECHO OFF
:: ^ keyword.operator.at.dosbatch

   @
:: ^ - keyword.operator.at.dosbatch

   GOTO:EOF
:: ^^^^ keyword.control.statement.dosbatch

:: Redirection
   ECHO Hello World! > hello.txt
:: ^^^^                keyword.command.dosbatch
::                   ^ keyword.operator.redirection.dosbatch

   ECHO >> NUL
::      ^^     keyword.operator.redirection.dosbatch

   dir > f.txt 2>&1
::     ^ keyword.operator.redirection.dosbatch
::              ^^ keyword.operator.redirection.dosbatch

   ECHO || ECHO && ECHO &
::      ^^ keyword.operator.conditional.dosbatch
::              ^^ keyword.operator.conditional.dosbatch
::                      ^ keyword.operator.conditional.dosbatch

:: Conditionals
   IF foo EQU bar
:: ^^         keyword.control.conditional.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch

   FOR %%G IN (a,b) DO (md %%G)
:: ^^^                 keyword.control.repeat.dosbatch

   FIND "a" |
::          ^ keyword.operator.pipe.dosbatch

   ECHO %1 %* %~dpf$PATH:5 %~1
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.dosbatch
::         ^ punctuation.definition.variable.dosbatch
::         ^^ variable.parameter.dosbatch
::            ^ punctuation.definition.variable.dosbatch
::            ^^^^^^^^^^^ variable.parameter.dosbatch
::                         ^ punctuation.definition.variable.dosbatch
::                         ^^^ variable.parameter.dosbatch

   ECHO %variable% !variable!
::      ^ punctuation.definition.variable.begin.dosbatch
::      ^^^^^^^^^^ variable.other.readwrite.dosbatch
::               ^ punctuation.definition.variable.end.dosbatch
::                 ^ punctuation.definition.variable.begin.dosbatch
::                 ^^^^^^^^^^ variable.other.readwrite.dosbatch
::                          ^ punctuation.definition.variable.end.dosbatch

ECHO %sub:str1=str2% !sub:str1=str2!
::   ^^^^^^^^^^^^^^^ variable.other.readwrite.dosbatch
::   ^ punctuation.definition.variable.begin.dosbatch
::       ^ punctuation.separator.dosbatch
::        ^^^^^^^^^ meta.variable.substitution.dosbatch
::        ^^^^ string.unquoted.dosbatch
::            ^ punctuation.separator.dosbatch
::             ^^^^ string.unquoted.dosbatch
::                 ^ punctuation.definition.variable.end.dosbatch
::                   ^^^^^^^^^^^^^^^ variable.other.readwrite.dosbatch
::                   ^ punctuation.definition.variable.begin.dosbatch
::                       ^ punctuation.separator.dosbatch
::                        ^^^^^^^^^ meta.variable.substitution.dosbatch
::                        ^^^^ string.unquoted.dosbatch
::                            ^ punctuation.separator.dosbatch
::                             ^^^^ string.unquoted.dosbatch
::                                 ^ punctuation.definition.variable.end.dosbatch


ECHO %substr:~0,-2% !substr:~0,-2!
::   ^^^^^^^^^^^^^^ variable.other.readwrite.dosbatch
::   ^ punctuation.definition.variable.begin.dosbatch
::          ^^ punctuation.separator.dosbatch
::            ^^^^ meta.variable.substring.dosbatch
::            ^ constant.numeric.dosbatch
::             ^ punctuation.separator.dosbatch
::              ^^ constant.numeric.dosbatch
::                ^ punctuation.definition.variable.end.dosbatch
::                  ^^^^^^^^^^^^^^ variable.other.readwrite.dosbatch
::                  ^ punctuation.definition.variable.begin.dosbatch
::                         ^^ punctuation.separator.dosbatch
::                           ^^^^ meta.variable.substring.dosbatch
::                           ^ constant.numeric.dosbatch
::                            ^ punctuation.separator.dosbatch
::                             ^^ constant.numeric.dosbatch
::                               ^ punctuation.definition.variable.end.dosbatch

ECHO %b:~-5% !b:~+5!
::   ^^^^^^^ variable.other.readwrite.dosbatch
::   ^ punctuation.definition.variable.begin.dosbatch
::     ^^ punctuation.separator.dosbatch
::       ^^ meta.variable.substring.dosbatch
::       ^^ constant.numeric.dosbatch
::         ^ punctuation.definition.variable.end.dosbatch
::           ^^^^^^^ variable.other.readwrite.dosbatch
::           ^ punctuation.definition.variable.begin.dosbatch
::             ^^ punctuation.separator.dosbatch
::               ^^ meta.variable.substring.dosbatch
::               ^^ constant.numeric.dosbatch
::                 ^ punctuation.definition.variable.end.dosbatch

ECHO !t:%foo%=%bar:~0,-4%!
::   ^^^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.dosbatch
::   ^ punctuation.definition.variable.begin.dosbatch
::      ^^^^^ meta.variable.substitution.dosbatch variable.other.readwrite.dosbatch
::      ^ meta.variable.substitution.dosbatch punctuation.definition.variable.begin.dosbatch
::          ^ meta.variable.substitution.dosbatch punctuation.definition.variable.end.dosbatch
::            ^ meta.variable.substitution.dosbatch punctuation.definition.variable.begin.dosbatch
::            ^^^^^^^^^^^ meta.variable.substitution.dosbatch variable.other.readwrite.dosbatch
::                  ^^^^ meta.variable.substitution.dosbatch meta.variable.substring.dosbatch
::                      ^ meta.variable.substitution.dosbatch punctuation.definition.variable.end.dosbatch
::                    ^^ meta.variable.substitution.dosbatch constant.numeric.dosbatch
::                       ^ punctuation.definition.variable.end.dosbatch

ECHO %t:foo=!bar:~0,-4!%
::   ^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.dosbatch
::   ^ punctuation.definition.variable.begin.dosbatch
::          ^ meta.variable.substitution.dosbatch punctuation.definition.variable.begin.dosbatch
::          ^^^^^^^^^^^ meta.variable.substitution.dosbatch variable.other.readwrite.dosbatch
::                ^^^^ meta.variable.substitution.dosbatch meta.variable.substring.dosbatch
::                    ^ meta.variable.substitution.dosbatch punctuation.definition.variable.end.dosbatch
::                  ^^ meta.variable.substitution.dosbatch constant.numeric.dosbatch
::                     ^ punctuation.definition.variable.end.dosbatch

ECHO Not% a variable
::      ^^^^^^^^^^^^ - variable.other.readwrite.dosbatch

ECHO Not! a variable
::      ^^^^^^^^^^^^ - variable.other.readwrite.dosbatch

:: Numerics
SET /A r = 010 + 0x20 - 24
::         ^^^ constant.numeric.dosbatch
::               ^^^^ constant.numeric.dosbatch
::                      ^^ constant.numeric.dosbatch

:: Escape Characters
ECHO %% ^^! ^&
::   ^^ constant.character.escape.dosbatch
::      ^^^ constant.character.escape.dosbatch
::          ^^ constant.character.escape.dosbatch
