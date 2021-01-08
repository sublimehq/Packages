:: SYNTAX TEST "Packages/Batch File/Batch File.sublime-syntax"

   REM I'm a (com|ment)
:: ^^^ keyword.declaration.rem.dosbatch - comment
::    ^^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch

   REM ^
   I'm a (com|ment)
:: ^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch

REM
   not a comment
:: ^^^^^^^^^^^^^ - comment

REM This follows a REM command
:: <- keyword.declaration.rem.dosbatch - comment
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch


:1:
:: <- comment.block.documentation.dosbatch punctuation.definition.comment.begin.dosbatch
 :: <- comment.block.documentation.dosbatch punctuation.definition.comment.begin.dosbatch

This is a block comment
::^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.dosbatch

:1:
:: <- comment.block.documentation.dosbatch punctuation.definition.comment.end.dosbatch
 :: <- comment.block.documentation.dosbatch punctuation.definition.comment.end.dosbatch


   :: Me too!
:: ^^ punctuation.definition.comment.dosbatch
:: ^^^^^^^^^^ comment.line.colon.dosbatch

   :+ Me too!
:: ^^ punctuation.definition.comment.dosbatch

   := Me too!
:: ^^ punctuation.definition.comment.dosbatch

   :, Me too!
:: ^^ punctuation.definition.comment.dosbatch

   :; Me too!
:: ^^ punctuation.definition.comment.dosbatch

   : Me too!
:: ^^ punctuation.definition.comment.dosbatch

   ::^
   Me too!
:: ^^^^^^^ comment.line.colon.dosbatch

   : ^
   Me too!
:: ^^^^^^^ comment.line.colon.dosbatch

   : ^
   A contineued comment.^
   Me too!
:: ^^^^^^^ comment.line.colon.dosbatch

ECHO &&:: A comment
::   ^^ keyword.operator.conditional.dosbatch
::     ^^ punctuation.definition.comment.dosbatch
::     ^^^^^^^^^^^^ comment.line.colon.dosbatch

ECHO &:: A comment
::   ^ keyword.operator.conditional.dosbatch
::    ^^ punctuation.definition.comment.dosbatch
::    ^^^^^^^^^^^^ comment.line.colon.dosbatch

ECHO ||:: A comment
::   ^^ keyword.operator.conditional.dosbatch
::     ^^ punctuation.definition.comment.dosbatch
::     ^^^^^^^^^^^^ comment.line.colon.dosbatch

ECHO |:: Not a comment
::   ^ keyword.operator.pipe.dosbatch
::    ^^^^^^^^^^^^^^^^ invalid.illegal.unexpected.dosbatch

ECHO : Not a comment ^
::   ^^^^^^^^^^^^^^^ - comment
::                   ^^ punctuation.separator.continuation.line.dosbatch

ECHO : Not a comment ^
:: Me not, too
:: <- - comment
::^^^^^^^^^^^^  - comment


   @ECHO OFF
:: ^ keyword.operator.at.dosbatch

   @
:: ^ - keyword.operator.at.dosbatch


:: Labels

  :This is a #@$虎 strange label
::^ punctuation.definition.label.dosbatch
::^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.label.dosbatch

  :End
::^ punctuation.definition.label.dosbatch
::^^^^ entity.name.label.dosbatch


:: Control Flow

   CALL:This is a #@$虎 strange label
::^ - meta.command - meta.function-call
:: ^^^^ meta.command.call.dosbatch - meta.function-call
::     ^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::          ^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                                  ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^^^^ variable.label.dosbatch - keyword
::          ^^^^^^^^^^^^^^^^^^^^^^^^ - variable

   CALL:EOF
::^ - meta.command - meta.function-call
:: ^^^^ meta.command.call.dosbatch - meta.function-call
::     ^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::         ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^^^ variable.label.dosbatch - keyword

   CALL ^
   :EOF
:: ^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::     ^ - meta.command - meta.function-call
:: ^ punctuation.definition.variable.dosbatch
:: ^^^^ variable.label.dosbatch - keyword

   CALL :foo 10 %1
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::          ^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::           ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^^ variable.parameter.dosbatch

   CALL :foo%bar% 10
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::                ^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                  ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::                ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :foo %bar% 10
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::           ^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                   ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::           ^^^^^ meta.variable.dosbatch - variable.label - keyword
::                 ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL foo %bar%
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::         ^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::               ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^^ meta.function-call.name.dosbatch variable.function.dosbatch
::         ^^^^^^ meta.function-call.arguments.dosbatch
::          ^^^^^ meta.variable.dosbatch

   CALL ^
   foo
:: ^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch

   CALL SET _str=%%_var:~%_start%,%_length%%%
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.call.dosbatch
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^^ support.function.builtin.dosbatch
::          ^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::               ^^ constant.character.escape.dosbatch
::                       ^ punctuation.definition.variable.begin.dosbatch
::                       ^^^^^^^^ meta.variable.dosbatch
::                              ^ punctuation.definition.variable.end.dosbatch
::                                ^ punctuation.definition.variable.begin.dosbatch
::                                ^^^^^^^^^ meta.variable.dosbatch
::                                        ^ punctuation.definition.variable.end.dosbatch
::                                         ^^ constant.character.escape.dosbatch

   CALL ..\foo\bar.exe /param:10
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch
::                    ^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                              ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^ constant.language.path.parent.dosbatch
::        ^ punctuation.separator.path.dosbatch
::            ^ punctuation.separator.path.dosbatch
::                ^ punctuation.separator.path.dosbatch
::                     ^ punctuation.definition.variable.dosbatch
::                     ^^^^^^ variable.parameter.option.dosbatch
::                           ^ punctuation.separator.mapping.key-value.dosbatch
::                            ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL ..\%foo%\bar.exe /param:str
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch - meta.interpolation
::         ^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::              ^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch - meta.interpolation
::                      ^^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                                 ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^ constant.language.path.parent.dosbatch
::        ^ punctuation.separator.path.dosbatch
::         ^ punctuation.definition.variable.begin.dosbatch
::          ^^^ variable.other.readwrite.dosbatch
::             ^ punctuation.definition.variable.end.dosbatch
::              ^ punctuation.separator.path.dosbatch
::                  ^ punctuation.separator.path.dosbatch
::                       ^ punctuation.definition.variable.dosbatch
::                       ^^^^^^ variable.parameter.option.dosbatch
::                             ^ punctuation.separator.mapping.key-value.dosbatch

   CALL foo\bar.exe /pa_am:%var%
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch
::                 ^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch - meta.variable
::                         ^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch meta.variable.dosbatch
::                              ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::         ^ punctuation.separator.path.dosbatch
::             ^ punctuation.separator.path.dosbatch
::                  ^ punctuation.definition.variable.dosbatch
::                  ^^^^^^ variable.parameter.option.dosbatch
::                        ^ punctuation.separator.mapping.key-value.dosbatch

   CALL %foo%\bar.exe /pa-am:-10
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::           ^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch - meta.interpolation
::                   ^^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                              ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.variable.begin.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.definition.variable.end.dosbatch
::           ^ punctuation.separator.path.dosbatch
::               ^ punctuation.separator.path.dosbatch
::                    ^ punctuation.definition.variable.dosbatch
::                    ^^^^^^ variable.parameter.option.dosbatch
::                          ^ punctuation.separator.mapping.key-value.dosbatch

   CALL "d:\foo %bar%\baz.exe" /par-am=10 /D
::^ - meta.command - meta.function-call
:: ^^^^^ meta.command.call.dosbatch - meta.function-call
::      ^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch - meta.interpolation
::              ^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::                   ^^^^^^^^^ meta.command.call.dosbatch meta.function-call.name.dosbatch variable.function.dosbatch - meta.interpolation
::                            ^^^^^^^^^^^^^^ meta.command.call.dosbatch meta.function-call.arguments.dosbatch
::                                          ^ - meta.command - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.variable.begin.dosbatch
::        ^^ punctuation.separator.path.dosbatch
::              ^ punctuation.definition.variable.begin.dosbatch
::               ^^^ variable.other.readwrite.dosbatch
::                  ^ punctuation.definition.variable.end.dosbatch
::                   ^ punctuation.separator.path.dosbatch
::                       ^ punctuation.separator.path.dosbatch
::                           ^ punctuation.definition.variable.end.dosbatch
::                             ^ punctuation.definition.variable.dosbatch
::                             ^^^^^^^ variable.parameter.option.dosbatch
::                                    ^ punctuation.separator.mapping.key-value.dosbatch


   EXIT
