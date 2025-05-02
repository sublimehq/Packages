; SYNTAX TEST "Packages/Clojure/Clojure.sublime-syntax"

; # Comments and whitespace

  ;blah
; ^ comment.line.clojure punctuation.definition.comment
;  ^^^^ comment.line.clojure

  ;;; blah
; ^^^ comment.line.clojure punctuation.definition.comment
;    ^^^^^ comment.line.clojure

  blah;blah;blah
; ^^^^- comment
;     ^ comment.line.clojure

  #!blah
; ^^ comment.line.clojure punctuation.definition.comment
;   ^^^^^ comment.line.clojure
  #! blah
; ^^ comment.line.clojure punctuation.definition.comment
;   ^^^^^^ comment.line.clojure
  #!#!#! blah
; ^^ comment.line.clojure punctuation.definition.comment
;   ^^^^^^^^^^ comment.line.clojure

  blah,blah, blah
;     ^ punctuation.comma.clojure
;     ^ comment.punctuation.comma.clojure
;      ^- comment
;          ^ punctuation.comma.clojure
;          ^ comment.punctuation.comma.clojure
;           ^- comment

; ## Include end-of-line

; ; blah
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.clojure

; # Merge Conflict Marker Tests

<<<<<<< HEAD
; <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
;^^^^^^^^^^^ meta.block.conflict.begin.diff
;^^^^^^ punctuation.section.block.begin.diff
;       ^^^^ entity.name.section.diff

=======
; <- meta.block.conflict.separator.diff punctuation.section.block.diff
;^^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff

>>>>>>> master
; <- meta.block.conflict.end.diff punctuation.section.block.end.diff
;^^^^^^^^^^^^^ meta.block.conflict.end.diff
;^^^^^^ punctuation.section.block.end.diff
;       ^^^^^^ entity.name.section.diff

; # Constants

  true false nil
; ^^^^ constant.language.clojure
;     ^ - constant
;      ^^^^^ constant.language.clojure
;           ^ - constant
;            ^^^ constant.language.clojure

; ## Breaks

  true,false,nil
; ^^^^ constant.language.clojure
;     ^ comment.punctuation.comma.clojure
;      ^^^^^ constant.language.clojure
  true;false;nil
; ^^^^ constant.language.clojure
;     ^ comment.line.clojure punctuation.definition.comment

; ## Unaffected

  'nil (true) (nil)
; ^ keyword.operator.macro.clojure
;  ^^^ constant.language.clojure
;      ^ punctuation.section.parens.begin.clojure
;       ^^^^ constant.language.clojure
;           ^ punctuation.section.parens.end.clojure

; ## No highlighting

  nill nil- -nil nil?
; ^^^^^^^^^^^^^^^^^^^ - constant



; # Numbers

  1234 1234N +1234 +1234N -1234 -1234N
; ^^^^ meta.number.integer.decimal.clojure constant.numeric.value.clojure
;     ^ - meta.number
;      ^^^^^ meta.number.integer.decimal.clojure
;      ^^^^ constant.numeric.value.clojure
;          ^ constant.numeric.suffix.clojure
;           ^ - meta.number
;            ^^^^^ meta.number.integer.decimal.clojure
;            ^ keyword.operator.arithmetic.clojure
;             ^^^^ constant.numeric.value.clojure
;                 ^ - meta.number
;                  ^^^^^^ meta.number.integer.decimal.clojure
;                  ^ keyword.operator.arithmetic.clojure
;                   ^^^^ constant.numeric.value.clojure
;                       ^ constant.numeric.suffix.clojure
;                        ^ - meta.number
;                         ^^^^^ meta.number.integer.decimal.clojure
;                         ^ keyword.operator.arithmetic.clojure
;                          ^^^^ constant.numeric.value.clojure
;                              ^ - meta.number
;                               ^^^^^^ meta.number.integer.decimal.clojure
;                               ^ keyword.operator.arithmetic.clojure
;                                ^^^^ constant.numeric.value.clojure
;                                    ^ constant.numeric.suffix.clojure
  0x1234af 0x1234afN 0X1234AF 0X1234AFN
; ^^^^^^^^ meta.number.integer.hexadecimal.clojure
; ^^ constant.numeric.base.clojure
;   ^^^^^^ constant.numeric.value.clojure
;         ^ - meta.number
;          ^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;          ^^ constant.numeric.base.clojure
;            ^^^^^^ constant.numeric.value.clojure
;                  ^ constant.numeric.suffix.clojure
;                   ^ - meta.number
;                    ^^^^^^^^ meta.number.integer.hexadecimal.clojure
;                    ^^ constant.numeric.base.clojure
;                      ^^^^^^ constant.numeric.value.clojure
;                            ^ - meta.number
;                             ^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;                             ^^ constant.numeric.base.clojure
;                               ^^^^^^ constant.numeric.value.clojure
;                                     ^ constant.numeric.suffix.clojure
  +0x1234af +0x1234afN +0X1234AF +0X1234AFN
; ^^^^^^^^^ meta.number.integer.hexadecimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^ constant.numeric.base.clojure
;    ^^^^^^ constant.numeric.value.clojure
;          ^ - meta.number
;           ^^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;           ^ keyword.operator.arithmetic.clojure
;            ^^ constant.numeric.base.clojure
;              ^^^^^^ constant.numeric.value.clojure
;                    ^ constant.numeric.suffix.clojure
;                     ^ - meta.number
;                      ^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;                      ^ keyword.operator.arithmetic.clojure
;                       ^^ constant.numeric.base.clojure
;                         ^^^^^^ constant.numeric.value.clojure
;                               ^ - meta.number
;                                ^^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;                                ^ keyword.operator.arithmetic.clojure
;                                 ^^ constant.numeric.base.clojure
;                                   ^^^^^^ constant.numeric.value.clojure
;                                         ^ constant.numeric.suffix.clojure
  -0x1234af -0x1234afN -0X1234AF -0X1234AFN
; ^^^^^^^^^ meta.number.integer.hexadecimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^ constant.numeric.base.clojure
;    ^^^^^^ constant.numeric.value.clojure
;          ^ - meta.number
;           ^^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;           ^ keyword.operator.arithmetic.clojure
;            ^^ constant.numeric.base.clojure
;              ^^^^^^ constant.numeric.value.clojure
;                    ^ constant.numeric.suffix.clojure
;                     ^ - meta.number
;                      ^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;                      ^ keyword.operator.arithmetic.clojure
;                       ^^ constant.numeric.base.clojure
;                         ^^^^^^ constant.numeric.value.clojure
;                               ^ - meta.number
;                                ^^^^^^^^^^ meta.number.integer.hexadecimal.clojure
;                                ^ keyword.operator.arithmetic.clojure
;                                 ^^ constant.numeric.base.clojure
;                                   ^^^^^^ constant.numeric.value.clojure
;                                         ^ constant.numeric.suffix.clojure
  2r1010 16r1234af 32r1234az 2R1010 16R1234AF 32R1234AZ
; ^^^^^^ meta.number.integer.other.clojure
; ^^ constant.numeric.base.clojure
;   ^^^^ constant.numeric.value.clojure
;       ^ - meta.number
;        ^^^^^^^^^ meta.number.integer.other.clojure
;        ^^^ constant.numeric.base.clojure
;           ^^^^^^ constant.numeric.value.clojure
;                 ^ - meta.number
;                  ^^^^^^^^^ meta.number.integer.other.clojure
;                  ^^^ constant.numeric.base.clojure
;                     ^^^^^^ constant.numeric.value.clojure
;                           ^ - meta.number
;                            ^^^^^^ meta.number.integer.other.clojure
;                            ^^ constant.numeric.base.clojure
;                              ^^^^ constant.numeric.value.clojure
;                                  ^ - meta.number
;                                   ^^^^^^^^^ meta.number.integer.other.clojure
;                                   ^^^ constant.numeric.base.clojure
;                                      ^^^^^^ constant.numeric.value.clojure
;                                            ^ - meta.number
;                                             ^^^^^^^^^ meta.number.integer.other.clojure
;                                             ^^^ constant.numeric.base.clojure
;                                                ^^^^^^ constant.numeric.value.clojure
  +2r1010 +16r1234af +32r1234az +2R1010 +16R1234AF +32R1234AZ
