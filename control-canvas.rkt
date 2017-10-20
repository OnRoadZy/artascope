;control-canvas.rkt
;在画布上绘图

(require "model-simple.rkt")

;取得绘画设备：
(define dc (send canvas get-dc))

(define draw-artascope-commond
  (lambda ()
    ;(send dc draw-line 10 10 500 500)
    (draw-artascope dc)))

