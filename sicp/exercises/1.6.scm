#lang sicp
(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 1.0e-57))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; new version
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))


;; square root program rewritten
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))


;; from page 24:
; the special form if, a restricted type of conditional that can be used when there are precisely
; two cases in the case analysis. 
; new-if is not if. so applicative order, this goes on an infinite loop til program out of memory