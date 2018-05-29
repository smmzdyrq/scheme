;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise.4.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (tax income)
  (cond
    [(<= income 240) 0]
    [(<= income 480) (* 0.15 income)]
    [(> income 480) (* 0.28 income)]))

(define (income h)
  (* h 12))

(define  (netpay h)
  (- (income h) (tax (income h))))

(netpay 40)