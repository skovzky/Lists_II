;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 143|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)
;EX 143


(define-struct work (employee rate hours))
; Work is a structure: (make-work String Number Number).
; interp. (make-work n r h) combines the name (n)
; with the pay rate (r) and the number of hours (h) worked.

; Low -> List-of-numbers
; compute the weekly wages for all given weekly work records
 
(check-expect (wage*.v2 (cons (make-work "Robby" 11.95 39) empty))
              (cons (* 11.95 39) empty))
 
(define (wage*.v2 an-low)
  (cond
    [(empty? an-low) empty]
    [(cons? an-low) (cons (wage.v2 (first an-low))
                          (wage*.v2 (rest an-low)))]))
 
; Work -> Number
; compute the wage for the given work record w
(define (wage.v2 w)
  (* (work-rate w) (work-hours w))) 


;wage*.v3
(define (wage*.v3 l)
  (cond
    [(empty? l) empty]
    [(cons? l) (cons 