;model-simple.rkt
;万花筒模型

(module model-simple racket

(provide draw-artascope)

;定义全局参数：
(define f-center (cons 300 300))
(define rf 300)
(define aw 30)
(define rw 200)
(define ap 20)
(define rp 100)
(define dlt-aw 5)
(define end-aw 360)
(define start-aw 0)
(define dlt-ap (- ap aw))

(define get-p
  (lambda (ap)
    (let ([w-center (get-w-center aw)])
      (cons (+ (car w-center) (* rp (cos (degrees->radians ap))))
            (+ (cdr w-center) (* rp (sin (degrees->radians ap))))))))

(define get-w-center
  (lambda (aw)
    (let ([l-f-w (- rf rw)])
      (cons (+ (car f-center) (* l-f-w (cos (degrees->radians aw))))
            (+ (cdr f-center) (* l-f-w (sin (degrees->radians aw))))))))

(define update-ap
  (lambda (aw)
    (set! ap (+ aw dlt-ap))))

(define update-aw
  (lambda ()
    (set! aw (+ aw dlt-aw))))

(define draw-artascope
  (lambda (dc)
    (let ([p1 (get-p ap)])
      (do ([a start-aw (+ a dlt-aw)])
        ((> a end-aw) #t)
        (begin
          (update-aw)
          (update-ap aw)
          (let ([p2 (get-p ap)])
            (begin
              (send dc draw-lines (list p1 p2))
              (set! p1 p2)))))))))
 