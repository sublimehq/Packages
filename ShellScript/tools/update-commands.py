import os
import sys
import yaml


def main():
    with open(sys.argv[1], "r") as stream:
        commands_input = yaml.load(stream, Loader=yaml.SafeLoader)

    main = []
    contexts = {
        "main": [{"match": ''}],
        "cmd-builtins": main
    }

    for command, value in commands_input.items():
        if not value:
            value = {}

        cmd_args = [{"meta_content_scope": "meta.function-call.arguments.shell"}]

        allow_eoo = value.get("allow-end-of-options-token", True)
        if allow_eoo:
            cmd_args.append({"include": "cmd-args-boilerplate-with-end-of-options"})
        else:
            cmd_args.append({"include": "cmd-args-boilerplate"})

        long_options = value.get("long-options")
        if long_options:
            cmd_args.append({
                "match": rf"(--)(?:{'|'.join(long_options)}){{{{opt_break}}}}",
                "scope": "variable.parameter.option.shell",
                "captures": {
                    1: "punctuation.definition.parameter.shell"
                },
                "push": "cmd-args-option-maybe-assignment"
            })

        short_options = value.get("short-options")
        short_options_compact = value.get("short-options-compact")

        if short_options:
            if short_options_compact:
                opts = f"[{short_options_compact}]*[{short_options}]"
            else:
                opts = f"[{short_options}]"

            cmd_args.append({
                "match": rf"([-+]){opts}",
                "scope": "variable.parameter.option.shell",
                "captures": {
                    1: "punctuation.definition.parameter.shell"
                },
                "push": "cmd-args-option-maybe-value"
            })

        if short_options_compact:
            opts = f"[{short_options_compact}]+"
            cmd_args.append({
                "match": rf"([-+]){opts}",
                "scope": "variable.parameter.option.shell",
                "captures": {
                    1: "punctuation.definition.parameter.shell"
                }
            })

        contexts[f"cmd-{command}-args"] = cmd_args

        match = f"{value.get('match', command)}{{{{cmd_break}}}}"
        scope = "meta.function-call.identifier.shell " + value.get("scope", f"support.function.{command}.shell")
        main.append({
            "match": match,
            "scope": scope,
            "push": f"cmd-{command}-args"
        })

    commands_output = {
        "scope": os.path.splitext(sys.argv[1])[0].replace("-", "."),
        "version": 2,
        "hidden": True,
        "contexts": contexts
    }

    with open(sys.argv[2], "w") as stream:
        print("%YAML 1.2\n---", file=stream)
        print(
            "# Automatically generated file -- do not edit!\n"
            "#\n"
            "# The main context is filled with relevant rules by the Bash.sublime-syntax\n"
            "# Don't include `cmd-builtin` here as essential contexts are missing in this\n"
            "# abstract syntax defintion.",
            file=stream
        )

        noalias_dumper = yaml.dumper.SafeDumper
        noalias_dumper.ignore_aliases = lambda self, data: True
        yaml.dump(commands_output,
                  stream,
                  default_flow_style=False,
                  allow_unicode=True,
                  default_style='',
                  sort_keys=False,
                  Dumper=noalias_dumper)

    return 0


if __name__ == '__main__':
    exit(main())
