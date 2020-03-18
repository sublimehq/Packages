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

;##########
; STRINGS #
;##########

("string\n")
;^ punctuation.definition.string.begin
;^^^^^^^^ string.quoted.double
;       ^^ constant.character.escape
;         ^ punctuation.definition.string.end

("multi-line string
    ends here"
;            ^ punctuation.definition.string.end
)

;##########
; NUMBERS #
;##########

(setq a 10)
;       ^^ constant.numeric

(setq b 1.7)
;       ^^^ constant.numeric

(setq c 1.5e+4)
;       ^^^^^^ constant.numeric

(setq c 0xF0A)
;       ^^^^^ constant.numeric

;#####################
; LANGUAGE CONSTANTS #
;#####################

(format t "Hello, world!")
;       ^ constant.language

(NULL)
;^^^^ constant.language

(nil)
;^^^ constant.language

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

;############
; VARIABLES #
;############

(*package*)
;^ punctuation.definition.variable.begin
;^^^^^^^^^ variable.language
;        ^ punctuation.definition.variable.end

(*user-var*)
;^ punctuation.definition.variable.begin
;^^^^^^^^^^ variable.other.global
;         ^ punctuation.definition.variable.end

;###############
; CONTROL FLOW #
;###############

(loop while (hungry) do (eat))
;^^^^ keyword.control
;     ^^^^^ keyword.control
;                    ^^ keyword.control

;############
; FUNCTIONS #
;############

(defun averagenum (n1 n2 n3 n4)
;^ storage.type.function-type
;      ^ entity.name.function
   (/ ( + n1 n2 n3 n4) 4)
;   ^ keyword.operator
;       ^ keyword.operator
;                      ^ constant.numeric
)

(defun what? (n1 n2 n3 n4)
;^ storage.type.function-type
;      ^^^^^ entity.name.function
)

(defun is>?! (n1 n2 n3 n4)
;^ storage.type.function-type
;      ^^^^^ entity.name.function
)
