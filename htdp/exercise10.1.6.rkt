;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise10.1.6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (change input)
  (cond
    [(symbol=? input 'robot) 'r2d2]
    [else input]))

(define (name-robot mylist)
  (cond
    [(empty? mylist) empty]
    [else (cons (change (first mylist)) (name-robot (rest mylist)))]))

(define (substitute old new mylist1)
  (cond
    [(empty? mylist1) empty]
    [else (cond
            [(symbol=? old (first mylist1)) (cons new (substitute old new mylist1))]
            [else (cons (first mylist1) (rest (substitute old new mylist1)))])]))

(substitute 'Barbie 'doll (cons 'robot (cons 'doll (cons 'dress empty))))
