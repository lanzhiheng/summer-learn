(define (factorial1 n)
  (if (or (= n 1) (= n 0))
      1
      (* n (factorial1 (- n 1)))))


(define (factorial2 max-count)
  (define (fact-iter product counter)
    (if (> counter max-count)
        product
        (fact-iter
         (* product counter)
         (+ counter 1))))

  (fact-iter 1 1)
  )
