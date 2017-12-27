;artascope.rkt
;主程序：

#lang racket
(require racket/gui)
(require racket/draw)

(require "model-simple.rkt")

(include "view-main.rkt")

(send main-frame show #t)
