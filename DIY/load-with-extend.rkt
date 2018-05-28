;; auto append extension
(define (load-with-extension file-name)
  (load (string-append file-name ".rkt")))