; ^^^^^^^ meta.number.integer.other.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^ constant.numeric.base.clojure
;    ^^^^ constant.numeric.value.clojure
;        ^ - meta.number
;         ^^^^^^^^^^ meta.number.integer.other.clojure
;         ^ keyword.operator.arithmetic.clojure
;          ^^^ constant.numeric.base.clojure
;             ^^^^^^ constant.numeric.value.clojure
;                   ^ - meta.number
;                    ^^^^^^^^^^ meta.number.integer.other.clojure
;                    ^ keyword.operator.arithmetic.clojure
;                     ^^^ constant.numeric.base.clojure
;                        ^^^^^^ constant.numeric.value.clojure
;                              ^ - meta.number
;                               ^^^^^^^ meta.number.integer.other.clojure
;                               ^ keyword.operator.arithmetic.clojure
;                                ^^ constant.numeric.base.clojure
;                                  ^^^^ constant.numeric.value.clojure
;                                      ^ - meta.number
;                                       ^^^^^^^^^^ meta.number.integer.other.clojure
;                                       ^ keyword.operator.arithmetic.clojure
;                                        ^^^ constant.numeric.base.clojure
;                                           ^^^^^^ constant.numeric.value.clojure
;                                                 ^ - meta.number
;                                                  ^^^^^^^^^^ meta.number.integer.other.clojure
;                                                  ^ keyword.operator.arithmetic.clojure
;                                                   ^^^ constant.numeric.base.clojure
;                                                      ^^^^^^ constant.numeric.value.clojure
  -2r1010 -16r1234af -32r1234az -2R1010 -16R1234AF -32R1234AZ
; ^^^^^^^ meta.number.integer.other.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^ constant.numeric.base.clojure
;    ^^^^ constant.numeric.value.clojure
;        ^ - meta.number
;         ^^^^^^^^^^ meta.number.integer.other.clojure
;         ^ keyword.operator.arithmetic.clojure
;          ^^^ constant.numeric.base.clojure
;             ^^^^^^ constant.numeric.value.clojure
;                   ^ - meta.number
;                    ^^^^^^^^^^ meta.number.integer.other.clojure
;                    ^ keyword.operator.arithmetic.clojure
;                     ^^^ constant.numeric.base.clojure
;                        ^^^^^^ constant.numeric.value.clojure
;                              ^ - meta.number
;                               ^^^^^^^ meta.number.integer.other.clojure
;                               ^ keyword.operator.arithmetic.clojure
;                                ^^ constant.numeric.base.clojure
;                                  ^^^^ constant.numeric.value.clojure
;                                      ^ - meta.number
;                                       ^^^^^^^^^^ meta.number.integer.other.clojure
;                                       ^ keyword.operator.arithmetic.clojure
;                                        ^^^ constant.numeric.base.clojure
;                                           ^^^^^^ constant.numeric.value.clojure
;                                                 ^ - meta.number
;                                                  ^^^^^^^^^^ meta.number.integer.other.clojure
;                                                  ^ keyword.operator.arithmetic.clojure
;                                                   ^^^ constant.numeric.base.clojure
;                                                      ^^^^^^ constant.numeric.value.clojure
  0/10 10/20 30/0
; ^^^^ meta.number.rational.decimal.clojure
; ^ constant.numeric.value.clojure
;  ^ punctuation.separator.rational.clojure
;   ^ constant.numeric.value.clojure
;     ^ - meta.number
;      ^^^^^ meta.number.rational.decimal.clojure
;      ^^ constant.numeric.value.clojure
;        ^ punctuation.separator.rational.clojure
;         ^^ constant.numeric.value.clojure
;           ^ - meta.number
;            ^^^^ meta.number.rational.decimal.clojure
;            ^^ constant.numeric.value.clojure
;              ^ punctuation.separator.rational.clojure
;               ^ constant.numeric.value.clojure
  +0/10 +10/20 +30/0
; ^^^^^ meta.number.rational.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^ constant.numeric.value.clojure
;   ^ punctuation.separator.rational.clojure
;    ^^ constant.numeric.value.clojure
;      ^ - meta.number
;       ^^^^^^ meta.number.rational.decimal.clojure
;       ^ keyword.operator.arithmetic.clojure
;        ^^ constant.numeric.value.clojure
;          ^ punctuation.separator.rational.clojure
;           ^^ constant.numeric.value.clojure
;             ^ - meta.number
;              ^^^^^ meta.number.rational.decimal.clojure
;              ^ keyword.operator.arithmetic.clojure
;               ^^ constant.numeric.value.clojure
;                 ^ punctuation.separator.rational.clojure
;                  ^ constant.numeric.value.clojure
  -0/10 -10/20 -30/0
; ^^^^^ meta.number.rational.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^ constant.numeric.value.clojure
;   ^ punctuation.separator.rational.clojure
;    ^^ constant.numeric.value.clojure
;      ^ - meta.number
;       ^^^^^^ meta.number.rational.decimal.clojure
;       ^ keyword.operator.arithmetic.clojure
;        ^^ constant.numeric.value.clojure
;          ^ punctuation.separator.rational.clojure
;           ^^ constant.numeric.value.clojure
;             ^ - meta.number
;              ^^^^^ meta.number.rational.decimal.clojure
;              ^ keyword.operator.arithmetic.clojure
;               ^^ constant.numeric.value.clojure
;                 ^ punctuation.separator.rational.clojure
;                  ^ constant.numeric.value.clojure
  1234M 1234.0M 1234.1234M
; ^^^^^ meta.number.float.decimal.clojure
;     ^ constant.numeric.suffix.clojure
;      ^ - meta.number
;       ^^^^^^^ meta.number.float.decimal.clojure
;       ^^^^ constant.numeric.value.clojure
;           ^ punctuation.separator.decimal.clojure
;            ^ constant.numeric.value.clojure
;             ^ constant.numeric.suffix.clojure
;              ^ - meta.number
;               ^^^^^^^^^^ meta.number.float.decimal.clojure
;               ^^^^ constant.numeric.value.clojure
;                   ^ punctuation.separator.decimal.clojure
;                    ^^^^ constant.numeric.value.clojure
;                        ^ constant.numeric.suffix.clojure
  +1234M +1234.0M +1234.1234M
; ^^^^^^ meta.number.float.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^^^ constant.numeric.value.clojure
;      ^ constant.numeric.suffix.clojure
;       ^ - meta.number
;        ^^^^^^^^ meta.number.float.decimal.clojure
;        ^ keyword.operator.arithmetic.clojure
;         ^^^^ constant.numeric.value.clojure
;             ^ punctuation.separator.decimal.clojure
;              ^ constant.numeric.value.clojure
;               ^ constant.numeric.suffix.clojure
;                ^ - meta.number
;                 ^^^^^^^^^^^ meta.number.float.decimal.clojure
;                 ^ keyword.operator.arithmetic.clojure
;                  ^^^^ constant.numeric.value.clojure
;                      ^ punctuation.separator.decimal.clojure
;                       ^^^^ constant.numeric.value.clojure
;                           ^ constant.numeric.suffix.clojure
  -1234M -1234.0M -1234.1234M
; ^^^^^^ meta.number.float.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^^^ constant.numeric.value.clojure
;      ^ constant.numeric.suffix.clojure
;       ^ - meta.number
;        ^^^^^^^^ meta.number.float.decimal.clojure
;        ^ keyword.operator.arithmetic.clojure
;         ^^^^ constant.numeric.value.clojure
;             ^ punctuation.separator.decimal.clojure
;              ^ constant.numeric.value.clojure
;               ^ constant.numeric.suffix.clojure
;                ^ - meta.number
;                 ^^^^^^^^^^^ meta.number.float.decimal.clojure
;                 ^ keyword.operator.arithmetic.clojure
;                  ^^^^ constant.numeric.value.clojure
;                      ^ punctuation.separator.decimal.clojure
;                       ^^^^ constant.numeric.value.clojure
;                           ^ constant.numeric.suffix.clojure
  1234e10 1234E10M 1234.1234e10M 1234.1234E10M
; ^^^^^^^ meta.number.float.decimal.clojure
; ^^^^^^^ constant.numeric.value.clojure
;        ^ - meta.number
;         ^^^^^^^ meta.number.float.decimal.clojure
;         ^^^^^^^ constant.numeric.value.clojure
;                ^ constant.numeric.suffix.clojure
;                 ^ - meta.number
;                  ^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                  ^^^^^^^^^^^^ constant.numeric.value.clojure
;                      ^ punctuation.separator.decimal.clojure
;                              ^ constant.numeric.suffix.clojure
;                               ^ - meta.number
;                                ^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                ^^^^^^^^^^^^ constant.numeric.value.clojure
;                                    ^ punctuation.separator.decimal.clojure
;                                            ^ constant.numeric.suffix.clojure
  +1234e10 +1234E10M +1234.1234e10M +1234.1234E10M
