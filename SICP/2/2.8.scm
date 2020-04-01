(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
		 (- (upper-bound x) (lower-bound y))))

(define sub-interval1 (sub-interval (make-interval 1 2) (make-interval 4 5)))
