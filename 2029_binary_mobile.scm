(define (make-mobile left right)
  (list left right))
(define (make-branch len structure)
  (list len structure))
(define (left-branch m)
  (car m))
(define (right-branch m)
  (car (cdr m)))
(define (branch-length b)
  (car b))
(define (branch-structure b)
  (car (cdr b)))
(define (total-weight m)
  (if (pair? m)
    (+ (total-weight (branch-structure (left-branch m)))
       (total-weight (branch-structure (right-branch m))))
    m))
(define (torque b)
  (if (pair? (branch-structure b))
    (* (branch-length b) (+ (torque (left-branch (branch-structure b)))
                            (torque (right-branch (branch-structure b)))))
    (* (branch-length b) (branch-structure b))))
(define (balanced? m)
  (define (balance-test mob)
    (if (pair? mob)
      (+ 

; test
(define b1 (make-branch 1 2))
(define b2 (make-branch 2 3))
(define b3 (make-branch 3 4))
(define m1 (make-mobile b1 b2))
(define b4 (make-branch 5 m1))
(define m2 (make-mobile b3 b4))

