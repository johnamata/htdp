#lang htdp/bsl

(define (string-last s)
  (string-ith s (- (string-length s) 1)))
