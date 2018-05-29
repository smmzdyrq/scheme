;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (max-sum x y z)
  (cond
    [(and (> x y) (> x z)) (if (> y z)
                               (+ x y)
                               (+ x z))]
    [(and (> y x) (> y z)) (if (> x z)
                               (+ y x)
                               (+ y z))]
    [(and (> z x) (> z y)) (if (> x y)
                               (+ z x)
                               (+ z y))]))

(max-sum 3 4 5)
 