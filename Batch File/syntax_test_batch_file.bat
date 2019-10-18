:: SYNTAX TEST "Packages/Batch File/Batch File.sublime-syntax"

   REM I'm a (com|ment)
:: ^^^                  keyword.command.rem.dosbatch
::     ^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch
::           ^          invalid.illegal.unexpected-character.dosbatch
::               ^      invalid.illegal.unexpected-character.dosbatch
::                    ^ invalid.illegal.unexpected-character.dosbatch

REM
   not a comment
:: ^^^^^^^^^^^^^ - comment.line.rem.dosbatch

REM This follows a REM command
:: <- keyword.command - comment
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line

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

   : Me too!
:: ^^         punctuation.definition.comment.dosbatch

ECHO : Not a comment
::   ^^^^^^^^^^^^^^^ - comment

ECHO : Not a comment ^
  do not break out of an echo with an escaped newline
::   ^^^ - keyword.operator
::       ^^^^^ - keyword.command

ECHO &:: A comment
::   ^ keyword.operator.conditional.dosbatch
::    ^^ punctuation.definition.comment.dosbatch
::    ^^^^^^^^^^^^ comment.line.colon.dosbatch

  :: an indented comment
::^^ punctuation.definition.comment.dosbatch
::^^^^^^^^^^^^^^^^^^^^^^ comment.line.colon.dosbatch

   ECHO "foo"
::      ^       punctuation.definition.string.begin.dosbatch
::      ^^^^^   string.quoted.double.dosbatch
::          ^   punctuation.definition.string.end.dosbatch

ECHO "
::    ^ invalid.illegal.newline.dosbatch

   @ECHO OFF
:: ^ keyword.operator.at.dosbatch

   @
:: ^ - keyword.operator.at.dosbatch

   GOTO:EOF
:: ^^^^ keyword.control.statement.dosbatch
::     ^ punctuation.separator.dosbatch
::      ^^^ keyword.control.flow.return.dosbatch

   GOTO :End
:: ^^^^ keyword.control.statement.dosbatch
::      ^ punctuation.separator.dosbatch
::       ^^^ meta.function-call.dosbatch variable.function.dosbatch

   GOTO:End
:: ^^^^ keyword.control.statement.dosbatch
::     ^ punctuation.separator.dosbatch
::      ^^^ meta.function-call.dosbatch variable.function.dosbatch

:: Redirection
   ECHO Hello World! > hello.txt
:: ^^^^                keyword.command.dosbatch
::                   ^ keyword.operator.redirection.dosbatch

   ECHO >> NUL
::      ^^     keyword.operator.redirection.dosbatch
::         ^^^ constant.language

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

   IF NOT foo EQU bar
:: ^^             keyword.control.conditional.dosbatch
::    ^^^         keyword.operator.logical.dosbatch
::            ^^^ keyword.operator.comparison.dosbatch


   IF %ERRORLEVEL% NEQ 0 EXIT /B 1
:: ^^              keyword.control.conditional.dosbatch
::    ^^^^^^^^^^^^ variable.language.dosbatch
::    ^ punctuation.definition.variable.begin.dosbatch
::               ^ variable.language.dosbatch punctuation.definition.variable.end.dosbatch

   IF foo == bar
:: ^^         keyword.control.conditional.dosbatch
::        ^^  keyword.operator.comparison.dosbatch

   FOR %%G IN (0,9) DO (md %%G)
:: ^^^                 keyword.control.repeat.dosbatch
::             ^       constant.numeric.integer.decimal.dosbatch

   FIND "a" |
::          ^ keyword.operator.pipe.dosbatch

  :This is a #%@$虎 strange label
::^    punctuation.separator.dosbatch
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.label.dosbatch

  :End
::^    punctuation.separator.dosbatch
:: ^^^ entity.name.label.dosbatch

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
::   ^^^             - keyword.operator.logical.dosbatch

ECHO Not! a variable
::      ^^^^^^^^^^^^ - variable.other.readwrite.dosbatch
::   ^^^             - keyword.operator.logical.dosbatch