:: ^^^^ meta.command.exit.dosbatch keyword.control.flow.exit.dosbatch

   EXIT /b 12 illegal
:: ^^^^^^^^^^^^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.dosbatch
::         ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::            ^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   EXIT /b %var% illegal
:: ^^^^^^^^^^^^^^^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.dosbatch
::         ^^^^^ meta.variable.dosbatch
::               ^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   GOTO:EOF
:: ^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^^ variable.label.dosbatch
::      ^^^ keyword.control.flow.return.dosbatch

   GOTO ^
   :EOF
:: ^^^^ meta.command.goto.dosbatch
:: ^ punctuation.definition.variable.dosbatch
:: ^^^ variable.label.dosbatch
::  ^^^ keyword.control.flow.return.dosbatch

   GOTO :End
:: ^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^^^ variable.label.dosbatch - keyword

   GOTO:End
:: ^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^^^ variable.label.dosbatch - keyword

   GOTO:This is a #@$虎 strange label
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.label.dosbatch - keyword

   GOTO This is a #@$虎 strange label
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.label.dosbatch - keyword

   GOTO This is^
   a #%@$虎 strange label
:: ^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch variable.label.dosbatch - keyword

   GOTO %%i
:: ^^^^ meta.command.goto.dosbatch keyword.control.flow.goto.dosbatch - meta.variable
::     ^ meta.command.goto.dosbatch - keyword - meta.variable
::      ^^ meta.command.goto.dosbatch constant.character.escape.dosbatch
::        ^ meta.command.goto.dosbatch variable.label.dosbatch

   GOTO %var%
:: ^^^^ meta.command.goto.dosbatch keyword.control.flow.goto.dosbatch - meta.variable
::     ^ meta.command.goto.dosbatch - keyword - meta.variable
::      ^^^^^ meta.command.goto.dosbatch meta.variable.dosbatch


:: Conditionals

   IF foo EQU bar echo "equal"
:: ^^  keyword.control.conditional.if.dosbatch
::    ^^^ variable.other.readwrite.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^ variable.other.readwrite.dosbatch
::                ^^^^ support.function.builtin.dosbatch

   IF NOT foo EQU bar echo "equal"
:: ^^  keyword.control.conditional.if.dosbatch
::    ^^^ keyword.operator.logical.dosbatch
::        ^^^ variable.other.readwrite.dosbatch
::            ^^^ keyword.operator.comparison.dosbatch
::                ^^^ variable.other.readwrite.dosbatch
::                    ^^^^ support.function.builtin.dosbatch

   IF foo == bar echo "equal"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ variable.other.readwrite.dosbatch
::        ^^ keyword.operator.comparison.dosbatch
::           ^^^ variable.other.readwrite.dosbatch
::               ^^^^ support.function.builtin.dosbatch

   IF foo==bar echo "equal"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ variable.other.readwrite.dosbatch
::       ^^ keyword.operator.comparison.dosbatch
::         ^^^ variable.other.readwrite.dosbatch
::             ^^^^ support.function.builtin.dosbatch

   IF %foo%=="bar" echo "equal"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^ meta.variable.dosbatch
::         ^^ keyword.operator.comparison.dosbatch
::           ^^^^^ string.quoted.double.dosbatch
::                 ^^^^ support.function.builtin.dosbatch

   IF (2) GEQ (15) echo "bigger"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ meta.group.dosbatch
::    ^ punctuation.section.group.begin.dosbatch
::     ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::      ^ punctuation.section.group.end.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^^ meta.group.dosbatch
::            ^ punctuation.section.group.begin.dosbatch
::             ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::               ^ punctuation.section.group.end.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^^^^^^^^ string.unquoted.dosbatch

   IF "2" GEQ "15" echo "bigger"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.quoted.double.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^^ string.quoted.double.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^^^^^^^^ string.unquoted.dosbatch

   IF errorlevel 0 echo "ok"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^ variable.language.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^^^^ string.unquoted.dosbatch

   IF errorlevel==0 echo "ok"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^ variable.language.dosbatch
::              ^^ keyword.operator.comparison.dosbatch
::                ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                  ^^^^ support.function.builtin.dosbatch
::                       ^^^^ string.unquoted.dosbatch

   IF not errorlevel == 0 echo "error"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ keyword.operator.logical.dosbatch
::        ^^^^^^^^^^ variable.language.dosbatch
::                   ^^ keyword.operator.comparison.dosbatch
::                      ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                        ^^^^ support.function.builtin.dosbatch
::                             ^^^^^^^ string.unquoted.dosbatch

   IF errorlevel NEQ 0 echo "ok"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^ variable.language.dosbatch
::               ^^^ invalid.illegal.unexpected.dosbatch
::                   ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                     ^^^^ support.function.builtin.dosbatch
::                          ^^^^ string.unquoted.dosbatch

   IF %ERRORLEVEL% NEQ 0 EXIT /B 1
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^^^ meta.variable.dosbatch
::    ^ punctuation.definition.variable.begin.dosbatch - variable
::     ^^^^^^^^^^ variable.language.dosbatch
::               ^ punctuation.definition.variable.end.dosbatch - variable

   IF EXIST "C:\file.log"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^ support.function.builtin.dosbatch
::          ^^^^^^^^^^^^^ string.quoted.double.dosbatch

   IF NOT EXIST "C:\file.log"
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ keyword.operator.logical.dosbatch
::        ^^^^^ support.function.builtin.dosbatch
::              ^^^^^^^^^^^^^ string.quoted.double.dosbatch

   IF^
   NOT EXIST "C:\file.log"
:: ^^^ keyword.operator.logical.dosbatch
::     ^^^^^ support.function.builtin.dosbatch
::           ^^^^^^^^^^^^^ string.quoted.double.dosbatch

   IF^
   NOT^
   EXIST "C:\file.log"
:: ^^^^^ support.function.builtin.dosbatch
::       ^^^^^^^^^^^^^ string.quoted.double.dosbatch

   IF^
   NOT^
   EXIST^
   "C:\file.log"
:: ^^^^^^^^^^^^^ string.quoted.double.dosbatch

:: See http://ss64.com/nt/syntax-brackets.html
   IF EXIST file.txt ECHO Some(more)Potatoes
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^ support.function.builtin.dosbatch
::                        ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch

   IF EXIST file.txt (ECHO Some(more)Potatoes)
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^^^^^^^^^^^^^ meta.group
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^^^^^^^^ string.unquoted.dosbatch

   IF EXIST file.txt (ECHO Some[more]Potatoes)
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch

   IF EXIST file.txt (ECHO Some^(more^)Potatoes)
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch

   IF foo GTR (2) (ECHO bar) ELSE (ECHO baz)
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ variable.other.readwrite.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^ meta.group.dosbatch
::            ^ punctuation.section.group.begin.dosbatch
::             ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^ punctuation.section.group.end.dosbatch
::                ^^^^^^^^^^ meta.group.dosbatch
::                ^ punctuation.section.group.begin.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                         ^ punctuation.section.group.end.dosbatch
::                           ^^^^ keyword.control.conditional.else.dosbatch
::                                ^^^^^^^^^^ meta.group.dosbatch
::                                ^ punctuation.section.group.begin.dosbatch
::                                 ^^^^ support.function.builtin.dosbatch
::                                         ^ punctuation.section.group.end.dosbatch

   IF foo GTR (2) (
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ variable.other.readwrite.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^ punctuation.section.group.begin.dosbatch
::            ^^^ meta.group.dosbatch
::              ^ punctuation.section.group.end.dosbatch
::                ^ punctuation.section.group.begin.dosbatch
      ECHO bar
::    ^^^^ support.function.builtin.dosbatch
   ) ELSE (
:: ^ punctuation.section.group.end.dosbatch
::   ^^^^ keyword.control.conditional.else.dosbatch
::        ^ punctuation.section.group.begin.dosbatch
      ECHO baz
::    ^^^^ support.function.builtin.dosbatch
   )
:: ^ punctuation.section.group.end.dosbatch

   ELSE echo baz
:: ^^^^ invalid.illegal.stray.dosbatch
::      ^^^^ support.function.builtin.dosbatch
::           ^^^ string.unquoted.dosbatch

   IF "%FOO%" == "BAR" ( SET BAZ=42 )
::                     ^ punctuation.section.group.begin
::                     ^^^^^^^^^^^^^^ meta.group
::                                  ^ punctuation.section.group.end
::                               ^^ string.unquoted

   IF ^
   DEFINED foo (ECHO bar)
