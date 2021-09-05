;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |027|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define NUMBER_ATTENDEES 120)
(define PRICE_OF_TICKET 5.0)
(define ATTENDANCE_CHANGE 15)
(define PRICE_DOWN 0.1)
(define FIXED_PART_COST 180)
(define VARIABLE_PART_COST 0.04)
;variable part of the cost that depends on the number of attendees

(define (attendees ticket-price)
  (- NUMBER_ATTENDEES (* (- ticket-price PRICE_OF_TICKET) (/ ATTENDANCE_CHANGE PRICE_DOWN))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED_PART_COST (* VARIABLE_PART_COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))