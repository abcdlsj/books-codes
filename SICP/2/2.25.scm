#lang sicp

(define lst1 (cons 1 (cons 3 (cons (list 5 7) (cons 9 nil)))))

(cdr (car (cdr (cdr lst1))))

(define lst2 (cons 1 (cons 2 (cons 3 (cons 4 (cons (list 6 7) nil))))))

(cdr (car (cdr (cdr (cdr (cdr lst2))))))
