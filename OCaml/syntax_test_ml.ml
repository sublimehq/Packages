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
(*    ^ constant.numeric.value.ocaml *)
(*     ^ punctuation.separator.decimal *)
(*       ^^^^^ meta.number.float.hexadecimal.ocaml *)
(*       ^^ constant.numeric.base.ocaml *)
(*         ^ constant.numeric.value.ocaml *)
(*          ^ punctuation.separator.decimal *)
(*           ^ constant.numeric.value.ocaml *)
(*              ^^^^^^^ meta.number.float.hexadecimal.ocaml *)
(*              ^^ constant.numeric.base.ocaml *)
(*                ^ constant.numeric.value.ocaml *)
(*                 ^ punctuation.separator.decimal *)
(*                  ^ constant.numeric.value.ocaml *)
(*                   ^^ constant.numeric.value.exponent.ocaml *)
(*                      ^^^^^^^^^ meta.number.float.hexadecimal.ocaml *)
(*                      ^^ constant.numeric.base.ocaml *)
(*                        ^ constant.numeric.value.ocaml *)
(*                         ^ punctuation.separator.decimal *)
(*                          ^ constant.numeric.value.ocaml *)
(*                           ^^ constant.numeric.value.exponent.ocaml *)
(*                             ^ invalid.illegal.numeric *)
(*                              ^ constant.numeric.value.exponent.ocaml *)

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
(*  ^^^^^ constant.numeric.value.ocaml *)
(*       ^^^^^^ constant.numeric.value.exponent.ocaml *)

    123.456e+789
(*  ^^^^^^^^^^^^ meta.number.float.decimal.ocaml *)
(*  ^^^ constant.numeric.value.ocaml *)
(*     ^ punctuation.separator.decimal *)
(*      ^^^ constant.numeric.value.ocaml *)
(*         ^^^^^ constant.numeric.value.exponent.ocaml *)
