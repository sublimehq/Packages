// SYNTAX TEST "Packages/Pascal/Pascal.sublime-syntax"

// comment
procedure foo;
// ^ meta.function.pascal
begin
	// comment
end;
// <- keyword.control.pascal

-- comment
procedure bar;
// ^ meta.function.pascal
begin
	-- comment
end;
// <- keyword.control.pascal
