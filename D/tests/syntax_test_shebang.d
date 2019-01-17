#! SYNTAX TEST "Packages/D/D.sublime-syntax"
#! <- comment.line.shebang.d
 #! <- comment.line.shebang.d
#!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.shebang.d

// foo
#! ^^^ comment.line.double-slash.d

#! foo
#! ^^^ - comment.line.shebang.d
