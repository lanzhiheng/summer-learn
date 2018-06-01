;; import the counter
(require "../../share/step-counter.rkt")

(define (double x) (* 2 x))

(define (halve x) (/ x 2))

(define (multiply a b)
  (multiply-iter a b 0)
  )

(define (multiply-iter a b base)
  (increment!)
  (cond [(= b 0) base]
        [(odd? b) (multiply-iter a (sub1 b) (+ base a))]
        [else (multiply-iter (double a) (halve b) base)]))
