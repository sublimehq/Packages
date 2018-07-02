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
