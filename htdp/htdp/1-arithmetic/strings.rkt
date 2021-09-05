#lang htdp/bsl

;; comparison primitives
; <
; <=
; >
; >=

; just me experimenting
; anyhow seems that we need to convert numbers to string in racket before we can concatenate
; we concatenate with string-append
; we use number->string to typecast number to string before we concatenate them
(if (> 1 2) "greater"
    (string-append
     "1 is not greater than 2 so let's add: 1 + 2 = " (number->string (+ 1 2)) ". now it is greater"))

;; STRINGS ARENT COMPARED WITH = and its relatives
; to compare strings, use:
; string=?
; string<=?
; string>=?
