#lang sicp

(define (square x)
  (* x x))

(define (square-tree tree) (tree-map square tree))

(define (tree-map proc tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map proc sub-tree)
             (proc sub-tree)))
       tree))

(tree-map square (list (list 1 2) (list 3 4)))