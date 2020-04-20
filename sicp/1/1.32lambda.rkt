#lang racket
;;y=x(1+xy)^2+y(1-y)+(1+xy)(1-y)
(define (f x y)
  (define (f-helper a b)
    (+ (* x (* a a)) (* y b) (* a b)))
  (f-helper (+ 1 (* x y)) (- 1 y)))


;;lambda
(define (f_la x y)
  ((lambda (a b)
    (+ (* x (* a a)) (* y b) (* a b)))
    (+ 1 (* x y))
    (- 1 y)))


(f 1 1)
(f_la 1 1)