; ^^^^^^^^ meta.number.float.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^^^^^^ constant.numeric.value.clojure
;         ^ - meta.number
;          ^^^^^^^^^ meta.number.float.decimal.clojure
;          ^ keyword.operator.arithmetic.clojure
;           ^^^^^^^ constant.numeric.value.clojure
;                  ^ constant.numeric.suffix.clojure
;                   ^ - meta.number
;                    ^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                    ^ keyword.operator.arithmetic.clojure
;                     ^^^^^^^^^^^^ constant.numeric.value.clojure
;                         ^ punctuation.separator.decimal.clojure
;                                 ^ constant.numeric.suffix.clojure
;                                  ^ - meta.number
;                                   ^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                   ^ keyword.operator.arithmetic.clojure
;                                    ^^^^^^^^^^^^ constant.numeric.value.clojure
;                                        ^ punctuation.separator.decimal.clojure
;                                                ^ constant.numeric.suffix.clojure
  -1234e10 -1234E10M -1234.1234e10M -1234.1234E10M
; ^^^^^^^^ meta.number.float.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^^^^^^ constant.numeric.value.clojure
;         ^ - meta.number
;          ^^^^^^^^^ meta.number.float.decimal.clojure
;          ^ keyword.operator.arithmetic.clojure
;           ^^^^^^^ constant.numeric.value.clojure
;                  ^ constant.numeric.suffix.clojure
;                   ^ - meta.number
;                    ^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                    ^ keyword.operator.arithmetic.clojure
;                     ^^^^^^^^^^^^ constant.numeric.value.clojure
;                         ^ punctuation.separator.decimal.clojure
;                                 ^ constant.numeric.suffix.clojure
;                                  ^ - meta.number
;                                   ^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                   ^ keyword.operator.arithmetic.clojure
;                                    ^^^^^^^^^^^^ constant.numeric.value.clojure
;                                        ^ punctuation.separator.decimal.clojure
;                                                ^ constant.numeric.suffix.clojure
  1234.1234e+10 1234.1234E+10 1234.1234e-10 1234.1234E-10
; ^^^^^^^^^^^^^ meta.number.float.decimal.clojure
; ^^^^^^^^^^^^^ constant.numeric.value.clojure
;     ^ punctuation.separator.decimal.clojure
;              ^ - meta.number
;               ^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;               ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                   ^ punctuation.separator.decimal.clojure
;                            ^ - meta.number
;                             ^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                             ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                                 ^ punctuation.separator.decimal.clojure
;                                          ^ - meta.number
;                                           ^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                           ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                                               ^ punctuation.separator.decimal.clojure
  +1234.1234e+10M +1234.1234E+10M +1234.1234e-10M +1234.1234E-10M
; ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;      ^ punctuation.separator.decimal.clojure
;               ^ constant.numeric.suffix.clojure
;                ^ - meta.number
;                 ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                 ^ keyword.operator.arithmetic.clojure
;                  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                      ^ punctuation.separator.decimal.clojure
;                               ^ constant.numeric.suffix.clojure
;                                ^ - meta.number
;                                 ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                 ^ keyword.operator.arithmetic.clojure
;                                  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                                      ^ punctuation.separator.decimal.clojure
;                                               ^ constant.numeric.suffix.clojure
;                                                ^ - meta.number
;                                                 ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                                 ^ keyword.operator.arithmetic.clojure
;                                                  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                                                      ^ punctuation.separator.decimal.clojure
;                                                               ^ constant.numeric.suffix.clojure
  -1234.1234e+10M -1234.1234E+10M -1234.1234e-10M -1234.1234E-10M
; ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
; ^ keyword.operator.arithmetic.clojure
;  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;      ^ punctuation.separator.decimal.clojure
;               ^ constant.numeric.suffix.clojure
;                ^ - meta.number
;                 ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                 ^ keyword.operator.arithmetic.clojure
;                  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                      ^ punctuation.separator.decimal.clojure
;                               ^ constant.numeric.suffix.clojure
;                                ^ - meta.number
;                                 ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                 ^ keyword.operator.arithmetic.clojure
;                                  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                                      ^ punctuation.separator.decimal.clojure
;                                               ^ constant.numeric.suffix.clojure
;                                                ^ - meta.number
;                                                 ^^^^^^^^^^^^^^^ meta.number.float.decimal.clojure
;                                                 ^ keyword.operator.arithmetic.clojure
;                                                  ^^^^^^^^^^^^^ constant.numeric.value.clojure
;                                                      ^ punctuation.separator.decimal.clojure
;                                                               ^ constant.numeric.suffix.clojure

; ## Breaks

  10,20,30
; ^^ meta.number
;   ^ comment.punctuation.comma.clojure
;    ^^ meta.number
  10;20;30
; ^^ meta.number
;   ^ comment.line.clojure punctuation.definition.comment
  10'20'30
; ^^ meta.number
;   ^ keyword.operator.macro.clojure
  10`20`30
; ^^ meta.number
;   ^ keyword.operator.macro.clojure
  10#20#30
; ^^ meta.number
;   ^ keyword.operator.macro.clojure

; ## Unaffected

  '1234 '+1234 '-1234
; ^ keyword.operator.macro.clojure
;  ^^^^ meta.number

  (10 20 30) [10 20 30]
; ^ punctuation.section.parens.begin.clojure
;  ^^ meta.number
;            ^ punctuation.section.brackets.begin.clojure
;             ^^ meta.number

  ([100 200])
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.brackets.begin.clojure
;   ^^^ meta.number
;       ^^^ meta.number
;          ^ punctuation.section.brackets.end.clojure
;           ^ punctuation.section.parens.end.clojure
  ([0x10 0x20])
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.brackets.begin.clojure
;   ^^^^ meta.number
;        ^^^^ meta.number
;            ^ punctuation.section.brackets.end.clojure
;             ^ punctuation.section.parens.end.clojure
  ([2r100 16r200])
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.brackets.begin.clojure
;   ^^^^^ meta.number
;         ^^^^^^ meta.number
;               ^ punctuation.section.brackets.end.clojure
;                ^ punctuation.section.parens.end.clojure
  ([10/20 30/40])
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.brackets.begin.clojure
;   ^^^^^ meta.number
;         ^^^^^ meta.number
;              ^ punctuation.section.brackets.end.clojure
;               ^ punctuation.section.parens.end.clojure
  ([100.100 200.200])
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.brackets.begin.clojure
;   ^^^^^^^ meta.number
;           ^^^^^^^ meta.number
;                  ^ punctuation.section.brackets.end.clojure
;                   ^ punctuation.section.parens.end.clojure
  ([1e+10 2e-20])
; ^ punctuation.section.parens.begin.clojure
;  ^ punctuation.section.brackets.begin.clojure
;   ^^^^^ meta.number
;         ^^^^^ meta.number
;              ^ punctuation.section.brackets.end.clojure
;               ^ punctuation.section.parens.end.clojure

; ## Invalid numbers

  01234 +01234 -01234 '01234
; ^^^^^ invalid.deprecated.clojure
;      ^- invalid
;       ^^^^^^ invalid.deprecated.clojure
;              ^^^^^^ invalid.deprecated.clojure
;                     ^ keyword.operator.macro.clojure
;                      ^^^^^ invalid.deprecated.clojure
  01234N +01234N -01234N '01234N
; ^^^^^^ invalid.deprecated.clojure
;       ^- invalid
;        ^^^^^^^ invalid.deprecated.clojure
;                ^^^^^^^ invalid.deprecated.clojure
;                        ^ keyword.operator.macro.clojure
  10-20 10+20 1234n 1234m 1234. 1234.M
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.number
  10.0/20 10/20.0 10/+20 10/-20
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.number
  10:20:30
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.number
  1r000
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.number

; ## Ignore

  ; valid symbols
  .1234 .1234M
; ^^^^^^^^^^^^ - constant



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
;     ^ keyword.operator.macro.clojure
  blah~blah
;     ^ keyword.operator.macro.clojure
  blah@blah
;     ^ keyword.operator.macro.clojure
  blah^blah
;     ^ keyword.operator.macro.clojure
  blah\blah
;     ^^^^^ constant.character.clojure

; ## Unaffected

  'blah 'blah:blah
; ^ keyword.operator.macro.clojure
;  ^- keyword.operator.macro.clojure
  [blah blah blah]

; ## Invalid

  //
  blah:
  blah::blah
  /blah
  blah/



; # Keywords

; Basic structure
  :blah
; ^ punctuation.definition.keyword.clojure
; ^^^^^ constant.other.keyword.clojure

  :! :$ :% :& :* :- :_ := :+ :| :< :> :. :/ :?