:: Numerics
SET /A r = 010 + 0x20 - 24
::         ^^^ constant.numeric.integer.octal.dosbatch
::         ^ punctuation.definition.numeric.octal.dosbatch
::               ^^^^ constant.numeric.integer.hexadecimal.dosbatch
::               ^^ punctuation.definition.numeric.hexadecimal.dosbatch
::                      ^^ constant.numeric.integer.decimal.dosbatch

:: Escape Characters
ECHO %% ^^! ^&
::   ^^ constant.character.escape.dosbatch
::      ^^^ constant.character.escape.dosbatch
::          ^^ constant.character.escape.dosbatch

:: command SET /A specific operators
   set /a "num%%=5"
::        ^^^^^^^^^ meta.expression.set.dosbatch
::            ^^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num&=3"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num*=5"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num+=5"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num-=5"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num/=5"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num<<=2"
::            ^^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num=!5"
::            ^ keyword.operator.assignment.dosbatch
::             ^ keyword.operator.logical.dosbatch

   set /a "num=(2+3)*5"
::             ^^^^^ meta.group.dosbatch
::             ^ punctuation.section.group.begin.dosbatch
::                 ^ punctuation.section.group.end.dosbatch
::            ^ keyword.operator.assignment.dosbatch
::               ^ keyword.operator.arithmetic.dosbatch
::                  ^ keyword.operator.arithmetic.dosbatch

   set /a "num=2,result=num*5"
::            ^ keyword.operator.assignment.dosbatch
::              ^ punctuation.separator.dosbatch
::                     ^ keyword.operator.assignment.dosbatch
::                         ^ keyword.operator.arithmetic.dosbatch

   set /a "num=2<<3"
::            ^ keyword.operator.assignment.dosbatch
::              ^^ keyword.operator.arithmetic.dosbatch

   set /a "num=2>>3"
::            ^ keyword.operator.assignment.dosbatch
::              ^^ keyword.operator.arithmetic.dosbatch

   set /a "num=5%%2"
::            ^ keyword.operator.assignment.dosbatch
::              ^^ keyword.operator.arithmetic.dosbatch

   set /a "num=5&3"
::            ^ keyword.operator.assignment.dosbatch
::              ^ keyword.operator.arithmetic.dosbatch

   set /a "num=5^3"
::            ^ keyword.operator.assignment.dosbatch
::              ^ keyword.operator.arithmetic.dosbatch

   set /a "num=5|3"
::            ^ keyword.operator.assignment.dosbatch
::              ^ keyword.operator.arithmetic.dosbatch

   set /a "num^=3"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num=num*5"
::            ^ keyword.operator.assignment.dosbatch
::                ^ keyword.operator.arithmetic.dosbatch

   set /a "num=num+5"
::            ^ keyword.operator.assignment.dosbatch
::                ^ keyword.operator.arithmetic.dosbatch

   set /a "num=num-5"
::            ^ keyword.operator.assignment.dosbatch
::                ^ keyword.operator.arithmetic.dosbatch

   set /a "num=num/5"
::            ^ keyword.operator.assignment.dosbatch
::                ^ keyword.operator.arithmetic.dosbatch

   set /a "num=~5"
::            ^ keyword.operator.assignment.dosbatch
::             ^ keyword.operator.arithmetic.dosbatch

   set /a "num>>=2"
::            ^^^ keyword.operator.assignment.augmented.dosbatch

   set /a "num|=3"
::            ^^ keyword.operator.assignment.augmented.dosbatch

   set /a century=year/100, next=century+1
::               ^ keyword.operator.assignment.dosbatch
::                    ^ keyword.operator.arithmetic.dosbatch
::                        ^ punctuation.separator.dosbatch
::                              ^ keyword.operator.assignment.dosbatch
::                                      ^ keyword.operator.arithmetic.dosbatch

  SET T=%TIME: =0%
::^^^ keyword.command
::    ^ variable.other.readwrite
::     ^ keyword.operator.assignment
::      ^^^^^^^^^^ variable.other.readwrite

IF "%FOO%" == "BAR" ( SET BAZ=42 )
::                  ^ punctuation.section.group.begin
::                  ^^^^^^^^^^^^^^ meta.group
::                               ^ punctuation.section.group.end
::                            ^^ string.unquoted

