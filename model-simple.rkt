;model-simple.rkt
;万花筒模型

(module model-simple racket

  (provide draw-artascope)

  ;定义全局参数：
  (define f-center (cons 300 300))
  (define af0 30)
  (define ap0 20)
  (define rf 300)
  (define rw 80)
  (define rp 70)
  (define step-aw 5)
  (define end-af 1720)
  (define start-af 0)

  ;取得绘图点的X、Y坐标：
  (define xp
    (lambda (xw ap)
      (+ xw (* rp (cos (degrees->radians ap))))))
  (define yp
    (lambda (yw ap)
      (+ yw (* rp (sin (degrees->radians ap))))))

  ;计算滚轮圆心X、Y坐标：
  (define xw
    (lambda (af)
      (+ (car f-center) (* (- rf rw) (cos (degrees->radians af))))))
  (define yw
    (lambda (af)
      (+ (cdr f-center) (* (- rf rw) (sin (degrees->radians af))))))

  ;计算af、dlt-af、ap值：
  (define af
    (lambda (dlt-af)
      (+ af0 dlt-af)))
  (define dlt-af
    (lambda (dlt-aw)
      (/ (* rw dlt-aw) rf)))
  (define ap
    (lambda (dlt-aw)
      (- ap0 dlt-aw)))
  

  ;组合坐标值为点值：
  (define get-p
    (lambda (dlt-aw)
      (cons (xp (xw (af (dlt-af dlt-aw))) (ap dlt-aw))
            (yp (yw (af (dlt-af dlt-aw))) (ap dlt-aw)))))

  (define cur-aw
    (lambda (af)
      (/ (* af rf) rw))) 
  
  ;绘制万花筒：
  (define draw-artascope
    (lambda (dc)
      (let ([p1 (get-p 0)])
        (do ([dlt-aw (cur-aw (+ af0 start-af)) (+ dlt-aw step-aw)])
          ((> dlt-aw (cur-aw (+ af0 end-af))) "结束画图。")
          (let ([p2 (get-p dlt-aw)])
            (begin
              (send dc draw-lines (list p1 p2))
              (set! p1 p2))))))))
 