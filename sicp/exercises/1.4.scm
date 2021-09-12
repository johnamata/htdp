#lang sicp

; instruction
; Observe that our model of evaluation allows for combinations whose
; operators are compound expressions. Use this observation to describe
; the behavior of the following procedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; answer
;; i gave it arguments of 5 and -3 returns 8. giving it 5 and 3 returns 8.
;; but giving it -3 and 5 returns 2. 
;; to this i'd say that the procedure sums a and the absolute value of b
;; looking at the if expression: ((if (> b 0) + -) a b))
;; remembering the if expression's form is: if predicate consequent alternative
;; the if expression in the procedure asks if b is positive, we get +, if not, -
;; if b > 0 then a + b. if b < 0 then a - b