from __future__ import print_function
import os
import sys
import yaml


def main():
    shell_type =  os.path.splitext(sys.argv[1])[0].split("-")[-1]
    parent = f"scope:source.shell.{shell_type}#"

    with open(sys.argv[1], "r") as stream:
        commands_input = yaml.load(stream, Loader=yaml.SafeLoader)

    main = []
    contexts = {
        "main": main,
        "prototype": [{"include": f"{parent}prototype"}]
    }

    for command, value in commands_input.items():
        if not value:
            value = {}
        cmd_args_base = []

        long_options = value.get("long-options")
        if long_options:
            cmd_args_base.append({
                "match": rf"(?:\s+|^)((--)(?:{'|'.join(long_options)}){{{{opt_break}}}}",
                "captures": {
                    1: "variable.parameter.option.shell",
                    2: "punctuation.definition.parameter.shell"
                }
            })

        short_options = value.get("short-options")
        short_options_compact = value.get("short-options-compact")
        if short_options_compact and short_options:
            opts = f"(?:[{short_options}]|[{short_options_compact}]+[{short_options}]?)"
        elif short_options_compact:
            opts = f"[{short_options_compact}]+"
        elif short_options:
            opts = f"[{short_options}]"
        else:
            opts = ""
        if opts:
            short_option_prefixes = value.get("short-option-prefixes")
            if short_option_prefixes:
                cmd_args_base.append({
                    "match": rf"(?:\s+|^)(({'|'.join(short_option_prefixes)}){opts}){{{{opt_break}}}}",
                    "captures": {
                        1: "variable.parameter.option.shell",
                        2: "punctuation.definition.parameter.shell"
                    }
                })
            else:
                cmd_args_base.append({
                    "match": rf"(?:\s+|^)((-){opts}){{{{opt_break}}}}",
                    "captures": {
                        1: "variable.parameter.option.shell",
                        2: "punctuation.definition.parameter.shell"
                    }
                })

        cmd_args = [{"meta_scope": "meta.function-call.arguments.shell"}]

        allow_eoo = value.get("allow-end-of-options-token", True)
        if allow_eoo:
            cmd_args.append({"include": f"{parent}cmd-args-boilerplate-with-end-of-options"})
        else:
            cmd_args.append({"include": f"{parent}cmd-args-boilerplate"})

        if cmd_args_base:
            cmd_args.append({"include": f"cmd-args-{command}-base"})
            contexts[f"cmd-args-{command}-base"] = cmd_args_base

        contexts[f"cmd-args-{command}"] = [{"match": "", "set": cmd_args}]

        match = f"{value.get('match', command)}{{{{cmd_break}}}}"
        scope = "meta.function-call.shell " + value.get("scope", f"support.function.{command}.shell")
        main.append({
            "match": match,
            "scope": scope,
            "set": [f"{parent}cmd-post", f"cmd-args-{command}"]
        })

    commands_output = {
        "scope": os.path.splitext(sys.argv[1])[0].replace("-", "."),
        "hidden": True,
        "variables": {
            "cmd_break": r"(?=\s|;|$|>|<|\|)",
            "opt_break": r"(?=\s|;|$|`|\))"
        },
        "contexts": contexts
    }

    with open(sys.argv[2], "w") as stream:
        print("%YAML 1.2\n---", file=stream)
        print("# Automatically generated file -- do not edit!", file=stream)
        noalias_dumper = yaml.dumper.SafeDumper
        noalias_dumper.ignore_aliases = lambda self, data: True
        yaml.dump(commands_output,
                  stream,
                  default_flow_style=False,
                  allow_unicode=True,
                  default_style='',
                  Dumper=noalias_dumper)

    return 0


if __name__ == '__main__':
    exit(main())
