(define number 0)
(define (counter)
  (set! number (+ number 1)))

(define (cube x) (* x x x))

(define (p x)
  (counter)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))
   ))
