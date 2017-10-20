;control-command.rkt
;命令执行程序===========================

(define (draw menu-item event)
  (draw-demo)
  (draw-ks))

(define (setting menu-item event)
  #t)

(define (help menu-item event)
  (message-box "关于万花筒程序"
               "万花筒程序：一个模拟万花筒的程序，用Racket编写。\n本程序尽量全面展示了Racket语言GUI编程方式，以及基本的画布绘图操作。\n作者：张恒源"  
               main-frame
               '(ok caution)))