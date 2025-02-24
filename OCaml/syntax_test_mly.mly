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
/* <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*     ^ meta.block.conflict.begin.diff - entity - punctuation */
/*      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff */
/*          ^ meta.block.conflict.begin.diff - entity - punctuation */

=======
/* <- meta.block.conflict.separator.diff punctuation.section.block.diff */
/*^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff */
/*     ^ meta.block.conflict.separator.diff - punctuation */

>>>>>>> master
/* <- meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*     ^ meta.block.conflict.end.diff - entity - punctuation */
/*      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff */
/*            ^ meta.block.conflict.end.diff - entity - punctuation */


/*********************************
<<<<<<< HEAD
/* <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*     ^ meta.block.conflict.begin.diff - entity - punctuation */
/*      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff */
/*          ^ meta.block.conflict.begin.diff - entity - punctuation */

=======
/* <- meta.block.conflict.separator.diff punctuation.section.block.diff */
/*^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff */
/*     ^ meta.block.conflict.separator.diff - punctuation */

>>>>>>> master
/* <- meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*     ^ meta.block.conflict.end.diff - entity - punctuation */
/*      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff */
/*            ^ meta.block.conflict.end.diff - entity - punctuation */
**********************************/

"begin ====================

<<<<<<< HEAD
/* <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff */
/*     ^ meta.block.conflict.begin.diff - entity - punctuation */
/*      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff */
/*          ^ meta.block.conflict.begin.diff - entity - punctuation */

=======
/* <- meta.block.conflict.separator.diff punctuation.section.block.diff */
/*^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff */
/*     ^ meta.block.conflict.separator.diff - punctuation */

>>>>>>> master
/* <- meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff */
/*     ^ meta.block.conflict.end.diff - entity - punctuation */
/*      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff */
/*            ^ meta.block.conflict.end.diff - entity - punctuation */

end ======================"