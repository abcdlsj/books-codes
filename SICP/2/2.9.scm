(define (add-width x y)
  (/ (- (cdr (add-interval x y)) (car (add-interval x y))) 2))

(define add-width-test
  (add-width (cons 2 4) (cons 3 5)))
