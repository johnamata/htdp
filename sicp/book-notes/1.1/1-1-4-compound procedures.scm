#lang sicp

; review: numbers and arithmetic operators are primitive procedures
; procedure definitons: where a compound operation is given a name and referred to as  a unit
; the ff is a compoudn procedure called "square"
(define (square x) (* x x))
; which in word translates to:
; "define (square x)" to square something which is x
; "(* x x)" multiply x by itself

; the general form of a procedure definition: (define (<name> <formal parameters>) <body>)
; once defined, we can use it like the following, calling the procedure name and giivng it an argument
(square 7)

(square (+ 10 5))

(square (square 3))

; we can also use square as a building block for other proecedures like (+ (square x) (square y)) such as the following where we use it in the body of sum-of-squares

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

; which we can use sum-of-squares as a building block for further procedures

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)