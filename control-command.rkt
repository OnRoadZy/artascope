;control-command.rkt
;命令执行程序===========================

(define (draw menu-item event)
  (draw-artascope-command))

(define (clear menu-item event)
  (clear-canvas))

(define (help menu-item event)
  (message-box "关于万花筒程序"
               "万花筒程序：一个模拟万花筒的程序，用Racket编写。\n
本程序尽量全面展示了Racket语言GUI编程方式，以及基本的画布绘图操作。\n
作者：张恒源"  
               main-frame
               '(ok caution)))