# The update script is located in the tools subdirectory because otherwise
# Sublime will read the file during start-up. No need for that.

all: $(addsuffix .sublime-syntax, $(basename $(wildcard *.yml)))

%.sublime-syntax: %.yml tools/update-commands.py
	@printf "$< ==> $@ ... "
	@python tools/update-commands.py $< $@
	@echo "Done."

test:
	@-/usr/bin/env bash test/syntax_test_bash.sh 2>&1 \
		| sed -nE "/^test\/syntax_test_bash.sh: line [[:digit:]]+: syntax .*/p"

.PHONY: test
