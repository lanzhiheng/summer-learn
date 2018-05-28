(define (first-denomination kinds-of-coins)
  (cond [(= kinds-of-coins 1) 1]
        [(= kinds-of-coins 2) 5]
        [(= kinds-of-coins 3) 10]
        [(= kinds-of-coins 4) 25]
        [(= kinds-of-coins 5) 50]))

(define (cc-coins-fast amount kinds-of-coins prev)
  (cond [(= amount 100) (+ prev 1)]
        [(or (> amount 100) (= kinds-of-coins 6)) prev]
        [else ()]))

(define (change-count amount)
  (cc-coins-fase amount 5))
