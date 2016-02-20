rem SYNTAX TEST "Packages/Batch File/Batch File.sublime-syntax"

rem comment
rem <- keyword.command.rem
rem ^ comment.line.rem

@rem comment
 rem <- keyword.command.rem
rem  ^ comment.line.rem

@dir
rem <- keyword.operator.at
 rem <- keyword.command

call myBatchFile.bat > out.txt
rem <- keyword.control.statement
rem                  ^ keyword.operator.redirect

if %var%=="" (dir)
rem <- keyword.control.conditional
rem           ^ keyword.command

echo "test"
rem <- keyword.command
rem  ^ punctuation.definition.string.begin
rem   ^^^^ string.quoted.double
rem       ^ punctuation.definition.string.end