:: ^^^^^^^ support.function.builtin.dosbatch
::         ^^^ variable.other.readwrite.dosbatch
::             ^^^^^^^^^^ meta.group
::              ^^^^ support.function.builtin.dosbatch

   IF ^
   DEFINED ^
   foo (ECHO bar)
:: ^^^ variable.other.readwrite.dosbatch
::     ^^^^^^^^^^ meta.group
::      ^^^^ support.function.builtin.dosbatch

   IF ^
   DEFINED ^
   foo ^
   (ECHO bar)
:: ^^^^^^^^^^ meta.group
::  ^^^^ support.function.builtin.dosbatch

   IF^
   /i
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.dosbatch


:: Loops

   FOR %%G IN (0,9) DO (md %%G)
:: ^^^ keyword.control.loop.for.dosbatch
::     ^^ punctuation.definition.variable.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::         ^^ keyword.operator.logical.dosbatch
::            ^ punctuation.section.set.begin.dosbatch
::             ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^ punctuation.separator.comma.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                ^ punctuation.section.set.end.dosbatch
::                  ^^ keyword.control.loop.do.dosbatch

   FOR /D /r %%foo IN (folder1, ..\folder2, C:\folder) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.dir.dosbatch
::        ^ punctuation.definition.variable.dosbatch
::        ^^ variable.parameter.recursive.dosbatch
::           ^^ punctuation.definition.variable.dosbatch
::           ^^^^^ variable.other.readwrite.dosbatch
::                 ^^ keyword.operator.logical.dosbatch
::                    ^ punctuation.section.set.begin.dosbatch
::                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::                            ^ punctuation.separator.comma.dosbatch
::                              ^^ constant.language.path.parent.dosbatch
::                                        ^ punctuation.separator.comma.dosbatch
::                                                   ^ punctuation.section.set.end.dosbatch
::                                                     ^^ keyword.control.loop.do.dosbatch

   FOR^
   /D /r %%foo IN (folder1, ..\folder2, C:\folder) DO command
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.dir.dosbatch
::    ^ punctuation.definition.variable.dosbatch
::    ^^ variable.parameter.recursive.dosbatch
::       ^^ punctuation.definition.variable.dosbatch
::       ^^^^^ variable.other.readwrite.dosbatch
::             ^^ keyword.operator.logical.dosbatch
::                ^ punctuation.section.set.begin.dosbatch
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::                        ^ punctuation.separator.comma.dosbatch
::                          ^^ constant.language.path.parent.dosbatch
::                                    ^ punctuation.separator.comma.dosbatch
::                                               ^ punctuation.section.set.end.dosbatch
::                                                 ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%foo IN (folder1, ..\folder2, C:\folder) DO command
:: ^^ punctuation.definition.variable.dosbatch
:: ^^^^^ variable.other.readwrite.dosbatch
::       ^^ keyword.operator.logical.dosbatch
::          ^ punctuation.section.set.begin.dosbatch
::          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::                  ^ punctuation.separator.comma.dosbatch
::                    ^^ constant.language.path.parent.dosbatch
::                              ^ punctuation.separator.comma.dosbatch
::                                         ^ punctuation.section.set.end.dosbatch
::                                           ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%foo ^
   IN (folder1, ..\folder2, C:\folder) DO command
:: ^^ keyword.operator.logical.dosbatch
::    ^ punctuation.section.set.begin.dosbatch
::    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::            ^ punctuation.separator.comma.dosbatch
::              ^^ constant.language.path.parent.dosbatch
::                        ^ punctuation.separator.comma.dosbatch
::                                   ^ punctuation.section.set.end.dosbatch
::                                     ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%foo ^
   IN ^
   (folder1, ..\folder2, C:\folder) DO command
:: ^ punctuation.section.set.begin.dosbatch
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::         ^ punctuation.separator.comma.dosbatch
::           ^^ constant.language.path.parent.dosbatch
::                     ^ punctuation.separator.comma.dosbatch
::                                ^ punctuation.section.set.end.dosbatch
::                                  ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%foo ^
   IN ^
   (
:: ^ punctuation.section.set.begin.dosbatch
      folder1,
::           ^ punctuation.separator.comma.dosbatch
      ..\folder2,
::    ^^ constant.language.path.parent.dosbatch
::              ^ punctuation.separator.comma.dosbatch
      C:\folder
   ) ^
   DO command
:: ^^ keyword.control.loop.do.dosbatch

   for /F "tokens=*" %%f in ('dir /S /b C:\*\temp.dat') do (echo "%%f".)
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.files.dosbatch
::        ^ punctuation.definition.string.begin.dosbatch
::        ^^^^^^^^^^ meta.string.dosbatch string.quoted.double.dosbatch
::         ^^^^^^ constant.language.dosbatch
::               ^ punctuation.separator.mapping.key-value.dosbatch
::                 ^ punctuation.definition.string.end.dosbatch
::                   ^^ punctuation.definition.variable.dosbatch
::                   ^^^ variable.other.readwrite.dosbatch
::                       ^^ keyword.operator.logical.dosbatch
::                          ^ punctuation.section.set.begin.dosbatch
::                          ^ meta.set.dosbatch punctuation.section.set.begin.dosbatch - meta.embedded
::                           ^ punctuation.section.embedded.begin.dosbatch
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch meta.embedded.dosbatch
::                            ^^^ support.function.builtin.dosbatch
::                                                   ^ punctuation.section.embedded.end.dosbatch
::                                                    ^ meta.set.dosbatch punctuation.section.set.end.dosbatch - meta.embedded

   for /f %%f in ('dir /S /b^
      C:\fol'der') do echo %%f
