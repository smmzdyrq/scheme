;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise9.1.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define mylist (cons 'club (cons 'doll empty)))

(define (contains-2-doll? mylist)
  (cond
    [(symbol=? (first mylist) 'doll) 'yes]
    [(symbol=? (first (rest mylist)) 'doll) 'yes]
    [else 'no]))

(contains-2-doll? mylist)