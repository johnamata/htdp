#lang htdp/bsl
(require 2htdp/image)
;; an exercise in predicates or "?" which returns a boolean value

(define in #t)

(cond
  [(string? in) (string-length in)]
  [(number? in) (if (<= in 0) 0 (- in 1))]
  [(boolean? in) (if (not in) 20 10)]
  [(image? in) (* (image-width in) (image-height in))])

;; references in solving
; https://docs.racket-lang.org/reference/booleans.html
; (not v)
; returns #t if v is #f and conversely, returns #t if v is #f