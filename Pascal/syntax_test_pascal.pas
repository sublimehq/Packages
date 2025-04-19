// SYNTAX TEST "Packages/Pascal/Pascal.sublime-syntax"

  // double slash comment
// <- punctuation.whitespace.comment.leading.pascal
  // <- punctuation.definition.comment.pascal
  // ^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.pascal.two

  -- double dash comment
// <- punctuation.whitespace.comment.leading.pascal
  // <- punctuation.definition.comment.pascal
  // ^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.pascal.one

// comment
procedure foo;
// ^ meta.function.pascal keyword.declaration.function
begin
	// comment
end;
// <- keyword.control.pascal

-- comment
procedure bar;
// ^ meta.function.pascal keyword.declaration.function
begin
	-- comment
end;
// <- keyword.control.pascal

<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