; ^^ constant.other.keyword.clojure
;   ^ - constant
;    ^^ constant.other.keyword.clojure
;       ^^ constant.other.keyword.clojure
;          ^^ constant.other.keyword.clojure
;             ^^ constant.other.keyword.clojure
;                ^^ constant.other.keyword.clojure
;                   ^^ constant.other.keyword.clojure
;                      ^^ constant.other.keyword.clojure
;                         ^^ constant.other.keyword.clojure
;                            ^^ constant.other.keyword.clojure
;                               ^^ constant.other.keyword.clojure
;                                  ^^ constant.other.keyword.clojure
;                                     ^^ constant.other.keyword.clojure
;                                        ^^ constant.other.keyword.clojure
;                                           ^^ constant.other.keyword.clojure
  :++ :--
; ^^^ constant.other.keyword.clojure
;    ^ - constant
;     ^^^ constant.other.keyword.clojure
  :blah
; ^^^^^ constant.other.keyword.clojure
  :blah/blah
; ^^^^^^^^^^ constant.other.keyword.clojure
  :blah.blah
; ^^^^^^^^^^ constant.other.keyword.clojure
  :blah.blah/blah
; ^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  :blah.blah/blah.blah
; ^^^^^^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  :blah/blah/blah
; ^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  :blah1000
; ^^^^^^^^^ constant.other.keyword.clojure
  :blah1000.blah1000
; ^^^^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  :*blah*
; ^^^^^^^ constant.other.keyword.clojure
  :blah'blah'
; ^^^^^^^^^^^ constant.other.keyword.clojure
  :blah'''blah'''
; ^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  :blah:blah:blah
; ^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  :blah#blah#
; ^^^^^^^^^^^ constant.other.keyword.clojure
  ::blah///blah
; ^^^^^^^^^^^^^ constant.other.keyword.clojure
  ://blah
; ^^^^^^^ constant.other.keyword.clojure
  :///
; ^^^^ constant.other.keyword.clojure
  :/blah/blah
; ^^^^^^^^^^^ constant.other.keyword.clojure
  :blah//
; ^^^^^^^ constant.other.keyword.clojure

; ## These are valid, unlike symbols

  :' :# :### :10 :10.20
; ^^ constant.other.keyword.clojure
;   ^ - constant
;    ^^ constant.other.keyword.clojure
;       ^^^^ constant.other.keyword.clojure
;            ^^^ constant.other.keyword.clojure
;                ^^^^^^ constant.other.keyword.clojure

; ## Breaks

  :,blah
; ^ - constant
;  ^ comment.punctuation.comma.clojure
  :;blah
; ^ - constant
;  ^ comment.line.clojure punctuation.definition.comment
  :blah,:blah,:blah
; ^^^^^ constant.other.keyword.clojure
;      ^ comment.punctuation.comma.clojure
;       ^^^^^ constant.other.keyword.clojure
  :blah;:blah;:blah
; ^^^^^ constant.other.keyword.clojure
;      ^ comment.line.clojure punctuation.definition.comment
  :blah`blah
; ^^^^^ constant.other.keyword.clojure
;      ^ keyword.operator.macro.clojure
  :blah~blah
; ^^^^^ constant.other.keyword.clojure
  :blah@blah
;      ^ keyword.operator.macro.clojure
  :blah^blah
; ^^^^^ constant.other.keyword.clojure
;      ^ keyword.operator.macro.clojure
  :blah\blah
; ^^^^^ constant.other.keyword.clojure
;      ^^^^^ constant.character.clojure

; ## These are invalid, but I couldn't get the regex right

  :
; ^^ - constant
  :::blah
; ^^^^^^^ - constant
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
;   ^ - constant.character.clojure
;    ^^ constant.character.clojure
;      ^ - constant.character.clojure
;       ^^ constant.character.clojure
; ^^ constant.character.clojure
  \newline
; ^^^^^^^^ constant.character.clojure
  blah \c blah \c
;      ^^ constant.character.clojure
;        ^ - constant.character.clojure
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
;   ^ keyword.operator.macro.clojure
  \''blah
; ^^ constant.character.clojure
;   ^ keyword.operator.macro.clojure
  \~~blah
; ^^ constant.character.clojure
;   ^ keyword.operator.macro.clojure
  \@@blah
; ^^ constant.character.clojure
;   ^ keyword.operator.macro.clojure
  \~@~@blah
; ^^ constant.character.clojure
;   ^^^ keyword.operator.macro.clojure
  \##{}
; ^^ constant.character.clojure
;   ^^ punctuation.section.braces.begin.clojure
  \^^blah
; ^^ constant.character.clojure
;   ^ keyword.operator.macro.clojure

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
;             ^ - constant.character.clojure
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
; ^ keyword.operator.macro.clojure
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
; ^ keyword.operator.macro.clojure
;  ^^ string.regexp.clojure
;  ^ string.regexp.clojure punctuation.definition.string.begin.clojure
;   ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #" blah "
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^ string.regexp.clojure
;  ^ string.regexp.clojure punctuation.definition.string.begin.clojure
;         ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #"blah{1}"
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^^ string.regexp.clojure
;  ^ string.regexp.clojure punctuation.definition.string.begin.clojure
;       ^^^ string.regexp.clojure keyword.operator.quantifier.regexp
;          ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #"
; ^ keyword.operator.macro.clojure
;  ^ string.regexp.clojure punctuation.definition.string.begin.clojure
  blah{1}
; ^^^^ string.regexp.clojure
;     ^^^ string.regexp.clojure keyword.operator.quantifier.regexp
  "
; ^ string.regexp.clojure punctuation.definition.string.end.clojure

  #"
; ^ keyword.operator.macro.clojure
;  ^ string.regexp.clojure punctuation.definition.string.begin.clojure
  \"
; ^^ string.regexp.clojure constant.character.escape.regexp
  (unclosed paren ->
; ^ string.regexp.clojure
  "
; ^ string.regexp.clojure punctuation.definition.string.end.clojure

 #"\\"
; ^^^^ string.regexp.clojure
; ^ punctuation.definition.string.begin.clojure
;  ^^ constant.character.escape.regexp
;    ^ punctuation.definition.string.end.clojure

 #"\\\""
; ^^^^^^ string.regexp.clojure
; ^ punctuation.definition.string.begin.clojure
;  ^^^^ constant.character.escape.regexp
;      ^ punctuation.definition.string.end.clojure

 #"\\\\"
; ^^^^^^ string.regexp.clojure
; ^ punctuation.definition.string.begin.clojure
;  ^^^^ constant.character.escape.regexp
;      ^ punctuation.definition.string.end.clojure

; ## Invalid

  #"{1}"
;   ^^^ string.regexp.clojure source.regexp invalid.illegal.unexpected-quantifier.regexp

  # ""
; ^ keyword.operator.macro.clojure
;  ^^^- string.regexp.clojure



; # Dispatch

  #inst"0000"
; ^^^^^ keyword.operator.macro.clojure

  #blah blah
; ^^^^^ keyword.operator.macro.clojure
;      ^^^^^^- keyword.operator.macro.clojure

  #blah1000.blah1000/blah1000 blah
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.operator.macro.clojure
;                            ^^^^^^- keyword.operator.macro.clojure

  #blah:blah blah
; ^^^^^^^^^^ keyword.operator.macro.clojure
;           ^^^^^^- keyword.operator.macro.clojure

  # inst "0000"
; ^ keyword.operator.macro.clojure
;   ^^^^ keyword.operator.macro.clojure
;       ^- keyword.operator.macro.clojure
;        ^^^^^^ string.quoted.double.clojure

  #
; ^ keyword.operator.macro.clojure
    inst
    "0000"
;   ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure

  #'blah
; ^^ keyword.operator.macro.clojure
;   ^^^^^- keyword.operator.macro.clojure

  #'
; ^^ keyword.operator.macro.clojure
  ; blah
; ^^^^^^^ comment.line.clojure
  blah
; ^^^^^- keyword.operator.macro.clojure

  #(list % %1)
; ^ keyword.operator.macro.clojure
;  ^- keyword.operator.macro.clojure

  #[]
; ^ keyword.operator.macro.clojure
;  ^- keyword.operator.macro.clojure

  #_[]
; ^^ keyword.operator.macro.clojure
;   ^- keyword.operator.macro.clojure

  #?[]
; ^^ keyword.operator.macro.clojure
;   ^- keyword.operator.macro.clojure

  #:blah{}
; ^ keyword.operator.macro.clojure
;  ^^^^^ constant.other.keyword.clojure

  ##NaN ##Inf ##-Inf
; ^^ keyword.operator.macro.clojure
;   ^^^ constant.other.symbolic.clojure
;       ^^ keyword.operator.macro.clojure
;         ^^^ constant.other.symbolic.clojure
;             ^^ keyword.operator.macro.clojure
;               ^^^^ constant.other.symbolic.clojure

  ##
; ^^ keyword.operator.macro.clojure
  ; blah
; ^^^^^^^ comment.line.clojure
  NaN
; ^^^ constant.other.symbolic.clojure

; ## Breaks

  #blah\newline
; ^^^^^ keyword.operator.macro.clojure
;      ^^^^^^^^ constant.character.clojure

  #blah`blah
