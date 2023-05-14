| SYNTAX TEST "Packages/Go/Markdown (Go).sublime-syntax"

<!-- Comments -->

  {{/* a comment */}}
| ^^^^^^^^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
| ^^ punctuation.section.interpolation.begin.go - source.go
|   ^^^^^^^^^^^^^^^ comment.block.go
|   ^^ punctuation.definition.comment.begin.go
|                ^^ punctuation.definition.comment.end.go
|                  ^^ punctuation.section.interpolation.end.go - source.go

  {{- /* a comment */ -}}
| ^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
| ^^ punctuation.section.interpolation.begin.go - source.go
|   ^ keyword.operator.template.trim.left.go
|    ^^^^^^^^^^^^^^^^^ source.go.template
|     ^^^^^^^^^^^^^^^ comment.block.go
|     ^^ punctuation.definition.comment.begin.go
|                  ^^ punctuation.definition.comment.end.go
|                     ^ keyword.operator.template.trim.right.go
|                      ^^ punctuation.section.interpolation.end.go - source.go


# My {{ .Site.Title }} homepage
| <- markup.heading.1.markdown punctuation.definition.heading.begin.markdown
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.heading.1.markdown
|    ^^^^^^^^^^^^^^^^^ meta.interpolation.go
|    ^^ punctuation.section.interpolation.begin.go
|      ^^^^^^^^^^^^^ source.go.template
|                   ^^ punctuation.section.interpolation.end.go

<!-- Predefined Variables -->

  {{ .Title }}
| ^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
| ^^ punctuation.section.interpolation.begin.go
|   ^^^^^^^^ source.go.template
|    ^ punctuation.accessor.dot.go
|     ^^^^^ variable.other.member.go
|           ^^ punctuation.section.interpolation.end.go

<!-- Local Variables -->

  {{ $address := "123 Main St." }}
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
|             ^^ keyword.operator.assignment.go

  {{ $address }}
| ^^^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
| ^^ punctuation.section.interpolation.begin.go
|    ^^^^^^^^ source.go.template variable.other.template.go
|    ^ punctuation.definition.variable.go
|             ^^ punctuation.section.interpolation.end.go

<!-- Functions -->

  {{ add 1 2 }}
| ^^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
| ^^ punctuation.section.interpolation.begin.go
|   ^^^^^^^^^ source.go.template
|    ^^^^ variable.function.go
|        ^ meta.number.integer.decimal.go constant.numeric.value.go
|          ^ meta.number.integer.decimal.go constant.numeric.value.go
|            ^^ punctuation.section.interpolation.end.go

<!-- Groups -->

  {{ if or (isset .Params "alt") (isset .Params "caption") }} Caption {{ end }}
| ^^ meta.paragraph.markdown meta.interpolation.go - source.go
|   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go source.go.template
|                                                          ^^ meta.paragraph.markdown meta.interpolation.go - source.go
|                                                             ^^^^^^^^ meta.paragraph.markdown - meta.interpolation
|                                                                     ^^^^^^^^^ meta.paragraph.markdown meta.interpolation.go
|          ^^^^^^^^^^^^^^^^^^^^^ meta.group.go
|                                ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.go
| ^^ punctuation.section.interpolation.begin.go
|    ^^ keyword.control.conditional.if.go
|       ^^ support.function.builtin.go
|          ^ punctuation.section.group.begin.go
|           ^^^^^^ variable.function.go
|                 ^ punctuation.accessor.dot.go
|                  ^^^^^^ variable.other.member.go
|                         ^^^^^ meta.string.go string.quoted.double.go
|                              ^ punctuation.section.group.end.go
|                                ^ punctuation.section.group.begin.go
|                                 ^^^^^^ variable.function.go
|                                       ^ punctuation.accessor.dot.go
|                                        ^^^^^^ variable.other.member.go
|                                               ^^^^^^^^^ meta.string.go string.quoted.double.go
|                                                        ^ punctuation.section.group.end.go
|                                                          ^^ punctuation.section.interpolation.end.go
|                                                                     ^^ punctuation.section.interpolation.begin.go
|                                                                        ^^^ keyword.control.context.go
|                                                                            ^^ punctuation.section.interpolation.end.go

