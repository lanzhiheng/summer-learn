(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))


(define (good-enough? guess prev-guess)
  (< (abs (- prev-guess guess)) 0.000000000000000001))

(define (sqrt-iter-new guess x prev-guess)
  ( if (good-enough? guess prev-guess)
       guess
       ; send the prev-guess
       (sqrt-iter-new (improve guess x) x guess)))

(define (sqrt x)
  (sqrt-iter-new 1.0 x 0))
