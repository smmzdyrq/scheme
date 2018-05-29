;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise7.5.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (area-of-disk r)
  (* 3.14 (sqr r)))

(define (checked v)
  (cond
    [(and (> v 0) (number? v)) (area-of-disk v)]
    [else (error 'checked-area-of-disk "number expected")]))

(checked 5)
(checked -1)