:: See http://ss64.com/nt/syntax-brackets.html
IF EXIST MyFile.txt (ECHO Some(more)Potatoes)
:: <- keyword.control
:: ^ keyword.other
::                  ^^^^^^^^^^^^^^^^ meta.group
::                   ^ keyword.command
::                                  ^ - meta.group

IF EXIST MyFile.txt (ECHO Some[more]Potatoes)
:: <- keyword.control
:: ^ keyword.other
::                  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
::                   ^ keyword.command

set "hello"="world"
:: <- keyword.command
::  ^ - variable.other.readwrite
::   ^^^^^^ variable.other.readwrite
::         ^ keyword.operator.assignment
::          ^ - punctuation
::                ^ punctuation.definition.string.end
::                 ^ - string

set foo=bar
:: <- keyword.command
::  ^^^ variable.other.readwrite
::     ^ keyword.operator.assignment
::      ^^^ string.unquoted

set  foo = bar
:: <- keyword.command
::  ^ - variable.other.readwrite
::   ^^^^ variable.other.readwrite
::       ^ keyword.operator.assignment
::         ^^^ string.unquoted

set  hello world = bar
:: <- keyword.command
::  ^ - variable.other.readwrite
::   ^^^^^^^^^^^^ variable.other.readwrite
::               ^ keyword.operator.assignment
::                 ^^^ string.unquoted

set abc /a = 1+2
:: <- keyword.command
::  ^^^^^^^ variable.other.readwrite
::         ^ keyword.operator.assignment - meta.expression.set
::           ^^^ string.unquoted

set "foobar=test"
:: <- keyword.command
::  ^ - variable.other.readwrite
::   ^^^^^^ variable.other.readwrite
::         ^ keyword.operator.assignment
::              ^ punctuation.definition.string.end

set  " foo = bar"
:: <- keyword.command
::   ^^ - variable.other.readwrite
::     ^^^^ variable.other.readwrite
::         ^ keyword.operator.assignment
::              ^ punctuation.definition.string.end

set test rem = hi
:: <- keyword.command
::       ^^^^^^^^^ - comment
::  ^^^^^^^^^ variable.other.readwrite
::           ^ keyword.operator.assignment
::             ^^ - variable.other

set hello_world
:: <- keyword.command
::  ^^^^^^^^^^^ variable.other.readwrite.dosbatch

set /A hello_world
:: <- keyword.command
::     ^^^^^^^^^^^ meta.expression.set
::                ^ - meta.expression.set

powershell get-date -uformat "%%Y%%m%%d" > today.txt
::                           ^^^^^^^^^^^ string.quoted.double.dosbatch
::                            ^^ constant.character.escape.dosbatch
::                              ^ - constant.character.escape.dosbatch
::                               ^^ constant.character.escape.dosbatch
::                                 ^ - constant.character.escape.dosbatch
::                                  ^^ constant.character.escape.dosbatch
::                                    ^ - constant.character.escape.dosbatch

:: the following example was inspired by http://stackoverflow.com/a/14634551/4473405
set /p today=<today.txt
:: ^^^^ - variable.other.readwrite.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^ keyword.operator.redirection.dosbatch
ren example.txt example_%today%.txt
::                      ^ punctuation.definition.variable.begin.dosbatch
::                      ^^^^^^^ variable.other.readwrite.dosbatch
::                            ^ punctuation.definition.variable.end.dosbatch

set /p today=enter a date:
:: ^^^^ - variable.other.readwrite.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^ meta.prompt.set.dosbatch string.unquoted - variable.other.readwrite.dosbatch
::                        ^ - meta.prompt.set.dosbatch
set /p today=enter a date: REM :: this is not a comment
:: ^^^^ - variable.other.readwrite.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.prompt.set.dosbatch string.unquoted - variable.other.readwrite.dosbatch - comment
::                                                     ^ - meta.prompt.set.dosbatch
set /p today=
:: ^^^^ - variable.other.readwrite.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^ - meta.prompt.set.dosbatch

