// SYNTAX TEST "Packages/Scala/Scala.sublime-syntax"
// <- source.scala comment.line.double-slash.scala



//[ MERGE CONFLICT MARKERS ]/////////////////////////////////////////////////



<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    theirs
======= branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    theirs
|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    base
||||||| branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    base
>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
    after



//[ multiline ]



"""
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    theirs
======= branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    theirs
|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    base
||||||| branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    base
>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
    after
"""



//[ multiline f-string ]



f"""
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    theirs
======= branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    theirs
|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    base
||||||| branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    base
>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
    after
"""



//[ interpolated multiline string ]



s"""
<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
 // <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation
    ours
=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    theirs
======= branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    theirs
|||||||
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation
    base
||||||| branchname
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
 // <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^^^^^^^^^^^ meta.block.conflict.separator.diff - punctuation
    base
>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
 // <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation
    after
"""
