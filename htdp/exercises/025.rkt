;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |025|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (image-classify img)
  (cond
    ;;changed >= to >
    [(> (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(<= (image-height img) (image-width img)) "wide"]))


;;somw tests
(image-classify(rectangle 35 100 "solid" "sky blue")) ;;prints tall
(image-classify(rectangle 100 100 "solid" "sky blue")) ;;prints square
(image-classify (rectangle 100 35 "solid" "sky blue")) ;prints wide
;;for drawing
;;(rectangle 100 100 "solid" "sky blue")
;;(rectangle 100 35 "solid" "sky blue")

