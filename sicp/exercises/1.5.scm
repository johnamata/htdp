#lang sicp
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; test: (test 0 (p))

;; applicative order eval (aka evaluate arguments first then apply)
; with (test 0 (p)), applicative order will have p called immediately 
; p points to itself so it will infinitely evaluate itself leading to infinite loop recursion

;; normal order eval (aka fully expand then reduce)
; normal order will skip p as it is not needed (the way normal order works)
; because (test 0 (p)) already satisfies the predicate (= x 0) and thus return 0