; ^^^^^ keyword.operator.macro.clojure
;       ^^^^^- keyword.operator.macro.clojure

  #_0.000692025M
; ^^ keyword.operator.macro.clojure
;   ^^^^^^^^^^^^ meta.number

  #_ 0.000692025M
; ^^ keyword.operator.macro.clojure
;    ^^^^^^^^^^^^ meta.number

  #_blah
; ^^ keyword.operator.macro.clojure
;   ^^^^- keyword.operator.macro.clojure

; ## Unaffected

  '#'blah (#'blah blah)
; ^^ keyword.operator.macro.clojure
;    ^^^^^- keyword.operator.macro.clojure
;         ^ punctuation.section.parens.begin.clojure
;          ^^ keyword.operator.macro.clojure
;            ^^^^^^^^^- keyword.operator.macro.clojure
;                     ^ punctuation.section.parens.end.clojure
  '#inst"0000" (#inst"0000" blah)
;  ^^^^^ keyword.operator.macro.clojure
;       ^^^^^^ string.quoted.double.clojure
;              ^ punctuation.section.parens.begin.clojure
;               ^^^^^ keyword.operator.macro.clojure
;                    ^^^^^^ string.quoted.double.clojure

  # :blah{}
; ^ keyword.operator.macro.clojure
;   ^^^^^ constant.other.keyword.clojure

  # ' blah
; ^ keyword.operator.macro.clojure
;   ^ keyword.operator.macro.clojure
;          ^ comment.line.clojure punctuation.definition.comment

; ## Invalid

  #111[]
; ^ keyword.operator.macro.clojure
;  ^^^ meta.number
  (blah #) )
;       ^ keyword.operator.macro.clojure
;        ^ invalid.illegal.clojure

  # #NaN
; ^ keyword.operator.macro.clojure
;   ^^^^ keyword.operator.macro.clojure

; ## Ignore

  #{}
; ^^ punctuation.section.braces.begin.clojure



; # Quoting and unquoting

; ## Quote

  '100
; ^ keyword.operator.macro.clojure
;  ^^^ meta.number

  'true
; ^ keyword.operator.macro.clojure
;  ^^^^ constant.language.clojure

  ':blah
; ^ keyword.operator.macro.clojure
;  ^^^^^ constant.other.keyword.clojure

  'blah
; ^ keyword.operator.macro.clojure
;  ^^^^^- keyword.operator.macro.clojure

  ' blah
; ^ keyword.operator.macro.clojure
;  ^^^^^^- keyword.operator.macro.clojure

  '
; ^ keyword.operator.macro.clojure
;  ^- keyword.operator.macro.clojure
    blah
;   ^^^^^- keyword.operator.macro.clojure

  'blah:blah
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^^^- keyword.operator.macro.clojure

  'blah.blah/blah1000
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^^^^^^^^^^^^- keyword.operator.macro.clojure

  '()
; ^ keyword.operator.macro.clojure
;  ^- keyword.operator.macro.clojure

  '(10 20 30)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^ meta.number

  '(blah blah)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure

  '(quote blah)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^^ variable.function.clojure

; ## Backquote

  `blah
; ^ keyword.operator.macro.clojure
;  ^^^^^- keyword.operator.macro.clojure

; ## Unquote

  ~blah
; ^ keyword.operator.macro.clojure
;  ^^^^^- keyword.operator.macro.clojure

  ~100
; ^ keyword.operator.macro.clojure
;  ^^^ meta.number

  `(blah ~blah)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^ keyword.operator.macro.clojure
;         ^^^^- keyword.operator.macro.clojure

  `(blah ~100)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^ keyword.operator.macro.clojure
;         ^^^ meta.number

; ## Unquote-splicing

  ~@blah
; ^^ keyword.operator.macro.clojure
;   ^^^^^- keyword.operator.macro.clojure

  ~@[10 20 30]
; ^^ keyword.operator.macro.clojure
;   ^ punctuation.section.brackets.begin.clojure
;    ^^ meta.number

  `(blah ~@blah)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^^ keyword.operator.macro.clojure
;          ^^^^- keyword.operator.macro.clojure

  `(blah ~@[10 20 30])
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;        ^^ keyword.operator.macro.clojure
;          ^ punctuation.section.brackets.begin.clojure
;           ^^ meta.number

; ## Invalid

  ( ') )
; ^ punctuation.section.parens.begin.clojure
;   ^ keyword.operator.macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure

  ( `) )
