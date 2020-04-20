#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

;;(define (map p sequence)
;;    (if (null? sequence)
;;        '()
;;        (cons (p (car sequence))
;;              (map p (cdr sequence)))))
;;
;;(define (append list1 list2)
;;    (if (null? list1)
;;        list2
;;        (cons (car list1)
;;              (append (cdr list1) list2))))
;;
;;(define (length items)
;;    (if (null? items)
;;        0
;;        (+ 1
;;           (length (cdr items)))))

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
              '()
              sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y))
              0
              sequence))