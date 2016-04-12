:: SYNTAX TEST "Packages/Batch File/Batch File.sublime-syntax"

   REM I'm a comment
:: ^^^               keyword.command.rem.dosbatch
::     ^^^^^^^^^^^^^ comment.line.rem.dosbatch

   :: Me too!
:: ^^^^^^^^^^ comment.line.colons.dosbatch

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

   FIND "foo"
::      ^       punctuation.definition.string.begin.shell
::      ^^^^^   string.quoted.double.dosbatch
::          ^   punctuation.definition.string.end.shell

   FIND "a" |
::          ^ keyword.operator.pipe.dosbatch