::  ^^^^^^^^^^^^ meta.set.dosbatch meta.embedded.dosbatch source.dosbatch.embedded
::              ^ meta.set.dosbatch meta.embedded.dosbatch - source.dosbatch.embedded
::               ^ meta.set.dosbatch punctuation.section.set.end.dosbatch
::                 ^^ keyword.control.loop.do.dosbatch

   for /f %%f in ('dir /S /b C:\fol'der
      ') do echo %%f
::    ^ meta.set.dosbatch meta.embedded.dosbatch - source.dosbatch.embedded
::     ^ meta.set.dosbatch punctuation.section.set.end.dosbatch
::       ^^ keyword.control.loop.do.dosbatch

   for /L %i in (1,1,100) do echo %i
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.range.dosbatch
::        ^ punctuation.definition.variable.dosbatch
::        ^^ variable.other.readwrite.dosbatch
::           ^^ keyword.operator.logical.dosbatch
::              ^ punctuation.section.set.begin.dosbatch
::              ^^^^^^^^^ meta.set.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                ^ punctuation.separator.comma.dosbatch
::                 ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                  ^ punctuation.separator.comma.dosbatch
::                   ^^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                      ^ punctuation.section.set.end.dosbatch
::                        ^^ keyword.control.loop.do.dosbatch
::                           ^^^^ support.function.builtin.dosbatch

   FOR /R C:\dir\file-name.ext %%foo IN (file1.*, another?.log) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.recursive.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                             ^^ punctuation.definition.variable.dosbatch
::                             ^^^^^ variable.other.readwrite.dosbatch
::                                   ^^ keyword.operator.logical.dosbatch

   FOR /R C:\dir name\file name.ext %%foo IN (.) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.recursive.dosbatch
::        ^^^^^^ string.unquoted.dosbatch
::               ^^^^^^^^^ invalid.illegal.parameter.dosbatch
::                         ^^^^^^^^ invalid.illegal.parameter.dosbatch
::                                  ^^ punctuation.definition.variable.dosbatch
::                                  ^^^^^ variable.other.readwrite.dosbatch
::                                        ^^ keyword.operator.logical.dosbatch

   FOR /R 'C:\dir name\file name.ext' %%foo IN (*.ext) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.recursive.dosbatch
::        ^^^^^^^ string.unquoted.dosbatch
::                ^^^^^^^^^ invalid.illegal.parameter.dosbatch
::                          ^^^^^^^^^ invalid.illegal.parameter.dosbatch
::                                    ^^ punctuation.definition.variable.dosbatch
::                                    ^^^^^ variable.other.readwrite.dosbatch
::                                          ^^ keyword.operator.logical.dosbatch

   FOR /R "C:\dir name\file-name.ext" %%foo IN (set) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.recursive.dosbatch
::        ^ punctuation.definition.string.begin.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
::                                  ^ punctuation.definition.string.end.dosbatch
::                                    ^^ punctuation.definition.variable.dosbatch
::                                    ^^^^^ variable.other.readwrite.dosbatch
::                                          ^^ keyword.operator.logical.dosbatch

   FOR /Z %%foo IN (foo & bar | < baz > && no || false) DO command
::     ^^ invalid.illegal.parameter.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::              ^^ keyword.operator.logical.dosbatch
::                      ^ invalid.illegal.operator.dosbatch
::                            ^ invalid.illegal.operator.dosbatch
::                              ^ invalid.illegal.operator.dosbatch
::                                    ^ invalid.illegal.operator.dosbatch
::                                      ^^ invalid.illegal.operator.dosbatch
::                                            ^^ invalid.illegal.operator.dosbatch

:: setlocal

   SETLOCAL
:: ^^^^^^^^ meta.command.setlocal.dosbatch keyword.control.namespace.setlocal.dosbatch
   ENDLOCAL
:: ^^^^^^^^ meta.command.endlocal.dosbatch keyword.control.namespace.endlocal.dosbatch

   setlocal endlocal & echo hello & endlocal illegal
:: ^^^^^^^^^^^^^^^^^ meta.command.setlocal.dosbatch
::                  ^^^ - meta.command
::                     ^^^^^ meta.command.echo.dosbatch
::                          ^^^^^ meta.command.echo.output.dosbatch
::                               ^^^ - meta.command
::                                  ^^^^^^^^^^^^^^^^ meta.command.endlocal.dosbatch
::                                                  ^ - meta.command
:: ^^^^^^^^ keyword.control.namespace.setlocal.dosbatch
::          ^^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch
::                   ^ keyword.operator.conditional.dosbatch
::                     ^^^^ support.function.builtin.dosbatch
::                          ^^^^^ string.unquoted.dosbatch
::                                ^ keyword.operator.conditional.dosbatch
::                                  ^^^^^^^^ keyword.control.namespace.endlocal.dosbatch
::                                           ^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   SETLOCAL EnableDelayedExpansion but DisableExtensions
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.setlocal.dosbatch
::                                                      ^ - meta.command
:: ^^^^^^^^ keyword.control.namespace.setlocal.dosbatch
::          ^^^^^^^^^^^^^^^^^^^^^^ constant.language.dosbatch
::                                 ^^^ invalid.illegal.expect-end-of-command.dosbatch
::                                     ^^^^^^^^^^^^^^^^^ constant.language.dosbatch
     SET /P example="what is the answer? ;) " & echo you have answered: !example!
::      ^^^^ - variable.other.readwrite.dosbatch
::          ^^^^^^^ variable.other.readwrite.dosbatch
::                 ^ keyword.operator.assignment.dosbatch
::                  ^ punctuation.definition.string.begin.dosbatch
::                  ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted
::                                          ^ punctuation.definition.string.end.dosbatch
::                                            ^ keyword.operator.conditional.dosbatch - string
::                                              ^^^^ support.function.builtin.dosbatch
::                                                                      ^^^^^^^^^ meta.variable.dosbatch
   ENDLOCAL & set return=%example%
:: ^^^^^^^^ keyword.control.namespace.endlocal.dosbatch
::          ^ keyword.operator.conditional.dosbatch
::            ^^^ support.function.builtin.dosbatch
::                ^^^^^^ variable.other.readwrite.dosbatch
::                      ^ keyword.operator.assignment.dosbatch
::                       ^^^^^^^^^ meta.variable.dosbatch


:: Commands

   FIND "a" |
::          ^ keyword.operator.pipe.dosbatch


:: Redirection

   ECHO Hello World! > hello.txt
:: ^^^^                support.function.builtin.dosbatch
::                   ^ keyword.operator.redirection.dosbatch

   ECHO >> NUL
::      ^^     keyword.operator.redirection.dosbatch
::         ^^^ constant.language

   dir > f.txt 2>&1
::     ^ keyword.operator.redirection.dosbatch
::              ^^ keyword.operator.redirection.dosbatch


:: Command ECHO

   @
:: ^ - keyword.operator.at.dosbatch

   ECHO || ECHO && ECHO &
:: ^^^^ support.function.builtin.dosbatch
::      ^^ keyword.operator.conditional.dosbatch
::         ^^^^ support.function.builtin.dosbatch
::              ^^ keyword.operator.conditional.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^ keyword.operator.conditional.dosbatch

   @ECHO OFF
:: ^ - meta.command
::  ^^^^ meta.command.echo.dosbatch
::      ^^^^ meta.command.echo.arguments.dosbatch
::          ^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^^ constant.language.dosbatch

   @ECHO OFF :: no (comment) & :: comment
:: ^ - meta.command
::  ^^^^^ meta.command.echo.dosbatch - meta.string - string
::       ^^^^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                          ^^^^^^^^^^^^^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                           ^ keyword.operator.conditional.dosbatch
::                             ^^ comment.line.colon.dosbatch punctuation.definition.comment.dosbatch

   @ECHO ON & :: comment
:: ^ - meta.command
::  ^^^^ meta.command.echo.dosbatch
::      ^^^ meta.command.echo.arguments.dosbatch
::         ^^^^^^^^^^^^^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^ constant.language.dosbatch
::          ^ keyword.operator.conditional.dosbatch
::            ^^ comment.line.colon.dosbatch punctuation.definition.comment.dosbatch

   ECHO /?
:: ^^^^ meta.command.echo.dosbatch
::     ^^^ meta.command.echo.arguments.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.help.dosbatch

   ECHO /? ignored
::^ - meta.command
:: ^^^^ meta.command.echo.dosbatch - meta.string
::     ^^^ meta.command.echo.arguments.dosbatch
::        ^^^^^^^^ - meta.command
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.help.dosbatch
::        ^ - variable - comment
::         ^^^^^^^ comment.line.ignored.dosbatch
::                ^ - comment

   ECHO /? :: comment
::^ - meta.command
:: ^^^^ meta.command.echo.dosbatch - meta.string
::     ^^^ meta.command.echo.arguments.dosbatch
::        ^^^^^^^^^^^ - meta.command
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.help.dosbatch
::        ^ - variable - comment
::         ^^^^^^^^^^ comment.line.colon.dosbatch
::         ^^ punctuation.definition.comment.dosbatch
::                   ^ - comment

   ECHO /? rem comment
::^ - meta.command
:: ^^^^ meta.command.echo.dosbatch - meta.string
::     ^^^ meta.command.echo.arguments.dosbatch
::        ^ - meta.command
::         ^^^ meta.command.rem.dosbatch - comment
::            ^^^^^^^^ meta.command.rem.dosbatch comment.line.rem.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.help.dosbatch
::        ^ - keyword - variable - comment
::                    ^ - comment

   ECHO^
:: ^^^^ meta.command.echo.dosbatch support.function.builtin.dosbatch
::     ^^ meta.command.echo.arguments.dosbatch
::     ^ punctuation.separator.continuation.line.dosbatch

   ECHO^
   /? ignored
::^^^ meta.command.echo.arguments.dosbatch
::   ^^^^^^^^ - meta.command
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.help.dosbatch
::   ^ - variable - comment
::    ^^^^^^^ comment.line.ignored.dosbatch
::           ^ - comment

   ECHO .
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch - meta.string
::      ^ meta.command.echo.output.dosbatch meta.string.dosbatch
::       ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::      ^ string.unquoted.dosbatch
::       ^ - string

   ECHO.
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
::      ^ - meta.command
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch

   ECHO./? will display help
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch
::                          ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                          ^ - string

   ECHO :
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
::      ^ meta.command.echo.output.dosbatch meta.string.dosbatch
::       ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::      ^ string.unquoted.dosbatch
::       ^ - string

   ECHO:
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
::      ^ - meta.command
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch

   ECHO:/? will display help
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch
::                          ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                          ^ - string

   ECHO ^
   do not break out of an echo with an escaped newline
:: <- string.unquoted.dosbatch
::^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                                                    ^ - meta.string - string
::    ^^^ - keyword.operator
::        ^^^^^ - support.function

   ECHO "
::      ^ meta.string.dosbatch string.unquoted.dosbatch - constant - puntuation
::       ^ - meta.string - string

   ECHO "^
::      ^^ meta.string.dosbatch string.unquoted.dosbatch - constant - puntuation
::        ^ - meta.string - string

   ECHO "^
   no string"
:: ^^^^^^^^^^ - meta.command.echo - string.quoted

   ECHO ""^
   continued string
:: ^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                 ^ - meta.command - meta.string - string

   ECHO """^
   no string"
:: ^^^^^^^^^^ - meta.command.echo - string.quoted

   ECHO """"^
   continued string
:: ^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                 ^ - meta.command - meta.string - string

   ECHO "foo^
   no string"
:: ^^^^^^^^^^ - meta.command.echo - string.quoted

   ECHO "foo"^
   continued string
:: ^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                 ^ - meta.command - meta.string - string

   ECHO "foo"
::      ^^^^^ string.unquoted.dosbatch - constant - puntuation
::           ^ - meta.command - meta.string - string

   ECHO "foo"bar"baz"
::     ^ - meta.string - string
::      ^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - puntuation
::                   ^ - meta.string - string

   ECHO foo"bar>nul && echo baz
::     ^ - meta.string - string
::      ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - puntuation
::                             ^ - meta.string - string

   ECHO foo"bar">nul && echo baz
::     ^ - meta.string - string
::      ^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - puntuation
::              ^ keyword.operator.redirection.dosbatch
::               ^^^ constant.language.dosbatch
::                   ^^ keyword.operator.conditional.dosbatch
::                      ^^^^ support.function.builtin.dosbatch
::                           ^^^ meta.string.dosbatch string.unquoted.dosbatch
::                              ^ - meta.command - meta.string - string


:: Escape Characters

   ECHO %% ^^! ^& ^| ^( ^)
:: ^^^^^ meta.command.echo.dosbatch - meta.string
::      ^^^^^^^^^^^^^^^^^^ meta.command.echo.output.dosbatch meta.string.dosbatch
::                        ^ - meta.command - meta.string - string
:: ^^^^ support.function.builtin.dosbatch
::      ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::      ^^ constant.character.escape.dosbatch
::         ^^^ constant.character.escape.dosbatch
::             ^^ constant.character.escape.dosbatch
::                ^^ constant.character.escape.dosbatch
::                   ^^ constant.character.escape.dosbatch
::                      ^^ constant.character.escape.dosbatch

   ECHO ^^escaped ^continuation
::      ^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::        ^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant
::                ^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::                  ^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant

   ECHO ^^^escaped ^^^conti^nuation
::      ^^^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::          ^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant
::                 ^^^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::                     ^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant
::                         ^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::                           ^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant

   ECHO ^escaped "^no ^escape" ^escaped
::      ^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant
::                             ^^ meta.string.dosbatch string.unquoted.dosbatch constant.character.escape.dosbatch
::                               ^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant

   ECHO "^no ^escape %% ^^! ^& ^| ^( ^)"
::      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation


:: Variables

   ECHO %1 %* %~dpf$PATH:5 %~1
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.dosbatch
::         ^ punctuation.definition.variable.dosbatch
::         ^^ variable.parameter.dosbatch
::            ^ punctuation.definition.variable.dosbatch
::            ^^^^^^^^^^^ variable.parameter.dosbatch
::                         ^ punctuation.definition.variable.dosbatch
::                         ^^^ variable.parameter.dosbatch

   ECHO %variable^% !variable^!
::      ^ meta.variable.dosbatch punctuation.definition.variable.begin.dosbatch - variable
::       ^^^^^^^^^ meta.variable.dosbatch variable.other.readwrite.dosbatch
::                ^ meta.variable.dosbatch punctuation.definition.variable.end.dosbatch - variable
::                  ^ meta.variable.dosbatch punctuation.definition.variable.begin.dosbatch - variable
::                   ^^^^^^^^^ meta.variable.dosbatch variable.other.readwrite.dosbatch
::                            ^ meta.variable.dosbatch punctuation.definition.variable.end.dosbatch - variable

   ECHO %^
   variable%
:: ^^^^^^^^ meta.variable.dosbatch variable.other.readwrite.dosbatch
::         ^ meta.variable.dosbatch punctuation.definition.variable.end.dosbatch

   ECHO %sub:str1=str2% !sub:str1=str2!
::     ^ - meta.variable
::      ^^^^^ meta.variable.dosbatch - meta.substitution - meta.substring
::           ^^^^^^^^^ meta.variable.dosbatch meta.substitution.dosbatch - meta.substring
::                    ^ meta.variable.dosbatch - meta.substitution - meta.substring
::                     ^ - meta.variable
::                      ^^^^^ meta.variable.dosbatch - meta.substitution - meta.substring
::                           ^^^^^^^^^ meta.variable.dosbatch meta.substitution.dosbatch - meta.substring
::                                    ^ meta.variable.dosbatch - meta.substitution - meta.substring
::                                     ^ - meta.variable
::      ^ punctuation.definition.variable.begin.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.separator.dosbatch
::           ^^^^ string.unquoted.dosbatch
::               ^ punctuation.separator.dosbatch
::                ^^^^ string.unquoted.dosbatch
::                    ^ punctuation.definition.variable.end.dosbatch
::                      ^ punctuation.definition.variable.begin.dosbatch
::                       ^^^ variable.other.readwrite.dosbatch
::                          ^ punctuation.separator.dosbatch
::                           ^^^^ string.unquoted.dosbatch
::                               ^ punctuation.separator.dosbatch
::                                ^^^^ string.unquoted.dosbatch
::                                    ^ punctuation.definition.variable.end.dosbatch

   ECHO %substr:~0,-2% !substr:~0,-2!
::     ^ - meta.variable
::      ^^^^^^^^^ meta.variable.dosbatch - meta.substring - meta.substitution
::               ^^^^ meta.variable.dosbatch meta.substring.dosbatch - meta.substitution
::                   ^ meta.variable.dosbatch - meta.substring - meta.substitution
::                    ^ - meta.variable
::                      ^^^^^^^^ meta.variable.dosbatch - meta.substring - meta.substitution
::                              ^^^^ meta.variable.dosbatch meta.substring.dosbatch - meta.substitution
::                                  ^ meta.variable.dosbatch - meta.substring - meta.substitution
::                                   ^ - meta.variable
::      ^ punctuation.definition.variable.begin.dosbatch
::       ^^^^^^ variable.other.readwrite.dosbatch
::             ^^ punctuation.separator.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                ^ punctuation.separator.comma.dosbatch
::                 ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                  ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                   ^ punctuation.definition.variable.end.dosbatch
::                     ^ punctuation.definition.variable.begin.dosbatch
::                      ^^^^^^ variable.other.readwrite.dosbatch
::                            ^^ punctuation.separator.dosbatch
::                              ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                               ^ punctuation.separator.comma.dosbatch
::                                ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                                 ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                                  ^ punctuation.definition.variable.end.dosbatch

   ECHO %b:~-5% !b:~+5!
::     ^ - meta.variable
::      ^^^^ meta.variable.dosbatch - meta.substring
::          ^^ meta.variable.dosbatch meta.substring.dosbatch
::            ^ meta.variable.dosbatch - meta.substring
::             ^ - meta.variable
::               ^^^ meta.variable.dosbatch - meta.substring
::                  ^^ meta.variable.dosbatch meta.substring.dosbatch
::                    ^ meta.variable.dosbatch - meta.substring
::                     ^ - meta.variable
::      ^ punctuation.definition.variable.begin.dosbatch
::       ^ variable.other.readwrite.dosbatch
::        ^^ punctuation.separator.dosbatch
::          ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::           ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::            ^ punctuation.definition.variable.end.dosbatch
::              ^ punctuation.definition.variable.begin.dosbatch
::               ^ variable.other.readwrite.dosbatch
::                ^^ punctuation.separator.dosbatch
::                  ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                   ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                    ^ punctuation.definition.variable.end.dosbatch

   ECHO !t:%foo%=%bar:~0,-4%!
::     ^ - meta.variable
::      ^^^ meta.variable.dosbatch - meta.substring - meta.substitution - meta.variable meta.variable
::         ^^^^^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch
::              ^ meta.variable.dosbatch meta.substitution.dosbatch - meta.variable meta.variable
::               ^^^^^^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch
::                     ^^^^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch meta.substring.dosbatch
::                         ^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch
::                          ^ meta.variable.dosbatch - meta.substring - meta.substitution
::                           ^ - meta.variable
::      ^ punctuation.definition.variable.begin.dosbatch
::       ^ variable.other.readwrite.dosbatch
::        ^ punctuation.separator.dosbatch
::         ^ punctuation.definition.variable.begin.dosbatch
::             ^ punctuation.definition.variable.end.dosbatch
::              ^ punctuation.separator.dosbatch
::               ^ punctuation.definition.variable.begin.dosbatch
::                ^^^ variable.other.readwrite.dosbatch
::                   ^^ punctuation.separator.dosbatch
::                     ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                      ^ punctuation.separator.comma.dosbatch
::                       ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                        ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                         ^^ punctuation.definition.variable.end.dosbatch

   ECHO %t:!foo!=!bar:~0,-4!%
::     ^ - meta.variable
::      ^^^ meta.variable.dosbatch - meta.substring - meta.substitution - meta.variable meta.variable
::         ^^^^^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch
::              ^ meta.variable.dosbatch meta.substitution.dosbatch - meta.variable meta.variable
::               ^^^^^^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch
::                     ^^^^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch meta.substring.dosbatch
::                         ^ meta.variable.dosbatch meta.substitution.dosbatch meta.variable.dosbatch
::                          ^ meta.variable.dosbatch - meta.substring - meta.substitution
::                           ^ - meta.variable
::      ^ punctuation.definition.variable.begin.dosbatch
::       ^ variable.other.readwrite.dosbatch
::        ^ punctuation.separator.dosbatch
::         ^ punctuation.definition.variable.begin.dosbatch
::             ^ punctuation.definition.variable.end.dosbatch
::              ^ punctuation.separator.dosbatch
::               ^ punctuation.definition.variable.begin.dosbatch
::                ^^^ variable.other.readwrite.dosbatch
::                   ^^ punctuation.separator.dosbatch
::                     ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                      ^ punctuation.separator.comma.dosbatch
::                       ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                        ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                         ^^ punctuation.definition.variable.end.dosbatch

   ECHO Not% a variable
::      ^^^ - keyword.operator
::         ^^^^^^^^^^^^ - variable.other

   ECHO Not! a variable
::      ^^^ - keyword.operator
::         ^^^^^^^^^^^^ - variable.other

   ren example.txt example_%today%.txt
::                         ^ punctuation.definition.variable.begin.dosbatch
::                         ^^^^^^^ meta.variable.dosbatch
::                               ^ punctuation.definition.variable.end.dosbatch

   powershell get-date -uformat "%%Y%%m%%d" > today.txt
::                              ^^^^^^^^^^^ string.quoted.double.dosbatch
::                               ^^ constant.character.escape.dosbatch
::                                 ^ - constant.character.escape.dosbatch
::                                  ^^ constant.character.escape.dosbatch
::                                    ^ - constant.character.escape.dosbatch
::                                     ^^ constant.character.escape.dosbatch
::                                       ^ - constant.character.escape.dosbatch


:: command SET variable=string

   set foo_bar
:: ^^^^^^^^^^^ meta.command.set.dosbatch
::            ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^^^ variable.other.readwrite.dosbatch

   set rem=bar
:: ^^^^^^^^^^^ meta.command.set.dosbatch
::            ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^^^ variable.other.readwrite
::        ^ keyword.operator.assignment
::         ^^^ string.unquoted

   set rem bar = baz
:: ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::                  ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - variable.other.readwrite
::     ^^^^^^^^ variable.other.readwrite
::             ^ keyword.operator.assignment
::               ^^^ string.unquoted

   set "foo"="bar" & echo !foo"!
:: ^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::                ^^^ - meta.command
::                   ^^^^^ meta.command.echo.dosbatch
::                        ^^^^^^ meta.command.echo.output.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite
::         ^ - punctuation
::          ^ keyword.operator.assignment
::           ^ - punctuation
::           ^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.end
::                ^ - string
::                 ^ keyword.operator.conditional.dosbatch
::                   ^^^^ support.function.builtin.dosbatch

   set "foo"=bar" & echo !foo"!
:: ^^^^^^^^^^^^^^ meta.command.set.dosbatch
::               ^^^ - meta.command
::                  ^^^^^ meta.command.echo.dosbatch
::                       ^^^^^^ meta.command.echo.output.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite
::         ^ - punctuation
::          ^ keyword.operator.assignment
::           ^^^^ string.quoted.double.dosbatch
::              ^ punctuation.definition.string.end
::               ^ - string
::                ^ keyword.operator.conditional.dosbatch
::                  ^^^^ support.function.builtin.dosbatch

   set "foo"="bar & echo !foo"!
:: ^^^^^^^^^^^ meta.command.set.dosbatch
::            ^^^^^^ - meta.command
::                  ^^^^^ meta.command.echo.dosbatch
::                       ^^^^^^ meta.command.echo.output.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite
::         ^ - punctuation
::          ^ keyword.operator.assignment
::           ^ punctuation.definition.string.end
::            ^^^ comment.line.ignored.dosbatch
::                ^ keyword.operator.conditional.dosbatch
::                  ^^^^ support.function.builtin.dosbatch

   set "foo"=ba"r & echo !foo"!
:: ^^^^^^^^^^^^^ meta.command.set.dosbatch
::              ^^^^ - meta.command
::                  ^^^^^ meta.command.echo.dosbatch
::                       ^^^^^^ meta.command.echo.output.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite
::         ^ - punctuation
::          ^ keyword.operator.assignment
::           ^^^ string.quoted.double.dosbatch
::             ^ punctuation.definition.string.end
::              ^ comment.line.ignored.dosbatch
::                ^ keyword.operator.conditional.dosbatch
::                  ^^^^ support.function.builtin.dosbatch

   set "foo"=b"ar ba"z & echo !foo"!
:: ^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::                   ^^ - meta.command
::                       ^^^^^ meta.command.echo.dosbatch
::                            ^^^^^^ meta.command.echo.output.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite
::         ^ - punctuation
::          ^ keyword.operator.assignment
::           ^^^^^^^^ string.quoted.double.dosbatch
::                  ^ punctuation.definition.string.end
::                   ^ comment.line.ignored.dosbatch
::                     ^ keyword.operator.conditional.dosbatch
::                       ^^^^ support.function.builtin.dosbatch

   set "foo"=b"ar "ba"z & echo !foo"!
:: ^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::                    ^^ - meta.command
::                        ^^^^^ meta.command.echo.dosbatch
::                             ^^^^^^ meta.command.echo.output.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite
::         ^ - punctuation
::          ^ keyword.operator.assignment
::           ^^^^^^^^^ string.quoted.double.dosbatch
::                   ^ punctuation.definition.string.end
::                    ^ comment.line.ignored.dosbatch
::                      ^ keyword.operator.conditional.dosbatch
::                        ^^^^ support.function.builtin.dosbatch

   set "foo"=b"ar^
    b)a"z & echo !foo"!
