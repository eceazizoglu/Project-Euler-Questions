#Sum of multiples of 3 or 5 under n in LISP

(define (add-helper lst)
  (if (null? lst) 0
      (+ (car lst) (add-helper (cdr lst)))))

(define (list-of-mult-3-5 n)
  (if (= n 0) '()
      (if (or (= (remainder (- n 1) 3) 0) (= (remainder (- n 1) 5) 0))
          (cons (- n 1) (list-of-mult-3-5 (- n 1)))
          (list-of-mult-3-5 (- n 1)))))

(define (sum-of-mult-3-5 n)
 (add-helper (list-of-mult-3-5 n)))
            


