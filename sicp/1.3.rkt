#lang racket
(define (bigest-number x y z) 
  (max (+ x y) (+ x z) (+ y z)))

(bigest-number 1 2 3)