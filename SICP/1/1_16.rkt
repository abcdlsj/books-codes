#lang racket
;iteration求幂
(define (expt b n)
  (expt-iter b n 1))
(define (expt-iter b n a)
  (cond ((= n 0) a)
        ((enough n) (expt-iter (square b) (/ n 2) a))
        (else (expt-iter b (- n 1) (* b a)))))
(define (enough n)
  (= (remainder n 2) 0))
(define (square n)
  (* n n))

(expt 2 4)