;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |005|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 5. Use the 2htdp/image library to create the image of a simple boat
; or tree. Make sure you can easily change the scale of the entire image
;; I chose to draw a boat

(define OCEAN
  (rectangle 200 200 "solid" "sky blue"))

(define THESAIL    (add-line (right-triangle 36 48 "solid" "white")
                           0 0 0 60 "brown"))

(define BOATBOW    (ellipse 14 50 "solid" "sky blue"))
(define BOATBOTTOM (rectangle 100 35 "solid" "sky blue"))
(define BOATHULL   (rectangle 100 50 "solid" "brown"))

(define BOATBODY (overlay/align/offset "center" "bottom" BOATBOTTOM 0 0
   (overlay/align/offset "right" "center" BOATBOW -10 0 
                        (overlay/align/offset "left" "center" BOATBOW 10 0 BOATHULL))))

(define SIMPLEBOAT 
  (overlay/align/offset "center" "bottom" BOATBODY 15 -50 THESAIL))

(overlay SIMPLEBOAT OCEAN)