#lang htdp/bsl


; https://byjus.com/maths/volume-of-a-cube/

(define (cvolume length)
  (* length length length))

(define (csurface length)
  (* 6 length length))