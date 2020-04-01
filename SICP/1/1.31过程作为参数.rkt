#lang racket
(define (cube x) (* x x x))
(define (sum term a next b)
  (if (> a b)
      0
      (+(term a)
        (sum term (next a) next b))))
(define (inc n) (+ n 1))
;求立方
(define (sum-cubes a b)
  (sum cube a inc b))
;求和
(define (identity x) x)
(define (sum-identity a b)
  (sum identity a inc b))
;pi-sum (p39)
(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))
;定积分近似值
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))