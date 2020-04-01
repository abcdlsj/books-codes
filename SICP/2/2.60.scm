#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (cons x set))

(define (intersection-set set another)
    (define (iter set result)
        (if (or (null? set) (null? another))
            (reverse result)
            (let ((current-element (car set))
                  (remain-element (cdr set)))
                (if (and (element-of-set? current-element another)
                         (not (element-of-set? current-element result)))
                    (iter remain-element
                          (cons current-element result))
                    (iter remain-element result)))))
    (iter set '()))

(define (union-set set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        ((element-of-set? (car set1) set2)
         (union-set (cdr set1) set2))
        (else (cons (car set1) set2))))