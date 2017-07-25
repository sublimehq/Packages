import copy
import os
import re
import shlex
import Default.exec


class RunShellScriptCommand(Default.exec.ExecCommand):

    def run(self, **kwargs):
        view = self.window.active_view()
        if not view:
            return
        file_name = view.file_name()
        if not file_name:
            return

        # Determine the shell to run
        firstline = view.substr(view.line(0))
        match = re.match(r"\s*#!(.+)", firstline)
        if match:
            # Note: we split on whitespace and turn it
            # into a list, otherwise things like
            # "/usr/bin/env bash" won't work
            shell = shlex.split(match.group(1))
        else:
            # No shebang line... Take the user's default shell
            shell = [os.environ["SHELL"]]

        # Determine the working directory
        working_dir = kwargs.get("working_dir", None)
        if not working_dir:
            working_dir = os.path.dirname(file_name)

        # Determine the environment variables
        env = copy.deepcopy(os.environ)
        custom_env = kwargs.get("env", None)
        if custom_env:
            env.update(custom_env)

        # Delegate to the super class
        super().run(cmd=shell + [file_name],
                    working_dir=working_dir,
                    env=env)
