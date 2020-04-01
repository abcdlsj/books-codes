#lang sicp

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (branch-weight branch)
  (if (not (pair? (branch-structure branch)))
      (branch-structure branch)
      (total-weight (branch-structure branch))))

(define (balance-mobile? mobile)
  (and
   (same-qu? (left-branch mobile) (right-branch mobile))
   (balance? (left-branch mobile))
   (balance? (right-branch mobile))))

(define (branch-qu branch)
  (* (branch-length branch)
     (branch-weight branch)))

(define (same-qu? left right)
  (= (branch-qu left)
     (branch-qu right)))

(define (balance? branch)
  (if (pair? (branch-structure branch))
      (balance-mobile? (branch-structure branch))
      #t))

;; (define (hangs-another-mobile? branch)              ; 检查分支是否吊着另一个活动体
;;   (pair? (branch-structure branch)))

;; (define (branch-torque branch)
;;   (* (branch-length branch)
;;      (branch-weight branch)))

;; (define (mobile-balance? mobile)
;;   (let ((left (left-branch mobile))
;;         (right (right-branch mobile)))
;;     (and                                        ; 必须同时满足以下三个条件，才是平衡的活动体
;;      (same-torque? left right)
;;      (branch-balance? left)
;;      (branch-balance? right))))

;; (define (same-torque? left right)
;;   (= (branch-torque left)
;;      (branch-torque right)))

;; (define (branch-balance? branch)
;;   (if (hangs-another-mobile? branch)              ; 如果分支上有子活动体
;;       (mobile-balance? (branch-structure branch))  ; 那么(递归地)检查子活动体的平衡性
;;       #t))                                        ; 否则，返回 #t

(define balance-mobile (make-mobile (make-branch 10 10)
                                    (make-branch 10 10)))

(balance-mobile? balance-mobile)


;;d

;; (define (left-branch mobile)
;;   (car mobile))

;; (define (right-branch mobile)
;;   (cdr mobile))

;; (define (branch-length branch)
;;   (car branch))

;; (define (branch-structure branch)
;;   (cdr branch))

;; (define (make-mobile left right)
;;   (cons left right))

;; (define (make-branch length structure)
;;   (cons length structure))
