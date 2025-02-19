// SYNTAX TEST "Packages/Pascal/Pascal.sublime-syntax"

  // double slash comment
//^^ punctuation.definition.comment.begin.pascal
//^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.pascal

  -- double dash comment
//^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.pascal
//^^ punctuation.definition.comment.begin.pascal

  { Comment 1 (* comment 2 *) }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.pascal
//^ punctuation.definition.comment.begin.pascal
//            ^^^^^^^^^^^^^^^ comment.block.pascal
//            ^^ punctuation.definition.comment.begin.pascal
//                         ^^ punctuation.definition.comment.end.pascal
//                            ^ punctuation.definition.comment.end.pascal

  (* Comment 1 { comment 2 } *)
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.pascal
//^^ punctuation.definition.comment.begin.pascal
//             ^^^^^^^^^^^^^ comment.block.pascal
//             ^ punctuation.definition.comment.begin.pascal
//                         ^ punctuation.definition.comment.end.pascal
//                           ^^ punctuation.definition.comment.end.pascal

  { comment 1 // Comment 2 }
//^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.pascal
//^ punctuation.definition.comment.begin.pascal
//                         ^ punctuation.definition.comment.end.pascal

  (* comment 1 // Comment 2 *)
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.pascal
//^^ punctuation.definition.comment.begin.pascal
//                          ^^ punctuation.definition.comment.end.pascal

  // comment 1 (* comment 2 *)
//^^ punctuation.definition.comment.begin.pascal
//^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.pascal

  // comment 1 { comment 2 }
//^^ punctuation.definition.comment.begin.pascal
//^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.pascal

  true
//^^^^ constant.language.boolean.true.pascal
  false
//^^^^^ constant.language.boolean.false.pascal
  nil
//^^^ constant.language.null.pascal
  trUe
//^^^^ constant.language.boolean.true.pascal
  faLse
//^^^^^ constant.language.boolean.false.pascal
  nIl
//^^^ constant.language.null.pascal

  "double string \" with escape"
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.pascal string.quoted.double.pascal
//^ punctuation.definition.string.begin.pascal
//               ^^ constant.character.escape.pascal
//                             ^ punctuation.definition.string.end.pascal

  'single string '' with escape'
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.pascal string.quoted.single.pascal
//^ punctuation.definition.string.begin.pascal
//               ^^ constant.character.escape.apostrophe.pascal
//                             ^ punctuation.definition.string.end.pascal

  'the string starts here  
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.pascal string.quoted.single.pascal
//^ punctuation.definition.string.begin.pascal
//                         ^ invalid.illegal.unterminated-string.pascal
  and continues here'

  'the string starts here'#13#10'   and continues here'
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.pascal string.quoted.single.pascal
//^ punctuation.definition.string.begin.pascal
//                       ^ punctuation.definition.string.end.pascal
//                        ^^^^^^ constant.character.pascal
//                        ^ punctuation.definition.string.begin.pascal
//                           ^ punctuation.definition.string.begin.pascal
//                              ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.pascal
//                              ^ punctuation.definition.string.begin.pascal
//                                                    ^ punctuation.definition.string.end.pascal

  0xdeadbeef
//^^^^^^^^^^ meta.number.integer.hexadecimal.pascal
//^^ constant.numeric.base.pascal
//  ^^^^^^^^ constant.numeric.value.pascal

  &16
//^^^ meta.number.integer.octal.pascal
//^ constant.numeric.base.pascal
// ^^ constant.numeric.value.pascal

  %10001
//^^^^^^ meta.number.integer.binary.pascal
//^ constant.numeric.base.pascal
// ^^^^^ constant.numeric.value.pascal

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

  Label
//^^^^^ keyword.declaration.pascal
    123,
//  ^^^ entity.name.label.pascal
//     ^ punctuation.separator.sequence.pascal
    abc;
//  ^^^ entity.name.label.pascal
//     ^ punctuation.terminator.pascal

// Hint directives
  Const
//^^^^^ meta.block.pascal keyword.declaration.constant.pascal
    AConst = 12 deprecated;
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.pascal
//  ^^^^^^ variable.other.constant.pascal
//         ^ keyword.operator.assignment.pascal
//           ^^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//              ^^^^^^^^^^ variable.annotation.pascal
//                        ^ punctuation.terminator.pascal

  var
//^^^ meta.block.pascal keyword.declaration.variable.pascal
    p : integer platform;
//^^^^^^^^^^^^^^^^^^^^^^^ meta.block.pascal
//  ^ variable.other.readwrite.pascal
//    ^ punctuation.separator.annotation.pascal
//      ^^^^^^^ support.type.primitive.pascal
//              ^^^^^^^^ variable.annotation.pascal
//                      ^ punctuation.terminator.pascal

  Function Something : Integer; experimental;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^ keyword.declaration.function.pascal
//         ^^^^^^^^^ entity.name.function.pascal
//                   ^ punctuation.separator.annotation.pascal
//                     ^^^^^^^ support.type.primitive.pascal
//                            ^ punctuation.terminator.pascal
//                              ^^^^^^^^^^^^ variable.annotation.pascal
//                                          ^ punctuation.terminator.pascal

  begin
//^^^^^ meta.block.pascal keyword.context.block.begin.pascal
    Something:=P+AConst;
//^^^^^^^^^^^^^^^^^^^^^^ meta.block.pascal
//           ^^ keyword.operator.assignment.pascal
//              ^ keyword.operator.arithmetic.pascal
//                     ^ punctuation.terminator.pascal
  end;
//^^^^ meta.block.pascal
//^^^ keyword.context.block.end.pascal
//   ^ punctuation.terminator.pascal

  Function SomethingElse
//^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^ keyword.declaration.function.pascal
//         ^^^^^^^^^^^^^ entity.name.function.pascal

  begin
//^^^^^ meta.function.pascal
//^^^^^ keyword.context.block.begin.pascal
    Something:=P+AConst;
//^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//           ^^ keyword.operator.assignment.pascal
//              ^ keyword.operator.arithmetic.pascal
//                     ^ punctuation.terminator.pascal
  end;
//^^^^ meta.function.pascal
//^^^ keyword.context.block.end.pascal
//   ^ punctuation.terminator.pascal

  begin
    Something;
  end.

  // comment
  procedure foo;
//^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^ keyword.declaration.function.pascal
//          ^^^ entity.name.function.pascal
//             ^ punctuation.terminator.pascal
  begin
//^^^^^ meta.function.pascal
//^^^^^ keyword.context.block.begin.pascal
    // comment
  end;
//^^^^ meta.function.pascal
//^^^ keyword.context.block.end.pascal
//   ^ punctuation.terminator.pascal

// https://www.freepascal.org/docs-html/ref/refse97.html
  Unit testforward;
  interface
  Procedure First (n : longint);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^ keyword.declaration.function.pascal
//          ^^^^^ entity.name.function.pascal
//                ^^^^^^^^^^^^^ meta.function.parameters.pascal
//                ^ punctuation.section.parameters.begin.pascal
//                 ^ variable.parameter.pascal
//                   ^ punctuation.separator.annotation.pascal
//                     ^^^^^^^ support.type.primitive.pascal
//                            ^ punctuation.section.parameters.end.pascal
//                             ^ punctuation.terminator.pascal
  Procedure Second;
//^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^ keyword.declaration.function.pascal
//          ^^^^^^ entity.name.function.pascal
//                ^ punctuation.terminator.pascal
  implementation
//^^^^^^^^^^^^^^ keyword.control.pascal
  Procedure First (n : longint); forward;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^ keyword.declaration.function.pascal
//          ^^^^^ entity.name.function.pascal
//                ^^^^^^^^^^^^^ meta.function.parameters.pascal
//                ^ punctuation.section.parameters.begin.pascal
//                 ^ variable.parameter.pascal
//                   ^ punctuation.separator.annotation.pascal
//                     ^^^^^^^ support.type.primitive.pascal
//                            ^ punctuation.section.parameters.end.pascal
//                             ^ punctuation.terminator.pascal
//                               ^^^^^^^ keyword.control.pascal
//                                      ^ punctuation.terminator.pascal
  Procedure Second;
//^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^ keyword.declaration.function.pascal
//          ^^^^^^ entity.name.function.pascal
//                ^ punctuation.terminator.pascal
  begin
//^^^^^ meta.function.pascal
//^^^^^ keyword.context.block.begin.pascal
    WriteLn ('In second. Calling first...');
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.pascal string.quoted.single.pascal
//           ^ punctuation.definition.string.begin.pascal
//                                       ^ punctuation.definition.string.end.pascal
//                                         ^ punctuation.terminator.pascal
    First (1);
//^^^^^^^^^^^^ meta.function.pascal
//         ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//           ^ punctuation.terminator.pascal
  end;
//^^^^ meta.function.pascal
//^^^ keyword.context.block.end.pascal
//   ^ punctuation.terminator.pascal
  Procedure First (n : longint);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^ keyword.declaration.function.pascal
//          ^^^^^ entity.name.function.pascal
//                ^^^^^^^^^^^^^ meta.function.parameters.pascal
//                ^ punctuation.section.parameters.begin.pascal
//                 ^ variable.parameter.pascal
//                   ^ punctuation.separator.annotation.pascal
//                     ^^^^^^^ support.type.primitive.pascal
//                            ^ punctuation.section.parameters.end.pascal
//                             ^ punctuation.terminator.pascal
  begin
//^^^^^ meta.function.pascal
//^^^^^ keyword.context.block.begin.pascal
    WriteLn ('First received : ',n);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal meta.block.pascal
//  ^^^^^^^^ meta.function-call.pascal
//  ^^^^^^^ variable.function.pascal
//          ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.pascal
//          ^ punctuation.section.arguments.begin.pascal
//           ^^^^^^^^^^^^^^^^^^^ meta.string.pascal string.quoted.single.pascal
//           ^ punctuation.definition.string.begin.pascal
//                             ^ punctuation.definition.string.end.pascal
//                              ^ punctuation.separator.sequence.pascal
//                                ^ punctuation.section.arguments.end.pascal
//                                 ^ punctuation.terminator.pascal
  end;
//^^^^ meta.function.pascal
//^^^ keyword.context.block.end.pascal
//   ^ punctuation.terminator.pascal
  end.
//^^^ keyword.control.pascal

procedure CommandBind(f, Args: array of AnsiString; Sender: Byte);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^ keyword.declaration.function.pascal
//        ^^^^^^^^^^^ entity.name.function.pascal
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.pascal
//                   ^ punctuation.section.parameters.begin.pascal
//                    ^ variable.parameter.pascal
//                     ^ punctuation.separator.parameters.pascal
//                       ^^^^ variable.parameter.pascal
//                           ^ punctuation.separator.annotation.pascal
//                             ^^^^^ support.type.pascal
//                                   ^^ keyword.other.pascal
//                                      ^^^^^^^^^^ support.type.pascal
//                                                ^ punctuation.separator.parameters.pascal
//                                                  ^^^^^^ variable.parameter.pascal
//                                                        ^ punctuation.separator.annotation.pascal
//                                                          ^^^^ support.type.primitive.pascal
//                                                              ^ punctuation.section.parameters.end.pascal
//                                                               ^ punctuation.terminator.pascal
var
  BindKeyName: AnsiString;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^^^ variable.other.readwrite.pascal
//           ^ punctuation.separator.annotation.pascal
//             ^^^^^^^^^^ support.type.pascal
//                       ^ punctuation.terminator.pascal
  CommandString: AnsiString;
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^^^^^^ variable.other.readwrite.pascal
//             ^ punctuation.separator.annotation.pascal
//               ^^^^^^^^^^ support.type.pascal
//                         ^ punctuation.terminator.pascal
  Modifier: Word;
//^^^^^^^^^^^^^^^ meta.function.pascal
//^^^^^^^^ variable.other.readwrite.pascal
//        ^ punctuation.separator.annotation.pascal
//          ^^^^ support.type.primitive.pascal
//              ^ punctuation.terminator.pascal
begin
//^^^ meta.function.pascal meta.block.pascal keyword.context.block.begin.pascal
  if Length(Args) < 3 then
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.pascal meta.block.pascal
//^^ keyword.control.pascal
//   ^^^^^^ meta.function-call.pascal variable.function.pascal
//         ^^^^^^ meta.function-call.arguments.pascal
//         ^ punctuation.section.arguments.begin.pascal
//              ^ punctuation.section.arguments.end.pascal
//                ^ keyword.operator.comparison.pascal
//                  ^ meta.number.integer.decimal.pascal constant.numeric.value.pascal
//                    ^^^^ keyword.control.pascal
  begin
    MainConsole.Console('Usage: bind "key" "command"', GAME_MESSAGE_COLOR);
    Exit;
  end;
end;
