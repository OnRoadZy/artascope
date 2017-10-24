;control-canvas.rkt
;在画布上绘图

;取得绘画设备：
(define dc (send canvas get-dc))

;取得画布尺寸：
(define (canvas-size)
  (send canvas get-client-size))

;绘制万花筒命令：
(define draw-artascope-command
  (lambda ()
    (set-draw-parameter)
    (set-f-center canvas-size)
    (draw-artascope dc)))

;清空画布：
(define (clear-canvas)
  (send canvas refresh))