:: Double quotes after the equal sign, or part of a quoted assignment are literal chars
SET "XML=<foo bar="%ATTR1%" baz="prefix-%ATTR2%" />"
::  ^ punctuation.definition.string.begin
::                ^ - punctuation
::                 ^^^^^^^ variable.other.readwrite
::                        ^ - punctuation
::                              ^ - punctuation
::                                      ^^^^^^^ variable.other.readwrite
::                                             ^ - punctuation
::                                                 ^ punctuation.definition.string.end

set folder=%TEMP%\subfolder\
::  ^^^^^^ variable.other.readwrite.dosbatch
::         ^^^^^^ variable.other.readwrite.dosbatch
::               ^^^^^^^^^^^ string.unquoted - variable.other

set test="c:\program files (x86)\%example%_%%test"abc
::  ^^^^ variable.other.readwrite.dosbatch
::      ^ keyword.operator.assignment.dosbatch
::       ^ punctuation.definition.string.begin.dosbatch
::       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
::                               ^^^^^^^^^ variable.other.readwrite.dosbatch
::                                         ^^ constant.character.escape.dosbatch
::                                               ^ punctuation.definition.string.end.dosbatch
::                                                ^^^ string.unquoted.dosbatch

SETLOCAL EnableDelayedExpansion
::^^^^^^ keyword.command.dosbatch
  SET /P example="what is the answer? ;) " & echo you have answered: !example!
::   ^^^^ - variable.other.readwrite.dosbatch
::       ^^^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::               ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.prompt.set.dosbatch string.quoted
::                                       ^ punctuation.definition.string.end.dosbatch
::                                         ^ keyword.operator.conditional.dosbatch - meta.prompt.set.dosbatch - string
::                                           ^^^^ keyword.command.dosbatch
::                                                                   ^^^^^^^^^ variable.other.readwrite.dosbatch
ENDLOCAL
::^^^^^^ keyword.command.dosbatch

set "X="
::  ^^^^ string.quoted.double
::  ^ punctuation.definition.string.begin
::   ^ variable.other.readwrite
::    ^ keyword.operator.assignment
::     ^ punctuation.definition.string.end
::      ^ - string

set /p OUTPUT="( ... )|&... "
::            ^^^^^^^^^^^^^^^ meta.prompt.set string.quoted.double - string.unquoted
set /p OUTPUT=hi|echo
::            ^^ meta.prompt.set string.unquoted
::              ^ keyword.operator.pipe - meta.prompt
::               ^^^^ keyword.command
set /p OUTPUT="( ... )|&... "ignored & echo
::            ^^^^^^^^^^^^^^^ meta.prompt.set string.quoted.double - string.unquoted
::                           ^^^^^^^ meta.prompt.set comment.line.ignored
::                                   ^ keyword.operator.conditional - comment
::                                     ^^^^ keyword.command
set /p today="enter a date: " REM :: this is a comment & echo !today!
:: ^^^^ - variable.other.readwrite.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch - variable.other.readwrite.dosbatch
::           ^^^^^^^^^^^^^^^^ meta.prompt.set.dosbatch string.quoted - variable.other.readwrite.dosbatch - comment
::                            ^^^^^^^^^^^^^^^^^^^^^^^^ comment
::                                                     ^ keyword.operator.conditional - comment - meta.prompt
::                                                       ^^^^ keyword.command
::                                                            ^^^^^^^ variable.other.readwrite

set hello=4
set wow=2
set /A hello*=wow*=2
::     ^^^^^ variable.other.readwrite
::          ^^ keyword.operator.assignment.augmented
::            ^^^ variable.other.readwrite
::               ^^ keyword.operator.assignment.augmented
::                 ^ constant.numeric.integer.decimal

set /A "hello*=wow"
::     ^^^^^^^^^^^^ meta.expression.set string.quoted.double
::     ^ punctuation.definition.string.begin
::      ^^^^^ variable.other.readwrite
::           ^^ keyword.operator.assignment.augmented
::                ^ punctuation.definition.string.end

