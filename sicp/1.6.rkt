#lang racket

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough guess x)
    (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt-iter guess x)
    (if (good-enough guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (new-if pre then-clause else-clause)
    (cond (pre then-clause)
          (else else-clause)))

(define (sqrt-iter2 guess x)
    (if (good-enough guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))


(sqrt-iter 2 4)
(sqrt-iter2 3 9)