:: ^^^^^^^^^ - meta.command.set - string
::          ^^^^^ meta.command.echo.dosbatch
::               ^^^^^^ meta.command.echo.output.dosbatch
::        ^ keyword.operator.conditional.dosbatch
::          ^^^^ support.function.builtin.dosbatch

   set "foo"=b"a"r^
    b)a"z & echo !foo"!
:: ^^^^^ string.quoted.double.dosbatch
::     ^ punctuation.definition.string.end
::      ^ comment.line.ignored.dosbatch
::        ^ keyword.operator.conditional.dosbatch
::          ^^^^ support.function.builtin.dosbatch

   set "foo=b"ar^
    b)a"z & echo !foo"!
:: ^^^^^ string.quoted.double.dosbatch
::     ^ punctuation.definition.string.end
::      ^ comment.line.ignored.dosbatch
::        ^ keyword.operator.conditional.dosbatch
::          ^^^^ support.function.builtin.dosbatch

   SET T=%TIME: =0%
:: ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::       ^^^^^^^^^^ meta.variable.dosbatch
::                 ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^ variable.other.readwrite
::      ^ keyword.operator.assignment
::       ^ punctuation.definition.variable.begin.dosbatch
::        ^^^^ variable.other.readwrite.dosbatch
::                ^ punctuation.definition.variable.end.dosbatch

   set abc /a = 1+2
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^^^ variable.other.readwrite
::            ^ keyword.operator.assignment - meta.expression.dosbatch
::              ^^^ string.unquoted