set /A "%hello%+%wow%"
::     ^^^^^^^^^^^^^^^ meta.expression.set string.quoted.double
::     ^ punctuation.definition.string.begin
::      ^^^^^^^ variable.other.readwrite
::      ^ punctuation.definition.variable.begin
::            ^ punctuation.definition.variable.end
::             ^ keyword.operator.arithmetic
::              ^^^^^ variable.other.readwrite
::              ^ punctuation.definition.variable.begin
::               ^^^ variable.other.readwrite
::                  ^ punctuation.definition.variable.end
::                   ^ punctuation.definition.string.end
set /A "%hello%+wow"
::     ^^^^^^^^^^^^^ meta.expression.set string.quoted.double
::      ^^^^^^^ variable.other.readwrite
::      ^ punctuation.definition.variable.begin
::            ^ punctuation.definition.variable.end
::             ^ keyword.operator.arithmetic

set /A 1+"%hello%"
::     ^ constant.numeric.integer.decimal
::      ^ keyword.operator.arithmetic
::       ^^^^^^^^^ string.quoted.double
::       ^ punctuation.definition.string.begin
::        ^ punctuation.definition.variable.begin
::         ^^^^^ variable.other.readwrite
::              ^ punctuation.definition.variable.end
::               ^ punctuation.definition.string.end

set a12b=21
REM    the line below is actually invalid, as % is not expected to be used in variables before an augmented operator
set /a %a12b%*=2
::      ^^^^ variable.other.readwrite
::           ^^ keyword.operator.assignment.augmented
::             ^ constant.numeric.integer.decimal

set /a a12b*=2
::     ^^^^ variable.other.readwrite
::         ^^ keyword.operator.assignment.augmented
::           ^ constant.numeric.integer.decimal
set /a  a12b *= 2
::     ^ - variable
::      ^^^^ variable.other.readwrite
::          ^ - variable
::           ^^ meta.expression.set keyword.operator.assignment.augmented
::              ^ constant.numeric.integer.decimal

set /a ! a12b
::     ^ keyword.operator.logical
::       ^^^^ variable.other.readwrite
set /a !a12b
::     ^ keyword.operator.logical
::      ^^^^ variable.other.readwrite
set /a "! a12b"
::     ^^^^^^^^ meta.expression.set string.quoted.double
::     ^ punctuation.definition.string.begin
::      ^ keyword.operator.logical
::        ^^^^ variable.other.readwrite
::            ^ punctuation.definition.string.end
set /a "! %a12b%"
::     ^^^^^^^^^^ meta.expression.set string.quoted.double
::     ^ punctuation.definition.string.begin
::      ^ keyword.operator.logical
::        ^^^^^^ variable.other.readwrite
::        ^ punctuation.definition.variable.begin
::             ^ punctuation.definition.variable.end
::              ^ punctuation.definition.string.end
set /a ! "a12b"
::     ^ keyword.operator.logical
::       ^ punctuation.definition.string.begin
::        ^^^^ variable.other.readwrite
::            ^ punctuation.definition.string.end
set /a !"%a12b%"
::     ^ keyword.operator.logical
::      ^ punctuation.definition.string.begin
::       ^^^^^^ variable.other.readwrite
::             ^ punctuation.definition.string.end

set /a a&=a12b
::      ^ keyword.operator.conditional - meta.expression.set
set /a " world"=12
::     ^^^^^^^^ string.quoted.double
::       ^^^^^ variable.other.readwrite
::            ^ punctuation.definition.string.end
::             ^ keyword.operator.assignment
::              ^^ constant.numeric.integer.decimal

set /a "wow"+="2"
::     ^^^^^  string.quoted.double
::      ^^^ variable.other.readwrite
::          ^^ keyword.operator.assignment.augmented - string
::            ^^^ string.quoted.double
::             ^ constant.numeric.integer.decimal 
set /a wow"+="2
::     ^^^ variable.other.readwrite
::        ^^^^ string.quoted.double
::         ^^ keyword.operator.assignment.augmented
::            ^ constant.numeric.integer.decimal - string
set /a 4*"2+-wow+(3"-2)
::     ^^^^^^^^^^^^^^^^ meta.expression.set - string string - meta.group meta.group
::     ^ constant.numeric.integer.decimal
::      ^ keyword.operator.arithmetic
::       ^^^^^^^^^^^ string.quoted.double
::       ^ punctuation.definition.string.begin
::        ^ constant.numeric.integer.decimal
::         ^^ keyword.operator.arithmetic
::           ^^^ variable.other.readwrite
::              ^ keyword.operator.arithmetic
::               ^^^^^^ meta.group
::               ^ punctuation.section.group.begin
::                ^ constant.numeric.integer.decimal
::                 ^ punctuation.definition.string.end
::                  ^ keyword.operator.arithmetic
::                   ^ constant.numeric.integer.decimal
::                    ^ punctuation.section.group.end
::                  ^^^ - string
::               ^^^ string.quoted.double meta.group

