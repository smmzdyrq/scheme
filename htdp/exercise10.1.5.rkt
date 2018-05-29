;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise10.1.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (eliminate-exp ua lotp)
  (cond
    [(empty? lotp) empty]
    [else (cond
            [(<= (first lotp) ua) (cons (first lotp) (eliminate-exp ua (rest lotp)))]
            [else (eliminate-exp ua (rest lotp))])]))

(eliminate-exp 1.0 (cons 2.95 (cons .95 (cons 1.0 (cons 5 empty)))))