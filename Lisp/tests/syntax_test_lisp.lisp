; SYNTAX TEST "Packages/Lisp/Lisp.sublime-syntax"

 ; comment
;^ punctuation.definition.comment
;^^^^^^^^^ comment.line.semicolon

 #|
;^^ punctuation.definition.comment.begin
  This is a multi-line comment.
; ^^^^^ comment.block
  #|
    They can be nested!
  |#
; ^^ comment.block comment.block punctuation.definition.comment.end
|#

(
; comments inside lists
;           ^ comment

 #|
 even block comments |#
;       ^ comment
)

#|
  stray comment
|#|#
; ^^ invalid.illegal.stray-comment-end

(#|
  stray comment inside list
|#|#)
; ^^ invalid.illegal.stray-comment-end

( #| stray brace |# ))))
;                    ^^^ invalid.illegal.stray-bracket-end

 (( #| nested |# ))
;^ meta.parens punctuation.section.parens.begin
; ^ meta.parens meta.parens punctuation.section.parens.begin
;         ^ comment
;                ^ meta.parens meta.parens punctuation.section.parens.end
;                 ^ meta.parens punctuation.section.parens.end

; ^ - meta.parens

;##################
; MERGE CONFLICTS #
;##################

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

;#########
; ARRAYS #
;#########

  #A( a b c )
; ^^ meta.array.lisp - meta.parens
;   ^^^^^^^^^ meta.array.lisp meta.parens.lisp
; ^^ punctuation.definition.array.lisp
;   ^ punctuation.section.parens.begin.lisp
;     ^ variable.other.lisp
;       ^ variable.other.lisp
;         ^ variable.other.lisp
;           ^ punctuation.section.parens.end.lisp

  #a( a b c )
; ^^ meta.array.lisp - meta.parens
;   ^^^^^^^^^ meta.array.lisp meta.parens.lisp
; ^^ punctuation.definition.array.lisp
;   ^ punctuation.section.parens.begin.lisp
;     ^ variable.other.lisp
;       ^ variable.other.lisp
;         ^ variable.other.lisp
;           ^ punctuation.section.parens.end.lisp

;###########0#
; CHARACTERS #
;#############

  #\! #\" #\# #\$ #\% #\& #\' #\( #\) #\* #\+ #\, #\- #\. #\/ #\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9
; ^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;     ^^^ constant.character.standard.lisp
;     ^^ punctuation.definition.constant.lisp
;         ^^^ constant.character.standard.lisp
;         ^^ punctuation.definition.constant.lisp
;             ^^^ constant.character.standard.lisp
;             ^^ punctuation.definition.constant.lisp
;                 ^^^ constant.character.standard.lisp
;                 ^^ punctuation.definition.constant.lisp
;                     ^^^ constant.character.standard.lisp
;                     ^^ punctuation.definition.constant.lisp
;                         ^^^ constant.character.standard.lisp
;                         ^^ punctuation.definition.constant.lisp
;                             ^^^ constant.character.standard.lisp
;                             ^^ punctuation.definition.constant.lisp
;                                 ^^^ constant.character.standard.lisp
;                                 ^^ punctuation.definition.constant.lisp
;                                     ^^^ constant.character.standard.lisp
;                                     ^^ punctuation.definition.constant.lisp
;                                         ^^^ constant.character.standard.lisp
;                                         ^^ punctuation.definition.constant.lisp
;                                             ^^^ constant.character.standard.lisp
;                                             ^^ punctuation.definition.constant.lisp
;                                                 ^^^ constant.character.standard.lisp
;                                                 ^^ punctuation.definition.constant.lisp
;                                                     ^^^ constant.character.standard.lisp
;                                                     ^^ punctuation.definition.constant.lisp
;                                                         ^^^ constant.character.standard.lisp
;                                                         ^^ punctuation.definition.constant.lisp
;                                                             ^^^ constant.character.standard.lisp
;                                                             ^^ punctuation.definition.constant.lisp
;                                                                 ^^^ constant.character.standard.lisp
;                                                                 ^^ punctuation.definition.constant.lisp
;                                                                     ^^^ constant.character.standard.lisp
;                                                                     ^^ punctuation.definition.constant.lisp
;                                                                         ^^^ constant.character.standard.lisp
;                                                                         ^^ punctuation.definition.constant.lisp
;                                                                             ^^^ constant.character.standard.lisp
;                                                                             ^^ punctuation.definition.constant.lisp
;                                                                                 ^^^ constant.character.standard.lisp
;                                                                                 ^^ punctuation.definition.constant.lisp
;                                                                                     ^^^ constant.character.standard.lisp
;                                                                                     ^^ punctuation.definition.constant.lisp
;                                                                                         ^^^ constant.character.standard.lisp
;                                                                                         ^^ punctuation.definition.constant.lisp
;                                                                                             ^^^ constant.character.standard.lisp
;                                                                                             ^^ punctuation.definition.constant.lisp
;                                                                                                 ^^^ constant.character.standard.lisp
;                                                                                                 ^^ punctuation.definition.constant.lisp

  #\: #\; #\< #\= #\> #\? #\@ #\A #\B #\C #\D #\E #\F #\G #\H #\I #\J #\K #\L #\M #\N #\O #\P #\Q #\R
; ^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;     ^^^ constant.character.standard.lisp
;     ^^ punctuation.definition.constant.lisp
;         ^^^ constant.character.standard.lisp
;         ^^ punctuation.definition.constant.lisp
;             ^^^ constant.character.standard.lisp
;             ^^ punctuation.definition.constant.lisp
;                 ^^^ constant.character.standard.lisp
;                 ^^ punctuation.definition.constant.lisp
;                     ^^^ constant.character.standard.lisp
;                     ^^ punctuation.definition.constant.lisp
;                         ^^^ constant.character.standard.lisp
;                         ^^ punctuation.definition.constant.lisp
;                             ^^^ constant.character.standard.lisp
;                             ^^ punctuation.definition.constant.lisp
;                                 ^^^ constant.character.standard.lisp
;                                 ^^ punctuation.definition.constant.lisp
;                                     ^^^ constant.character.standard.lisp
;                                     ^^ punctuation.definition.constant.lisp
;                                         ^^^ constant.character.standard.lisp
;                                         ^^ punctuation.definition.constant.lisp
;                                             ^^^ constant.character.standard.lisp
;                                             ^^ punctuation.definition.constant.lisp
;                                                 ^^^ constant.character.standard.lisp
;                                                 ^^ punctuation.definition.constant.lisp
;                                                     ^^^ constant.character.standard.lisp
;                                                     ^^ punctuation.definition.constant.lisp
;                                                         ^^^ constant.character.standard.lisp
;                                                         ^^ punctuation.definition.constant.lisp
;                                                             ^^^ constant.character.standard.lisp
;                                                             ^^ punctuation.definition.constant.lisp
;                                                                 ^^^ constant.character.standard.lisp
;                                                                 ^^ punctuation.definition.constant.lisp
;                                                                     ^^^ constant.character.standard.lisp
;                                                                     ^^ punctuation.definition.constant.lisp
;                                                                         ^^^ constant.character.standard.lisp
;                                                                         ^^ punctuation.definition.constant.lisp
;                                                                             ^^^ constant.character.standard.lisp
;                                                                             ^^ punctuation.definition.constant.lisp
;                                                                                 ^^^ constant.character.standard.lisp
;                                                                                 ^^ punctuation.definition.constant.lisp
;                                                                                     ^^^ constant.character.standard.lisp
;                                                                                     ^^ punctuation.definition.constant.lisp
;                                                                                         ^^^ constant.character.standard.lisp
;                                                                                         ^^ punctuation.definition.constant.lisp
;                                                                                             ^^^ constant.character.standard.lisp
;                                                                                             ^^ punctuation.definition.constant.lisp
;                                                                                                 ^^^ constant.character.standard.lisp
;                                                                                                 ^^ punctuation.definition.constant.lisp

  #\S #\T #\U #\V #\W #\X #\Y #\Z #\[ #\\ #\] #\^ #\_ #\` #\a #\b #\c #\d #\e #\f #\g #\h #\i #\j #\k
; ^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;     ^^^ constant.character.standard.lisp
;     ^^ punctuation.definition.constant.lisp
;         ^^^ constant.character.standard.lisp
;         ^^ punctuation.definition.constant.lisp
;             ^^^ constant.character.standard.lisp
;             ^^ punctuation.definition.constant.lisp
;                 ^^^ constant.character.standard.lisp
;                 ^^ punctuation.definition.constant.lisp
;                     ^^^ constant.character.standard.lisp
;                     ^^ punctuation.definition.constant.lisp
;                         ^^^ constant.character.standard.lisp
;                         ^^ punctuation.definition.constant.lisp
;                             ^^^ constant.character.standard.lisp
;                             ^^ punctuation.definition.constant.lisp
;                                 ^^^ constant.character.standard.lisp
;                                 ^^ punctuation.definition.constant.lisp
;                                     ^^^ constant.character.standard.lisp
;                                     ^^ punctuation.definition.constant.lisp
;                                         ^^^ constant.character.standard.lisp
;                                         ^^ punctuation.definition.constant.lisp
;                                             ^^^ constant.character.standard.lisp
;                                             ^^ punctuation.definition.constant.lisp
;                                                 ^^^ constant.character.standard.lisp
;                                                 ^^ punctuation.definition.constant.lisp
;                                                     ^^^ constant.character.standard.lisp
;                                                     ^^ punctuation.definition.constant.lisp
;                                                         ^^^ constant.character.standard.lisp
;                                                         ^^ punctuation.definition.constant.lisp
;                                                             ^^^ constant.character.standard.lisp
;                                                             ^^ punctuation.definition.constant.lisp
;                                                                 ^^^ constant.character.standard.lisp
;                                                                 ^^ punctuation.definition.constant.lisp
;                                                                     ^^^ constant.character.standard.lisp
;                                                                     ^^ punctuation.definition.constant.lisp
;                                                                         ^^^ constant.character.standard.lisp
;                                                                         ^^ punctuation.definition.constant.lisp
;                                                                             ^^^ constant.character.standard.lisp
;                                                                             ^^ punctuation.definition.constant.lisp
;                                                                                 ^^^ constant.character.standard.lisp
;                                                                                 ^^ punctuation.definition.constant.lisp
;                                                                                     ^^^ constant.character.standard.lisp
;                                                                                     ^^ punctuation.definition.constant.lisp
;                                                                                         ^^^ constant.character.standard.lisp
;                                                                                         ^^ punctuation.definition.constant.lisp
;                                                                                             ^^^ constant.character.standard.lisp
;                                                                                             ^^ punctuation.definition.constant.lisp
;                                                                                                 ^^^ constant.character.standard.lisp
;                                                                                                 ^^ punctuation.definition.constant.lisp

  #\l #\m #\n #\o #\p #\q #\r #\s #\t #\u #\v #\w #\x #\y #\z #\{ #\| #\} #\~
; ^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;     ^^^ constant.character.standard.lisp
;     ^^ punctuation.definition.constant.lisp
;         ^^^ constant.character.standard.lisp
;         ^^ punctuation.definition.constant.lisp
;             ^^^ constant.character.standard.lisp
;             ^^ punctuation.definition.constant.lisp
;                 ^^^ constant.character.standard.lisp
;                 ^^ punctuation.definition.constant.lisp
;                     ^^^ constant.character.standard.lisp
;                     ^^ punctuation.definition.constant.lisp
;                         ^^^ constant.character.standard.lisp
;                         ^^ punctuation.definition.constant.lisp
;                             ^^^ constant.character.standard.lisp
;                             ^^ punctuation.definition.constant.lisp
;                                 ^^^ constant.character.standard.lisp
;                                 ^^ punctuation.definition.constant.lisp
;                                     ^^^ constant.character.standard.lisp
;                                     ^^ punctuation.definition.constant.lisp
;                                         ^^^ constant.character.standard.lisp
;                                         ^^ punctuation.definition.constant.lisp
;                                             ^^^ constant.character.standard.lisp
;                                             ^^ punctuation.definition.constant.lisp
;                                                 ^^^ constant.character.standard.lisp
;                                                 ^^ punctuation.definition.constant.lisp
;                                                     ^^^ constant.character.standard.lisp
;                                                     ^^ punctuation.definition.constant.lisp
;                                                         ^^^ constant.character.standard.lisp
;                                                         ^^ punctuation.definition.constant.lisp
;                                                             ^^^ constant.character.standard.lisp
;                                                             ^^ punctuation.definition.constant.lisp
;                                                                 ^^^ constant.character.standard.lisp
;                                                                 ^^ punctuation.definition.constant.lisp
;                                                                     ^^^ constant.character.standard.lisp
;                                                                     ^^ punctuation.definition.constant.lisp
;                                                                         ^^^ constant.character.standard.lisp
;                                                                         ^^ punctuation.definition.constant.lisp

  #\Space #\SPACE #\space
; ^^^^^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;        ^ - constant
;         ^^^^^^^ constant.character.standard.lisp
;         ^^ punctuation.definition.constant.lisp
;                ^ - constant
;                 ^^^^^^^ constant.character.standard.lisp
;                 ^^ punctuation.definition.constant.lisp
;                        ^ - constant

  #\Newline #\NEWLINE #\newline
; ^^^^^^^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;          ^ - constant
;           ^^^^^^^^^ constant.character.standard.lisp
;           ^^ punctuation.definition.constant.lisp
;                    ^ - constant
;                     ^^^^^^^^^ constant.character.standard.lisp
;                     ^^ punctuation.definition.constant.lisp
;                              ^ - constant

  #\Backspace #\Tab #\Linefeed #\Page #\Return #\Rubout
; ^^^^^^^^^^^ constant.character.semi-standard.lisp
; ^^ punctuation.definition.constant.lisp
;            ^ - constant
;             ^^^^^ constant.character.semi-standard.lisp
;             ^^ punctuation.definition.constant.lisp
;                  ^ - constant
;                   ^^^^^^^^^^ constant.character.semi-standard.lisp
;                   ^^ punctuation.definition.constant.lisp
;                             ^ - constant
;                              ^^^^^^ constant.character.semi-standard.lisp
;                              ^^ punctuation.definition.constant.lisp
;                                    ^ - constant
;                                     ^^^^^^^^ constant.character.semi-standard.lisp
;                                     ^^ punctuation.definition.constant.lisp
;                                             ^ - constant
;                                              ^^^^^^^^ constant.character.semi-standard.lisp
;                                              ^^ punctuation.definition.constant.lisp
;                                                      ^ - constant

  #\φ #\Break #\Home-Up #\Escape
; ^^^ constant.character.non-standard.lisp
; ^^ punctuation.definition.constant.lisp
;    ^ - constant
;     ^^^^^^^ constant.character.non-standard.lisp
;     ^^ punctuation.definition.constant.lisp
;            ^ - constant
;             ^^^^^^^^^ constant.character.non-standard.lisp
;             ^^ punctuation.definition.constant.lisp
;                      ^ - constant
;                       ^^^^^^^^ constant.character.non-standard.lisp
;                       ^^ punctuation.definition.constant.lisp
;                               ^ - constant

;########################
; CHARACTER ATTRIBUTESS #
;########################

  #3\a
; ^^^^ constant.character.standard.lisp
; ^^^ punctuation.definition.constant.lisp
;  ^ storage.modifier.attributes.lisp

  #\Control-Meta-Return #\Meta-Control-Q
; ^^^^^^^^^^^^^^^^^^^^^ constant.character.semi-standard.lisp
; ^^ punctuation.definition.constant.lisp
;                       ^^^^^^^^^^^^^^^^ constant.character.standard.lisp
;                       ^^ punctuation.definition.constant.lisp

  #\Hyper-Space         #\Meta-\a
; ^^^^^^^^^^^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;                       ^^^^^^^^^ constant.character.standard.lisp
;                       ^^ punctuation.definition.constant.lisp

  #\Control-A           #\Meta-Hyper-\:
; ^^^^^^^^^^^ constant.character.standard.lisp
; ^^ punctuation.definition.constant.lisp
;                       ^^^^^^^^^^^^^^^ constant.character.standard.lisp
;                       ^^ punctuation.definition.constant.lisp

  #\C-M-Return          #\Hyper-\φ
; ^^^^^^^^^^^^ constant.character.semi-standard.lisp
; ^^ punctuation.definition.constant.lisp
;                       ^^^^^^^^^^ constant.character.non-standard.lisp
;                       ^^ punctuation.definition.constant.lisp

;############
; PATHNAMES #
;############

  #P"/my/name"
; ^^^^^^^^^^^^ meta.path.lisp
; ^^ punctuation.definition.pathname.lisp
;   ^^^^^^^^^^ string.quoted.double.lisp
;   ^ punctuation.definition.string.begin.lisp
;            ^ punctuation.definition.string.end.lisp

;#############
; STRUCTURES #
;#############

  #S(struct-name
; ^^ meta.struct.lisp - meta.parens
;   ^^^^^^^^^^^^^ meta.struct.lisp meta.parens.lisp
; ^^ punctuation.definition.struct.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^^^^^^^^^^ entity.name.struct.lisp
      slot1 sym
;    ^^^^^^^^^^^ meta.struct.lisp meta.parens.lisp
;     ^^^^^ variable.other.lisp
;           ^^^ variable.other.lisp

      slot2 10
;    ^^^^^^^^^^ meta.struct.lisp meta.parens.lisp
;     ^^^^^ variable.other.lisp
;           ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp

      slot2 (10 20 30)
;    ^^^^^^^ meta.struct.lisp meta.parens.lisp
;           ^^^^^^^^^^ meta.struct.lisp meta.parens.lisp meta.parens.lisp
;                     ^ meta.struct.lisp meta.parens.lisp
;     ^^^^^ variable.other.lisp
;           ^^^^^^^^^^ meta.parens.lisp
;           ^ punctuation.section.parens.begin.lisp
;            ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;               ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                  ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                    ^ punctuation.section.parens.end.lisp
)
; <- meta.struct.lisp meta.parens.lisp punctuation.section.parens.end.lisp
;^ - meta.struct - meta.parens

;#############
; EVALUATION #
;#############

  #'(lambda (a b c) (return 1))
; ^^ - meta.parens
;   ^^^^^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;                   ^^^^^^^^^^ meta.parens.lisp meta.parens
;                             ^ meta.parens.lisp - meta.parens meta.parens
;                              ^ - meta.parens
; ^^ punctuation.definition.function.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^^^^^^ meta.function.lisp
;           ^^^^^^^ meta.function.parameters.lisp
;           ^ punctuation.section.parameters.begin.lisp
;            ^ variable.parameter.lisp
;              ^ variable.parameter.lisp
;                ^ variable.parameter.lisp
;                 ^ punctuation.section.parameters.end.lisp
;                   ^ punctuation.section.parens.begin.lisp
;                    ^^^^^^ keyword.control.flow.return.lisp
;                           ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                            ^^ punctuation.section.parens.end.lisp

  #'(lambda nil (return 1))
; ^^ - meta.parens
;   ^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;               ^^^^^^^^^^ meta.parens.lisp meta.parens
;                         ^ meta.parens.lisp - meta.parens meta.parens
;                          ^ - meta.parens
; ^^ punctuation.definition.function.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^^^^^^ meta.function.lisp
;           ^^^ constant.language.null.lisp
;               ^ punctuation.section.parens.begin.lisp
;                ^^^^^^ keyword.control.flow.return.lisp
;                       ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                        ^^ punctuation.section.parens.end.lisp

  #'foo
; ^^ punctuation.definition.function.lisp
;   ^^^ variable.function.lisp

  #'path/to:foo
; ^^ punctuation.definition.function.lisp
;   ^^^^^^^ variable.namespace.lisp
;          ^ punctuation.accessor.lisp
;           ^^^ variable.function.lisp

  (#'+ #'- #'*)
;  ^^ punctuation.definition.function.lisp
;    ^ keyword.operator.arithmetic.lisp
;      ^^ punctuation.definition.function.lisp
;        ^ keyword.operator.arithmetic.lisp
;          ^^ punctuation.definition.function.lisp
;            ^ keyword.operator.arithmetic.lisp

  #Mevenp
; ^^ punctuation.definition.function.lisp
;   ^^^^^ support.function.lisp

  #M(lambda (n) (random 100))
; ^^ punctuation.definition.function.lisp
;   ^ meta.parens.lisp
;    ^^^^^^^ meta.parens.lisp meta.function.lisp
;           ^^^ meta.parens.lisp meta.function.parameters.lisp
;              ^ meta.parens.lisp - meta.parens meta.parens
;               ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                           ^ meta.parens.lisp - meta.parens meta.parens
;   ^ punctuation.section.parens.begin.lisp
;    ^^^^^^ keyword.declaration.function.inline.lisp
;           ^ punctuation.section.parameters.begin.lisp
;            ^ variable.parameter.lisp
;             ^ punctuation.section.parameters.end.lisp
;               ^ punctuation.section.parens.begin.lisp
;                ^^^^^^ meta.function-call.lisp support.function.lisp
;                       ^^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                          ^^ punctuation.section.parens.end.lisp

  #:foo
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.other.lisp
;      ^ - variable

  #:foo:bar
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.namespace.lisp
;       ^^^ variable.other.lisp
;          ^ - variable

  #.foo
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.other.lisp
;      ^ - variable

  #.foo:bar
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.namespace.lisp
;       ^^^ variable.other.lisp
;          ^ - variable

  #,foo
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.other.lisp
;      ^ - variable

  #,foo:bar
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.namespace.lisp
;      ^ punctuation.accessor.lisp
;       ^^^ variable.other.lisp
;          ^ - variable

  #+feature-flag (call me)
; ^^ keyword.control.conditional.lisp
;   ^^^^^^^^^^^^ constant.other.feature.lisp
;                ^^^^^^^^^ meta.parens.lisp

  #-feature-flag (ignore me)
; ^^ keyword.control.conditional.lisp
;   ^^^^^^^^^^^^ constant.other.feature.lisp
;                ^^^^^^^^^^^ meta.parens.lisp

  #+(and unix (not darwin))
; ^^ keyword.control.conditional.lisp
;   ^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;             ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                         ^ meta.parens.lisp - meta.parens meta.parens

;##########
; VECTORS #
;##########

  #()                 ; An empty vector
; ^ meta.vector.lisp - meta.vector meta.parens
;  ^^ meta.vector.lisp meta.parens.lisp
; ^ punctuation.definition.vector.lisp
;  ^ punctuation.section.parens.begin.lisp
;   ^ punctuation.section.parens.end.lisp

  #(a b c)            ; A vector of length 3
; ^ meta.vector.lisp - meta.vector meta.parens
;  ^^^^^^^ meta.vector.lisp meta.parens.lisp
; ^ punctuation.definition.vector.lisp
;  ^ punctuation.section.parens.begin.lisp
;   ^ variable.other.lisp
;     ^ variable.other.lisp
;       ^ variable.other.lisp
;        ^ punctuation.section.parens.end.lisp

  #(2 3 5 7 11 13 17) ; A vector containing the primes below 20
; ^ meta.vector.lisp - meta.vector meta.parens
;  ^^^^^^^^^^^^^^^^^^ meta.vector.lisp meta.parens.lisp
; ^ punctuation.definition.vector.lisp
;  ^ punctuation.section.parens.begin.lisp
;   ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;     ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;       ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;         ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;           ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                   ^ punctuation.section.parens.end.lisp

  #*10110      ; A five-bit bit-vector; bit 0 is a 1
; ^^^^^^^ meta.vector.lisp
; ^^ punctuation.definition.vector.lisp
;   ^^^^^ constant.numeric.value.lisp

  #*           ; An empty bit-vector
; ^^ meta.vector.lisp punctuation.definition.vector.lisp

;##########
; STRINGS #
;##########

  ""                        ; An empty string
; ^^ meta.string.lisp string.quoted.double.lisp
; ^ punctuation.definition.string.begin.lisp
;  ^ punctuation.definition.string.end.lisp

  "Foo"                     ; A string with three characters in it
; ^^^^^ meta.string.lisp string.quoted.double.lisp
; ^ punctuation.definition.string.begin.lisp
;     ^ punctuation.definition.string.end.lisp

  "foo\n"                   ; A string with trailing escaped newline
; ^^^^^^^ meta.string.lisp string.quoted.double.lisp
; ^ punctuation.definition.string.begin.lisp
;     ^^ constant.character.escape.lisp
;       ^ punctuation.definition.string.end.lisp

  "\"APL\\360?\" he cried." ; A string with twenty characters
; ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
; ^ punctuation.definition.string.begin.lisp
;  ^^ constant.character.escape.lisp
;       ^^ constant.character.escape.lisp
;             ^^ constant.character.escape.lisp
;                         ^ punctuation.definition.string.end.lisp

  "|x| = |-x|"              ; A ten-character string
; ^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
; ^ punctuation.definition.string.begin.lisp
;            ^ punctuation.definition.string.end.lisp

'("multi-line string
    ends here"
; ^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;            ^ punctuation.definition.string.end.lisp
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp
;^ - meta.parens

;##################
; INTEGER NUMBERS #
;##################

(setq i 0)     ; The integer zero, not a floating-point zero!
;       ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp

(setq i -0)    ; This always means the same as 0
;       ^^ meta.number.integer.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^ constant.numeric.value.lisp
(setq i +6)    ; The first perfect number
;       ^^ meta.number.integer.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^ constant.numeric.value.lisp

(setq i 28)    ; The second perfect number
;       ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp

(setq i 1024.) ; Two to the tenth power
;       ^^^^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;           ^ punctuation.separator.decimal.lisp

(setq i 15511210043330985984000000.)  ; 25 factorial (25!), probably a bignum
;       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                                 ^ punctuation.separator.decimal.lisp

(setq i #2r11010101)     ; Another way of writing 213 decimal
;       ^^^^^^^^^^^ meta.number.integer.binary.lisp
;       ^^^ constant.numeric.base.lisp
;          ^^^^^^^^ constant.numeric.value.lisp
(setq i #b11010101)      ; Ditto
;       ^^^^^^^^^^ meta.number.integer.binary.lisp
;       ^^ constant.numeric.base.lisp
;         ^^^^^^^^ constant.numeric.value.lisp

(setq i #b+11010101)     ; Ditto
;       ^^^^^^^^^^^ meta.number.integer.binary.lisp
;       ^^ constant.numeric.base.lisp
;         ^ keyword.operator.arithmetic.lisp
;          ^^^^^^^^ constant.numeric.value.lisp

(setq i #o325)           ; Ditto, in octal radix
;       ^^^^^ meta.number.integer.octal.lisp
;       ^^ constant.numeric.base.lisp
;         ^^^ constant.numeric.value.lisp

(setq i #xD5)            ; Ditto, in hexadecimal radix
;       ^^^^ meta.number.integer.hexadecimal.lisp
;       ^^ constant.numeric.base.lisp
;         ^^ constant.numeric.value.lisp

(setq i #16r+D5)         ; Ditto
;       ^^^^^^^ meta.number.integer.hexadecimal.lisp
;       ^^^^ constant.numeric.base.lisp
;           ^ keyword.operator.arithmetic.lisp
;            ^^ constant.numeric.value.lisp

(setq i #xACCEDED)       ; 181202413, in hexadecimal radix
;       ^^^^^^^^^ meta.number.integer.hexadecimal.lisp
;       ^^ constant.numeric.base.lisp
;         ^^^^^^^ constant.numeric.value.lisp

(setq i #o-300)          ; Decimal -192, written in base 8
;       ^^^^^^ meta.number.integer.octal.lisp
;       ^^ constant.numeric.base.lisp
;         ^ keyword.operator.arithmetic.lisp
;          ^^^ constant.numeric.value.lisp

(setq i #3r-21010)       ; Same thing in base 3
;       ^^^^^^^^^ meta.number.integer.other.lisp
;       ^^^ constant.numeric.base.lisp
;          ^ keyword.operator.arithmetic.lisp
;           ^^^^^ constant.numeric.value.lisp

(setq i #25R-7H)         ; Same thing in base 25
;       ^^^^^^^ meta.number.integer.other.lisp
;       ^^^^ constant.numeric.base.lisp
;           ^ keyword.operator.arithmetic.lisp
;            ^^ constant.numeric.value.lisp

;#########################
; FLOATING POINT NUMBERS #
;#########################

(setq f 0.0)                     ; Floating-point zero in default format
;       ^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;        ^ punctuation.separator.decimal.lisp

(setq f +0.0)                    ; Floating-point zero in default format with sign
;       ^^^^ meta.number.float.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^^^ constant.numeric.value.lisp
;         ^ punctuation.separator.decimal.lisp

(setq f -0.0)                    ; Floating-point zero in default format with sign
;       ^^^^ meta.number.float.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^^^ constant.numeric.value.lisp
;         ^ punctuation.separator.decimal.lisp

(setq f 0E0)                     ; Also floating-point zero in default format
;       ^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp

(setq f -.0)                     ; This may be a zero or a minus zero,
;       ^^^ meta.number.float.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^^ constant.numeric.value.lisp
;        ^ punctuation.separator.decimal.lisp

(setq b .0E0)                    ; Exponent without leading digits
;       ^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;       ^ punctuation.separator.decimal.lisp

(setq f 0.0s0)                   ; A floating-point zero in short format
;       ^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;        ^ punctuation.separator.decimal.lisp

(setq f 0s0)                     ; Also a floating-point zero in short format
;       ^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp

(setq f 3.1415926535897932384d0) ; A double-format approximation to
;       ^^^^^^^^^^^^^^^^^^^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;        ^ punctuation.separator.decimal.lisp

(setq f 6.02E+23)                ; Avogadro's number, in default format
;       ^^^^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;        ^ punctuation.separator.decimal.lisp

(setq f 602E+21)                 ; Also Avogadro's number, in default format
;       ^^^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp

(setq f 3.010299957f-1)          ; , in single format
;       ^^^^^^^^^^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;        ^ punctuation.separator.decimal.lisp

(setq f -0.000000001s9)          ;  in short format, the hard way
;       ^^^^^^^^^^^^^^ meta.number.float.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^^^^^^^^^^^^^ constant.numeric.value.lisp
;         ^ punctuation.separator.decimal.lisp

;###################
; RATIONAL NUMBERS #
;###################

(setq r 2/3)                ;This is in canonical form
;       ^^^ meta.number.rational.decimal.lisp constant.numeric.value.lisp
;        ^ keyword.operator.arithmetic.lisp

(setq r 4/6)                ;A non-canonical form for the same number
;       ^^^ meta.number.rational.decimal.lisp constant.numeric.value.lisp
;        ^ keyword.operator.arithmetic.lisp

(setq r -17/23)             ;A not very interesting ratio
;       ^^^^^^ meta.number.rational.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^^^^^ constant.numeric.value.lisp
;          ^ keyword.operator.arithmetic.lisp

(setq r -30517578125/32768)
;       ^^^^^^ meta.number.rational.decimal.lisp
;       ^ keyword.operator.arithmetic.lisp
;        ^^^^^^^^^^^^^^^^^ constant.numeric.value.lisp
;                   ^ keyword.operator.arithmetic.lisp

(setq r #o-101/75)       ; Octal notation for -65/61
;       ^^^^^^^^^ meta.number.rational.octal.lisp
;       ^^ constant.numeric.base.lisp
;         ^ keyword.operator.arithmetic.lisp
;          ^^^^^^ constant.numeric.value.lisp
;             ^ keyword.operator.arithmetic.lisp

(setq r #3r120/21)       ; Ternary notation for 15/7
;       ^^^^^^^^^ meta.number.rational.other.lisp
;       ^^^ constant.numeric.base.lisp
;          ^^^^^^ constant.numeric.value.lisp
;             ^ keyword.operator.arithmetic.lisp

(setq r #Xbc/ad)         ; Hexadecimal notation for 188/173
;       ^^^^^^^ meta.number.rational.hexadecimal.lisp
;       ^^ constant.numeric.base.lisp
;         ^^^^^ constant.numeric.value.lisp
;           ^ keyword.operator.arithmetic.lisp

(setq r #xFADED/FACADE)  ; Hexadecimal notation for 1027565/16435934
;       ^^^^^^^^^^^^^^ meta.number.rational.hexadecimal.lisp
;       ^^ constant.numeric.base.lisp
;         ^^^^^^^^^^^^ constant.numeric.value.lisp
;              ^ keyword.operator.arithmetic.lisp

;##################
; COMPLEX NUMBERS #
;##################

(setq c #C(3.0s1 2.0s-1))  ; Real and imaginary parts are short format
;       ^^ meta.number.complex.lisp - meta.number meta.parens
;         ^^^^^^^^^^^^^^ meta.number.complex.lisp meta.parens.lisp
;       ^^ punctuation.definition.complex.lisp
;         ^ punctuation.section.parens.begin.lisp
;          ^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;                ^^^^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;                      ^^ punctuation.section.parens.end.lisp

(setq c #C(5 -3))          ; A Gaussian integer
;       ^^ meta.number.complex.lisp - meta.number meta.parens
;         ^^^^^^ meta.number.complex.lisp meta.parens.lisp
;       ^^ punctuation.definition.complex.lisp
;         ^ punctuation.section.parens.begin.lisp
;          ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;            ^^ meta.number.integer.decimal.lisp
;              ^^ punctuation.section.parens.end.lisp

(setq c #C(5/3 7.0))       ; Will be converted internally to #C(1.66666 7.0)
;       ^^ meta.number.complex.lisp - meta.number meta.parens
;         ^^^^^^^^^ meta.number.complex.lisp meta.parens.lisp
;       ^^ punctuation.definition.complex.lisp
;         ^ punctuation.section.parens.begin.lisp
;          ^^^ meta.number.rational.decimal.lisp constant.numeric.value.lisp
;              ^^^ meta.number.float.decimal.lisp constant.numeric.value.lisp
;                 ^^ punctuation.section.parens.end.lisp

(setq c #C(0 1))           ; The imaginary unit, that is, i
;       ^^ meta.number.complex.lisp - meta.number meta.parens
;         ^^^^^ meta.number.complex.lisp meta.parens.lisp
;       ^^ punctuation.definition.complex.lisp
;         ^ punctuation.section.parens.begin.lisp
;          ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;            ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;             ^^ punctuation.section.parens.end.lisp

;##############
; IDENTIFIERS #
;##############

  FROBBOZ         ; The symbol whose name is FROBBOZ
; ^^^^^^^ variable.other.lisp

  frobboz         ; Another way to notate the same symbol
; ^^^^^^^ variable.other.lisp

  fRObBoz         ; Yet another way to notate it
; ^^^^^^^ variable.other.lisp

  unwind-protect  ; A symbol with a - in its name
; ^^^^^^^^^^^^^^ variable.other.lisp

  +$              ; The symbol named +$
; ^^ variable.other.lisp

  1+              ; The symbol named 1+
; ^^ variable.other.lisp

  +1              ; This is the integer 1, not a symbol
; ^^ - variable

  pascal_style    ; This symbol has an underscore in its name
; ^^^^^^^^^^^^ variable.other.lisp

  b^2-4*a*c       ; This is a single symbol! It has several special characters in its name
; ^^^^^^^^^ variable.other.lisp

  file.rel.43     ; This symbol has periods in its name
; ^^^^^^^^^^^ variable.other.lisp

  /usr/games/zork ; This symbol has slashes in its name
; ^^^^^^^^^^^^^^^ variable.other.lisp

  7777e
; ^^^^^ variable.other

  77777
; ^^^^^ - variable.other

  a.c.e
; ^^^^^ variable.other

  .....
; ^^^^^ - variable.other

  +constant+
; ^^^^^^^^^^ constant.other.lisp

  +no+constant
; ^^^^^^^^^^^^ variable.other.lisp

  no+constant+
; ^^^^^^^^^^^^ variable.other.lisp

  *global*
; ^^^^^^^^ variable.other.lisp

  *glo-bal*
; ^^^^^^^^^ variable.other.lisp

  *package*
; ^^^^^^^^^ variable.language.lisp

  pkg:foo   ; external symbol
; ^^^ variable.namespace.lisp
;    ^ punctuation.accessor.lisp
;     ^^^ variable.other.lisp

  pkg::foo  ; internal symbol
; ^^^ variable.namespace.lisp
;    ^^ punctuation.accessor.lisp
;      ^^^ variable.other.lisp

;######################
; ESCAPED IDENTIFIERS #
;######################

  \( \)                  ; The symbols whose name are ( and )
; ^^ variable.other.lisp - punctuation
;   ^ - variable
;    ^^ variable.other.lisp - punctuation

  \[ \]                  ; The symbols whose name are [ and ]
; ^^ variable.other.lisp - punctuation
;   ^ - variable
;    ^^ variable.other.lisp - punctuation

  \{ \}                  ; The symbols whose name are { and }
; ^^ variable.other.lisp - punctuation
;   ^ - variable
;    ^^ variable.other.lisp - punctuation

  \+1                    ; The symbol whose name is +1
; ^^^ variable.other.lisp - punctuation

  +\1                    ; Also the symbol whose name is +1
; ^^^ variable.other.lisp - punctuation

  \frobboz               ; The symbol whose name is fROBBOZ
; ^^^^^^^^ variable.other.lisp - punctuation

  3.14159265\s0          ; The symbol whose name is 3.14159265s0
; ^^^^^^^^^^^^^ variable.other.lisp - punctuation

  3.14159265\S0          ; A different symbol, whose name is 3.14159265S0
; ^^^^^^^^^^^^^ variable.other.lisp - punctuation

  3.14159265s0           ; A short-format floating-point approximation to
; ^^^^^^^^^^^^ constant.numeric - variable

  APL\\360               ; The symbol whose name is APL 360
; ^^^^^^^^ variable.other.lisp - punctuation

  apl\\360               ; Also the symbol whose name is APL 360
; ^^^^^^^^ variable.other.lisp - punctuation

  \(b^2\)\ -\ 4*a*c      ; The name is (B^2) - 4*A*C; it has parentheses and two spaces in it
; ^^^^^^^^^^^^^^^^^ variable.other.lisp - punctuation

  \(\b^2\)\ -\ 4*\a*\c   ; The name is (b^2) - 4*a*c; the letters are explicitly lowercase
; ^^^^^^^^^^^^^^^^^^^^ variable.other.lisp - punctuation

  ab\ \|c\)\ de
; ^^^^^^^^^^^^^ variable.other - punctuation

  #x123\4
; ^^^^^^^ variable.other.lisp - punctuation

  7!#7e
; ^^^^^ variable.other - punctuation

;#####################
; QUOTED IDENTIFIERS #
;#####################

  |"|                    ; The same as writing \"
; ^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;   ^ punctuation.definition.symbol.end.lisp

  |(b^2) - 4*a*c|        ; The name is (b^2) - 4*a*c
; ^^^^^^^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;               ^ punctuation.definition.symbol.end.lisp

  |frobboz|              ; The name is frobboz, not FROBBOZ
; ^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;         ^ punctuation.definition.symbol.end.lisp

  |APL\360|              ; The name is APL360, because the \ quotes the 3
; ^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;         ^ punctuation.definition.symbol.end.lisp

  |APL\\360|             ; The name is APL\360
; ^^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;          ^ punctuation.definition.symbol.end.lisp

  |apl\\360|             ; The name is apl\360
; ^^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;          ^ punctuation.definition.symbol.end.lisp

  |\|\||                 ; Same as \|\|: the name is ||
; ^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;      ^ punctuation.definition.symbol.end.lisp

  |(B^2) - 4*A*C|        ; The name is (B^2) - 4*A*C; it has parentheses and two spaces in it
; ^^^^^^^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;               ^ punctuation.definition.symbol.end.lisp

  |(b^2) - 4*a*c|        ; The name is (b^2) - 4*a*c
; ^^^^^^^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;               ^ punctuation.definition.symbol.end.lisp

  ab| (|c|) |de
; ^^^^^^^^^^^^^ variable.other.lisp
;              ^ - variable

  |\#x123\4|
; ^^^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;  ^^^^^^^^ - punctuation
;          ^ punctuation.definition.symbol.end.lisp
;           ^ - variable

  |7! #7e|
; ^^^^^^^^ variable.other.lisp
; ^ punctuation.definition.symbol.begin.lisp
;  ^^^^^^ - punctuation
;        ^ punctuation.definition.symbol.end

;###########
; KEYWORDS #
;###########

  :foo
; ^ punctuation.accessor.lisp
;  ^^^ keyword.other.symbol.lisp

  keyword:foo
; ^^^^^^^ variable.namespace.lisp
;        ^ punctuation.accessor.lisp
;         ^^^ keyword.other.symbol.lisp

  keyword::foo
; ^^^^^^^ variable.namespace.lisp
;        ^^ punctuation.accessor.lisp
;          ^^^ keyword.other.symbol.lisp

  (:foo :bar)
;  ^ punctuation.accessor.lisp
;   ^^^ keyword.other.symbol.lisp
;       ^ punctuation.accessor.lisp
;        ^^^ keyword.other.symbol.lisp

  (keyword:foo keyword:bar)
;  ^^^^^^^ variable.namespace.lisp
;         ^ punctuation.accessor.lisp
;          ^^^ keyword.other.symbol.lisp
;              ^^^^^^^ variable.namespace.lisp
;                     ^ punctuation.accessor.lisp
;                      ^^^ keyword.other.symbol.lisp

  (|keyword|:|foo| |keyword|:|bar|)
;  ^^^^^^^^^ variable.namespace.lisp
;           ^ punctuation.accessor.lisp
;            ^^^^^ keyword.other.symbol.lisp
;                  ^^^^^^^^^ variable.namespace.lisp
;                           ^ punctuation.accessor.lisp
;                            ^^^^^ keyword.other.symbol.lisp

;#########
; QUOTES #
;#########

  '
; ^ punctuation.definition.quoted.lisp

  '()
; ^ punctuation.definition.quoted.lisp
;  ^ meta.parens.lisp punctuation.section.parens.begin.lisp
;   ^ meta.parens.lisp punctuation.section.parens.end.lisp
;    ^ - meta.parens

  'nil
; ^ punctuation.definition.quoted.lisp
;  ^^^ constant.other.symbol.lisp

  ('nil)
; ^^^^^^ meta.parens.lisp
;       ^ - meta.parens
;  ^ punctuation.definition.quoted.lisp
;   ^^^ constant.other.symbol.lisp

  'symbol
; ^ punctuation.definition.quoted.lisp
;  ^^^^^^ constant.other.symbol.lisp

  ('fun 'arg)
;  ^ punctuation.definition.quoted.lisp
;   ^^^ constant.other.symbol.lisp
;       ^ punctuation.definition.quoted.lisp
;        ^^^ constant.other.symbol.lisp

  ('+ '* '-)
;  ^ punctuation.definition.quoted.lisp
;   ^ constant.other.symbol.lisp
;     ^ punctuation.definition.quoted.lisp
;      ^ constant.other.symbol.lisp
;        ^ punctuation.definition.quoted.lisp
;         ^ constant.other.symbol.lisp

  ':foo
; ^ punctuation.definition.quoted.lisp
;  ^ punctuation.accessor.lisp
;   ^^^ keyword.other.symbol.lisp

  ',foo
; ^ punctuation.definition.quoted.lisp
;  ^ punctuation.definition.variable.lisp
;   ^^^ variable.other.lisp

  '.foo
; ^ punctuation.definition.quoted.lisp
;  ^^^^ constant.other.symbol.lisp

  '#'foo
; ^ punctuation.definition.quoted.lisp
;  ^ constant.other.symbol.lisp
;   ^ punctuation.definition.quoted.lisp
;    ^^^ constant.other.symbol.lisp

  '(quote quote (quote quote))
; ^ punctuation.definition.quoted.lisp
;  ^^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;               ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                            ^ meta.parens.lisp - meta.parens meta.parens
;                             ^ - meta.parens
;  ^ punctuation.section.parens.begin.lisp
;   ^^^^^ variable.other.lisp
;         ^^^^^ variable.other.lisp
;               ^ punctuation.section.parens.begin.lisp
;                ^^^^^ variable.other.lisp
;                      ^^^^^ variable.other.lisp
;                           ^^ punctuation.section.parens.end.lisp

  (quote quote (quote quote))
; ^^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;              ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                           ^ meta.parens.lisp - meta.parens meta.parens
;                            ^ - meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^^ support.function.lisp
;        ^^^^^ variable.other.lisp
;              ^ punctuation.section.parens.begin.lisp
;               ^^^^^ variable.other.lisp
;                     ^^^^^ variable.other.lisp
;                          ^^ punctuation.section.parens.end.lisp

  (cl:quote (cl:quote))
; ^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;           ^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                     ^ meta.parens.lisp - meta.parens meta.parens
;                      ^ - meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^ variable.namespace.lisp
;     ^^^^^ support.function.lisp
;           ^ punctuation.section.parens.begin.lisp
;            ^^ variable.namespace.lisp
;               ^^^^^ variable.other.lisp
;                    ^^ punctuation.section.parens.end.lisp

; Note: `quote` function can be overridden by user,
; but this can't be handled by a static syntax engine
(defun f (a) (+ a 1))
(setq quote #'f)
;     ^^^^^ variable.other.lisp
;           ^^ punctuation.definition.function.lisp
;             ^ support.function.lisp

(print (eval (append '(funcall) (quote (quote 4))))) ; prints 5
;^^^^^ support.function.lisp
;       ^^^^ support.function.lisp
;             ^^^^^^ support.function.lisp
;                      ^^^^^^^ variable.other.lisp
;                                ^^^^^ support.function.lisp
;                                       ^^^^^ variable.other.lisp

;#############
; BACKQUOTES #
;#############

  `
; ^ punctuation.definition.quoted.lisp

  `foo
; ^ punctuation.definition.quoted.lisp
;  ^^^ variable.other.lisp

  `()
; ^ punctuation.definition.quoted.lisp
;  ^^ meta.parens.lisp

  `(lambda (,param1 (,param2 ,default)) (run ,param1))
;  ^^^^^^^^ meta.parens.lisp
;          ^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp
;                   ^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                     ^ meta.parens.lisp meta.function.parameters.lisp
;                                      ^ meta.parens.lisp - meta.parens meta.parens
;                                       ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                                                    ^ meta.parens.lisp - meta.parens meta.parens
;                                                     ^ - meta.parens
; ^ punctuation.definition.quoted.lisp
;           ^ punctuation.definition.variable.lisp
;            ^^^^^^ variable.parameter.lisp
;                    ^ punctuation.definition.variable.lisp
;                     ^^^^^^ variable.parameter.lisp
;                            ^ punctuation.definition.variable.lisp
;                             ^^^^^^^ variable.other.lisp
;                                            ^ punctuation.definition.variable.lisp
;                                             ^^^^^^ variable.other.lisp

  `#(x1 ,x2 ,@x3)
; ^ - meta.vector - meta.parens
;  ^ meta.vector.lisp - meta.parens
;   ^^^^^^^^^^^^^ meta.vector.lisp meta.parens.lisp
;                ^ - meta.vector - meta.parens
; ^ punctuation.definition.quoted.lisp
;  ^ punctuation.definition.vector.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^ variable.other.lisp
;       ^ punctuation.definition.variable.lisp
;        ^^ variable.other.lisp
;           ^^ punctuation.definition.variable.lisp
;             ^^ variable.other.lisp
;               ^ punctuation.section.parens.end.lisp

  `,foo  ; quoting and evaluating does nothing => same as foo
; ^ punctuation.definition.quoted.lisp
;  ^ punctuation.definition.variable.lisp
;   ^^^ variable.other.lisp

  ,foo  ; evaluate symbol within quoted list
; ^ punctuation.definition.variable.lisp
;  ^^^ variable.other.lisp

  ,(fun arg)
; ^ punctuation.definition.variable.lisp
;  ^^^^^^^^^ meta.parens.lisp
;  ^ punctuation.section.parens.begin.lisp
;   ^^^ meta.function-call.lisp variable.function.lisp
;       ^^^ variable.other.lisp
;          ^ punctuation.section.parens.end.lisp

  ,@foo ; splice an evaluated value
; ^^ punctuation.definition.variable.lisp
;   ^^^ variable.other.lisp

  ,@(fun arg)
; ^^ punctuation.definition.variable.lisp
;   ^^^^^^^^^ meta.parens.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^^ meta.function-call.lisp variable.function.lisp
;        ^^^ variable.other.lisp
;           ^ punctuation.section.parens.end.lisp

;#####################
; LANGUAGE CONSTANTS #
;#####################

(format t "Hello, world!")
;       ^ constant.language

(print true)
;      ^^^^ constant.language.boolean.true.lisp

(print false)
;      ^^^^^ constant.language.boolean.false.lisp

(print nil)
;      ^^^ constant.language.null.lisp

(())
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^ meta.parens.lisp meta.parens.lisp punctuation.section.parens.begin.lisp
; ^ meta.parens.lisp meta.parens.lisp punctuation.section.parens.end.lisp
;  ^ meta.parens.lisp punctuation.section.parens.end.lisp

;#######################
; ARITHMETIC OPERATORS #
;#######################

(+ a b)
;^ keyword.operator.arithmetic

(- a b)
;^ keyword.operator.arithmetic

(* a b)
;^ keyword.operator.arithmetic

(/ a b)
;^ keyword.operator.arithmetic

(mod a b)
;^^^ keyword.operator.arithmetic

(rem a b)
;^^^ keyword.operator.arithmetic

(INCF a b)
;^^^^ keyword.operator.arithmetic

(decf a b)
;^^^^ keyword.operator.arithmetic

;#######################
; COMPARISON OPERATORS #
;#######################

(= a b)
;^ keyword.operator.comparison

(/= a b)
;^^ keyword.operator.comparison

(> a b)
;^ keyword.operator.comparison

(< a b)
;^ keyword.operator.comparison

(>= a b)
;^^ keyword.operator.comparison

(<= a b)
;^^ keyword.operator.comparison

(max a b)
;^^^ keyword.operator.comparison

(min a b)
;^^^ keyword.operator.comparison

(EQ a b)
;^^ keyword.operator.comparison

(neq a b)
;^^^ keyword.operator.comparison

;####################
; LOGICAL OPERATORS #
;####################

(and a b)
;^^^ keyword.operator.logical

(OR a b)
;^^ keyword.operator.logical

(not a b)
;^^^ keyword.operator.logical

;####################
; BITWISE OPERATORS #
;####################

(logand a b)
;^^^^^^ keyword.operator.bitwise

(logior a b)
;^^^^^^ keyword.operator.bitwise

(LOGXOR a b)
;^^^^^^ keyword.operator.bitwise

(lognor a b)
;^^^^^^ keyword.operator.bitwise

(logeqv a b)
;^^^^^^ keyword.operator.bitwise

;#################
; FUNCTION CALLS #
;#################

(foo a b c)
;^^^ meta.function-call.lisp variable.function.lisp
;    ^ variable.other.lisp
;      ^ variable.other.lisp
;        ^ variable.other.lisp

(pkg::bar pkg::b :key)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp
;^^^ variable.namespace.lisp
;   ^^ punctuation.accessor.lisp
;     ^^^ variable.function.lisp
;         ^^^ variable.namespace.lisp
;            ^^ punctuation.accessor.lisp
;              ^ variable.other.lisp
;                ^ punctuation.accessor.lisp
;                 ^^^ keyword.other.symbol.lisp
;                    ^ punctuation.section.parens.end.lisp

(path/to:pkg:fun ns:a b c)
;^^^^^^^ variable.namespace.lisp
;       ^ punctuation.accessor.lisp
;        ^^^ variable.namespace.lisp
;           ^ punctuation.accessor.lisp
;            ^^^ variable.function.lisp
;                ^^ variable.namespace.lisp
;                  ^ punctuation.accessor.lisp
;                   ^ variable.other.lisp
;                     ^ variable.other.lisp
;                       ^ variable.other.lisp

(
    foo
;   ^^^ meta.function-call.lisp variable.function.lisp
    bar
;   ^^^ variable.other.lisp
)

; call a lambda function with exotic parameters
(write (funcall (lambda (+ -) (* + -)) 3 4)) ; prints 12
;       ^^^^^^^ support.function.lisp
;                ^^^^^^^ meta.function.lisp
;                       ^^^^^ meta.function.parameters.lisp
;                ^^^^^^ keyword.declaration.function
;                       ^ punctuation.section.parameters.begin.lisp
;                        ^ variable.parameter.lisp
;                          ^ variable.parameter.lisp
;                           ^ punctuation.section.parameters.end.lisp
;                             ^ punctuation.section.parens.begin.lisp
;                              ^ keyword.operator.arithmetic.lisp
;                                ^ variable.other.lisp
;                                  ^ variable.other.lisp
;                                   ^^ punctuation.section.parens.end.lisp
;                                      ^ constant.numeric.value.lisp
;                                        ^ constant.numeric.value.lisp
;                                         ^^ punctuation.section.parens.end.lisp

(make-foo a b c)
;^^^^^^^^ meta.function-call.lisp variable.function.constructor.lisp
;         ^ variable.other.lisp
;           ^ variable.other.lisp
;             ^ variable.other.lisp

(pkg:make-foo a b c)
;^^^ variable.namespace.lisp
;   ^ punctuation.accessor.lisp
;    ^^^^^^^^ meta.function-call.lisp variable.function.constructor.lisp
;             ^ variable.other.lisp
;               ^ variable.other.lisp
;                 ^ variable.other.lisp

(mutating! a b c)
;^^^^^^^^^ meta.function-call.lisp variable.function.mutating.lisp
;          ^ variable.other.lisp
;            ^ variable.other.lisp
;              ^ variable.other.lisp

(pkg:mutating! a b c)
;^^^ variable.namespace.lisp
;   ^ punctuation.accessor.lisp
;    ^^^^^^^^^ meta.function-call.lisp variable.function.mutating.lisp
;              ^ variable.other.lisp
;                ^ variable.other.lisp
;                  ^ variable.other.lisp

(predicate? a b c)
;^^^^^^^^^^ meta.function-call.lisp variable.function.predicate.lisp
;           ^ variable.other.lisp
;             ^ variable.other.lisp
;               ^ variable.other.lisp

(pkg:predicate? a b c)
;^^^ variable.namespace.lisp
;   ^ punctuation.accessor.lisp
;    ^^^^^^^^^^ meta.function-call.lisp variable.function.predicate.lisp
;               ^ variable.other.lisp
;                 ^ variable.other.lisp
;                   ^ variable.other.lisp

(fun-p a b c)
;^^^^^ meta.function-call.lisp variable.function.predicate.lisp
;      ^ variable.other.lisp
;        ^ variable.other.lisp
;          ^ variable.other.lisp

(pkg:fun-p a b c)
;^^^ variable.namespace.lisp
;   ^ punctuation.accessor.lisp
;    ^^^^^ meta.function-call.lisp variable.function.predicate.lisp
;          ^ variable.other.lisp
;            ^ variable.other.lisp
;              ^ variable.other.lisp

;########
; LISTS #
;########

(null nil)
;^^^^ constant.language.null.lisp
;     ^^^ constant.language.null.lisp

(t nil)
;^ constant.language.lisp
;  ^^^ constant.language.null.lisp

(+foo+ a b c)
;^^^^^ constant.other.lisp
;      ^ variable.other.lisp
;        ^ variable.other.lisp
;          ^ variable.other.lisp

(*foo* a b c)
;^^^^^ variable.other.lisp
;      ^ variable.other.lisp
;        ^ variable.other.lisp
;          ^ variable.other.lisp

(*package* a b c)
;^^^^^^^^^ variable.language.lisp
;          ^ variable.other.lisp
;            ^ variable.other.lisp
;              ^ variable.other.lisp

(`foo bar)
;^ punctuation.definition.quoted.lisp
; ^^^ variable.other.lisp
;     ^^^ variable.other.lisp

(&foo bar)
;^^^^ variable.annotation.lisp
;     ^^^ variable.other.lisp

(#+darwin (fun arg))
;^^ keyword.control.conditional.lisp
;  ^^^^^^ constant.other.feature.lisp
;         ^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                  ^ meta.parens.lisp - meta.parens meta.parens
;                   ^ - meta.parens
;         ^ punctuation.section.parens.begin.lisp
;          ^^^ meta.function-call.lisp variable.function.lisp
;              ^^^ variable.other.lisp
;                 ^^ punctuation.section.parens.end.lisp

(#(1 2 3))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^ meta.parens.lisp meta.vector.lisp - meta.parens meta.parens
; ^^^^^^^ meta.parens.lisp meta.vector.lisp meta.parens.lisp
;        ^ meta.parens.lisp - meta.vector
;         ^ - meta.parens
;^ punctuation.definition.vector.lisp
; ^ punctuation.section.parens.begin.lisp
;  ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;    ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;      ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;       ^^ punctuation.section.parens.end.lisp

(#\!)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^ meta.parens.lisp constant.character.standard.lisp
;^^ punctuation.definition.constant.lisp
;   ^ meta.parens.lisp punctuation.section.parens.end.lisp

(#\:)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^ meta.parens.lisp constant.character.standard.lisp
;^^ punctuation.definition.constant.lisp
;   ^ meta.parens.lisp punctuation.section.parens.end.lisp

(#:foo)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^ meta.parens.lisp
;^^ punctuation.definition.variable.lisp
;  ^^^ variable.other.lisp
;     ^ punctuation.section.parens.end.lisp

(#.foo)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^ meta.parens.lisp
;^^ punctuation.definition.variable.lisp
;  ^^^ variable.other.lisp
;     ^ punctuation.section.parens.end.lisp

(#,foo)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^ meta.parens.lisp
;^^ punctuation.definition.variable.lisp
;  ^^^ variable.other.lisp
;     ^ punctuation.section.parens.end.lisp

(. a b c)
;^ keyword.control.lisp
;  ^ variable.other.lisp
;    ^ variable.other.lisp
;      ^ variable.other.lisp

(NIL a b c)
;^^^ constant.language.null.lisp
;    ^ variable.other.lisp
;      ^ variable.other.lisp
;        ^ variable.other.lisp

(0 1 2 3)
;^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;  ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;    ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;      ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp

(:val :val)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^ meta.parens.lisp
;^ punctuation.accessor.lisp
; ^^^ keyword.other.symbol.lisp
;     ^ punctuation.accessor.lisp
;      ^^^ keyword.other.symbol.lisp

;##################
; TYPE SPECIFIERS #
;##################

(atom test)
;^^^^ meta.function-call.lisp support.function.lisp

(float 10)
;^^^^^ meta.function-call.lisp support.function.lisp

(double-float 10)
;^^^^^^^^^^^^ storage.type.lisp

(vector float 100)
;^^^^^^ meta.function-call.lisp support.function.lisp
;       ^^^^^ storage.type.lisp

;#####################
; CLASS DECLARATIONS #
;#####################

(defclass name (super1 pkg:super2)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp - meta.parens meta.parens
;              ^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp meta.parens.lisp
;                                 ^ meta.parens.lisp meta.class.lisp - meta.parens meta.parens
;^^^^^^^^ keyword.declaration.class.lisp
;         ^^^^ entity.name.class.lisp
;              ^ punctuation.section.parens.begin.lisp
;               ^^^^^^ entity.other.inherited-class.lisp
;                      ^^^ variable.namespace.lisp
;                         ^ punctuation.accessor.lisp
;                          ^^^^^^ entity.other.inherited-class.lisp
;                                ^ punctuation.section.parens.end.lisp
    slot-name
; <- meta.parens.lisp meta.class.lisp
;^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp
;   ^^^^^^^^^ variable.other.lisp

    (slot-name :type float)
; <- meta.parens.lisp meta.class.lisp
;^^^ meta.parens.lisp meta.class.lisp
;   ^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp meta.parens.lisp
;                          ^ meta.parens.lisp meta.class.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^^^^^^^^ variable.other.lisp
;              ^ punctuation.accessor.lisp
;               ^^^^ keyword.other.symbol.lisp
;                    ^^^^^ storage.type.lisp
;                         ^ punctuation.section.parens.end.lisp

    :meta-class class-name
; <- meta.parens.lisp meta.class.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp
;   ^ punctuation.accessor.lisp
;    ^^^^^^^^^^ keyword.other.symbol.lisp
;               ^^^^^^^^^^ variable.other.lisp
    :default-initargs . (foo bar baz))
; <- meta.parens.lisp meta.class.lisp
;^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp
;                       ^^^^^^^^^^^^^ meta.parens.lisp meta.class.lisp meta.parens.lisp
;                                    ^ meta.parens.lisp - meta.class
;                                     ^ - meta
;   ^ punctuation.accessor.lisp
;    ^^^^^^^^^^^^^^^^ keyword.other.symbol.lisp
;                     ^ keyword.control.lisp
;                       ^ punctuation.section.parens.begin.lisp
;                        ^^^ variable.other.lisp
;                            ^^^ variable.other.lisp
;                                ^^^ variable.other.lisp
;                                   ^^ punctuation.section.parens.end.lisp

;########################
; FUNCTION DECLARATIONS #
;########################

(defun name)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.function
;^^^^^^^^^^ meta.parens.lisp meta.function.lisp - meta.function meta.function
;          ^ meta.parens.lisp punctuation.section.parens.end.lisp - meta.function
;^^^^^ keyword.declaration.function.lisp
;      ^^^^ entity.name.function.lisp

(defslyfun name)   ; custom function declaration keywords
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.function
;^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp - meta.function meta.function
;              ^ meta.parens.lisp punctuation.section.parens.end.lisp - meta.function
;^^^^^^^^^ keyword.declaration.function.lisp
;          ^^^^ entity.name.function.lisp

(defun averagenum (n1 n2 n3 n4)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.function
;^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp - meta.function meta.function
;                 ^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp - meta.function meta.function
;                              ^ meta.parens.lisp meta.function.lisp - meta.function meta.function
;^^^^^ keyword.declaration.function.lisp
;      ^^^^^^^^^^ entity.name.function.lisp
;                 ^ punctuation.section.parameters.begin.lisp
;                  ^^ variable.parameter.lisp
;                    ^ - variable
;                     ^^ variable.parameter.lisp
;                        ^^ variable.parameter.lisp
;                           ^^ variable.parameter.lisp
;                             ^ punctuation.section.parameters.end.lisp
    (/ ( + n1 n2 n3 n4) 4)
;  ^ meta.parens.lisp meta.function.lisp
;   ^^^ meta.parens.lisp meta.function.lisp meta.parens.lisp
;      ^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp meta.parens.lisp meta.parens.lisp
;                      ^^^ meta.parens.lisp meta.function.lisp meta.parens.lisp
;                         ^ meta.parens.lisp meta.function.lisp
;    ^ keyword.operator
;        ^ keyword.operator
;                       ^ constant.numeric
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp - meta.function
;^ - meta.parens

(defun what? (n1 n2 n3 n4)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.function
;^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp - meta.function meta.function
;            ^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp - meta.function meta.function
;                         ^ meta.parens.lisp meta.function.lisp - meta.function meta.function
;^^^^^ keyword.declaration.function.lisp
;      ^^^^^ entity.name.function.lisp
;            ^ punctuation.section.parameters.begin.lisp
;             ^^ variable.parameter.lisp
;               ^ - variable
;                ^^ variable.parameter.lisp
;                   ^^ variable.parameter.lisp
;                      ^^ variable.parameter.lisp
;                        ^ punctuation.section.parameters.end.lisp
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp - meta.function
;^ - meta.parens

(defun is>?! (n1 n2 n3 n4)
;^^^^^ keyword.declaration.function.lisp
;      ^^^^^ entity.name.function.lisp
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp
;^ - meta.parens

(defun |fun name| (|arg1 name| (|arg2 name| 5)) (print |arg name|))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.function
;^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp
;                 ^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp - meta.parens meta.parens
;                              ^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                             ^ meta.parens.lisp meta.function.parameters.lisp - meta.parens meta.parens
;                                              ^ meta.parens.lisp meta.function.lisp - meta.parens meta.parens
;                                               ^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                                                 ^ meta.parens.lisp - meta.parens meta.parens - meta.function
;^^^^^ keyword.declaration.function.lisp
;      ^^^^^^^^^^ entity.name.function.lisp
;      ^ punctuation.definition.symbol.begin.lisp
;               ^ punctuation.definition.symbol.end.lisp
;                 ^ punctuation.section.parameters.begin.lisp
;                  ^^^^^^^^^^^ variable.parameter.lisp
;                  ^ punctuation.definition.symbol.begin.lisp
;                            ^ punctuation.definition.symbol.end.lisp
;                              ^ punctuation.section.parens.begin.lisp
;                               ^^^^^^^^^^^ variable.parameter.lisp
;                               ^ punctuation.definition.symbol.begin.lisp
;                                         ^ punctuation.definition.symbol.end.lisp
;                                           ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                                            ^ punctuation.section.parens.end.lisp
;                                             ^ punctuation.section.parameters.end.lisp
;                                               ^ punctuation.section.parens.begin.lisp
;                                                ^^^^^ meta.function-call.lisp support.function.lisp
;                                                      ^^^^^^^^^^ variable.other.lisp
;                                                      ^ punctuation.definition.symbol.begin.lisp
;                                                               ^ punctuation.definition.symbol.end.lisp
;                                                                ^^ punctuation.section.parens.end.lisp

(defun log-1(log-1) (if log-1 "1" "0"))
;^^^^^ keyword.declaration.function.lisp
;      ^^^^^ entity.name.function
;           ^^^^^^^ meta.function.parameters
;           ^ punctuation.section.parameters.begin
;             ^^^^ variable.parameter
;                 ^ punctuation.section.parameters.end
;                  ^ meta.parens - meta.function.parameters
;                   ^^^^^^^^^^^^^^^^^^ meta.parens meta.parens - meta.function.parameters
;                    ^^ keyword.control.conditional
;                       ^^^^^ variable.other
;                             ^^^ string.quoted.double
;                                 ^^^ string.quoted.double
(format t (log-1 (< 1 2)))
;^^^^^^ support.function
;       ^ constant.language
;          ^^^^^ variable.function
;                 ^ keyword.operator.comparison
;                   ^ constant.numeric
;                     ^ constant.numeric
;                      ^^^ punctuation.section.parens.end
;                         ^ - meta.parens

(defun name (arg1 (arg2 4) &optional (&anno arg3 &anno (fun arg) &rest rest)) "name (&optional (arg "key"))" (return NIL))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.function
;^^^^^^^^^^^ meta.parens.lisp meta.function.lisp
;           ^^^^^^ meta.parens.lisp meta.function.parameters.lisp
;                 ^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                         ^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp
;                                    ^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                                      ^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp meta.parens.lisp
;                                                               ^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                                                           ^ meta.parens.lisp meta.function.parameters.lisp punctuation.section.parameters.end.lisp
;                                                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp - meta.parens meta.parens
;                                                                                                            ^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                                                                                                        ^ meta.parens.lisp punctuation.section.parens.end.lisp - meta.function
;^^^^^ keyword.declaration.function.lisp
;      ^^^^ entity.name.function.lisp
;           ^ punctuation.section.parameters.begin.lisp
;            ^^^^ variable.parameter.lisp
;                 ^ punctuation.section.parens.begin.lisp
;                  ^^^^ variable.parameter.lisp
;                       ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                        ^ punctuation.section.parens.end.lisp
;                          ^^^^^^^^^ variable.annotation.lisp
;                                    ^ punctuation.section.parens.begin.lisp
;                                     ^^^^^ variable.annotation.lisp
;                                           ^^^^ variable.parameter.lisp
;                                                ^^^^^ variable.annotation.lisp
;                                                      ^ punctuation.section.parens.begin.lisp
;                                                       ^^^ meta.function-call.lisp variable.function.lisp
;                                                           ^^^ variable.other.lisp
;                                                              ^ punctuation.section.parens.end.lisp
;                                                                ^^^^^ variable.annotation.lisp
;                                                                      ^^^^ variable.other.lisp
;                                                                          ^ punctuation.section.parens.end.lisp
;                                                                           ^ punctuation.section.parameters.end.lisp
;                                                                             ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                                                                                                    ^^^ variable.other.lisp
;                                                                                                       ^^^^ meta.string.lisp string.quoted.double.lisp
;                                                                                                            ^ punctuation.section.parens.begin.lisp
;                                                                                                             ^^^^^^ keyword.control.flow.return.lisp
;                                                                                                                    ^^^ constant.language.null.lisp
;                                                                                                                       ^^ punctuation.section.parens.end.lisp

(defgeneric expunge-bogon (bogon &key with-force) ())
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp
;                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp
;                                                ^ meta.parens.lisp meta.function.lisp - meta.parens meta.parens
;                                                 ^^ meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                                   ^ meta.parens.lisp - meta.function.lisp
;                                                    ^ - meta.parens
;^^^^^^^^^^ keyword.declaration.function.lisp
;           ^^^^^^^^^^^^^ entity.name.function.lisp
;                         ^ punctuation.section.parameters.begin.lisp
;                          ^^^^^ variable.parameter.lisp
;                                ^^^^ variable.annotation.lisp
;                                     ^^^^^^^^^^ variable.parameter.lisp
;                                               ^ punctuation.section.parameters.end.lisp
;                                                 ^ punctuation.section.parens.begin.lisp
;                                                  ^^ punctuation.section.parens.end.lisp

(defmethod initialize-instance :after ((command command) &key lambda-expression &allow-other-keys)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp - meta.parens meta.parens
;                                     ^ meta.parens.lisp meta.function.parameters.lisp - meta.parens meta.parens
;                                      ^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp - meta.parens meta.parens
;                                                                                                 ^ meta.parens.lisp meta.function.lisp
;^^^^^^^^^ keyword.declaration.function.lisp
;          ^^^^^^^^^^^^^^^^^^^ entity.name.function.lisp
;                              ^ punctuation.accessor.lisp
;                               ^^^^^ keyword.other.symbol.lisp
;                                     ^ punctuation.section.parameters.begin.lisp
;                                      ^ punctuation.section.parens.begin.lisp
;                                       ^^^^^^^ variable.parameter.lisp
;                                               ^^^^^^^ variable.other.lisp
;                                                      ^ punctuation.section.parens.end.lisp
;                                                        ^^^^ variable.annotation.lisp
;                                                             ^^^^^^^^^^^^^^^^^ variable.parameter.lisp
;                                                                               ^^^^^^^^^^^^^^^^^ variable.annotation.lisp
;                                                                                                ^ punctuation.section.parameters.end.lisp
  (initialize-command command lambda-expression))
; <- meta.parens.lisp meta.function.lisp - meta.parens meta.parens
;^ meta.parens.lisp meta.function.lisp - meta.parens meta.parens
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                               ^ meta.parens.lisp - meta.parens meta.parens - meta.function
;                                                ^ - meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^^^^^^^^^^^^^^^ meta.function-call.lisp variable.function.lisp
;                     ^^^^^^^ variable.other.lisp
;                             ^^^^^^^^^^^^^^^^^ variable.other.lisp
;                                              ^^ punctuation.section.parens.end.lisp

(defmethod files:serialize ((profile nyxt-profile) (file history-file) stream &key)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.lisp
;                          ^ meta.parens.lisp meta.function.parameters.lisp
;                           ^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                                 ^ meta.parens.lisp meta.function.parameters.lisp
;                                                  ^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                                                     ^^^^^^^^^^^^^ meta.parens.lisp meta.function.parameters.lisp
;                                                                                  ^ meta.parens.lisp meta.function.lisp
;^^^^^^^^^ keyword.declaration.function.lisp
;          ^^^^^ variable.namespace.lisp
;               ^ punctuation.accessor.lisp
;                ^^^^^^^^^ entity.name.function.lisp
;                          ^ punctuation.section.parameters.begin.lisp
;                           ^ punctuation.section.parens.begin.lisp
;                            ^^^^^^^ variable.parameter.lisp
;                                    ^^^^^^^^^^^^ variable.other.lisp
;                                                ^ punctuation.section.parens.end.lisp
;                                                  ^ punctuation.section.parens.begin.lisp
;                                                   ^^^^ variable.parameter.lisp
;                                                        ^^^^^^^^^^^^ variable.other.lisp
;                                                                    ^ punctuation.section.parens.end.lisp
;                                                                      ^^^^^^ variable.parameter.lisp
;                                                                             ^^^^ variable.annotation.lisp
;                                                                                 ^ punctuation.section.parameters.end.lisp
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp - meta.function
;^ - meta.parens

;#####################
; MACRO DECLARATIONS #
;#####################

(defmacro %inner-macro (n1 n2 n3 n4)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.macro
;^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.macro.lisp
;                      ^^^^^^^^^^^^^ meta.parens.lisp meta.macro.parameters.lisp
;                                   ^ meta.parens.lisp meta.macro.lisp
;^^^^^^^^ keyword.declaration.macro.lisp
;         ^^^^^^^^^^^^ entity.name.macro.lisp
;                      ^ punctuation.section.parameters.begin.lisp
;                       ^^ variable.parameter.lisp
;                          ^^ variable.parameter.lisp
;                             ^^ variable.parameter.lisp
;                                ^^ variable.parameter.lisp
;                                  ^ punctuation.section.parameters.end.lisp
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp - meta.macro
;^ - meta.params

(defmacro %inner-macro nil (n1 n2 n3 n4)
;^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.macro.lisp - meta.parens meta.parens
;                          ^^^^^^^^^^^^^ meta.parens.lisp meta.macro.lisp meta.parens.lisp
;^^^^^^^^ keyword.declaration.macro.lisp
;         ^^^^^^^^^^^^ entity.name.macro.lisp
;                      ^^^ constant.language.null.lisp
;                          ^ punctuation.section.parens.begin.lisp
;                           ^^ variable.function.lisp
;                              ^^ variable.other.lisp
;                                 ^^ variable.other.lisp
;                                    ^^ variable.other.lisp
;                                      ^ punctuation.section.parens.end.lisp
)
; <- meta.parens.lisp punctuation.section.parens.end.lisp - meta.macro
;^ - meta.params

;######################
; STRUCT DECLARATIONS #
;######################

(defstruct structname)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp
;^^^^^^^^^ keyword.declaration.struct.lisp
;          ^^^^^^^^^^ entity.name.struct.lisp
;                    ^ meta.parens.lisp punctuation.section.parens.end.lisp

(defstruct (structname :conc-name))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^ meta.parens.lisp meta.struct.lisp
;          ^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp meta.parens.lisp
;                                 ^ meta.parens.lisp - meta.struct
;^^^^^^^^^ keyword.declaration.struct.lisp
;          ^ punctuation.section.parens.begin.lisp
;           ^^^^^^^^^^ entity.name.struct.lisp
;                      ^ punctuation.accessor.lisp
;                       ^^^^^^^^^ keyword.other.symbol.lisp
;                                ^^ punctuation.section.parens.end.lisp

(defstruct (structname (:conc-name conc-name)))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^ meta.parens.lisp meta.struct.lisp
;          ^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp meta.parens.lisp - meta.struct meta.parens meta.parens
;                      ^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp meta.parens.lisp meta.parens.lisp
;                                            ^ meta.parens.lisp meta.struct.lisp meta.parens.lisp - meta.struct meta.parens meta.parens
;                                             ^ meta.parens.lisp - meta.struct
;^^^^^^^^^ keyword.declaration.struct.lisp
;          ^ punctuation.section.parens.begin.lisp
;           ^^^^^^^^^^ entity.name.struct.lisp
;                      ^ punctuation.section.parens.begin.lisp
;                       ^ punctuation.accessor.lisp
;                        ^^^^^^^^^ keyword.other.symbol.lisp
;                                  ^^^^^^^^^ variable.other.lisp
;                                           ^^^ punctuation.section.parens.end.lisp

(defstruct structname "docstring" slot1 slot2)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp
;                                            ^ meta.parens.lisp - meta.struct
;                                             ^ - meta.parens
;^^^^^^^^^ keyword.declaration.struct.lisp
;          ^^^^^^^^^^ entity.name.struct.lisp
;                     ^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                                 ^^^^^ variable.other.lisp
;                                       ^^^^^ variable.other.lisp
;                                            ^ punctuation.section.parens.end.lisp

(defstruct structname (slot-name '() :type string :read-only t))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp
;                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp meta.parens.lisp
;                                                              ^ meta.parens.lisp - meta.struct
;^^^^^^^^^ keyword.declaration.struct.lisp
;          ^^^^^^^^^^ entity.name.struct.lisp
;                     ^ punctuation.section.parens.begin.lisp
;                      ^^^^^^^^^ variable.other.lisp
;                                ^ punctuation.definition.quoted.lisp
;                                 ^ punctuation.section.parens.begin.lisp
;                                  ^ punctuation.section.parens.end.lisp
;                                    ^ punctuation.accessor.lisp
;                                     ^^^^ keyword.other.symbol.lisp
;                                          ^^^^^^ storage.type.lisp
;                                                 ^ punctuation.accessor.lisp
;                                                  ^^^^^^^^^ keyword.other.symbol.lisp
;                                                            ^ constant.language.lisp
;                                                             ^^ punctuation.section.parens.end.lisp

(defstruct structname (slot-name (fun arg) :read-only t))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp
;                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.struct.lisp meta.parens.lisp
;                                                       ^ meta.parens.lisp - meta.struct
;^^^^^^^^^ keyword.declaration.struct.lisp
;          ^^^^^^^^^^ entity.name.struct.lisp
;                     ^ punctuation.section.parens.begin.lisp
;                      ^^^^^^^^^ variable.other.lisp
;                                ^^^^^^^^^ meta.parens.lisp
;                                ^ punctuation.section.parens.begin.lisp
;                                 ^^^ meta.function-call.lisp variable.function.lisp
;                                     ^^^ variable.other.lisp
;                                        ^ punctuation.section.parens.end.lisp
;                                          ^ punctuation.accessor.lisp
;                                           ^^^^^^^^^ keyword.other.symbol.lisp
;                                                     ^ constant.language.lisp
;                                                      ^^ punctuation.section.parens.end.lisp

;####################
; TYPE DECLARATIONS #
;####################

(deftype typename)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp - meta.type
;^^^^^^^^^^^^^^^^ meta.parens.lisp meta.type.lisp
;^^^^^^^ keyword.declaration.type.lisp
;        ^^^^^^^^ entity.name.type.lisp
;                ^ meta.parens.lisp punctuation.section.parens.end.lisp - meta.type

(deftype square-matrix (&optional type size)
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.type.lisp
;                      ^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.type.parameters.lisp
;                                           ^ meta.parens.lisp meta.type.lisp
;^^^^^^^ keyword.declaration.type.lisp
;        ^^^^^^^^^^^^^ entity.name.type.lisp
;                      ^ punctuation.section.parameters.begin.lisp
;                       ^^^^^^^^^ variable.annotation.lisp
;                                 ^^^^ variable.parameter.lisp
;                                      ^^^^ variable.parameter.lisp
;                                          ^ punctuation.section.parameters.end.lisp
   `(and (array ,type (,size ,size))
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.type.lisp
;    ^^^ keyword.operator.logical.lisp
;         ^^^^^ storage.type.lisp
;               ^ punctuation.definition.variable.lisp
;                ^^^^ variable.other.lisp
;                      ^ punctuation.definition.variable.lisp
;                       ^^^^ variable.other.lisp
;                            ^ punctuation.definition.variable.lisp
;                             ^^^^ variable.other.lisp
         (satisfies equidimensional)))
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.type.lisp meta.parens.lisp
;                                    ^ meta.parens.lisp punctuation.section.parens.end.lisp - meta.type
;                                     ^ - meta.parens
;         ^^^^^^^^^ keyword.operator.logical.lisp
;                   ^^^^^^^^^^^^^^^ variable.other.lisp

;########################
; VARIABLE DECLARATIONS #
;########################

(defconstant +name+ value "documentation")
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp
;^^^^^^^^^^^^^^^^^^ meta.declaration.lisp
;^^^^^^^^^^^ keyword.declaration.constant.lisp
;            ^^^^^^ constant.other.lisp
;                   ^^^^^ variable.other.lisp
;                         ^^^^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                                        ^ punctuation.section.parens.end.lisp

(defparameter *name* value "documentation")
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp
;^^^^^^^^^^^^^^^^^^^ meta.declaration.lisp
;^^^^^^^^^^^^ keyword.declaration.variable.lisp
;             ^^^^^^ variable.other.lisp
;                    ^^^^^ variable.other.lisp
;                          ^^^^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                                         ^ punctuation.section.parens.end.lisp

(defvar *name* value "documentation")
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp
;^^^^^^^^^^^^^ meta.declaration.lisp
;^^^^^^ keyword.declaration.variable.lisp
;       ^^^^^^ variable.other.lisp
;              ^^^^^ variable.other.lisp
;                    ^^^^^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                                   ^ punctuation.section.parens.end.lisp

;##############################
; LOCAL FUNCTION DECLARATIONS #
;##############################

(flet ((fun1 (arg1 (arg2 default)) "docstring" (print foo)) (fun2 () (print foo))) (declare (inline foo) (special x z)))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^ meta.parens.lisp - meta.parens meta.parens
;     ^ meta.parens meta.parens - meta.parens meta.parens meta.parens
;      ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.function
;       ^^^^^ meta.parens meta.parens.lisp meta.parens.lisp meta.function.lisp
;            ^^^^^^ meta.parens meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp
;                  ^^^^^^^^^^^^^^ meta.parens meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                                ^ meta.parens meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp
;                                 ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp - meta.parens meta.parens meta.parens meta.parens
;                                              ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                                         ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens - meta.function
;                                                          ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens - meta.function
;                                                           ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.function
;                                                            ^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp
;                                                                 ^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp
;                                                                   ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp - meta.parens meta.parens meta.parens meta.parens
;                                                                    ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                                                               ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens - meta.function
;                                                                                ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens - meta.function
;                                                                                 ^ meta.parens.lisp - meta.parens meta.parens
;                                                                                  ^^^^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                                                                           ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                                                                                       ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                                                                                        ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                                                                                                     ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                                                                                                      ^ meta.parens.lisp - meta.parens meta.parens
;                                                                                                                       ^ - meta.parens
;^^^^ keyword.declaration.function.lisp
;     ^^ punctuation.section.parens.begin.lisp
;       ^^^^ entity.name.function.lisp
;            ^ punctuation.section.parameters.begin.lisp
;             ^^^^ variable.parameter.lisp
;                  ^ punctuation.section.parens.begin.lisp
;                   ^^^^ variable.parameter.lisp
;                        ^^^^^^^ variable.other.lisp
;                               ^ punctuation.section.parens.end.lisp
;                                ^ punctuation.section.parameters.end.lisp
;                                  ^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                                              ^ punctuation.section.parens.begin.lisp
;                                               ^^^^^ meta.function-call.lisp support.function.lisp
;                                                     ^^^ variable.other.lisp
;                                                        ^^ punctuation.section.parens.end.lisp
;                                                           ^ punctuation.section.parens.begin.lisp
;                                                            ^^^^ meta.function.lisp entity.name.function.lisp
;                                                                 ^ punctuation.section.parameters.begin.lisp
;                                                                  ^ punctuation.section.parameters.end.lisp
;                                                                    ^ punctuation.section.parens.begin.lisp
;                                                                     ^^^^^ meta.function-call.lisp support.function.lisp
;                                                                           ^^^ variable.other.lisp
;                                                                              ^^^ punctuation.section.parens.end.lisp
;                                                                                  ^ punctuation.section.parens.begin.lisp
;                                                                                   ^^^^^^^ keyword.declaration.declare.lisp
;                                                                                           ^ punctuation.section.parens.begin.lisp
;                                                                                            ^^^^^^ storage.modifier.lisp
;                                                                                                   ^^^ variable.other.lisp
;                                                                                                      ^ punctuation.section.parens.end.lisp
;                                                                                                        ^ punctuation.section.parens.begin.lisp
;                                                                                                         ^^^^^^^ storage.modifier.lisp
;                                                                                                                 ^ variable.other.lisp
;                                                                                                                   ^ variable.other.lisp
;                                                                                                                    ^^^ punctuation.section.parens.end.lisp

(labels (
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;       ^^ meta.parens.lisp meta.parens.lisp
;^^^^^^ keyword.declaration.function.lisp
;       ^ punctuation.section.parens.begin.lisp

  (fun1 (arg1 (arg2 default)) (print foo))
;^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
; ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.function
;  ^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp
;       ^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp - meta.function meta.parens
;             ^^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp meta.parens.lisp
;                           ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp - meta.function meta.parens
;                            ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp - meta.parens meta.parens meta.parens meta.parens
;                             ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp meta.parens.lisp
;                                        ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens - meta.function
;                                         ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^ entity.name.function.lisp
;       ^ punctuation.section.parameters.begin.lisp
;        ^^^^ variable.parameter.lisp
;             ^ punctuation.section.parens.begin.lisp
;              ^^^^ variable.parameter.lisp
;                   ^^^^^^^ variable.other.lisp
;                          ^ punctuation.section.parens.end.lisp
;                           ^ punctuation.section.parameters.end.lisp
;                             ^ punctuation.section.parens.begin.lisp
;                              ^^^^^ meta.function-call.lisp support.function.lisp
;                                    ^^^ variable.other.lisp
;                                       ^^ punctuation.section.parens.end.lisp

  (fun2 () "docstring" ()))
;^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
; ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.function
;  ^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp
;       ^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.parameters.lisp
;         ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp - meta.parens meta.parens meta.parens meta.parens
;                      ^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.function.lisp meta.parens.lisp
;                        ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens - meta.function
;                         ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens - meta.function
;                          ^ meta.parens.lisp - meta.parens meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^ entity.name.function.lisp
;       ^ punctuation.section.parameters.begin.lisp
;        ^ punctuation.section.parameters.end.lisp
;          ^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                      ^ punctuation.section.parens.begin.lisp
;                       ^^^ punctuation.section.parens.end.lisp

  (declare (inline foo) (special x z)))
;^ meta.parens.lisp
; ^^^^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;          ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                      ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                       ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                    ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                     ^ meta.parens.lisp - meta.parens meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^^^^ keyword.declaration.declare.lisp
;          ^ punctuation.section.parens.begin.lisp
;           ^^^^^^ storage.modifier.lisp
;                  ^^^ variable.other.lisp
;                     ^ punctuation.section.parens.end.lisp
;                       ^ punctuation.section.parens.begin.lisp
;                        ^^^^^^^ storage.modifier.lisp
;                                ^ variable.other.lisp
;                                  ^ variable.other.lisp
;                                   ^^^ punctuation.section.parens.end.lisp

;###########################
; LOCAL MACRO DECLARATIONS #
;###########################

(macrolet (
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;         ^^ meta.parens.lisp meta.parens.lisp
;^^^^^^^^ keyword.declaration.macro.lisp
;         ^ punctuation.section.parens.begin.lisp

  (fun1 (arg1 (arg2 default)) (print foo))
;^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
; ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.macro
;  ^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.lisp
;       ^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.parameters.lisp - meta.macro meta.parens
;             ^^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.parameters.lisp meta.parens.lisp
;                           ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.parameters.lisp - meta.macro meta.parens
;                            ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.lisp - meta.parens meta.parens meta.parens meta.parens
;                             ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.lisp meta.parens.lisp
;                                        ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens - meta.macro
;                                         ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens - meta.macro
; ^ punctuation.section.parens.begin.lisp
;  ^^^^ entity.name.macro.lisp
;       ^ punctuation.section.parameters.begin.lisp
;        ^^^^ variable.parameter.lisp
;             ^ punctuation.section.parens.begin.lisp
;              ^^^^ variable.parameter.lisp
;                   ^^^^^^^ variable.other.lisp
;                          ^ punctuation.section.parens.end.lisp
;                           ^ punctuation.section.parameters.end.lisp
;                             ^ punctuation.section.parens.begin.lisp
;                              ^^^^^ meta.function-call.lisp support.function.lisp
;                                    ^^^ variable.other.lisp
;                                       ^^ punctuation.section.parens.end.lisp

  (fun2 () "docstring" ()))
;^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
; ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.macro
;  ^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.lisp
;       ^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.parameters.lisp
;         ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.lisp - meta.parens meta.parens meta.parens meta.parens
;                      ^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.macro.lisp meta.parens.lisp
;                        ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens - meta.macro
;                         ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens - meta.macro
;                          ^ meta.parens.lisp - meta.parens meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^ entity.name.macro.lisp
;       ^ punctuation.section.parameters.begin.lisp
;        ^ punctuation.section.parameters.end.lisp
;          ^^^^^^^^^^^ meta.string.lisp string.quoted.double.lisp
;                      ^ punctuation.section.parens.begin.lisp
;                       ^^^ punctuation.section.parens.end.lisp

  (declare (inline foo) (special x z)))
;^ meta.parens.lisp
; ^^^^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;          ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                      ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                       ^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                    ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                     ^ meta.parens.lisp - meta.parens meta.parens
; ^ punctuation.section.parens.begin.lisp
;  ^^^^^^^ keyword.declaration.declare.lisp
;          ^ punctuation.section.parens.begin.lisp
;           ^^^^^^ storage.modifier.lisp
;                  ^^^ variable.other.lisp
;                     ^ punctuation.section.parens.end.lisp
;                       ^ punctuation.section.parens.begin.lisp
;                        ^^^^^^^ storage.modifier.lisp
;                                ^ variable.other.lisp
;                                  ^ variable.other.lisp
;                                   ^^^ punctuation.section.parens.end.lisp

;##############################
; LOCAL VARIABLE DECLARATIONS #
;##############################

(let ( name0 (name1 (list value)) (name2 (list value)) ))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^ meta.parens.lisp - meta.parens meta.parens
;    ^^^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;            ^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                   ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                               ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                 ^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                        ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                                    ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                                     ^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                                       ^ meta.parens.lisp - meta.parens meta.parens
;^^^ keyword.declaration.variable.lisp
;    ^ punctuation.section.parens.begin.lisp
;      ^^^^^ meta.declaration.lisp variable.other.lisp
;            ^ punctuation.section.parens.begin.lisp
;             ^^^^^ variable.other.lisp
;                   ^ punctuation.section.parens.begin.lisp
;                    ^^^^ meta.function-call.lisp support.function.lisp
;                         ^^^^^ variable.other.lisp
;                              ^ punctuation.section.parens.end.lisp
;                               ^ punctuation.section.parens.end.lisp
;                                 ^ punctuation.section.parens.begin.lisp
;                                  ^^^^^ variable.other.lisp
;                                        ^ punctuation.section.parens.begin.lisp
;                                         ^^^^ meta.function-call.lisp support.function.lisp
;                                              ^^^^^ variable.other.lisp
;                                                   ^^ punctuation.section.parens.end.lisp
;                                                      ^^ punctuation.section.parens.end.lisp

;########
; LOOPS #
;########

(loop

;;; name-clause

  named name
; ^^^^^ keyword.declaration.name.lisp
;       ^^^^ entity.name.loop.lisp

;;; initial-final-clause

  initially ()
; ^^^^^^^^^ keyword.control.flow.lisp
;           ^^ meta.parens.lisp

  finally (return (values evens odds))
;^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;         ^^^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                 ^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                    ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                     ^ meta.parens.lisp - meta.parens meta.parens
; ^^^^^^^ keyword.control.flow.lisp
;         ^ punctuation.section.parens.begin.lisp
;          ^^^^^^ keyword.control.flow.return.lisp
;                 ^ punctuation.section.parens.begin.lisp
;                  ^^^^^^ meta.function-call.lisp support.function.lisp
;                         ^^^^^ variable.other.lisp
;                               ^^^^ variable.other.lisp
;                                   ^^ punctuation.section.parens.end.lisp

;;; with-clause

  with var1 :float = 10.5 and var2 = true
; ^^^^ keyword.declaration.variable.lisp
;      ^^^^ variable.other.lisp
;           ^ punctuation.accessor.lisp
;            ^^^^^ keyword.other.symbol.lisp
;                  ^ keyword.operator.lisp
;                    ^^^^ constant.numeric.value.lisp
;                         ^^^ keyword.operator.logical.lisp
;                             ^^^^ variable.other.lisp
;                                  ^ keyword.operator.lisp
;                                    ^^^^ constant.language.boolean.true.lisp

;;; for-as-claus

  for x-list = '(a b c) then (cdr x-list)
; ^^^ keyword.control.loop.lisp
;     ^^^^^^ variable.other.lisp
;            ^ keyword.operator.lisp
;              ^ punctuation.definition.quoted.lisp
;               ^^^^^^^ meta.parens.lisp meta.parens.lisp
;                       ^^^^ keyword.control.conditional.lisp
;                            ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp

  as w2 = (read-line f2 nil nil)
; ^^ keyword.control.loop.lisp
;    ^^ variable.other.lisp
;       ^ keyword.operator.lisp
;         ^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp

;;; for-as-in-list

  var in (1 2 3) by 1
; ^^^ variable.other.lisp
;     ^^ keyword.other.loop.lisp
;                ^^ keyword.other.loop.lisp

;;; for-as-on-list

  var on (1 2 3) by 1
; ^^^ variable.other.lisp
;     ^^ keyword.other.loop.lisp
;                ^^ keyword.other.loop.lisp

;;; for-as-equals-then

  var = true then false
; ^^^ variable.other.lisp
;     ^ keyword.operator.lisp
;       ^^^^ constant.language.boolean.true.lisp
;            ^^^^ keyword.control.conditional.lisp
;                 ^^^^^ constant.language.boolean.false.lisp

;;; for-as-across

  var across (vector 0 1 2)
; ^^^ variable.other.lisp

;;; for-as-hash

  var being each key in table using (1 2)
; ^^^ variable.other.lisp
;     ^^^^^ keyword.other.loop.lisp
;           ^^^^ keyword.other.loop.lisp
;                ^^^ variable.other.lisp
;                    ^^ keyword.other.loop.lisp
;                       ^^^^^ variable.other.lisp
;                             ^^^^^ keyword.other.loop.lisp
;                                   ^^^^^ meta.parens.lisp meta.parens.lisp

  var being the key of table using (1 2)
; ^^^ variable.other.lisp
;     ^^^^^ keyword.other.loop.lisp
;           ^^^ keyword.other.loop.lisp
;               ^^^ variable.other.lisp
;                   ^^ keyword.other.loop.lisp
;                      ^^^^^ variable.other.lisp
;                            ^^^^^ keyword.other.loop.lisp
;                                  ^^^^^ meta.parens.lisp meta.parens.lisp

;;; conditional

  if (if foo nil t)
; ^^ keyword.control.conditional.lisp
;     ^^ keyword.control.conditional.lisp

  unless (unless foo)
; ^^^^^^ keyword.control.conditional.lisp
;         ^^^^^^ keyword.control.conditional.lisp

  when (when foo)
; ^^^^ keyword.control.conditional.lisp
;       ^^^^ keyword.control.conditional.lisp

  else
; ^^^^ keyword.control.conditional.lisp

  end
; ^^^ keyword.control.conditional.lisp

;;; termination-test

  always (always foo)
; ^^^^^^ keyword.control.loop.lisp
;         ^ variable.function.lisp

  never (never foo)
; ^^^^^ keyword.control.loop.lisp
;        ^ variable.function.lisp

  repeat (repeat foo)
; ^^^^^^ keyword.control.loop.lisp
;         ^ variable.function.lisp

  thereis (thereis foo)
; ^^^^^^^ keyword.control.loop.lisp
;          ^ variable.function.lisp

  until (until foo)
; ^^^^^ keyword.control.loop.lisp
;        ^ variable.function.lisp

  while (while foo)
; ^^^^^ keyword.control.loop.lisp
;        ^ variable.function.lisp

  do (do something)
; ^^ keyword.control.loop.lisp
;     ^^ keyword.control.loop.lisp

;;; list-accumulation

  collect it into var
; ^^^^^^^ support.function.lisp
;         ^^ variable.other.lisp
;            ^^^^ keyword.operator.assignment.lisp
;                 ^^^ variable.other.lisp

  collecting it into var
; ^^^^^^^^^^ support.function.lisp
;            ^^ variable.other.lisp
;               ^^^^ keyword.operator.assignment.lisp
;                    ^^^ variable.other.lisp

  append it into var
; ^^^^^^ support.function.lisp
;        ^^ variable.other.lisp
;           ^^^^ keyword.operator.assignment.lisp
;                ^^^ variable.other.lisp

  appending it into var
; ^^^^^^^^^ support.function.lisp
;           ^^ variable.other.lisp
;              ^^^^ keyword.operator.assignment.lisp
;                   ^^^ variable.other.lisp

  nconc it into var
; ^^^^^ support.function.lisp
;       ^^ variable.other.lisp
;          ^^^^ keyword.operator.assignment.lisp
;               ^^^ variable.other.lisp

  nconcing it into var
; ^^^^^^^^ support.function.lisp
;          ^^ variable.other.lisp
;             ^^^^ keyword.operator.assignment.lisp
;                  ^^^ variable.other.lisp

;;; numeric-accumulation

  count it into var
; ^^^^^ support.function.lisp
;       ^^ variable.other.lisp
;          ^^^^ keyword.operator.assignment.lisp
;               ^^^ variable.other.lisp

  counting it into var
; ^^^^^^^^ support.function.lisp
;          ^^ variable.other.lisp
;             ^^^^ keyword.operator.assignment.lisp
;                  ^^^ variable.other.lisp

  sum it into var
; ^^^ support.function.lisp
;     ^^ variable.other.lisp
;        ^^^^ keyword.operator.assignment.lisp
;             ^^^ variable.other.lisp

  summing it into var
; ^^^^^^^ support.function.lisp
;         ^^ variable.other.lisp
;            ^^^^ keyword.operator.assignment.lisp
;                 ^^^ variable.other.lisp

  maximize it into var
; ^^^^^^^^ support.function.lisp
;          ^^ variable.other.lisp
;             ^^^^ keyword.operator.assignment.lisp
;                  ^^^ variable.other.lisp

  maximizing it into var
; ^^^^^^^^^^ support.function.lisp
;            ^^ variable.other.lisp
;               ^^^^ keyword.operator.assignment.lisp
;                    ^^^ variable.other.lisp

  minimize it into var
; ^^^^^^^^ support.function.lisp
;          ^^ variable.other.lisp
;             ^^^^ keyword.operator.assignment.lisp
;                  ^^^ variable.other.lisp

  minimizing it into var
; ^^^^^^^^^^ support.function.lisp
;            ^^ variable.other.lisp
;               ^^^^ keyword.operator.assignment.lisp
;                    ^^^ variable.other.lisp
)

(loop repeat 10
; <- meta.parens.lisp - meta.parens meta.parens
;^^^^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;^^^^ keyword.control.loop.lisp
;     ^^^^^^ keyword.control.loop.lisp
  for x = (random 100)
; ^^^ keyword.control.loop.lisp
;     ^ variable.other.lisp
;       ^ keyword.operator.lisp
;         ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
  if (evenp x)
; ^^ keyword.control.conditional.lisp
    collect x into evens
;   ^^^^^^^ support.function.lisp
;           ^ variable.other.lisp
;             ^^^^ keyword.operator.assignment.lisp
;                  ^^^^^ variable.other.lisp
    and do (format t "~a is even!~%" x)
;   ^^^ keyword.operator.logical.lisp
;       ^^ keyword.control.loop.lisp
;          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp
  else
; ^^^^ keyword.control.conditional.lisp
    collect x into odds
;   ^^^^^^^ support.function.lisp
;           ^ variable.other.lisp
;             ^^^^ keyword.operator.assignment.lisp
;                  ^^^^ variable.other.lisp
    and count t into n-odds
;   ^^^ keyword.operator.logical.lisp
;       ^^^^^ support.function.lisp
;             ^ constant.language.lisp
;               ^^^^ keyword.operator.assignment.lisp
  finally (return (values evens odds)))
; ^^^^^^^ keyword.control.flow.lisp

(do (var1 (var2 (list 1 2 3) step)) (until (eq var1 5)) (print var2))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^ meta.parens.lisp - meta.parens meta.parens
;   ^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;         ^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;               ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                           ^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                 ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                  ^ meta.parens.lisp - meta.parens meta.parens
;                                   ^^^^^^^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                          ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                                     ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                                      ^ meta.parens.lisp - meta.parens meta.parens
;                                                       ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                                                                   ^ meta.parens.lisp - meta.parens meta.parens
;                                                                    ^ - meta.parens
;^^ keyword.control.loop.lisp
;   ^ punctuation.section.parens.begin.lisp
;    ^^^^ variable.other.lisp
;         ^ punctuation.section.parens.begin.lisp
;          ^^^^ variable.other.lisp
;               ^ punctuation.section.parens.begin.lisp
;                ^^^^ meta.function-call.lisp support.function.lisp
;                     ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                       ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                         ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                          ^ punctuation.section.parens.end.lisp
;                            ^^^^ variable.other.lisp
;                                ^ punctuation.section.parens.end.lisp
;                                 ^ punctuation.section.parens.end.lisp
;                                   ^ punctuation.section.parens.begin.lisp
;                                    ^^^^^ meta.function-call.lisp variable.function.lisp
;                                          ^ punctuation.section.parens.begin.lisp
;                                           ^^ keyword.operator.comparison.lisp
;                                              ^^^^ variable.other.lisp
;                                                   ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                                                    ^^ punctuation.section.parens.end.lisp
;                                                       ^ punctuation.section.parens.begin.lisp
;                                                        ^^^^^ meta.function-call.lisp support.function.lisp
;                                                              ^^^^ variable.other.lisp
;                                                                  ^^ punctuation.section.parens.end.lisp

(dolist (i (list 1 2 3)) (print i))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^ meta.parens.lisp
;       ^^^ meta.parens.lisp meta.parens.lisp
;          ^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                      ^ meta.parens.lisp meta.parens.lisp
;                       ^ meta.parens.lisp
;                        ^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                                 ^ meta.parens.lisp
;                                  ^ - meta.parens
;^^^^^^ keyword.control.loop.lisp
;       ^ punctuation.section.parens.begin.lisp
;        ^ variable.other.lisp
;          ^ punctuation.section.parens.begin.lisp
;           ^^^^ support.function.lisp
;                ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                  ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                    ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                     ^^ punctuation.section.parens.end.lisp
;                        ^ punctuation.section.parens.begin.lisp
;                         ^^^^^ meta.function-call.lisp support.function.lisp
;                               ^ variable.other.lisp
;                                ^^ punctuation.section.parens.end.lisp
;

(dotimes (temp-one 10 temp-one))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;        ^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                              ^ meta.parens.lisp - meta.parens meta.parens
;^^^^^^^ keyword.control.loop.lisp
;        ^ punctuation.section.parens.begin.lisp
;         ^^^^^^^^ variable.other.lisp
;                  ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                     ^^^^^^^^ variable.other.lisp
;                             ^^ punctuation.section.parens.end.lisp

(do-symbols (var) (print var))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;           ^^^^^ meta.parens.lisp meta.parens.lisp
;                ^ meta.parens.lisp - meta.parens meta.parens
;                 ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                            ^ meta.parens.lisp - meta.parens meta.parens
;^^^^^^^^^^ keyword.control.loop.lisp
;           ^ punctuation.section.parens.begin.lisp
;            ^^^ variable.other.lisp
;               ^ punctuation.section.parens.end.lisp
;                 ^ punctuation.section.parens.begin.lisp
;                  ^^^^^ meta.function-call.lisp support.function.lisp
;                        ^^^ variable.other.lisp
;                           ^^ punctuation.section.parens.end.lisp

(do-all-symbols (var) (print var))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;               ^^^^^ meta.parens.lisp meta.parens.lisp
;                    ^ meta.parens.lisp - meta.parens meta.parens
;                     ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                                ^ meta.parens.lisp - meta.parens meta.parens
;^^^^^^^^^^^^^^ keyword.control.loop.lisp
;               ^ punctuation.section.parens.begin.lisp
;                ^^^ variable.other.lisp
;                   ^ punctuation.section.parens.end.lisp
;                     ^ punctuation.section.parens.begin.lisp
;                      ^^^^^ meta.function-call.lisp support.function.lisp
;                            ^^^ variable.other.lisp
;                               ^^ punctuation.section.parens.end.lisp

(do-external-symbols (var) (print var))
; <- meta.parens.lisp punctuation.section.parens.begin.lisp
;^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;                    ^^^^^ meta.parens.lisp meta.parens.lisp
;                         ^ meta.parens.lisp - meta.parens meta.parens
;                          ^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                                     ^ meta.parens.lisp - meta.parens meta.parens
;^^^^^^^^^^^^^^^^^^^ keyword.control.loop.lisp
;                    ^ punctuation.section.parens.begin.lisp
;                     ^^^ variable.other.lisp
;                        ^ punctuation.section.parens.end.lisp
;                          ^ punctuation.section.parens.begin.lisp
;                           ^^^^^ meta.function-call.lisp support.function.lisp
;                                 ^^^ variable.other.lisp
;                                    ^^ punctuation.section.parens.end.lisp

(iterate ((i (scan-range :from 1 :upto 10 :by 2))) (print i))
; <- meta.parens.lisp - meta.parens meta.parens
;^^^^^^^^ meta.parens.lisp - meta.parens meta.parens
;        ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;         ^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.lisp meta.parens.lisp meta.parens.lisp meta.parens.lisp
;                                               ^ meta.parens.lisp meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens meta.parens
;                                                ^ meta.parens.lisp meta.parens.lisp - meta.parens meta.parens meta.parens
;                                                 ^ meta.parens.lisp - meta.parens meta.parens
;                                                  ^^^^^^^^^ meta.parens.lisp meta.parens.lisp
;                                                           ^ meta.parens.lisp - meta.parens meta.parens
;                                                            ^ - meta.parens
;^^^^^^^ keyword.control.loop.lisp
;        ^^ punctuation.section.parens.begin.lisp
;          ^ variable.other.lisp
;            ^ punctuation.section.parens.begin.lisp
;             ^^^^^^^^^^ meta.function-call.lisp support.function.lisp
;                        ^ punctuation.accessor.lisp
;                         ^^^^ keyword.other.symbol.lisp
;                              ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                                ^ punctuation.accessor.lisp
;                                 ^^^^ keyword.other.symbol.lisp
;                                      ^^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                                         ^ punctuation.accessor.lisp
;                                          ^^ keyword.other.symbol.lisp
;                                             ^ meta.number.integer.decimal.lisp constant.numeric.value.lisp
;                                              ^^^ punctuation.section.parens.end.lisp
;                                                  ^ punctuation.section.parens.begin.lisp
;                                                   ^^^^^ meta.function-call.lisp support.function.lisp
;                                                         ^ variable.other.lisp
;                                                          ^^ punctuation.section.parens.end.lisp

;########
; OTHER #
;########

(format t "Color ~A, number1 ~D, number2 ~5,'0D, hex ~X, float ~5,2F, unsigned value ~D.~%"
;                ^^ constant.other.placeholder
;                            ^^ constant.other.placeholder
;                                        ^^^^^^ constant.other.placeholder
;                                                    ^^ constant.other.placeholder
;                                                              ^^^^^ constant.other.placeholder
;                                                                                    ^^ constant.other.placeholder
;                                                                                       ^^ constant.character.escape
             "red" 123456 89 255 3.14 250)
;; prints: Color red, number1 123456, number2 00089, hex FF, float  3.14, unsigned value 250.

