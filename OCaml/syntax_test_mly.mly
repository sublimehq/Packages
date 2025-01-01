/* SYNTAX TEST "Packages/OCaml/OCamlyacc.sublime-syntax" */
/*  This is a comment
 *  at the beginning of the file
/* ^ comment */
 */

%{
open Support.Error
/* ^ meta.header.ocamlyacc meta.module.open.ocaml */
%}

/*
 * Merge Conflict Marker Tests
 */

<<<<<<< HEAD
/* <- markup.conflict.begin.diff3 punctuation.section.conflict.diff3 */
/*^^^^^ markup.conflict.begin.diff3 punctuation.section.conflict.diff3 */
/*     ^ markup.conflict.begin.diff3 - entity - punctuation */
/*      ^^^^ markup.conflict.begin.diff3 entity.name.section.conflict.diff3 */
/*          ^ markup.conflict.begin.diff3 - entity - punctuation */

=======
/* <- markup.conflict.separator.diff3 punctuation.section.conflict.diff3 */
/*^^^^^ markup.conflict.separator.diff3 punctuation.section.conflict.diff3 */
/*     ^ markup.conflict.separator.diff3 - punctuation */

>>>>>>> master
/* <- markup.conflict.end.diff3 punctuation.section.conflict.diff3 */
/*^^^^^ markup.conflict.end.diff3 punctuation.section.conflict.diff3 */
/*     ^ markup.conflict.end.diff3 - entity - punctuation */
/*      ^^^^^^ markup.conflict.end.diff3 entity.name.section.conflict.diff3 */
/*            ^ markup.conflict.end.diff3 - entity - punctuation */

