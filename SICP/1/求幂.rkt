#lang racket
;求幂
;recursion
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

;iteration
(define (iexpt b n )
  (expt-iter b n 1))
(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b (- counter 1) (* product b))))

(iexpt 2 2)
(expt 2 2)