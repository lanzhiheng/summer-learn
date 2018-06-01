;; import the counter
(require "../../share/step-counter.rkt")

(define (double x) (* 2 x))

(define (halve x) (/ x 2))

(define (multiply a b)
  (increment!)
  (if (= b 0)
      0
      (+ a (multiply a (- b 1)))))


(define (fast-multiply a b)
  (increment!)
  (cond [(= b 0) 0]
        [(even? b) (fast-multiply (double a) (halve b))]
        [else (+ a (fast-multiply a (- b 1)))]))
