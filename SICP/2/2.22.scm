#lang sicp

(define (square x)
  (* x x))

;; (define (square-list items)
;;   (define (iter things answer)
;;     (if (null? things)
;;         answer
;;         (iter (cdr things)
;;               (cons (square (car things))
;;                     answer))))
;;   (iter items nil))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items nil))

;;why

> (square-list (list 1 2 3 4))
((((() . 1) . 4) . 9) . 16)
> (cons nil 1)
(() . 1)
> (cons 1 nil)
(1)
