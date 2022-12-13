import copy
import os
import re
import shlex
import sys
import Default.exec


class RunShellScriptCommand(Default.exec.ExecCommand):

    def run(
        self,
        working_dir="",
        encoding="utf-8",
        env={},
        kill=False,
        kill_previous=False,
        word_wrap=False,
        syntax="Packages/Text/Plain text.tmLanguage",
        # Catches unused keys from sublime-build file
        **kwargs
    ):
        view = self.window.active_view()
        if not view:
            return
        file_name = view.file_name()
        if not file_name:
            return

        # Determine the shell to run
        shell = None
        if sys.platform != "win32":
            # interpret firstline on OSX and Linux
            firstline = view.substr(view.line(0))
            match = re.match(r"\s*#!(.+)", firstline)
            if match:
                # Note: we split on whitespace and turn it
                # into a list, otherwise things like
                # "/usr/bin/env bash" won't work
                shell = shlex.split(match.group(1))

        if not shell:
            # Use user's default shell or fallback to "sh"
            # if no shebang line was found or we are running on Win32.
            # Note: "sh" is provided by MSYS2 and must exist in %PATH%.
            shell = [os.environ.get("SHELL", "sh")]

        # Determine the working directory
        if not working_dir:
            working_dir = os.path.dirname(file_name)

        # Delegate to the super class
        super().run(
            cmd=shell + [os.path.basename(file_name)],
            working_dir=working_dir,
            encoding=encoding,
            env=env,
            kill=kill,
            kill_previous=kill_previous,
            word_wrap=word_wrap,
            syntax=syntax
        )
