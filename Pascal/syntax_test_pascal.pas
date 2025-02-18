// SYNTAX TEST "Packages/Pascal/Pascal.sublime-syntax"

  // double slash comment
//^^ punctuation.definition.comment.begin.pascal
//^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.pascal

  -- double dash comment
//^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.pascal
//^^ punctuation.definition.comment.begin.pascal

  true
//^^^^ constant.language.boolean.true.pascal
  false
//^^^^^ constant.language.boolean.false.pascal
  nil
//^^^ constant.language.null.pascal

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
