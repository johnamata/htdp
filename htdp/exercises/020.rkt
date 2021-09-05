#lang htdp/bsl

(define (string-delete str i)
  ;;note that substring parameter is "string" starting-index end-index
  ;; if there is no end index given, then it is assumed that we'll
  ;; get the substring from the starting index given til the end
  (string-append (substring str 0 i)  (substring str (+ i 1))))
