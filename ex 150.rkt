;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 150|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)
;EX 150

;system requirements
(require 2htdp/batch-io)

;make the file a few lists
(define doc (read-words/line "VSkovzky.txt"))

;functions
;takes the list doc and deletes the articles "a" "an" "the"
(define i-hate-articles doc
  (cond
    [(empty? doc) empty]
    [(cons? doc)
     