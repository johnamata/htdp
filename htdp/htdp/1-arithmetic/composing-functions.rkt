;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname composing-functions) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/batch-io)

;; a batch program

;; COMPOSITION and AUXILIARY FUNCTION
; typically, programs consist of a main function
; as well as other programs that turns the output
; of 1 function as input for another
; this is called COMPOSITION, in analogy to algebra
; and the additional functions are called
; AUXILIARY FUNCTIONS

(define (letter fst lst signature-name)
  ;^main function that has 3 auxiliary functions
  (string-append
   (opening fst) ; function 1
   "\n\n"
   (body fst lst) ; function 2
   "\n\n"
   (closing signature-name) ;function 3
   ))

(define (opening fst)
  (string-append "Dear " fst ","))

(define (body fst lst)
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize."))

(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))

(letter "Matthew" "Fisler" "Felleisen")
;; the above command will output a long string:
; "Dear Matthew,\n\nWe have discovered that all people with the\nlast name Fisler have won our lottery. So, \nMatthew, hurry and pick up your prize.\n\nSincerely,\n\nFelleisen\n"
; the \n means newline

; but if we add write-file by adding the following code to the program
;(require 2htdp/batch-io)
; we can go to the console and type
;(write-file 'stdout (letter "Matt" "Fiss" "Fell"))
; and it will output:
;
;Dear Matt,
;
;We have discovered that all people with the
;last name Fiss have won our lottery. So, 
;Matt, hurry and pick up your prize.
;
;Sincerely,
;
;Fell
;'stdout