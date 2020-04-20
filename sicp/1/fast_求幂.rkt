#lang racket
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((enough n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
(define (enough n)
  (= (remainder n 2) 0))
(define (square n)
  (* n n))

(fast-expt 2 4)