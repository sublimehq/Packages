(* SYNTAX TEST "Packages/OCaml/OCaml.sublime-syntax" *)

(* Merge Conflict Marker Tests *)

<<<<<<< HEAD
(* <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff *)
(*^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff *)
(*     ^ meta.block.conflict.begin.diff - entity - punctuation *)
(*      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff *)
(*          ^ meta.block.conflict.begin.diff - entity - punctuation *)

=======
(* <- meta.block.conflict.separator.diff punctuation.section.block.diff *)
(*^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff *)
(*     ^ meta.block.conflict.separator.diff - punctuation *)

>>>>>>> master
(* <- meta.block.conflict.end.diff punctuation.section.block.end.diff *)
(*^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff *)
(*     ^ meta.block.conflict.end.diff - entity - punctuation *)
(*      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff *)
(*            ^ meta.block.conflict.end.diff - entity - punctuation *)

(** CONFLICT IN BLOCK COMMENT
<<<<<<< HEAD
(* <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff *)
(*^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff *)
(*     ^ meta.block.conflict.begin.diff - entity - punctuation *)
(*      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff *)
(*          ^ meta.block.conflict.begin.diff - entity - punctuation *)

=======
(* <- meta.block.conflict.separator.diff punctuation.section.block.diff *)
(*^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff *)
(*     ^ meta.block.conflict.separator.diff - punctuation *)

>>>>>>> master
(* <- meta.block.conflict.end.diff punctuation.section.block.end.diff *)
(*^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff *)
(*     ^ meta.block.conflict.end.diff - entity - punctuation *)
(*      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff *)
(*            ^ meta.block.conflict.end.diff - entity - punctuation *)
** CONFLICT IN BLOCK COMMENT*)

(* Function Definitions *)

let foo = function
(* <- meta.function.ocaml keyword.other.function-definition.ocaml *)
(*^^^^^^^ meta.function.ocaml *)
(*  ^^^ entity.name.function.ocaml *)
(*      ^ keyword.operator.ocaml *)
(*        ^^^^^^^^ keyword.control.match-definition.ocaml *)
    | [] -> None
(* ^^^^^^^^ meta.pattern-match.ocaml *)
(*  ^ keyword.control.match-definition.ocaml *)
(*    ^^ constant.language.pseudo-variable.ocaml *)
(*       ^^ punctuation.separator.match-definition.ocaml *)
(*          ^^^^ entity.name.type.variant.ocaml *)
    | _  -> Some 23

let bar = function
(* <- meta.function.ocaml keyword.other.function-definition.ocaml *)
(*^^^^^^^ meta.function.ocaml *)
(*  ^^^ entity.name.function.ocaml *)
(*      ^ keyword.operator.ocaml *)
(*        ^^^^^^^^ keyword.control.match-definition.ocaml *)
    | [] -> None
(* ^^^^^^^^ meta.pattern-match.ocaml *)
(*  ^ keyword.control.match-definition.ocaml *)
(*    ^^ constant.language.pseudo-variable.ocaml *)
(*       ^^ punctuation.separator.match-definition.ocaml *)
(*          ^^^^ entity.name.type.variant.ocaml *)
    | _  -> Some 42
(*  ^^^^^^^ meta.pattern-match.ocaml *)
(*  ^ keyword.control.match-definition.ocaml *)
(*    ^ constant.language.universal-match.ocaml *)
(*       ^^ punctuation.separator.match-definition.ocaml *)
(*          ^^^^ entity.name.type.variant.ocaml *)
(*               ^^ constant.numeric.value.ocaml *)

  let open Core.Std
(*^^^ keyword.other.ocaml *)
(*    ^^^^ keyword.control.import.ocaml *)
  and open Core.Std in
(*^^^ keyword.other.ocaml *)
(*    ^^^^ keyword.control.import.ocaml *)
(*                  ^^ keyword.other.ocaml *)

  let open s =
(*^^^ keyword.other.function-definition.ocaml *)
(*    ^^^^ entity.name.function.ocaml *)
(*^^^^^^^^^^^^ meta.function.ocaml *)
  and open s =
