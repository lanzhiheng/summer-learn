(define (square x) (* x x))

(define (expt-fast-recursion b n)
  (cond [(= n 0) 1]
        [(even? n) (square (expt-fast-recursion b (/ n 2)))]
        [else (* b (expt-fast-recursion b (- n  1)))])
  )
