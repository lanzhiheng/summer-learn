;; import the counter
(require "../../share/step-counter.rkt")

(define (square x) (* x x))

(define (expt-fast-iter n max b a)
  (cond [(odd? max) (expt-fast-iter n (- max 1) b (* a b))]
        [(< n max) (expt-fast-iter (+ n 2) max b (* a (square b)))]
        [else a])
  )


(define (expt-fast-iteration b n)
  (expt-fast-iter 0 n b 1))
