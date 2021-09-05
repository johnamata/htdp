#lang htdp/bsl

;; if sunny false= true
;; if friday false= true

(define (==> sunny friday)
  (or (not sunny) friday))