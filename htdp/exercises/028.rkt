;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |028|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; basically a poorly designed version of solution to exercise #27 (see 027.rkt file)
(define (profit price)
    (- (* (+ 120
             (* (/ 15 0.1)
                (- 5.0 price)))
          price)
       (+ 180
          (* 0.04
             (+ 120
                (* (/ 15 0.1)
                   (- 5.0 price)))))))

(profit 1) ; 511.2
(profit 2) ; 937.2
(profit 3) ; 1063.2 -- best profit
(profit 4) ; 889.2
(profit 5) ; 415.2
