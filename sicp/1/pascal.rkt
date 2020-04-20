#lang racket
(define (pascal x y)
  (if (or (= y x) (= y 1))
      1
      (+ (pascal(- x 1) (- y 1)) (pascal (- x 1) y))))