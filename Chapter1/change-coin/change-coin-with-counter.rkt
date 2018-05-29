(define n 0)

(define (counter i)
  (set! n (+ n 1))
  i)

(define (first-denomination kinds-of-coins)
  (cond [(= kinds-of-coins 1) 1]
        [(= kinds-of-coins 2) 5]
        [(= kinds-of-coins 3) 10]
        [(= kinds-of-coins 4) 25]
        [(= kinds-of-coins 5) 50]))

(define (cc-coins amount kinds-of-coins)
  (cond [(= amount 0) (counter 1) 1]
        [(or (< amount 0) (= kinds-of-coins 0)) (counter 0) 0]
        [else (+ (cc-coins amount (- kinds-of-coins 1))
                 (cc-coins (- amount (first-denomination kinds-of-coins))
                           kinds-of-coins))]))

(define (change-coins amount)
  (cc-coins amount 5))


(define (calculate)
  (for ([i (range 1 101)])
    (change-coins i)
    (printf "number: ~a node: ~a ~n" i n)
    ; reset the n
    (set! n 0)
    ))
