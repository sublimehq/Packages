# SYNTAX TEST "Packages/Makefile/Makefile.sublime-syntax"

#################################
# 6.3.1 substitution references #
#################################

P = Hello
# <- variable.other
# ^ keyword.operator.assignment
#  ^ - string.unquoted
#   ^ string.unquoted
#       ^ string.unquoted
#        ^ - string.unquoted

FOO = $P
# <- variable.other
#   ^ keyword.operator.assignment
#     ^ keyword.other
#      ^ string variable
BAR = $PATH
# <- variable.other
#   ^ keyword.operator.assignment
#     ^ keyword.other
#      ^ string variable
#       ^ string - variable

foo := a.o b.o c.o
# <- variable
#   ^^ keyword
#      ^^^^^^^^^^^ string
bar := $(foo:.o=.c)
# <- variable
#   ^^ keyword
#      ^^ keyword.other.block.begin
#           ^ punctuation
#              ^ punctuation
#                 ^ keyword.other.block.end
bar := $(foo:%.o=%.c)
# <- variable
#   ^^ keyword
#     ^ - string.unquoted
#      ^^ keyword.other.block.begin
#           ^ punctuation
#            ^ variable.language
#               ^ punctuation
#                ^ variable.language
#                   ^ keyword.other.block.end

bar := ${foo:%.o=%.c}
# <- variable
#   ^^ keyword
#     ^ - string.unquoted
#      ^^ keyword.other.block.begin
#           ^ punctuation
#            ^ variable.language
#               ^ punctuation
#                ^ variable.language
#                   ^ keyword.other.block.end

foo = bar # a comment
#    ^ - string.unquoted
#        ^ string.unquoted
#         ^ comment.line punctuation - string.unquoted

foo = bar # a multiline \
              comment
#             ^ comment.line

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
# <- keyword.other.block.begin
#^ keyword.other.block.begin
#              ^^ keyword.operator.assignment
#                 ^^ keyword.other.block.begin
#                            ^^ keyword.other.block.begin
#                                 ^ keyword.other.block.end
#                                   ^ variable.language.wildcard
#                                      ^ keyword.other.block.end
define $(dir)_print =
# ^ keyword.control
#      ^^ keyword.other.block.begin
#           ^ keyword.other.block.end
#                   ^ keyword.operator.assignment
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

########################################
# 6.11 target-specific variable values #
########################################

prog : CFLAGS = -g
#    ^ keyword.operator
#      ^ variable - string
#             ^ keyword
#              ^ - string
#               ^^ string - meta.function.arguments

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

ifeq ($(shell test -r $(MAKEFILE_PATH)Makefile.Defs; echo $$?), 0)
# <- keyword.control
#       ^ support.function
#                     ^^ variable.parameter keyword.other.block.begin
#                       ^^^^^^^^^^^^^ variable.parameter
#                                    ^ variable.parameter keyword.other.block.end
#                                                         ^^^ variable.language.automatic
    include $(MAKEFILE_PATH)Makefile.Defs
    # <- keyword.control
    #      ^ - string
    #       ^ string
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
# ^ variable
#       ^^ keyword.operator
#          ^^ string variable keyword.other.block.begin
#            ^^ string variable variable keyword.other.block.begin
#              ^^ string variable variable
#                ^ string variable variable keyword.other.block.end
#                 ^^^^^^^^ string variable
#                         ^ string variable punctuation.definition
#                          ^^ string variable
#                            ^ string variable punctuation.definition
#                             ^^ string variable
#                               ^ string variable keyword.other.block.end

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
#<- variable.other
#      ^ keyword.operator.assignment
#       ^^ string.unquoted keyword.other.block.begin
#                ^ string.unquoted variable.parameter punctuation.definition.substitution
#                     ^ string.unquoted variable.parameter punctuation.definition
#                        ^ string.unquoted keyword.other.block.end
EXECUTABLE=hello

lib: foo.o bar.o lose.o win.o
	ar r lib $@
	ar whatevs
# <- meta.function.body
	# <- meta.function.body
	# BIG NOTE: This comment is actually a shell comment, not a makefile
	# comment. Everything on a recipe line is passed to the shell; even lines
	# starting with a numbrer sign! It depends on the particular shell if it 
	# gets treated as comments, but for all intents and purposes it should.

all: $(SOURCES) $(EXECUTABLE)
#<- entity.name.function
#  ^ keyword.operator.assignment
#    ^^ variable.parameter keyword.other.block.begin
#      ^^^^^^^ variable.parameter
#             ^ variable.parameter keyword.other.block.end
#               ^^ variable.parameter keyword.other.block.begin
#                 ^^^^^^^^^^ variable.parameter
#                           ^ variable.parameter keyword.other.block.end

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
	#               ^^ meta.function.body variable.language.automatic
	#                     ^^ meta.function.body variable.language.automatic

