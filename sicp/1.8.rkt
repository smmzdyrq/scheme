#lang racket
(define (average x y)
  (/ (+ x y) 3))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (improve guess x)
  (average (/ x (square guess)) (* 2 guess)))

(define (good-enough guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root? guess x)
  (if (good-enough guess x)
      guess
      (cube-root? (improve guess x) 
        x)))

(define (cube-root x)
  (cube-root? 1.0 x))

(cube-root 27)

