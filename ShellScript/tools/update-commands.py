from __future__ import print_function
import os
import sys
import yaml


def main():
    parent = "scope:source.shell.{}#".format(
        os.path.splitext(sys.argv[1])[0].split("-")[-1])
    with open(sys.argv[1], "r") as stream:
        commands_input = yaml.load(stream, Loader=yaml.SafeLoader)
    main = []
    main_bt = []
    contexts = {"main": main, "main-bt": main_bt}
    eoo = {
        "match": r"(?:\s+|^)--(?=\s|$)",
        "scope": r"keyword.operator.end-of-options.shell",
        "set": [
            {"meta_content_scope": r"meta.function-call.arguments.shell"},
            {"include": parent + r"expansion-and-string"},
            {"include": parent + r"line-continuation-or-pop-at-end"}
        ]
    }
    opt_end_boundary = r"(?=\s|;|$|`|\))"
    for command, value in commands_input.items():
        if not value:
            value = {}
        match = value.get("match", None)
        short_options = value.get("short-options", None)
        long_options = value.get("long-options", None)
        short_option_prefixes = value.get("short-option-prefixes", None)
        short_options_compact = value.get("short-options-compact", None)
        allow_eoo = value.get("allow-end-of-options-token", True)
        scope = value.get("scope", None)
        if not scope:
            scope = "support.function.{}.shell".format(command)
        scope = "meta.function-call.shell " + scope
        cmd_args_base = []
        cmd_args = []
        cmd_args_bt = []
        if match:
            match = "{{boundary_begin}}%s{{boundary_end}}" % match
        else:
            match = "{{boundary_begin}}%s{{boundary_end}}" % command
        if allow_eoo:
            cmd_args_base.append(eoo)

        if long_options:
            cmd_args_base.append({
                "match": f"(?:\s+|^)((--)(?:{'|'.join(long_options)}){opt_end_boundary}",
                "captures": {
                    1: "variable.parameter.option.shell",
                    2: "punctuation.definition.parameter.shell"
                }
            })

        if short_options_compact and short_options:
            opts = f"[{short_options_compact}]*[{short_options}]?"
        elif short_options_compact:
            opts = f"[{short_options_compact}]+"
        elif short_options:
            opts = f"[{short_options}]"
        else:
            opts = ""
        if opts:
            if short_option_prefixes:
                cmd_args_base.append({
                    "match": rf"(?:\s+|^)(({'|'.join(short_option_prefixes)}){opts}){opt_end_boundary}",
                    "captures": {
                        1: "variable.parameter.option.shell",
                        2: "punctuation.definition.parameter.shell"
                    }
                })
            else:
                cmd_args_base.append({
                    "match": rf"(?:\s+|^)((-){opts}){opt_end_boundary}",
                    "captures": {
                        1: "variable.parameter.option.shell",
                        2: "punctuation.definition.parameter.shell"
                    }
                })

        cmd_args.append({"meta_scope": "meta.function-call.arguments.shell"})
        cmd_args.append({"include": parent + r"cmd-args-boilerplate"})
        cmd_args_bt.append({
            "meta_scope": "meta.function-call.arguments.shell"})
        cmd_args_bt.append({"include": parent + r"cmd-args-boilerplate-bt"})
        if len(cmd_args_base) > 0:
            cmd_args.append({"include": "cmd-args-{}-base".format(command)})
            cmd_args_bt.append({"include": "cmd-args-{}-base".format(command)})
            contexts["cmd-args-{}-base".format(command)] = cmd_args_base
        cmd_args = [{"match": "", "set": cmd_args}]
        cmd_args_bt = [{"match": "", "set": cmd_args_bt}]
        contexts["cmd-args-{}".format(command)] = cmd_args
        contexts["cmd-args-{}-bt".format(command)] = cmd_args_bt
        main.append({
            "match": match,
            "scope": scope,
            "set": [
                "{}cmd-post".format(parent),
                "cmd-args-{}".format(command)]
        })
        main_bt.append({
            "match": match,
            "scope": scope,
            "set": [
                "{}cmd-post".format(parent),
                "cmd-args-{}-bt".format(command)]
        })
    contexts["prototype"] = [{
        "include": parent + r"prototype"
    }]

    commands_output = {
        "scope": os.path.splitext(sys.argv[1])[0].replace("-", "."),
        "hidden": True,
        "variables": {
            "boundary_end": r"(?=\s|;|$|>|<|\|)",
            "boundary_begin": ''
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
