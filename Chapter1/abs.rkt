(define (abs1 x)
  (cond [(> x 0) x]
        [(= x 0) 0]
        [(< x 0) (- x)]))


(define (abs2 x)
  (cond [(< x 0) (- x)]
        [else x]))


(define (abs3 x)
        (if (< x 0)
            (- x)
            x))

(define (>= x y)
        (or (> x y) (= x y)))


(define (sum-max-two x y z)
  (cond [(and (<= x y) (<= x z)) (+ y z)]
        [(and (<= y x) (<= y z)) (+ x z)]
        [(and (<= z x) (<= z y)) (+ x y)]))


(define (p) (p))

(define (test x y)
        (if (= x 0)
            0
            y))
