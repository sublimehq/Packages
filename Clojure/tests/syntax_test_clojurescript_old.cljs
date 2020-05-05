; SYNTAX TEST "Packages/Clojure/ClojureScript.sublime-syntax"

  (+ 3 3)
; ^ punctuation.section.parens.begin.clojure
;  ^ variable.function.clojure
;    ^ constant.numeric
;      ^ constant.numeric
;       ^ punctuation.section.parens.end.clojure

  (/ 10 3)
; ^ punctuation.section.parens.begin.clojure
;  ^ variable.function.clojure
;    ^^ constant.numeric
;       ^ constant.numeric
;        ^ punctuation.section.parens.end.clojure

  (/ 10 3.0)
; ^ punctuation.section.parens.begin.clojure
;  ^ variable.function.clojure
;    ^^ constant.numeric
;       ^^^ constant.numeric
;          ^ punctuation.section.parens.end.clojure

  (+ 1 2 3 4 5 6)
; ^ punctuation.section.parens.begin.clojure
;  ^ variable.function.clojure
;    ^ constant.numeric
;              ^ constant.numeric
;               ^ punctuation.section.parens.end.clojure

  (defn square [x] (* x x))
; ^ punctuation.section.parens.begin.clojure
;  ^^^^ storage.modifier.def.clojure
;      ^- storage
;       ^^^^^^ entity.name.function.clojure
;              ^ punctuation.section.brackets.begin.clojure
;                ^ punctuation.section.brackets.end.clojure
;                  ^ punctuation.section.parens.begin.clojure
;                   ^ variable.function.clojure
;                        ^^ punctuation.section.parens.end.clojure

  (square 10) ;; test
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^^ variable.function.clojure
;         ^^ constant.numeric
;           ^ punctuation.section.parens.end.clojure
;             ^^ comment.line.clojure punctuation.definition.comment
;               ^^^^^ comment.line.clojure

  (def testfunc (fn [] "Hello world"))
; ^ punctuation.section.parens.begin.clojure
;  ^^^ storage.modifier.def.clojure
;      ^^^^^^^^ entity.name.function.clojure
;               ^ punctuation.section.parens.begin.clojure
;                ^^ storage.modifier.fn.clojure
;                   ^ punctuation.section.brackets.begin.clojure
;                    ^ punctuation.section.brackets.end.clojure
;                      ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
;                      ^^^^^^^^^^^^^ string.quoted.double.clojure
;                                  ^ string.quoted.double.clojure punctuation.definition.string.end.clojure
;                                   ^- string.quoted.double.clojure
;                                   ^^ punctuation.section.parens.end.clojure

  (def hello1 (fn [] #"Hello world"))
;                     ^ punctuation.definition.string.begin.clojure
;                     ^^^^^^^^^^^^^ string.regexp.clojure
;                                 ^ punctuation.definition.string.end.clojure
;                                  ^- string.regexp.clojure
;                                  ^^ punctuation.section.parens.end.clojure

  (def hello2 (fn [] #"Hello world\\"))
;                     ^ punctuation.definition.string.begin.clojure
;                     ^^^^^^^^^^^^^^^ string.regexp.clojure
;                                 ^^ constant.character.escape.regexp
;                                    ^- string.regexp.clojure
;                                   ^ punctuation.definition.string.end.clojure
;                                    ^^ punctuation.section.parens.end.clojure
;

  (def hello (fn [] #"{2}Hello*?* world\"{2} foobar*"))
;                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.clojure
;                    ^ punctuation.definition.string.begin.clojure
;                                      ^^ constant.character.escape.regexp - punctuation.definition.string.end.clojure
;                                                   ^ punctuation.definition.string.end.clojure
;                                                    ^- string.regexp.clojure
;                                                    ^^ punctuation.section.parens.end.clojure
;                        ^^^^^ meta.literal.regexp
;                                           ^^^^^^^ meta.literal.regexp
;                             ^^ keyword.operator.quantifier.regexp
;                               ^ invalid.illegal.unexpected-quantifier.regexp
;                                        ^^ keyword.operator.quantifier.regexp
;                                                  ^ keyword.operator.quantifier.regexp
;

  (def hello (fn [] #"(?=unclosed_paren"))
;                    ^^^^^^^^^^^^^^^^^^^ string.regexp.clojure
;                    ^ punctuation.definition.string.begin.clojure
;                     ^ meta.group.regexp keyword.control.group.regexp
;                      ^^ meta.group.regexp constant.other.assertion.regexp
;                        ^^^^^^^^^^^^^^ meta.group.regexp meta.literal.regexp
;                                      ^ punctuation.definition.string.end.clojure
;                                       ^- string.regexp.clojure
;                                       ^^ punctuation.section.parens.end.clojure