(*^^^ keyword.other.function-definition.ocaml *)
(*    ^^^^ entity.name.function.ocaml *)
(*^^^^^^^^^^^^ meta.function.ocaml *)

  let open = 5
(*^^^ keyword.other.ocaml *)
(*    ^^^^ variable.other.constant.ocaml *)

  and open = 5
(*^^^ keyword.other.ocaml *)
(*    ^^^^ variable.other.constant.ocaml *)

(* Module Signatures *)

  val foo   : 'a -> 'a
(*^^^^^^^^^^^^^^^^^^^^^ meta.module.signature.val.ocaml *)
(*^^^ keyword.other.ocaml *)
(*    ^^^ entity.name.type.value-signature.ocaml *)
(*          ^ punctuation.separator.type-constraint.ocaml *)
(*            ^^ storage.type.ocaml *)
(*               ^^ punctuation.separator.function-return.ocaml *)
(*                  ^^ storage.type.ocaml *)

  val (<*<) : 'a -> 'a
(*^^^^^^^^^^^^^^^^^^^^^ meta.module.signature.val.ocaml *)
(*^^^ keyword.other.ocaml *)
(*    ^ punctuation.section.parens.begin.ocaml *)
(*     ^^^ entity.name.type.value-signature.ocaml *)
(*        ^ punctuation.section.parens.end.ocaml *)
(*          ^ punctuation.separator.type-constraint.ocaml *)
(*            ^^ storage.type.ocaml *)
(*               ^^ punctuation.separator.function-return.ocaml *)
(*                  ^^ storage.type.ocaml *)

  val bar   : 'a -> 'a
(*^^^^^^^^^^^^^^^^^^^^^ meta.module.signature.val.ocaml *)
(*^^^ keyword.other.ocaml *)
(*    ^^^ entity.name.type.value-signature.ocaml *)
(*          ^ punctuation.separator.type-constraint.ocaml *)
(*            ^^ storage.type.ocaml *)
(*               ^^ punctuation.separator.function-return.ocaml *)
(*                  ^^ storage.type.ocaml *)


(* Integers *)

    123_456_789_0n
(*  ^^^^^^^^^^^^^^ meta.number.integer.decimal.ocaml *)
(*  ^^^^^^^^^^^^^ constant.numeric.value.ocaml *)
(*               ^ constant.numeric.suffix.ocaml *)

    0
(*  ^ meta.number.integer.decimal.ocaml constant.numeric.value.ocaml *)

    123 .foo
(*  ^^^ meta.number.integer.decimal.ocaml constant.numeric.value.ocaml *)
(*     ^^^^^^ - meta.number *)

    +123  + 123
(*  ^ keyword.operator *)
(*   ^^^ meta.number.integer.decimal.ocaml constant.numeric.value.ocaml - keyword.ocaml *)
(*        ^ keyword.operator *)
(*          ^^^ meta.number.integer.decimal.ocaml constant.numeric.value.ocaml - keyword.ocaml *)

    -123
(*  ^^^^ meta.number.integer.decimal.ocaml - keyword.ocaml *)
(*  ^ keyword.operator.arithmetic.ocaml *)
(*   ^^^ constant.numeric.value.ocaml *)

    0123456789
(*  ^^^^^^^^^^ meta.number.integer.decimal.ocaml constant.numeric.value.ocaml *)

    123xyz
(*  ^^^^^^ invalid.illegal.numeric *)

    0b0110_1001_1001_0110n 0b_10_01
(*  ^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary.ocaml *)
(*  ^^ constant.numeric.base.ocaml *)
(*    ^^^^^^^^^^^^^^^^^^^ constant.numeric.value.ocaml *)
(*                       ^ constant.numeric.suffix.ocaml *)
(*                         ^^^^^^^^ meta.number.integer.binary.ocaml *)
(*                         ^^ constant.numeric.base.ocaml *)
(*                           ^ invalid.illegal.numeric *)
(*                            ^^^^^ constant.numeric.value.ocaml *)

    0o0123_4567n 0O_127
