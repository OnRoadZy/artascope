;control-canvas.rkt
;在画布上绘图

(require "model-simple.rkt")

;取得绘画设备：
(define dc (send canvas get-dc))

;取得画布尺寸：
(define (canvas-size)
  (send canvas get-client-size))

;绘制万花筒命令：
(define draw-artascope-command
  (lambda ()
    (set-f-center canvas-size)
    (draw-artascope dc)))

