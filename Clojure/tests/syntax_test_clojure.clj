; SYNTAX TEST "Packages/Clojure/Clojure.sublime-syntax"


; # Comments and whitespace

  ;blah
; ^ comment.line.clojure punctuation.definition.comment
;  ^^^^ comment.line.clojure

  ;;; blah
; ^^^ comment.line.clojure punctuation.definition.comment
;    ^^^^^ comment.line.clojure

  blah;blah;blah
; ^^^^- comment.line.clojure
;     ^ comment.line.clojure

  blah,blah, blah
;     ^ comment.punctuation.comma.clojure
;      ^- comment.punctuation.comma.clojure
;          ^ comment.punctuation.comma.clojure
;           ^- comment.punctuation.comma.clojure



; # Constants

  true false nil
; ^^^^ constant.language.clojure
;     ^- constant.language.clojure
;      ^^^^^ constant.language.clojure
;           ^- constant.language.clojure
;            ^^^ constant.language.clojure

; ## Breaks

  true,false,nil
; ^^^^ constant.language.clojure
;     ^ comment.punctuation.comma.clojure
  true;false;nil
; ^^^^ constant.language.clojure
;     ^ comment.line.clojure punctuation.definition.comment

; ## Unaffected

  'nil (true) (nil)
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^ constant.language.clojure
;      ^ punctuation.section.parens.begin.clojure
;       ^^^^ constant.language.clojure
;           ^ punctuation.section.parens.end.clojure

; ## No highlighting

  nill nil- -nil nil?
; ^^^^^^^^^^^^^^^^^^^- constant.language.clojure



; # Numbers

  1234 1234N +1234 +1234N -1234 -1234N
; ^^^^ constant.numeric.clojure
;     ^-constant.numeric.clojure
;      ^^^^^ constant.numeric.clojure
;            ^^^^^ constant.numeric.clojure
;                  ^^^^^^ constant.numeric.clojure
;                         ^^^^^ constant.numeric.clojure
;                               ^^^^^^ constant.numeric.clojure
  0x1234af 0x1234afN 0X1234AF 0X1234AFN
; ^^^^^^^^ constant.numeric.clojure
;         ^- constant.numeric.clojure
;          ^^^^^^^^^ constant.numeric.clojure
;                    ^^^^^^^^ constant.numeric.clojure
;                             ^^^^^^^^^ constant.numeric.clojure
  +0x1234af +0x1234afN +0X1234AF +0X1234AFN
; ^^^^^^^^^ constant.numeric.clojure
;          ^- constant.numeric.clojure
;           ^^^^^^^^^^ constant.numeric.clojure
;                      ^^^^^^^^^ constant.numeric.clojure
;                                ^^^^^^^^^^ constant.numeric.clojure
  -0x1234af -0x1234afN -0X1234AF -0X1234AFN
; ^^^^^^^^^ constant.numeric.clojure
;          ^- constant.numeric.clojure
;           ^^^^^^^^^^ constant.numeric.clojure
;                      ^^^^^^^^^ constant.numeric.clojure
;                                ^^^^^^^^^^ constant.numeric.clojure
  2r1010 16r1234af 32r1234az 2R1010 16R1234AF 32R1234AZ
; ^^^^^^ constant.numeric.clojure
;       ^- constant.numeric.clojure
;        ^^^^^^^^^ constant.numeric.clojure
;                  ^^^^^^^^^ constant.numeric.clojure
;                            ^^^^^^ constant.numeric.clojure
;                                   ^^^^^^^^^ constant.numeric.clojure
;                                             ^^^^^^^^^ constant.numeric.clojure
  +2r1010 +16r1234af +32r1234az +2R1010 +16R1234AF +32R1234AZ
; ^^^^^^^ constant.numeric.clojure
;        ^- constant.numeric.clojure
;         ^^^^^^^^^^ constant.numeric.clojure
;                    ^^^^^^^^^^ constant.numeric.clojure
;                               ^^^^^^^ constant.numeric.clojure
;                                       ^^^^^^^^^^ constant.numeric.clojure
;                                                  ^^^^^^^^^^ constant.numeric.clojure
  -2r1010 -16r1234af -32r1234az -2R1010 -16R1234AF -32R1234AZ
; ^^^^^^^ constant.numeric.clojure
;        ^- constant.numeric.clojure
;         ^^^^^^^^^^ constant.numeric.clojure
;                    ^^^^^^^^^^ constant.numeric.clojure
;                               ^^^^^^^ constant.numeric.clojure
;                                       ^^^^^^^^^^ constant.numeric.clojure
;                                                  ^^^^^^^^^^ constant.numeric.clojure
  0/10 10/20 30/0
; ^^^^ constant.numeric.clojure
;     ^- constant.numeric.clojure
;      ^^^^^ constant.numeric.clojure
;            ^^^^ constant.numeric.clojure
  +0/10 +10/20 +30/0
; ^^^^^ constant.numeric.clojure
;      ^- constant.numeric.clojure
;       ^^^^^^ constant.numeric.clojure
;              ^^^^^ constant.numeric.clojure
  -0/10 -10/20 -30/0
; ^^^^^ constant.numeric.clojure
;      ^- constant.numeric.clojure
;       ^^^^^^ constant.numeric.clojure
;              ^^^^^ constant.numeric.clojure
  1234M 1234.0M 1234.1234M
; ^^^^^ constant.numeric.clojure
;      ^- constant.numeric.clojure
;       ^^^^^^^ constant.numeric.clojure
;               ^^^^^^^^^^ constant.numeric.clojure
  +1234M +1234.0M +1234.1234M
; ^^^^^^ constant.numeric.clojure
;       ^- constant.numeric.clojure
;        ^^^^^^^^ constant.numeric.clojure
;                 ^^^^^^^^^^^ constant.numeric.clojure
  -1234M -1234.0M -1234.1234M
; ^^^^^^ constant.numeric.clojure
;       ^- constant.numeric.clojure
;        ^^^^^^^^ constant.numeric.clojure
;                 ^^^^^^^^^^^ constant.numeric.clojure
  1234e10 1234E10M 1234.1234e10M 1234.1234E10M
; ^^^^^^^ constant.numeric.clojure
;        ^- constant.numeric.clojure
;         ^^^^^^^^ constant.numeric.clojure
;                  ^^^^^^^^^^^^^ constant.numeric.clojure
;                                ^^^^^^^^^^^^^ constant.numeric.clojure
  +1234e10 +1234E10M +1234.1234e10M +1234.1234E10M
; ^^^^^^^^ constant.numeric.clojure
;         ^- constant.numeric.clojure
;          ^^^^^^^^^ constant.numeric.clojure
;                    ^^^^^^^^^^^^^^ constant.numeric.clojure
;                                   ^^^^^^^^^^^^^^ constant.numeric.clojure
  -1234e10 -1234E10M -1234.1234e10M -1234.1234E10M
; ^^^^^^^^ constant.numeric.clojure
;         ^- constant.numeric.clojure
;          ^^^^^^^^^ constant.numeric.clojure
;                    ^^^^^^^^^^^^^^ constant.numeric.clojure
;                                   ^^^^^^^^^^^^^^ constant.numeric.clojure
  1234.1234e+10 1234.1234E+10 1234.1234e-10 1234.1234E-10
; ^^^^^^^^^^^^^ constant.numeric.clojure
;              ^- constant.numeric.clojure
;               ^^^^^^^^^^^^^ constant.numeric.clojure
;                             ^^^^^^^^^^^^^ constant.numeric.clojure
;                                           ^^^^^^^^^^^^^ constant.numeric.clojure
  +1234.1234e+10M +1234.1234E+10M +1234.1234e-10M +1234.1234E-10M
