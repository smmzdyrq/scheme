;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise4.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (is-between-3-7? n)
  (and (> n 3) (<= n 7)))

(define (is-between-3-7-2? n)
  (and (>= n 3) (<= n 7)))

(define (is-between-3-9? n)
  (and (>= 3) (<= n 9)))

(define (is-between-1-3-or-9-11? n)
  (or
   (and (> n 1) (< n 3)) (and (> n 9) (< n 11))))

(define (is-out-1-3? n)
  (or (< n 1) (> n 3)))


