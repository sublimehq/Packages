; SYNTAX TEST "Packages/Lisp/Lisp.sublime-syntax"

;; https://wiki.c2.com/?LispShowOffExamples


;;;;;;
;; See way below for what we are trying to do 
;;;;;;


;;;;;;
;; Globals
;;;;;;


(defvar *debug* nil)


;; A mistake will increase by a factor of 3 while a correct answer
;; will decrease by a factor of unity
(defvar *mult-hyst* 3)


( defmacro mkrand (x y)
  " Make a random uniformly distributed number between x and y, inclusive"
  `(+ ,x (random  (1+ (- ,y ,x)))))


(defun oper-to-string (oper)
  " Convert a functional operator to a string representation"
  (let ((str-res "nil"))
    (setf str-res 
     (cond
      ((eq oper #'+) "+")
      ((eq oper #'-) "-")
      ((eq oper #'*) "*")))))


(defun string-to-oper (str)
  "Convert a string to a function"
    (let ((op-res "nil"))
    (setf op-res 
     (cond
      ((string-equal str "+") #'+)
      ((string-equal str "-") #'-) 
      ((string-equal str "*") #'*)))))


(defun get-operand2 (&optional (op "*") (num nil))
  " get-operand2 (&optional (op "*") (num nil))


    Given an operator string (DEFAULT "*") return an operand for the constant
    factor in the game. Special treatment is given to subtraction"
  (let ((res nil))
    (setf res
     (if (or (null num) (not (numberp num)))
         (if (y-or-n-p
          "Do you want me to choose an operand2? Say ")
         (if (string-equal op "-")
             (mkrand 6 12)
             (mkrand 2 12))
         (progn
           (format t "OK, Choose a number between 2 and 12. -- ")
           (read)))
       op))
    res))


;; SPECIAL CLOSURE
;; This is a closure that keeps track of the distribution function of mistakes
;; made. Two hidden variables mistake-counter and pmf are used. The mistake
;; counter keeps track of the number of mistakes made for a particular
;; variable operand. The PMF is defined as F(x) = Pr { X <= x } for all x
;; in the operand space
(let* ((mistake-counter (loop 
        for y from 0 to 12 by 1
                 for x = '(0 . 0)
        then `(,y . 1) collect x))
       (pmf nil))


  (defun init-pmf ()
    " Initialise the PMF; this requires the mistake-counter to be valid"
    (let ((sumtotal nil))
      (setf sumtotal
       (loop for x in mistake-counter
         sum (cdr x) into total
         finally (return total)))
      ;; The method used is to take an associated list of counts of mistake,
      ;; and to convert it to a probability density. The probability mass
      ;; function is then the cumulative sum of the density. The last element
      ;; of the association list must be 1.0.
      (setf pmf 
       (loop 
         for x in mistake-counter
         for y = (car x)
         then (car x)
         for z = (/ (cdr x) (float sumtotal 1.0))
         then (/ (cdr x) (float sumtotal 1.0))
         sum z into p
         collect (cons y p) into q
         finally (return q))))
        (if *debug*
       (format t "PMF : ~a~%" pmf)))


  (defun init-mistake-counter (op-str op2)
    ;; Initially, all valid operands are given a mistake count of unity
    ;; (see initial let in closure). However, a subtraction is treated
    ;; specially. In this case, we do not want negative subtractions, so
    ;; we disallow the variable operand to be greater than the first operand.
    ;; The PMF has to be initialised.
    (setf mistake-counter 
     (if (string-equal op-str "-")
         (loop for y from 0 to 12
       for x = '(0 . 0)
       then `(,y . 1) 
       for z = '(0 . 0)
       then `(,y . 0)
       when (< y op2)
       collect x
       when (>= y op2)
       collect z)
         mistake-counter))
    (init-pmf)
    (if *debug*
   (progn 
     (format t "mistake-counter : ~a~%" mistake-counter)
     (format t "PMF             : ~a~%" pmf))))


  (defun update-mistake-counter (op1 inc)
    ;; inc is usually 1, representing the number of mistakes made
    (let ((val (cdr (assoc op1 mistake-counter))))
      ;; negative mistakes are correct answers; then, we dont allow the count
      ;; to go below 1
      (if (> inc 0)
   (setf (cdr (assoc op1 mistake-counter)) (+ val (* *mult-hyst* inc)))
   (if (> (cdr (assoc op1 mistake-counter)) 1)
       (setf (cdr (assoc op1 mistake-counter)) (+ val inc)))))
    ;; Initialize the PMF after updating the mistake counter
    (init-pmf)
    (if *debug*
   (progn 
     (format t "mistake-counter : ~a~%" mistake-counter)
     (format t "PMF             : ~a~%" pmf))))


   (defun find-interval()
    (let* ((urnd (random 1.0))
      (res (position-if #'(lambda(x) (> x urnd))
          pmf :start 0 :key #'cdr)))
      (if *debug*
     (format t "interval        : ~a~%" res))
      res))


  (defun get-operand1 ()
    " get-operand1 


    This is a function to get the first operand in the operation
          (operator operand2 operand 1)
    where operator can be the strings + -  or * and operand2 (2-12)
    while operand1 (2-12 for * and + and 2 to operand2 for -)."
    (car (nth (find-interval) pmf)))
);; END CLOSURE


(defun get-operator (&optional (operator nil))
  " Get the operator desired"
  (labels
      ((read-op()
          (let ((op)
            (nmb 0))
        (format t
            "Choose a number:
         1 for addition
         2 for subtraction
         3 for multiplication
")
        (setq nmb (read))
        (setq op
              (case nmb
            ((1) #'+)
            ((2) #'-)
            ((3) #'*)
            (otherwise (progn
                     (format t "~%Invalid choice, I'll choose multiplication~%")
                     #'*))))
          op)))
  (let ((opres nil))
    (format t "~%Operator ~S~%" operator)
    (setq opres
     (case operator
       ((#'+ #'- #'*)  operator)
       (t  (read-op))))
    opres)))


(defmacro format-ans-str (op-str op1 op2)
  `(format t "~%~2d ~a ~2d = " ,op1 ,op-str ,op2))


(defun kudos (op2)
  (let ((kudos-str "")
   (kudos))
    (setf kudos-str
      '("~t Well Done!"
        "~t Good Job!"
        "~t Great!"
        "~t Keep it up!"
        "~t You're something, you know"))
    (setf kudos (nth (random (length kudos-str)) kudos-str  ))
    (update-mistake-counter op2 -1)
    (format t kudos)))


(defun boo-hoo(op-str op1 op2)
  (let* ((boohoo-common (format nil "~2d ~a ~2d " op1 op-str  op2))
   (boohoo-str
    '("~%~tDumkopf, "
      "~%~tSorry, "
      "~%~tHey, "
      "~%~tWhat are you doing? "))
   (boohoo (format nil "~a ~a is ~2d! ~%"
           (nth (random (length boohoo-str)) boohoo-str)
           boohoo-common (funcall (string-to-oper op-str)
                          op1 op2))))
    (update-mistake-counter op2 1)
    (format t boohoo)))


(defun mathtest(&key (operator nil) (operand2 nil))
  " Function mathtest :
    Usage: (mathtest :operator oper :operand2 operand2)
           oper      eqv  #'+ | #'- | #'*
           operand2  eqv  2-12
    This function takes two optional arguments with a key,  an operator,
    and an operand (preferably between 2 and 12) as
    the operand2. If the argument is not present, the user is prompted to
    specify whether a random argument must be generated. If the user ansers no,
    the user must enter an argument, or else a random number is generated.


    The operand1 is generated randomly until the user enters a non-number
    for the answer.


    For example:
           > (mathtest)
           Choose an operator:
                      +
                      -
                      *
           Do you want me to choose the constant operand? (y/n): y
             7 x  7      =     49
           Well Done!
             4 x  7      =     20
           Sorry, the answer to 4 x  7 is 28. Let's go on
             3 x  7      =     s
           Okay, Bye!
"
  (setf operator (get-operator operator))
  (setf operand2 (get-operand2 (oper-to-string operator) operand2))
  (init-mistake-counter (oper-to-string operator) operand2)
  (assert (typep operand2 '(integer 2 12)))
  (loop
    for op-str = (oper-to-string operator)
    for  operand1 = (get-operand1)
    then (get-operand1)
    for x = (format-ans-str op-str operand2 operand1)
    then (format-ans-str op-str operand2 operand1)
    for res = (read)
    until (not (numberp res)) do
    (if (= res (funcall operator operand2 operand1))
       (kudos operand1)
       (boo-hoo op-str operand2 operand1))
   finally (format t "Okay, Bye!~%")))


(mathtest)

