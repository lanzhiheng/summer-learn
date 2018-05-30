;; import the counter
(require "../../share/step-counter.rkt")

(define (cube x) (* x x x))

(define (p x)
  (increment!)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))
   ))

(define (calculate)
  (for ([i (range 1 1000000)])
    (sine i)
    (printf "deg: ~a node: ~a ~n" i counter)
    ;; reset the counter
    (reset!)
    ))
