# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

# Line comment
# <- comment

ifeq ($(shell test -r $(MAKEFILE_PATH)Makefile.Defs; echo $$?), 0)
# <- keyword.control.makefile
#       ^ support.function.builtin.makefile
#                                                  ^ keyword.operator.makefile
#                                                           ^ support.variable.makefile
	include $(MAKEFILE_PATH)Makefile.Defs
	# <- keyword.control.makefile
endif
# <- keyword.control.makefile

FOO = foo# a comment (but don't ever do this in a real makefile)
# <- variable.other
#   ^ keyword.operator.assignment
#       ^ string.unquoted
#        ^ comment.line.number-sign punctuation.definition.comment - string.unquoted
#         ^ comment.line.number-sign - string.unqouted

reverse = $(2) $(1)
# <- variable.other
#       ^ keyword.operator.assignment
#         ^^ punctuation.definition.variable.begin
#           ^ string.unquoted variable.source
#             ^ string.unquoted
#              ^^ punctuation.definition.variable.begin
#                ^ string.unquoted variable.source
#                 ^ punctuation.definition.variable.end

foo = $(call reverse,a,b)
#            ^ string.unquoted meta.support.function
#                   ^ string.unquoted meta.support.function punctuation.separator
#                    ^ string.unquoted meta.support.function
#                     ^ string.unquoted meta.support.function punctuation.separator
#                      ^ string.unquoted meta.support.function
#                       ^ string.unquoted meta.support.function punctuation.definition.variable.end

pathsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))
#              ^ string.unquoted meta.support.function support.function.builtin
#                          ^ string.unquoted meta.support.function meta.support.function support.function.builtin
#                                     ^ string.unquoted meta.support.function meta.support.function meta.support.function support.function.builtin
#                                               ^ string.unquoted meta.support.function meta.support.function meta.support.function
#                                                ^^ string.unquoted meta.support.function meta.support.function meta.support.function variable.source punctuation.definition.variable.begin
#                                                  ^ string.unquoted meta.support.function meta.support.function meta.support.function variable.source
#                                                   ^ string.unquoted meta.support.function meta.support.function meta.support.function variable.source punctuation.definition.variable.end
#                                                    ^ string.unquoted meta.support.function meta.support.function meta.support.function punctuation.separator
#                                                             ^ string.unquoted meta.support.function meta.support.function meta.support.function meta.support.function
#                                                              ^ string.unquoted meta.support.function meta.support.function meta.support.function meta.support.function punctuation.separator
#                                                               ^ string.unquoted meta.support.function meta.support.function meta.support.function meta.support.function
#                                                                ^ string.unquoted meta.support.function meta.support.function meta.support.function meta.support.function punctuation.separator
#                                                                           ^ string.unquoted meta.support.function punctuation.definition.variable.end

LS := $(call pathsearch,ls)

-include $(MAKEFILE_PATH)Makefile.Defs
# <- keyword.control.makefile

sinclude $(MAKEFILE_PATH)Makefile.Defs
# <- keyword.control.makefile

CC=g++
# <- variable.other.makefile
# ^ keyword.operator.assignment.makefile
#  ^ string.unquoted.makefile
SOURCES=main.cpp
SOURCES+=hello.cpp
# <- variable.other.makefile
#      ^ keyword.operator.assignment.makefile
#        ^ string.unquoted.makefile

EXECUTABLE=hello

OBJECTS=$(SOURCES:.cpp=.o)
#         ^ string.unquoted.makefile variable.source.makefile

all: $(SOURCES) hello.o
# <- entity.name.function.makefile
#    ^ punctuation.definition.variable.begin.makefile
#      ^ variable.source.makefile

$(EXECUTABLE): $(OBJECTS)
# <- punctuation.definition.variable.begin.makefile
# ^ variable.source.makefile
#              ^ punctuation.definition.variable.begin.makefile
#                ^ variable.source.makefile
	@$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	#   <- support.variable.makefile
	#                               ^ support.variable.makefile

.PHONY: help
# <- constant.other.target.makefile

help::
	@echo 'Excutable is $$(EXECUTABLE)'
	# <- support.variable.makefile
	 # <- support.function.makefile
	#     ^ string.source.makefile
	#                   ^ punctuation.definition.variable.begin.makefile
	#                      ^ string.source.makefile variable.source.makefile

$(warning he:llo)
# ^ meta.support.function support.function.builtin
#         ^ meta.support.function
#               ^ meta.support.function punctuation.definition.variable.end

all: deps
	$(warning he:llo)
	# ^ meta.function.body meta.support.function support.function.builtin
	#         ^ meta.function.body meta.support.function
	#               ^ meta.function.body meta.support.function punctuation.definition.variable.end
deps:
	$(warning he:llo)

all: 
	asdf

# OS detecting makefile
# http://stackoverflow.com/questions/714100/os-detecting-makefile
#
ifeq ($(OS),Windows_NT)
# ^ meta.directive.condition.makefile keyword.control.makefile
    SEPARATOR = ;
else
# ^ meta.directive.include.makefile keyword.control.makefile
    SEPARATOR = :
endif
# ^ meta.directive.include.makefile keyword.control.makefile
