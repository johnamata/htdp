#lang sicp
; leftmost: operator, other elements: operands
; values -> argumemnts
(+ 137 349)

69

(- 1000 310)

(* 5 99)

(+ (/ 10 5) 5)

(+ 2.7 10)

; prefix notation makes nesting straightforward

(+ (* 3 5) (- 10 6))

; indenting to make it more readable for humans

(+ ( * 3 5)
   (- 10 6)
   )

(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

; more readable

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

; prefix notation also makes it easy to take plenty of arguments

(+ 69 69 69 69)

; interpreter runs in read-eval-print loop