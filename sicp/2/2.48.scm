#lang sicp

(define (for-each p lst)
    (cond ((not (null? lst))
            (p (car lst))
            (for-each p (cdr lst)))))

(define (make-vect x y)
  (cons x y))

(define (xcor-vect vect)
  (car vect))

(define (ycor-vect vect)
  (cadr vect))

(define (make-segment x y)
  (list x y))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cadr segment))

