;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname composing-functions-sample) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; notes on the sample problem


;; the task is clear but the approach is not
; so it's best to get the dependencies

;; number of attendees depends on the price
; so we have our own task to compute it
(define (attendees ticket-price)
        (- 120 (* (- ticket-price 5.0) (/ 15 0.1))))

;; for the revenue
(define (revenue ticket-price)
        (* ticket-price (attendees ticket-price)))

;;cost
(define (cost ticket-price)
        (+ 180 (* 0.04 (attendees ticket-price))))

;; profit
(define (profit ticket-price)
        (- (revenue ticket-price)
           (cost ticket-price)))