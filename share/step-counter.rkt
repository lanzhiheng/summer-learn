(module step-counter racket
  (provide counter increment! reset!)
  (define counter 0)
  (define (increment!)
    (set! counter (add1 counter)))
  (define (reset!)
    (set! counter 0)))
