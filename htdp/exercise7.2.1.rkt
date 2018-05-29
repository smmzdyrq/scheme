;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise7.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (space a b c)
  (* a b c))

(define-struct spider (legs space))
(define-struct elephant (space))
(define-struct monkey (iq space))

(define (fits animal cage)
  (cond
    [(spider? animal) (<= (spider-space animal) cage)]
    [(elephant? animal) (<= (elephant-space animal) cage)]
    [(monkey? animal) (<= (monkey-space animal) cage)]))

(fits (make-spider 8 (space 2 3 4)) 30)
(fits (make-spider 8 (space 2 3 4)) 20)