(*  ^^^^^^^^^^^^ meta.number.integer.octal.ocaml *)
(*  ^^ constant.numeric.base.ocaml *)
(*    ^^^^^^^^^ constant.numeric.value.ocaml *)
(*             ^ constant.numeric.suffix.ocaml *)
(*               ^^^^^^ meta.number.integer.octal.ocaml *)
(*               ^^ constant.numeric.base.ocaml *)
(*                 ^ invalid.illegal.numeric *)
(*                  ^^^ constant.numeric.value.ocaml *)

    0x01_23_45_67_89_ab_CD_efn 0X_01l
(*  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.ocaml *)
(*  ^^ constant.numeric.base.ocaml *)
(*    ^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.value.ocaml *)
(*                           ^ constant.numeric.suffix.ocaml *)
(*                             ^^^^^^ meta.number.integer.hexadecimal.ocaml *)
(*                             ^^ constant.numeric.base.ocaml *)
(*                               ^ invalid.illegal.numeric *)
(*                                ^^ constant.numeric.value.ocaml *)
(*                                  ^ constant.numeric.suffix.ocaml *)

    0b
(*  ^^ meta.number.integer.binary.ocaml constant.numeric.base.ocaml *)

    0B0 0O0 0X0
(*  ^^^ meta.number.integer.binary.ocaml *)
(*  ^^ constant.numeric.base.ocaml *)
(*    ^ constant.numeric.value.ocaml *)
(*      ^^^ meta.number.integer.octal.ocaml *)
(*      ^^ constant.numeric.base.ocaml *)
(*          ^^^ meta.number.integer.hexadecimal.ocaml *)
(*          ^^ constant.numeric.base.ocaml *)
(*            ^ constant.numeric.value.ocaml *)

    0xa. 0xa.b  0xa.ep1 0xa.ep-_1
(*  ^^^^ meta.number.float.hexadecimal.ocaml *)
(*  ^^ constant.numeric.base.ocaml *)
(*    ^^ constant.numeric.value.ocaml *)
(*     ^ punctuation.separator.decimal *)
(*       ^^^^^ meta.number.float.hexadecimal.ocaml *)
(*       ^^ constant.numeric.base.ocaml *)
(*         ^^^ constant.numeric.value.ocaml *)
(*          ^ punctuation.separator.decimal *)
(*              ^^^^^^^ meta.number.float.hexadecimal.ocaml *)
(*              ^^ constant.numeric.base.ocaml *)
(*                ^^^^^ constant.numeric.value.ocaml *)
(*                 ^ punctuation.separator.decimal *)
(*                      ^^^^^^^^^ meta.number.float.hexadecimal.ocaml *)
(*                      ^^ constant.numeric.base.ocaml *)
(*                        ^^^^^^^ constant.numeric.value.ocaml *)
(*                         ^ punctuation.separator.decimal *)
(*                             ^ invalid.illegal.numeric *)

    0b1.foo
(*  ^^^^^^^ invalid.illegal.numeric *)

    0b1.0
(*  ^^^^^ invalid.illegal.numeric *)

    0b123
(*  ^^^^^ invalid.illegal.numeric *)


(* Floats *)

    1_234_567_890.123_456_789_0
(*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.float.decimal.ocaml *)
(*  ^^^^^^^^^^^^^ constant.numeric.value.ocaml *)
(*               ^ punctuation.separator.decimal.ocaml *)
(*                ^^^^^^^^^^^^^ constant.numeric.value.ocaml *)

    12345e6_7_8
(*  ^^^^^^^^^^^ meta.number.float.decimal.ocaml *)
(*  ^^^^^^^^^^^ constant.numeric.value.ocaml *)

    123.456e+789
(*  ^^^^^^^^^^^^ meta.number.float.decimal.ocaml *)
(*  ^^^^^^^^^^^^ constant.numeric.value.ocaml *)
(*     ^ punctuation.separator.decimal *)

    "string"
(*  ^^^^^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*  ^ punctuation.definition.string.begin.ocaml *)
(*         ^ punctuation.definition.string.end.ocaml *)

    "string\""
