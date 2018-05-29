;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise10.1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (FC temperature)
  (/ (- temperature 32) 1.8))

(define (convertFC mylist)
  (cond
    [(empty? mylist) empty]
    [else (cons (FC (first mylist)) (convertFC (rest mylist)))]))

(convertFC (list 30 20 40 50))