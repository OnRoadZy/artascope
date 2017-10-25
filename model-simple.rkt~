;model-simple.rkt
;万花筒模型

(module model-simple racket

  (provide draw-artascope
           set-f-center
           get-af0 set-af0 get-ap0 set-ap0
           get-rf set-rf get-rw set-rw get-rp set-rp
           get-step-aw set-step-aw
           get-start-af set-start-af  get-end-af set-end-af)

  ;定义全局参数：
  (define f-center (cons 300 300))
  (define af0 30)
  (define ap0 20)
  (define rf 300)
  (define rw 210)
  (define rp 100)
  (define step-aw 30)
  (define start-af 0)
  (define end-af 7720)

  ;设置/取得绘图全局参数：
  (define (get-af0) af0)
  (define (set-af0 a) (set! af0 a))
  (define (get-ap0) ap0)
  (define (set-ap0 a) (set! ap0 a))
  (define (get-rf) rf)
  (define (set-rf r) (set! rf r))
  (define (get-rw) rw)
  (define (set-rw r) (set! rw r))
  (define (get-rp) rp)
  (define (set-rp r) (set! rp r))
  (define (get-step-aw) step-aw)
  (define (set-step-aw a) (set! step-aw a))
  (define (get-start-af) start-af)
  (define (set-start-af a) (set! start-af a))
  (define (get-end-af) end-af)
  (define (set-end-af a) (set! end-af a))

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
              (set! p1 p2)))))))

  ;设置画布中心点为轨道圆心点：
  ;函数参数为函数，该函数参数取得画布的尺寸。
  (define (set-f-center canvas-size)
    (let-values ([(fx fy) (canvas-size)])
      (set! f-center (cons (/ fx 2) (/ fy 2)))))
  )
 