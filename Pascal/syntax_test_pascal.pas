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
// <- markup.conflict.begin.diff3 punctuation.section.conflict.diff3
//^^^^^ markup.conflict.begin.diff3 punctuation.section.conflict.diff3
//     ^ markup.conflict.begin.diff3 - entity - punctuation
//      ^^^^ markup.conflict.begin.diff3 entity.name.section.conflict.diff3
//          ^ markup.conflict.begin.diff3 - entity - punctuation

=======
// <- markup.conflict.separator.diff3 punctuation.section.conflict.diff3
//^^^^^ markup.conflict.separator.diff3 punctuation.section.conflict.diff3
//     ^ markup.conflict.separator.diff3 - punctuation

>>>>>>> master
// <- markup.conflict.end.diff3 punctuation.section.conflict.diff3
//^^^^^ markup.conflict.end.diff3 punctuation.section.conflict.diff3
//     ^ markup.conflict.end.diff3 - entity - punctuation
//      ^^^^^^ markup.conflict.end.diff3 entity.name.section.conflict.diff3
//            ^ markup.conflict.end.diff3 - entity - punctuation
