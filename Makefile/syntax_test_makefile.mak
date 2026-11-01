# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

#################################
# Comments                      #
#################################

# this is a comment
# <- comment.line.number-sign.makefile punctuation.definition.comment.makefile
#^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile

# this is a \
multiline comment
# <- comment.line.number-sign.makefile
#^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile

# this is not a \\
multiline comment
# <- - comment
#^^^^^^^^^^^^^^^^^ - comment

# this is a \\\
multiline comment
# <- comment.line.number-sign.makefile
#^^^^^^^^^^^^^^^^^ comment.line.number-sign.makefile

#   echo I am a comment \
    echo I am a comment, too!
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line

#   echo I am a comment \
    echo I am a comment, too!
    echo I am no comment...
#   ^^^^^^^^^^^^^^^^^^^^^^^ - comment.line

\# not a comment
# <- constant.character.escape.makefile
#^ constant.character.escape.makefile
#^^^^^^^^^^^^^^^^ - comment

$( # not a comment )
#^^^^^^^^^^^^^^^^^^^ meta.interpolation.makefile
# ^^^^^^^^^^^^^^^^^ - comment

${ # not a comment }
#^^^^^^^^^^^^^^^^^^^ meta.interpolation.makefile
# ^^^^^^^^^^^^^^^^^ - comment

#################################
# Merge Conflict Markers        #
#################################

<<<<<<< HEAD
# <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
# <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
# <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

define TEST_CONFLICT_IN_MULTILINE_VARS :=
<<<<<<< HEAD
# <- meta.string.makefile string.unquoted.makefile meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile meta.block.conflict.begin.diff
# ^^^^^ punctuation.section.block.begin.diff
#      ^ - entity - punctuation
#       ^^^^ entity.name.section.diff
#           ^ - entity - punctuation

=======
# <- meta.string.makefile string.unquoted.makefile meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^^ meta.string.makefile string.unquoted.makefile meta.block.conflict.separator.diff
# ^^^^^ punctuation.section.block.diff
#      ^ - punctuation

>>>>>>> master
# <- meta.string.makefile string.unquoted.makefile meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^^ meta.string.makefile string.unquoted.makefile meta.block.conflict.end.diff
#^^^^^^ punctuation.section.block.end.diff
#      ^ - entity - punctuation
#       ^^^^^^ entity.name.section.diff
#             ^ - entity - punctuation
endef
# <- keyword.control.makefile
#^^^^ keyword.control.makefile

#################################
# 3.3 Including Other Makefiles #
#################################

include foo *.mk $(bar)
# <- keyword.control.import.makefile
#^^^^^^ keyword.control.import.makefile
#       ^^^^^^^^^^^^^^^ meta.string.glob.makefile
#       ^^^^^^^^^ string.unquoted.makefile
#           ^ constant.other.wildcard.asterisk.makefile
#                ^^^^^^ meta.interpolation.makefile
#                ^ punctuation.definition.interpolation.makefile
#                 ^ punctuation.section.interpolation.begin.makefile
#                  ^^^ variable.other.makefile
#                     ^ punctuation.section.interpolation.end.makefile

-include foo *.mk $(bar)
# <- keyword.control.import.makefile
#^^^^^^^ keyword.control.import.makefile
#        ^^^^^^^^^^^^^^^ meta.string.glob.makefile
#        ^^^^^^^^^ string.unquoted.makefile
#            ^ constant.other.wildcard.asterisk.makefile
#                 ^^^^^^ meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^ variable.other.makefile
#                      ^ punctuation.section.interpolation.end.makefile

sinclude foo *.mk $(bar)
# <- keyword.control.import.makefile
#^^^^^^^ keyword.control.import.makefile
#        ^^^^^^^^^^^^^^^ meta.string.glob.makefile
#        ^^^^^^^^^ string.unquoted.makefile
#            ^ constant.other.wildcard.asterisk.makefile
#                 ^^^^^^ meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^ variable.other.makefile
#                      ^ punctuation.section.interpolation.end.makefile

s-include
# <- - keyword
#^^^^^^^^^ - keyword

includes
# <- - keyword
#^^^^^^^ - keyword

#################################
# 4.5.2 The vpath Directive     #
#################################

vpath dir/*/whatevs whatevs
# <- keyword.control.vpath.makefile
#^^^^ keyword.control.vpath.makefile
#     ^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#         ^ constant.other.wildcard.asterisk.makefile
#                   ^^^^^^^ meta.string.makefile string.unquoted.makefile

vpath asdf/*
# <- keyword.control.vpath.makefile
#^^^^ keyword.control.vpath.makefile
#     ^^^^^^ meta.string.glob.makefile string.unquoted.makefile
#          ^ constant.other.wildcard.asterisk.makefile

vpath
# <- keyword.control.vpath.makefile
#^^^^ keyword.control.vpath.makefile

# a comment check
# <- comment.line

rule: asdf
  @rm -rf /
# <- meta.function.body

#####################################
# 6.1 Basics of Variable References #
#####################################

 $
#^ - punctuation

 $F
#^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ variable.other.makefile

 $FOO
#^^ meta.interpolation.makefile
#  ^^ - meta.interpolation
#^ punctuation.definition.interpolation.makefile - variable.language
# ^ variable.other.makefile

 $(
#^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile

 $(

# <- - meta.variable - meta.interpolation

 $()
#^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^ punctuation.section.interpolation.end.makefile

 $(var$\
#^^^^^^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^^^^^^ variable.other.makefile
#      ^ punctuation.separator.continuation.line.makefile

 $(var$\
   name)
#^^^^^^^ meta.interpolation.makefile
#^^^^^^ variable.other.makefile
#      ^ punctuation.section.interpolation.end.makefile

 ${

# <- - meta.variable - meta.interpolation

 ${}
#^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^ punctuation.section.interpolation.end.makefile

 ${var$\
#^^^^^^^^ meta.interpolation.makefile
#^ punctuation.definition.interpolation.makefile
# ^ punctuation.section.interpolation.begin.makefile
#  ^^^^^^ variable.other.makefile
#      ^ punctuation.separator.continuation.line.makefile

 ${var$\
   name}
#^^^^^^^ meta.interpolation.makefile
#^^^^^^ variable.other.makefile
#      ^ punctuation.section.interpolation.end.makefile

#################################
# 6.3.1 substitution references #
#################################

bar := $(foo)
#      ^^^^^^ meta.string.makefile meta.interpolation.makefile - string
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile

bar := $(foo:.o=.c)
#      ^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - string meta.interpolation
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#              ^ keyword.operator.assignment.makefile
#                 ^ punctuation.section.interpolation.end.makefile

bar := $(foo:%.o=%.c)
#      ^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - string meta.interpolation
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ variable.language.makefile
#               ^ keyword.operator.assignment.makefile
#                ^ variable.language.makefile
#                   ^ punctuation.section.interpolation.end.makefile

bar := ${foo}
#      ^^^^^^ meta.string.makefile meta.interpolation.makefile - string
#      ^ punctuation.definition.interpolation.makefile - variable
#       ^ punctuation.section.interpolation.begin.makefile - variable
#        ^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile - variable

bar := ${foo:%.o=%.c}
#      ^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - string meta.interpolation
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.definition.substitution.makefile
#            ^ variable.language.makefile
#               ^ keyword.operator.assignment.makefile
#                ^ variable.language.makefile
#                   ^ punctuation.section.interpolation.end.makefile

foo = bar # a comment
# <- meta.variable.makefile variable.other.makefile
#^^ meta.variable.makefile variable.other.makefile
#  ^^^ - meta.variable - variable - meta.string - string
#   ^ keyword.operator.assignment.makefile
#     ^^^ meta.string.makefile string.unquoted.makefile
#        ^ - meta.string - string
#         ^^^^^^^^^^^^ comment.line.number-sign.makefile
#         ^ punctuation.definition.comment.makefile

foo = bar # a multiline \
#                       ^ comment.line.number-sign.makefile punctuation.separator.continuation.line.makefile
foo = bar # a multiline \
              comment
#             ^ comment.line

var \
#   ^ punctuation.separator.continuation.line.makefile

var \
:= \
# <- keyword.operator.assignment.makefile
#  ^ punctuation.separator.continuation.line.makefile

var \
:= \
word
# <- meta.string.makefile string.unquoted.makefile

var := one$\
#          ^ meta.string.makefile string.unquoted.makefile punctuation.separator.continuation.line.makefile
var := one$\
       word
#^^^^^^^^^^ meta.string.makefile string.unquoted.makefile

#################################
# 6.3.2 computed variable names #
#################################

x = $(y)
y = z
z = Hello
a := $($(x))
sources := $($(a1)_objects:.o=.c)
dir = foo
$(dir)_sources := $(wildcard $(dir)/*.c)
# <- meta.variable.makefile meta.interpolation.makefile punctuation.definition.interpolation.makefile
#^^^^^ meta.variable.makefile meta.interpolation.makefile - variable variable
#     ^^^^^^^^ meta.variable.makefile - meta.interpolation
#^ punctuation.section.interpolation.begin.makefile
# ^^^ variable.other.makefile
#    ^ punctuation.section.interpolation.end.makefile
#     ^^^^^^^^ variable.other.makefile
#              ^^ keyword.operator.assignment.makefile
#                 ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^^^^^^^^^ meta.function-call.makefile
#                   ^^^^^^^^ support.function.builtin.makefile
#                            ^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.makefile
#                            ^^^^^^ meta.interpolation.makefile
#                            ^ punctuation.definition.interpolation.makefile
#                             ^ punctuation.section.interpolation.begin.makefile
#                              ^^^ variable.other.makefile
#                                 ^ punctuation.section.interpolation.end.makefile
#                                  ^^^^ string.unquoted.makefile
#                                   ^ constant.other.wildcard.asterisk.makefile
#                                      ^ punctuation.section.interpolation.end.makefile
define $(dir)_print =
#^^^^^ keyword.control.makefile
#     ^ - keyword - variable
#      ^^^^^^ meta.interpolation.makefile
#      ^ punctuation.definition.interpolation.makefile
#       ^ punctuation.section.interpolation.begin.makefile
#        ^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^^^^^^^ variable.other.makefile
#                   ^ keyword.operator.assignment.makefile
lpr $($(dir)_sources)
endef

define FOO
  BAR := 1
  define BAZ
# ^^^^^^ string.unquoted.makefile - keyword
    X := 1
  endef
# ^^^^^^ string.unquoted.makefile - keyword
Y := 3
endef   # comment
#^^^^ keyword.control.makefile
#       ^^^ comment.line.number-sign.makefile

# Avoid false positives such as partial matches.

foodefine
#^^^^^^^^^ - keyword

definefoo
#^^^^^^^^^ - keyword

#########################
# 6.5 setting variables #
#########################

FOO ?= bar

ifeq ($(origin FOO), undefined)
FOO = bar
endif

hash != printf '\043'
#       ^ source.shell
file_list != find . -name '*.c'
#            ^ source.shell

hash := $(shell printf '\043')
#         ^ support.function
#               ^ source.shell
var := $(shell find . -name "*.c")
#        ^ support.function
#              ^ source.shell

########################################
# 6.6 appending more text to variables #
########################################

objects = main.o foo.o bar.o utils.o
objects += another.o
CFLAGS = $(includes) -O
CFLAGS += -pg # enable profiling

##############################
# 6.7 the override directive #
##############################

override variable = value
# ^ keyword.control
override variable := value
override variable += more text
override CFLAGS += -g
override define foo
# <-keyword
#        ^ keyword
#               ^ variable.other
#                  ^ - string.unquoted
asdf
# <- string.unquoted
endef
# <- keyword
override define foo =
# <- keyword
#        ^ keyword
#               ^ variable.other
#                   ^ keyword.operator.assignment
#                    ^ - string
bar
endef
override define foo ?=
#                   ^^ keyword.operator.assignment
#                     ^ - string
bar
endef
override define foo :=
#                   ^^ keyword.operator.assignment
#                     ^ - string
bar
endef
# ^ keyword.control

endef
# <- invalid.illegal.stray

override \
# <- keyword.control.makefile
#        ^ punctuation.separator.continuation.line.makefile

override \
	define foo
	#^^^^^ keyword.control.makefile
	#      ^^^ variable.other.makefile
endef
# <- keyword.control.makefile


############################
# 6.9 Undefining Variables #
############################

undefine foo
#^^^^^^^ keyword.control.makefile
#       ^ - keyword - variable
#        ^^^ meta.variable.makefile variable.other.makefile

  undefine foo
# ^^^^^^^^ keyword.control.makefile
#         ^ - keyword - variable
#          ^^^ meta.variable.makefile variable.other.makefile
#             ^ - variable

override undefine CFLAGS
#^^^^^^^ keyword.control.makefile
#        ^^^^^^^^ keyword.control.makefile
#                ^ - keyword - variable
#                 ^^^^^^ meta.variable.makefile variable.other.makefile

# Avoid false positives such as partial matches.

undefined
#^^^^^^^^^ - keyword

nundefine
#^^^^^^^^^ - keyword

########################################
# 6.11 target-specific variable values #
########################################

prog : CFLAGS = -g
#    ^ keyword.operator
#      ^ variable - string
#             ^ keyword
#              ^ - string
#               ^^ string - meta.function.arguments

$(prog) : CFLAGS = -g
#       ^ keyword.operator
#         ^ variable - string
#                ^ keyword
#                 ^ - string
#                  ^^ string - meta.function.arguments

#########################################
# 6.12 pattern-specific variable values #
#########################################

lib/%.o: CFLAGS := -fPIC -g
#      ^ keyword.operator
#                 ^ - string
#                  ^ string
#                          ^ - string
%.o: CFLAGS := -g
#  ^ keyword.operator
#             ^ - string
#              ^^ string
#                ^ - string

# Line comment
# <- comment

#############################
# Unsorted and legacy tests #
#############################

ifeq ($(shell test $(var) -lt 130000; echo $$?),0)
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.makefile
#    ^ punctuation.section.group.begin.makefile
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#                                              ^ - meta.string
#                                               ^ meta.string.makefile - meta.interpolation
#       ^^^^^^ meta.function-call.makefile
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.embedded.makefile
#             ^^^^ support.function.shell
#                  ^^^^^^ meta.interpolation.makefile meta.interpolation.makefile
#                         ^^^ keyword.operator.comparison.shell
#                             ^^^^^^ constant.numeric.value.shell
#                                   ^ punctuation.terminator.statement.shell
#                                     ^^^^ support.function.shell
#                                          ^^^ variable.language.special.shell
#                                             ^ punctuation.section.interpolation.end.makefile
#                                              ^ punctuation.separator.makefile
#                                               ^ string.unquoted.makefile
#                                                ^ punctuation.section.group.end.makefile
endif

ifeq ($(shell test -r $(MAKEFILE_PATH)Makefile.Defs; echo $$?), 0)
# <- keyword.control.conditional.makefile
#^^^ keyword.control.conditional.makefile
#    ^ meta.group.makefile - meta.group meta.interpolation
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.makefile meta.interpolation.makefile
#                                                             ^^^^ meta.group.makefile - meta.group meta.interpolation
#     ^^ - meta.function-call
#       ^^^^^^ meta.function-call.makefile
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.makefile source.shell.embedded.makefile
#                                                            ^^^^^ - meta.function-call
#       ^^^^^ support.function.builtin.makefile
#            ^ - support
#             ^^^^ meta.function-call.identifier.shell support.function.shell
#                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                  ^^ variable.parameter.option.shell
#                     ^^^^^^^^^^^^^^^^ meta.string.glob.shell meta.interpolation.makefile - string
#                                     ^^^^^^^^^^^^^ meta.string.glob.shell string.unquoted.shell
#                                                  ^ punctuation.terminator.statement.shell
#                                                    ^^^^ meta.function-call.identifier.shell support.function.shell
#                                                        ^^^^ meta.function-call.arguments.shell
#                                                         ^^^ meta.interpolation.parameter.shell variable.language.special.shell

    include $(MAKEFILE_PATH)Makefile.Defs
    # <- keyword.control.import.makefile
    #^^^^^^ keyword.control.import.makefile
    #      ^ - meta.string - string - keyword
    #       ^^^^^^^^^^^^^^^^ meta.string.glob.makefile meta.interpolation.makefile - string
    #       ^ punctuation.definition.interpolation.makefile
    #        ^ punctuation.section.interpolation.begin.makefile
    #                      ^ punctuation.section.interpolation.end.makefile
    #                       ^^^^^^^^^^^^^ meta.string.glob.makefile string.unquoted.makefile
    # IMPORTANT NOTE: Extra spaces are allowed and ignored at the beginning of
    # the line, but the first character must not be a tab (or the value of
    # .RECIPEPREFIX) — if the line begins with a tab, it will be considered a
    # recipe line.
endif
# <- keyword.control

a_objects := a.o b.o c.o
# ^ variable.other
#         ^^ keyword.operator.assignment
#            ^^^^^^^^^^^ string
1_objects := 1.o 2.o 3.o
# ^^^^^^^ variable.other
#         ^^ keyword.operator.assignment
#            ^^^^^^^^^^^ string.unquoted

# This is NOT the start of a rule...
	# A comment with a tab and with a : colon
	# <- comment.line - meta.function - entity.name.function

all: foo.o
#   ^ - string
#    ^ string
#         ^ - string
    ld a
    ar b
    asdf
    @echo "that's, like, your opinion man!" # some movie?
	asdf
# <- invalid.illegal.inconsistent.expected.spaces

all: foo.o
	ld a
	ar b
	asdf
	@echo "that's, like, your opinion man!" # some movie?
	# <- constant.language
    asdf
# <- invalid.illegal.inconsistent.expected.tab

all: foo.o # a comment
# <- meta.function entity.name.function
#  ^ keyword.operator.assignment
#   ^ - string
#    ^ string
#        ^ meta.function.arguments string.unquoted
#         ^ string
#          ^ comment.line. punctuation - meta.function.arguments - string.unquoted
#           ^ comment.line - punctuation - meta.function.arguments - string.unquoted
	rm -rf /
# <- meta.function.body

# A make comment.
#                ^ comment.line.number-sign.makefile
foo: qux
	@bar # A shell comment.
	#                      ^ comment.line.number-sign.shell

sources := $($(a1)_objects:.o=.c)
#^^^^^^ meta.variable.makefile variable.other.makefile
#          ^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#          ^ punctuation.definition.interpolation.makefile
#           ^ punctuation.section.interpolation.begin.makefile
#            ^^^^^^^^^^^^^ variable.other.makefile
#            ^^^^^ meta.interpolation.makefile meta.interpolation.makefile
#            ^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^ variable.other.makefile
#                ^ punctuation.section.interpolation.end.makefile
#                         ^ punctuation.definition.substitution.makefile
#                            ^ keyword.operator.assignment.makefile
#                               ^ punctuation.section.interpolation.end.makefile

.build/vernum: ../meta/version
    sed -i.bak 's/.*automatically updated.*/version = "$(VER)" # automatically updated/' setup.py
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded meta.function-call
#              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                                      ^^^^^^ meta.string.glob.shell meta.interpolation.makefile
#                                                      ^ punctuation.definition.interpolation.makefile
#                                                       ^ punctuation.section.interpolation.begin.makefile
#                                                        ^^^ variable.other.makefile
#                                                           ^ punctuation.section.interpolation.end.makefile
#                                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.glob.shell string.quoted.single.shell
#                                                                                        ^^^^^^^^ meta.string.glob.shell string.unquoted.shell

CC=g++
#<- variable.other
# ^ keyword.operator.assignment
#  ^^^ string.unquoted
CFLAGS=-c -Wall
LDFLAGS=
#<- variable.other
#      ^ keyword.operator.assignment
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.o)
#       ^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#       ^ punctuation.definition.interpolation.makefile
#        ^ punctuation.section.interpolation.begin.makefile
#         ^^^^^^^ variable.other.makefile
#                ^ punctuation.definition.substitution.makefile
#                     ^ keyword.operator.assignment.makefile
#                        ^ punctuation.section.interpolation.end.makefile
EXECUTABLE=hello

lib: foo.o bar.o lose.o win.o
	ar r lib $@
	ar whatevs
# <- meta.function.body
	# <- meta.function.body
	# BIG NOTE: This comment is actually a shell comment, not a makefile
	# comment. Everything on a recipe line is passed to the shell; even lines
	# starting with a number sign! It depends on the particular shell if it
	# gets treated as comments, but for all intents and purposes it should.

all: $(SOURCES) $(EXECUTABLE)
# <- meta.function.makefile entity.name.function.makefile
#^^ meta.function.makefile entity.name.function.makefile
#  ^ keyword.operator.assignment.makefile
#    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^^^^^ meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^^ variable.other.makefile
#             ^ punctuation.section.interpolation.end.makefile
#               ^^^^^^^^^^^^^ meta.interpolation.makefile
#               ^ punctuation.definition.interpolation.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^^^^^^^^^^ variable.other.makefile
#                           ^ punctuation.section.interpolation.end.makefile
#                            ^ meta.function.body.makefile

export FOO=foo
# ^ keyword.control
#      ^ variable.other
#         ^ keyword.operator.assignment
#          ^ string.unquoted

$(EXECUTABLE): $(OBJECTS)
# <- meta.function entity.name.function
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@


.cpp.o: a.c b.c
# <- meta.function entity.name.function
	$(CC) $(CFLAGS) $< -o $@
	# <- meta.function.body.makefile source.shell.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile punctuation.definition.interpolation.makefile
	#^^^^ meta.function.body.makefile source.shell.embedded.makefile meta.function-call.identifier.shell meta.command.shell meta.interpolation.makefile
	#    ^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded.makefile meta.function-call.arguments.shell
	#     ^^^^^^^^^ meta.string.glob.shell meta.interpolation.makefile
	#               ^^ meta.string.glob.shell meta.interpolation.makefile
	#                  ^^ meta.parameter.option.shell variable.parameter.option.shell
	#                     ^^ meta.string.glob.shell meta.interpolation.makefile

FOO = some \
      line \
      continuation \
      in \
      here
#     ^^^^ meta.string.makefile string.unquoted.makefile

reverse = $(2) $(1)
# <- variable.other
#       ^ keyword.operator.assignment
#         ^^^^ meta.string.makefile meta.interpolation.makefile - string
#         ^ punctuation.definition.interpolation.makefile
#          ^ punctuation.section.interpolation.begin.makefile
#           ^ variable.other.makefile
#            ^ punctuation.section.interpolation.end.makefile
#             ^ meta.string.makefile string.unquoted.makefile
#              ^^^^ meta.string.makefile meta.interpolation.makefile - string
#              ^ punctuation.definition.interpolation.makefile
#               ^ punctuation.section.interpolation.begin.makefile
#                ^ variable.other.makefile
#                 ^ punctuation.section.interpolation.end.makefile

foo = $(call reverse,a,b)
#^^ meta.variable.makefile variable.other.makefile
#     ^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^^^^^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^ variable.function.makefile
#                   ^ punctuation.separator.makefile
#                    ^^^ meta.function-call.arguments.makefile
#                    ^ meta.string.makefile string.unquoted.makefile
#                     ^ punctuation.separator.makefile
#                      ^ meta.string.makefile string.unquoted.makefile
#                       ^ punctuation.section.interpolation.end.makefile

foo = $(call something)
#                     ^ - variable.function

foo = $(eval $(call bar))
#     ^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#     ^ punctuation.definition.interpolation.makefile
#      ^ punctuation.section.interpolation.begin.makefile
#       ^^^^^ meta.function-call.makefile
#       ^^^^ support.function.builtin.makefile
#            ^^^^^^^^^^^ meta.function-call.arguments.makefile meta.string.makefile meta.interpolation.makefile
#            ^ punctuation.definition.interpolation.makefile
#             ^ punctuation.section.interpolation.begin.makefile
#              ^^^^^^^^ meta.function-call.makefile
#              ^^^^ support.function.builtin.makefile
#                   ^^^ variable.function.makefile
#                      ^ punctuation.section.interpolation.end.makefile
#                       ^ punctuation.section.interpolation.end.makefile

pathsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))
#           ^ - meta.string.makefile - meta.interpolation
#            ^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                        ^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                   ^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                ^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                    ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                     ^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                 ^^^^^^^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile
#                                                                        ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                         ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation meta.interpolation
#                                                                          ^ meta.string.makefile meta.interpolation.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation meta.interpolation
#                                                                           ^ meta.string.makefile meta.interpolation.makefile - meta.interpolation meta.interpolation
#                                                                            ^ - meta.string.makefile - meta.interpolation
#              ^^^^^^^^^^ meta.function-call.makefile
#                        ^^ meta.function-call.arguments.makefile - meta.function-call meta.function-call
#                          ^^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.makefile
#                                   ^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call
#                                     ^^^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                               ^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call
#                                                       ^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile - meta.function-call meta.function-call meta.function-call meta.function-call meta.function-call
#                                                             ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.string.makefile
#                                                              ^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call meta.string
#                                                                 ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.string.makefile
#                                                                        ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call meta.function-call
#                                                                         ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call meta.function-call
#                                                                          ^ meta.function-call.arguments.makefile - meta.function-call meta.function-call meta.function-call
#                                                                           ^ - meta.function-call
#              ^^^^^^^^^ support.function.builtin.makefile
#                          ^^^^^^^^ support.function.builtin.makefile
#                                     ^^^^^^^^^ support.function.builtin.makefile
#                                                       ^^^^^ support.function.builtin.makefile

