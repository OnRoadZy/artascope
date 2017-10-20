#lang racket
(require racket/gui)
(require racket/draw)

(struct little-circle (r))
(struct big-circle (r))

(include "control-command.rkt")

;定义主界面：
(define main-frame
  (new frame%
       [label "万花筒(KS)"]
       [width 800]
       [height 600]
       [border 5]))

(include "view-menubar.rkt")
(include "view-main.rkt")

(include "control-canvas.rkt")
 
(send main-frame show #t)
