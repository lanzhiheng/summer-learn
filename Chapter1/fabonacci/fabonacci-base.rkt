#lang racket

;; 递归计算
(define (fib-recursion n)
  (cond [(= n 0) 0]
        [(= n 1) 1]
        [else (+ (fib-slow (- n 1))
                 (fib-slow (- n 2)))]))


;; 迭代计算
(define (fib-iteration n)
  (define (fib-iter a b count)
    (if (= count 0)
        a
        (fib-iter b (+ a b) (- count 1))))

  (fib-iter 0 1 n)
  )