(*  ^^^^^^^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*  ^ punctuation.definition.string.begin.ocaml *)
(*         ^^ constant.character.escape.ocaml *)
(*           ^ punctuation.definition.string.end.ocaml *)

    "string\\"
(*  ^^^^^^^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*  ^ punctuation.definition.string.begin.ocaml *)
(*         ^^ constant.character.escape.ocaml *)
(*           ^ punctuation.definition.string.end.ocaml *)

    "string\
(*         ^ punctuation.separator.continuation.line.ocaml *)
    m"
(* <- meta.string.ocaml string.quoted.double.ocaml *)
(*^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*   ^ punctuation.definition.string.end.ocaml *)

    "\b \n \r \t \' \" \\ \a"
(*  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*  ^ punctuation.definition.string.begin.ocaml *)
(*   ^^ constant.character.escape.ocaml *)
(*     ^ - constant.character.escape *)
(*      ^^ constant.character.escape.ocaml *)
(*        ^ - constant.character.escape *)
(*         ^^ constant.character.escape.ocaml *)
(*           ^ - constant.character.escape *)
(*            ^^ constant.character.escape.ocaml *)
(*              ^ - constant.character.escape *)
(*               ^^ constant.character.escape.ocaml *)
(*                 ^ - constant.character.escape *)
(*                  ^^ constant.character.escape.ocaml *)
(*                    ^ - constant.character.escape *)
(*                     ^^ constant.character.escape.ocaml *)
(*                       ^ - constant.character.escape *)
(*                        ^^ invalid.illegal.character.escape *)
(*                          ^ punctuation.definition.string.end.ocaml *)

    "\x \x1 \xAF \xAFG \xAG"
(*  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*   ^^ invalid.illegal.character.escape *)
(*     ^ - constant.character.escape *)
(*      ^^ invalid.illegal.character.escape *)
(*         ^ - constant.character.escape *)
(*          ^^^^ constant.character.escape.hexadecimal.ocaml *)
(*              ^ - constant.character.escape *)
(*               ^^^^ constant.character.escape.hexadecimal.ocaml *)
(*                    ^ - constant.character.escape *)
(*                     ^^ invalid.illegal.character.escape *)

    "\0 \01 \012 \123 \234 \345"
(*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.ocaml string.quoted.double.ocaml *)
(*   ^^ invalid.illegal.character.escape *)
(*     ^ - constant.character.escape *)
(*      ^^ invalid.illegal.character.escape *)
(*         ^ - constant.character.escape *)
(*          ^^^^ constant.character.escape.decimal.ocaml *)
(*              ^ - constant.character.escape *)
(*               ^^^^ constant.character.escape.decimal.ocaml *)
(*                   ^ - constant.character.escape *)
(*                    ^^^^ constant.character.escape.decimal.ocaml *)
(*                        ^ - constant.character.escape *)
(*                         ^^ constant.character.escape.regexp.ocaml *)
(*                           ^^^ - constant.character.escape *)

    {}|
(*  ^^^ - meta.string - string *)

    {||}
(*  ^^^^ meta.string.ocaml string.quoted.other.ocaml *)
(*  ^^ punctuation.definition.string.begin.ocaml *)
(*    ^^ punctuation.definition.string.end.ocaml *)

    {|}|}
(*  ^^^^^ meta.string.ocaml string.quoted.other.ocaml *)
(*  ^^ punctuation.definition.string.begin.ocaml *)
(*     ^^ punctuation.definition.string.end.ocaml *)

    {|string|}
(*  ^^^^^^^^^^ meta.string.ocaml string.quoted.other.ocaml *)
(*  ^^ punctuation.definition.string.begin.ocaml *)
(*          ^^ punctuation.definition.string.end.ocaml *)

    {quot|string \ " |quot}
(*  ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.ocaml string.quoted.other.ocaml *)
(*  ^^^^^^ punctuation.definition.string.begin.ocaml *)
(*        ^^^^^^^^^^^ - constant.character.escape - invalid *)
(*                   ^^^^^^ punctuation.definition.string.end.ocaml *)
