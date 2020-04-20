#lang sicp
(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (same-parity x . y)
  (if (even? x)
      (filter even? (cons x y))
      (filter odd? (cons x y))))