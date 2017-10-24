;control-view-setting.rkt
;view-control的控制程序。

;取得并设置绘图参数值：
#|
af0 ap0
rf rw rp
step-aw
start-af end-af
|#
(define (set-draw-parameter)
  (begin
    (set-af0 (string->number (send text-field-af0 get-value)))
    (set-ap0 (string->number (send text-field-ap0 get-value)))
    (set-rf (string->number (send text-field-rf get-value)))
    (set-rw (string->number (send text-field-rw get-value)))
    (set-rp (string->number (send text-field-rp get-value)))
    (set-step-aw (string->number (send text-field-step-aw get-value)))
    (set-start-af (string->number (send text-field-start-af get-value)))
    (set-end-af (string->number (send text-field-end-af get-value)))))


     