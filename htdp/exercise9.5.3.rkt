;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise9.5.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (dollar-store? mylist)
  (cond
    [(empty? mylist) true]
    [else (cond
            [(> (first mylist) 1) false]
            [else (dollar-store? (rest mylist))])]))

(dollar-store? (list .3 .4 .5))