LS := $(call pathsearch,ls)

CC=g++
# <- variable.other
# ^ keyword.operator.assignment
#  ^ string.unquoted
SOURCES=main.cpp
SOURCES+=hello.cpp
#^^^^^^ meta.variable.makefile variable.other.makefile
#      ^^ keyword.operator
#        ^^^^^^^^^ meta.string.makefile string.unquoted.makefile

all: $(SOURCES) hello.o
#^^ meta.function.makefile entity.name.function.makefile
#  ^ keyword.operator.assignment.makefile
#    ^^^^^^^^^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile
#    ^^^^^^^^^^ meta.interpolation.makefile
#    ^ punctuation.definition.interpolation.makefile
#     ^ punctuation.section.interpolation.begin.makefile
#      ^^^^^^^ variable.other.makefile
#             ^ punctuation.section.interpolation.end.makefile
#                      ^ meta.function.body.makefile

$(EXECUTABLE): $(OBJECTS)
#^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^^ variable.other.makefile
#           ^ punctuation.section.interpolation.end.makefile
#            ^ keyword.operator.assignment.makefile
#              ^^^^^^^^^^ meta.function.arguments.makefile meta.string.makefile meta.interpolation.makefile
#              ^ punctuation.definition.interpolation.makefile
#               ^ punctuation.section.interpolation.begin.makefile
#                ^^^^^^^ variable.other.makefile
#                       ^ punctuation.section.interpolation.end.makefile
#                        ^ meta.function.body.makefile
	@$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	# <- constant.language
	#                               ^^ meta.string.glob.shell meta.interpolation.makefile


