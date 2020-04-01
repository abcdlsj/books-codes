#lang sicp
(define (reverse lst)
  (lter lst '()))

(define (lter remained-item res)
  (if (null? remained-item)
      res
      (lter (cdr remained-item)
	    (cons (car remained-item) res))))