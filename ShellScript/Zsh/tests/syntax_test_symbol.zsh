# SYNTAX TEST "Packages/ShellScript/Zsh.sublime-syntax"

###############################################################################
# ALIAS symbols
###############################################################################

alias myabbr="git \"status\""
#     @@@@@@ definition
#             @@@ reference

  myabbr
# @@@@@@ reference

( myabbr )
# @@@@@@ reference

{ myabbr }
# @@@@@@ reference

var=`myabbr`
#    @@@@@@ reference

  unalias myabbr
# @@@@@@@ reference
#         @@@@@@ reference

###############################################################################
# COPROC symbols
###############################################################################

coproc proc { func1 running }
#      @@@@ definition
#             @@@@@ reference

###############################################################################
# FUNCTION symbols
###############################################################################

function func1() { func2() }
#        @@@@@ definition
#                  @@@@@ definition

function $fname()
#        @@@@@@ definition

function f$name()
#        @@@@@@ definition

function f${name:$start:5}()
#        @@@@@@@@@@@@@@@@@ definition

  func3()
# @@@@@ definition

  func3
# @@@@@ reference

  'func3'
#  @@@@@ reference

  "func3"
#  @@@@@ reference

( func3 )
# @@@@@ reference

{ func3 }
# @@@@@ reference

  trap 'func3' SIGTERM
# @@@@ reference
#       @@@@@ reference

  trap "func3" SIGTERM
# @@@@ reference
#       @@@@@ reference

  trap `func3` SIGTERM
# @@@@ reference
#       @@@@@ reference

  /usr/bin/app arg
# @@@@@@@@@@@@ reference

  ~/.bin/**/app?[Nn]ame arg
# @@@@@@@@@@@@@@@@@@@@@ reference

###############################################################################
# ZSH SPECIAL FUNCTION symbols
###############################################################################

  zshexit() {}
# @@@@@@@ definition

  TRAPEXIT() {}
# @@@@@@@@ definition
