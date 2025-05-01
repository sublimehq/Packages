:: SYNTAX TEST "Packages/Batch File/Batch File.sublime-syntax"


:::: [ REM Comments ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   REM/? ignored
:: ^^^^^^^^^^^^^ meta.command.rem.dosbatch
:: ^^^ keyword.declaration.rem.dosbatch
::    ^^ variable.parameter.option.help.dosbatch
::       ^^^^^^^ comment.line.ignored.dosbatch
   REM ^
   /? ignored
:: ^^^^^^^^^^ meta.command.rem.dosbatch
:: ^^ variable.parameter.option.help.dosbatch
::    ^^^^^^^ comment.line.ignored.dosbatch

   REM/?/a
:: ^^^^^^^^ meta.command.rem.dosbatch
:: ^^^ keyword.declaration.rem.dosbatch
::    ^^^^^ comment.line.rem.dosbatch

   REM I'm a (com|ment)
:: ^^^^^^^^^^^^^^^^^^^^^ meta.command.rem.dosbatch
:: ^^^ keyword.declaration.rem.dosbatch - comment
::     ^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch

   ( rem comment )
:: ^^ meta.block.dosbatch - meta.command
::   ^^^^^^^^^^^^^^ meta.block.dosbatch meta.command.rem.dosbatch
:: ^ punctuation.section.block.begin.dosbatch
::   ^^^ keyword.declaration.rem.dosbatch
::       ^^^^^^^^^^ comment.line.rem.dosbatch
   )
:: ^ meta.block.dosbatch punctuation.section.block.end.dosbatch

   REM ^
   I'm a (com|ment)
:: ^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch

   REM ^

   I'm a (com|ment)
:: ^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch

   REM ^
   I'm a (com|ment) ^
   not a comment
:: ^^^^^^^^^^^^^^ - comment

   REM ^
   Line^
   continuation after first token
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.rem.dosbatch comment.line.rem.dosbatch

REM
   not a comment
:: ^^^^^^^^^^^^^^ - comment

REM This follows a REM command
:: <- keyword.declaration.rem.dosbatch - comment
::  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.rem.dosbatch

REM This & and | echo "is commented out" ^
:: <- keyword.declaration.rem.dosbatch
::  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.rem.dosbatch comment.line.rem.dosbatch

::: Test Case : single token continued at next line

REM Line^
continuation
:: <- meta.command.rem.dosbatch comment.line.rem.dosbatch
:: ^^^^^^^^^^ meta.command.rem.dosbatch comment.line.rem.dosbatch

::: Test Case : single token continued after empty line

REM Line^

continuation
:: <- meta.command.rem.dosbatch comment.line.rem.dosbatch
:: ^^^^^^^^^^ meta.command.rem.dosbatch comment.line.rem.dosbatch

::: Test Case : no more continuation after 2nd token

REM Line^

continuation^
not a comment
:: <- - comment
:: ^^^^^^^^^^ - comment

::: Test Case : no continuation after 2nd empty line

REM Line^


not a comment
:: <- - comment
:: ^^^^^^^ - comment

::: Test Case : continuation beginning with literal caret

REM Line^
^continuation
not a comment
:: <- - comment
:: ^^^^^^^^^^ - comment

::: Test Case : continuation beginning escaping caret after empty line

REM Line^

^continuation
not a comment
:: <- - comment
:: ^^^^^^^^^^ - comment

::: Test Case : continuation with only literal caret, no recursive continuation

REM Line^
^
not a comment
:: <- - comment
:: ^^^^^^^^^^ - comment

::: Test Case : continuation with only escaping caret after empty line, no recursive continuation

REM Line^

^
not a comment
:: <- - comment
:: ^^^^^^^^^^ - comment

::: Test Case : no line continuation after 2nd token #1

REM No line ^
continuation
:: <- - comment
:: ^^^^^^^^^^ - comment

::: Test Case : no line continuation after 2nd token #2

REM No line ^
^
:: <- meta.function-call.identifier.dosbatch variable.function.dosbatch punctuation.separator.continuation.line.dosbatch

::: Test Case : no line continuation after 2nd token #3

REM No line ^
^
not a comment
:: <- - comment
::^^^^^^^^^^^^ - comment

