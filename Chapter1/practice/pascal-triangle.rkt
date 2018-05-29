; pascal triangle

(define (pascal-triangle row col)
  (cond [(= col 0) 1]
        [(= col row) 1]
        [(> col row) #f]
        [else (+ (pascal-triangle (- row 1) (- col 1))
                 (pascal-triangle (- row 1) col))]))
