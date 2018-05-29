;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise6.5.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct time (h min s))

(define (time-now time)
  (make-time (time-h time)
             (time-min time)
             (time-s time)))


(define (time->seconds time)
  (+ (* (time-now time-h) 3600) (* time-min 60) time-s))