:: Double quotes after the equal sign, or part of a quoted assignment are literal chars
   set "XML=<foo bar="%ATTR1%" baz="prefix-%ATTR2%" />"
::     ^ punctuation.definition.string.begin
::                   ^ - punctuation
::                    ^^^^^^^ meta.variable.dosbatch
::                           ^ - punctuation
::                                 ^ - punctuation
::                                         ^^^^^^^ meta.variable.dosbatch
::                                                ^ - punctuation
::                                                    ^ punctuation.definition.string.end

   set folder=%TEMP%\subfolder\
::     ^^^^^^ variable.other.readwrite.dosbatch
::            ^^^^^^ meta.variable.dosbatch
::                  ^^^^^^^^^^^ string.unquoted - variable.other

   set test="c:\program files (x86)\%example%_%%test"abc
::     ^^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^ punctuation.definition.string.begin.dosbatch
::          ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.quoted.double.dosbatch - meta.interpolation
::                                  ^^^^^^^^^ meta.string.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch - string
::                                           ^^^^^^^^ meta.string.dosbatch string.quoted.double.dosbatch - meta.interpolation
::                                            ^^ constant.character.escape.dosbatch
::                                                  ^ punctuation.definition.string.end.dosbatch
::                                                   ^^^ string.unquoted.dosbatch

   set "X="
