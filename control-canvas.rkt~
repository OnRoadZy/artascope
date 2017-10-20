;control-canvas.rkt
;在画布上绘图

(require "model-ks-simple.rkt")

;取得绘画设备：
(define dc (send ks-canvas get-dc))

(define draw-demo
  (lambda ()
    (send dc draw-rectangle 0 0 800 600)))

(define draw-ks
  (lambda () (draw dc)))

