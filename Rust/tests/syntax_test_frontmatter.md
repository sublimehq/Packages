#! SYNTAX TEST "Markdown.sublime-syntax"

1. shebang

   ```rust
   #!/usr/bin/env cargo
   #! <- comment.line.shebang.rust punctuation.definition.comment.rust
   #!^^^^^^^^^^^^^^^^^^^ comment.line.shebang.rust - punctuation
   #!             ^^^^^ constant.language.shebang.rust
   ```

2. frontmatter

   ```rust
   ---
   #! <- meta.frontmatter.rust punctuation.section.frontmatter.begin.rust
   [section]
   #! <- meta.frontmatter.rust source.toml.embedded.rust source.toml meta.section.toml meta.brackets.toml punctuation.section.brackets.begin.toml
   key = "value"
   #! <- meta.frontmatter.rust source.toml.embedded.rust meta.mapping.key.toml meta.string.toml string.unquoted.toml
   ---
   #! <- meta.frontmatter.rust punctuation.section.frontmatter.end.rust
   
   fn main() {}
   #! <- meta.function.rust keyword.declaration.function.rust
   #!^^^^^^^^^^ meta.function.rust
   ```