FOO = some \
      line \
      continuation \
      in \
      here
#        ^ string.unquoted

#   echo I am a comment \
    echo I am a comment, too!
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line

#   echo I am a comment \
    echo I am a comment, too!
    echo I am no comment...
#   ^^^^^^^^^^^^^^^^^^^^^^^ - comment.line

reverse = $(2) $(1)
# <- variable.other
#       ^ keyword.operator.assignment
#         ^^ keyword.other.block.begin
#           ^ string.unquoted variable.parameter
#             ^ string.unquoted
#              ^^ keyword.other.block.begin
#                ^ string.unquoted variable.parameter
#                 ^ keyword.other.block.end

foo = $(call reverse,a,b)
#       ^ constant.language.call
#            ^ string.unquoted - meta.function-call.arguments
#                   ^ string.unquoted punctuation.separator - meta.function-call.arguments
#                    ^ string.unquoted meta.function-call.arguments
#                     ^ string.unquoted meta.function-call.arguments punctuation.separator
#                      ^ string.unquoted meta.function-call.arguments
#                       ^ string.unquoted keyword.other.block.end

foo = $(call something)
#                     ^ - variable.function

foo = $(eval $(call bar))
#       ^ support.function
#                 ^ constant.language
#                     ^ variable.function
#                      ^^ string.unquoted keyword.other.block.end - variable.function

pathsearch = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))
#              ^^^^^^^^^ meta.function-call support.function
#                          ^^^^^^^^ meta.function-call.arguments meta.function-call support.function
#                                     ^^^^^^^^^ meta.function-call.arguments meta.function-call.arguments meta.function-call support.function
#                                               ^ meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments
#                                                ^^ keyword.other.block.begin
#                                                  ^ meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments variable.parameter
#                                                   ^ keyword.other.block.end
#                                                    ^ punctuation.separator
#                                                     ^^ keyword.other.block.begin
#                                                       ^^^^^ meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments meta.function-call support.function
#                                                             ^ string.unquoted
#                                                              ^ punctuation.separator
#                                                               ^ string.unquoted
#                                                                ^ punctuation.separator
#                                                                 ^^ keyword.other.block.begin
#                                                                   ^^^^ meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments variable.parameter
#                                                                       ^ meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments variable.parameter keyword.other.block.end
#                                                                        ^ meta.function-call.arguments meta.function-call.arguments meta.function-call.arguments keyword.other.block.end
#                                                                         ^ meta.function-call.arguments meta.function-call.arguments keyword.other.block.end
#                                                                          ^ meta.function-call.arguments keyword.other.block.end
#                                                                           ^ keyword.other.block.end

LS := $(call pathsearch,ls)

-include $(MAKEFILE_PATH)Makefile.Defs
# <- keyword.control.import

sinclude $(MAKEFILE_PATH)Makefile.Defs
# <- keyword.control.import
#        ^ string.unquoted variable.parameter keyword.other.block.begin
#          ^ string.unquoted variable.parameter
#                       ^ string.unquoted variable.parameter keyword.other.block.end


CC=g++
# <- variable.other
# ^ keyword.operator.assignment
#  ^ string.unquoted
SOURCES=main.cpp
SOURCES+=hello.cpp
# <- variable.other
#      ^ keyword.operator.assignment
#        ^ string.unquoted

EXECUTABLE=hello

OBJECTS=$(SOURCES:.cpp=.o)
#         ^ string.unquoted.makefile variable.parameter.makefile

all: $(SOURCES) hello.o
# <- entity.name.function.makefile
#    ^ keyword.other.block.begin
#      ^ variable.parameter.makefile

$(EXECUTABLE): $(OBJECTS)
# <- keyword.other.block.begin
# ^ variable.parameter.makefile
#              ^ keyword.other.block.begin
#                ^ variable.parameter.makefile
	@$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	# <- constant.language
	#                               ^^ variable.language.automatic


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
	@echo "Excutable is $(EXECUTABLE)"
	# <- constant.language

$(warning he:llo)
# ^ meta.function-call support.function
#         ^^^ meta.function-call.arguments.makefile - punctuation
#               ^ keyword.other.block.end

all: deps
	$(warning he:llo)
	# ^ meta.function-call support.function
	#         ^^^ meta.function-call.arguments.makefile - punctuation
	#               ^ keyword.other.block.end
deps:
	$(warning he:llo)
	# ^ meta.function-call support.function
	#         ^^^ meta.function-call.arguments.makefile - punctuation
	#               ^ keyword.other.block.end
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
#            ^ variable.other - variable.language
#                              ^ string.unquoted variable.parameter variable.language
#                                    ^ punctuation
#                                               ^ string.unquoted variable.parameter variable.language

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
# ^ keyword.other.block.begin
#    ^ keyword.other.block.end
#      ^^ keyword.operator
#         ^ string.unquoted

