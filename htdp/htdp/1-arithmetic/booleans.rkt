#lang htdp/bsl

;; booleans
; or
; and
; not

"or boolean"

(or #true #true) ;true
(or #true #false) ;true
(or #false #true) ;true
(or #false #false) ;false

"and boolean"

(and #true #true) ;true
(and #true #false) ;false
(and #false #true) ;false
(and #false #false) ;false

"not boolean"

(not #true) ;false
(not #false) ;true

"multiplicative inverse of 2 - works fine as long as x is not 0"

(define x 2)
(define inverse (/ 1 x))

"better way to do inverse with booleans"
;;following is an if expression with 3 subexpressions
; first expression is always evaluated first, which in this case checks if x is equal to 0
; if result of first expression is true, then it outputs the result of the 2nd subexpression 0
; if the result of 1st expression is false, it outputs the result of the 3rd subexpression(/ 1 x)
; since x is 2 then we proceed with the 3rd subexpression which performs multiplicative inverse to 2
(if (= x 0) 0 (/ 1 x))