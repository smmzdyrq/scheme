;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise2.3.1) (read-case-sensitive #t) (teachpacks ((lib "dir.rkt" "teachpack" "htdp") (lib "arrow-gui.rkt" "teachpack" "htdp") (lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "dir.rkt" "teachpack" "htdp") (lib "arrow-gui.rkt" "teachpack" "htdp") (lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (tax h)
  (* h 12 0.15))

(define (netpay h)
  (* h 12 0.85))

(tax 8)
(netpay 8)