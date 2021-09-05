#lang htdp/bsl

(require 2htdp/image)


(define (image-classify img)
  (if (= (image-width img) (image-height img)) "square"
      (if (< (image-width img) (image-height img)) "tall" "wide")))