#! SYNTAX TEST "Packages/D/D.sublime-syntax"
#! <- comment.line.number-sign.d punctuation.definition.comment.number-sign.d
 #! <- comment.line.number-sign.d punctuation.definition.comment.number-sign.d
#!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.d
;
// foo
#! ^^^ comment.line.double-slash.d

#! foo
#! ^^^ comment.line.number-sign.d
