(define (cube number)
  (* number number number))

(define (square number)
  (* number number))

(define (average-number num1 num2 div)
  (/ (+ num1 num2) div))


(define (open-cube x)
  (define (good-enough? guess prev-guess)
    (< (abs (- prev-guess guess)) 0.000000000000000001))

  (define (improve guess)
    (average-number (/ x (square guess)) (* 2 guess) 3))

  (define (open-cube-iter guess prev-guess)
    (if (good-enough? guess prev-guess)
        guess
        (open-cube-iter (improve guess) guess)))

  (open-cube-iter 1.0 0))
