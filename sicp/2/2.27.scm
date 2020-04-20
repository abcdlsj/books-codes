#lang sicp

(define (reverse lst)
  (lter lst '()))

(define (lter remained-item res)
  (if (null? remained-item)
      res
      (lter (cdr remained-item)
	    (cons (car remained-item) res))))

(define (deep-reverse tree)
  (cond ((null? tree)
         '())
        ((not (pair? tree))
         tree)
        (else
         (reverse (list (deep-reverse (car tree))
                        (deep-reverse (cadr tree)))))))

(define x (list (list 1 2) (list 3 4)))

(reverse x)
(deep-reverse x)