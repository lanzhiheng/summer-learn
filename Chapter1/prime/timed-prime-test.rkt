(load "prime-base.rkt")

(define (time-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (current-milliseconds) start-time))
      (display "not prime")))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
