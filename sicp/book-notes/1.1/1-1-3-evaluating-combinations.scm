#lang sicp

; interpreter follos a procedure in evaluating combinations.
; Evaluate the subexpressions, apply the procedure of the leftmost subexpression
; (operator) to args that're values of other subexpressions (operands)

; evaluation is recursive

; following has 4 combinations.
; combination 1: addition of numbers 3,5 and 7.
; combination 2: multiplication of numbers 4 and 6.
; combination 3: addition of the result of 4 and 6 to number 2.
; combination 4: multiplication of the result of combination 3 and combination 1.
(* (+ 2 (* 4 6))
   (+ 3 5 7))

; if evaluations are visualized as a tree,
; the process forms an upward tree accumulation