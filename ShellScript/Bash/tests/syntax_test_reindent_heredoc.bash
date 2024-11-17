# SYNTAX TEST reindent-unchanged "Packages/ShellScript/Bash.sublime-syntax"

doc=<<'EOF'
	# Markdown

	1. list item

	   ```sh
	   #!/usr/bin/env bash

	   if [[ $var == 1 ]]; then
		   echo 1;
	   elif [[ $var == 2 ]]; then
		   echo 2;
	   else
		   echo nothing;
	   fi;
	   ```

	   - sub list item
		 followed by something
	   - sub list item
		 followed by something
EOF

function foo() {

	heredoc1=<<'EOF'
		# Markdown

		1. list item

		   ```sh
		   #!/usr/bin/env bash

		   if [[ $var == 1 ]]; then
			   echo 1;
		   elif [[ $var == 2 ]]; then
			   echo 2;
		   else
			   echo nothing;
		   fi;
		   ```

		   - sub list item
			 followed by something
		   - sub list item
			 followed by something
EOF

	if [[ -z heredoc2 ]]; then
		heredoc2=<<-'EOF' ; if true goto
		# Markdown

		1. list item

		   ```sh
		   #!/usr/bin/env bash

			 if [[ $var == 1 ]]; then
			   echo 1;
			 elif [[ $var == 2 ]]; then
		   echo 2;
			 else
			   echo nothing;
		   fi;
		   ```

		   - sub list item
			 followed by something
		   - sub list item
			 followed by something
		EOF
	fi;

	if [[ -z heredoc2 ]]; then
		heredoc2=<<-'EOF' ; if true goto
	# Markdown

	1. list item

	   ```sh
	   #!/usr/bin/env bash

		 if [[ $var == 1 ]]; then
		   echo 1;
		 elif [[ $var == 2 ]]; then
	   echo 2;
		 else
		   echo nothing;
	   fi;
	   ```

	   - sub list item
		 followed by something
	   - sub list item
		 followed by something
		EOF
	fi;
}