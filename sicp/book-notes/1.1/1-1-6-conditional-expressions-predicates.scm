#lang sicp

; primitive predicates: <, =, >

; conditional expressions and predicates
(define (abs x)
  (cond ((> x 0) "aa")
        ((= x 0) 0)
        ((< x 0) (- x))))

; the general form of conditional expression
; (cond (<p1> <e1>)
;       (<p2> <e2>))
; p means predicate, an expression whose value is interpreted as true or false
; e means consequent expression, if the predicate is true, it returns this
; so if we give x a value of 5, it prints "aa"
; where cond means conditional


; the "else" special symbol
; it is used in place of the <p> in the final clause of a "cond"
(define (bas x)
  (cond ((< x 0) (- x))
        (else x)))
; in english, the above expression could be expressed:
; If x is less than 0, return -x (which in this case nullifies the - sign)
; otherwise return x


; the "if" special form
; used when there are precisely 2 cases in the case analysis
; general expression is: (if <predicate> <consequent> <alternative>)
(define (sab x)
  (if (< x 0)
      (- x)
      x))
; interpreter starst by evaluating the <predicate> of the expression
; if predicate returns true, then interpreter evalues <consenquent> and returns its value
; otherwise, it evaluates <alternative> and returns its value


; logical composition expressions: and, or not
; (and <e1> <e2> <e3>...)
; (or <e1> ...)
; (not <e>)
; "and" as well as "or" are special forms and not procedures because the subexpressions are not all evaluted
; "not" is an ordinary procedure
; sample code:
; (and (> x 5) (< x 10))
; the above example is a condition that a number x may be in the range 5 < x < 10

; more example on logical composition
; we can define predicate to test whether one number is greater than or equal to another as
; (define (>= x y) (or (> x y) (= x y)))
; or alternatively as
; (define (>= x y) (not (< x y)))