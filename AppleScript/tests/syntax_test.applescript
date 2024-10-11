-- SYNTAX TEST "Packages/AppleScript/AppleScript.sublime-syntax"

<<<<<<< HEAD
-- <- markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.begin.diff3 - entity - punctuation
--      ^^^^ markup.conflict.begin.diff3 entity.name.section.conflict.diff3
--          ^ markup.conflict.begin.diff3 - entity - punctuation

=======
-- <- markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.separator.diff3 - punctuation

>>>>>>> foo/bar
-- <- markup.conflict.end.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.end.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.end.diff3 - entity - punctuation
--      ^^^^^^^ markup.conflict.end.diff3 entity.name.section.conflict.diff3
--             ^ markup.conflict.end.diff3 - entity - punctuation

(* Conflict in block comment
<<<<<<< HEAD
-- <- markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.begin.diff3 - entity - punctuation
--      ^^^^ markup.conflict.begin.diff3 entity.name.section.conflict.diff3
--          ^ markup.conflict.begin.diff3 - entity - punctuation

=======
-- <- markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.separator.diff3 - punctuation

>>>>>>> master
-- <- markup.conflict.end.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.end.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.end.diff3 - entity - punctuation
--      ^^^^^^ markup.conflict.end.diff3 entity.name.section.conflict.diff3
--            ^ markup.conflict.end.diff3 - entity - punctuation
*)

{ (* conflict in block *)
<<<<<<< HEAD
-- <- markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.begin.diff3 - entity - punctuation
--      ^^^^ markup.conflict.begin.diff3 entity.name.section.conflict.diff3
--          ^ markup.conflict.begin.diff3 - entity - punctuation

=======
-- <- markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.separator.diff3 - punctuation

>>>>>>> master
-- <- markup.conflict.end.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.end.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.end.diff3 - entity - punctuation
--      ^^^^^^ markup.conflict.end.diff3 entity.name.section.conflict.diff3
--            ^ markup.conflict.end.diff3 - entity - punctuation
}

( (* conflict in group *)
<<<<<<< HEAD
-- <- markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.begin.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.begin.diff3 - entity - punctuation
--      ^^^^ markup.conflict.begin.diff3 entity.name.section.conflict.diff3
--          ^ markup.conflict.begin.diff3 - entity - punctuation

=======
-- <- markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.separator.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.separator.diff3 - punctuation

>>>>>>> master
-- <- markup.conflict.end.diff3 punctuation.section.conflict.diff3
--^^^^^ markup.conflict.end.diff3 punctuation.section.conflict.diff3
--     ^ markup.conflict.end.diff3 - entity - punctuation
--      ^^^^^^ markup.conflict.end.diff3 entity.name.section.conflict.diff3
--            ^ markup.conflict.end.diff3 - entity - punctuation
)
