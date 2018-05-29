;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise9.5.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (check-range1 mylist1)
  (cond
    [(empty? mylist1) 'yes]
    [else (cond
            [(or (< (first mylist1) 5) (> (first mylist1) 95)) 'no]
            [else (check-range1 (rest mylist1))])]))
(check-range1 (list 6 87))

(define (check-range2 mylist x y)
  (cond
    [(empty? mylist) 'yes]
    [else (cond
            [(or (< (first mylist) x) (> (first mylist) y)) 'no]
            [else (check-range2 (rest mylist) x y)])]))
(check-range2 (list 1 2 3) 0 5)