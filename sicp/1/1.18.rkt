#lang racket
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even n)
  (= (remainder n 2) 0))
(define (iter_add a b counter)
  (cond ((= b 0) counter)
        ((even b)(iter_add (double a) (halve b) counter))
        (else (iter_add a (- b 1) (+ a counter)))))
(define (cj x y)
  (iter_add x y 0))

(cj 3 3)