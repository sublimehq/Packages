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
set ok2 {["][]"]}
set not_ok {["]["]}
puts $ok1            ;# ["]"]
puts $ok2            ;# ["][]"]
puts $not_ok         ;# ["]["]
