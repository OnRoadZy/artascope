;view-setting.rkt
;绘图参数设置==========

(define panel-setting
  (new vertical-panel%
       [parent panel-work]
       [style '(border auto-vscroll)]
       [alignment '(right top)]
       [min-width 200]
       [stretchable-width #f]))

;轨道框架参数：
(define group-box-panel-frame
  (new group-box-panel%
       (parent panel-setting)
       (label "轨道参数")
       (stretchable-height #f)))
(define text-field-af0
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道圆起始角")
       (init-value (number->string (get-af0)))))
(define text-field-rf
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道圆半径")
       (init-value (number->string (get-rf)))))
(define text-field-start-af
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道起始角")
       (init-value (number->string (get-start-af)))))
(define text-field-end-af
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道结束角")
       (init-value (number->string (get-end-af)))))

;滚轮参数：
(define group-box-panel-wheel
  (new group-box-panel%
       (parent panel-setting)
       (label "滚轮参数")
       (stretchable-height #f)))
(define text-field-ap0
  (new text-field%
       (parent group-box-panel-wheel)
       (label "绘制点起始角")
       (init-value (number->string (get-ap0)))))
(define text-field-rw
  (new text-field%
       (parent group-box-panel-wheel)
       (label "滚轮半径")
       (init-value (number->string (get-rw)))))
(define text-field-rp
  (new text-field%
       (parent group-box-panel-wheel)
       (label "绘制点半径")
       (init-value (number->string (get-rp)))))
(define text-field-step-aw
  (new text-field%
       (parent group-box-panel-wheel)
       (label "滚轮角步距")
       (init-value (number->string (get-step-aw)))))