; ^^^^^^^^^^^^^^^ constant.numeric.clojure
;                ^- constant.numeric.clojure
;                 ^^^^^^^^^^^^^^^ constant.numeric.clojure
;                                 ^^^^^^^^^^^^^^^ constant.numeric.clojure
;                                                 ^^^^^^^^^^^^^^^ constant.numeric.clojure
  -1234.1234e+10M -1234.1234E+10M -1234.1234e-10M -1234.1234E-10M
; ^^^^^^^^^^^^^^^ constant.numeric.clojure
;                ^- constant.numeric.clojure
;                 ^^^^^^^^^^^^^^^ constant.numeric.clojure
;                                 ^^^^^^^^^^^^^^^ constant.numeric.clojure
;                                                 ^^^^^^^^^^^^^^^ constant.numeric.clojure

; ## Breaks

  10,20,30
; ^^ constant.numeric.clojure
;   ^ comment.punctuation.comma.clojure
;    ^^ constant.numeric.clojure
  10;20;30
; ^^ constant.numeric.clojure
;   ^ comment.line.clojure punctuation.definition.comment
  10'20'30
; ^^ constant.numeric.clojure
;   ^ constant.other.symbol.reader-macro.clojure
  10`20`30
; ^^ constant.numeric.clojure
;   ^ constant.other.symbol.reader-macro.clojure
  10#20#30
; ^^ constant.numeric.clojure
;   ^ constant.other.symbol.reader-macro.clojure

; ## Unaffected

  '1234 '+1234 '-1234
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^ constant.numeric.clojure
  (10 20 30) [10 20 30]
; ^ punctuation.section.parens.begin.clojure
;  ^^ constant.numeric.clojure
;            ^ punctuation.section.brackets.begin.clojure
;             ^^ constant.numeric.clojure

; ## Invalid numbers

  01234 +01234 -01234 '01234
; ^^^^^ invalid.illegal.clojure
;      ^- invalid.illegal.clojure
;       ^^^^^^ invalid.illegal.clojure
;              ^^^^^^ invalid.illegal.clojure
;                     ^ constant.other.symbol.reader-macro.clojure
;                      ^^^^^ invalid.illegal.clojure
  01234N +01234N -01234N '01234N
; ^^^^^^ invalid.illegal.clojure
;       ^- invalid.illegal.clojure
;        ^^^^^^^ invalid.illegal.clojure
;                ^^^^^^^ invalid.illegal.clojure
;                        ^ constant.other.symbol.reader-macro.clojure
  10-20 10+20 1234n 1234m 1234. 1234.M
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- constant.numeric.clojure
  10.0/20 10/20.0 10/+20 10/-20
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- constant.numeric.clojure
  10:20:30
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- constant.numeric.clojure
  1r000
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- constant.numeric.clojure

; ## Ignore

  ; valid symbols
  .1234 .1234M
; ^^^^^^^^^^^^- constant.numeric.clojure



; # Symbols

  ! $ % & * - _ = + | < > . / ?
  ++ --
  blah
  blah/blah
  blah.blah
  blah.blah/blah
  blah.blah/blah.blah
  blah/blah/blah
  blah1000
  blah1000.blah1000
  *blah*
  blah'blah'
  blah'''blah'''
  blah:blah:blah
  blah#blah#
  blah///blah

; ## Breaks

  blah,blah,blah
;     ^ comment.punctuation.comma.clojure
  blah;blah;blah
;     ^ comment.line.clojure punctuation.definition.comment
  blah`blah
;     ^ constant.other.symbol.reader-macro.clojure
  blah~blah
;     ^ constant.other.symbol.reader-macro.clojure
  blah@blah
;     ^ variable.function.deref.clojure
  blah^blah
;     ^ constant.other.symbol.reader-macro.clojure
  blah\blah
;     ^^^^^ constant.character.clojure

; ## Unaffected

  'blah 'blah:blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^- constant.other.symbol.reader-macro.clojure
  [blah blah blah]

; ## Invalid

  //
  blah:
  blah::blah
  /blah
  blah/



; # Keywords

  :! :$ :% :& :* :- :_ := :+ :| :< :> :. :/ :?
; ^^ constant.language.keyword.clojure
;   ^- constant.language.keyword.clojure
;    ^^ constant.language.keyword.clojure
;       ^^ constant.language.keyword.clojure
;          ^^ constant.language.keyword.clojure
;             ^^ constant.language.keyword.clojure
;                ^^ constant.language.keyword.clojure
;                   ^^ constant.language.keyword.clojure
;                      ^^ constant.language.keyword.clojure
;                         ^^ constant.language.keyword.clojure
;                            ^^ constant.language.keyword.clojure
;                               ^^ constant.language.keyword.clojure
;                                  ^^ constant.language.keyword.clojure
;                                     ^^ constant.language.keyword.clojure
;                                        ^^ constant.language.keyword.clojure
;                                           ^^ constant.language.keyword.clojure
  :++ :--
; ^^^ constant.language.keyword.clojure
;    ^- constant.language.keyword.clojure
;     ^^^ constant.language.keyword.clojure
  :blah
; ^^^^^ constant.language.keyword.clojure
  :blah/blah
; ^^^^^^^^^^ constant.language.keyword.clojure
  :blah.blah
; ^^^^^^^^^^ constant.language.keyword.clojure
  :blah.blah/blah
; ^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  :blah.blah/blah.blah
; ^^^^^^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  :blah/blah/blah
; ^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  :blah1000
; ^^^^^^^^^ constant.language.keyword.clojure
  :blah1000.blah1000
; ^^^^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  :*blah*
; ^^^^^^^ constant.language.keyword.clojure
  :blah'blah'
; ^^^^^^^^^^^ constant.language.keyword.clojure
  :blah'''blah'''
; ^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  :blah:blah:blah
; ^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  :blah#blah#
; ^^^^^^^^^^^ constant.language.keyword.clojure
  ::blah///blah
; ^^^^^^^^^^^^^ constant.language.keyword.clojure
  ://blah
; ^^^^^^^ constant.language.keyword.clojure
  :///
; ^^^^ constant.language.keyword.clojure
  :/blah/blah
; ^^^^^^^^^^^ constant.language.keyword.clojure
  :blah//
; ^^^^^^^ constant.language.keyword.clojure

; ## These are valid, unlike symbols

  :' :# :### :10 :10.20
; ^^ constant.language.keyword.clojure
;   ^- constant.language.keyword.clojure
;    ^^ constant.language.keyword.clojure
;       ^^^^ constant.language.keyword.clojure
;            ^^^ constant.language.keyword.clojure
;                ^^^^^^ constant.language.keyword.clojure

; ## Breaks

  :,blah
; ^- constant.language.keyword.clojure
;  ^ comment.punctuation.comma.clojure
  :;blah
; ^- constant.language.keyword.clojure
;  ^ comment.line.clojure punctuation.definition.comment
  :blah,:blah,:blah
; ^^^^^ constant.language.keyword.clojure
;      ^ comment.punctuation.comma.clojure
;       ^^^^^ constant.language.keyword.clojure
  :blah;:blah;:blah
; ^^^^^ constant.language.keyword.clojure
;      ^ comment.line.clojure punctuation.definition.comment
  :blah`blah
; ^^^^^ constant.language.keyword.clojure
;      ^ constant.other.symbol.reader-macro.clojure
  :blah~blah
; ^^^^^ constant.language.keyword.clojure
  :blah@blah
; ^^^^^ constant.language.keyword.clojure
;      ^ variable.function.deref.clojure
  :blah^blah
; ^^^^^ constant.language.keyword.clojure
;      ^ constant.other.symbol.reader-macro.clojure
  :blah\blah
; ^^^^^ constant.language.keyword.clojure
;      ^^^^^ constant.character.clojure

; ## These are invalid, but I couldn't get the regex right

  :
