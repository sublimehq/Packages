#! SYNTAX TEST "Rust.sublime-syntax"
---
#! <- meta.frontmatter.rust punctuation.section.frontmatter.begin.rust
#!^ meta.frontmatter.rust punctuation.section.frontmatter.begin.rust
#! ^ meta.frontmatter.rust - punctuation
[section]
#! <- meta.frontmatter.rust source.toml.embedded.rust source.toml meta.section.toml meta.brackets.toml punctuation.section.brackets.begin.toml
key = "value"
#! <- meta.frontmatter.rust source.toml.embedded.rust meta.mapping.key.toml meta.string.toml string.unquoted.toml
---
#! <- meta.frontmatter.rust punctuation.section.frontmatter.end.rust
#!^ meta.frontmatter.rust punctuation.section.frontmatter.end.rust
#! ^ meta.frontmatter.rust - punctuation

fn main() {}
#! <- meta.function.rust keyword.declaration.function.rust
#!^^^^^^^^^^ meta.function.rust