all: whatevs
	@asdf
	# <- constant.language

all: whatevs
	@asdf
	@echo "Heyo!"
	# <- constant.language

export RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o    \
              -name CVS -o -name .pc -o -name .hg -o -name .git \) \
              -prune -o
export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn \
             --exclude CVS --exclude .pc --exclude .hg --exclude .git

# Use spaces instead of tabs... This complicates matters.
.RECIPEPREFIX +=

help::
	@echo "Executable is $(EXECUTABLE)"
	# <- constant.language

$(warning he:llo)
# ^ meta.function-call support.function
#         ^^^ meta.function-call.arguments.makefile - punctuation
#               ^ punctuation.section.interpolation.end

all: deps
	$(warning he:llo)
	# ^ meta.function-call support.function
	#         ^^^ meta.function-call.arguments.makefile - punctuation
	#               ^ punctuation.section.interpolation.end
deps:
	$(warning he:llo)
	# ^ meta.function-call support.function
	#         ^^^ meta.function-call.arguments.makefile - punctuation
	#               ^ punctuation.section.interpolation.end
all:
# ^ meta.function entity.name.function
#  ^ keyword.operator.assignment
	asdf
# <- meta.function.body

# OS detecting makefile
# http://stackoverflow.com/questions/714100/os-detecting-makefile
#
ifeq ($(OS),Windows_NT)
# ^ keyword.control
    SEPARATOR = ;
