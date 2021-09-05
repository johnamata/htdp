;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |029|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; poorly designed version of solution to exercise 27 with modifications
;; that there's no fixed cost and variable cost for attendee is now $1.5
(define (profit price)
    (- (* (+ 120
             (* (/ 15 0.1)
                (- 5.0 price)))
          price)
          (* 1.5
             (+ 120
                (* (/ 15 0.1)
                   (- 5.0 price))))))

(profit 1) ; -360
(profit 2) ; 285
(profit 3) ; 630
(profit 4) ; 675
(profit 5) ; 420
