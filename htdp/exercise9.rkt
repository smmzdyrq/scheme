;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (contains-doll? mylist)
  (cond
    [(empty? mylist) false]
    [else (cond
            [(symbol=? (first mylist) 'doll) true]
            [else (contains-doll? (rest mylist))])]))