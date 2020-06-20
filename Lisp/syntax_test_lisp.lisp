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
;^ meta.group punctuation.definition.group.begin
; ^ meta.group meta.group punctuation.definition.group.begin
;         ^ comment
;                ^ meta.group meta.group punctuation.definition.group.end
;                 ^ meta.group punctuation.definition.group.end

;##########
; STRINGS #
;##########

("string\n")
;^ punctuation.definition.string.begin
;^^^^^^^^ string.quoted.double - support - variable
;       ^^ constant.character.escape
;         ^ punctuation.definition.string.end

'("multi-line string
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

;##############
; IDENTIFIERS #
;##############

(setq abcde 1)
;     ^^^^^ variable.other

(setq 7777e 1)
;     ^^^^^ variable.other

(setq 77777 1)
;     ^^^^^ - variable.other

(setq a.c.e 1)
;     ^^^^^ variable.other

(setq ..... 1)
;     ^^^^^ - variable.other

(setq 7!#7e 1)
;     ^^^^^ variable.other

(setq |7! #7e| 1)
;     ^^^^^^^^ variable.other
;     ^ punctuation.definition.variable.begin
;            ^ punctuation.definition.variable.end

; Escape characters inside an identifier
(setq ab\ \|c\)\ de 1)
;     ^^^^^^^^^^^^^ variable.other

(setq ab| (|c|) |de 1)
;     ^^^^^^^^^^^^^ variable.other

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

(defun log-1(log-1) (if log-1 "1" "0"))
(format t (log-1 (< 1 2)))

(defun -reverse (list)
  (let ((return-value '()))
    (dolist (e list) (push e return-value))
    return-value))

(-reverse foo)
(-reverse foo '(bar))

(defun factorial (n)
   (loop for i from 1 to n
         for fac = 1 then (* fac i)
         finally (return fac)))

(defun factorial (n)
   (if (= n 0) 1
       (* n (factorial (- n 1)))))

(defun factorial (n &optional (acc 1))
   (if (= n 0) acc
       (factorial (- n 1) (* acc n))))

(write (funcall (lambda (+ -) (* + -)) 3 4)) ; prints 12
