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
                "match": rf"(?:\s+|^)((--)(?:{'|'.join(long_options)})){{{{opt_break}}}}",
                "captures": {
                    1: "variable.parameter.option.shell",
                    2: "punctuation.definition.parameter.shell"
                }
            })

        short_options = value.get("short-options")
        short_options_compact = value.get("short-options-compact")
        if short_options_compact and short_options:
            opts = f"(?:[{short_options_compact}]+[{short_options}]?|[{short_options}])"
        elif short_options_compact:
            opts = f"[{short_options_compact}]+"
        elif short_options:
            opts = f"[{short_options}]"
        else:
            opts = ""
        if opts:
            short_option_prefixes = value.get("short-option-prefixes")
            if short_option_prefixes:
                cmd_args.append({
                    "match": rf"(?:\s+|^)(({'|'.join(short_option_prefixes)}){opts})(\d*)",
                    "captures": {
                        1: "variable.parameter.option.shell",
                        2: "punctuation.definition.parameter.shell",
                        3: "meta.number.value.shell constant.numeric.integer.decimal.shell"
                    }
                })
            else:
                cmd_args.append({
                    "match": rf"(?:\s+|^)(([-+]){opts})(\d*)",
                    "captures": {
                        1: "variable.parameter.option.shell",
                        2: "punctuation.definition.parameter.shell",
                        3: "meta.number.value.shell constant.numeric.integer.decimal.shell"
                    }
                })

        contexts[f"cmd-args-{command}"] = cmd_args

        match = f"{value.get('match', command)}{{{{cmd_break}}}}"
        scope = "meta.function-call.identifier.shell " + value.get("scope", f"support.function.{command}.shell")
        main.append({
            "match": match,
            "scope": scope,
            "push": f"cmd-args-{command}"
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
