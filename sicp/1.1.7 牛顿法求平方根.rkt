#lang racket

(define (average x y)
    (/ (+ x y) 2))

; (define (improve guess x)
;     (average guess (/ x guess)))

; (define (good-enough guess x)
;     (< (abs (- (* guess guess) x)) 0.001))

; (define (sqrt-iter guess x)
;     (if (good-enough guess x)
;         guess
;         (sqrt-iter (improve guess x)
;             x)))

; (define (sqrt x)
;     (sqrt-iter 1.0 x))

(define (sqrt x)
    (define (good-enough guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (sqrt-iter guess)
        (if (good-enough guess)
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))

(sqrt 4)