set /a (8"2")
::     ^^^^^^ meta.group
::     ^ punctuation.section.group.begin
::      ^ constant.numeric.integer.decimal
::       ^ punctuation.definition.string.begin
::       ^^^ string.quoted.double
::        ^ constant.numeric.integer.decimal
::         ^ punctuation.definition.string.end
::          ^ punctuation.section.group.end

set /a 4*"2+1"1
::     ^ constant.numeric.integer.decimal
::      ^ keyword.operator.arithmetic
::       ^^^^^ string.quoted.double
::        ^ constant.numeric.integer.decimal
::         ^ keyword.operator.arithmetic
::          ^ constant.numeric.integer.decimal
::            ^ constant.numeric.integer.decimal
set /a 4*"2++1"
::     ^ constant.numeric.integer.decimal
::      ^ keyword.operator.arithmetic
::       ^^^^^^ string.quoted.double
::        ^ constant.numeric.integer.decimal
::         ^^ keyword.operator.arithmetic
::           ^ constant.numeric.integer.decimal
set /a 4*"2++w"ow
::       ^^^^^^ string.quoted.double
::        ^ constant.numeric.integer.decimal
::         ^^ keyword.operator.arithmetic
::           ^ variable.other.readwrite
::             ^^ variable.other.readwrite
set /a (8"2")^^1
::           ^ constant.character.escape
::            ^ keyword.operator.arithmetic
set /a (8"2")^
+1
:: <- keyword.operator.arithmetic
set /a (abc*(def-(2))/4)"+((1))"
::     ^^^^^^^^^^^^^^^^^ meta.group
::                      ^ - meta.group
::          ^^^^^^^^^ meta.group meta.group
::               ^^^ meta.group meta.group meta.group
::     ^ punctuation.section.group.begin
::      ^^^ variable.other.readwrite
::         ^ keyword.operator.arithmetic
::          ^ punctuation.section.group.begin
::           ^^^ variable.other.readwrite
::              ^ keyword.operator.arithmetic
::               ^ punctuation.section.group.begin
::                ^ constant.numeric.integer.decimal
::                 ^ punctuation.section.group.end
::                  ^ punctuation.section.group.end
::                   ^ keyword.operator.arithmetic
::                    ^ constant.numeric.integer.decimal
::                     ^ punctuation.section.group.end
::                      ^^^^^^^^ string.quoted.double
::                      ^ punctuation.definition.string.begin
::                       ^ keyword.operator.arithmetic
::                        ^ meta.group punctuation.section.group.begin
::                         ^ meta.group meta.group punctuation.section.group.begin
::                          ^ meta.group meta.group constant.numeric.integer.decimal
::                           ^ meta.group meta.group punctuation.section.group.end
::                            ^ meta.group punctuation.section.group.end
::                             ^ punctuation.definition.string.end - meta.group
set /a ("a"+b&"c+d")
::     ^^^^^^ meta.expression.set meta.group
::      ^^^ string.quoted.double
::       ^ variable.other.readwrite
::         ^ keyword.operator.arithmetic
::          ^ variable.other.readwrite
::           ^ keyword.operator.conditional
::            ^^^^^ string.quoted.double - keyword - variable
set /a (a+"b)*2"-1
::     ^^^^^^ meta.group
::     ^ punctuation.section.group.begin
::      ^ variable.other.readwrite
::       ^ keyword.operator.arithmetic
::        ^ punctuation.definition.string.begin
::        ^^^^^^ string.quoted.double
::         ^ variable.other.readwrite
::          ^ punctuation.section.group.end
::           ^ keyword.operator.arithmetic - meta.group
::            ^ constant.numeric.integer.decimal
::             ^ punctuation.definition.string.end
::              ^ keyword.operator.arithmetic - meta.group
::               ^ constant.numeric.integer.decimal
