#!/usr/bin/env guile -s
!#

;; program that gives the Fibonacci Sequence

(use-modules (ice-9 textual-ports))

(display "Calculate the Fibonacci Sequence") (newline)
(display "Enter the Fib Number to Go Until: ")

(define n "")
(define x 1)
(define y 1)
(define z 2)
(set! n (get-line (current-input-port)) )
(set! n (string->number n) )

(display "The Sequence: ") (newline)

(display "1 \n1 \n")

(while (> n 1) (set! z (+ x y) )
                (display (string-append (number->string z) "\n") )
                (set! x y)
                (set! y z )
                (set! n (- n 1) )
)
