-- SYNTAX TEST "Packages/AppleScript/AppleScript.sublime-syntax"

<<<<<<< HEAD
-- <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--     ^ meta.block.conflict.begin.diff - entity - punctuation
--      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
--          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
-- <- meta.block.conflict.separator.diff punctuation.section.block.diff
--^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
--     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
-- <- meta.block.conflict.end.diff punctuation.section.block.end.diff
--^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
--     ^ meta.block.conflict.end.diff - entity - punctuation
--      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
--            ^ meta.block.conflict.end.diff - entity - punctuation

(* Conflict in block comment
<<<<<<< HEAD
-- <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--     ^ meta.block.conflict.begin.diff - entity - punctuation
--      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
--          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
-- <- meta.block.conflict.separator.diff punctuation.section.block.diff
--^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
--     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
-- <- meta.block.conflict.end.diff punctuation.section.block.end.diff
--^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
--     ^ meta.block.conflict.end.diff - entity - punctuation
--      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
--            ^ meta.block.conflict.end.diff - entity - punctuation
*)

{ (* conflict in block *)
<<<<<<< HEAD
-- <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--     ^ meta.block.conflict.begin.diff - entity - punctuation
--      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
--          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
-- <- meta.block.conflict.separator.diff punctuation.section.block.diff
--^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
--     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
-- <- meta.block.conflict.end.diff punctuation.section.block.end.diff
--^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
--     ^ meta.block.conflict.end.diff - entity - punctuation
--      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
--            ^ meta.block.conflict.end.diff - entity - punctuation
}

( (* conflict in group *)
<<<<<<< HEAD
-- <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--     ^ meta.block.conflict.begin.diff - entity - punctuation
--      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
--          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
-- <- meta.block.conflict.separator.diff punctuation.section.block.diff
--^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
--     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
-- <- meta.block.conflict.end.diff punctuation.section.block.end.diff
--^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
--     ^ meta.block.conflict.end.diff - entity - punctuation
--      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
--            ^ meta.block.conflict.end.diff - entity - punctuation
)