; ^^- constant.language.keyword.clojure
  :::blah
; ^^^^^^^- constant.language.keyword.clojure
  ://
  :10/20
  :blah10/20
  :blah:
  ::blah:
  ::blah::blah
  :/blah
  ::blah/



; # Chars

  \0 \; \,
; ^^ constant.character.clojure
;   ^- constant.character.clojure
;    ^^ constant.character.clojure
;      ^- constant.character.clojure
;       ^^ constant.character.clojure
; ^^ constant.character.clojure
  \newline
; ^^^^^^^^ constant.character.clojure
  blah \c blah \c
;      ^^ constant.character.clojure
;        ^- constant.character.clojure
;              ^^ constant.character.clojure

; ## Invalid but highlight anyway

  \blah100
; ^^^^^^^^ constant.character.clojure

; ## Capture exactly one char

  \;;;;
; ^^ constant.character.clojure
;   ^^^ comment.line.clojure punctuation.definition.comment
  \,,
; ^^ constant.character.clojure
;   ^ comment.punctuation.comma.clojure
  \``blah
; ^^ constant.character.clojure
;   ^ constant.other.symbol.reader-macro.clojure
  \''blah
; ^^ constant.character.clojure
;   ^ constant.other.symbol.reader-macro.clojure
  \~~blah
; ^^ constant.character.clojure
;   ^ constant.other.symbol.reader-macro.clojure
  \@@blah
; ^^ constant.character.clojure
;   ^ variable.function.deref.clojure
  \~@~@blah
; ^^ constant.character.clojure
;   ^ variable.function.deref.clojure
  \##{}
; ^^ constant.character.clojure
;   ^^ punctuation.section.braces.begin.clojure
  \^^blah
; ^^ constant.character.clojure
;   ^ constant.other.symbol.reader-macro.clojure

; ## Breaks

  \a,\b,\c
; ^^ constant.character.clojure
;   ^ comment.punctuation.comma.clojure
;    ^^ constant.character.clojure
  \a;\b;\c
; ^^ constant.character.clojure
;   ^ comment.line.clojure punctuation.definition.comment

; ## Unaffected

  \c (\c) ( \c ) [\c] [ \c ]
; ^^ constant.character.clojure
;    ^ punctuation.section.parens.begin.clojure
;     ^^ constant.character.clojure
;       ^ punctuation.section.parens.end.clojure
;         ^ punctuation.section.parens.begin.clojure
;           ^^ constant.character.clojure
;             ^- constant.character.clojure
;              ^ punctuation.section.parens.end.clojure



; # Strings

  "blah"
; ^^^^^^ string.quoted.double.clojure
; ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
;      ^ string.quoted.double.clojure punctuation.definition.string.end.clojure

  "blah \" blah"
; ^^^^^^^^^^^^^^ string.quoted.double.clojure
; ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
;       ^^ string.quoted.double.clojure constant.character.escape.clojure
;         ^^^^^ string.quoted.double.clojure
;              ^ string.quoted.double.clojure punctuation.definition.string.end.clojure

  "
; ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
; ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.clojure
  blah () [] {} ::blah
; ^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.clojure
  "
; ^ string.quoted.double.clojure punctuation.definition.string.end.clojure

  "
; ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
  (unclosed paren ->
; ^^^^^^^^^^^^^^^^^^^ string.quoted.double.clojure
  "
; ^ string.quoted.double.clojure punctuation.definition.string.end.clojure

; ## Breaks

  "blah","blah","blah"
; ^^^^^^ string.quoted.double.clojure
;       ^ comment.punctuation.comma.clojure
;        ^^^^^^ string.quoted.double.clojure
;              ^ comment.punctuation.comma.clojure
;               ^^^^^^ string.quoted.double.clojure

  "blah";"blah";"blah"
; ^^^^^^ string.quoted.double.clojure
;       ^ comment.line.clojure punctuation.definition.comment

; ## Unaffected

  '"blah" ("blah") ( "blah" ) ["blah"]
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^ string.quoted.double.clojure
;         ^ punctuation.section.parens.begin.clojure
;          ^^^^^^ string.quoted.double.clojure
;                ^ punctuation.section.parens.end.clojure
;                  ^ punctuation.section.parens.begin.clojure
;                    ^^^^^^ string.quoted.double.clojure
;                          ^- string.quoted.double.clojure
;                           ^ punctuation.section.parens.end.clojure


; # Regex

  #""
; ^^^ string.regexp.clojure
; ^^ string.regexp.clojure punctuation.definition.string.begin.clojure
;   ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #" blah "
; ^^^^^^^^^ string.regexp.clojure
; ^^ string.regexp.clojure punctuation.definition.string.begin.clojure
;         ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #"blah{1}"
; ^^^^^^^^^^ string.regexp.clojure
; ^^ string.regexp.clojure punctuation.definition.string.begin.clojure
;       ^^^ string.regexp.clojure keyword.operator.quantifier.regexp
;          ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #"
; ^^ string.regexp.clojure punctuation.definition.string.begin.clojure
  blah{1}
; ^^^^ string.regexp.clojure
;     ^^^ string.regexp.clojure keyword.operator.quantifier.regexp
  "
; ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #"
; ^^ string.regexp.clojure punctuation.definition.string.begin.clojure
  \"
; ^^ string.regexp.clojure constant.character.escape.regexp
  (unclosed paren ->
; ^ string.regexp.clojure
  "
; ^ string.regexp.clojure punctuation.definition.string.end.clojure

; ## Invalid

  # ""
; ^ constant.other.symbol.reader-macro.clojure
; ^^^^- string.regexp.clojure



; # Dispatch

  #inst"0000"
; ^^^^^ constant.other.symbol.reader-macro.clojure
  #blah blah
; ^^^^^ constant.other.symbol.reader-macro.clojure
;      ^^^^^^- constant.other.symbol.reader-macro.clojure
  #blah1000.blah1000/blah1000 blah
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.symbol.reader-macro.clojure
;                            ^^^^^^- constant.other.symbol.reader-macro.clojure
  #blah:blah blah
; ^^^^^^^^^^ constant.other.symbol.reader-macro.clojure
;           ^^^^^^- constant.other.symbol.reader-macro.clojure
  # inst "0000"
; ^ constant.other.symbol.reader-macro.clojure
;   ^^^^ constant.other.symbol.reader-macro.clojure
;       ^- constant.other.symbol.reader-macro.clojure
;        ^^^^^^ string.quoted.double.clojure
  #
; ^ constant.other.symbol.reader-macro.clojure
    inst
    "0000"
;   ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
  #'blah
; ^^ constant.other.symbol.reader-macro.clojure
;   ^^^^^- constant.other.symbol.reader-macro.clojure
  #(list % %1)
; ^ constant.other.symbol.reader-macro.clojure
;  ^- constant.other.symbol.reader-macro.clojure
  #[]
; ^ constant.other.symbol.reader-macro.clojure
;  ^- constant.other.symbol.reader-macro.clojure
  #_[]
; ^^ constant.other.symbol.reader-macro.clojure
;   ^- constant.other.symbol.reader-macro.clojure
  #?[]
; ^^ constant.other.symbol.reader-macro.clojure
;   ^- constant.other.symbol.reader-macro.clojure

; ## Breaks

  #blah\newline
; ^^^^^ constant.other.symbol.reader-macro.clojure
;      ^^^^^^^^ constant.character.clojure
  #blah`blah
; ^^^^^ constant.other.symbol.reader-macro.clojure
;       ^^^^^- constant.other.symbol.reader-macro.clojure

; ## Unaffected

  '#'blah (#'blah blah)
; ^^ constant.other.symbol.reader-macro.clojure
;    ^^^^^- constant.other.symbol.reader-macro.clojure
;         ^ punctuation.section.parens.begin.clojure
;          ^^ constant.other.symbol.reader-macro.clojure
;            ^^^^^^^^^- constant.other.symbol.reader-macro.clojure
;                     ^ punctuation.section.parens.end.clojure
  '#inst"0000" (#inst"0000" blah)
;  ^^^^^ constant.other.symbol.reader-macro.clojure
;       ^^^^^^ string.quoted.double.clojure
;              ^ punctuation.section.parens.begin.clojure
;               ^^^^^ constant.other.symbol.reader-macro.clojure
;                    ^^^^^^ string.quoted.double.clojure

; ## Invalid

  #111[]
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^ constant.numeric.clojure
  (blah #) )
;       ^ constant.other.symbol.reader-macro.clojure
;        ^ invalid.illegal.clojure

; ## Ignore

  #{}
; ^^ punctuation.section.braces.begin.clojure



; # Quoting and unquoting

; ## Quote

  '100
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^ constant.numeric.clojure

  'true
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^ constant.language.clojure

  ':blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^ constant.language.keyword.clojure

  'blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^- constant.other.symbol.reader-macro.clojure

  ' blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^- constant.other.symbol.reader-macro.clojure

  '
; ^ constant.other.symbol.reader-macro.clojure
;  ^- constant.other.symbol.reader-macro.clojure
    blah
;   ^^^^^- constant.other.symbol.reader-macro.clojure

  'blah:blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^^^^^- constant.other.symbol.reader-macro.clojure

  'blah.blah/blah1000
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^^^^^^^^^^^^^^- constant.other.symbol.reader-macro.clojure

  '()
; ^ constant.other.symbol.reader-macro.clojure
;  ^- constant.other.symbol.reader-macro.clojure

  '(10 20 30)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^ constant.numeric.clojure

  '(blah blah)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure

  '(quote blah)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^^ variable.function.clojure

; ## Backquote

  `blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^- constant.other.symbol.reader-macro.clojure

; ## Unquote

  ~blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^- constant.other.symbol.reader-macro.clojure

  ~100
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^ constant.numeric.clojure

  `(blah ~blah)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^ constant.other.symbol.reader-macro.clojure
;         ^^^^- constant.other.symbol.reader-macro.clojure

  `(blah ~100)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^ constant.other.symbol.reader-macro.clojure
;         ^^^ constant.numeric.clojure

; ## Unquote-splicing

  ~@blah
; ^^ constant.other.symbol.reader-macro.clojure
;   ^^^^^- constant.other.symbol.reader-macro.clojure

  ~@[10 20 30]
; ^^ constant.other.symbol.reader-macro.clojure
;   ^ punctuation.section.brackets.begin.clojure
;    ^^ constant.numeric.clojure

  `(blah ~@blah)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^^ constant.other.symbol.reader-macro.clojure
;          ^^^^- constant.other.symbol.reader-macro.clojure

  `(blah ~@[10 20 30])
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^^ constant.other.symbol.reader-macro.clojure
;          ^ punctuation.section.brackets.begin.clojure
;           ^^ constant.numeric.clojure

; ## Invalid

  ( ') )
; ^ punctuation.section.parens.begin.clojure
;   ^ constant.other.symbol.reader-macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure

  ( `) )
; ^ punctuation.section.parens.begin.clojure
;   ^ constant.other.symbol.reader-macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure

  ( `) )
; ^ punctuation.section.parens.begin.clojure
;   ^ constant.other.symbol.reader-macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure

  ( ~@) )
; ^ punctuation.section.parens.begin.clojure
;   ^^ constant.other.symbol.reader-macro.clojure
;     ^ invalid.illegal.clojure
;       ^ punctuation.section.parens.end.clojure



; # Deref

  @100
; ^ variable.function.deref.clojure
;  ^^^ constant.numeric.clojure

  @true
; ^ variable.function.deref.clojure
;  ^^^^ constant.language.clojure

  @blah
; ^ variable.function.deref.clojure
;  ^^^^^- variable.function.deref.clojure

  @:blah
; ^ variable.function.deref.clojure
;  ^^^^^ constant.language.keyword.clojure

  @(atom blah)
; ^ variable.function.deref.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure

  @@@blah
; ^^^ variable.function.deref.clojure
;    ^^^^^- variable.function.deref.clojure

  @'blah
; ^ variable.function.deref.clojure
;  ^ constant.other.symbol.reader-macro.clojure

  @~blah
; ^ variable.function.deref.clojure
;  ^ constant.other.symbol.reader-macro.clojure

  @#blah[]
; ^ variable.function.deref.clojure
;  ^^^^^ constant.other.symbol.reader-macro.clojure

; ## Breaks

  blah@blah
;     ^ variable.function.deref.clojure
;      ^^^^^- variable.function.deref.clojure

  100@blah
; ^^^ constant.numeric.clojure
;    ^ variable.function.deref.clojure
;     ^^^^^- variable.function.deref.clojure

; ## Invalid

  ( @) )
; ^ punctuation.section.parens.begin.clojure
;   ^ variable.function.deref.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure



; # Metadata

  ^File
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^- constant.other.symbol.reader-macro.clojure

  ^File blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^^^^^- constant.other.symbol.reader-macro.clojure

  ^:private blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^^^ constant.language.keyword.clojure

  ^{:private true} blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.braces.begin.clojure
;   ^^^^^^^^ constant.language.keyword.clojure
;            ^^^^ constant.language.clojure
;                ^ punctuation.section.braces.end.clojure

  ; Consequent metadata is merged
  ^:private ^:dynamic blah
; ^ constant.other.symbol.reader-macro.clojure
;  ^^^^^^^^ constant.language.keyword.clojure
;           ^ constant.other.symbol.reader-macro.clojure
;            ^^^^^^^^ constant.language.keyword.clojure

  ; Useless but accepted by Clojure reader
  ^^^{10 20}{30 40}{:tag File} blah
; ^^^ constant.other.symbol.reader-macro.clojure
;    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- constant.other.symbol.reader-macro.clojure
;    ^ punctuation.section.braces.begin.clojure
;     ^^ constant.numeric.clojure
;        ^^ constant.numeric.clojure
;          ^ punctuation.section.braces.end.clojure
;           ^ punctuation.section.braces.begin.clojure
;            ^^ constant.numeric.clojure
;               ^^ constant.numeric.clojure
;                 ^ punctuation.section.braces.end.clojure
;                  ^ punctuation.section.braces.begin.clojure
;                   ^^^^ constant.language.keyword.clojure

; ## Breaks

  blah^blah
;     ^ constant.other.symbol.reader-macro.clojure
;      ^^^^^- constant.other.symbol.reader-macro.clojure

  100^blah
; ^^^ constant.numeric.clojure
;    ^ constant.other.symbol.reader-macro.clojure
;     ^^^^^- constant.other.symbol.reader-macro.clojure

; ## Invalid

  ( ^) )
; ^ punctuation.section.parens.begin.clojure
;   ^ constant.other.symbol.reader-macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure



; # Brackets

  []
; ^ punctuation.section.brackets.begin.clojure
;  ^ punctuation.section.brackets.end.clojure

  [10, 20, 30]
; ^ punctuation.section.brackets.begin.clojure
;  ^^ constant.numeric.clojure
;    ^ comment.punctuation.comma.clojure
;      ^^ constant.numeric.clojure
;        ^ comment.punctuation.comma.clojure
;          ^^ constant.numeric.clojure
;            ^ punctuation.section.brackets.end.clojure

  [10
; ^ punctuation.section.brackets.begin.clojure
;  ^^ constant.numeric.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   blah
   #inst"0000"
;  ^^^^^ constant.other.symbol.reader-macro.clojure
;       ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
   [20]]
;  ^ punctuation.section.brackets.begin.clojure
;   ^^ constant.numeric.clojure
;     ^^ punctuation.section.brackets.end.clojure

; ## Invalid

  [ ] ]
; ^ punctuation.section.brackets.begin.clojure
;   ^ punctuation.section.brackets.end.clojure
;     ^ invalid.illegal.clojure



; # Braces

  #{}
; ^^ punctuation.section.braces.begin.clojure
;   ^ punctuation.section.braces.end.clojure

  #{10, 20, 30}
; ^^ punctuation.section.braces.begin.clojure
;   ^^ constant.numeric.clojure
;     ^ comment.punctuation.comma.clojure
;       ^^ constant.numeric.clojure
;         ^ comment.punctuation.comma.clojure
;           ^^ constant.numeric.clojure
;             ^ punctuation.section.braces.end.clojure

  #{10
; ^^ punctuation.section.braces.begin.clojure
;   ^^ constant.numeric.clojure
    ; ---
;   ^ comment.line.clojure punctuation.definition.comment
    blah
    #inst"0000"
;   ^^^^^ constant.other.symbol.reader-macro.clojure
;        ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
    {20}}
;   ^ punctuation.section.braces.begin.clojure
;    ^^ constant.numeric.clojure
;      ^^ punctuation.section.braces.end.clojure

  {10 20, 30 40}
; ^ punctuation.section.braces.begin.clojure
;  ^^ constant.numeric.clojure
;     ^^ constant.numeric.clojure
;       ^ comment.punctuation.comma.clojure
;         ^^ constant.numeric.clojure
;            ^^ constant.numeric.clojure
;              ^ punctuation.section.braces.end.clojure

  {:blah [10 20 30]
; ^ punctuation.section.braces.begin.clojure
;  ^^^^^ constant.language.keyword.clojure
;        ^ punctuation.section.brackets.begin.clojure
;         ^^ constant.numeric.clojure
;            ^^ constant.numeric.clojure
;               ^^ constant.numeric.clojure
;                 ^ punctuation.section.brackets.end.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   :blahblah #{10 20 30}}
;  ^^^^^^^^^ constant.language.keyword.clojure
;            ^^ punctuation.section.braces.begin.clojure
;              ^^ constant.numeric.clojure
;                 ^^ constant.numeric.clojure
;                    ^^ constant.numeric.clojure
;                      ^^ punctuation.section.braces.end.clojure

; ## Invalid

  #{ } }
; ^^ punctuation.section.braces.begin.clojure
;    ^ punctuation.section.braces.end.clojure
;      ^ invalid.illegal.clojure

  { } }
; ^ punctuation.section.braces.begin.clojure
;   ^ punctuation.section.braces.end.clojure
;     ^ invalid.illegal.clojure



; # Parens

  ()
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.parens.end.clojure


; ## Highlight one symbol in operator position

  (blah blah true 10 "" [10 20])
; ^ punctuation.section.parens.begin.clojure
;  ^^^^ variable.function.clojure
;      ^^^^^^^^^^^^^^^^^^^^^^^^- variable.function.clojure
;            ^^^^ constant.language.clojure
;                 ^^ constant.numeric.clojure
;                    ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
;                     ^ string.quoted.double.clojure punctuation.definition.string.end.clojure
;                       ^ punctuation.section.brackets.begin.clojure
;                        ^^ constant.numeric.clojure
;                           ^^ constant.numeric.clojure
;                             ^ punctuation.section.brackets.end.clojure
;                              ^ punctuation.section.parens.end.clojure

  #(blah blah true 10 "" [10 20])
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;       ^^^^^^^^^^^^^^^^^^^^^^^^^- variable.function.clojure
;             ^^^^ constant.language.clojure
;                  ^^ constant.numeric.clojure
;                               ^ punctuation.section.parens.end.clojure

; ## Ignore operator

  (true blah :blah)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^ constant.language.clojure

  (10 blah :blah)
; ^ punctuation.section.parens.begin.clojure
;  ^^ constant.numeric.clojure

  (:blah blah 10)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^ constant.language.keyword.clojure

  #(true blah 10)
; ^ constant.other.symbol.reader-macro.clojure
;  ^ punctuation.section.parens.begin.clojure

; ## Whitespace

  (
; ^ punctuation.section.parens.begin.clojure
    blah
;   ^^^^ variable.function.clojure
    ; ---
;   ^ comment.line.clojure punctuation.definition.comment
    blah
    :blah
;   ^^^^^ constant.language.keyword.clojure
   )
;  ^ punctuation.section.parens.end.clojure

; ## Invalid

  ( ) )
; ^ punctuation.section.parens.begin.clojure
;   ^ punctuation.section.parens.end.clojure
;     ^ invalid.illegal.clojure



; # fn

  (fn [])
;  ^^ storage.type.fn.clojure
;     ^ punctuation.section.brackets.begin.clojure
;      ^ punctuation.section.brackets.end.clojure
;       ^ punctuation.section.parens.end.clojure

  (fn color-but-dont-declare [] blah)
;  ^^ storage.type.fn.clojure
;     ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
;                            ^^^^^^^- storage.type
;                            ^^^^^^^- entity.name

  (fn color-but-dont-declare
;  ^^ storage.type.fn.clojure
;     ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
;                           ^- entity.name
    ([] blah)
    ([_] blah))

  ; Invalid but take care anyway
  (fn color-but-dont-declare dont-color-or-declare [])
;  ^^ storage.type.fn.clojure
;     ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
;                            ^^^^- storage.type
;                            ^^^^- entity.name



; # defs

; ## Declare

  (def declare-def)
;  ^^^ storage.type.def.clojure
;      ^^^^^^^^^^^ entity.name.function.clojure

  (def declare-def dont-declare)
; ^ punctuation.section.parens.begin.clojure
;  ^^^ storage.type.def.clojure
;      ^^^^^^^^^^^ entity.name.function.clojure
;                  ^^^^^^^^^^^^- storage.type
;                  ^^^^^^^^^^^^- entity.name

  (def λ nil)
;  ^^^ storage.type.def.clojure
;      ^ entity.name.function.clojure
;        ^^^ constant.language.clojure

  (def 👽 nil)
;  ^^^ storage.type.def.clojure
;      ^ entity.name.function.clojure
;        ^^^ constant.language.clojure

  (def def nil)
;  ^^^ storage.type.def.clojure
;      ^^^ entity.name.function.clojure
;          ^^^ constant.language.clojure

  (
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   def
;  ^^^ storage.type.def.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   declare-def
;  ^^^^^^^^^^^ entity.name.function.clojure
   dont-declare
;  ^^^^^^^^^^^^^- storage.type
;  ^^^^^^^^^^^^^- entity.name
   )

  (defonce declare-defonce)
;  ^^^^^^^ storage.type.def.clojure
;          ^^^^^^^^^^^^^^^ entity.name.function.clojure

; ## Declare with metadata

  (def ^File declare-def nil)
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;       ^^^^- storage.type
;       ^^^^- entity.name
;            ^^^^^^^^^^^ entity.name.function.clojure
;                        ^^^ constant.language.clojure

  (def ^:private declare-def nil)
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;       ^^^^^^^^ constant.language.keyword.clojure
;                ^^^^^^^^^^^ entity.name.function.clojure
;                            ^^^ constant.language.clojure

  (def ^:private declare-def dont-declare)
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;       ^^^^^^^^ constant.language.keyword.clojure
;                ^^^^^^^^^^^ entity.name.function.clojure
;                           ^^^^^^^^^^^^^- storage.type
;                           ^^^^^^^^^^^^^- entity.name

  ; Consequent metadata is merged

  (def ^:private ^:dynamic declare-def nil)
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;       ^^^^^^^^ constant.language.keyword.clojure
;                ^ constant.other.symbol.reader-macro.clojure
;                 ^^^^^^^^ constant.language.keyword.clojure
;                          ^^^^^^^^^^^ entity.name.function.clojure
;                                      ^^^ constant.language.clojure

  (def ^:private ^:dynamic declare-def dont-declare)
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;       ^^^^^^^^ constant.language.keyword.clojure
;                ^ constant.other.symbol.reader-macro.clojure
;                 ^^^^^^^^ constant.language.keyword.clojure
;                          ^^^^^^^^^^^ entity.name.function.clojure
;                                     ^^^^^^^^^^^^^- storage.type
;                                     ^^^^^^^^^^^^^- entity.name

  (
   def
;  ^^^ storage.type.def.clojure
   ; ---
   ^
;  ^ constant.other.symbol.reader-macro.clojure
   ; ---
   {:private
;  ^ punctuation.section.braces.begin.clojure
;   ^^^^^^^^ constant.language.keyword.clojure
   ; ---
    true}
;   ^^^^ constant.language.clojure
;       ^ punctuation.section.braces.end.clojure
   ; ---
   declare-def
;  ^^^^^^^^^^^ entity.name.function.clojure
   ; ---
   dont-declare
;  ^^^^^^^^^^^^^- storage.type
;  ^^^^^^^^^^^^^- entity.name
   )

  (defonce ^:private declare-defonce nil)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^^^ storage.type.def.clojure
;          ^ constant.other.symbol.reader-macro.clojure
;           ^^^^^^^^ constant.language.keyword.clojure
;                    ^^^^^^^^^^^^^^^ entity.name.function.clojure
;                                    ^^^ constant.language.clojure

  ; Useless but accepted by Clojure reader
  (^{10 20} def ^:private declare-def dont-declare)
;  ^ constant.other.symbol.reader-macro.clojure
;   ^ punctuation.section.braces.begin.clojure
;    ^^ constant.numeric.clojure
;       ^^ constant.numeric.clojure
;         ^ punctuation.section.braces.end.clojure
;           ^^^ storage.type.def.clojure
;               ^ constant.other.symbol.reader-macro.clojure
;                ^^^^^^^^ constant.language.keyword.clojure
;                         ^^^^^^^^^^^ entity.name.function.clojure
;                                    ^^^^^^^^^^^^^- storage.type
;                                    ^^^^^^^^^^^^^- entity.name

  ; Useless but accepted by Clojure reader
  (def ^^^{10 20}{30 40}{:private true} declare-def dont-declare)
;  ^^^ storage.type.def.clojure
;      ^^^ constant.other.symbol.reader-macro.clojure
;         ^ punctuation.section.braces.begin.clojure
;          ^^ constant.numeric.clojure
;             ^^ constant.numeric.clojure
;               ^ punctuation.section.braces.end.clojure
;                ^ punctuation.section.braces.begin.clojure
;                 ^^ constant.numeric.clojure
;                    ^^ constant.numeric.clojure
;                      ^ punctuation.section.braces.end.clojure
;                       ^ punctuation.section.braces.begin.clojure
;                        ^^^^^^^^ constant.language.keyword.clojure
;                                 ^^^^ constant.language.clojure
;                                     ^ punctuation.section.braces.end.clojure
;                                       ^^^^^^^^^^^ entity.name.function.clojure
;                                                  ^^^^^^^^^^^^^- storage.type
;                                                  ^^^^^^^^^^^^^- entity.name


; ## Don't declare

  (declare dont-declare)
;  ^^^^^^^ variable.function.clojure
;         ^^^^^^^^^^^^^- storage.type
;         ^^^^^^^^^^^^^- entity.name

  (def nil dont-declare)
;  ^^^ storage.type.def.clojure
;      ^^^ constant.language.clojure
;         ^^^^^^^^^^^^^- storage.type
;         ^^^^^^^^^^^^^- entity.name

  (def 10 dont-declare)
;  ^^^ storage.type.def.clojure
;      ^^ constant.numeric.clojure
;        ^^^^^^^^^^^^^- storage.type
;        ^^^^^^^^^^^^^- entity.name

  (def :blah dont-declare)
;  ^^^ storage.type.def.clojure
;      ^^^^^ constant.language.keyword.clojure
;           ^^^^^^^^^^^^^- storage.type
;           ^^^^^^^^^^^^^- entity.name

  (def 'blah dont-declare)
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;       ^^^^^^^^^^^^^^^^^- storage.type
;       ^^^^^^^^^^^^^^^^^- entity.name

  (def () dont-declare)
;  ^^^ storage.type.def.clojure
;      ^^^^^^^^^^^^^^^- storage.type
;      ^^^^^^^^^^^^^^^- entity.name

  (-def dont-declare)
;  ^^^^ variable.function.clojure
;      ^^^^^^^^^^^^^- storage.type
;      ^^^^^^^^^^^^^- entity.name

  (-def def dont-declare)
;  ^^^^ variable.function.clojure
;      ^^^^^^^^^^^^^^^^^- storage.type
;      ^^^^^^^^^^^^^^^^^- entity.name

; ## Invalid

  (def ^ ) )
;  ^^^ storage.type.def.clojure
;      ^ constant.other.symbol.reader-macro.clojure
;        ^ invalid.illegal.clojure
;          ^ punctuation.section.parens.end.clojure



; # Function defs

  (defn declare-defn [] dont-declare)
;  ^^^^ storage.type.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                    ^^^^^^^^^^^^^^^- storage.type
;                    ^^^^^^^^^^^^^^^- entity.name

  (defn declare-defn [arg & args] dont-declare)
;  ^^^^ storage.type.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                    ^^^^^^^^^^^^^^^^^^^^^^^^^- storage.type
;                    ^^^^^^^^^^^^^^^^^^^^^^^^^- entity.name

  (defn ^:private declare-defn [arg & args] dont-declare)
;  ^^^^ storage.type.def.clojure
;       ^ constant.other.symbol.reader-macro.clojure
;        ^^^^^^^^ constant.language.keyword.clojure
;                 ^^^^^^^^^^^^ entity.name.function.clojure
;                              ^^^^^^^^^^^^^^^^^^^^^^^^^- storage.type
;                              ^^^^^^^^^^^^^^^^^^^^^^^^^- entity.name

  (defn declare-defn
;  ^^^^ storage.type.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
    "docstring"
;   ^^^^^^^^^^^ string.quoted.double.clojure
    [arg & args]
;   ^^^^^^^^^^^^- storage.type
;   ^^^^^^^^^^^^- entity.name
    dont-declare)
;   ^^^^^^^^^^^^- storage.type
;   ^^^^^^^^^^^^- entity.name

  (defn
;  ^^^^ storage.type.def.clojure
    ^:private
;   ^ constant.other.symbol.reader-macro.clojure
;    ^^^^^^^^ constant.language.keyword.clojure
    declare-defn
;   ^^^^^^^^^^^^ entity.name.function.clojure
    "docstring"
;   ^^^^^^^^^^^ string.quoted.double.clojure
    ([] dont-declare)
;   ^^^^^^^^^^^^^^^^^- storage.type
;   ^^^^^^^^^^^^^^^^^- entity.name
    ([_] dont-declare))
;   ^^^^^^^^^^^^^^^^^^^- storage.type
;   ^^^^^^^^^^^^^^^^^^^- entity.name

  (
   defn
;  ^^^^ storage.type.def.clojure
   declare-defn
;  ^^^^^^^^^^^^ entity.name.function.clojure
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
   {:private true}
;   ^^^^^^^^ constant.language.keyword.clojure
;            ^^^^ constant.language.clojure
   ([] dont-declare)
;  ^^^^^^^^^^^^^^^^^- storage.type
;  ^^^^^^^^^^^^^^^^^- entity.name
   ([_] dont-declare))
;  ^^^^^^^^^^^^^^^^^^^- storage.type
;  ^^^^^^^^^^^^^^^^^^^- entity.name

  (defn declare-defn [value] {:pre [(int? value)]}
;  ^^^^ storage.type.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                     ^^^^^- storage.type
;                     ^^^^^- entity.name
;                             ^^^^ constant.language.keyword.clojure
;                                    ^^^^ variable.function.clojure
    value)
;   ^^^^^- storage.type
;   ^^^^^- entity.name

  ; Invalid but take care anyway
  (defn declare-defn dont-declare [] dont-declare)
;  ^^^^ storage.type.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- storage.type
;                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- entity.name

  (defmacro declare-defmacro [])
;  ^^^^^^^^ storage.type.def.clojure
;           ^^^^^^^^^^^^^^^^ entity.name.function.clojure



; # defmulti / defmethod

  (defmulti declare-multi-fn)
;  ^^^^^^^^ storage.type.def.clojure
;           ^^^^^^^^^^^^^^^^ entity.name.function.clojure

  (defmulti ^:private declare-multi-fn dont-declare-dispatch-fn)
;  ^^^^^^^^ storage.type.def.clojure
;           ^ constant.other.symbol.reader-macro.clojure
;            ^^^^^^^^ constant.language.keyword.clojure
;                     ^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                                     ^^^^^^^^^^^^^^^^^^^^^^^^^- storage.type
;                                     ^^^^^^^^^^^^^^^^^^^^^^^^^- entity.name

  (
   defmulti
;  ^^^^^^^^ storage.type.def.clojure
   ^:private
;  ^ constant.other.symbol.reader-macro.clojure
   declare-multi-fn
;  ^^^^^^^^^^^^^^^^ entity.name.function.clojure
   dont-declare-dispatch-fn
;  ^^^^^^^^^^^^^^^^^^^^^^^^^- storage.type
;  ^^^^^^^^^^^^^^^^^^^^^^^^^- entity.name
  )

  ; Invalid but take care anyway
  (defmulti declare-multi-fn nil)
;  ^^^^^^^^ storage.type.def.clojure
;           ^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                            ^^^ constant.language.clojure

  (defmethod dont-declare-multi-fn :dispatch-value [arg] ...)
;                                  ^^^^^^^^^^^^^^^ constant.language.keyword.clojure

  (defmethod dont-declare-multi-fn DispatchType [arg] ...)
;                                  ^^^^^^^^^^^^^- storage.type
;                                  ^^^^^^^^^^^^^- entity.name

  (
   defmethod
;  ^^^^^^^^^ storage.type.def.clojure
   dont-declare-multi-fn
;  ^^^^^^^^^^^^^^^^^^^^^^- storage.type
;  ^^^^^^^^^^^^^^^^^^^^^^- entity.name
  )



; # defprotocol

  (defprotocol DeclareProtocol)
;  ^^^^^^^^^^^ storage.type.def.clojure
;              ^^^^^^^^^^^^^^^ entity.name.type.clojure

  (defprotocol ^:private DeclareProtocol)
;  ^^^^^^^^^^^ storage.type.def.clojure
;              ^ constant.other.symbol.reader-macro.clojure
;               ^^^^^^^^ constant.language.keyword.clojure
;                        ^^^^^^^^^^^^^^^ entity.name.type.clojure

  (defprotocol ^:private ^:blah DeclareProtocol)
;  ^^^^^^^^^^^ storage.type.def.clojure
;              ^ constant.other.symbol.reader-macro.clojure
;               ^^^^^^^^ constant.language.keyword.clojure
;                        ^ constant.other.symbol.reader-macro.clojure
;                         ^^^^^ constant.language.keyword.clojure
;                               ^^^^^^^^^^^^^^^ entity.name.type.clojure

  (
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   defprotocol
;  ^^^^^^^^^^^ storage.type.def.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   ^:private
;  ^ constant.other.symbol.reader-macro.clojure
;   ^^^^^^^^ constant.language.keyword.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   DeclareProtocol
;  ^^^^^^^^^^^^^^^ entity.name.type.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   "docstring"
;  ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
  )

  ; Invalid but take care anyway
  (defprotocol DeclareProtocol dont-declare)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^^^^^^^ storage.type.def.clojure
;              ^^^^^^^^^^^^^^^ entity.name.type.clojure
;                             ^^^^^^^^^^^^^- storage.type
;                             ^^^^^^^^^^^^^- entity.name

  ; Protocol methods are added to the namespace as functions
  (defprotocol ^:private DeclareProtocol
    ; ---
    (declare-protocol-method [_] dont-declare)
;    ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                               ^^^^^^^^^^^^^- storage.type
;                               ^^^^^^^^^^^^^- entity.name
    ; ---
    (^File declare-protocol-method [_] dont-declare))
;    ^ constant.other.symbol.reader-macro.clojure
;     ^^^^^- storage.type
;     ^^^^^- entity.name
;     ^^^^^- variable.function
;          ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                                     ^^^^^^^^^^^^^- storage.type
;                                     ^^^^^^^^^^^^^- entity.name

  ; Invalid but take care anyway
  (defprotocol DeclareProtocol
    (declare-protocol-method dont-declare [_])
;    ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                           ^^^^^^^^^^^^^^- storage.type
;                           ^^^^^^^^^^^^^^- entity.name
    (100 dont-declare [_])
;    ^^^ constant.numeric.clojure
;       ^^^^^^^^^^^^^^- storage.type
;       ^^^^^^^^^^^^^^- entity.name
    (true dont-declare [_])
;    ^^^^ constant.language.clojure
;         ^^^^^^^^^^^^^- storage.type
;         ^^^^^^^^^^^^^- entity.name
    (:blah dont-declare [_])
;    ^^^^^ constant.language.keyword.clojure
;          ^^^^^^^^^^^^^- storage.type
;          ^^^^^^^^^^^^^- entity.name
    ('blah dont-declare [_]))
;    ^ constant.other.symbol.reader-macro.clojure
;     ^^^^^^^^^^^^^^^^^^- storage.type
;     ^^^^^^^^^^^^^^^^^^- entity.name
;     ^^^^^^^^^^^^^^^^^^- variable.function



; # definterface

  (definterface DeclareInterface)
;  ^^^^^^^^^^^^ storage.type.def.clojure
;               ^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (definterface ^:private DeclareInterface)
;  ^^^^^^^^^^^^ storage.type.def.clojure
;               ^ constant.other.symbol.reader-macro.clojure
;                ^^^^^^^^ constant.language.keyword.clojure
;                         ^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (
   definterface
;  ^^^^^^^^^^^^ storage.type.def.clojure
   ^:private
;  ^ constant.other.symbol.reader-macro.clojure
   DeclareInterface
;  ^^^^^^^^^^^^^^^^ entity.name.type.clojure
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
  )

  ; Interface methods should have the same visual style as other function
  ; and method declarations, but shouldn't be added to the symbol index,
  ; since they're not added to the namespace as functions
  (definterface DeclareInterface
    (color-but-dont-declare [_])
;    ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    (color-but-dont-declare [_]))
;    ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure



; # deftype

  (deftype DeclareType)
;  ^^^^^^^ storage.type.def.clojure
;          ^^^^^^^^^^^ entity.name.type.clojure

  (deftype-custom DeclareWithCustomDeftype)
;  ^^^^^^^^^^^^^^ storage.type.def.clojure
;                 ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (deftype ^:private DeclareType [])
;  ^^^^^^^ storage.type.def.clojure
;          ^ constant.other.symbol.reader-macro.clojure
;           ^^^^^^^^ constant.language.keyword.clojure
;                    ^^^^^^^^^^^ entity.name.type.clojure

  (
   ; ---
   deftype
;  ^^^^^^^ storage.type.def.clojure
   ; ---
   ^:private
;  ^ constant.other.symbol.reader-macro.clojure
   ; ---
   ^:blah
;  ^ constant.other.symbol.reader-macro.clojure
;   ^^^^^ constant.language.keyword.clojure
   ; ---
   DeclareType
;  ^^^^^^^^^^^ entity.name.type.clojure
   ; ---
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
   [])

  ; Invalid but take care anyway
  (deftype DeclareType dont-declare)
;  ^^^^^^^ storage.type.def.clojure
;          ^^^^^^^^^^^ entity.name.type.clojure
;                     ^^^^^^^^^^^^^- storage.type
;                     ^^^^^^^^^^^^^- entity.name

  ; Similarly to definterface, type methods should have the standard visual
  ; style of function declarations, but not added to the symbol index,
  ; since they're not added to the namespace.
  (deftype DeclareType
    (color-but-dont-declare [_])
;    ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    (color-but-dont-declare [_]))
;    ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure


(deftype GrowingMap [^IFn make ^:unsynchronized-mutable inner]
;^^^^^^^ storage.type.def.clojure
;        ^^^^^^^^^^ entity.name.type.clojure
;                   ^ punctuation.section.brackets.begin.clojure
;                    ^ constant.other.symbol.reader-macro.clojure
;                               ^^^^^^^^^^^^^^^^^^^^^^^ constant.language.keyword.clojure
  ILookup
  (valAt [this key]
;  ^^^^^ entity.name.function.fn.clojure
;       ^^^^^^^^^^^- storage.type
;       ^^^^^^^^^^^- entity.name
    (let [dict @this]
;    ^^^ variable.function.clojure
      (if (contains? dict key)
        (get dict key)
        (locking this
          (if (contains? inner key)
            (get inner key)
            (get (set! inner (assoc inner key (make inner key))) key))))))
  (valAt [this key fallback] (get @this key fallback))
;  ^^^^^ entity.name.function.fn.clojure
;                             ^^^ variable.function.clojure

  Seqable
  (seq [this] (seq @this))

  IFn
  (invoke [this a] (.valAt this a))
  (invoke [this a b] (.valAt this a b))
  (applyTo [this args]
    (case (count args)
      1 (.invoke this (first args))
      2 (.invoke this (first args) (second args))
      (throw (new ArityException (count args) (.getName ^Class (type this))))))

  IDeref
  (deref [this]
    (or inner
        (locking this
          (or inner
              (let [dict (make)]
                (when-not (map? dict)
                  (throw (new Exception "GrowingMap initer failed to produce a map")))
                (set! inner dict)))))))

(defn new-growing-map
  ([make] (new-growing-map make nil))
  ([make init] {:pre [(ifn? make) (or (nil? init) (map? init))]}
   (new GrowingMap make init)))



; # defrecord

  (defrecord DeclareRecord)
;  ^^^^^^^^^ storage.type.def.clojure
;            ^^^^^^^^^^^^^ entity.name.type.clojure

  (defrecord-custom DeclareWithCustomDefrecord)
;  ^^^^^^^^^^^^^^^^ storage.type.def.clojure
;                   ^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (defrecord ^:private DeclareRecord [])
;  ^^^^^^^^^ storage.type.def.clojure
;            ^ constant.other.symbol.reader-macro.clojure
;             ^^^^^^^^ constant.language.keyword.clojure
;                      ^^^^^^^^^^^^^ entity.name.type.clojure

  (
   ; ---
   defrecord
;  ^^^^^^^^^ storage.type.def.clojure
   ; ---
   ^:private
;  ^ constant.other.symbol.reader-macro.clojure
   ; ---
   ^:blah
;  ^ constant.other.symbol.reader-macro.clojure
   ; ---
   DeclareRecord
;  ^^^^^^^^^^^^^ entity.name.type.clojure
   ; ---
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
   [])

  ; Invalid but take care anyway
  (defrecord DeclareRecord dont-declare)
;  ^^^^^^^^^ storage.type.def.clojure
;            ^^^^^^^^^^^^^ entity.name.type.clojure
;                         ^^^^^^^^^^^^^- storage.type
;                         ^^^^^^^^^^^^^- entity.name

  ; Same reasoning as for definterface and deftype
  (defrecord DeclareRecord
    (color-but-dont-declare [_])
;    ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    (color-but-dont-declare [_]))
;    ^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure


(defrecord Srv [^Server jetty session-store state-store]
  component/Lifecycle

  (start [this]
;  ^^^^^ entity.name.function.fn.clojure
;       ^^^^^^^^^^^- storage.type
;       ^^^^^^^^^^^- entity.name
    (let [port    (Long/parseLong (getenv "LOCAL_PORT"))
;    ^^^ variable.function.clojure
          this    (component/stop this)
          handler (new-handler this)
          options {:port port
                   :join? false
                   :send-server-version? false}
          jetty   (run-jetty handler options)]
      (assoc this :jetty jetty)))

  (stop [this]
    (when jetty (.stop jetty))
    (assoc this :jetty nil)))

(defn new-srv [prev-sys]
  (when-let [^Server jetty (-> prev-sys :srv :jetty)] (.stop jetty))
  (new Srv
       nil
       (or (-> prev-sys :srv :session-store)
           (util/expiring-session-store 72 {:time-unit :hours
                                            :expiration-policy :access}))
       (or (-> prev-sys :srv :state-store)
           (em/expiring-map 1 {:time-unit :hours :expiration-policy :access}))))



; # reify

  (reify
;  ^^^^^ variable.function.clojure
    clojure.lang.IDeref
;   ^^^^^^^^^^^^^^^^^^^^- storage.type
;   ^^^^^^^^^^^^^^^^^^^^- entity.name
;   ^^^^^^^^^^^^^^^^^^^^- variable
    (deref [_] nil)
;    ^^^^^ entity.name.function.fn.clojure
;              ^^^ constant.language.clojure
    clojure.lang.Seqable
    (seq [_] nil))
;    ^^^ entity.name.function.fn.clojure
;            ^^^ constant.language.clojure



; # proxy

  (proxy [clojure.lang.IDeref clojure.lang.Seqable] []
;  ^^^^^ variable.function.clojure
;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- storage.type
;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- entity.name
;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- variable
    (deref [] nil)
;    ^^^^^ entity.name.function.fn.clojure
;             ^^^ constant.language.clojure
    (seq [] nil))
;    ^^^ entity.name.function.fn.clojure
;           ^^^ constant.language.clojure



; # extend-protocol

  (extend-protocol clojure.lang.IDeref
;  ^^^^^^^^^^^^^^^ variable.function.clojure
;                  ^^^^^^^^^^^^^^^^^^^^- storage.type
;                  ^^^^^^^^^^^^^^^^^^^^- entity.name
;                  ^^^^^^^^^^^^^^^^^^^^- variable
    String
;   ^^^^^^- storage.type
;   ^^^^^^- entity.name
;   ^^^^^^- variable
    (deref [this] this)
;    ^^^^^ entity.name.function.fn.clojure
    Srv
    (deref [_] nil))
;    ^^^^^ entity.name.function.fn.clojure
;              ^^^ constant.language.clojure



; # extend-type

  (extend-type String
;  ^^^^^^^^^^^ variable.function.clojure
;              ^^^^^^^- storage.type
;              ^^^^^^^- entity.name
;              ^^^^^^^- variable
    clojure.lang.IDeref
;   ^^^^^^^^^^^^^^^^^^^^- storage.type
;   ^^^^^^^^^^^^^^^^^^^^- entity.name
;   ^^^^^^^^^^^^^^^^^^^^- variable
    (deref [this] this)
;    ^^^^^ entity.name.function.fn.clojure
    clojure.lang.IFn
    (invoke [this] nil))
;    ^^^^^^ entity.name.function.fn.clojure
;                  ^^^ constant.language.clojure
