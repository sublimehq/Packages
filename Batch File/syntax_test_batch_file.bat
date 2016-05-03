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

   GOTO:EOF
:: ^^^^ keyword.control.statement.dosbatch

:: Redirection
   ECHO Hello World! > hello.txt
:: ^^^^                keyword.command.dosbatch
::                   ^ keyword.operator.redirect.shell

   ECHO >> NUL
::      ^^     keyword.operator.redirect.shell

:: Conditionals
   IF foo EQU bar
:: ^^         keyword.control.conditional.dosbatch
::        ^^^ keyword.operator.dosbatch

   FOR %%G IN (a,b) DO (md %%G)
:: ^^^                 keyword.control.repeat.dosbatch

   FIND "a" |
::          ^ keyword.operator.pipe.dosbatch
