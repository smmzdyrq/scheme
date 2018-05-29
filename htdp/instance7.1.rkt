;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname instance7.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct square (nw length))
(define-struct circle (center radius))

(define (perimeter a-shape)
  (cond
    [(square? a-shape) (* (square-length a-shape) 4)]
    [(circle? a-shape) (* 2 (circle-radius a-shape) pi)]))

(perimeter (make-square (make-posn 0 0) 4))
(perimeter (make-circle (make-posn 0 0) 4))

(define (area a-shape)
  (cond
    [(square? a-shape) (sqr (square-length a-shape))]
    [(circle? a-shape) (* (sqr (circle-radius a-shape)) pi)]))

(area (make-square (make-posn 0 0) 4))
(area (make-circle (make-posn 0 0) 4))