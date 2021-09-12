#lang sicp

; Define a procedure that takes three numbers as arguments and
; returns the sum of the squares of the two larger numbers.
(define (exercise3 x y z)
  (cond ((and (> x y) (> y z)) (+ (* x x) (* y y)))
        
        ((and (> y x) (> z x)) (+ (* x x) (* y y)))
        
        ((and (> x z) (> z y)) (+ (* x x) (* y y)))
        
        ((and (> x z) (> y z)) (+ (* x x) (* y y)))))