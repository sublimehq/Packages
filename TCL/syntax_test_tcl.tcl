# SYNTAX TEST "Packages/TCL/Tcl.sublime-syntax"

# -------------------------------------------------------------------------- #
# Issue 134: https://github.com/SublimeTextIssues/DefaultPackages/issues/134
# -------------------------------------------------------------------------- #
regsub -all {\/} $line {\\} line;
# <- keyword.other
#            ^ string.regexp
#                       ^ constant.character.escape
regsub -all {\\\\} $line {\\} line;
# <- keyword.other
#            ^ string.regexp constant.character.escape
#                         ^ constant.character.escape
puts "Not Highlighting"
# <- keyword.other
#     ^ string.quoted.double


# -------------------------------------------------------------------------- #
# Issue 131: https://github.com/SublimeTextIssues/DefaultPackages/issues/131
# -------------------------------------------------------------------------- #
set ok1 {["]"]}
#       ^^^^^^^ string.quoted.curly
set ok2 {["][]"]}
#       ^^^^^^^^^ string.quoted.curly
set not_ok {["]["]}
#          ^^^^^^^^ string.quoted.curly
puts $ok1            ;# ["]"]
# ^ keyword.other
#    ^^^^ variable.other
#    ^ punctuation.definition.variable
#                     ^ comment.line
puts $ok2            ;# ["][]"]
# ^ keyword.other
#    ^^^^ variable.other
#    ^ punctuation.definition.variable
#                     ^ comment.line
puts $not_ok         ;# ["]["]
# ^ keyword.other
#    ^^^^^^^ variable.other
#    ^ punctuation.definition.variable
#                     ^ comment.line
