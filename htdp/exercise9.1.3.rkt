;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise9.1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (distance-to-0-for-3 a-list-of-3-numbers)
  (sqrt (+ (sqr (first a-list-of-3-numbers))
  (sqr (first (rest a-list-of-3-numbers)))
  (sqr (first (rest (rest a-list-of-3-numbers)))))))

(distance-to-0-for-3 (cons 3 (cons 4 (cons 5 empty))))
