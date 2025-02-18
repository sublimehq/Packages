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

  "double string \" with escape"
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.pascal
//^ punctuation.definition.string.begin.pascal
//               ^^ constant.character.escape.pascal
//                             ^ punctuation.definition.string.end.pascal

  'single string '' with escape'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.pascal
//^ punctuation.definition.string.begin.pascal
//               ^^ constant.character.escape.apostrophe.pascal
//                             ^ punctuation.definition.string.end.pascal

  0xdeadbeef
//^^^^^^^^^^ meta.number.integer.hexadecimal.pascal
//^^ constant.numeric.base.pascal
//  ^^^^^^^^ constant.numeric.value.pascal

  10f
//^^^ meta.number.float.decimal.pascal
//^^ constant.numeric.value.pascal
//  ^ constant.numeric.suffix.pascal

  10
//^^ meta.number.integer.decimal.pascal constant.numeric.value.pascal

  10ul
//^^^^ meta.number.integer.decimal.pascal
//^^ constant.numeric.value.pascal
//  ^^ constant.numeric.suffix.pascal

  10.ul
//^^^^^ meta.number.integer.decimal.pascal
//^^^ constant.numeric.value.pascal
//  ^ punctuation.separator.decimal.pascal
//   ^^ constant.numeric.suffix.pascal

  10.0ul
//^^^^^^ meta.number.integer.decimal.pascal
//^^^^ constant.numeric.value.pascal
//  ^ punctuation.separator.decimal.pascal
//    ^^ constant.numeric.suffix.pascal

  10.
//^^^ meta.number.float.decimal.pascal constant.numeric.value.pascal
//  ^ punctuation.separator.decimal.pascal

  10.f
//^^^^ meta.number.float.decimal.pascal
//^^^ constant.numeric.value.pascal
//  ^ punctuation.separator.decimal.pascal
//   ^ constant.numeric.suffix.pascal

  10.0f
//^^^^^ meta.number.float.decimal.pascal
//^^^^ constant.numeric.value.pascal
//  ^ punctuation.separator.decimal.pascal
//    ^ constant.numeric.suffix.pascal

  10.0
//^^^^ meta.number.float.decimal.pascal constant.numeric.value.pascal
//  ^ punctuation.separator.decimal.pascal

  t1 := t2;
//   ^^ keyword.operator.assignment.pascal
//        ^ punctuation.terminator.pascal

  t1 := t2 + 1 - 2 * 3 / 4 % 5;
//   ^^ keyword.operator.assignment.pascal
//         ^ keyword.operator.arithmetic.pascal
//           ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//             ^ keyword.operator.arithmetic.pascal
//               ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//                 ^ keyword.operator.arithmetic.pascal
//                   ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//                     ^ keyword.operator.arithmetic.pascal
//                       ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//                         ^ keyword.operator.arithmetic.pascal
//                           ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//                            ^ punctuation.terminator.pascal

  true and true xor false not false or true
//^^^^ constant.language.boolean.true.pascal
//     ^^^ keyword.operator.logical.pascal
//         ^^^^ constant.language.boolean.true.pascal
//              ^^^ keyword.operator.logical.pascal
//                  ^^^^^ constant.language.boolean.false.pascal
//                        ^^^ keyword.operator.logical.pascal
//                            ^^^^^ constant.language.boolean.false.pascal
//                                  ^^ keyword.operator.logical.pascal
//                                     ^^^^ constant.language.boolean.true.pascal

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
