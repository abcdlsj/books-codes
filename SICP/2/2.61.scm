#lang sicp

(define (adjoin-set x set)
  (define (iter x left right)
    (cond ((< x (car right))
         (list (reverse left) x right))
        ((= x (car right))
         (cons left right))
        (else (iter x (cons (car right) left) (cdr right)))))
  (iter x '() set))

;;(define (adjoin-set x set)
;;  (if (null? set)
;;      (list x)
;;      (let ((current-element (car set))
;;            (remained-element (cdr set)))
;;        (cond ((= x current-element)
;;               set)
;;              ((> x current-element)
;;               (cons current-element
;;                     (adjoin-set x remained-element)))
;;              ((< x current-element)
;;               (cons x set))))))