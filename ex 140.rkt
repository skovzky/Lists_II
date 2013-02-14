;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 140|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;EX 140
;robert heemann (THE GREAT VLADIMIR SKOVZKY)

;design convertFC: make a functin that takes a list of Fahrenheit measurements and
;convert them to Celsius

;Conversion Factor HELPER FUNCTION
(check-expect (convert 32) 0)
(check-expect (convert 86) 30)

(define (convert f)
  (/ (- f 32) 1.8))

;Function aplied to list l
(define (convert-list l)
  (cond
    [(empty? l) empty]
    [(cons? l) (cons (convert (first l)) (convert-list (rest l)))]))