#           ^ variable.other
#            ^ - variable.other
#             ^ keyword.operator.assignment
#               ^ string.unquoted

else
# ^ keyword.control
    SEPARATOR = :
#           ^ variable.other
#            ^ - variable.other
#             ^ keyword.operator.assignment
#               ^ string.unquoted
endif
# ^ keyword.control

a_percentage_%_sign := $(SOME_C%MPLEX:SUBSTITUTI%N)
#^^^^^^^^^^^^^^^^^^ meta.variable.makefile variable.other.makefile
#            ^ - variable.language
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.makefile meta.interpolation.makefile
#                      ^ punctuation.definition.interpolation.makefile
#                       ^ punctuation.section.interpolation.begin.makefile
#                        ^^^^^^^^^^^^ variable.other.makefile
#                              ^ variable.language.makefile
#                                    ^ punctuation.definition.substitution.makefile
#                                               ^ variable.language.makefile
#                                                 ^ punctuation.section.interpolation.end.makefile

%.cpp: %.o
# <- meta.function entity.name.function variable.language
#    ^ keyword.operator
#      ^ meta.function.arguments string.unquoted variable.language
	@rm -rf /
	@rm -rf /
	# <- meta.function.body constant.language
	#^ meta.function.body - constant.language

a = b # c
#<- variable.other
# ^ keyword.operator.assignment
#   ^ string.unquoted
#     ^ comment.line.number-sign punctuation.definition.comment
#       ^ comment.line.number-sign

