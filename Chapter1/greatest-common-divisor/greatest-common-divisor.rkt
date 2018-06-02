(define (gcb a b)
  (if (= b 0)
      a
      (gcb b (remainder a b))))
