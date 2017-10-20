#lang racket

;定义滚轮类：
;rw：滚轮半径，rp：笔孔距滚轮圆心距离
;初始化滚轮半径rw，笔孔与圆心距离rp，滚轮圆心角aw，鼻孔角ap
(define wheel%
  (class object%
    (init rw-init rp-init aw-init ap-init)
    (field (rw rw-init)
           (rp rp-init)
           (aw aw-init)
           (ap ap-init))
    
    (super-new)

    ;设置aw值：
    (define set-aw
      (lambda (a)
        (set! aw a)))
    
    ;获取笔孔的位置坐标：
    ;笔孔坐标
    (define/public get-p
      (lambda (f-center rf)
        (let ([center (get-center f-center rf)])
          (vector (+ (vector-ref center 0) (* rp (cos ap)))
                  (+ (vector-ref center 1) (* rp (sin ap)))))))

    ;取得滚轮圆心坐标：
    ;圆心 => 轨道框圆心f-center, 轨道框半径rf
    (define/public get-center
      (lambda (f-center rf)
        (let ([l-f-w (- rf rw)])
          (vector (+ (vector-ref f-center 0) (* l-f-w (cos aw)))
                  (+ (vector-ref f-center 1) (* l-f-w (sin aw)))))))))

;定义轨道框架类：
;初始化参数：f-center-init rf-init aw-init rw-init ap-init rp-init
(define ks-frame%
  (class object%
    (init f-center-init rf-init rw-init ap-init rp-init dlt-a-init)
    (field (f-center f-center-init)
           (rf rf-init)
           (dlt-a dlt-a-init)
           (wheel (new wheel% [rw-init rw-init] [rp-init rp-init] [aw-init aw-init] [ap-init ap-init])))
    
    (super-new)

    (define draw-ks
      (lambda (aw-min aw-max dc)
        (let ([p1 (send wheel get-p f-center rf)])
          (do ([a aw-min dlt-a])
            (> a aw-max)
            (begin
              (let ([p2 (send wheel get-p f-center rf)])
                (begin
                  (send dc draw-lines p1 p2)
                  (set! p1 p2))))))))))
                  
    