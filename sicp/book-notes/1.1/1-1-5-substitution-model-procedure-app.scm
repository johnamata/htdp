#lang sicp

; substitution model for procedure application

; some code from previous sections

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

; start of substitution model section. Let's evaluate the following line of code
(f 5)

; "To apply a compound procedure to arguments, evaluate the body of
; the procedure with each formal parameter replaced by the corresponding argument."

; we remember the body of f which is shown above, repeated here:
; (sum-of-squares (+ a 1) (* a 2))

; we replace the formal parameter "a" with a 5 when we do f 5:
; (sum-of-squares (+5 1) (* 5 2))
(sum-of-squares (+ 5 1) (* 5 2))
; as we can see, the problem is now reduced to the evaluation of
; a combination of 2 operands an operator "sum-of-squares"

; (+ 5 1) produces 6 and (* 5 2) produces 10, now we apply sum-of-quares x y
; to these two. to which we also defined above.
(+ (square 6) (square 10))

; if we use the definition of square, we further reduce this down to
(+ (* 6 6) (* 10 10))

; this process is called the substitution model for procedure application.