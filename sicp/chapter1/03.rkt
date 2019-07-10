#lang sicp

(#%require rackunit)

(define (sum-of-largest-squares a b c)
  (cond ((and (>= a b) (>= b c)) (sum-of-squares a b))
        ((and (>= a b) (>= c b)) (sum-of-squares a c))
        (else (sum-of-squares c b))))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (square a) (* a a))

(check-equal? (sum-of-largest-squares 1 2 3) 13)
(check-equal? (sum-of-largest-squares 4 5 2) 29)
(check-equal? (sum-of-largest-squares 7 10 3) 109)