<!-- Keywords -->

{{if pipeline}} T1 {{else if pipeline}} T0 {{else}} T2 {{end}}
| ^^ keyword.control.conditional.if.go
|                    ^^^^^^^ keyword.control.conditional.elseif.go
|                                            ^^^^ keyword.control.conditional.else.go
|                                                        ^^^ keyword.control.context.go

{{range pipeline}} T1 {{else}} T0 {{end}}
| ^^^^^ keyword.control.loop.range.go
|                       ^^^^ keyword.control.conditional.else.go
|                                   ^^^ keyword.control.context.go

{{break}}
| ^^^^^ keyword.control.flow.break.go

{{continue}}
| ^^^^^^^^ keyword.control.flow.continue.go

{{template "name"}}
| ^^^^^^^^ keyword.control.context.go

{{block "name" pipeline}} T1 {{end}}
| ^^^^^ keyword.control.context.go

{{with pipeline}} T1 {{else}} T0 {{end}}
| ^^^^ keyword.control.context.go
|                      ^^^^ keyword.control.conditional.else.go
|                                  ^^^ keyword.control.context.go

<!-- Interpolation in embedded HTML/CSS -->

  <style>
    .class {
      color: {{ .Site.Color }};
|            ^^^^^^^^^^^^^^^^^ source.css.embedded.html meta.property-list.css meta.block.css meta.property-value.css meta.interpolation.go
|            ^^ punctuation.section.interpolation.begin.go - source.go.template
|              ^^^^^^^^^^^^^ source.go.template
|               ^ punctuation.accessor.dot.go
|                ^^^^ variable.other.member.go
|                    ^ punctuation.accessor.dot.go
|                     ^^^^^ variable.other.member.go
|                           ^^ punctuation.section.interpolation.end.go - source.go.template
|                             ^ punctuation.terminator.rule.css
    }
  </style>

  <hr style="color: {{.Site.Color}}"/>
| ^^^^ meta.disable-markdown meta.tag - meta.attribute-with-value
|     ^^^^^^ meta.disable-markdown meta.tag meta.attribute-with-value.style.html - meta.string
|           ^^^^^^^^ meta.disable-markdown meta.tag meta.attribute-with-value.style.html meta.string.html - meta.interpolation
|                   ^^^^^^^^^^^^^^^ meta.disable-markdown meta.tag meta.attribute-with-value.style.html meta.string.html meta.embedded.html source.css.embedded.html meta.property-value.css meta.interpolation.go
|                                  ^ meta.disable-markdown meta.tag meta.attribute-with-value.style.html meta.string.html - meta.interpolation
|                                   ^^ meta.disable-markdown meta.tag - meta.attribute-with-value
|                   ^^ punctuation.section.interpolation.begin.go - source.go.template
|                     ^^^^^^^^^^^ source.go.template
|                                ^^ punctuation.section.interpolation.end.go - source.go.template

<!-- Lists -->

1. item {{.T}}
   |    ^^^^^^ markup.list.numbered.markdown meta.paragraph.list.markdown meta.interpolation.go

   - item {{.T}}
     |    ^^^^^^ markup.list.numbered.markdown meta.paragraph.list.markdown meta.interpolation.go

<!-- Tables -->

| {{.C1}} | {{.C2}}
| <- meta.table.header.markdown-gfm punctuation.separator.table-cell.markdown
|^^^^^^^^^^^^^^^^^^^ meta.table.header.markdown-gfm
| ^^^^^^^ meta.interpolation.go
|         ^ punctuation.separator.table-cell.markdown
|           ^^^^^^^ meta.interpolation.go
