#! SYNTAX TEST "Packages/D/D.sublime-syntax" dmd
#! <- comment.line.shebang.d punctuation.definition.comment.d
 #! <- comment.line.shebang.d punctuation.definition.comment.d
#!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.shebang.d
#!                                           ^^^ constant.language.shebang.d
;
// foo
#! ^^^ comment.line.double-slash.d

#! foo
#! <- invalid.illegal.d
 #! <- keyword.operator.logical.d dmd
#! ^^^ meta.path.d variable.other.d

