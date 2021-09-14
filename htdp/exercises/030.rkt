;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |030|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; constants for magic numbers

(define PRICE_OF_TICKET 5.0) 
(define NUMBER_ATTENDEES 120) 
(define CHANGE_IN_PRICE_OVER_TEN_CENTS (/ 15 0.1)) 
(define VARIABLE_COST_ATTENDEE 1.5)

(define (attendees ticket-price)
  (- NUMBER_ATTENDEES (* (- ticket-price PRICE_OF_TICKET)
                         CHANGE_IN_PRICE_OVER_TEN_CENTS)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* VARIABLE_COST_ATTENDEE
     (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))


(profit 1) ; -360
(profit 2) ; 285
(profit 3) ; 630
(profit 4) ; 675
(profit 5) ; 420