$(a): b
# <- keyword.other.block.begin
#  ^ meta.function entity.name.function keyword.other.block.end
#   ^ keyword.operator
#     ^ meta.function.arguments string.unquoted
	$(Q)$(MAKE) $(build)=$@
	# <- meta.function.body
	#                    ^^ meta.function.body variable.language.automatic

$(a:b=c) : d
# <- meta.function entity.name.function
#   ^ - meta.function.arguments
#          ^ meta.function.arguments
	$(Q)$(MAKE) $(build)=$@
	# <- meta.function.body
	#                    ^^ meta.function.body variable.language.automatic

$(X:a=b) : w ;
# <- meta.function entity.name.function variable.parameter keyword.other.block.begin
#        ^ keyword.operator
#          ^ meta.function.arguments string.unquoted
#           ^ - string.unquoted
#            ^ punctuation.terminator

$(Y:%.cpp=%.o) := $(Z)
# <- - meta.function
#              ^^ keyword.operator.assignment

$(call my_func,my_arg): deps
# <- meta.function entity.name.function
#                     ^ keyword.operator.assignment
#                      ^ - keyword.operator.assignment
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
  #                                                                                  ^ string.quoted.single.makefile punctuation.definition.string.begin.makefile
  #                                                                                                        ^ string.quoted.single.makefile punctuation.definition.string.end.makefile
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
#              ^ meta.function.arguments string.unquoted
    #                         ^ comment.line - string.unquoted
    inkscape -C -z --file=$< --export-pdf=$@ 2> /dev/null
    # <- meta.function.body
endif
# <- keyword.control.conditional

vpath dir/*/whatevs whatevs
# ^ keyword.control.vpath
#         ^ variable.language.wildcard
#                   ^ string.unquoted.makefile

vpath asdf/*
# ^ keyword.control.vpath
#          ^ variable.language.wildcard
vpath
# ^ keyword.control.vpath.makefile

# a comment check
# <- comment.line

rule: asdf
	@rm -rf /
# <- meta.function.body

ifneq ($(REVISION),)
# ^ keyword.control.conditional
REVDEPS += revision.tex
revision.tex: $(VCSTURD)
    /bin/echo '\newcommand{\Revision}'"{$(subst _,\_,$(REVISION))}" > $@
    #           ^ - invalid.illegal
    #                                     ^ meta.function-call.makefile
    #                                                ^^ meta.function.body meta.function-call.arguments variable.parameter
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
    #                                                                                                   ^ - keyword.other.block.end
    #                                                                                                    ^ keyword.other.block.end
else
    $(call show_config_variable,ARDMK_DIR,[USER])
    #    ^ constant.language
    #      ^ variable.function
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
    #                                                   ^ variable.language.wildcard
        search

CC_VERSION := $(shell $(CC) -dumpversion)
$(call show_config_variable,CC_VERSION,[COMPUTED],($(CC_NAME)))
#                                                           ^ keyword.other.block.end
#                                                            ^ - keyword.other.block.end
#                                                             ^ keyword.other.block.end

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
#                                                           ^ keyword.other.block.end
#                                                            ^ - keyword.other.block.end
#                                                             ^ keyword.other.block.end

LIBRARIES := $(filter $(notdir $(wildcard $(HOME)/energia_sketchbook/libraries/*)), \
    $(shell sed -ne "s/^ *\# *include *[<\"]\(.*\)\.h[>\"]/\1/p" $(SOURCES)))
    #               ^ string.quoted.double.makefile punctuation.definition.string.begin.makefile
    #                                                          ^ string.quoted.double.makefile punctuation.definition.string.end.makefile

# FIX: https://github.com/sublimehq/Packages/issues/1941
escape_shellstring = $(subst `,\`,$(subst ",\",$(subst $$,\$$,$(subst \,\\,$1))))
#                    ^^^^^^^^ meta.function-call.makefile
#                            ^^^^^ meta.function-call.arguments.makefile - meta.function-call.makefile
#                                 ^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.makefile
#                                         ^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                              ^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                                      ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                             ^^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.makefile
#                                                                     ^^^^^^^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile - meta.function-call.makefile
#                                                                            ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile meta.function-call.arguments.makefile keyword.other.block.end.makefile
#                                                                             ^ meta.function-call.arguments.makefile meta.function-call.arguments.makefile keyword.other.block.end.makefile
#                                                                              ^ meta.function-call.arguments.makefile keyword.other.block.end.makefile
#                                                                               ^ keyword.other.block.end.makefile
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