::     ^^^^ string.quoted.double
::     ^ punctuation.definition.string.begin
::      ^ variable.other.readwrite
::       ^ keyword.operator.assignment
::        ^ punctuation.definition.string.end
::         ^ - string


:: command SET /A "variable=expression"

   set /A hello_world
:: ^^^ support.function.builtin.dosbatch
::        ^^^^^^^^^^^ meta.expression.dosbatch
::                   ^ - meta.expression.dosbatch

   SET /A r = 010 + 0x20 - 24
::            ^ meta.number.integer.octal.dosbatch constant.numeric.base.dosbatch
::             ^^ meta.number.integer.octal.dosbatch constant.numeric.value.dosbatch
::                  ^^ meta.number.integer.hexadecimal.dosbatch constant.numeric.base.dosbatch
::                    ^^ meta.number.integer.hexadecimal.dosbatch constant.numeric.value.dosbatch
::                         ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   set /a "num%%=5"
::        ^^^^^^^^^ meta.expression.dosbatch
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
::              ^ punctuation.separator.comma.dosbatch
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
::                        ^ punctuation.separator.comma.dosbatch
::                              ^ keyword.operator.assignment.dosbatch
::                                      ^ keyword.operator.arithmetic.dosbatch

   set hello=4
   set wow=2
   set /A hello*=wow*=2
::        ^^^^^ variable.other.readwrite
::             ^^ keyword.operator.assignment.augmented
::               ^^^ variable.other.readwrite
::                  ^^ keyword.operator.assignment.augmented
::                    ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /A "hello*=wow"
::        ^^^^^^^^^^^^ meta.expression.dosbatch string.quoted.double
::        ^ punctuation.definition.string.begin
::         ^^^^^ variable.other.readwrite
::              ^^ keyword.operator.assignment.augmented
::                   ^ punctuation.definition.string.end

   set /A "%hello%+%wow%"
::        ^^^^^^^^^^^^^^^ meta.expression.dosbatch string.quoted.double
::        ^ punctuation.definition.string.begin
::         ^^^^^^^ meta.variable.dosbatch
::         ^ punctuation.definition.variable.begin
::               ^ punctuation.definition.variable.end
::                ^ keyword.operator.arithmetic
::                 ^^^^^ meta.variable.dosbatch
::                 ^ punctuation.definition.variable.begin
::                  ^^^ variable.other.readwrite
::                     ^ punctuation.definition.variable.end
::                      ^ punctuation.definition.string.end

   set /A "%hello%+wow"
::        ^^^^^^^^^^^^^ meta.expression.dosbatch string.quoted.double
::         ^^^^^^^ meta.variable.dosbatch
::         ^ punctuation.definition.variable.begin
::               ^ punctuation.definition.variable.end
::                ^ keyword.operator.arithmetic

   set /A 1+"%hello%"
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::          ^^^^^^^^^ string.quoted.double
::          ^ punctuation.definition.string.begin
::           ^ punctuation.definition.variable.begin
::           ^^^^^^^ meta.variable.dosbatch
::                 ^ punctuation.definition.variable.end
::                  ^ punctuation.definition.string.end

   set a12b=21
   REM the line below is actually invalid, as % is not expected to be used in variables before an augmented operator
   set /a %a12b%*=2
::         ^^^^ variable.other.readwrite
::              ^^ keyword.operator.assignment.augmented
::                ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a a12b*=2
::        ^^^^ variable.other.readwrite
::            ^^ keyword.operator.assignment.augmented
::              ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a  a12b *= 2
::        ^ - variable
::         ^^^^ variable.other.readwrite
::             ^ - variable
::              ^^ meta.expression.dosbatch keyword.operator.assignment.augmented
::                 ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a ! a12b
::        ^ keyword.operator.logical
::          ^^^^ variable.other.readwrite

   set /a !a12b
::        ^ keyword.operator.logical
::         ^^^^ variable.other.readwrite

   set /a "! a12b"
::        ^^^^^^^^ meta.expression.dosbatch string.quoted.double
::        ^ punctuation.definition.string.begin
::         ^ keyword.operator.logical
::           ^^^^ variable.other.readwrite
::               ^ punctuation.definition.string.end

   set /a "! %a12b%"
::        ^^^^^^^^^^ meta.expression.dosbatch string.quoted.double
::        ^ punctuation.definition.string.begin
::         ^ keyword.operator.logical
::           ^^^^^^ meta.variable.dosbatch
::           ^ punctuation.definition.variable.begin
::                ^ punctuation.definition.variable.end
::                 ^ punctuation.definition.string.end

   set /a ! "a12b"
::        ^ keyword.operator.logical
::          ^ punctuation.definition.string.begin
::           ^^^^ variable.other.readwrite
::               ^ punctuation.definition.string.end

   set /a !"%a12b%"
::        ^ keyword.operator.logical
::         ^ punctuation.definition.string.begin
::          ^^^^^^ meta.variable.dosbatch
::                ^ punctuation.definition.string.end

   set /a a&=a12b
::         ^ keyword.operator.conditional - meta.expression.dosbatch

   set /a " world"=12
::        ^^^^^^^^ string.quoted.double
::          ^^^^^ variable.other.readwrite
::               ^ punctuation.definition.string.end
::                ^ keyword.operator.assignment
::                 ^^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a "wow"+="2"
::        ^^^^^  string.quoted.double
::         ^^^ variable.other.readwrite
::             ^^ keyword.operator.assignment.augmented - string
::               ^^^ string.quoted.double
::                ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a wow"+="2
::        ^^^ variable.other.readwrite
::           ^^^^ string.quoted.double
::            ^^ keyword.operator.assignment.augmented
::               ^ meta.number.integer.decimal - string constant.numeric.value.dosbatch

   set /a 4*"2+-wow+(3"-2)
::        ^^^^^^^^^^^^^^^^ meta.expression.dosbatch - string string - meta.group meta.group
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::          ^^^^^^^^^^^ string.quoted.double
::          ^ punctuation.definition.string.begin
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^^ keyword.operator.arithmetic
::              ^^^ variable.other.readwrite
::                 ^ keyword.operator.arithmetic
::                  ^^^^^^ meta.group
::                  ^ punctuation.section.group.begin
::                   ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::                    ^ punctuation.definition.string.end
::                     ^ keyword.operator.arithmetic
::                      ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::                       ^ punctuation.section.group.end
::                     ^^^ - string
::                  ^^^ string.quoted.double meta.group

   set /a (8"2")
::        ^^^^^^ meta.group
::        ^ punctuation.section.group.begin
::         ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::          ^ punctuation.definition.string.begin
::          ^^^ string.quoted.double
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^ punctuation.definition.string.end
::             ^ punctuation.section.group.end

   set /a 4*"2+1"1
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::          ^^^^^ string.quoted.double
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^ keyword.operator.arithmetic
::             ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::               ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a 4*"2++1"
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::          ^^^^^^ string.quoted.double
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^^ keyword.operator.arithmetic
::              ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a 4*"2++w"ow
::          ^^^^^^ string.quoted.double
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^^ keyword.operator.arithmetic
::              ^ variable.other.readwrite
::                ^^ variable.other.readwrite

   set /a (8"2")^^1
::              ^ constant.character.escape
::               ^ keyword.operator.arithmetic

   set /a (8"2")^
+1
:: <- keyword.operator.arithmetic

   set /a (abc*(def-(2))/4)"+((1))"
