from __future__ import annotations

import sublime
import Default.exec

import copy
import os
import re
import shlex
import typing


class RunShellScriptCommand(Default.exec.ExecCommand):

    def run(self, **kwargs):
        view: typing.Optional[sublime.View] = self.window.active_view()
        if view is None:
            return
        file_name: typing.Optional[str] = view.file_name()
        if file_name is None:
            return

        # Determine the shell to run
        firstline: str = view.substr(view.line(0))
        match: typing.Optional[re.Match[str]] = re.match(r"\s*#!(.+)", firstline)
        if match:
            # Note: we split on whitespace and turn it
            # into a list, otherwise things like
            # "/usr/bin/env bash" won't work
            shell: typing.List[str] = shlex.split(match.group(1))
        else:
            # No shebang line... Take the user's default shell
            shell: typing.List[str] = [os.environ["SHELL"]]

        # Determine the working directory
        working_dir = kwargs.get("working_dir", None)
        if working_dir is None:
            working_dir = os.path.dirname(file_name)

        # Determine the environment variables
        env = copy.deepcopy(os.environ)
        custom_env = kwargs.get("env", None)
        if custom_env is not None:
            env.update(custom_env)

        # Delegate to the super class
        super().run(cmd=shell + [file_name],
                    working_dir=working_dir,
                    env=env)
