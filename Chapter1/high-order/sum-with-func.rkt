(define (inc n) (+ n  1))

(define (sum term a next b)
  (define (cube x) (* x x x))
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (sum-cubes a b)
  (sum cube a inc b))


(define (sum-itegers a b)
  (define (identity x) x)
  (sum identity a inc b))


(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b)
  )
