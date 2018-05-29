;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise.4.4.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (how-many a b c)
  (cond
    [(= a 0) "no"]
    [(> (* b b) (* 4 a c)) 2]
    [(= (* b b) (* 4 a c)) 1]
    [(< (* b b) (* 4 a c)) 0]))

(how-many 0 1 2)
(how-many 2 3 1)
(how-many 2 4 2)
(how-many 2 3 2)
