;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise6.3.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct star(last first instrument sales))
(define (increment-sales a-star)
  (make-star (star-last a-star)
             (star-first a-star)
             (star-instrument a-star)
             (+ (star-sales a-star) 20000)))

(increment-sales (make-star 'abba 'john 'vocals 12200))