::        ^^^^^^^^^^^^^^^^^ meta.group
::                         ^ - meta.group
::             ^^^^^^^^^ meta.group meta.group
::                  ^^^ meta.group meta.group meta.group
::        ^ punctuation.section.group.begin
::         ^^^ variable.other.readwrite
::            ^ keyword.operator.arithmetic
::             ^ punctuation.section.group.begin
::              ^^^ variable.other.readwrite
::                 ^ keyword.operator.arithmetic
::                  ^ punctuation.section.group.begin
::                   ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::                    ^ punctuation.section.group.end
::                     ^ punctuation.section.group.end
::                      ^ keyword.operator.arithmetic
::                       ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::                        ^ punctuation.section.group.end
::                         ^^^^^^^^ string.quoted.double
::                         ^ punctuation.definition.string.begin
::                          ^ keyword.operator.arithmetic
::                           ^ meta.group punctuation.section.group.begin
::                            ^ meta.group meta.group punctuation.section.group.begin
::                             ^ meta.group meta.group meta.number.integer.decimal constant.numeric.value.dosbatch
::                              ^ meta.group meta.group punctuation.section.group.end
::                               ^ meta.group punctuation.section.group.end
::                                ^ punctuation.definition.string.end - meta.group

   set /a ("a"+b&"c+d")
:: ^^^^^^^^^^^^^ meta.command.set.dosbatch
::        ^^^^^^ meta.expression.dosbatch meta.group
::               ^^^^^^ - meta.command.set
:: ^^^ support.function.builtin.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.expression.dosbatch
::         ^^^ string.quoted.double
::          ^ variable.other.readwrite
::            ^ keyword.operator.arithmetic
::             ^ variable.other.readwrite
::              ^ keyword.operator.conditional
::               ^^^^^^ variable.function.dosbatch

   set /a (a+"b)*2"-1
::        ^^^^^^ meta.group
::        ^ punctuation.section.group.begin
::         ^ variable.other.readwrite
::          ^ keyword.operator.arithmetic
::           ^ punctuation.definition.string.begin
::           ^^^^^^ string.quoted.double
::            ^ variable.other.readwrite
::             ^ punctuation.section.group.end
::              ^ keyword.operator.arithmetic - meta.group
::               ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::                ^ punctuation.definition.string.end
::                 ^ keyword.operator.arithmetic - meta.group
::                  ^ meta.number.integer.decimal constant.numeric.value.dosbatch


:: command SET /P variable=[promptString]

   set /p today=
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch

   set^
   /p today=
::^ - keyword - variable
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.prompt.dosbatch
::   ^ - variable
::    ^^^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch

   set /p^
   today=
::^^^^^^ variable.other.readwrite.dosbatch
::      ^ keyword.operator.assignment.dosbatch

   set /p^
   today^
   =
:: ^ keyword.operator.assignment.dosbatch

   set /p today=enter a %date%: REM this ^is not a comment
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                        ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^^^^^^^^ string.unquoted.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                       ^^ constant.character.escape.dosbatch

   set /p today="enter a %date%: " REM :: this is a comment & echo !today!
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                       ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::                             ^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                ^ - meta.command
::                                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.rem.dosbatch
::                                                         ^^^ - meta.command
::                                                            ^^^^^ meta.command.echo.dosbatch
::                                                                 ^^^^^^^ meta.command.echo.output.dosbatch
::                                                                        ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::              ^^^^^^^^^ string.quoted.double.dosbatch
::                       ^^^^^^ - string
::                             ^^^ string.quoted.double.dosbatch
::                               ^ punctuation.definition.string.end.dosbatch
::                                 ^^^ keyword.declaration.rem.dosbatch
::                                    ^^^^^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch
::                                                         ^^^^^^^^^^^^^^^^ - comment
::                                                          ^ keyword.operator.conditional - comment
::                                                            ^^^^ support.function.builtin.dosbatch
::                                                                 ^^^^^^^ meta.variable.dosbatch

   set /p today="enter a !date!: " this is a comment & echo !today!
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                       ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::                             ^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                ^^^^^^^^^^^^^^^^^^^^^ - meta.command
::                                                     ^^^^^ meta.command.echo.dosbatch
::                                                          ^^^^^^^ meta.command.echo.output.dosbatch
::                                                                 ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::              ^^^^^^^^^ string.quoted.double.dosbatch
::                       ^^^^^^ - string
::                             ^^^ string.quoted.double.dosbatch
::                               ^ punctuation.definition.string.end.dosbatch
::                                 ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                                  ^^^^^^^^^^^^^^^^ - comment
::                                                   ^ keyword.operator.conditional - comment
::                                                     ^^^^ support.function.builtin.dosbatch
::                                                          ^^^^^^^ meta.variable.dosbatch

   set /p today="enter a^
   date: " this is a comment || set today=nothing
:: ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^^ - meta.command
::                              ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::                                               ^ - meta.command
:: ^^^^^^^ string.quoted.double.dosbatch - comment
::        ^ - comment - string
::         ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                          ^^^^^^^^^^^^^^^^^^^^^^ - comment
::                           ^^ keyword.operator.conditional - comment
::                              ^^^ support.function.builtin.dosbatch

   set /p today="enter a^
   date: " this is ^
   a comment || set today=nothing
:: ^^^^^^^^^^^^^ - meta.command
::              ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
::                               ^ - meta.command
:: ^^^^^^^^^ comment.line.ignored.dosbatch
::          ^^^^^^^^^^^^^^^^^^^^^^ - comment
::           ^^ keyword.operator.conditional - comment
::              ^^^ support.function.builtin.dosbatch

   set /p "today"="enter a) %date%: " REM this is a comment & echo !today!
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                          ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::                                ^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                   ^ - meta.command
::                                    ^^^^^^^^^^^^^^^^^^^^^ meta.command.rem.dosbatch
::                                                         ^^^ - meta.command
::                                                            ^^^^^ meta.command.echo.dosbatch
::                                                                 ^^^^^^^ meta.command.echo.output.dosbatch
::                                                                        ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^^ variable.other.readwrite.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                ^ punctuation.definition.string.begin.dosbatch
::                ^^^^^^^^^^ string.quoted.double.dosbatch
::                          ^^^^^^ - string
::                                ^^^ string.quoted.double.dosbatch
::                                  ^ punctuation.definition.prompt.end.dosbatch punctuation.definition.string.end.dosbatch
::                                    ^^^ keyword.declaration.rem.dosbatch
::                                       ^^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch
::                                                         ^^^^^^^^^^^^^^^^ - comment
::                                                          ^ keyword.operator.conditional - comment
::                                                            ^^^^ support.function.builtin.dosbatch
::                                                                 ^^^^^^^ meta.variable.dosbatch

   set /p "today=%enter% a date: " this is a comment & echo !today!
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.variable.dosbatch
::                      ^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                               ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                ^^^^^^^^^^^^^^^^^^^^^ - meta.command
::                                                     ^^^^^ meta.command.echo.dosbatch
::                                                          ^^^^^^^ meta.command.echo.output.dosbatch
::                                                                 ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^^^^^^^ - string
::                      ^^^^^^^^^ string.unquoted.dosbatch
::                               ^ punctuation.definition.prompt.end.dosbatch
::                                 ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                                  ^^^^^^^^^^^^^^^^ - comment
::                                                   ^ keyword.operator.conditional - comment
::                                                     ^^^^ support.function.builtin.dosbatch
::                                                          ^^^^^^^ meta.variable.dosbatch

   set /p "today="%enter% a date: this is a comment & echo !today!
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.command
::                                                    ^^^^^ meta.command.echo.dosbatch
::                                                         ^^^^^^^ meta.command.echo.output.dosbatch
::                                                                ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                                 ^^^^^^^^^^^^^^^^ - comment
::                                                  ^ keyword.operator.conditional - comment
::                                                    ^^^^ support.function.builtin.dosbatch
::                                                         ^^^^^^^ meta.variable.dosbatch

   set /p today=<today.txt
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.redirection.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ keyword.operator.redirection.dosbatch

   set /p today=Enter <today.txt a date
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch - meta.interpolation
::                    ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.redirection.dosbatch
::                              ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch - meta.interpolation
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::                    ^ keyword.operator.redirection.dosbatch

   set /p today=Enter < "..\to day.txt" a date
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                    ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.interpolation.dosbatch meta.redirection.dosbatch
::                      ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch meta.redirection.dosbatch meta.path.dosbatch meta.string.dosbatch
::                                     ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::                    ^ keyword.operator.redirection.dosbatch

   set /p "today=<today.txt"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                         ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                          ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ - keyword
::               ^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::                         ^ punctuation.definition.prompt.end.dosbatch

   set /p "today="<today.txt
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^ keyword.operator.redirection.dosbatch

   set /p "today=" this is ignored <today.txt
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^ - comment - string
::                 ^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                ^ - comment - keyword
::                                 ^ keyword.operator.redirection.dosbatch

   set /p "today="<"c:\this week\to day.txt"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.redirection.dosbatch - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^ keyword.operator.redirection.dosbatch
::                 ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