:::: [ Label Comments ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::

   ::: Me too!
:: ^^^ punctuation.definition.comment.dosbatch
:: ^^^^^^^^^^^^ comment.line.colon.dosbatch

   :::
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment

   :: Me too!
:: ^^ punctuation.definition.comment.dosbatch
:: ^^^^^^^^^^^ comment.line.colon.dosbatch

   ::
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment

   :+ Me too!
:: ^^ comment.line.colon.dosbatch punctuation.definition.comment.dosbatch
::   ^^^^^^^^^ comment.line.colon.dosbatch - punctuation

   :+
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment

   :+: Me too!
:: ^^^ comment.line.colon.dosbatch punctuation.definition.comment.dosbatch
::    ^^^^^^^^^ comment.line.colon.dosbatch - punctuation

   :+:
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment

   :::^
   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

   :::^

   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

   ::: ^
   A continued comment.^
   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

   ::: ^
   ^
   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

::: ^
^
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment

   ::^
   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

   ::^

   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

   :: ^
   A continued comment.^
   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

   :: ^
   ^
   Me too!
:: ^^^^^^^^ comment.line.colon.dosbatch

:: ^
^
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment
ECHO &&:: A comment
::   ^^ keyword.operator.logical.dosbatch
::     ^^ punctuation.definition.comment.dosbatch
::     ^^^^^^^^^^^^^ comment.line.colon.dosbatch

ECHO &:: A comment
::   ^ keyword.operator.logical.dosbatch
::    ^^ punctuation.definition.comment.dosbatch
::    ^^^^^^^^^^^^^ comment.line.colon.dosbatch

ECHO ||:: A comment
::   ^^ keyword.operator.logical.dosbatch
::     ^^ punctuation.definition.comment.dosbatch
::     ^^^^^^^^^^^^^ comment.line.colon.dosbatch

ECHO |:: Not a comment
::   ^ keyword.operator.assignment.pipe.dosbatch
::    ^^^^^^^^^^^^^^^^ invalid.illegal.unexpected.dosbatch

ECHO : Not a comment ^
::   ^^^^^^^^^^^^^^^^^^ - comment
::                   ^ punctuation.separator.continuation.line.dosbatch
::                    ^ - punctuation

ECHO : Not a comment ^
:: Me not, too
:: <- - comment
::^^^^^^^^^^^^^ - comment

:::: [ Diff Merge Conflict Marker Tests ]::::::::::::::::::::::::::::::::::::::

<<<<<<< HEAD
:: <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
::^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
::     ^ meta.block.conflict.begin.diff - entity - punctuation
::      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
::          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
:: <- meta.block.conflict.separator.diff punctuation.section.block.diff
::^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
::     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
:: <- meta.block.conflict.end.diff punctuation.section.block.end.diff
::^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
::     ^ meta.block.conflict.end.diff - entity - punctuation
::      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
::            ^ meta.block.conflict.end.diff - entity - punctuation

:: conflict in block

(
<<<<<<< HEAD
:: <- meta.block.dosbatch meta.block.conflict.begin.diff punctuation.section.block.begin.diff
::^^^^^ meta.block.dosbatch meta.block.conflict.begin.diff punctuation.section.block.begin.diff
::     ^ meta.block.dosbatch meta.block.conflict.begin.diff - entity - punctuation
::      ^^^^ meta.block.dosbatch meta.block.conflict.begin.diff entity.name.section.diff
::          ^ meta.block.dosbatch meta.block.conflict.begin.diff - entity - punctuation

=======
:: <- meta.block.dosbatch meta.block.conflict.separator.diff punctuation.section.block.diff
::^^^^^ meta.block.dosbatch meta.block.conflict.separator.diff punctuation.section.block.diff
::     ^ meta.block.dosbatch meta.block.conflict.separator.diff - punctuation

>>>>>>> master
:: <- meta.block.dosbatch meta.block.conflict.end.diff punctuation.section.block.end.diff
::^^^^^ meta.block.dosbatch meta.block.conflict.end.diff punctuation.section.block.end.diff
::     ^ meta.block.dosbatch meta.block.conflict.end.diff - entity - punctuation
::      ^^^^^^ meta.block.dosbatch meta.block.conflict.end.diff entity.name.section.diff
::            ^ meta.block.dosbatch meta.block.conflict.end.diff - entity - punctuation
)

:::: [ @ Operator ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   @
:: ^ keyword.operator.at.dosbatch

   @::comment
:: ^ keyword.operator.at.dosbatch
::  ^^^^^^^^^^ comment.line.colon.dosbatch

   @:label
:: ^ keyword.operator.at.dosbatch
::  ^ punctuation.definition.label.dosbatch
::   ^^^^^ entity.name.label.dosbatch

   @ :label
:: ^ keyword.operator.at.dosbatch
::   ^ punctuation.definition.label.dosbatch
::    ^^^^^ entity.name.label.dosbatch

   @:@@@@@
:: ^ keyword.operator.at.dosbatch
::  ^ punctuation.definition.label.dosbatch
::   ^^^^^ entity.name.label.dosbatch

   @ :@@@@@
:: ^ keyword.operator.at.dosbatch
::   ^ punctuation.definition.label.dosbatch
::    ^^^^^ entity.name.label.dosbatch

   @ECHO OFF
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch

   @ ECHO OFF
:: ^ keyword.operator.at.dosbatch
::   ^^^^ support.function.builtin.dosbatch

   @ @ @@ ECHO OFF
:: ^ keyword.operator.at.dosbatch
::   ^ keyword.operator.at.dosbatch
::     ^^ keyword.operator.at.dosbatch
::        ^^^^ support.function.builtin.dosbatch

   IF "%1"=="--debug" (@echo off) ELSE (@ @ GOTO :EOF)
::                     ^ keyword.operator.at.dosbatch
::                      ^^^^ support.function.builtin.dosbatch
::                                      ^ keyword.operator.at.dosbatch
::                                        ^ keyword.operator.at.dosbatch
::                                          ^^^^ keyword.control.flow.goto.dosbatch

   @(goto) 2>nul || @(title %ComSpec%)
:: ^ keyword.operator.at.dosbatch
::  ^^^^^^ meta.block.dosbatch
::                  ^ keyword.operator.at.dosbatch
::                   ^^^^^^^^^^^^^^^^^ meta.block.dosbatch

   E@CHO john.doe@email.com
::  ^ - keyword.operator
::               ^ - keyword.operator

   E^@CHO john.doe^@email.com
::  ^^ constant.character.escape.dosbatch
::                ^^ constant.character.escape.dosbatch

   "E^@CHO" "john.doe^@email.com"
::   ^^ - constant.character - keyword.operator
::                   ^^ - constant.character - keyword.operator

   dir @logs
::     ^ - keyword.operator

   dir C:\@logs
::        ^ - keyword.operator

   my @
::    ^ - keyword.operator

:::: [ Labels ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   :l
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :(
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :)
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :[
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :]
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :{
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :}
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - punctuation
::   ^ - entity

   :^(
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^)
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^[
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^]
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^{
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^}
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^>
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^<
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^&
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^|
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch constant.character.escape.dosbatch - punctuation
::    ^ - entity

   :^%
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch - constant.character.escape - punctuation
::    ^ - entity

   :%%
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^ entity.name.label.dosbatch - constant.character.escape - punctuation
::    ^ - entity

   :%
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - constant.character.escape - punctuation
::   ^ - entity

   :%var% ignored content ( & echo foo
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^ entity.name.label.dosbatch
::       ^ - entity - comment
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :!
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^ entity.name.label.dosbatch - constant.character.escape - punctuation
::   ^ - entity

   :!var! ignored content ( | echo foo
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^ entity.name.label.dosbatch
::       ^ - entity - comment
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :foo bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::      ^^^ comment.line.ignored.dosbatch

   :foo+bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::     ^^^^ comment.line.ignored.dosbatch

   :foo:bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::     ^^^^ comment.line.ignored.dosbatch

   :foo,bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^ entity.name.label.dosbatch
::     ^ - punctuation

   :foo;bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^ entity.name.label.dosbatch
::     ^ - punctuation

   :foo=bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^ entity.name.label.dosbatch
::     ^ - punctuation

   :foo>bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::     ^^^^^ comment.line.ignored.dosbatch

   :foo<bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::     ^^^^^ comment.line.ignored.dosbatch

   :foo&bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::     ^^^^^ comment.line.ignored.dosbatch

   :foo|bar
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch
::     ^^^^^ comment.line.ignored.dosbatch

   :==foo==
:: ^ punctuation.definition.label.dosbatch
::  ^^ comment.line.ignored.dosbatch
::    ^^^^^ entity.name.label.dosbatch

   :== foo ==
:: ^ punctuation.definition.label.dosbatch
::  ^^^ comment.line.ignored.dosbatch
::     ^^^ entity.name.label.dosbatch
::         ^^^ comment.line.ignored.dosbatch

   :== &foo ==
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^^^^^ comment.line.ignored.dosbatch

   :== ^
   foo ===
:: ^^^^^^^ comment.line.ignored.dosbatch

   :This is a #@$虎 strange label
::^^ - entity
:: ^ punctuation.definition.label.dosbatch
::  ^^^^ entity.name.label.dosbatch
::      ^ - entity - comment
::       ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :This" is a #@$虎" strange label
::^^ - entity
::  ^^^^^ entity.name.label.dosbatch
::       ^ - entity - comment
::        ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :"This is a #@$虎" strange label
::^^ - entity
::  ^^^^^ entity.name.label.dosbatch
::       ^ - entity - comment
::        ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :> ignored content ( & | )
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch - punctuation

   :< ignored content ( & | )
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch - punctuation

   :& ignored content ( & | )
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch - punctuation

   :| ignored content ( & | )
:: ^ punctuation.definition.label.dosbatch
::  ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch - punctuation

   : ^
   Me too!
:: ^^^^^^^ comment.line.ignored.dosbatch

   : ^

   Me too!
:: ^^^^^^^ comment.line.ignored.dosbatch

   : ^
   A continued comment.^
   Me too!
:: ^^^^^^^ comment.line.ignored.dosbatch

   : ^
   ^
   Me too!
:: ^^^^^^^^ comment.line.ignored.dosbatch

: ^
^
   Not me, though.
:: ^^^^^^^^^^^^^^^^ - comment

:::: [ Control Flow ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   CALL/?
:: ^^^^ meta.function-call.dosbatch keyword.control.flow.call.dosbatch
::     ^^ variable.parameter.option.help.dosbatch

   CALL /?
:: ^^^^ meta.function-call.dosbatch keyword.control.flow.call.dosbatch
::      ^^ variable.parameter.option.help.dosbatch

   CALL:This is a #@$虎 ^strange %%label
::^ - meta.function-call
:: ^^^^ meta.function-call.dosbatch
::     ^^^^^ meta.function-call.identifier.dosbatch
::          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                                     ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::     ^ punctuation.definition.label.dosbatch
::     ^^^^^ variable.label.dosbatch - keyword
::          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - variable
::                     ^^ constant.character.escape.dosbatch
::                              ^^ constant.character.escape.dosbatch

   CALL:EOF
::^ - meta.function-call
:: ^^^^ meta.function-call.dosbatch
::     ^^^^ meta.function-call.identifier.dosbatch
::         ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::     ^ punctuation.definition.label.dosbatch
::     ^^^^ variable.label.dosbatch - keyword

   CALL ^
   :EOF
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ - meta.function-call
:: ^ punctuation.definition.label.dosbatch
:: ^^^^ variable.label.dosbatch - keyword

   CALL ^

   :EOF
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ - meta.function-call
:: ^ punctuation.definition.label.dosbatch
:: ^^^^ variable.label.dosbatch - keyword

   CALL ^


   :EOF
:: ^^^^ - meta.function-call
:: ^ punctuation.definition.label.dosbatch
::  ^^^ entity.name.label.dosbatch

   CALL :foo 10 %1
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^ meta.function-call.identifier.dosbatch
::          ^^^^^^ meta.function-call.arguments.dosbatch
::                ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::           ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^^ variable.parameter.dosbatch

   CALL :foo%bar% 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^^^ meta.function-call.identifier.dosbatch
::                ^^ meta.function-call.arguments.dosbatch
::                  ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::                ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :foo %bar% 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^ meta.function-call.identifier.dosbatch
::           ^^^^^^^^ meta.function-call.arguments.dosbatch
::                   ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::           ^^^^^ meta.interpolation.dosbatch - variable.label - keyword
::                 ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :( 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^ meta.function-call.identifier.dosbatch
::        ^^^ meta.function-call.arguments.dosbatch
::           ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^ variable.label.dosbatch - keyword
::         ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^( 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :) 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^ meta.function-call.identifier.dosbatch
::        ^^^ meta.function-call.arguments.dosbatch
::           ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^ variable.label.dosbatch - keyword
::         ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^) 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^> 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^< 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^& 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^| 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^% 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword - constant.character
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :%% 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :%label% 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^^ meta.function-call.identifier.dosbatch
::              ^^^ meta.function-call.arguments.dosbatch
::                 ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^^^^^ variable.label.dosbatch meta.interpolation.dosbatch
::       ^ punctuation.section.interpolation.begin.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ punctuation.section.interpolation.end.dosbatch
::               ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :^! 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^ meta.function-call.arguments.dosbatch
::            ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.label.dosbatch
::      ^^^ variable.label.dosbatch - keyword
::       ^^ constant.character.escape.dosbatch
::          ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :!label! 10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^^ meta.function-call.identifier.dosbatch
::              ^^^ meta.function-call.arguments.dosbatch
::                 ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^^^^^ variable.label.dosbatch meta.interpolation.dosbatch
::       ^ punctuation.section.interpolation.begin.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ punctuation.section.interpolation.end.dosbatch
::               ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL :foo bar & :: foo > %0 , bar > %1
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ - comment - string - variable
::           ^^^ meta.string.dosbatch string.unquoted.dosbatch

   CALL :foo+bar & :: foo > %0, bar ignored for label lookup, no arguments
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch
::              ^ - comment - variable

   CALL :foo:bar & :: foo > %0, bar ignored for label lookup, no arguments
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch
::              ^ - comment - variable

   CALL :foo,bar & :: foo > %0 , bar > %1
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ punctuation.separator.comma.dosbatch - comment - string - variable
::           ^^^ meta.string.dosbatch string.unquoted.dosbatch

   CALL :foo;bar & :: foo > %0 , bar > %1
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ punctuation.separator.semicolon.dosbatch - comment - string - variable
::           ^^^ meta.string.dosbatch string.unquoted.dosbatch

   CALL :foo=bar & :: foo > %0 , bar > %1
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ punctuation.separator.dosbatch - comment - string - variable
::           ^^^ meta.string.dosbatch string.unquoted.dosbatch

   CALL :foo>bar
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ meta.redirection.dosbatch

   CALL :foo<bar
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ meta.redirection.dosbatch

   CALL :foo&bar
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ keyword.operator.logical.dosbatch
::           ^^^ variable.function.dosbatch

   CALL :foo|bar
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ keyword.operator.assignment.pipe.dosbatch
::           ^^^ variable.function.dosbatch

   CALL :foo^
bar baz
:: <- meta.function-call.identifier.dosbatch variable.label.dosbatch
::^ meta.function-call.identifier.dosbatch variable.label.dosbatch
:: ^^^^ meta.function-call.arguments.dosbatch
::  ^^^ meta.string.dosbatch string.unquoted.dosbatch

   CALL foo %bar%
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch
::         ^^^^^^ meta.function-call.arguments.dosbatch
::               ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::         ^^^^^^ meta.function-call.arguments.dosbatch
::          ^^^^^ meta.interpolation.dosbatch

   CALL ^
   foo %bar%
:: ^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::    ^^^^^^ meta.function-call.arguments.dosbatch
::     ^^^^^ meta.string.dosbatch meta.interpolation.dosbatch
::     ^ punctuation.section.interpolation.begin.dosbatch
::      ^^^ variable.other.readwrite.dosbatch
::         ^ punctuation.section.interpolation.end.dosbatch

   CALL SET _str=%%_var:~%_start%,%_length%%%
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^^ support.function.builtin.dosbatch
::          ^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::               ^^ constant.character.escape.dosbatch
::                       ^ punctuation.section.interpolation.begin.dosbatch
::                       ^^^^^^^^ meta.interpolation.dosbatch
::                              ^ punctuation.section.interpolation.end.dosbatch
::                                ^ punctuation.section.interpolation.begin.dosbatch
::                                ^^^^^^^^^ meta.interpolation.dosbatch
::                                        ^ punctuation.section.interpolation.end.dosbatch
::                                         ^^ constant.character.escape.dosbatch

   CALL ..\foo\bar.exe /param:10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^^^^^^^^ meta.function-call.identifier.dosbatch
::                    ^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                              ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^ constant.other.path.parent.dosbatch
::        ^ punctuation.separator.path.dosbatch
::            ^ punctuation.separator.path.dosbatch
::                ^ punctuation.separator.path.dosbatch
::                     ^ punctuation.definition.variable.dosbatch
::                     ^^^^^^ variable.parameter.option.dosbatch
::                           ^ keyword.operator.assignment.dosbatch
::                            ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   CALL ..\%foo%\bar.exe /param:str
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch - meta.interpolation
::         ^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::              ^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch - meta.interpolation
::                      ^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                                 ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^ constant.other.path.parent.dosbatch
::        ^ punctuation.separator.path.dosbatch
::         ^ punctuation.section.interpolation.begin.dosbatch
::          ^^^ variable.other.readwrite.dosbatch
::             ^ punctuation.section.interpolation.end.dosbatch
::              ^ punctuation.separator.path.dosbatch
::                  ^ punctuation.separator.path.dosbatch
::                       ^ punctuation.definition.variable.dosbatch
::                       ^^^^^^ variable.parameter.option.dosbatch
::                             ^ keyword.operator.assignment.dosbatch

   CALL foo\bar.exe /pa_am:%var%
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::                 ^^^^^^^^ meta.function-call.arguments.dosbatch - meta.interpolation
::                         ^^^^^ meta.function-call.arguments.dosbatch meta.interpolation.dosbatch
::                              ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::         ^ punctuation.separator.path.dosbatch
::             ^ punctuation.separator.path.dosbatch
::                  ^ punctuation.definition.variable.dosbatch
::                  ^^^^^^ variable.parameter.option.dosbatch
::                        ^ keyword.operator.assignment.dosbatch

   CALL %foo%\bar.exe /pa-am:-10
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::           ^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch - meta.interpolation
::                   ^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                              ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.section.interpolation.end.dosbatch
::           ^ punctuation.separator.path.dosbatch
::               ^ punctuation.separator.path.dosbatch
::                    ^ punctuation.definition.variable.dosbatch
::                    ^^^^^^ variable.parameter.option.dosbatch
::                          ^ keyword.operator.assignment.dosbatch
::                           ^^^ constant.numeric

   CALL "d:\foo %bar%\baz.exe" /par-am=10 /D
::^ - meta.function-call
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch - meta.interpolation
::              ^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                   ^^^^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch - meta.interpolation
::                            ^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch - meta.string
::                                          ^ - meta.function-call
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^ punctuation.definition.string.begin.dosbatch
::        ^^ punctuation.separator.path.dosbatch
::              ^ punctuation.section.interpolation.begin.dosbatch
::               ^^^ variable.other.readwrite.dosbatch
::                  ^ punctuation.section.interpolation.end.dosbatch
::                   ^ punctuation.separator.path.dosbatch
::                       ^ punctuation.separator.path.dosbatch
::                           ^ punctuation.definition.string.end.dosbatch
::                             ^ punctuation.definition.variable.dosbatch
::                             ^^^^^^^ variable.parameter.option.dosbatch
::                                    ^ keyword.operator.assignment.dosbatch
::                                     ^^ constant.numeric

   CALL set-foo bar
:: ^^^^^ meta.function-call.dosbatch
::      ^^^^^^^ meta.function-call.identifier.dosbatch
::             ^^^^ meta.function-call.arguments.dosbatch
:: ^^^^ keyword.control.flow.call.dosbatch
::      ^^^^^^^ variable.function.dosbatch
::              ^^^ meta.string.dosbatch string.unquoted.dosbatch

   EXIT
:: ^^^^ meta.command.exit.dosbatch keyword.control.flow.exit.dosbatch

   EXIT /?
:: ^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^^ variable.parameter.option.help.dosbatch

   :: all arguments are ignored, if /? is present
   EXIT /? /b > help.txt
:: ^^^^^^^^^^^^^^^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^^ variable.parameter.option.help.dosbatch
::         ^^ meta.command.exit.dosbatch comment.line.ignored.dosbatch
::            ^^^^^^^^^^ meta.redirection.dosbatch
::            ^ keyword.operator.assignment.redirection.dosbatch
::              ^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.unquoted.dosbatch

   :: /b is ignored, but it's not handled
   EXIT /b /?
:: ^^^^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^^ variable.parameter.option.dosbatch
::         ^^ variable.parameter.option.help.dosbatch

   EXIT /b 12 illegal
:: ^^^^^^^^^^^^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.option.dosbatch
::         ^^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::            ^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   EXIT /b %var% illegal
:: ^^^^^^^^^^^^^^^^^^^^^ meta.command.exit.dosbatch
:: ^^^^ keyword.control.flow.exit.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.option.dosbatch
::         ^^^^^ meta.interpolation.dosbatch
::               ^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   GOTO/?
:: ^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^^ variable.parameter.option.help.dosbatch

   GOTO /? ignored
:: ^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^ variable.parameter.option.help.dosbatch
::         ^^^^^^^ comment.line.ignored.dosbatch

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
::      ^ punctuation.definition.label.dosbatch
::      ^^^^ variable.label.dosbatch - keyword

   GOTO:End
:: ^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ punctuation.definition.label.dosbatch
::     ^^^^ variable.label.dosbatch - keyword

   GOTO l
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO (
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO )
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO [
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO ]
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO {
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO }
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO ^(
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^)
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^[
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^]
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^{
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^}
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^>
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^<
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^&
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO ^|
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO %%
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch constant.character.escape.dosbatch
::        ^ - variable

   GOTO %
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO ^%
:: ^^^^^^^ meta.command.goto.dosbatch
::        ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^^ variable.label.dosbatch - constant.character
::        ^ - variable

   GOTO ^%var%
:: ^^^^^^^^^^^ meta.command.goto.dosbatch
::            ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch - meta.interpolation - constant.character
::       ^^^^^ variable.label.dosbatch meta.interpolation.dosbatch - constant.character
::            ^ - variable

   GOTO %var% ignored content ( & echo foo
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
::                             ^^^ - meta.command
::                                ^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^ variable.label.dosbatch meta.interpolation.dosbatch
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.section.interpolation.end.dosbatch
::            ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                              ^ keyword.operator.logical.dosbatch

   GOTO %%var%% ignored content ( & echo foo
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
::                               ^^^ - meta.command
::                                  ^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^^^ variable.label.dosbatch
::      ^^ constant.character.escape.dosbatch
::           ^^ constant.character.escape.dosbatch
::              ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                ^ keyword.operator.logical.dosbatch

   GOTO !
:: ^^^^^^ meta.command.goto.dosbatch
::       ^ - meta.command
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ - keyword - variable
::      ^ variable.label.dosbatch
::       ^ - variable

   GOTO !var! ignored content ( | echo foo
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
::                             ^^^ - meta.command
::                                ^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^ variable.label.dosbatch meta.interpolation.dosbatch
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.section.interpolation.end.dosbatch
::            ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                              ^ keyword.operator.assignment.pipe.dosbatch

   GOTO ^!var^! ignored content ( | echo foo
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
::                               ^^^ - meta.command
::                                  ^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^^^ variable.label.dosbatch
::      ^^ constant.character.escape.dosbatch
::           ^^ constant.character.escape.dosbatch
::              ^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                ^ keyword.operator.assignment.pipe.dosbatch

   GOTO :foo bar
:: ^^^^^^^^^^^^^ meta.command.goto.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::           ^^^ comment.line.ignored.dosbatch

   GOTO :foo+bar
:: ^^^^^^^^^^^^^ meta.command.goto.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch

   GOTO :foo:bar
:: ^^^^^^^^^^^^^ meta.command.goto.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch

   GOTO :foo,bar
:: ^^^^^^^^^^^^^ meta.command.goto.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch

   GOTO :foo;bar
:: ^^^^^^^^^^^^^ meta.command.goto.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch

   GOTO :foo=bar
:: ^^^^^^^^^^^^^ meta.command.goto.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^^^^ comment.line.ignored.dosbatch

   GOTO :foo>bar
:: ^^^^^^^^^ meta.command.goto.dosbatch - meta.redirection
::          ^^^^ meta.command.goto.dosbatch meta.redirection.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^ meta.string.dosbatch string.unquoted.dosbatch

   GOTO :foo<bar
:: ^^^^^^^^^ meta.command.goto.dosbatch - meta.redirection
::          ^^^^ meta.command.goto.dosbatch meta.redirection.dosbatch
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^ meta.string.dosbatch string.unquoted.dosbatch

   GOTO :foo&bar
:: ^^^^^^^^^ meta.command.goto.dosbatch
::          ^^^^^ - meta.command.goto
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ keyword.operator.logical.dosbatch
::           ^^^ variable.function.dosbatch

   GOTO :foo|bar
:: ^^^^^^^^^ meta.command.goto.dosbatch
::          ^^^^^ - meta.command.goto
::      ^ variable.label.dosbatch punctuation.definition.label.dosbatch
::       ^^^ variable.label.dosbatch
::          ^ keyword.operator.assignment.pipe.dosbatch
::           ^^^ variable.function.dosbatch

   GOTO:This is a #@$虎 strange label
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::     ^ punctuation.definition.label.dosbatch
::     ^^^^^ variable.label.dosbatch - keyword
::           ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO This is a #@$虎 strange label
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^ variable.label.dosbatch - keyword
::           ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO This^
is a #@$虎" strange label
:: <- meta.command.goto.dosbatch variable.label.dosbatch
:: ^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO This^
   is a #@$虎" strange label
:: <- meta.command.goto.dosbatch - variable.label.dosbatch
:: ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO This is^
   a #%@$虎 strange label
:: ^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO This" is a #@$虎" strange label
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^ variable.label.dosbatch - keyword
::           ^ - variable - comment
::            ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO "This is a #@$虎" strange label
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.goto.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^^^^^ variable.label.dosbatch - keyword
::           ^ - variable - comment
::            ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   GOTO %%i
:: ^^^^ meta.command.goto.dosbatch keyword.control.flow.goto.dosbatch - meta.interpolation
::     ^ meta.command.goto.dosbatch - keyword - meta.interpolation
::      ^^ meta.command.goto.dosbatch constant.character.escape.dosbatch
::        ^ meta.command.goto.dosbatch variable.label.dosbatch

   GOTO %var%
:: ^^^^ meta.command.goto.dosbatch keyword.control.flow.goto.dosbatch - meta.interpolation
::     ^ meta.command.goto.dosbatch - keyword - meta.interpolation
::      ^^^^^ meta.command.goto.dosbatch meta.interpolation.dosbatch

   GOTO <target.txt
:: ^^^^^ meta.command.goto.dosbatch - meta.redirection
::      ^^^^^^^^^^^ meta.command.goto.dosbatch meta.redirection.dosbatch
:: ^^^^ keyword.control.flow.goto.dosbatch
::      ^ keyword.operator.assignment.redirection.dosbatch
::       ^^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.unquoted.dosbatch

:::: [ Conditionals ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   IF/?
:: ^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::   ^^ variable.parameter.option.help.dosbatch

   IF /? /i
:: ^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^ variable.parameter.option.help.dosbatch
::       ^^ comment.line.ignored.dosbatch

   IF foo EQU bar echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^ string.unquoted.dosbatch
::                ^^^^ support.function.builtin.dosbatch

   IF NOT foo EQU bar echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ keyword.operator.logical.dosbatch
::        ^^^ string.unquoted.dosbatch
::            ^^^ keyword.operator.comparison.dosbatch
::                ^^^ string.unquoted.dosbatch
::                    ^^^^ support.function.builtin.dosbatch

   IF NEQ == NEQ echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^ keyword.operator.comparison.dosbatch
::           ^^^ string.unquoted.dosbatch
::               ^^^^ support.function.builtin.dosbatch

   IF NEQ NEQ NEQ echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^ string.unquoted.dosbatch
::                ^^^^ support.function.builtin.dosbatch

   IF foo == bar echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^ keyword.operator.comparison.dosbatch
::           ^^^ string.unquoted.dosbatch
::               ^^^^ support.function.builtin.dosbatch

   IF foo==bar echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::       ^^ keyword.operator.comparison.dosbatch
::         ^^^ string.unquoted.dosbatch
::             ^^^^ support.function.builtin.dosbatch

   IF %foo%=="bar" echo "equal"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^ meta.interpolation.dosbatch
::         ^^ keyword.operator.comparison.dosbatch
::           ^ - punctuation
::           ^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::               ^ - punctuation
::                 ^^^^ support.function.builtin.dosbatch

   IF (2) GEQ (15) echo "bigger"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
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
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^^ string.unquoted.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^^^^^^^^ string.unquoted.dosbatch

   IF ^
   "2" GEQ "15" echo "bigger"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^ meta.string.dosbatch string.unquoted.dosbatch
::     ^^^ keyword.operator.comparison.dosbatch
::         ^^^^ meta.string.dosbatch string.unquoted.dosbatch
::              ^^^^^^^^^^^^^ meta.command.echo.dosbatch

   IF ^
   "2" ^
   GEQ "15" echo "bigger"
:: ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^ keyword.operator.comparison.dosbatch
::     ^^^^ meta.string.dosbatch string.unquoted.dosbatch
::          ^^^^^^^^^^^^^ meta.command.echo.dosbatch

   IF ^
   "2" ^
   GEQ ^
   "15" echo "bigger"
:: ^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^^ meta.string.dosbatch string.unquoted.dosbatch
::      ^^^^^^^^^^^^^ meta.command.echo.dosbatch

   IF ^
   "2" ^
   GEQ ^
   "15" ^
   echo "bigger"
:: ^^^^^^^^^^^^^ meta.statement.conditional.dosbatch meta.command.echo.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch

   IF errorlevel 0 echo "ok"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^ variable.language.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^^^^ string.unquoted.dosbatch

   IF errorlevel==0 echo "ok"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^ variable.language.dosbatch
::              ^^ keyword.operator.comparison.dosbatch
::                ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                  ^^^^ support.function.builtin.dosbatch
::                       ^^^^ string.unquoted.dosbatch

   IF not errorlevel == 0 echo "error"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ keyword.operator.logical.dosbatch
::        ^^^^^^^^^^ variable.language.dosbatch
::                   ^^ keyword.operator.comparison.dosbatch
::                      ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                        ^^^^ support.function.builtin.dosbatch
::                             ^^^^^^^ string.unquoted.dosbatch

   IF errorlevel NEQ 0 echo "ok"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^ variable.language.dosbatch
::               ^^^ invalid.illegal.unexpected.dosbatch
::                   ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                     ^^^^ support.function.builtin.dosbatch
::                          ^^^^ string.unquoted.dosbatch

   IF %ERRORLEVEL% NEQ 0 EXIT /B 1
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^^^^^^^^ meta.interpolation.dosbatch
::    ^ punctuation.section.interpolation.begin.dosbatch - variable
::     ^^^^^^^^^^ variable.language.dosbatch
::               ^ punctuation.section.interpolation.end.dosbatch - variable

   IF EXIST "C:\file.log"
:: ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^^^ support.function.builtin.dosbatch
::          ^^^^^^^^^^^^^ string.quoted.double.dosbatch

   IF NOT EXIST "C:\file.log"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ keyword.operator.logical.dosbatch
::        ^^^^^ support.function.builtin.dosbatch
::              ^^^^^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.quoted.double.dosbatch

   IF^
:: ^^ - keyword.control.conditional
::   ^ punctuation.separator.continuation.line.dosbatch
::    ^ - punctuation

   IF ^
   NOT EXIST "C:\file.log"
:: ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^ keyword.operator.logical.dosbatch
::     ^^^^^ support.function.builtin.dosbatch
::           ^^^^^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.quoted.double.dosbatch

   IF ^
   NOT ^
   EXIST "C:\file.log"
:: ^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^^^ support.function.builtin.dosbatch
::       ^^^^^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.quoted.double.dosbatch

   IF ^
   NOT ^
   EXIST ^
   "C:\file.log"
:: ^^^^^^^^^^^^^ meta.statement.conditional.dosbatch meta.path.dosbatch meta.string.dosbatch string.quoted.double.dosbatch

:: See http://ss64.com/nt/syntax-brackets.html
   IF EXIST file.txt ECHO Some(more)Potatoes
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^ support.function.builtin.dosbatch
::                        ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch - meta.block - meta.group

   IF EXIST file.txt (ECHO Some(more)Potatoes)
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^^^^^^^^^^^^^ meta.block.dosbatch
::                                   ^^^^^^^^^ - meta.block
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^^^^^^^ string.unquoted.dosbatch
::                                  ^ punctuation.section.block.end.dosbatch
::                                   ^^^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   IF EXIST file.txt (ECHO Some[more]Potatoes)
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.dosbatch
::                                            ^ - meta.block
::                   ^ punctuation.section.block.begin.dosbatch
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                           ^ punctuation.section.block.end.dosbatch

   IF EXIST file.txt (ECHO Some^(more^)Potatoes)
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if
::    ^^^^^ support.function.builtin.dosbatch
::                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.dosbatch
::                                              ^ - meta.block
::                   ^ punctuation.section.block.begin.dosbatch
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                             ^^ constant.character.escape.dosbatch
::                                   ^^ constant.character.escape.dosbatch
::                                             ^ punctuation.section.block.end.dosbatch

   IF foo GTR (2) (ECHO bar) ELSE (ECHO baz)
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^^^ meta.group.dosbatch
::            ^ punctuation.section.group.begin.dosbatch
::             ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^ punctuation.section.group.end.dosbatch
::                ^^^^^^^^^^ meta.block.dosbatch
::                ^ punctuation.section.block.begin.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                         ^ punctuation.section.block.end.dosbatch
::                           ^^^^ keyword.control.conditional.else.dosbatch
::                                ^^^^^^^^^^ meta.block.dosbatch
::                                ^ punctuation.section.block.begin.dosbatch
::                                 ^^^^ support.function.builtin.dosbatch
::                                         ^ punctuation.section.block.end.dosbatch

   IF foo GTR (2) (
:: ^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^ keyword.control.conditional.if.dosbatch
::    ^^^ string.unquoted.dosbatch
::        ^^^ keyword.operator.comparison.dosbatch
::            ^ punctuation.section.group.begin.dosbatch
::            ^^^ meta.group.dosbatch
::              ^ punctuation.section.group.end.dosbatch
::                ^ punctuation.section.block.begin.dosbatch
      IF bar == "" ( ECHO baz )
::    ^^^^^^^^^^^^^ meta.block.dosbatch - meta.block meta.block
::                 ^^^^^^^^^^^^ meta.block.dosbatch meta.block.dosbatch
::                             ^ meta.block.dosbatch - meta.block meta.block
::    ^^ keyword.control.conditional.if.dosbatch
::       ^^^ string.unquoted.dosbatch
::           ^^ keyword.operator.comparison.dosbatch
::              ^^ string.unquoted.dosbatch
::                 ^ punctuation.section.block.begin.dosbatch
::                   ^^^^ support.function.builtin.dosbatch
::                        ^^^ string.unquoted.dosbatch
::                            ^ punctuation.section.block.end.dosbatch
   ) ELSE (
::^^^^^^^^^^ meta.statement.conditional.dosbatch
::^^ meta.block.dosbatch
::  ^^^^^^ - meta.block
::        ^^ meta.block.dosbatch
:: ^ punctuation.section.block.end.dosbatch
::   ^^^^ keyword.control.conditional.else.dosbatch
::        ^ punctuation.section.block.begin.dosbatch
      IF foo == (4) ( ECHO baz )
::    ^^^^^^^^^^^^^^ meta.block.dosbatch - meta.block meta.block
::              ^^^ meta.block.dosbatch meta.group.dosbatch
::                  ^^^^^^^^^^^^ meta.block.dosbatch meta.block.dosbatch
::                              ^ meta.block.dosbatch - meta.block meta.block
::    ^^ keyword.control.conditional.if.dosbatch
::       ^^^ string.unquoted.dosbatch
::           ^^ keyword.operator.comparison.dosbatch
::                  ^ punctuation.section.block.begin.dosbatch
::                    ^^^^ support.function.builtin.dosbatch
::                         ^^^ string.unquoted.dosbatch
::                             ^ punctuation.section.block.end.dosbatch
   )
::^^ meta.statement.conditional.dosbatch meta.block.dosbatch
::  ^ - meta.statement - meta.block
:: ^ punctuation.section.block.end.dosbatch

   ) ELSE echo baz
:: ^^^^^^^^^^^^^^^ - meta.statement.conditional
:: ^ invalid.illegal.stray.dosbatch
::  ^ - invalid
::   ^^^^ invalid.illegal.stray.dosbatch
::        ^^^^ support.function.builtin.dosbatch
::             ^^^ string.unquoted.dosbatch

   IF "%FOO%" == "BAR" ( SET BAZ=42 )
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
::                     ^ punctuation.section.block.begin.dosbatch
::                     ^^^^^^^^^^^^^^ meta.block.dosbatch
::                                  ^ punctuation.section.block.end.dosbatch
::                               ^^ string.unquoted

   if foo == (<file.txt) ( foo >nul )
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
::           ^ meta.group.dosbatch - meta.redirection
::            ^^^^^^^^^ meta.group.dosbatch meta.redirection.dosbatch
::                     ^ meta.group.dosbatch - meta.redirection
::                       ^^^^^^^^^^^^ meta.block.dosbatch
::                             ^^^^ meta.redirection.dosbatch

   IF <file.txt==""
::    ^^^^^^^^^^^^^ invalid.illegal.unexpected.dosbatch

   IF ^
   DEFINED foo (ECHO bar)
:: ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^^^^^ support.function.builtin.dosbatch
::         ^^^ variable.other.readwrite.dosbatch
::             ^^^^^^^^^^ meta.block.dosbatch
::              ^^^^ support.function.builtin.dosbatch

   IF ^
   DEFINED ^
   foo (ECHO bar)
:: ^^^^^^^^^^^^^^ meta.statement.conditional.dosbatch
:: ^^^ variable.other.readwrite.dosbatch
::     ^^^^^^^^^^ meta.block.dosbatch
::      ^^^^ support.function.builtin.dosbatch

   IF ^
   DEFINED ^
   foo ^
   (ECHO bar)
:: ^^^^^^^^^^ meta.statement.conditional.dosbatch meta.block.dosbatch
::  ^^^^ support.function.builtin.dosbatch

   IF ^
   /i
:: ^^ meta.statement.conditional.dosbatch variable.parameter.option.dosbatch
:: ^ punctuation.definition.variable.dosbatch

   IF DEFINED ^& ECHO EXISTS
::            ^^ variable.other.readwrite.dosbatch

   IF DEFINED ^
   ^& ECHO EXISTS
:: ^^ variable.other.readwrite.dosbatch

   IF DEFINED -t ECHO EXISTS
::            ^^ variable.other.readwrite.dosbatch

:::: [ Loops ] ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   FOR /?
:: ^^^^^^ meta.statement.loop.for.dosbatch
:: ^^^ keyword.control.loop.for.dosbatch
::     ^^ variable.parameter.option.help.dosbatch

   FOR %%# IN (0,1) DO md %%#
::     ^^^ variable.other.readwrite.dosbatch
::                        ^^^ string.unquoted.dosbatch
::                        ^^ constant.character.escape.dosbatch

   FOR %%% IN (0,1) DO md %%%
::     ^^^ variable.other.readwrite.dosbatch
::                        ^^^ string.unquoted.dosbatch
::                        ^^ constant.character.escape.dosbatch

   FOR %%! IN (0,1) DO md %%!
::     ^^^ variable.other.readwrite.dosbatch
::                        ^^^ string.unquoted.dosbatch
::                        ^^ constant.character.escape.dosbatch

   FOR %%^& IN (0,1) DO md %%^&
::     ^^^^ variable.other.readwrite.dosbatch
::                         ^^^^ string.unquoted.dosbatch constant.character.escape.dosbatch

   FOR %%& IN (0,1) DO md %%&
::     ^^^ invalid.illegal.variable.dosbatch
::                        ^^ string.unquoted.dosbatch constant.character.escape.dosbatch
::                          ^ keyword.operator.logical.dosbatch

   FOR %%^| IN (0,1) DO md %%^|
::     ^^^^ variable.other.readwrite.dosbatch
::                         ^^^^ string.unquoted.dosbatch constant.character.escape.dosbatch

   FOR %%| IN (0,1) DO md %%|
::     ^^^ invalid.illegal.variable.dosbatch
::                        ^^ string.unquoted.dosbatch constant.character.escape.dosbatch
::                          ^ keyword.operator.assignment.pipe.dosbatch

   FOR %%^> IN (0,1) DO md %%^>
::     ^^^^ variable.other.readwrite.dosbatch
::                         ^^^^ string.unquoted.dosbatch constant.character.escape.dosbatch

   FOR %%> IN (0,1) DO md %%>
::     ^^^ invalid.illegal.variable.dosbatch
::                        ^^ string.unquoted.dosbatch constant.character.escape.dosbatch
::                          ^ keyword.operator.assignment.redirection.dosbatch

   FOR %%^< IN (0,1) DO md %%^<
::     ^^^^ variable.other.readwrite.dosbatch
::                         ^^^^ string.unquoted.dosbatch constant.character.escape.dosbatch

   FOR %%< IN (0,1) DO md %%<
::     ^^^ invalid.illegal.variable.dosbatch
::                        ^^ string.unquoted.dosbatch constant.character.escape.dosbatch
::                          ^ keyword.operator.assignment.redirection.dosbatch

   FOR %%= IN (0,1) DO md %%=
::     ^^^ invalid.illegal.variable.dosbatch
::                        ^^ string.unquoted.dosbatch constant.character.escape.dosbatch

   FOR %%^= IN (0,1) DO md %%^=
::     ^^^^ invalid.illegal.variable.dosbatch
::                         ^^^^ string.unquoted.dosbatch constant.character.escape.dosbatch

   FOR %%G IN (0,9) DO (md %%G)
:: ^^^ keyword.control.loop.for.dosbatch
::     ^^ punctuation.definition.variable.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::         ^^ keyword.operator.iteration.in.dosbatch
::            ^ punctuation.section.set.begin.dosbatch
::             ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^ punctuation.separator.comma.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                ^ punctuation.section.set.end.dosbatch
::                  ^^ keyword.control.loop.do.dosbatch

   FOR /D /r %%f IN (folder1, ..\folder2, C:\folder) DO command %%~nf
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.dir.dosbatch
::        ^ punctuation.definition.variable.dosbatch
::        ^^ variable.parameter.option.recursive.dosbatch
::           ^^ punctuation.definition.variable.dosbatch
::           ^^^ variable.other.readwrite.dosbatch
::               ^^ keyword.operator.iteration.in.dosbatch
::                  ^ punctuation.section.set.begin.dosbatch
::                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::                          ^ punctuation.separator.comma.dosbatch
::                            ^^ constant.other.path.parent.dosbatch
::                                      ^ punctuation.separator.comma.dosbatch
::                                                 ^ punctuation.section.set.end.dosbatch
::                                                   ^^ keyword.control.loop.do.dosbatch
::                                                      ^^^^^^^ variable.function.dosbatch
::                                                              ^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::                                                              ^^ constant.character.escape.dosbatch

   FOR ^
   /D /r %%f IN (folder1, ..\folder2, C:\folder) DO command
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.option.dir.dosbatch
::    ^ punctuation.definition.variable.dosbatch
::    ^^ variable.parameter.option.recursive.dosbatch
::       ^^ punctuation.definition.variable.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::           ^^ keyword.operator.iteration.in.dosbatch
::              ^ punctuation.section.set.begin.dosbatch
::              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::                      ^ punctuation.separator.comma.dosbatch
::                        ^^ constant.other.path.parent.dosbatch
::                                  ^ punctuation.separator.comma.dosbatch
::                                             ^ punctuation.section.set.end.dosbatch
::                                               ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%f IN (folder1, ..\folder2, C:\folder) DO command
:: ^^ punctuation.definition.variable.dosbatch
:: ^^^ variable.other.readwrite.dosbatch
::     ^^ keyword.operator.iteration.in.dosbatch
::        ^ punctuation.section.set.begin.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::                ^ punctuation.separator.comma.dosbatch
::                  ^^ constant.other.path.parent.dosbatch
::                            ^ punctuation.separator.comma.dosbatch
::                                       ^ punctuation.section.set.end.dosbatch
::                                         ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%f ^
   IN (folder1, ..\folder2, C:\folder) DO command
:: ^^ keyword.operator.iteration.in.dosbatch
::    ^ punctuation.section.set.begin.dosbatch
::    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::            ^ punctuation.separator.comma.dosbatch
::              ^^ constant.other.path.parent.dosbatch
::                        ^ punctuation.separator.comma.dosbatch
::                                   ^ punctuation.section.set.end.dosbatch
::                                     ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%f^
   IN ^
   (folder1, ..\folder2, C:\folder) DO command
:: ^ punctuation.section.set.begin.dosbatch
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.set.dosbatch
::         ^ punctuation.separator.comma.dosbatch
::           ^^ constant.other.path.parent.dosbatch
::                     ^ punctuation.separator.comma.dosbatch
::                                ^ punctuation.section.set.end.dosbatch
::                                  ^^ keyword.control.loop.do.dosbatch

   FOR ^
   /D /r ^
   %%f ^
   IN ^
   (
:: ^ punctuation.section.set.begin.dosbatch
::  ^ - invalid
      folder1,
::           ^ punctuation.separator.comma.dosbatch
::            ^ - invalid
      ..\folder2,
::    ^^ constant.other.path.parent.dosbatch
::              ^ punctuation.separator.comma.dosbatch
::               ^ - invalid
      C:\folder
::             ^ - invalid
   ) ^
   DO command
:: ^^ keyword.control.loop.do.dosbatch

   for /F "tokens=*" %%f in ('dir /S /b C:\*\temp.dat') do (echo "%%f".)
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.files.dosbatch
::        ^ punctuation.definition.string.begin.dosbatch
::        ^^^^^^^^^^ meta.string.dosbatch string.quoted.double.dosbatch
::         ^^^^^^ constant.language.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                 ^ punctuation.definition.string.end.dosbatch
::                   ^^ punctuation.definition.variable.dosbatch
::                   ^^^ variable.other.readwrite.dosbatch
::                       ^^ keyword.operator.iteration.in.dosbatch
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
::     ^^ variable.parameter.option.range.dosbatch
::        ^^ invalid.illegal.variable.dosbatch
::           ^^ keyword.operator.iteration.in.dosbatch
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
::     ^^ variable.parameter.option.recursive.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                             ^^^^^ invalid.illegal.variable.dosbatch
::                                   ^^ keyword.operator.iteration.in.dosbatch

   FOR /R C:\dir name\file name.ext %%f IN (.) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.recursive.dosbatch
::        ^^^^^^ string.unquoted.dosbatch
::               ^^^^^^^^^ invalid.illegal.variable.dosbatch
::                         ^^^^^^^^ invalid.illegal.variable.dosbatch
::                                  ^^ punctuation.definition.variable.dosbatch
::                                  ^^^ variable.other.readwrite.dosbatch
::                                      ^^ keyword.operator.iteration.in.dosbatch

   FOR /R 'C:\dir name\file name.ext' %%f IN (*.ext) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.recursive.dosbatch
::        ^^^^^^^ string.unquoted.dosbatch
::                ^^^^^^^^^ invalid.illegal.variable.dosbatch
::                          ^^^^^^^^^ invalid.illegal.variable.dosbatch
::                                    ^^ punctuation.definition.variable.dosbatch
::                                    ^^^ variable.other.readwrite.dosbatch
::                                        ^^ keyword.operator.iteration.in.dosbatch

   FOR /R "C:\dir name\file-name.ext" %%f IN (set) DO command
:: ^^^ keyword.control.loop.for.dosbatch
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.recursive.dosbatch
::        ^ punctuation.definition.string.begin.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
::                                  ^ punctuation.definition.string.end.dosbatch
::                                    ^^ punctuation.definition.variable.dosbatch
::                                    ^^^ variable.other.readwrite.dosbatch
::                                        ^^ keyword.operator.iteration.in.dosbatch

   FOR /Z %%f IN (foo & bar | < baz > && no || false) DO command
::     ^^ invalid.illegal.parameter.dosbatch
::        ^^^ variable.other.readwrite.dosbatch
::            ^^ keyword.operator.iteration.in.dosbatch
::                    ^ invalid.illegal.operator.dosbatch
::                          ^ invalid.illegal.operator.dosbatch
::                            ^ invalid.illegal.operator.dosbatch
::                                  ^ invalid.illegal.operator.dosbatch
::                                    ^^ invalid.illegal.operator.dosbatch
::                                          ^^ invalid.illegal.operator.dosbatch

   for %%i in (1, 2,  3) do (
      for %%j in (%%i) do (
::        ^^^ variable.other.readwrite.dosbatch
::            ^^ keyword.operator.iteration.in.dosbatch
::               ^ punctuation.section.set.begin.dosbatch
::                ^^^  string.unquoted.dosbatch
::                ^^ constant.character.escape.dosbatch
::                   ^ punctuation.section.set.end.dosbatch
::                     ^^ keyword.control.loop.do.dosbatch
::                        ^ punctuation.section.block.begin.dosbatch
      )
::    ^ punctuation.section.block.end.dosbatch
   )
:: ^ punctuation.section.block.end.dosbatch

:::: [ SETLOCAL ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   SETLOCAL
:: ^^^^^^^^ meta.command.setlocal.dosbatch keyword.context.setlocal.dosbatch
   ENDLOCAL
:: ^^^^^^^^ meta.command.endlocal.dosbatch keyword.context.endlocal.dosbatch

   SETLOCAL /? >nul
:: ^^^^^^^^^^^^ meta.command.setlocal.dosbatch
::             ^^^^ meta.command.setlocal.dosbatch meta.redirection.dosbatch
::          ^^ variable.parameter.option.help.dosbatch

   ENDLOCAL /? >nul
:: ^^^^^^^^^^^^ meta.command.endlocal.dosbatch
::             ^^^^ meta.command.endlocal.dosbatch meta.redirection.dosbatch
::          ^^ variable.parameter.option.help.dosbatch

   setlocal endlocal & echo hello & endlocal illegal
:: ^^^^^^^^^^^^^^^^^ meta.command.setlocal.dosbatch
::                  ^^^ - meta.command
::                     ^^^^^^^^^^ meta.command.echo.dosbatch
::                     ^^^^ meta.function-call.identifier.dosbatch
::                         ^ meta.function-call.arguments.dosbatch - meta.string
::                          ^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                               ^^^ - meta.command
::                                  ^^^^^^^^^^^^^^^^ meta.command.endlocal.dosbatch
::                                                  ^ - meta.command
:: ^^^^^^^^ keyword.context.setlocal.dosbatch
::          ^^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch
::                   ^ keyword.operator.logical.dosbatch
::                     ^^^^ support.function.builtin.dosbatch
::                          ^^^^^ string.unquoted.dosbatch
::                                ^ keyword.operator.logical.dosbatch
::                                  ^^^^^^^^ keyword.context.endlocal.dosbatch
::                                           ^^^^^^^ invalid.illegal.expect-end-of-command.dosbatch

   SETLOCAL EnableDelayedExpansion but DisableExtensions
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.setlocal.dosbatch
::                                                      ^ - meta.command
:: ^^^^^^^^ keyword.context.setlocal.dosbatch
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
::                                            ^ keyword.operator.logical.dosbatch - string
::                                              ^^^^ support.function.builtin.dosbatch
::                                                                      ^^^^^^^^^ meta.interpolation.dosbatch
   ENDLOCAL & set return=%example%
:: ^^^^^^^^ keyword.context.endlocal.dosbatch
::          ^ keyword.operator.logical.dosbatch
::            ^^^ support.function.builtin.dosbatch
::                ^^^^^^ variable.other.readwrite.dosbatch
::                      ^ keyword.operator.assignment.dosbatch
::                       ^^^^^^^^^ meta.interpolation.dosbatch


:::: [ Commands ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   output arg1 arg2
:: ^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::       ^^^^^^^^^^ meta.function-call.arguments.dosbatch
   out^
::    ^ punctuation.separator.continuation.line.dosbatch
::     ^ - punctuation

   out^
put arg1 arg2
:: ^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: <- meta.function-call.identifier.dosbatch variable.function.dosbatch
:: ^^^^^^^^^^ meta.function-call.arguments.dosbatch

   out^
   put arg1 arg2
:: ^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: <- meta.function-call.arguments.dosbatch
:: ^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch

   out" "put arg1 arg2
:: ^^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::          ^^^^^^^^^^ meta.function-call.arguments.dosbatch
::    ^^^ meta.string.dosbatch
::    ^ punctuation.definition.string.begin.dosbatch
::      ^ punctuation.definition.string.end.dosbatch

   out"^
:: ^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::      ^ - meta.function-call - variable
::     ^ - punctuation.separator.continuation

   out"^
"put arg1 arg2
:: ^^^^^^^^^^^ - meta.function-call meta.function-call
:: <- meta.function-call.identifier.dosbatch meta.string.dosbatch variable.function.dosbatch punctuation.definition.string.begin.dosbatch
:: ^^^^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch

   out"^
   "put arg1 arg2
:: ^^^^^^^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::               ^ - meta.function-call - variable
:: ^ punctuation.definition.string.begin.dosbatch

   "out"put arg1 arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::         ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^^ meta.string.dosbatch
:: ^ punctuation.definition.string.begin.dosbatch
::     ^ punctuation.definition.string.end.dosbatch

   "output" arg1 arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch variable.function.dosbatch
::         ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^ punctuation.definition.string.begin.dosbatch
::        ^ punctuation.definition.string.end.dosbatch

   "output arg1" arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^^^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch variable.function.dosbatch
::              ^^^^^ meta.function-call.arguments.dosbatch
:: ^ punctuation.definition.string.begin.dosbatch
::             ^ punctuation.definition.string.end.dosbatch

   "output arg1 arg2"
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch variable.function.dosbatch
:: ^ punctuation.definition.string.begin.dosbatch
::                  ^ punctuation.definition.string.end.dosbatch

   %~dp0put arg1 arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch - meta.interpolation
::         ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^ punctuation.definition.variable.dosbatch
::  ^^^^ variable.parameter.dosbatch
::      ^^^ variable.function.dosbatch

   %out%put arg1 arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::      ^^^ meta.function-call.identifier.dosbatch - meta.interpolation
::         ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^ punctuation.section.interpolation.begin.dosbatch
::  ^^^ variable.other.readwrite.dosbatch
::     ^ punctuation.section.interpolation.end.dosbatch
::      ^^^ variable.function.dosbatch

   o%utpu%t arg1 arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^ meta.function-call.identifier.dosbatch - meta.interpolation
::  ^^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::        ^ meta.function-call.identifier.dosbatch - meta.interpolation
::         ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^ variable.function.dosbatch
::  ^ punctuation.section.interpolation.begin.dosbatch
::   ^^^^ variable.other.readwrite.dosbatch
::       ^ punctuation.section.interpolation.end.dosbatch
::        ^ variable.function.dosbatch

   out%put% arg1 arg2
:: ^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^ meta.function-call.identifier.dosbatch - meta.interpolation
::    ^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::         ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^ variable.function.dosbatch
::    ^ punctuation.section.interpolation.begin.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::        ^ punctuation.section.interpolation.end.dosbatch

   ..\path\cmd arg1 arg2
:: ^^^^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::            ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^ constant.other.path.parent.dosbatch
::   ^ punctuation.separator.path.dosbatch
::        ^ punctuation.separator.path.dosbatch

   ..\%path%\cmd arg1 arg2
:: ^^^^^^^^^^^^^^^^^^^^^^^ - meta.function-call meta.function-call
:: ^^^ meta.function-call.identifier.dosbatch - meta.interpolation
::    ^^^^^^ meta.function-call.identifier.dosbatch meta.interpolation.dosbatch
::          ^^^^ meta.function-call.identifier.dosbatch - meta.interpolation
::              ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^ variable.function.dosbatch
::    ^^^^^^ - variable.function
::          ^^^^ variable.function.dosbatch
:: ^^ constant.other.path.parent.dosbatch
::   ^ punctuation.separator.path.dosbatch
::    ^ punctuation.section.interpolation.begin.dosbatch
::     ^^^^ variable.other.readwrite.dosbatch
::         ^ punctuation.section.interpolation.end.dosbatch
::          ^ punctuation.separator.path.dosbatch

   "..\%path%\"cmd arg1 arg2
:: ^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch - meta.interpolation
::     ^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::           ^^ meta.function-call.identifier.dosbatch meta.string.dosbatch - meta.interpolation
::             ^^^ meta.function-call.identifier.dosbatch - meta.string - meta.interpolation
::                ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^ variable.function.dosbatch
::     ^^^^^^ - variable.function
::           ^^^^^ variable.function.dosbatch
:: ^ punctuation.definition.string.begin.dosbatch
::  ^^ constant.other.path.parent.dosbatch
::    ^ punctuation.separator.path.dosbatch
::     ^ punctuation.section.interpolation.begin.dosbatch
::      ^^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.section.interpolation.end.dosbatch
::           ^ punctuation.separator.path.dosbatch
::            ^ punctuation.definition.string.end.dosbatch

   "..\%path%\cmd" arg1 arg2
:: ^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch - meta.interpolation
::     ^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::           ^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch - meta.interpolation
::                ^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^ variable.function.dosbatch
::     ^^^^^^ - variable.function
::           ^^^^^ variable.function.dosbatch
:: ^ punctuation.definition.string.begin.dosbatch
::  ^^ constant.other.path.parent.dosbatch
::    ^ punctuation.separator.path.dosbatch
::     ^ punctuation.section.interpolation.begin.dosbatch
::      ^^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.section.interpolation.end.dosbatch
::           ^ punctuation.separator.path.dosbatch
::               ^ punctuation.definition.string.end.dosbatch

   %~dp0..\cmd
:: ^^^^^^^^^^^ meta.function-call.identifier.dosbatch
:: ^^^^^ meta.interpolation.dosbatch variable.parameter.dosbatch
::      ^^ constant.other.path.parent.dosbatch
::        ^ punctuation.separator.path.dosbatch
::         ^^^ variable.function.dosbatch

   command arg^
::         ^^^^^ meta.function-call.arguments.dosbatch
::            ^ punctuation.separator.continuation.line.dosbatch
::             ^ - punctuation

   command arg^
   for
::^^^^ meta.function-call.arguments.dosbatch
::    ^ - meta.function-call

   command /? ignored tail & other
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::         ^ variable.parameter.option.help.dosbatch punctuation.definition.variable.dosbatch
::          ^ variable.parameter.option.help.dosbatch - punctuation
::            ^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                         ^ keyword.operator.logical.dosbatch
::                           ^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch

   command /param:value %id%
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::         ^^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
::               ^ meta.parameter.dosbatch
::                ^^^^^ meta.parameter.value.dosbatch
::                     ^^^^^ - meta.parameter
::         ^ punctuation.definition.variable.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                      ^^^^ meta.interpolation.dosbatch
::                      ^ punctuation.section.interpolation.begin.dosbatch
::                       ^^ variable.other.readwrite.dosbatch
::                         ^ punctuation.section.interpolation.end.dosbatch

   command /param:value-%id%
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::         ^^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
::               ^ meta.parameter.dosbatch
::                ^^^^^^^^^^ meta.parameter.value.dosbatch
::         ^ punctuation.definition.variable.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                      ^^^^ meta.interpolation.dosbatch
::                      ^ punctuation.section.interpolation.begin.dosbatch
::                       ^^ variable.other.readwrite.dosbatch
::                         ^ punctuation.section.interpolation.end.dosbatch

   command /param:"value %id%"
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::         ^^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
::               ^ meta.parameter.dosbatch
::                ^^^^^^^^^^^^ meta.parameter.value.dosbatch meta.string.dosbatch
::         ^ punctuation.definition.variable.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                ^^^^^^^ string.unquoted.dosbatch
::                       ^^^^ - string
::                           ^ string.unquoted.dosbatch
::                ^ - punctuation
::                       ^^^^ meta.interpolation.dosbatch
::                       ^ punctuation.section.interpolation.begin.dosbatch
::                        ^^ variable.other.readwrite.dosbatch
::                          ^ punctuation.section.interpolation.end.dosbatch
::                           ^ - punctuation

   command /%para%
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^ meta.function-call.arguments.dosbatch - meta.parameter
::         ^ meta.function-call.arguments.dosbatch meta.parameter.option.dosbatch - meta.interpolation
::          ^^^^^^ meta.function-call.arguments.dosbatch meta.parameter.option.dosbatch meta.interpolation.dosbatch
::         ^ variable.parameter.option.dosbatch punctuation.definition.variable.dosbatch
::          ^ punctuation.section.interpolation.begin.dosbatch
::           ^^^^ variable.other.readwrite.dosbatch
::               ^ punctuation.section.interpolation.end.dosbatch

   command /"par am %id%"
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::         ^ meta.parameter.option.dosbatch - meta.string - meta.interpolation
::          ^^^^^^^^ meta.parameter.option.dosbatch - meta.interpolation
::                  ^^^^ meta.parameter.option.dosbatch meta.interpolation.dosbatch
::                      ^ meta.parameter.option.dosbatch - meta.interpolation
::                       ^ - meta.parameter
::         ^ punctuation.definition.variable.dosbatch
::          ^ - punctuation
::                  ^ punctuation.section.interpolation.begin.dosbatch
::                   ^^ variable.other.readwrite.dosbatch
::                     ^ punctuation.section.interpolation.end.dosbatch
::                      ^ - punctuation

   command /param:va^l:u%var%e
::         ^^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
::               ^ meta.parameter.dosbatch keyword.operator.assignment.dosbatch
::                ^^^^^^ meta.parameter.value.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                  ^^ constant.character.escape.dosbatch
::                      ^^^^^ meta.parameter.value.dosbatch meta.string.dosbatch meta.interpolation.dosbatch - string
::                           ^ meta.parameter.value.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                            ^ - meta.parameter

   :: note: unescaped `=` breaks words and is ignored if not in assignment position
   command ..\folder2\=/type:*.txt
:: ^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                                ^ - meta.function-call
::         ^^^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch
::                    ^ - meta.path - meta.parameter
::                     ^^^^^ meta.parameter.option.dosbatch
::                          ^ meta.parameter.dosbatch
::                           ^^^^^ meta.parameter.value.dosbatch meta.path.dosbatch meta.string.dosbatch
::         ^^^^^^^^^^^ string.unquoted.dosbatch
::         ^^ constant.other.path.parent.dosbatch
::           ^ punctuation.separator.path.dosbatch
::                   ^ punctuation.separator.path.dosbatch
::                    ^ punctuation.separator.dosbatch
::                     ^^^^^ variable.parameter.option.dosbatch
::                          ^ keyword.operator.assignment.dosbatch
::                           ^^^^^ string.unquoted.dosbatch

   :: quotes in arguments are not removed, thus not highlighted as punctuation
   command "cmd /c rd /S /Q \"%%j\""
::         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch - meta.interpolation
::         ^ - punctuation
::         ^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                            ^^ constant.character.escape.dosbatch
::                                 ^ - punctuation

   ren example.txt example_%today%.txt
::                         ^ punctuation.section.interpolation.begin.dosbatch
::                         ^^^^^^^ meta.interpolation.dosbatch
::                               ^ punctuation.section.interpolation.end.dosbatch

   ren example.txt example_^%today%.txt
::                         ^ - constant.character.escape
::                          ^ punctuation.section.interpolation.begin.dosbatch
::                          ^^^^^^^ meta.interpolation.dosbatch
::                                ^ punctuation.section.interpolation.end.dosbatch

   powershell get-date -uformat "%%Y%%m%%d">today.txt
::           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::            ^^^^^^^^ - variable.parameter
::                     ^^^^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
::                     ^ punctuation.definition.variable.dosbatch
::                              ^^^^^^^^^^^ string.unquoted.dosbatch
::                               ^^ constant.character.escape.dosbatch
::                                 ^ - constant.character.escape.dosbatch
::                                  ^^ constant.character.escape.dosbatch
::                                    ^ - constant.character.escape.dosbatch
::                                     ^^ constant.character.escape.dosbatch
::                                       ^ - constant.character.escape.dosbatch
::                                         ^^^^^^^^^^ meta.redirection.dosbatch
::                                         ^ keyword.operator.assignment.redirection.dosbatch
::                                          ^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.unquoted.dosbatch

   powershell get-date>today.txt -uformat "%%Y%%m%%d"
::           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::            ^^^^^^^^ - variable.parameter
::                    ^^^^^^^^^^ meta.redirection.dosbatch
::                    ^ keyword.operator.assignment.redirection.dosbatch
::                     ^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                               ^^^^^^^^ meta.parameter.option.dosbatch variable.parameter.option.dosbatch
::                               ^ punctuation.definition.variable.dosbatch
::                                        ^^^^^^^^^^^ string.unquoted.dosbatch
::                                         ^^ constant.character.escape.dosbatch
::                                           ^ - constant.character.escape.dosbatch
::                                            ^^ constant.character.escape.dosbatch
::                                              ^ - constant.character.escape.dosbatch
::                                               ^^ constant.character.escape.dosbatch
::                                                 ^ - constant.character.escape.dosbatch

:::: [ Redirections ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   ECHO Hello World! > hello.txt
::                  ^ - meta.redirection
::                   ^^ meta.redirection.dosbatch - meta.path
::                     ^^^^^^^^^ meta.redirection.dosbatch meta.path.dosbatch
::                              ^ - meta.redirection
::                   ^ keyword.operator.assignment.redirection.dosbatch

   ECHO >> NUL
:: ^^^^^^^^^^^ meta.command.echo.dosbatch
::     ^ - meta.redirection
::      ^^^^^^ meta.redirection.dosbatch
::            ^ - meta.redirection
::      ^^ keyword.operator.assignment.redirection.dosbatch
::         ^^^ constant.language.null.dosbatch

   ECHO <content.txt and others
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
::      ^^^^^^^^^^^^ meta.string.dosbatch meta.redirection.dosbatch - string string

   ECHO "<content.txt and others"
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - meta.interpolation - meta.redirection

   dir > f.txt 2>&1 /b
:: ^^^^^^^^^^^^^^^^^^^ meta.function-call
::    ^ - meta.redirection
::     ^^^^^^^ meta.redirection.dosbatch
::            ^ - meta.redirection
::             ^^^^ meta.redirection.dosbatch
::                 ^^^ - meta.redirection
::     ^ keyword.operator.assignment.redirection.dosbatch
::       ^^^^^ string.unquoted.dosbatch
::             ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::              ^^ keyword.operator.assignment.redirection.dosbatch
::                ^ meta.number.integer.decimal.dosbatch  constant.numeric.value.dosbatch
::                  ^^ variable.parameter.option.dosbatch

   dir foo 1>nul /b 2>nul
:: ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
::        ^ - meta.redirection
::         ^^^^^ meta.redirection.dosbatch
::              ^^^^ - meta.redirection
::                  ^^^^^ meta.redirection.dosbatch
::                       ^ - meta.redirection
::         ^ meta.number.integer.decimal.dosbatch  constant.numeric.value.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^ constant.language.null.dosbatch
::               ^^ variable.parameter.option.dosbatch
::                  ^ meta.number.integer.decimal.dosbatch  constant.numeric.value.dosbatch
::                   ^ keyword.operator.assignment.redirection.dosbatch
::                    ^^^ constant.language.null.dosbatch

:: Redirect any error message into a file
   command 2> filename
:: ^^^^^^^ variable.function.dosbatch
::         ^ constant.numeric.value.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::            ^^^^^^^^ string.unquoted.dosbatch

:: Append any error message into a file
   command 2>> filename
:: ^^^^^^^ variable.function.dosbatch
::         ^ constant.numeric.value.dosbatch
::          ^^ keyword.operator.assignment.redirection.dosbatch
::             ^^^^^^^^ string.unquoted.dosbatch

:: Redirect any CMD.exe error into a file
  (command)2> filename
:: ^^^^^^^ variable.function.dosbatch
::         ^ constant.numeric.value.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::            ^^^^^^^^ string.unquoted.dosbatch

:: Redirect errors and output to one file
   command > file 2>&1
:: ^^^^^^^ variable.function.dosbatch
::         ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^^ string.unquoted.dosbatch
::                ^ constant.numeric.value.dosbatch
::                 ^^ keyword.operator.assignment.redirection.dosbatch
::                   ^ constant.numeric.value.dosbatch

:: Redirect output and errors to separate files
   command > fileA 2> fileB
:: ^^^^^^^ variable.function.dosbatch
::         ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^^^ string.unquoted.dosbatch
::                 ^ constant.numeric.value.dosbatch
::                  ^ keyword.operator.assignment.redirection.dosbatch
::                    ^^^^^ string.unquoted.dosbatch

:: This will fail!
   command 2>&1 >filename
:: ^^^^^^^ variable.function.dosbatch
::         ^ constant.numeric.value.dosbatch
::          ^^ keyword.operator.assignment.redirection.dosbatch
::            ^ constant.numeric.value.dosbatch
::              ^ keyword.operator.assignment.redirection.dosbatch
::               ^^^^^^^^ string.unquoted.dosbatch

:: Redirect error messages to NUL
   command 2> nul
:: ^^^^^^^ variable.function.dosbatch
::         ^ constant.numeric.value.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::            ^^^ constant.language.null.dosbatch

:: Redirect error and output to NUL
   command >nul 2>&1
:: ^^^^^^^ variable.function.dosbatch
::         ^ keyword.operator.assignment.redirection.dosbatch
::          ^^^ constant.language.null.dosbatch
::              ^ constant.numeric.value.dosbatch
::               ^^ keyword.operator.assignment.redirection.dosbatch
::                 ^ constant.numeric.value.dosbatch

:: Redirect output to file but suppress error
   command >filename 2> nul
:: ^^^^^^^ variable.function.dosbatch
::         ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^^^^^ string.unquoted.dosbatch
::                   ^ constant.numeric.value.dosbatch
::                    ^ keyword.operator.assignment.redirection.dosbatch
::                      ^^^ constant.language.null.dosbatch

:: Redirect output to file but suppress CMD.exe errors
  (command)>filename 2> nul
:: ^^^^^^^ variable.function.dosbatch
::         ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^^^^^ string.unquoted.dosbatch
::                   ^ constant.numeric.value.dosbatch
::                    ^ keyword.operator.assignment.redirection.dosbatch
::                      ^^^ constant.language.null.dosbatch

:: Redirect all output to stdout using variables
   command >%STDOUT% %STDERR%>&%STDOUT%
:: ^^^^^^^^ - meta.redirection - meta.interpolation
::         ^ meta.redirection.dosbatch keyword.operator.assignment.redirection.dosbatch - meta.interpolation
::          ^^^^^^^^ meta.redirection.dosbatch meta.path.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                  ^ - meta.string - meta.redirection - meta.interpolation
::                   ^^^^^^^^ meta.string.dosbatch meta.interpolation.dosbatch - meta.redirection
::                           ^^ meta.redirection.dosbatch - meta.string - meta.interpolation
::                             ^^^^^^^^ meta.redirection.dosbatch meta.path.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
:: ^^^^^^^ variable.function.dosbatch
::         ^ keyword.operator.assignment.redirection.dosbatch
::                           ^^ keyword.operator.assignment.redirection.dosbatch

   (command >nul 2>&1)
::  ^^^^^^^ variable.function.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::           ^^^ constant.language.null.dosbatch
::               ^ constant.numeric.value.dosbatch
::                ^^ keyword.operator.assignment.redirection.dosbatch
::                  ^ constant.numeric.value.dosbatch

   (>nul 2>&1)
::  ^ keyword.operator.assignment.redirection.dosbatch
::   ^^^ constant.language.null.dosbatch
::       ^ constant.numeric.value.dosbatch
::        ^^ keyword.operator.assignment.redirection.dosbatch
::          ^ constant.numeric.value.dosbatch

   PAUSE > NUL
:: ^^^^^^^^^^^ meta.command.pause.dosbatch
::       ^^^^^ meta.redirection.dosbatch
:: ^^^^^ keyword.control.flow.pause.dosbatch
::       ^ keyword.operator.assignment.redirection.dosbatch
::         ^^^ constant.language.null.dosbatch

   SETLOCAL EnableDelayedExpansion > NUL
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.setlocal.dosbatch
::                                 ^^^^^ meta.redirection.dosbatch
::                                 ^ keyword.operator.assignment.redirection.dosbatch
::                                   ^^^ constant.language.null.dosbatch

   ENDLOCAL > NUL
:: ^^^^^^^^^^^^^^ meta.command.endlocal.dosbatch
::          ^^^^^ meta.redirection.dosbatch
::          ^ keyword.operator.assignment.redirection.dosbatch
::            ^^^ constant.language.null.dosbatch

:::: [ ECHO Command ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   ECHO || ECHO && ECHO &
:: ^^^^ support.function.builtin.dosbatch
::      ^^ keyword.operator.logical.dosbatch
::         ^^^^ support.function.builtin.dosbatch
::              ^^ keyword.operator.logical.dosbatch
::                 ^^^^ support.function.builtin.dosbatch
::                      ^ keyword.operator.logical.dosbatch

   @ECHO OFF
:: ^ - meta.command
::  ^^^^^^^^ meta.command.echo.dosbatch
::  ^^^^ meta.function-call.identifier.dosbatch
::      ^^^^ meta.function-call.arguments.dosbatch
::          ^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^^ constant.language.dosbatch

   @ECHO OFF > nul
:: ^ - meta.command
::  ^^^^^^^^ meta.command.echo.dosbatch
::  ^^^^ meta.function-call.identifier.dosbatch
::      ^^^^^ meta.function-call.arguments.dosbatch
::           ^^^^^ meta.function-call.arguments.dosbatch meta.redirection.dosbatch
::                ^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^^ constant.language.dosbatch
::           ^ keyword.operator.assignment.redirection.dosbatch
::             ^^^ constant.language.null.dosbatch

   @ECHO OFF :: no (comment) & :: comment
:: ^ - meta.command
::  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
::  ^^^^ meta.function-call.identifier.dosbatch
::      ^ meta.function-call.arguments.dosbatch - meta.string - string
::       ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                          ^^^^^^^^^^^^^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                           ^ keyword.operator.logical.dosbatch
::                             ^^ comment.line.colon.dosbatch punctuation.definition.comment.dosbatch

   @ECHO ON & :: comment
:: ^ - meta.command
::  ^^^^^^^ meta.command.echo.dosbatch
::  ^^^^ meta.function-call.identifier.dosbatch
::      ^^^ meta.function-call.arguments.dosbatch
::         ^^^^^^^^^^^^^ - meta.command
:: ^ keyword.operator.at.dosbatch
::  ^^^^ support.function.builtin.dosbatch
::       ^^ constant.language.dosbatch
::          ^ keyword.operator.logical.dosbatch
::            ^^ comment.line.colon.dosbatch punctuation.definition.comment.dosbatch

   ECHO /?
:: ^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^^^ meta.function-call.arguments.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.option.help.dosbatch

   ECHO /? ignored
::^ - meta.command
:: ^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch - meta.string
::     ^^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.option.help.dosbatch
::        ^ - variable - comment
::         ^^^^^^^ comment.line.ignored.dosbatch
::                ^ - comment

   ECHO /? :: comment
::^ - meta.command
:: ^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch - meta.string
::     ^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.option.help.dosbatch
::        ^ - variable - comment
::         ^^^^^^^^^^ comment.line.ignored.dosbatch
::                   ^ - comment

   ECHO /? rem comment
::^ - meta.command
:: ^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^ support.function.builtin.dosbatch
::      ^ punctuation.definition.variable.dosbatch
::      ^^ variable.parameter.option.help.dosbatch
::        ^ - keyword - variable - comment
::                    ^ - comment

   ECHO ^
:: ^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
::     ^^^ meta.function-call.arguments.dosbatch
::      ^ punctuation.separator.continuation.line.dosbatch
::       ^ - punctuation

   ECHO ^
   /? ignored
::^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.option.help.dosbatch
::   ^ - variable - comment
::    ^^^^^^^ comment.line.ignored.dosbatch
::           ^ - comment

   ECHO .
::^ - meta.command
:: ^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ meta.function-call.arguments.dosbatch - meta.string
::      ^ meta.function-call.arguments.dosbatch meta.string.dosbatch
::       ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::      ^ string.unquoted.dosbatch
::       ^ - string

   ECHO.
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ meta.function-call.arguments.dosbatch
::      ^ - meta.command
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch

   ECHO./? will display help
::^ - meta.command
:: ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ meta.function-call.arguments.dosbatch - meta.string
::      ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch
::                          ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                          ^ - string

   ECHO :
::^ - meta.command
:: ^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ meta.function-call.arguments.dosbatch - meta.string
::      ^ meta.function-call.arguments.dosbatch meta.string.dosbatch
::       ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::      ^ string.unquoted.dosbatch
::       ^ - string

   ECHO:
::^ - meta.command
:: ^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ meta.function-call.arguments.dosbatch - meta.string
::      ^ - meta.command
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch

   ECHO:/? will display help
::^ - meta.command
:: ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ meta.function-call.identifier.dosbatch
::     ^ meta.function-call.arguments.dosbatch - meta.string
::      ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch
::                          ^ - meta.command - meta.string
:: ^^^^ support.function.builtin.dosbatch
::     ^ punctuation.separator.arguments.dosbatch
::      ^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                          ^ - string

   ECHO ^
   do not break out of an echo with an escaped newline
:: <- meta.command.echo.dosbatch meta.function-call.arguments.dosbatch
::^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch - meta.string
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                                                    ^ - meta.command - meta.string - string
::    ^^^ - keyword.operator
::        ^^^^^ - support.function

   ECHO "
::      ^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation
::       ^ - meta.string - string

   ECHO "^
::      ^^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation
::        ^ - meta.string - string

   ECHO "^
   no string"
:: ^^^^^^^^^^ - meta.command.set - string.quoted

   ECHO ""^
   continued string
:: ^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                 ^ - meta.command - meta.string - string

   ECHO """^
   no string"
:: ^^^^^^^^^^ - meta.command.set - string.quoted

   ECHO """"^
   continued string
:: ^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                 ^ - meta.command - meta.string - string

   ECHO "foo^
   no string"
:: ^^^^^^^^^^ - meta.command.set - string.quoted

   ECHO "foo"^
   continued string
:: ^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                 ^ - meta.command - meta.string - string

   ECHO "foo"
::      ^^^^^ string.unquoted.dosbatch - constant - punctuation
::           ^ - meta.command - meta.string - string

   ECHO "foo"bar"baz"
::     ^ - meta.string - string
::      ^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation
::                   ^ - meta.string - string

   ECHO foo"bar>nul && echo baz
::     ^ - meta.string - string
::      ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation
::                             ^ - meta.string - string

   ECHO foo"bar">nul && echo baz
::     ^ - meta.string - string
::      ^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation
::              ^ keyword.operator.assignment.redirection.dosbatch
::               ^^^ constant.language.null.dosbatch
::                   ^^ keyword.operator.logical.dosbatch
::                      ^^^^ support.function.builtin.dosbatch
::                           ^^^ meta.string.dosbatch string.unquoted.dosbatch
::                              ^ - meta.command - meta.string - string

   ECHO line ^
::      ^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::           ^ punctuation.separator.continuation.line.dosbatch
::            ^ - punctuation

   ECHO line ^
   continuation
:: <- meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch

   ECHO line ^

   continuation
:: <- meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch

   ECHO line ^
   ^
:: <- meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
:: ^ punctuation.separator.continuation.line.dosbatch
::  ^ - punctuation

   ECHO line ^
   ^
   continuation
:: <- meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch

ECHO line ^
^
:: <- meta.command.echo.dosbatch meta.function-call.arguments.dosbatch meta.string.dosbatch string.unquoted.dosbatch - punctuation

ECHO line ^
^
no continuation
:: <- - meta.command.echo - meta.string - string
::^^^^^^^^^^^^^ - meta.command.echo

:::: [ ECHO escaped characters ]:::::::::::::::::::::::::::::::::::::::::::::::

   ECHO %% ^^! ^& ^| ^( ^)
::      ^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::      ^^ constant.character.escape.dosbatch
::         ^^ constant.character.escape.dosbatch
::           ^ - constant.character
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

   ECHO "^no ^escape"
::      ^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - constant - punctuation

   :: note: 2nd and onward escapes are effective only with "EnableDelayedExpansion" flag
   ECHO "%% ^^! ^& ^| ^( ^)"
::      ^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - punctuation
::       ^^ constant.character.escape.dosbatch
::         ^^^^^^^^^^^^^^^^ - constant.character

   doskey cd = @( ^
   for %%^^^^ in ("") do @for /f "delims=" %%a in (^^""$*%%~^^"^") do @( ^
:: ^^^^ - constant
::     ^^^^^^ constant.character.escape.dosbatch
::           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant
::                                         ^^ constant.character.escape.dosbatch
::                                           ^^^^^^ - constant
::                                                 ^^ constant.character.escape.dosbatch
::                                                   ^^^ - constant
::                                                      ^ constant.other.wildcard.asterisk.dosbatch
::                                                       ^^ constant.character.escape.dosbatch
::                                                         ^ - constant
::                                                          ^^ constant.character.escape.dosbatch
::                                                            ^^^^^^^^^^^^ - constant
::                                                                       ^ punctuation.separator.continuation.line.dosbatch

   doskey for /f "delims=" %%p in ('"zoxide query --execute "%%CD%%\." -- "%%~1""')
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                         ^^ constant.character.escape.dosbatch
::                                                           ^^ constant.character.escape.dosbatch
::                                                               ^^ constant.character.escape.dosbatch
::                                                                         ^^ constant.character.escape.dosbatch

:::: [ ECHO variables ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::

   ECHO %1 %* %~dpf$PATH:5 %~1
::     ^ - meta.string - meta.interpolation
::      ^^ meta.string.dosbatch meta.interpolation.dosbatch
::        ^ meta.string.dosbatch - meta.interpolation
::         ^^ meta.string.dosbatch meta.interpolation.dosbatch
::           ^ meta.string.dosbatch - meta.interpolation
::            ^^^^^^^^^^^^ meta.string.dosbatch meta.interpolation.dosbatch
::                        ^ meta.string.dosbatch - meta.interpolation
::                         ^^^ meta.string.dosbatch meta.interpolation.dosbatch
::                            ^ - meta.string - meta.interpolation
::      ^ variable.parameter.dosbatch punctuation.definition.variable.dosbatch
::       ^ variable.parameter.dosbatch - punctuation
::        ^ string.unquoted.dosbatch - variable
::         ^ variable.parameter.dosbatch punctuation.definition.variable.dosbatch
::          ^ variable.parameter.dosbatch - punctuation
::           ^ string.unquoted.dosbatch - variable
::            ^ variable.parameter.dosbatch punctuation.definition.variable.dosbatch
::             ^^^^^^^^^^^ variable.parameter.dosbatch - punctuation
::                        ^ string.unquoted.dosbatch - variable
::                         ^ variable.parameter.dosbatch punctuation.definition.variable.dosbatch
::                          ^^ variable.parameter.dosbatch - punctuation
::                            ^ - string - variable

   ECHO %errorlevel% !errorlevel!
::     ^ - meta.interpolation
::      ^^^^^^^^^^^^ meta.interpolation.dosbatch
::                  ^ - meta.interpolation
::                   ^^^^^^^^^^^^ meta.interpolation.dosbatch
::                               ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^^^^^^^^ variable.language.dosbatch
::                 ^ punctuation.section.interpolation.end.dosbatch
::                   ^ punctuation.section.interpolation.begin.dosbatch
::                    ^^^^^^^^^^ variable.language.dosbatch
::                              ^ punctuation.section.interpolation.end.dosbatch

   ECHO %errorlevel:~0,2% !errorlevel:~0,2!
::     ^ - meta.interpolation
::      ^^^^^^^^^^^^^^^^^ - meta.interpolation meta.interpolation
::      ^^^^^^^^^^^ meta.interpolation.dosbatch
::                 ^^^^^ meta.interpolation.substring.dosbatch
::                      ^ meta.interpolation.dosbatch
::                       ^ - meta.interpolation
::                        ^^^^^^^^^^^^^^^^^ - meta.interpolation meta.interpolation
::                        ^^^^^^^^^^^ meta.interpolation.dosbatch
::                                   ^^^^^ meta.interpolation.substring.dosbatch
::                                        ^ meta.interpolation.dosbatch
::                                         ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^^^^^^^^ variable.language.dosbatch
::                 ^^ punctuation.separator.dosbatch
::                   ^ constant.numeric.value.dosbatch
::                    ^ punctuation.separator.comma.dosbatch
::                     ^ constant.numeric.value.dosbatch
::                      ^ punctuation.section.interpolation.end.dosbatch
::                        ^ punctuation.section.interpolation.begin.dosbatch
::                         ^^^^^^^^^^ variable.language.dosbatch
::                                   ^^ punctuation.separator.dosbatch
::                                     ^ constant.numeric.value.dosbatch
::                                      ^ punctuation.separator.comma.dosbatch
::                                       ^ constant.numeric.value.dosbatch
::                                        ^ punctuation.section.interpolation.end.dosbatch

   ECHO %variable^% !variable^!
::      ^ meta.interpolation.dosbatch punctuation.section.interpolation.begin.dosbatch - variable
::       ^^^^^^^^^ meta.interpolation.dosbatch variable.other.readwrite.dosbatch
::                ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch - variable
::                  ^ meta.interpolation.dosbatch punctuation.section.interpolation.begin.dosbatch - variable
::                   ^^^^^^^^^ meta.interpolation.dosbatch variable.other.readwrite.dosbatch
::                            ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch - variable

   ECHO^
   %variable^% !variable^!
:: ^ meta.interpolation.dosbatch punctuation.section.interpolation.begin.dosbatch - variable
::  ^^^^^^^^^ meta.interpolation.dosbatch variable.other.readwrite.dosbatch
::           ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch - variable
::             ^ meta.interpolation.dosbatch punctuation.section.interpolation.begin.dosbatch - variable
::              ^^^^^^^^^ meta.interpolation.dosbatch variable.other.readwrite.dosbatch
::                       ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch - variable

   ECHO %sub:str1=str2% !sub:str1=str2!
::     ^ - meta.interpolation
::      ^^^^^^^^^^^^^^^ - meta.interpolation meta.interpolation
::      ^^^^ meta.interpolation.dosbatch
::          ^ meta.interpolation.substitution.dosbatch
::           ^^^^ meta.interpolation.substitution.pattern.dosbatch
::               ^ meta.interpolation.substitution.dosbatch
::                ^^^^ meta.interpolation.substitution.replacement.dosbatch
::                    ^ meta.interpolation.dosbatch
::                     ^ - meta.interpolation
::                      ^^^^^^^^^^^^^^^ - meta.interpolation meta.interpolation
::                      ^^^^ meta.interpolation.dosbatch
::                          ^ meta.interpolation.substitution.dosbatch
::                           ^^^^ meta.interpolation.substitution.pattern.dosbatch
::                               ^ meta.interpolation.substitution.dosbatch
::                                ^^^^ meta.interpolation.substitution.replacement.dosbatch
::                                    ^ meta.interpolation.dosbatch
::                                     ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^ variable.other.readwrite.dosbatch
::          ^ punctuation.separator.dosbatch
::           ^^^^ string.unquoted.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                ^^^^ string.unquoted.dosbatch
::                    ^ punctuation.section.interpolation.end.dosbatch
::                      ^ punctuation.section.interpolation.begin.dosbatch
::                       ^^^ variable.other.readwrite.dosbatch
::                          ^ punctuation.separator.dosbatch
::                           ^^^^ string.unquoted.dosbatch
::                               ^ keyword.operator.assignment.dosbatch
::                                ^^^^ string.unquoted.dosbatch
::                                    ^ punctuation.section.interpolation.end.dosbatch

   ECHO %substr:~0,-2% !substr:~0,-2!
::     ^ - meta.interpolation
::      ^^^^^^^^^^^^^^ - meta.interpolation meta.interpolation
::      ^^^^^^^ meta.interpolation.dosbatch
::             ^^^^^^ meta.interpolation.substring.dosbatch
::                   ^ meta.interpolation.dosbatch
::                    ^ - meta.interpolation
::                     ^^^^^^^^^^^^^^ - meta.interpolation meta.interpolation
::                      ^^^^^^ meta.interpolation.dosbatch
::                            ^^^^^^ meta.interpolation.substring.dosbatch
::                                  ^ meta.interpolation.dosbatch
::                                   ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^^^^^^ variable.other.readwrite.dosbatch
::             ^^ punctuation.separator.dosbatch
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                ^ punctuation.separator.comma.dosbatch
::                 ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                  ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                   ^ punctuation.section.interpolation.end.dosbatch
::                     ^ punctuation.section.interpolation.begin.dosbatch
::                      ^^^^^^ variable.other.readwrite.dosbatch
::                            ^^ punctuation.separator.dosbatch
::                              ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                               ^ punctuation.separator.comma.dosbatch
::                                ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                                 ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                                  ^ punctuation.section.interpolation.end.dosbatch

   ECHO %b:~-5% !b:~+5!
::     ^ - meta.interpolation
::      ^^^^^^^ - meta.interpolation meta.interpolation
::      ^^ meta.interpolation.dosbatch
::        ^^^^ meta.interpolation.substring.dosbatch
::            ^ meta.interpolation.dosbatch
::             ^ - meta.interpolation
::              ^^^^^^^ - meta.interpolation meta.interpolation
::              ^^ meta.interpolation.dosbatch
::                ^^^^ meta.interpolation.substring.dosbatch
::                    ^ meta.interpolation.dosbatch
::                     ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^ variable.other.readwrite.dosbatch
::        ^^ punctuation.separator.dosbatch
::          ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::           ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::            ^ punctuation.section.interpolation.end.dosbatch
::              ^ punctuation.section.interpolation.begin.dosbatch
::               ^ variable.other.readwrite.dosbatch
::                ^^ punctuation.separator.dosbatch
::                  ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                   ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                    ^ punctuation.section.interpolation.end.dosbatch

   :: Only one of substitution or substring is performed at a time!
   ECHO %foo:bar=baz:~5,2% !foo:bar=baz:~5,2!
::               ^^^^^^^^ meta.interpolation.substitution.replacement.dosbatch string.unquoted.dosbatch - constant - punctuation
::                       ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch
::                        ^ - meta.interpolation
::                                  ^^^^^^^^ meta.interpolation.substitution.replacement.dosbatch string.unquoted.dosbatch - constant - punctuation
::                                          ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch
::                                           ^ - meta.interpolation

   :: Only one of substitution or substring is performed at a time!
   :: Note: The whole expansion is printed as plain text, but it is scoped illegal
   ::       to helpf to see the error instead.
   ECHO %foo:~5,2:bar=baz% !foo:~5,2:bar=baz!
::          ^^^^^^^^^^^^^ meta.interpolation.substring.dosbatch
::                       ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch
::                        ^ - meta.interpolation
::                             ^^^^^^^^^^^^^ meta.interpolation.substring.dosbatch
::                                          ^ meta.interpolation.dosbatch punctuation.section.interpolation.end.dosbatch
::                                           ^ - meta.interpolation
::               ^^^^^^^^ invalid.illegal.unexpected.dosbatch
::                       ^ punctuation.section.interpolation.end.dosbatch
::                                  ^^^^^^^^ invalid.illegal.unexpected.dosbatch
::                                          ^ punctuation.section.interpolation.end.dosbatch

   ECHO !t:%foo%=%bar:~0,-4%!
::     ^ - meta.interpolation
::      ^^ meta.interpolation.dosbatch - meta.interpolation meta.interpolation
::        ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::         ^^^^^ meta.interpolation.substitution.pattern.dosbatch meta.interpolation.dosbatch
::              ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::               ^^^^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation.dosbatch
::                   ^^^^^^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation.substring.dosbatch
::                         ^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation.dosbatch
::                          ^ meta.interpolation.dosbatch - meta.interpolation meta.interpolation
::                           ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^ variable.other.readwrite.dosbatch
::        ^ punctuation.separator.dosbatch
::         ^ punctuation.section.interpolation.begin.dosbatch
::             ^ punctuation.section.interpolation.end.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.section.interpolation.begin.dosbatch
::                ^^^ variable.other.readwrite.dosbatch
::                   ^^ punctuation.separator.dosbatch
::                     ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                      ^ punctuation.separator.comma.dosbatch
::                       ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                        ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                         ^^ punctuation.section.interpolation.end.dosbatch

   ECHO %t:!foo!=!bar:~0,-4!%
::     ^ - meta.interpolation
::      ^^ meta.interpolation.dosbatch - meta.interpolation meta.interpolation
::        ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::         ^^^^^ meta.interpolation.substitution.pattern.dosbatch meta.interpolation.dosbatch
::              ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::               ^^^^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation.dosbatch
::                   ^^^^^^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation.substring.dosbatch
::                         ^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation.dosbatch
::                          ^ meta.interpolation.dosbatch - meta.interpolation meta.interpolation
::                           ^ - meta.interpolation
::      ^ punctuation.section.interpolation.begin.dosbatch
::       ^ variable.other.readwrite.dosbatch
::        ^ punctuation.separator.dosbatch
::         ^ punctuation.section.interpolation.begin.dosbatch
::             ^ punctuation.section.interpolation.end.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.section.interpolation.begin.dosbatch
::                ^^^ variable.other.readwrite.dosbatch
::                   ^^ punctuation.separator.dosbatch
::                     ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                      ^ punctuation.separator.comma.dosbatch
::                       ^ meta.number.integer.decimal.dosbatch keyword.operator.arithmetic.dosbatch
::                        ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch
::                         ^^ punctuation.section.interpolation.end.dosbatch

   ECHO %(% %)% %[% %]% %{% %}% %"% %'%
::     ^ - meta.interpolation
::      ^^^ meta.interpolation.dosbatch
::         ^ - meta.interpolation
::          ^^^ meta.interpolation.dosbatch
::             ^ - meta.interpolation
::              ^^^ meta.interpolation.dosbatch
::                 ^ - meta.interpolation
::                  ^^^ meta.interpolation.dosbatch
::                     ^ - meta.interpolation
::                      ^^^ meta.interpolation.dosbatch
::                         ^ - meta.interpolation
::                          ^^^ meta.interpolation.dosbatch
::                             ^ - meta.interpolation
::                              ^^^ meta.interpolation.dosbatch
::                                 ^ - meta.interpolation
::                                  ^^^ meta.interpolation.dosbatch
::                                     ^ - meta.interpolation

   ECHO %&%  %&:~ 1, -2%  %&:~ !&!, -2%
::      ^^^ meta.interpolation.dosbatch
::         ^^ - meta.interpolation
::           ^^ meta.interpolation.dosbatch
::             ^^^^^^^^ meta.interpolation.substring.dosbatch
::                     ^ meta.interpolation.dosbatch
::                      ^^ - meta.interpolation
::                        ^^ meta.interpolation.dosbatch
::                          ^^^ meta.interpolation.substring.dosbatch - meta.interpolation meta.interpolation
::                             ^^^ meta.interpolation.substring.dosbatch meta.interpolation
::                                ^^^^ meta.interpolation.substring.dosbatch - meta.interpolation meta.interpolation
::                                    ^ meta.interpolation.dosbatch
::                                     ^ - meta.interpolation

   ECHO !&!  !&:~ 1, -2!  !&:~ %&%, -2!
::      ^^^ meta.interpolation.dosbatch
::         ^^ - meta.interpolation
::           ^^ meta.interpolation.dosbatch
::             ^^^^^^^^ meta.interpolation.substring.dosbatch
::                     ^ meta.interpolation.dosbatch
::                      ^^ - meta.interpolation
::                        ^^ meta.interpolation.dosbatch
::                          ^^^ meta.interpolation.substring.dosbatch - meta.interpolation meta.interpolation
::                             ^^^ meta.interpolation.substring.dosbatch meta.interpolation
::                                ^^^^ meta.interpolation.substring.dosbatch - meta.interpolation meta.interpolation
::                                    ^ meta.interpolation.dosbatch
::                                     ^ - meta.interpolation

   ECHO %&%  %&:foo=b&r%  %&: !%! = b!%!r %
::      ^^^ meta.interpolation.dosbatch
::         ^^ - meta.interpolation
::           ^^ meta.interpolation.dosbatch
::             ^ meta.interpolation.substitution.dosbatch
::              ^^^ meta.interpolation.substitution.pattern.dosbatch
::                 ^ meta.interpolation.substitution.dosbatch
::                  ^^^ meta.interpolation.substitution.replacement.dosbatch
::                     ^ meta.interpolation.dosbatch
::                      ^^ - meta.interpolation
::                        ^^ meta.interpolation.dosbatch
::                          ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::                           ^ meta.interpolation.substitution.pattern.dosbatch - meta.interpolation meta.interpolation
::                            ^^^ meta.interpolation.substitution.pattern.dosbatch meta.interpolation
::                               ^ meta.interpolation.substitution.pattern.dosbatch - meta.interpolation meta.interpolation
::                                ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::                                 ^^ meta.interpolation.substitution.replacement.dosbatch - meta.interpolation meta.interpolation
::                                   ^^^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation
::                                      ^^ meta.interpolation.substitution.replacement.dosbatch - meta.interpolation meta.interpolation
::                                        ^ meta.interpolation.dosbatch
::                                         ^ - meta.interpolation

   ECHO !&!  !&:foo=b&r!  !&: %!% = b%!%r !
::      ^^^ meta.interpolation.dosbatch
::         ^^ - meta.interpolation
::           ^^ meta.interpolation.dosbatch
::             ^ meta.interpolation.substitution.dosbatch
::              ^^^ meta.interpolation.substitution.pattern.dosbatch
::                 ^ meta.interpolation.substitution.dosbatch
::                  ^^^ meta.interpolation.substitution.replacement.dosbatch
::                     ^ meta.interpolation.dosbatch
::                      ^^ - meta.interpolation
::                        ^^ meta.interpolation.dosbatch
::                          ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::                           ^ meta.interpolation.substitution.pattern.dosbatch - meta.interpolation meta.interpolation
::                            ^^^ meta.interpolation.substitution.pattern.dosbatch meta.interpolation
::                               ^ meta.interpolation.substitution.pattern.dosbatch - meta.interpolation meta.interpolation
::                                ^ meta.interpolation.substitution.dosbatch - meta.interpolation meta.interpolation
::                                 ^^ meta.interpolation.substitution.replacement.dosbatch - meta.interpolation meta.interpolation
::                                   ^^^ meta.interpolation.substitution.replacement.dosbatch meta.interpolation
::                                      ^^ meta.interpolation.substitution.replacement.dosbatch - meta.interpolation meta.interpolation
::                                        ^ meta.interpolation.dosbatch
::                                         ^ - meta.interpolation

   ECHO %&echo %echo%
::      ^^ - meta.interpolation - punctuation - variable
::             ^^^^^^ meta.interpolation.dosbatch
::       ^ keyword.operator.logical.dosbatch
::        ^^^^ support.function.builtin.dosbatch
::             ^ punctuation.section.interpolation.begin.dosbatch
::              ^^^^ variable.other.readwrite.dosbatch
::                  ^ punctuation.section.interpolation.end.dosbatch

   ECHO %& echo %echo%
::      ^^ - meta.interpolation - punctuation - variable
::              ^^^^^^ meta.interpolation.dosbatch
::       ^ keyword.operator.logical.dosbatch
::         ^^^^ support.function.builtin.dosbatch
::              ^ punctuation.section.interpolation.begin.dosbatch
::               ^^^^ variable.other.readwrite.dosbatch
::                   ^ punctuation.section.interpolation.end.dosbatch

   ECHO %foo & ECHO !bar
::      ^^^^ - meta.interpolation - keyword - punctuation - variable
::           ^ keyword.operator.logical.dosbatch
::             ^^^^ support.function.builtin.dosbatch
::                  ^^^^ - meta.interpolation - keyword - punctuation - variable

   ECHO Not% a variable
::      ^^^^^^^^^^^^^^^ - meta.interpolation - keyword - punctuation - variable

   ECHO Not! a variable
::      ^^^^^^^^^^^^^^^ - meta.interpolation - keyword - punctuation - variable

   ECHO %^
::      ^^^ meta.string.dosbatch string.unquoted.dosbatch - meta.interpolation
::       ^ punctuation.separator.continuation.line.dosbatch

   ECHO %^
   foo%
:: ^^^^ meta.string.dosbatch string.unquoted.dosbatch - meta.interpolation - punctuation

   ECHO %foo^
::      ^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - meta.interpolation
::          ^ punctuation.separator.continuation.line.dosbatch

   ECHO %foo^
   :~0,5%
:: ^^^^^^ meta.string.dosbatch string.unquoted.dosbatch - meta.interpolation - punctuation

   ECHO iteration ^(%%j^):
::      ^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::                  ^^ constant.character.escape.dosbatch

   ECHO iteration ^("%%j"^):
::      ^^^^^^^^^^^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::                ^^ constant.character.escape.dosbatch
::                  ^ - constant
::                   ^^ constant.character.escape.dosbatch
::                     ^^ - constant
::                       ^^ constant.character.escape.dosbatch

   ECHO if /i "%%PROCESSOR%%"=="AMD64" goto x64>custom\SetAria2EnvVars.cmd
::      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.echo.dosbatch meta.string.dosbatch string.unquoted.dosbatch - meta.redirection
::                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command meta.redirection.dosbatch
::                                             ^ keyword.operator.assignment.redirection.dosbatch
::             ^^ constant.character.escape.dosbatch
::                        ^^ constant.character.escape.dosbatch


:::: [ MODE command ] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   mode
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch support.function.external.dosbatch
::     ^ - meta.command

   mode /? ignored
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^^^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
:: ^^^^ support.function.external.dosbatch
::      ^ variable.parameter.option.help.dosbatch punctuation.definition.variable.dosbatch
::       ^ variable.parameter.option.help.dosbatch - punctuation
::         ^^^^^^^ comment.line.ignored.dosbatch

   mode con
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::         ^ - meta.command
:: ^^^^ support.function.external.dosbatch

   mode con:
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::          ^ - meta.command
:: ^^^^ support.function.external.dosbatch

   mode com1=lpt1
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::               ^ - meta.command
:: ^^^^ support.function.external.dosbatch
::      ^^^^ variable.language.device.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^ variable.language.device.dosbatch

   mode com1:=lpt1:
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^^^^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::                 ^ - meta.command
:: ^^^^ support.function.external.dosbatch
::      ^^^^^ variable.language.device.dosbatch
::           ^ keyword.operator.assignment.dosbatch
::            ^^^^^ variable.language.device.dosbatch

   mode com1: /status
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^^^^^^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::                   ^ - meta.command
:: ^^^^ support.function.external.dosbatch
::      ^^^^^ variable.language.device.dosbatch
::            ^ variable.parameter.option.dosbatch punctuation.definition.variable.dosbatch
::             ^^^^^^ variable.parameter.option.dosbatch - punctuation

   mode com1: baud=9600 parity=1 xon=on dtr=hs
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::                                            ^ - meta.command
:: ^^^^ support.function.external.dosbatch
::      ^^^^^ variable.language.device.dosbatch
::            ^^^^ variable.parameter.option.dosbatch
::                ^ keyword.operator.assignment.dosbatch
::                 ^^^^ constant.numeric.value.dosbatch
::                      ^^^^^^ variable.parameter.option.dosbatch
::                            ^ keyword.operator.assignment.dosbatch
::                             ^ constant.numeric.value.dosbatch
::                               ^^^ variable.parameter.option.dosbatch
::                                  ^ keyword.operator.assignment.dosbatch
::                                   ^^ constant.language.dosbatch
::                                      ^^^ variable.parameter.option.dosbatch
::                                         ^ keyword.operator.assignment.dosbatch
::                                          ^^ constant.language.dosbatch

   mode con cols=98 lines=30 rate=40 delay=20
:: ^^^^ meta.command.mode.dosbatch meta.function-call.identifier.dosbatch
::     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.mode.dosbatch meta.function-call.arguments.dosbatch
::                                           ^ - meta.command
:: ^^^^ support.function.external.dosbatch
::      ^^^ variable.language.device.dosbatch
::          ^^^^ variable.parameter.option.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^^ constant.numeric.value.dosbatch
::                  ^^^^^ variable.parameter.option.dosbatch
::                       ^ keyword.operator.assignment.dosbatch
::                        ^^ constant.numeric.value.dosbatch
::                           ^^^^ variable.parameter.option.dosbatch
::                               ^ keyword.operator.assignment.dosbatch
::                                ^^ constant.numeric.value.dosbatch
::                                   ^^^^^ variable.parameter.option.dosbatch
::                                        ^ keyword.operator.assignment.dosbatch
::                                         ^^ constant.numeric.value.dosbatch


:::: [ SET variable=string ] ::::::::::::::::::::::::::::::::::::::::::::::::::

   set /? ignored
:: ^^^^^^^^^^^^^^ meta.command.set.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^ variable.parameter.option.help.dosbatch
::        ^^^^^^^ comment.line.ignored.dosbatch

   set # & echo %#%
::     ^ variable.other.readwrite.dosbatch
::       ^ keyword.operator.logical.dosbatch
::              ^^^ meta.interpolation.dosbatch

   set % & echo !%!
::     ^ variable.other.readwrite.dosbatch
::       ^ keyword.operator.logical.dosbatch
::              ^^^ meta.interpolation.dosbatch

   set ! & echo %!%
::     ^ variable.other.readwrite.dosbatch
::       ^ keyword.operator.logical.dosbatch
::              ^^^ meta.interpolation.dosbatch

   set ^& & echo %&%
::     ^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.logical.dosbatch
::               ^^^ meta.interpolation.dosbatch

   set &
::     ^ keyword.operator.logical.dosbatch

   set ^| & echo %|%
::     ^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.logical.dosbatch
::               ^^^ meta.interpolation.dosbatch

   set |
::     ^ keyword.operator.assignment.pipe.dosbatch

   set ^> & echo %>%
::     ^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.logical.dosbatch
::               ^^^ meta.interpolation.dosbatch

   set >
::     ^ keyword.operator.assignment.redirection.dosbatch

   set ^< & echo %<%
::     ^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.logical.dosbatch
::               ^^^ meta.interpolation.dosbatch

   set <
::     ^ keyword.operator.assignment.redirection.dosbatch

   set =
::     ^ keyword.operator.assignment.dosbatch

   set ^=
::     ^^ invalid.illegal.parameter.dosbatch

   set 12>nul
::     ^^ - meta.redirection
::       ^^^^ meta.redirection.dosbatch
::           ^ - meta.redirection
::     ^^ variable.other.readwrite.dosbatch
::       ^ keyword.operator.assignment.redirection.dosbatch
::        ^^^ constant.language.null.dosbatch

   set var=12>nul 3
::     ^^^^ - meta.string - meta.redirection
::         ^^ meta.string.dosbatch - meta.redirection
::           ^^^^ meta.string.dosbatch meta.redirection.dosbatch
::               ^^ meta.string.dosbatch - meta.redirection
::                 ^ - meta.string - meta.redirection
::     ^^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.assignment.dosbatch
::         ^^ string.unquoted.dosbatch
::           ^ keyword.operator.assignment.redirection.dosbatch
::            ^^^ constant.language.null.dosbatch
::               ^^ string.unquoted.dosbatch

   set foo_bar & echo %foo_bar%
:: ^^^^^^^^^^^ meta.command.set.dosbatch
::            ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^^^ variable.other.readwrite.dosbatch

   set foo=
:: ^^^^^^^^ meta.command.set.dosbatch
::         ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.assignment.dosbatch

   set rem=set
:: ^^^^^^^^ meta.command.set.dosbatch - meta.string
::         ^^^ meta.command.set.dosbatch meta.string.dosbatch
::            ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.assignment.dosbatch
::         ^^^ string.unquoted.dosbatch

   set rem set = baz & echo %rem bar %
:: ^^^^^^^^^^^^^ meta.command.set.dosbatch - meta.string
::              ^^^^ meta.command.set.dosbatch meta.string.dosbatch
::                  ^^^ - meta.command - meta.string
::                     ^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
::                     ^^^^ meta.function-call.identifier.dosbatch
::                         ^ meta.function-call.arguments.dosbatch - meta.string
::                          ^^^^^^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - variable.other.readwrite
::     ^^^^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::               ^^^ string.unquoted
::                   ^ keyword.operator.logical.dosbatch
::                     ^^^^ support.function.builtin.dosbatch
::                          ^ punctuation.section.interpolation.begin.dosbatch
::                           ^^^^^^^^ variable.other.readwrite.dosbatch
::                                   ^ punctuation.section.interpolation.end.dosbatch

   set foo=bar^
   baz & echo !foo!"
:: ^^^ meta.command.set.dosbatch meta.string.dosbatch
::    ^^^ - meta.command - meta.string
::       ^^^^^^^^^^^ meta.command.echo.dosbatch
::       ^^^^ meta.function-call.identifier.dosbatch - meta.string - meta.interpolation
::           ^ meta.function-call.arguments.dosbatch - meta.string
::            ^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                 ^ meta.function-call.arguments.dosbatch meta.string.dosbatch - meta.interpolation
:: ^^^ string.unquoted.dosbatch
::     ^ keyword.operator.logical.dosbatch
::       ^^^^ support.function.builtin.dosbatch

   set foo=bar^
   baz" & echo !foo!"
:: ^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::             ^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                  ^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                   ^ - meta.command - meta.string
:: ^^^^^^^^^^^^ string.unquoted.dosbatch
::             ^ punctuation.section.interpolation.begin.dosbatch
::              ^^^ variable.other.readwrite.dosbatch
::                 ^ punctuation.section.interpolation.end.dosbatch
::                  ^ string.unquoted.dosbatch

   set foo="bar^
   baz & echo !foo!"
:: ^^^ meta.function-call.identifier.dosbatch
::    ^^^ - meta.command - meta.string
::       ^^^^^^^^^^^ meta.command.echo.dosbatch
::       ^^^^ meta.function-call.identifier.dosbatch - meta.string - meta.interpolation
::            ^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                 ^ meta.function-call.arguments.dosbatch meta.string.dosbatch - meta.interpolation
:: ^^^ variable.function.dosbatch
::     ^ keyword.operator.logical.dosbatch
::       ^^^^ support.function.builtin.dosbatch

   set foo="bar^
   baz" & echo !foo!"
:: ^^^ meta.function-call.identifier.dosbatch
::    ^^^^^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch
::             ^^^^^ meta.function-call.identifier.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                  ^ meta.function-call.identifier.dosbatch meta.string.dosbatch
::                   ^ - meta.function-call - meta.string
:: ^^^^^^^^^^^^ variable.function.dosbatch
::             ^ punctuation.section.interpolation.begin.dosbatch
::              ^^^ variable.other.readwrite.dosbatch
::                 ^ punctuation.section.interpolation.end.dosbatch
::                  ^ variable.function.dosbatch punctuation.definition.string.end.dosbatch

   set foo=b"a"r^
   baz & echo !foo!"
:: ^^^ meta.command.set.dosbatch meta.string.dosbatch
::    ^^^ - meta.command - meta.string
::       ^^^^^^^^^^^ meta.command.echo.dosbatch
::       ^^^^ meta.function-call.identifier.dosbatch - meta.string - meta.interpolation
::            ^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                 ^ meta.function-call.arguments.dosbatch meta.string.dosbatch - meta.interpolation
:: ^^^ string.unquoted.dosbatch
::     ^ keyword.operator.logical.dosbatch
::       ^^^^ support.function.builtin.dosbatch

   set foo"=bar^
:: ^^^^^^^^^ meta.command.set.dosbatch - meta.string
::          ^^^^ meta.command.set.dosbatch meta.string.dosbatch
::              ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^^^^ string.unquoted.dosbatch
::             ^ - punctuation

   set foo"=bar^
   baz
:: ^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch

   set foo"="bar^
:: ^^^^^^^^^ meta.command.set.dosbatch - meta.string
::          ^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^^^^^^ string.unquoted.dosbatch
::              ^ punctuation.separator.continuation.line.dosbatch
::               ^ - punctuation

   set foo"="bar^
   baz
:: ^^^ meta.command.set.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::    ^ - meta.command - meta.string

   set foo"="bar"^
:: ^^^^^^^^^ meta.command.set.dosbatch - meta.string
::          ^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
::                ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::               ^ - punctuation

   set foo"="bar"^
   baz
:: ^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch


   set fo"o"=bar^
:: ^^^^^^^^^^ meta.command.set.dosbatch - meta.string
::           ^^^^^ meta.command.set.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^ string.unquoted.dosbatch
::              ^ punctuation.separator.continuation.line.dosbatch
::               ^ - punctuation

   set fo"o"=bar^
   baz
:: ^^^ meta.command.set.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::    ^ - meta.command - meta.string

   set fo"o"="bar^
:: ^^^^^^^^^^ meta.command.set.dosbatch - meta.string
::           ^^^^^ meta.command.set.dosbatch meta.string.dosbatch
::                ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::               ^ - punctuation

   set fo"o"="bar^
   baz
:: ^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch

   set fo"o"="bar"^
:: ^^^^^^^^^^ meta.command.set.dosbatch - meta.string
::           ^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^^^ variable.other.readwrite.dosbatch
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::                ^ punctuation.separator.continuation.line.dosbatch
::                 ^ - punctuation

   set fo"o"="bar"^
   baz
:: ^^^ meta.command.set.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::    ^ - meta.command - meta.string

   set foo=%TEMP%\subfolder\
:: ^^^^^^^^ meta.command.set.dosbatch - meta.string - meta.interpolation
::         ^^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::               ^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                          ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.assignment.dosbatch
::         ^ punctuation.section.interpolation.begin.dosbatch
::          ^^^^ variable.other.readwrite.dosbatch
::              ^ punctuation.section.interpolation.end.dosbatch
::               ^^^^^^^^^^^ string.unquoted.dosbatch - variable.other

   set bar="c:\program files (x86)\%example%_%%test"abc
:: ^^^^^^^^ meta.command.set.dosbatch - meta.string - meta.interpolation
::         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                                 ^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                                          ^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                                                      ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^^^ variable.other.readwrite.dosbatch
::        ^ keyword.operator.assignment.dosbatch
::         ^ - punctuation
::         ^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                 ^^^^^^^^^ - string
::                                          ^^^^^^^^^^^ string.unquoted.dosbatch
::                                           ^^ constant.character.escape.dosbatch
::                                                 ^ - punctuation

   SET T=%TIME: =0%
:: ^^^^^^ meta.command.set.dosbatch - meta.string - meta.interpolation
::       ^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation meta.interpolation
::       ^^^^^ meta.interpolation.dosbatch
::            ^ meta.interpolation.substitution.dosbatch
::             ^ meta.interpolation.substitution.pattern.dosbatch
::              ^ meta.interpolation.substitution.dosbatch
::               ^ meta.interpolation.substitution.replacement.dosbatch
::                ^ meta.interpolation.dosbatch
::                 ^ - meta.command - meta.interpolation
:: ^^^ support.function.builtin.dosbatch
::     ^ variable.other.readwrite
::      ^ keyword.operator.assignment
::       ^ punctuation.section.interpolation.begin.dosbatch
::        ^^^^ variable.other.readwrite.dosbatch
::            ^ punctuation.separator.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ string.unquoted.dosbatch
::                ^ punctuation.section.interpolation.end.dosbatch


:::: [ SET "variable=string" ] ::::::::::::::::::::::::::::::::::::::::::::::::

   set "foo="
:: ^^^^ meta.command.set.dosbatch
::     ^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
::           ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ punctuation.definition.string.begin.dosbatch
::      ^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^ punctuation.definition.string.end.dosbatch

   set "foo & echo on
:: ^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^^^^^^^^^^ meta.string.dosbatch
::     ^ punctuation.definition.string.begin.dosbatch
::      ^^^^^^^^^^^^^ variable.other.readwrite.dosbatch - keyword - punctuation

:: "bar is output as no quote follows.
   set "foo="bar" & echo !foo!
:: ^^^^ meta.command.set.dosbatch
::     ^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
::               ^^^^^^^^^^^^^ meta.command.set.dosbatch - meta.string
::                            ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^ punctuation.definition.string.begin.dosbatch
::      ^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^ - punctuation
::           ^^^ string.unquoted.dosbatch
::              ^ punctuation.definition.string.end.dosbatch
::                ^^^^^^^^^^^^ comment.line.ignored.dosbatch

   set "foo="bar" & echo !foo!"
:: ^^^^ meta.command.set.dosbatch
::     ^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                       ^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                             ^ - meta.command - meta.string
::     ^ punctuation.definition.string.begin.dosbatch
::      ^^^ variable.other.readwrite.dosbatch
::          ^^^^^^^^^^^^^ string.unquoted.dosbatch
::          ^ - punctuation
::              ^ - punctuation
::                ^ - keyword
::                       ^ punctuation.section.interpolation.begin.dosbatch
::                        ^^^ variable.other.readwrite.dosbatch
::                           ^ punctuation.section.interpolation.end.dosbatch
::                            ^ punctuation.definition.string.end.dosbatch

   set "foo"="bar" & echo !foo"!
:: ^^^^ meta.command.set.dosbatch
::     ^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
::                ^^^ - meta.command
::                   ^^^^^^^^^^^ meta.command.echo.dosbatch
::                   ^^^^ meta.function-call.identifier.dosbatch
::                        ^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^ - punctuation
::           ^^^^ string.unquoted.dosbatch
::               ^ punctuation.definition.string.end.dosbatch - string
::                 ^ keyword.operator.logical.dosbatch
::                   ^^^^ support.function.builtin.dosbatch
::                        ^ punctuation.section.interpolation.begin.dosbatch
::                         ^^^^ variable.other.readwrite.dosbatch
::                             ^ punctuation.section.interpolation.end.dosbatch

   set "foo"="bar & echo !foo" ignored
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                            ^^^^^^^^ meta.command.set.dosbatch - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::              ^ - punctuation
::                ^ - keyword
::                  ^^^^ - support
::                           ^ punctuation.definition.string.end.dosbatch - string
::                             ^^^^^^^ comment.line.ignored.dosbatch

   set "foo"=bar" & echo !foo" ignored
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                            ^^^^^^^^ meta.command.set.dosbatch - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::              ^ - punctuation
::                ^ - keyword
::                  ^^^^ - support
::                           ^ punctuation.definition.string.end.dosbatch - string
::                             ^^^^^^^ comment.line.ignored.dosbatch

   set "foo"=ba"r & echo !foo" ignored
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                            ^^^^^^^^ meta.command.set.dosbatch - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::              ^ - punctuation
::                ^ - keyword
::                  ^^^^ - support
::                           ^ punctuation.definition.string.end.dosbatch - string
::                             ^^^^^^^ comment.line.ignored.dosbatch

   set "foo"=ba"r & echo !foo" ignored >nul ignored
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                            ^^^^^^^^^ meta.command.set.dosbatch - meta.redirection - meta.string
::                                     ^^^^ meta.redirection.dosbatch
::                                         ^^^^^^^^ meta.command.set.dosbatch - meta.redirection - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::              ^ - punctuation
::                ^ - keyword
::                  ^^^^ - support
::                           ^ punctuation.definition.string.end.dosbatch - string
::                             ^^^^^^^ comment.line.ignored.dosbatch
::                                     ^ keyword.operator.assignment.redirection.dosbatch
::                                      ^^^ constant.language.null.dosbatch

   set "foo"=ba"r & echo !foo" ignored 2>nul ignored
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                            ^^^^^^^^^ meta.command.set.dosbatch - meta.redirection - meta.string
::                                     ^^^^^ meta.command.set.dosbatch meta.redirection.dosbatch
::                                          ^^^^^^^^ meta.command.set.dosbatch - meta.redirection - meta.string
::                                                  ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::              ^ - punctuation
::                ^ - keyword
::                  ^^^^ - support
::                           ^ punctuation.definition.string.end.dosbatch - string
::                             ^^^^^^^ comment.line.ignored.dosbatch
::                                    ^^^^^^ meta.command.set.dosbatch
::                                     ^ constant.numeric.value.dosbatch
::                                      ^ keyword.operator.assignment.redirection.dosbatch
::                                       ^^^ constant.language.null.dosbatch

   set "foo"=b"ar ba"z & echo !foo"!
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                   ^ meta.command.set.dosbatch - meta.string
::                    ^^^ - meta.command
::                       ^^^^^^^^^^^ meta.command.echo.dosbatch
::                       ^^^^ meta.function-call.identifier.dosbatch
::                            ^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^ string.unquoted.dosbatch
::                  ^ punctuation.definition.string.end.dosbatch
::                   ^ comment.line.ignored.dosbatch
::                     ^ keyword.operator.logical.dosbatch
::                       ^^^^ support.function.builtin.dosbatch

   set "foo"=b"ar "ba"z & echo !foo"!
:: ^^^^ meta.command.set.dosbatch - meta.string
::     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                             ^^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                                   ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ - variable.other.readwrite
::      ^^^^ variable.other.readwrite.dosbatch
::         ^ - punctuation
::          ^ keyword.operator.assignment.dosbatch
::           ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                             ^ punctuation.section.interpolation.begin.dosbatch
::                              ^^^^ variable.other.readwrite.dosbatch
::                                  ^ punctuation.section.interpolation.end.dosbatch

   set "foo"=b"ar^
::     ^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
::             ^^^ meta.command.set.dosbatch comment.line.ignored.dosbatch - meta.string
::                ^ - meta.command

   set "foo"=b"ar^
    b)a"z & echo !foo"
::  ^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.dosbatch variable.function.dosbatch

   set "foo"=b"a"r^
    b)a"z & echo !foo"
:: ^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
:: ^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                   ^ punctuation.definition.string.end.dosbatch

   set "foo"=<file.txt>nul
::           ^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.redirection.dosbatch

   set "foo"="<file.txt>nul"
::           ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation - meta.redirection

   set "foo=b"ar^
   b)a"z & echo !foo"
:: ^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch
:: ^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                  ^ punctuation.definition.string.end.dosbatch

   set "foo=b"ar^
   b)az & echo !foo"
:: ^^^^ meta.command.set.dosbatch
::     ^^^ - meta.command
::        ^^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^^ comment.line.ignored
::      ^ keyword.operator.logical.dosbatch
::        ^^^^ support.function.builtin.dosbatch
::             ^^^^^ string.unquoted.dosbatch

:: Double quotes after the equal sign, or part of a quoted assignment are literal chars
   set "XML=<foo bar="%ATTR1%" baz="prefix-%ATTR2%" />"
:: ^^^^ meta.command.set.dosbatch
::     ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                    ^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                                         ^^^^^^^ meta.command.set.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                                                ^^^^^ meta.command.set.dosbatch meta.string.dosbatch - meta.interpolation
::                                                     ^ - meta.command - meta.string
:: ^^^ support.function.builtin.dosbatch
::     ^ punctuation.definition.string.begin
::      ^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch
::          ^^^^^^^^^^ string.unquoted.dosbatch
::                   ^ - punctuation
::                    ^ punctuation.section.interpolation.begin.dosbatch
::                     ^^^^^ variable.other.readwrite.dosbatch
::                          ^ punctuation.section.interpolation.end.dosbatch
::                           ^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                           ^ - punctuation
::                                 ^ - punctuation
::                                         ^ punctuation.section.interpolation.begin.dosbatch
::                                          ^^^^^ variable.other.readwrite.dosbatch
::                                               ^ punctuation.section.interpolation.end.dosbatch
::                                                ^^^^ string.unquoted.dosbatch
::                                                ^ - punctuation
::                                                    ^ punctuation.definition.string.end.dosbatch - string


:::: [ SET /A "variable=expression" ]::::::::::::::::::::::::::::::::::::::::::

   set abc /a = 1+2
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^^^ variable.other.readwrite
::            ^ keyword.operator.assignment - meta.expression.dosbatch
::              ^^^ string.unquoted

   set abc /a = 1+2>nul
:: ^^^ support.function.builtin.dosbatch
::     ^^^^^^^ variable.other.readwrite
::            ^ keyword.operator.assignment - meta.expression.dosbatch
::              ^^^ string.unquoted
::              ^^^ - meta.redirection
::                 ^^^^ meta.redirection.dosbatch
::                 ^ keyword.operator.assignment.redirection.dosbatch
::                  ^^^ constant.language.null.dosbatch

   set /? /a ignored
:: ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^ variable.parameter.option.help.dosbatch
::        ^^^^^^^^^^ comment.line.ignored.dosbatch

   set /A /? ignored
:: ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^ variable.parameter.option.expression.dosbatch
::        ^^ variable.parameter.option.help.dosbatch
::           ^^^^^^^ comment.line.ignored.dosbatch

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
::        ^^^^^^^^^^^^ meta.expression.dosbatch
::        ^ punctuation.definition.string.begin
::         ^^^^^ variable.other.readwrite
::              ^^ keyword.operator.assignment.augmented
::                   ^ punctuation.definition.string.end

   set /A "%hello%+%wow%"
::        ^^^^^^^^^^^^^^^ meta.expression.dosbatch
::        ^ punctuation.definition.string.begin
::         ^^^^^^^ meta.interpolation.dosbatch
::         ^ punctuation.section.interpolation.begin
::               ^ punctuation.section.interpolation.end
::                ^ keyword.operator.arithmetic
::                 ^^^^^ meta.interpolation.dosbatch
::                 ^ punctuation.section.interpolation.begin
::                  ^^^ variable.other.readwrite
::                     ^ punctuation.section.interpolation.end
::                      ^ punctuation.definition.string.end

   set /A "%hello%+wow"
::        ^^^^^^^^^^^^^ meta.expression.dosbatch
::         ^^^^^^^ meta.interpolation.dosbatch
::         ^ punctuation.section.interpolation.begin
::               ^ punctuation.section.interpolation.end
::                ^ keyword.operator.arithmetic

   set /A 1+"%hello%"
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::          ^ punctuation.definition.string.begin
::           ^ punctuation.section.interpolation.begin
::           ^^^^^^^ meta.interpolation.dosbatch
::                 ^ punctuation.section.interpolation.end
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
::        ^^^^^^^^ meta.expression.dosbatch
::        ^ punctuation.definition.string.begin
::         ^ keyword.operator.logical
::           ^^^^ variable.other.readwrite
::               ^ punctuation.definition.string.end

   set /a "! %a12b%"
::        ^^^^^^^^^^ meta.expression.dosbatch
::        ^ punctuation.definition.string.begin
::         ^ keyword.operator.logical
::           ^^^^^^ meta.interpolation.dosbatch
::           ^ punctuation.section.interpolation.begin
::                ^ punctuation.section.interpolation.end
::                 ^ punctuation.definition.string.end

   set /a ! "a12b"
::        ^ keyword.operator.logical
::          ^ punctuation.definition.string.begin
::           ^^^^ variable.other.readwrite
::               ^ punctuation.definition.string.end

   set /a !"%a12b%"
::        ^ keyword.operator.logical
::         ^ punctuation.definition.string.begin
::          ^^^^^^ meta.interpolation.dosbatch
::                ^ punctuation.definition.string.end

   set /a a&=a12b
::         ^ keyword.operator.logical - meta.expression.dosbatch

   set /a " world"=12
::        ^^^^^^^^^^^ meta.command.set.dosbatch meta.expression.dosbatch
::          ^^^^^ variable.other.readwrite
::               ^ punctuation.definition.string.end
::                ^ keyword.operator.assignment
::                 ^^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a "wow"+="2"
::        ^^^^^^^^^^ meta.command.set.dosbatch meta.expression.dosbatch
::         ^^^ variable.other.readwrite
::             ^^ keyword.operator.assignment.augmented - string
::                ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a wow"+="2
::        ^^^^^^^^ meta.command.set.dosbatch meta.expression.dosbatch
::        ^^^ variable.other.readwrite
::            ^^ keyword.operator.assignment.augmented
::               ^ meta.number.integer.decimal.dosbatch constant.numeric.value.dosbatch

   set /a 4*"2+-wow+(3"-2)
::        ^^^^^^^^^^^^^^^^ meta.expression.dosbatch - meta.group meta.group
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
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

   set /a (8"2")
::        ^^^^^^ meta.command.set.dosbatch meta.expression.dosbatch meta.group.dosbatch
::        ^ punctuation.section.group.begin
::         ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::          ^ punctuation.definition.string.begin
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^ punctuation.definition.string.end
::             ^ punctuation.section.group.end

   set /a 4*"2+1"1
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^ keyword.operator.arithmetic
::             ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::               ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a 4*"2++1"
::        ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::         ^ keyword.operator.arithmetic
::           ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::            ^^ keyword.operator.arithmetic
::              ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   set /a 4*"2++w"ow
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

   set /a (8"2)^
+1
:: <- meta.function-call.identifier.dosbatch variable.function.dosbatch


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
::     ^^ variable.parameter.option.expression.dosbatch
::          ^ variable.other.readwrite
::            ^ keyword.operator.arithmetic
::             ^ variable.other.readwrite
::              ^ keyword.operator.logical
::               ^^^^^^ variable.function.dosbatch

   set /a (a+"b)*2"-1
::        ^^^^^^ meta.group
::        ^ punctuation.section.group.begin
::         ^ variable.other.readwrite
::          ^ keyword.operator.arithmetic
::           ^ punctuation.definition.string.begin
::            ^ variable.other.readwrite
::             ^ punctuation.section.group.end
::              ^ keyword.operator.arithmetic - meta.group
::               ^ meta.number.integer.decimal constant.numeric.value.dosbatch
::                ^ punctuation.definition.string.end
::                 ^ keyword.operator.arithmetic - meta.group
::                  ^ meta.number.integer.decimal constant.numeric.value.dosbatch

   ( set /a wow=(1+2) )
:: ^^ meta.block.dosbatch - meta.command
::   ^^^^^^^ meta.block.dosbatch meta.command.set.dosbatch - meta.expression
::          ^^^^ meta.block.dosbatch meta.command.set.dosbatch meta.expression.dosbatch - meta.group
::              ^^^^ meta.block.dosbatch meta.command.set.dosbatch meta.expression.dosbatch meta.group.dosbatch
::                  ^ meta.block.dosbatch - meta.command - meta.expression - meta.group
::                   ^^ - meta.block - meta.group - meta.command
:: ^ punctuation.section.block.begin.dosbatch
::   ^^^ support.function.builtin.dosbatch
::       ^^ variable.parameter.option.expression.dosbatch
::          ^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ punctuation.section.group.begin.dosbatch
::               ^ constant.numeric.value.dosbatch
::                ^ keyword.operator.arithmetic.dosbatch
::                 ^ constant.numeric.value.dosbatch
::                  ^ punctuation.section.block.end.dosbatch
::                    ^ invalid.illegal.stray.dosbatch

   ( set /a "wow=(1+2)" )
:: ^^ meta.block.dosbatch - meta.command
::   ^^^^^^^ meta.block.dosbatch meta.command.set.dosbatch - meta.expression
::          ^^^^^ meta.block.dosbatch meta.command.set.dosbatch meta.expression.dosbatch meta.string.dosbatch - meta.group
::               ^^^^^ meta.block.dosbatch meta.command.set.dosbatch meta.expression.dosbatch meta.string.dosbatch meta.group.dosbatch
::                    ^ meta.block.dosbatch meta.command.set.dosbatch meta.expression.dosbatch meta.string.dosbatch - meta.group
::                     ^^ meta.block.dosbatch - meta.command
::                       ^ - meta.block - meta.command
:: ^ punctuation.section.block.begin.dosbatch
::                      ^ punctuation.section.block.end.dosbatch

:::: [ SET /P variable=promptString ]::::::::::::::::::::::::::::::::::::::::::

   set /? /p ignored
:: ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^ variable.parameter.option.help.dosbatch
::        ^^^^^^^^^^ comment.line.ignored.dosbatch

   set /p /? ignored
:: ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch
:: ^^^ support.function.builtin.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^^ variable.parameter.option.help.dosbatch
::           ^^^^^^^ comment.line.ignored.dosbatch

   set /p today=
:: ^^^^^^^ meta.command.set.dosbatch - meta.prompt
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch
::              ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch - variable

   set ^
   /p today=
::^^^^ meta.command.set.dosbatch - meta.prompt
::    ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch
::          ^ - meta.command
::^ - keyword - variable
:: ^ punctuation.definition.variable.dosbatch
:: ^^ variable.parameter.option.prompt.dosbatch
::   ^ - variable
::    ^^^^^ variable.other.readwrite.dosbatch
::         ^ keyword.operator.assignment.dosbatch - variable

   set /p ^
   today=
::^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch
::       ^ - meta.command
::^^^^^^ variable.other.readwrite.dosbatch
::      ^ keyword.operator.assignment.dosbatch - variable

   set /p ^
   today^
   =
:: ^ meta.command.set.dosbatch meta.prompt.dosbatch
::  ^ - meta.command
:: ^ keyword.operator.assignment.dosbatch - variable

   :: even number of quotes in l-value
   :: unquoted value
   set /p today=enter %date%: ^not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                    ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                          ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                          ^^^ - meta.command
::                                             ^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^^^^^^ string.unquoted.dosbatch
::                    ^^^^^^ - string
::                          ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                            ^^ constant.character.escape.dosbatch
::                                           ^ keyword.operator.logical.dosbatch
::                                             ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: unquoted value with single literal quote in the middle
   set /p today=enter %date%: not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                    ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                      ^ - meta.command
::              ^^^^^^ string.unquoted.dosbatch
::                    ^^^^^^ - string
::                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                         ^ - punctuation
::

   :: even number of quotes in l-value
   :: unquoted value with even number of literal quotes
   set /p today=enter %date%: not a comment" & echo done"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                    ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                       ^ - meta.command
::              ^^^^^^ string.unquoted.dosbatch
::                    ^^^^^^ - string
::                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                         ^ - punctuation
::                                                      ^ - punctuation
::

   :: even number of quotes in l-value
   :: unquoted value with even number of literal quotes in the middle
   set /p today=enter %date%: "not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                    ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                          ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^ meta.command.echo.dosbatch
::              ^^^^^^ string.unquoted.dosbatch
::                    ^^^^^^ - string
::                          ^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                            ^ - punctuation
::                                          ^ - punctuation
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: quoted value with missing end quotation mark
   set /p today="enter %date%: not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                      ^ - meta.command
::              ^^^^^^^ string.quoted.double.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch

   :: even number of quotes in l-value
   :: quoted value with even number of quotes, & applied outside quotes
   set /p today="enter %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                             ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                             ^^^ - meta.command
::                                                ^^^^^^^^^ meta.command.echo.dosbatch
::              ^^^^^^^ string.quoted.double.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::                     ^^^^^^ - string
::                           ^^ string.quoted.double.dosbatch
::                            ^ punctuation.definition.string.end.dosbatch
::                              ^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                              ^ keyword.operator.logical.dosbatch
::                                                ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: quoted value with even number of quotes, & ignored within quotes
   set /p today="enter %date%: not a comment & echo done" ignored
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                       ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch
::                                                               ^ - meta.command
::              ^^^^^^^ string.quoted.double.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
::                                                      ^ punctuation.definition.string.end.dosbatch
::                                                        ^^^^^^^ comment.line.ignored.dosbatch

   :: even number of quotes in l-value
   :: quoted value with odd number of quotes, & ignored within quotes
   set /p today="enter" %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                          ^ - meta.command
::              ^^^^^^^^ string.quoted.double.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::                      ^^^^^^ - string
::                            ^^ string.quoted.double.dosbatch
::                             ^ punctuation.definition.string.end.dosbatch
::                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: odd number of quotes in l-value
   :: unquoted value
   set /p today"=enter %date%: ^not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                       ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::        ^^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch

   :: odd number of quotes in l-value
   :: unquoted value with single literal quote in the middle
   set /p today"=enter %date%: not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^ meta.command.echo.dosbatch
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                          ^ - punctuation
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch

   :: odd number of quotes in l-value
   :: unquoted value with even number of literal quotes
   set /p today"=enter %date%: not a comment" & echo done"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^^ meta.command.echo.dosbatch
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                          ^ - punctuation
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch

   :: odd number of quotes in l-value
   :: unquoted value with even number of literal quotes in the middle
   set /p today"=enter %date%: "not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                        ^ - meta.command
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                          ^ - punctuation
::                                                       ^ - punctuation

   :: odd number of quotes in l-value
   :: quoted value with missing end quotation mark
   set /p today"="enter %date%: not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^ meta.command.echo.dosbatch
::                                                       ^ - meta.command
::               ^^^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch

   :: odd number of quotes in l-value
   :: quoted value with even number of quotes, & applied outside quotes
   set /p today"="enter %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                          ^ - meta.command
::               ^^^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::                      ^^^^^^ - string
::                            ^^ string.quoted.double.dosbatch
::                             ^ punctuation.definition.string.end.dosbatch
::                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: odd number of quotes in l-value
   :: quoted value with even number of quotes, & ignored within quotes
   set /p today"="enter %date%: not a comment & echo done" text
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^^^^^^^ meta.command.echo.dosbatch
::                                                             ^ - meta.command
::               ^^^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^ string.quoted.double.dosbatch
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch
::                                                   ^^^^^^^^^^ string.unquoted.dosbatch
::                                                       ^ - punctuation

   :: odd number of quotes in l-value
   :: quoted value with odd number of quotes, & ignored within quotes
   set /p today"="enter" %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                       ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                             ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                               ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                               ^^^ - meta.command
::                                                  ^^^^^^^^^ meta.command.echo.dosbatch
::                                                           ^ - meta.command
::               ^^^^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::                       ^^^^^^ - string
::                             ^^ string.quoted.double.dosbatch
::                              ^ punctuation.definition.string.end.dosbatch
::                                ^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                                ^ keyword.operator.logical.dosbatch
::                                                  ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: unquoted value
   set /p today=enter a^
:: ^^^^^^^ meta.command.set.dosbatch - meta.prompt
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^^^^^^^^^ string.unquoted.dosbatch
::                     ^ punctuation.separator.continuation.line.dosbatch
::                      ^ - punctuation

   :: even number of quotes in l-value
   :: unquoted value
   set /p today=enter a^
   date: arguments || echo done
:: ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                ^^^^ - meta.command
::                    ^^^^^^^^^ meta.command.echo.dosbatch
::                             ^ - meta.command
:: ^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                 ^^ keyword.operator.logical - comment
::                    ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: unquoted value with single literal quote in the middle
   set /p today=enter a^
   date: " arguments || echo done
:: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch string.unquoted.dosbatch
::                               ^ - meta.command

   :: even number of quotes in l-value
   :: line continuation not applied within quoted section
   set /p today=enter "a^
   date: " arguments || echo done
:: ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
::     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch

   :: even number of quotes in l-value
   :: line continuation not applied within quoted section
   set /p today=enter "a^
   date: arguments || echo done
:: ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
::     ^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                ^^^^ - meta.command
::                    ^^^^^^^^^ meta.command.echo.dosbatch
::                              ^ - meta.command
::                 ^^ keyword.operator.logical - comment
::                    ^^^^ support.function.builtin.dosbatch


:: Unquoted prompt with quoted prompt text

   :: even number of quotes in l-value
   :: line continuation not applied within quoted section
   set /p today="enter a^
:: ^^^^^^^ meta.command.set.dosbatch - meta.prompt
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                       ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::              ^^^^^^^^^ string.quoted.double.dosbatch
::                       ^ - string

   :: even number of quotes in l-value
   :: line continuation not applied within quoted section
   :: content of following line has no effect
   set /p today="enter a^
   date: arguments || echo done
:: ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
::     ^^^^^^^^^^^ meta.function-call.arguments.dosbatch
::                ^^^^ - meta.command
::                    ^^^^^^^^^ meta.command.echo.dosbatch
::                             ^ - meta.command
::                 ^^ keyword.operator.logical - comment
::                    ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: line continuation not applied within quoted section
   :: content of following line has no effect
   set /p today="enter a^
   date: " arguments || echo done
:: ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch
::     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch

   :: even number of quotes in l-value
   :: quoted value
   set /p today="enter "a^
:: ^^^^^^^ meta.command.set.dosbatch - meta.prompt
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ punctuation.definition.string.begin.dosbatch
::              ^^^^^^^^ string.quoted.double.dosbatch
::                     ^ punctuation.definition.string.end.dosbatch
::                      ^^^ comment.line.ignored.dosbatch

   :: even number of quotes in l-value
   :: quoted value without quote in following line
   set /p today="enter "a^
   date: arguments || echo done
:: ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^ - meta.command
:: ^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                 ^^ keyword.operator.logical.dosbatch
::                    ^^^^ support.function.builtin.dosbatch

   :: even number of quotes in l-value
   :: quoted value with effective quote in following line
   set /p today="enter "a^
   date: " arguments || echo done
:: ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::        ^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                               ^ - meta.command
:: ^^^^^^^ string.quoted.double.dosbatch
::       ^ punctuation.definition.string.end.dosbatch
::         ^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch


:::: [ SET /P "variable=promptString" ]::::::::::::::::::::::::::::::::::::::::

   :: quoted prompt, even number of quotes in l-value
   :: unquoted value
   set /p "today=enter %date%: ^not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                       ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch - variable
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch - variable
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                             ^^ - constant.character.escape
::                                            ^ - keyword
::                                                       ^ - string

   :: quoted prompt, even number of quotes in l-value
   :: unquoted value with single literal quote in the middle
   set /p "today=enter %date%: not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                          ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^ meta.command.echo.dosbatch
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                          ^ punctuation.definition.prompt.end.dosbatch - string
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch

   :: quoted prompt, even number of quotes in l-value
   :: unquoted value with even number of literal quotes
   set /p "today=enter %date%: not a comment" & echo done"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                          ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^^ meta.command.echo.dosbatch
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                             ^ - punctuation
::                                          ^ punctuation.definition.prompt.end.dosbatch - string
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ support.function.builtin.dosbatch

   :: quoted prompt, even number of quotes in l-value
   :: unquoted value with even number of literal quotes in the middle
   set /p "today=enter %date%: "not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                     ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                           ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                        ^ - meta.command
::               ^^^^^^ string.unquoted.dosbatch
::                     ^^^^^^ - string
::                           ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                           ^ punctuation.definition.prompt.end.dosbatch - string
::                                             ^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: quoted prompt, even number of quotes in l-value
   :: quoted value with missing end quotation mark
   set /p "today="enter %date%: not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                           ^^^ - meta.command
::                                              ^^^^^^^^^ meta.command.echo.dosbatch
::                                                       ^ - meta.command
::               ^ punctuation.definition.prompt.end.dosbatch - string
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                            ^ keyword.operator.logical.dosbatch
::                                              ^^^^ meta.function-call.identifier.dosbatch support.function.builtin.dosbatch

   :: quoted prompt, even number of quotes in l-value
   :: quoted value with even number of quotes, & applied outside quotes
   set /p "today="enter %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                          ^ - meta.command
::               ^^^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::                      ^^^^^^ - string
::                            ^^ string.quoted.double.dosbatch
::                             ^ punctuation.definition.prompt.end.dosbatch punctuation.definition.string.end.dosbatch
::                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: quoted prompt, even number of quotes in l-value
   :: quoted value with even number of quotes, & ignored within quotes
   set /p "today="enter %date%: ignored content & echo done" end
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                             ^^^ - meta.command
::                                                ^^^^^^^^^^^^^^ meta.command.echo.dosbatch
::                                                              ^ - meta.command
::               ^ punctuation.definition.prompt.end.dosbatch - string
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                              ^ keyword.operator.logical.dosbatch
::                                                ^^^^ support.function.builtin.dosbatch

   :: quoted prompt, even number of quotes in l-value
   :: quoted value with odd number of quotes, & ignored within quotes
   set /p "today="enter" %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                           ^ - meta.command
::               ^^^^^^^ string.quoted.double.dosbatch
::               ^ punctuation.definition.string.begin.dosbatch
::                     ^ punctuation.definition.prompt.end.dosbatch punctuation.definition.string.end.dosbatch
::                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: unquoted value
   set /p "today"=enter %date%: ^not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                            ^^^ - meta.command
::                                               ^^^^^^^^^ meta.command.echo.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::       ^ - variable
::         ^^^^^^ variable.other.readwrite.dosbatch
::               ^ keyword.operator.assignment.dosbatch
::                ^^^^^^ string.unquoted.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                              ^^ constant.character.escape.dosbatch
::                                             ^ keyword.operator.logical.dosbatch
::                                               ^^^^ support.function.builtin.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: unquoted value with single literal quote in the middle
   set /p "today"=enter %date%: not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                           ^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                        ^ - meta.command
::                ^^^^^^ string.unquoted.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                           ^ punctuation.definition.prompt.end.dosbatch - string
::                                             ^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: unquoted value with even number of literal quotes
   set /p "today"=enter %date%: not a comment" & echo done"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                                        ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                         ^ - meta.command
::                ^^^^^^ string.unquoted.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                           ^ - punctuation
::                                             ^ - keyword
::                                                        ^ punctuation.definition.prompt.end.dosbatch - string

   :: quoted prompt, odd number of quotes in l-value
   :: unquoted value with even number of literal quotes in the middle
   set /p "today"=enter %date%: "not a comment" & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                      ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                            ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                            ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                             ^^^ - meta.command
::                                                ^^^^^^^^^ meta.command.echo.dosbatch
::                                                         ^ - meta.command
::                ^^^^^^ string.unquoted.dosbatch
::                      ^^^^^^ - string
::                            ^^^^^^^^^^^^^^^^ string.unquoted.dosbatch
::                                            ^ punctuation.definition.prompt.end.dosbatch - meta.string
::                                              ^ keyword.operator.logical.dosbatch
::                                                ^^^^ support.function.builtin.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: quoted value with missing end quotation mark
   set /p "today"="enter %date%: not a comment & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                        ^ - meta.command
::                ^ punctuation.definition.prompt.end.dosbatch - string
::                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: quoted value with even number of quotes, & applied outside quotes
   set /p "today"="enter %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                       ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                             ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                               ^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                               ^^^ - meta.command
::                                                  ^^^^^^^^^ meta.command.echo.dosbatch
::                                                           ^ - meta.command
::                ^^^^^^^ string.quoted.double.dosbatch
::                ^ punctuation.definition.string.begin.dosbatch
::                       ^^^^^^ - string
::                             ^^ string.quoted.double.dosbatch
::                              ^ punctuation.definition.prompt.end.dosbatch punctuation.definition.string.end.dosbatch
::                                ^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                                ^ keyword.operator.logical.dosbatch
::                                                  ^^^^ support.function.builtin.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: quoted value with even number of quotes, & ignored within quotes
   set /p "today"="enter %date%: not a comment & echo done" text
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                              ^ - meta.command
::                ^ punctuation.definition.prompt.end.dosbatch - string
::                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch

   :: quoted prompt, odd number of quotes in l-value
   :: quoted value with odd number of quotes, & ignored within quotes
   set /p "today"="enter" %date%:" ignored content & echo done
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.interpolation.dosbatch
::                              ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                                                            ^ - meta.command
::                ^^^^^^^^ string.quoted.double.dosbatch
::                ^ punctuation.definition.string.begin.dosbatch
::                        ^^^^^^ - string
::                              ^^ string.quoted.double.dosbatch
::                               ^ punctuation.definition.prompt.end.dosbatch punctuation.definition.string.end.dosbatch
::                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch


:::: [ SET /P variable=promptString < redirection ]::::::::::::::::::::::::::::

   set /p today=<today.txt
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^ meta.command.set.dosbatch meta.prompt.dosbatch meta.redirection.dosbatch
::               ^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.redirection.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::              ^ keyword.operator.assignment.redirection.dosbatch

   set /p today=Enter <today.txt a date
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch - meta.interpolation
::                    ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.redirection.dosbatch
::                              ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch - meta.interpolation
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::                    ^ keyword.operator.assignment.redirection.dosbatch

   set /p today=Enter < "..\to day.txt" a date
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::              ^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                    ^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.redirection.dosbatch
::                      ^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch meta.redirection.dosbatch meta.path.dosbatch meta.string.dosbatch
::                                     ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^^^^^ variable.other.readwrite.dosbatch
::             ^ keyword.operator.assignment.dosbatch
::                    ^ keyword.operator.assignment.redirection.dosbatch

   set /p "today=<today.txt"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::               ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.string.dosbatch
::                         ^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                          ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ - keyword
::               ^^^^^^^^^^ meta.string.dosbatch string.unquoted.dosbatch
::                         ^ punctuation.definition.prompt.end.dosbatch

   set /p "today="<today.txt
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.redirection.dosbatch
::                          ^ - meta.command
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^ keyword.operator.assignment.redirection.dosbatch

   set /p "today=" this is ignored <today.txt not 2>nul, but 12>1 is ignored
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch - meta.redirection
::                                 ^^^^^^^^^^ meta.command.set.dosbatch meta.redirection.dosbatch - comment
::                                           ^^^^^ meta.command.set.dosbatch - meta.redirection
::                                                ^^^^^ meta.command.set.dosbatch meta.redirection.dosbatch - comment
::                                                     ^^^^^^^^ comment.line.ignored.dosbatch - meta.redirection
::                                                             ^^ meta.command.set.dosbatch meta.redirection.dosbatch
::                                                               ^^^^^^^^^^^ comment.line.ignored.dosbatch - meta.redirection
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^ - comment - string
::                 ^^^^^^^^^^^^^^^^ comment.line.ignored.dosbatch
::                                 ^ keyword.operator.assignment.redirection.dosbatch
::                                  ^^^^^^^^^ meta.path.dosbatch meta.string.dosbatch string.unquoted.dosbatch

   set /p "today="<"c:\this week\to day.txt"
:: ^^^^^^^ meta.command.set.dosbatch - meta.string
::        ^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch - meta.string
::                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch meta.redirection.dosbatch
:: ^^^ support.function.builtin.dosbatch
::    ^ - keyword - variable
::     ^ punctuation.definition.variable.dosbatch
::     ^^ variable.parameter.option.prompt.dosbatch
::        ^ punctuation.definition.prompt.begin.dosbatch
::         ^^^^^ variable.other.readwrite.dosbatch
::              ^ keyword.operator.assignment.dosbatch
::               ^ punctuation.definition.prompt.end.dosbatch
::                ^ keyword.operator.assignment.redirection.dosbatch
::                 ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.dosbatch

   set /p "foo=b"ar^
   b)a"z & echo !foo!" <c:\data\dummy.txt
:: ^^^^^^^^^^^^^^^^^^^ meta.command.set.dosbatch meta.prompt.dosbatch
::                     ^^^^^^^^^^^^^^^^^^ meta.redirection.dosbatch

:::: [ TITLE ] ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   title
:: ^^^^^ meta.command.title.dosbatch meta.function-call.identifier.dosbatch
:: ^^^^^ support.function.builtin.dosbatch
::      ^ - meta.command

   title Foo 123.5 bar
:: ^^^^^^^^^^^^^^^^^^^ meta.command.title.dosbatch
:: ^^^^^ meta.function-call.identifier.dosbatch
::       ^^^^^^^^^^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch
::                    ^ - meta.command - meta.string
:: ^^^^^ support.function.builtin.dosbatch
::       ^^^^^^^^^^^^^ string.unquoted.dosbatch - constant
::                    ^ - string

   title:Foo
:: ^^^^^^^^^ meta.command.title.dosbatch
:: ^^^^^ meta.function-call.identifier.dosbatch
::      ^^^^ meta.function-call.arguments.dosbatch meta.string.dosbatch
::          ^ - meta.command - meta.string
:: ^^^^^ support.function.builtin.dosbatch
::      ^^^^ string.unquoted.dosbatch - constant
::          ^ - string

   title /? ignored
:: ^^^^^^^^^^^^^^^^ meta.command.title.dosbatch
:: ^^^^^ meta.function-call.identifier.dosbatch
::      ^^^^^^^^^^^ meta.function-call.arguments.dosbatch
:: ^^^^^ support.function.builtin.dosbatch
::       ^ variable.parameter.option.help.dosbatch punctuation.definition.variable.dosbatch
::        ^ variable.parameter.option.help.dosbatch - punctuation
::          ^^^^^^^ comment.line.ignored.dosbatch
