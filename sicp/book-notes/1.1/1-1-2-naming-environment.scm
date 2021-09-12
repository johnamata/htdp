#lang sicp

; variables, using names to refer to computational objects

(define size 2)
size ; 2
(* 5 size)
; 10

; define keyword is the language's simplest means of abstraction

; associating values with symbols and later retrieving them has the interpreter maintaining a memory to keep track of name-object pairs, which we call this memory an environment