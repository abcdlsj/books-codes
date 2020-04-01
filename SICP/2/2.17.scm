#lang sicp
(define (last-pair lst)
  (cond ((null? lst)
         (error "list empty -- LAST-PAIR"))
        ((null? (cdr lst))
         lst)
        (else
         (last-pair (cdr lst)))))

(last-pair (list 23 72 149 34))