(* SYNTAX TEST "Packages/OCaml/OCaml.sublime-syntax" *)

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


(* Integers *)

    123_456_789_0n
(*  ^^^^^^^^^^^^^^ constant.numeric.integer.decimal *)
(*               ^ storage.type.numeric *)

    0
(*  ^ constant.numeric.integer.decimal *)

    123 .foo
(*  ^^^ constant.numeric.integer.decimal *)
(*     ^^^^^^ - constant *)

    +123  + 123
(*  ^ keyword.operator *)
(*   ^^^ constant.numeric.integer.decimal - keyword *)
(*        ^ keyword.operator *)
(*          ^^^ constant.numeric.integer.decimal - keyword *)

    -123
(*  ^^^^ constant.numeric.integer.decimal - keyword *)
(*  ^ punctuation.definition.numeric.sign *)

    0123456789
(*  ^^^^^^^^^^ constant.numeric.integer.decimal *)

    123xyz
(*  ^^^^^^ invalid.illegal.numeric *)

    0b0110_1001_1001_0110n 0b_10_01
(*  ^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.binary *)
(*  ^^ punctuation.definition.numeric.base *)
(*                       ^ storage.type.numeric *)
(*                         ^^^^^^^^ constant.numeric.integer.binary *)
(*                         ^^ punctuation.definition.numeric.base *)
(*                           ^ invalid.illegal.numeric *)

    0o0123_4567n 0O_127
(*  ^^^^^^^^^^^^ constant.numeric.integer.octal *)
(*  ^^ punctuation.definition.numeric *)
(*             ^ storage.type.numeric *)
(*               ^^^^^^ constant.numeric.integer.octal *)
(*               ^^ punctuation.definition.numeric *)
(*                 ^ invalid.illegal.numeric *)

    0x01_23_45_67_89_ab_CD_efn 0X_01l
(*  ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal *)
(*  ^^ punctuation.definition.numeric.base *)
(*                           ^ storage.type.numeric *)
(*                             ^^^^^^ constant.numeric.integer.hexadecimal *)
(*                             ^^ punctuation.definition.numeric.base *)
(*                               ^ invalid.illegal.numeric *)
(*                                  ^ storage.type.numeric *)

    0b
(*  ^^ constant.numeric.integer.binary punctuation.definition.numeric.base *)

    0B0 0O0 0X0
(*  ^^^ constant.numeric.integer.binary *)
(*      ^^^ constant.numeric.integer.octal *)
(*          ^^^ constant.numeric.integer.hexadecimal *)

    0xa. 0xa.b  0xa.ep1 0xa.ep-_1
(*  ^^^^ constant.numeric.float.hexadecimal *)
(*  ^^ punctuation.definition.numeric.base *)
(*     ^ punctuation.separator.decimal *)
(*       ^^^^^ constant.numeric.float.hexadecimal *)
(*       ^^ punctuation.definition.numeric.base *)
(*          ^ punctuation.separator.decimal *)
(*              ^^^^^^^ constant.numeric.float.hexadecimal *)
(*              ^^ punctuation.definition.numeric.base *)
(*                 ^ punctuation.separator.decimal *)
(*                      ^^^^^^^^^ constant.numeric.float.hexadecimal *)
(*                      ^^ punctuation.definition.numeric.base *)
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
(*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.float.decimal *)

    12345e6_7_8
(*  ^^^^^^^^^^^ constant.numeric.float.decimal *)

    123.456e+789
(*  ^^^^^^^^^^^^ constant.numeric.float.decimal *)
(*     ^ punctuation.separator.decimal *)
