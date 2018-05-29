;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise2.2.1) (read-case-sensitive #t) (teachpacks ((lib "dir.rkt" "teachpack" "htdp") (lib "arrow-gui.rkt" "teachpack" "htdp") (lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "dir.rkt" "teachpack" "htdp") (lib "arrow-gui.rkt" "teachpack" "htdp") (lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (Fahrenheit->Celsius fahrenheit)
  (/ (- fahrenheit 32) 1.8))


(convert-gui Fahrenheit->Celsius)

(convert-repl Fahrenheit->Celsius)

(convert-file "in.dat" Fahrenheit->Celsius "out.dat")