; ^ punctuation.section.parens.begin.clojure
;   ^ keyword.operator.macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure

  ( `) )
; ^ punctuation.section.parens.begin.clojure
;   ^ keyword.operator.macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure

  ( ~@) )
; ^ punctuation.section.parens.begin.clojure
;   ^^ keyword.operator.macro.clojure
;     ^ invalid.illegal.clojure
;       ^ punctuation.section.parens.end.clojure



; # Deref

  @100
; ^ keyword.operator.macro.clojure
;  ^^^ meta.number

  @true
; ^ keyword.operator.macro.clojure
;  ^^^^ constant.language.clojure

  @blah
; ^ keyword.operator.macro.clojure
;  ^^^^^- keyword.operator.macro.clojure

  @:blah
; ^ keyword.operator.macro.clojure
;  ^^^^^ constant.other.keyword.clojure

  @(atom blah)
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure

  @@@blah
; ^^^ keyword.operator.macro.clojure
;    ^^^^^- keyword.operator.macro.clojure

  @'blah
; ^^ keyword.operator.macro.clojure
;  ^ keyword.operator.macro.clojure

  @~blah
; ^^ keyword.operator.macro.clojure
;  ^ keyword.operator.macro.clojure

  @#blah[]
; ^^^^^^ keyword.operator.macro.clojure

; ## Breaks

  blah@blah
;     ^ keyword.operator.macro.clojure
;      ^^^^^- keyword.operator.macro.clojure

  100@blah
; ^^^ meta.number
;    ^ keyword.operator.macro.clojure
;     ^^^^^- keyword.operator.macro.clojure

; ## Invalid

  ( @) )
; ^ punctuation.section.parens.begin.clojure
;   ^ keyword.operator.macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure



; # Metadata

  ^File
; ^ keyword.operator.macro.clojure
;  ^^^^^- keyword.operator.macro.clojure

  ^File blah
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^^^- keyword.operator.macro.clojure

  ^:private blah
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^ constant.other.keyword.clojure

  ^{:private true} blah
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.braces.begin.clojure
;   ^^^^^^^^ constant.other.keyword.clojure
;            ^^^^ constant.language.clojure
;                ^ punctuation.section.braces.end.clojure

  ; Consequent metadata is merged
  ^:private ^:dynamic blah
; ^ keyword.operator.macro.clojure
;  ^^^^^^^^ constant.other.keyword.clojure
;           ^ keyword.operator.macro.clojure
;            ^^^^^^^^ constant.other.keyword.clojure

  ; Useless but accepted by Clojure reader
  ^^^{10 20}{30 40}{:tag File} blah
; ^^^ keyword.operator.macro.clojure
;    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- keyword.operator.macro.clojure
;    ^ punctuation.section.braces.begin.clojure
;     ^^ meta.number
;        ^^ meta.number
;          ^ punctuation.section.braces.end.clojure
;           ^ punctuation.section.braces.begin.clojure
;            ^^ meta.number
;               ^^ meta.number
;                 ^ punctuation.section.braces.end.clojure
;                  ^ punctuation.section.braces.begin.clojure
;                   ^^^^ constant.other.keyword.clojure

; ## Breaks

  blah^blah
;     ^ keyword.operator.macro.clojure
;      ^^^^^- keyword.operator.macro.clojure

  100^blah
; ^^^ meta.number
;    ^ keyword.operator.macro.clojure
;     ^^^^^- keyword.operator.macro.clojure

; ## Invalid

  ( ^) )
; ^ punctuation.section.parens.begin.clojure
;   ^ keyword.operator.macro.clojure
;    ^ invalid.illegal.clojure
;      ^ punctuation.section.parens.end.clojure



; # Brackets

  []
; ^ punctuation.section.brackets.begin.clojure
;  ^ punctuation.section.brackets.end.clojure

  [10, 20, 30]
; ^ punctuation.section.brackets.begin.clojure
;  ^^ meta.number
;    ^ comment.punctuation.comma.clojure
;      ^^ meta.number
;        ^ comment.punctuation.comma.clojure
;          ^^ meta.number
;            ^ punctuation.section.brackets.end.clojure

  [10
; ^ punctuation.section.brackets.begin.clojure
;  ^^ meta.number
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   blah
   #inst"0000"
;  ^^^^^ keyword.operator.macro.clojure
;       ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
   [20]]
;  ^ punctuation.section.brackets.begin.clojure
;   ^^ meta.number
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
;   ^^ meta.number
;     ^ comment.punctuation.comma.clojure
;       ^^ meta.number
;         ^ comment.punctuation.comma.clojure
;           ^^ meta.number
;             ^ punctuation.section.braces.end.clojure

  #{10
; ^^ punctuation.section.braces.begin.clojure
;   ^^ meta.number
    ; ---
;   ^ comment.line.clojure punctuation.definition.comment
    blah
    #inst"0000"
;   ^^^^^ keyword.operator.macro.clojure
;        ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
    {20}}
;   ^ punctuation.section.braces.begin.clojure
;    ^^ meta.number
;      ^^ punctuation.section.braces.end.clojure

  {10 20, 30 40}
; ^ punctuation.section.braces.begin.clojure
;  ^^ meta.number
;     ^^ meta.number
;       ^ comment.punctuation.comma.clojure
;         ^^ meta.number
;            ^^ meta.number
;              ^ punctuation.section.braces.end.clojure

  {:blah [10 20 30]
; ^ punctuation.section.braces.begin.clojure
;  ^^^^^ constant.other.keyword.clojure
;        ^ punctuation.section.brackets.begin.clojure
;         ^^ meta.number
;            ^^ meta.number
;               ^^ meta.number
;                 ^ punctuation.section.brackets.end.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   :blahblah #{10 20 30}}
;  ^^^^^^^^^ constant.other.keyword.clojure
;            ^^ punctuation.section.braces.begin.clojure
;              ^^ meta.number
;                 ^^ meta.number
;                    ^^ meta.number
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
;                 ^^ meta.number
;                    ^ string.quoted.double.clojure punctuation.definition.string.begin.clojure
;                     ^ string.quoted.double.clojure punctuation.definition.string.end.clojure
;                       ^ punctuation.section.brackets.begin.clojure
;                        ^^ meta.number
;                           ^^ meta.number
;                             ^ punctuation.section.brackets.end.clojure
;                              ^ punctuation.section.parens.end.clojure

  #(blah blah true 10 "" [10 20])
; ^ keyword.operator.macro.clojure
;  ^ punctuation.section.parens.begin.clojure
;   ^^^^ variable.function.clojure
;       ^^^^^^^^^^^^^^^^^^^^^^^^^- variable.function.clojure
;             ^^^^ constant.language.clojure
;                  ^^ meta.number
;                               ^ punctuation.section.parens.end.clojure

; ## Ignore operator

  (true blah :blah)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^ constant.language.clojure

  (10 blah :blah)
; ^ punctuation.section.parens.begin.clojure
;  ^^ meta.number

  (:blah blah 10)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^ constant.other.keyword.clojure

  #(true blah 10)
; ^ keyword.operator.macro.clojure
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
;   ^^^^^ constant.other.keyword.clojure
   )
;  ^ punctuation.section.parens.end.clojure

; ## Invalid

  ( ) )
; ^ punctuation.section.parens.begin.clojure
;   ^ punctuation.section.parens.end.clojure
;     ^ invalid.illegal.clojure



; # fn

  (fn [])
;  ^^ storage.modifier.fn.clojure
;     ^ punctuation.section.brackets.begin.clojure
;      ^ punctuation.section.brackets.end.clojure
;       ^ punctuation.section.parens.end.clojure

  (fn declare-noindex [] blah)
;  ^^ storage.modifier.fn.clojure
;     ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
;                       ^^^^^^^- storage
;                       ^^^^^^^- entity

  (fn declare-noindex
;  ^^ storage.modifier.fn.clojure
;     ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
;                    ^- entity
    ([] blah)
    ([_] blah))

  ; Invalid but take care anyway
  (fn declare-noindex dont-declare [])
;  ^^ storage.modifier.fn.clojure
;     ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
;                    ^^^^- storage
;                    ^^^^- entity



; # defs

; ## Normal def

  (def declare-def)
;  ^^^ storage.modifier.def.clojure
;      ^^^^^^^^^^^ entity.name.function.clojure

  (def declare-def dont-declare)
; ^ punctuation.section.parens.begin.clojure
;  ^^^ storage.modifier.def.clojure
;      ^^^^^^^^^^^ entity.name.function.clojure
;                 ^^^^^^^^^^^^- storage
;                 ^^^^^^^^^^^^- entity

  (def λ nil)
;  ^^^ storage.modifier.def.clojure
;      ^ entity.name.function.clojure
;        ^^^ constant.language.clojure

  (def 👽 nil)
;  ^^^ storage.modifier.def.clojure
;      ^ entity.name.function.clojure
;        ^^^ constant.language.clojure

  (def def nil)
;  ^^^ storage.modifier.def.clojure
;      ^^^ entity.name.function.clojure
;          ^^^ constant.language.clojure

  (
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   def
;  ^^^ storage.modifier.def.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   declare-def
;  ^^^^^^^^^^^ entity.name.function.clojure
   dont-declare
;  ^^^^^^^^^^^^^- storage
;  ^^^^^^^^^^^^^- entity
   )

  (defonce declare-defonce)
;  ^^^^^^^ storage.modifier.def.clojure
;          ^^^^^^^^^^^^^^^ entity.name.function.clojure

; ## Declare with metadata

  (def ^:private declare-def nil)
;  ^^^ storage.modifier.def.clojure
;      ^ keyword.operator.macro.clojure
;       ^^^^^^^^ constant.other.keyword.clojure
;                ^^^^^^^^^^^ entity.name.function.clojure
;                            ^^^ constant.language.clojure

  (def ^:private declare-def dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^ keyword.operator.macro.clojure
;       ^^^^^^^^ constant.other.keyword.clojure
;                ^^^^^^^^^^^ entity.name.function.clojure
;                           ^^^^^^^^^^^^^- storage
;                           ^^^^^^^^^^^^^- entity

  ; Consequent metadata is merged

  (def ^:private ^:dynamic declare-def nil)
;  ^^^ storage.modifier.def.clojure
;      ^ keyword.operator.macro.clojure
;       ^^^^^^^^ constant.other.keyword.clojure
;                ^ keyword.operator.macro.clojure
;                 ^^^^^^^^ constant.other.keyword.clojure
;                          ^^^^^^^^^^^ entity.name.function.clojure
;                                      ^^^ constant.language.clojure

  (def ^:private ^:dynamic declare-def dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^ keyword.operator.macro.clojure
;       ^^^^^^^^ constant.other.keyword.clojure
;                ^ keyword.operator.macro.clojure
;                 ^^^^^^^^ constant.other.keyword.clojure
;                          ^^^^^^^^^^^ entity.name.function.clojure
;                                     ^^^^^^^^^^^^^- storage
;                                     ^^^^^^^^^^^^^- entity

  (
   def
;  ^^^ storage.modifier.def.clojure
   ; ---
   ^
;  ^ keyword.operator.macro.clojure
   ; ---
   {:private
;  ^ punctuation.section.braces.begin.clojure
;   ^^^^^^^^ constant.other.keyword.clojure
   ; ---
    true}
;   ^^^^ constant.language.clojure
;       ^ punctuation.section.braces.end.clojure
   ; ---
   declare-def
;  ^^^^^^^^^^^ entity.name.function.clojure
   ; ---
   dont-declare
;  ^^^^^^^^^^^^^- storage
;  ^^^^^^^^^^^^^- entity
   )

  (defonce ^:private declare-defonce nil)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^^^ storage.modifier.def.clojure
;          ^ keyword.operator.macro.clojure
;           ^^^^^^^^ constant.other.keyword.clojure
;                    ^^^^^^^^^^^^^^^ entity.name.function.clojure
;                                    ^^^ constant.language.clojure

  ; Useless but accepted by Clojure reader
  (^{10 20} def ^:private declare-def dont-declare)
;  ^ keyword.operator.macro.clojure
;   ^ punctuation.section.braces.begin.clojure
;    ^^ meta.number
;       ^^ meta.number
;         ^ punctuation.section.braces.end.clojure
;           ^^^ storage.modifier.def.clojure
;               ^ keyword.operator.macro.clojure
;                ^^^^^^^^ constant.other.keyword.clojure
;                         ^^^^^^^^^^^ entity.name.function.clojure
;                                    ^^^^^^^^^^^^^- storage
;                                    ^^^^^^^^^^^^^- entity

  ; Useless but accepted by Clojure reader
  (def ^^^{10 20}{30 40}{:private true} declare-def dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^^^ keyword.operator.macro.clojure
;         ^ punctuation.section.braces.begin.clojure
;          ^^ meta.number
;             ^^ meta.number
;               ^ punctuation.section.braces.end.clojure
;                ^ punctuation.section.braces.begin.clojure
;                 ^^ meta.number
;                    ^^ meta.number
;                      ^ punctuation.section.braces.end.clojure
;                       ^ punctuation.section.braces.begin.clojure
;                        ^^^^^^^^ constant.other.keyword.clojure
;                                 ^^^^ constant.language.clojure
;                                     ^ punctuation.section.braces.end.clojure
;                                       ^^^^^^^^^^^ entity.name.function.clojure
;                                                  ^^^^^^^^^^^^^- storage
;                                                  ^^^^^^^^^^^^^- entity



; ## declare

  (declare declare-noindex)
;  ^^^^^^^ storage.modifier.declare.clojure
;          ^^^^^^^^^^^^^^^ entity.name.function.forward-decl.clojure
;         ^^^^^^^^^^^^^^^^^- storage



; ## Don't declare

  (def nil dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^^^ constant.language.clojure
;         ^^^^^^^^^^^^^- storage
;         ^^^^^^^^^^^^^- entity

  (def 10 dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^^ meta.number
;        ^^^^^^^^^^^^^- storage
;        ^^^^^^^^^^^^^- entity

  (def :blah dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^^^^^ constant.other.keyword.clojure
;           ^^^^^^^^^^^^^- storage
;           ^^^^^^^^^^^^^- entity

  (def 'blah dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^ keyword.operator.macro.clojure
;       ^^^^^^^^^^^^^^^^^- storage
;       ^^^^^^^^^^^^^^^^^- entity

  (def () dont-declare)
;  ^^^ storage.modifier.def.clojure
;      ^^^^^^^^^^^^^^^- storage
;      ^^^^^^^^^^^^^^^- entity

  (-def dont-declare)
;  ^^^^ variable.function.clojure
;      ^^^^^^^^^^^^^- storage
;      ^^^^^^^^^^^^^- entity

  (-def def dont-declare)
;  ^^^^ variable.function.clojure
;      ^^^^^^^^^^^^^^^^^- storage
;      ^^^^^^^^^^^^^^^^^- entity

; ## Invalid

  (def ^ ) )
;  ^^^ storage.modifier.def.clojure
;      ^ keyword.operator.macro.clojure
;        ^ invalid.illegal.clojure
;          ^ punctuation.section.parens.end.clojure



; # Function defs

  (defn declare-defn [] dont-declare)
;  ^^^^ storage.modifier.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                    ^^^^^^^^^^^^^^^- storage
;                    ^^^^^^^^^^^^^^^- entity

  (defn declare-defn [arg & args] dont-declare)
;  ^^^^ storage.modifier.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                    ^^^^^^^^^^^^^^^^^^^^^^^^^- storage
;                    ^^^^^^^^^^^^^^^^^^^^^^^^^- entity

  (defn ^:private declare-defn [arg & args] dont-declare)
;  ^^^^ storage.modifier.def.clojure
;       ^ keyword.operator.macro.clojure
;        ^^^^^^^^ constant.other.keyword.clojure
;                 ^^^^^^^^^^^^ entity.name.function.clojure
;                              ^^^^^^^^^^^^^^^^^^^^^^^^^- storage
;                              ^^^^^^^^^^^^^^^^^^^^^^^^^- entity

  (defn declare-defn
;  ^^^^ storage.modifier.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
    "docstring"
;   ^^^^^^^^^^^ string.quoted.double.clojure
    [arg & args]
;   ^^^^^^^^^^^^- storage
;   ^^^^^^^^^^^^- entity
    dont-declare)
;   ^^^^^^^^^^^^- storage
;   ^^^^^^^^^^^^- entity

  (defn
;  ^^^^ storage.modifier.def.clojure
    ^:private
;   ^ keyword.operator.macro.clojure
;    ^^^^^^^^ constant.other.keyword.clojure
    declare-defn
;   ^^^^^^^^^^^^ entity.name.function.clojure
    "docstring"
;   ^^^^^^^^^^^ string.quoted.double.clojure
    ([] dont-declare)
;   ^^^^^^^^^^^^^^^^^- storage
;   ^^^^^^^^^^^^^^^^^- entity
    ([_] dont-declare))
;   ^^^^^^^^^^^^^^^^^^^- storage
;   ^^^^^^^^^^^^^^^^^^^- entity

  (
   defn
;  ^^^^ storage.modifier.def.clojure
   declare-defn
;  ^^^^^^^^^^^^ entity.name.function.clojure
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
   {:private true}
;   ^^^^^^^^ constant.other.keyword.clojure
;            ^^^^ constant.language.clojure
   ([] dont-declare)
;  ^^^^^^^^^^^^^^^^^- storage
;  ^^^^^^^^^^^^^^^^^- entity
   ([_] dont-declare))
;  ^^^^^^^^^^^^^^^^^^^- storage
;  ^^^^^^^^^^^^^^^^^^^- entity

  (defn declare-defn [value] {:pre [(int? value)]}
;  ^^^^ storage.modifier.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                     ^^^^^- storage
;                     ^^^^^- entity
;                             ^^^^ constant.other.keyword.clojure
;                                    ^^^^ variable.function.clojure
    value)
;   ^^^^^- storage
;   ^^^^^- entity

  ; Invalid but take care anyway
  (defn declare-defn dont-declare [] dont-declare)
;  ^^^^ storage.modifier.def.clojure
;       ^^^^^^^^^^^^ entity.name.function.clojure
;                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- storage
;                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- entity

  (defmacro declare-defmacro [])
;  ^^^^^^^^ storage.modifier.def.clojure
;           ^^^^^^^^^^^^^^^^ entity.name.function.clojure



; # defmulti / defmethod

  (defmulti declare-multi-fn)
;  ^^^^^^^^ storage.modifier.def.clojure
;           ^^^^^^^^^^^^^^^^ entity.name.function.clojure

  (defmulti ^:private declare-multi-fn dont-declare-dispatch-fn)
;  ^^^^^^^^ storage.modifier.def.clojure
;           ^ keyword.operator.macro.clojure
;            ^^^^^^^^ constant.other.keyword.clojure
;                     ^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                                     ^^^^^^^^^^^^^^^^^^^^^^^^^- storage
;                                     ^^^^^^^^^^^^^^^^^^^^^^^^^- entity

  (
   defmulti
;  ^^^^^^^^ storage.modifier.def.clojure
   ^:private
;  ^ keyword.operator.macro.clojure
   declare-multi-fn
;  ^^^^^^^^^^^^^^^^ entity.name.function.clojure
   dont-declare-dispatch-fn
;  ^^^^^^^^^^^^^^^^^^^^^^^^^- storage
;  ^^^^^^^^^^^^^^^^^^^^^^^^^- entity
  )

  ; Invalid but take care anyway
  (defmulti declare-multi-fn nil)
;  ^^^^^^^^ storage.modifier.def.clojure
;           ^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                            ^^^ constant.language.clojure

  (defmethod dont-declare-multi-fn :dispatch-value [arg] ...)
;                                  ^^^^^^^^^^^^^^^ constant.other.keyword.clojure

  (defmethod dont-declare-multi-fn DispatchType [arg] ...)
;                                  ^^^^^^^^^^^^^- storage
;                                  ^^^^^^^^^^^^^- entity

  (
   defmethod
;  ^^^^^^^^^ storage.modifier.def.clojure
   dont-declare-multi-fn
;  ^^^^^^^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
  )



; # defprotocol

  (defprotocol DeclareProtocol)
;  ^^^^^^^^^^^ storage.type.clojure
;              ^^^^^^^^^^^^^^^ entity.name.type.clojure

  (defprotocol ^:private DeclareProtocol)
;  ^^^^^^^^^^^ storage.type.clojure
;              ^ keyword.operator.macro.clojure
;               ^^^^^^^^ constant.other.keyword.clojure
;                        ^^^^^^^^^^^^^^^ entity.name.type.clojure

  (defprotocol ^:private ^:blah DeclareProtocol)
;  ^^^^^^^^^^^ storage.type.clojure
;              ^ keyword.operator.macro.clojure
;               ^^^^^^^^ constant.other.keyword.clojure
;                        ^ keyword.operator.macro.clojure
;                         ^^^^^ constant.other.keyword.clojure
;                               ^^^^^^^^^^^^^^^ entity.name.type.clojure

  (
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   defprotocol
;  ^^^^^^^^^^^ storage.type.clojure
   ; ---
;  ^ comment.line.clojure punctuation.definition.comment
   ^:private
;  ^ keyword.operator.macro.clojure
;   ^^^^^^^^ constant.other.keyword.clojure
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
;  ^^^^^^^^^^^ storage.type.clojure
;              ^^^^^^^^^^^^^^^ entity.name.type.clojure
;                             ^^^^^^^^^^^^^- storage
;                             ^^^^^^^^^^^^^- entity

  ; Protocol methods are added to the namespace as functions
  (defprotocol ^:private DeclareProtocol
    ; ---
    (declare-protocol-method [_] dont-declare)
;    ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                               ^^^^^^^^^^^^^- storage
;                               ^^^^^^^^^^^^^- entity
    ; ---
    (^File declare-protocol-method [_] dont-declare))
;    ^ keyword.operator.macro.clojure
;     ^^^^^- storage
;     ^^^^^- entity
;     ^^^^^- variable.function
;          ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                                     ^^^^^^^^^^^^^- storage
;                                     ^^^^^^^^^^^^^- entity

  ; Invalid but take care anyway
  (defprotocol DeclareProtocol
    (declare-protocol-method dont-declare [_])
;    ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.clojure
;                           ^^^^^^^^^^^^^^- storage
;                           ^^^^^^^^^^^^^^- entity
    (100 dont-declare [_])
;    ^^^ meta.number
;       ^^^^^^^^^^^^^^- storage
;       ^^^^^^^^^^^^^^- entity
    (true dont-declare [_])
;    ^^^^ constant.language.clojure
;         ^^^^^^^^^^^^^- storage
;         ^^^^^^^^^^^^^- entity
    (:blah dont-declare [_])
;    ^^^^^ constant.other.keyword.clojure
;          ^^^^^^^^^^^^^- storage
;          ^^^^^^^^^^^^^- entity
    ('blah dont-declare [_]))
;    ^ keyword.operator.macro.clojure
;     ^^^^^^^^^^^^^^^^^^- storage
;     ^^^^^^^^^^^^^^^^^^- entity
;     ^^^^^^^^^^^^^^^^^^- variable.function



; # definterface

  (definterface DeclareInterface)
;  ^^^^^^^^^^^^ storage.type.clojure
;               ^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (definterface ^:private DeclareInterface)
;  ^^^^^^^^^^^^ storage.type.clojure
;               ^ keyword.operator.macro.clojure
;                ^^^^^^^^ constant.other.keyword.clojure
;                         ^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (
   definterface
;  ^^^^^^^^^^^^ storage.type.clojure
   ^:private
;  ^ keyword.operator.macro.clojure
   DeclareInterface
;  ^^^^^^^^^^^^^^^^ entity.name.type.clojure
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
  )

  ; Interface methods should have the same visual style as other function
  ; and method declarations, but shouldn't be added to the symbol index,
  ; since they're not added to the namespace as functions
  (definterface DeclareInterface
    (declare-noindex [_])
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    (declare-noindex [_]))
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure

  ; Invalid but take care anyway
  (definterface DeclareInterface dont-declare)
; ^ punctuation.section.parens.begin.clojure
;  ^^^^^^^^^^^^ storage.type.clojure
;               ^^^^^^^^^^^^^^^^ entity.name.type.clojure
;                               ^^^^^^^^^^^^^- storage
;                               ^^^^^^^^^^^^^- entity

; # deftype

  (deftype DeclareType)
;  ^^^^^^^ storage.type.clojure
;          ^^^^^^^^^^^ entity.name.type.clojure

  (deftype-custom DeclareWithCustomDeftype)
;  ^^^^^^^^^^^^^^ storage.type.clojure
;                 ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (deftype ^:private DeclareType [])
;  ^^^^^^^ storage.type.clojure
;          ^ keyword.operator.macro.clojure
;           ^^^^^^^^ constant.other.keyword.clojure
;                    ^^^^^^^^^^^ entity.name.type.clojure

  (
   ; ---
   deftype
;  ^^^^^^^ storage.type.clojure
   ; ---
   ^:private
;  ^ keyword.operator.macro.clojure
   ; ---
   ^:blah
;  ^ keyword.operator.macro.clojure
;   ^^^^^ constant.other.keyword.clojure
   ; ---
   DeclareType
;  ^^^^^^^^^^^ entity.name.type.clojure
   ; ---
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
   [])

  ; Similarly to definterface, type methods should have the standard visual
  ; style of function declarations, but not added to the symbol index,
  ; since they're not added to the namespace.
  (deftype DeclareType
    (declare-noindex [_])
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    (declare-noindex [_]))
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure

  ; Scope the implemented protocols/interfaces
  (deftype DeclareType
;  ^^^^^^^ storage.type.clojure
;          ^^^^^^^^^^^ entity.name.type.clojure
    package.ImplementedInterface
;   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
    (declare-noindex [_])
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    namespace/ImplementedProtocol
;   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
    (declare-noindex [_]))
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure


(deftype GrowingMap [^IFn make ^:unsynchronized-mutable inner]
;^^^^^^^ storage.type.clojure
;        ^^^^^^^^^^ entity.name.type.clojure
;                   ^ punctuation.section.brackets.begin.clojure
;                    ^ keyword.operator.macro.clojure
;                               ^^^^^^^^^^^^^^^^^^^^^^^ constant.other.keyword.clojure
  ILookup
  (valAt [this key]
;  ^^^^^ entity.name.function.fn.clojure
;       ^^^^^^^^^^^- storage
;       ^^^^^^^^^^^- entity
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
;  ^^^^^^^^^ storage.type.clojure
;            ^^^^^^^^^^^^^ entity.name.type.clojure

  (defrecord-custom DeclareWithCustomDefrecord)
;  ^^^^^^^^^^^^^^^^ storage.type.clojure
;                   ^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.type.clojure

  (defrecord ^:private DeclareRecord [])
;  ^^^^^^^^^ storage.type.clojure
;            ^ keyword.operator.macro.clojure
;             ^^^^^^^^ constant.other.keyword.clojure
;                      ^^^^^^^^^^^^^ entity.name.type.clojure

  (
   ; ---
   defrecord
;  ^^^^^^^^^ storage.type.clojure
   ; ---
   ^:private
;  ^ keyword.operator.macro.clojure
   ; ---
   ^:blah
;  ^ keyword.operator.macro.clojure
   ; ---
   DeclareRecord
;  ^^^^^^^^^^^^^ entity.name.type.clojure
   ; ---
   "docstring"
;  ^^^^^^^^^^^ string.quoted.double.clojure
   [])

  ; Same reasoning as for definterface and deftype
  (defrecord DeclareRecord
    (declare-noindex [_])
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    (declare-noindex [_]))
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure

  ; Scope the implemented protocols/interfaces
  (defrecord DeclareRecord
;  ^^^^^^^^^ storage.type.clojure
;            ^^^^^^^^^^^^^ entity.name.type.clojure
    package.ImplementedInterface
;   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
    (declare-noindex [_])
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure
    namespace/ImplementedProtocol
;   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
    (declare-noindex [_]))
;    ^^^^^^^^^^^^^^^ entity.name.function.fn.clojure



(defrecord Srv [^Server jetty session-store state-store]
  component/Lifecycle

  (start [this]
;  ^^^^^ entity.name.function.fn.clojure
;       ^^^^^^^^^^^- storage
;       ^^^^^^^^^^^- entity
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
;   ^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
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
;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- storage
;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- entity
;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^- variable
    (deref [] nil)
;    ^^^^^ entity.name.function.fn.clojure
;             ^^^ constant.language.clojure
    (seq [] nil))
;    ^^^ entity.name.function.fn.clojure
;           ^^^ constant.language.clojure



; # extend-protocol

  (extend-protocol clojure.lang.IDeref
;                  ^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
;  ^^^^^^^^^^^^^^^ variable.function.clojure
    String
;   ^^^^^^ entity.other.inherited-class.clojure
    (deref [this] this)
;    ^^^^^ entity.name.function.fn.clojure
    Srv
    (deref [_] nil))
;    ^^^^^ entity.name.function.fn.clojure
;              ^^^ constant.language.clojure



; # extend-type

  (extend-type String
;              ^^^^^^ entity.other.inherited-class.clojure
;  ^^^^^^^^^^^ variable.function.clojure
    clojure.lang.IDeref
;   ^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class.clojure
    (deref [this] this)
;    ^^^^^ entity.name.function.fn.clojure
    clojure.lang.IFn
    (invoke [this] nil))
;    ^^^^^^ entity.name.function.fn.clojure
;                  ^^^ constant.language.clojure
