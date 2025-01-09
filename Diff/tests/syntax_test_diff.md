\ SYNTAX TEST "Packages/Diff/Diff.sublime-syntax"

1. list item with diff fenced code block

   ```diff
   <<<<<<< A
   \^^^^^^^^^ meta.block.conflict.begin.diff - meta.block meta.block - markup
   \^^^^^^ punctuation.section.block.begin.diff
   \      ^ - entity - punctuation
   \       ^ entity.name.section.diff
   \        ^ - entity
   lines from A
   \^^^^^^^^^^^^ meta.block.conflict.diff markup.deleted.diff - meta.block meta.block
   =======
   \^^^^^^^ meta.block.conflict.separator.diff - meta.block meta.block - markup
   \^^^^^^ punctuation.section.block.diff
   lines from B
   \^^^^^^^^^^^ meta.block.conflict.diff markup.inserted.diff
   >>>>>>> B
   \^^^^^^^^^ meta.block.conflict.end.diff - meta.block meta.block - markup
   \^^^^^^ punctuation.section.block.end.diff
   \      ^ - entity
   \       ^ entity.name.section.diff
   \        ^ - entity
   ```