a = b # c
#<- variable.other
# ^ keyword.operator.assignment
#   ^ string.unquoted
#     ^ comment.line.number-sign punctuation.definition.comment
#       ^ comment.line.number-sign

_modinst_:
    @rm -rf $(MODLIB)/kernel
    # <- constant.language
    @rm -f $(MODLIB)/source
    # <- constant.language
    @mkdir -p $(MODLIB)/kernel
    # <- constant.language
    @ln -s `cd $(srctree) && /bin/pwd` $(MODLIB)/source
    # <- constant.language
    @if [ ! $(objtree) -ef  $(MODLIB)/build ]; then \
        rm -f $(MODLIB)/build ; \
        ln -s $(CURDIR) $(MODLIB)/build ; \
    fi
    @cp -f $(objtree)/modules.order $(MODLIB)/
    # <- constant.language
    @cp -f $(objtree)/modules.builtin $(MODLIB)/
    # <- constant.language
    $(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modinst


$(sort $(a)): $(b) ;
#           ^ keyword.operator

%:x
# <- meta.function entity.name.function variable.language
#^ keyword.operator
	rm -rf /

a : b ;
# <- meta.function entity.name.function
# ^ keyword.operator - entity.name.function
#  ^ - string.unquoted
#   ^ meta.function.arguments string.unquoted
#    ^ - string.unquoted
#     ^ punctuation.terminator

a : b \
    more prerequisites \
    on a third line even
    #                  ^ meta.function.arguments string.unquoted
    @rm -rf /
    # <- meta.function.body constant.language

a : b ; rm -rf /
#     ^ punctuation.terminator
#       ^ source.shell

a-$(b) := c
#^^^^^ meta.variable.makefile
#^ variable.other.makefile
# ^^^^ meta.interpolation.makefile
# ^ punctuation.definition.interpolation.makefile
#  ^ punctuation.section.interpolation.begin.makefile
#   ^ variable.other.makefile
#    ^ punctuation.section.interpolation.end.makefile

$(a): b
#^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.section.interpolation.end.makefile
#   ^ keyword.operator.assignment.makefile
#     ^ meta.function.arguments.makefile string.unquoted.makefile
#      ^ meta.function.body.makefile
	$(Q)$(MAKE) $(build)=$@
	# <- meta.function.body
	#                    ^^ meta.string.glob.shell meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ variable.language.automatic.makefile

$(a:b=c) : d
#^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#    ^ keyword.operator.assignment.makefile
#      ^ punctuation.section.interpolation.end.makefile
#        ^ keyword.operator.assignment.makefile
#          ^ meta.function.arguments.makefile string.unquoted.makefile
#           ^ meta.function.body.makefile
	$(Q)$(MAKE) $(build)=$@
	# <- meta.function.body
	#                    ^^ meta.string.glob.shell meta.interpolation.makefile
	#                    ^ punctuation.definition.interpolation.makefile
	#                     ^ variable.language.automatic.makefile

$(X:a=b) : w ;
#^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#    ^ keyword.operator.assignment.makefile
#      ^ punctuation.section.interpolation.end.makefile
#        ^ keyword.operator.assignment.makefile
#          ^ meta.function.arguments.makefile string.unquoted.makefile
#            ^ punctuation.terminator.makefile
#             ^ meta.function.body.makefile

$(Y:%.cpp=%.o) := $(Z)
#^^^^^^^^^^^^^ meta.variable.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^ variable.other.makefile
#  ^ punctuation.definition.substitution.makefile
#   ^ variable.language.makefile
#        ^ keyword.operator.assignment.makefile
#         ^ variable.language.makefile
#            ^ punctuation.section.interpolation.end.makefile
#              ^^ keyword.operator.assignment.makefile
#                 ^^^^ meta.string.makefile meta.interpolation.makefile
#                 ^ punctuation.definition.interpolation.makefile
#                  ^ punctuation.section.interpolation.begin.makefile
#                   ^ variable.other.makefile
#                    ^ punctuation.section.interpolation.end.makefile

$(call my_func,my_arg): deps
#^^^^^^^^^^^^^^^^^^^^^ meta.function.makefile entity.name.function.makefile meta.interpolation.makefile
#^ punctuation.section.interpolation.begin.makefile
# ^^^^^^^^^^^^^ meta.function-call.makefile
# ^^^^ support.function.builtin.makefile
#      ^^^^^^^ variable.function.makefile
#             ^ punctuation.separator.makefile
#              ^^^^^^ meta.function-call.arguments.makefile meta.string.makefile string.unquoted.makefile
#                    ^ punctuation.section.interpolation.end.makefile
#                     ^ keyword.operator.assignment.makefile
#                       ^^^^ meta.function.arguments.makefile string.unquoted.makefile
#                           ^ meta.function.body.makefile
	rm -rf /

$(foreach i,j,k): deps
# <- meta.function entity.name.function
#               ^ keyword.operator.assignment
#                ^ - keyword.operator.assignment
	rm -rf /
	# <- meta.function.body

$(foreach i,$(a),$(foreach j,$(b),x)): deps
# <- meta.function entity.name.function
#                                    ^ keyword.operator.assignment
#                                     ^ - keyword.operator.assignment
	rm -rf /
	# <- meta.function.body

include $(c)
ifneq ($(a),)
$(b): ; rm -rf /
#       ^ meta.function.body source.shell
	@git clone asdf
	# <- meta.function.body constant.language
	# ^ meta.function.body
endif

define filechk_utsrelease.h
    if [ `echo -n "$(KERNELRELEASE)" | wc -c ` -gt $(uts_len) ]; then \
      echo '"$(KERNELRELEASE)" exceeds $(uts_len) characters' >&2;    \
      exit 1;                                                         \
    fi;                                                               \
    (echo \#define UTS_RELEASE \"$(KERNELRELEASE)\";)
endef
# <- keyword.control

endef
# <- invalid.illegal.stray

# meta.group.conditional balancing
ifeq ($(shell git status >/dev/null 2>&1 && echo USING_GIT),USING_GIT)
  ifeq ($(shell git svn info >/dev/null 2>&1 && echo USING_GIT_SVN),USING_GIT_SVN)
    # git-svn
    ifeq ($(REVISION),)
      REVISION := $(shell git svn find-rev git-svn)
    endif
    VCSTURD := $(subst $(SPACE),\ ,$(shell git rev-parse --git-dir)/refs/remotes/git-svn)
  else
    # plain git
    ifeq ($(REVISION),)
      REVISION := $(shell git describe --always HEAD)
    endif
    GIT_BRANCH := $(shell git symbolic-ref HEAD 2>/dev/null)
    VCSTURD := $(subst $(SPACE),\ ,$(shell git rev-parse --git-dir)/$(GIT_BRANCH))
  endif
else ifeq ($(shell hg root >/dev/null 2>&1 && echo USING_HG),USING_HG)
# ^ keyword.control
#    ^ keyword.control
  # mercurial
  ifeq ($(REVISION),)
    REVISION := $(shell hg id -i)
  endif
  VCSTURD := $(subst $(SPACE),\ ,$(shell hg root)/.hg/dirstate)
else ifeq ($(shell svn info >/dev/null && echo USING_SVN),USING_SVN)
# ^ keyword.control
#    ^ keyword.control
  # subversion
  ifeq ($(REVISION),)
    REVISION := $(subst :,-,$(shell svnversion -n))
  endif
  # This used to break the makefile syntax because we didn't properly account
  # for closing parentheses in shell-strings. We now use our own quoted string
  # context in the with_prototype override so that we can account for this.
  # This does mean that the shell syntax looks a tiny bit different.
  VCSTURD := $(addsuffix /.svn/entries, $(shell svn info | grep 'Root Path' | sed -e 's/\(.*\:\)\(.*\) /\2/'))
  #                                                                                  ^ string.quoted.single.shell punctuation.definition.string.begin.shell
  #                                                                                                        ^ string.quoted.single.shell punctuation.definition.string.end.shell
endif
# <- keyword.control

ifeq (0,1)
	$(info zero is one)
else ifneq (1,2)
	$(info one is not equal to two)
else ifeq ("asf",asdf")
	$(info foo)
else ifeq (2,3)
	$(info one is equal to three)
else ifeq "2" "3"
	$(info asdf)
else ifeq '2' "3"
	$(info asdf)
else ifeq "2" '3'
	$(info asdf)
else ifeq '2' '3'
	$(info asdf)
else ifdef X
	$(info X is defined)
else ifndef Y
	$(info Y is not defined)
endif
# <- keyword

ifeq (0,1)
	$(info asdf)
else
ifeq (0,1)
	$(info asdf)
endif
# <- keyword

a:b
ifeq (0,1)
	$(info asdf)
else # some comment
#    ^ comment.line
	$(info asdf)
endif
# <- keyword

# Another case where the lookahead for the colon used to fail:
ifneq ($(words $(subst :, ,$(CURDIR))), 1)
#                      ^ meta.function-call.arguments meta.function-call.arguments - keyword.operator
  $(error main directory cannot contain spaces nor colons)
endif

ifeq ($(shell which inkscape >/dev/null 2>&1 && echo USING_INKSCAPE),USING_INKSCAPE)
# <- keyword.control.conditional
$(FIGS)/%.pdf: $(FIGS)/%.svg  ## Figures for the manuscript
# <- meta.function entity.name.function
#            ^ keyword.operator.assignment
#              ^ meta.function.arguments meta.string
    #                         ^ comment.line - string.unquoted
    inkscape -C -z --file=$< --export-pdf=$@ 2> /dev/null
    # <- meta.function.body
endif
# <- keyword.control.conditional

ifneq ($(REVISION),)
# ^ keyword.control.conditional
REVDEPS += revision.tex
revision.tex: $(VCSTURD)
    /bin/echo '\newcommand{\Revision}'"{$(subst _,\_,$(REVISION))}" > $@
    #           ^ - invalid.illegal
    #                                     ^ meta.function-call.makefile
    #                                                  ^^ meta.function.body meta.function-call.arguments variable.other
AUXFILES += revision.aux
endif

build_target:
    @echo "${INFO_CLR}>> Building $(TARGET)...${RESTORE_CLR}${RESULT_CLR}"
    # <- constant.language
ifdef WORKSPACE
    @xcodebuild -sdk iphoneos -workspace "$(WORKSPACE).xcworkspace" -target "$(TARGET)" -configuration "$(CONFIG)" SYMROOT="$(BUILD_PATH)/Products" -jobs 6 build 2>/dev/null | tail -n 2 | cat && printf "${RESET_CLR}"
    # <- constant.language
else
    @xcodebuild -sdk iphoneos -project "$(PROJECT).xcodeproj" -target "$(TARGET)" -configuration "$(CONFIG)" CONFIGURATION_BUILD_DIR="$(BUILD_PATH)/Products" -jobs 6 build 2>/dev/null | tail -n 2 | cat && printf "${RESET_CLR}"
    # <- constant.language
endif
ifndef ARDMK_DIR_MSG
    $(call show_config_variable,ARDMK_DIR,[COMPUTED],(relative to $(notdir $(lastword $(MAKEFILE_LIST)))))
    #      ^ variable.function
    #                                                               ^ support.function
    #                                                                        ^ support.function
    #                                                                                                   ^ - punctuation.section.interpolation.end
    #                                                                                                    ^ punctuation.section.interpolation.end
else
    $(call show_config_variable,ARDMK_DIR,[USER])
    # ^^^^ support.function.builtin.makefile
    #      ^^^^^^^^^^^^^^^^^^^^ variable.function.makefile
endif

kselftest-merge:
    $(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
    $(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
        -m $(objtree)/.config \
    #   ^ - constant.language.makefile
        $(srctree)/tools/testing/selftests/*/config
    +$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig

search:
    @$(MAKE) --no-print-directory \
        -f core/core.mk $(addprefix -f,$(wildcard index/*.mk)) -f core/index.mk \
    #                                                   ^ constant.other.wildcard.asterisk
        search

CC_VERSION := $(shell $(CC) -dumpversion)
$(call show_config_variable,CC_VERSION,[COMPUTED],($(CC_NAME)))
#                                                           ^ punctuation.section.interpolation.end
#                                                            ^ - punctuation.section.interpolation.end
#                                                             ^ punctuation.section.interpolation.end

# A recipe may contain empty lines like below
help:
    @echo  'Cleaning targets:'
    # <- meta.function.body constant.language

    @echo  '  make V=0|1 [targets] 0 => quiet build (default), 1 => verbose build'
    # <- meta.function.body constant.language
    #               ^ - keyword.operator.assignment
    #                                                        ^ string.quoted.single.shell
    @echo  '        1: warnings which may be relevant and do not occur too often'
    # <- meta.function.body constant.language
    #                ^ - keyword.operator.assignment
    @echo  '        2: warnings which occur quite often but may still be relevant'
    # <- meta.function.body constant.language

CC_VERSION := $(shell $(CC) -dumpversion)
$(call show_config_variable,CC_VERSION,[COMPUTED],($(CC_NAME)))
#                                                           ^ punctuation.section.interpolation.end
#                                                            ^ - punctuation.section.interpolation.end
#                                                             ^ punctuation.section.interpolation.end

LIBRARIES := $(filter $(notdir $(wildcard $(HOME)/energia_sketchbook/libraries/*)), \
    $(shell sed -ne "s/^ *\# *include *[<\"]\(.*\)\.h[>\"]/\1/p" $(SOURCES)))
    #               ^ string.quoted.double.shell punctuation.definition.string.begin.shell
    #                                                          ^ string.quoted.double.shell punctuation.definition.string.end.shell

# FIX: https://github.com/sublimehq/Packages/issues/1941
escape_shellstring = $(subst `,\`,$(subst ",\",$(subst $$,\$$,$(subst \,\\,$1))))
#                      ^^^^^^ meta.function-call.makefile
#                            ^^^^^ meta.function-call.arguments.makefile - meta.function-call.makefile
#                                   ^^^^^^ meta.function-call.arguments.makefile meta.function-call.makefile
#                                         ^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                ^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                                      ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                               ^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                                                     ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                                            ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile punctuation.section.interpolation.end.makefile
#                                                                             ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile punctuation.section.interpolation.end.makefile
#                                                                              ^ meta.function-call.arguments.makefile punctuation.section.interpolation.end.makefile
#                                                                               ^ punctuation.section.interpolation.end.makefile
#                                                                                ^ - meta
#                            ^ - punctuation
#                             ^ punctuation.separator.makefile
#                              ^^ - punctuation
#                                         ^ - punctuation
#                                          ^ punctuation.separator.makefile
#                                           ^^ - punctuation

.SECONDEXPANSION:
# <- meta.function entity.name.function
#               ^ keyword.operator.assignment - entity.name.function
#                ^ - keyword.operator.assignment - entity.name.function
$(DO_IMPLS): $$(foreach s,$$(STEPS),$$(call $$(@)_STEP_TO_PROG,$$(s)))
# <- meta.function entity.name.function
#          ^ keyword.operator.assignment - entity.name.function
#           ^ - keyword.operator.assignment - entity.name.function
#               ^ meta.function.arguments support.function
#                                           ^^^^^^^^^^^^^^^^^^ variable.function
#                                                             ^ punctuation.separator

.SECONDEXPANSION:
$(foreach i,$(DO_IMPLS),$(foreach s,$(STEPS),$(i)^$(s))): $$(call $$(word 1,$$(subst ^, ,$$(@)))_STEP_TO_PROG,$$(word 2,$$(subst ^, ,$$(@))))
# <- meta.function entity.name.function
#                                                       ^ keyword.operator.assignment
#                                                        ^ - keyword.operator.assignment
#                                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.function
#                                                                                                            ^ punctuation.separator
NAME = FeedProcessorSIAC

target2:
	@# Comment Text
	#^ comment - variable
	@# FeedProcessorSIAC -origin CQS -decodeData "binData"
	#^ comment - variable

	@# # Regular Message
	#^ comment - variable
	@FeedProcessorSIAC -origin CTS -decodeData "binData"

TESTTOOL = sh -c '\
#        ^ keyword.operator.assignment.makefile
#          ^^^^^^ meta.string.makefile - meta.interpolation
#                ^^^ meta.string.makefile meta.interpolation.makefile
#          ^^^^^^ string.unquoted.makefile
#                ^ punctuation.section.interpolation.begin.makefile
#                 ^ source.shell.embedded punctuation.separator.continuation.line.shell - source.shell source.shell
  if something; then
    build_thisway $$1 $$2;
  fi' TESTTOOL
# ^^^ meta.string.makefile meta.interpolation.makefile
#    ^^^^^^^^^ meta.string.makefile string.unquoted.makefile - meta.interpolation
# ^^ source.shell.embedded keyword.control.conditional.endif.shell - source.shell source.shell
#   ^ punctuation.section.interpolation.end.makefile


# Fix https://github.com/sublimehq/Packages/issues/2388
html:
    $(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.makefile source.shell.embedded.makefile - source.shell source.shell
#   ^^^^^^^^^^ meta.function-call.identifier.shell
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.shell
#                ^^^^^^^^ variable.other.makefile
#                          ^^ variable.parameter.option.shell
#                               ^^^^^^^^^ variable.other.makefile
#                                          ^^ variable.parameter.option.shell
#                                               ^^^^^^^^ variable.other.makefile
#                                                           ^^^^^^^^^^^ variable.other.makefile

shell_string_interpolation:
    var1="double nquoted $(string) value"
    #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
    #^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
    #   ^ meta.assignment.shell keyword.operator.assignment.shell
    #    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
    #    ^^^^^^^^^^^^^^^^ string.quoted.double.shell
    #    ^ punctuation.definition.string.begin.shell
    #                    ^^^^^^^^^ meta.interpolation.makefile
    #                    ^ punctuation.definition.interpolation.makefile
    #                     ^ punctuation.section.interpolation.begin.makefile
    #                      ^^^^^^ variable.other.makefile
    #                            ^ punctuation.section.interpolation.end.makefile
    #                             ^^^^^^^ string.quoted.double.shell
    #                                   ^ punctuation.definition.string.end.shell
    var1='single nquoted $(string) value'
    #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
    #^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
    #   ^ meta.assignment.shell keyword.operator.assignment.shell
    #    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
    #    ^^^^^^^^^^^^^^^^ string.quoted.single.shell
    #    ^ punctuation.definition.string.begin.shell
    #                    ^^^^^^^^^ meta.interpolation.makefile
    #                    ^ punctuation.definition.interpolation.makefile
    #                     ^ punctuation.section.interpolation.begin.makefile
    #                      ^^^^^^ variable.other.makefile
    #                            ^ punctuation.section.interpolation.end.makefile
    #                             ^^^^^^^ string.quoted.single.shell
    #                                   ^ punctuation.definition.string.end.shell
    var1=unquoted\ $(string)\ value
    #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.shell.embedded.makefile
    #^^^ meta.assignment.l-value.shell variable.other.readwrite.shell
    #   ^ meta.assignment.shell keyword.operator.assignment.shell
    #    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.assignment.r-value.shell meta.string.glob.shell
    #    ^^^^^^^^^^ string.unquoted.shell
    #            ^^ constant.character.escape.shell
    #              ^^^^^^^^^ meta.interpolation.makefile
    #              ^ punctuation.definition.interpolation.makefile
    #               ^ punctuation.section.interpolation.begin.makefile
    #                ^^^^^^ variable.other.makefile
    #                      ^ punctuation.section.interpolation.end.makefile
    #                       ^^^^^^^ string.unquoted.shell
    #                       ^^ constant.character.escape.shell

# https://www.gnu.org/software/make/manual/html_node/Errors.html
clean:
	-rm -f *.o
	# <- constant.language.makefile
	#^^ variable.function.shell

foo:
	echo $$foo
	#    ^^ punctuation.definition.variable.shell
	#     ^^^^ variable.other.readwrite.shell
	foo $$(echo $$PATH)
	#   ^^ punctuation.definition.variable.shell
	#     ^ punctuation.section.interpolation.begin.shell
	#      ^^^^ support.function.shell
	#           ^^ punctuation.definition.variable.shell
	#             ^^^^ variable.language.builtin.shell

	test "$$abc" = "$$def"
	# ^ support.function.shell
	#    ^^^^^^^ meta.string.glob.shell
	#     ^^ punctuation.definition.variable.shell
	#       ^^^ variable.other.readwrite.shell
	#              ^^^^^^^ meta.string.glob.shell
	#               ^^ punctuation.definition.variable.shell
	#                 ^^^ variable.other.readwrite.shell
