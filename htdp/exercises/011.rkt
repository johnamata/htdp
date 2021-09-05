#lang htdp/bsl

;;Define a function that consumes two numbers, x and y, and that computes the distance of point (x,y)
;; to the origin.

(define (point-origin-calc x y)
  (sqrt (+ (* x x)
           (* y y))))