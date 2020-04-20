(define (make-segment x y) (cons x y))
(define (make-point x y) (cons x y))
(define (x-point x) (car x))
(define (y-point x) (cdr x))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment p1 p2)
  (make-segment (/ (+ (x-point p1) (x-point p2)) 2)
                (/ (+ (y-point p1) (y-point p2)) 2)))

(define (make-rectangle a b c d) (cons (cons a b) (cons c d)))

(define rectangle (make-rectangle (make-segment (make-point 0 0) (make-point 1 0))
                                   (make-segment (make-point 0 0) (make-point 0 1))
                                   (make-segment (make-point 0 1) (make-point 1 1))
                                   (make-segment (make-point 1 1) (make-point 1 0))))

(define (print-rect rect)
  (display "[")
  (print-point (car (car (car rect))))
  (display ",")
  (print-point (cdr (car (car rect))))
  (display ",")
  (print-point (car (car (cdr rect))))
  (display ",")
  (print-point (cdr (car (cdr rect))))
  (display "]"))

(print-rect rectangle)