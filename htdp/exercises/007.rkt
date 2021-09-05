#lang htdp/bsl

(define sunny #true)
(define friday #false)

;; whether sunny or false or friday is true
; except result should be false
(or (not sunny)
    friday)