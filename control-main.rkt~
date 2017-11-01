;control-main.rkt
;main视图的控制程序：

;;;取得并设置绘图参数值(绘图面板函数)：========================================
#|
af0 ap0
rf rw rp
step-aw
start-af end-af
|#
(define (set-draw-parameter)
  (set-af0 (string->number (send text-field-af0 get-value)))
  (set-ap0 (string->number (send text-field-ap0 get-value)))
  (set-rf (string->number (send text-field-rf get-value)))
  (set-rw (string->number (send text-field-rw get-value)))
  (set-rp (string->number (send text-field-rp get-value)))
  (set-step-aw (string->number (send text-field-step-aw get-value)))
  (set-start-af (string->number (send text-field-start-af get-value)))
  (set-end-af (string->number (send text-field-end-af get-value))))

;;;菜单命令/工具栏执行程序====================================================
;绘制万花筒：
(define (draw menu-item event)
  (set-draw-parameter);设置绘图参数
  (set-f-center (lambda () (send canvas get-client-size)));设置轨道中心点
  (draw-artascope (send canvas get-dc)))

;清空画布：
(define (clear menu-item event)
  (send canvas refresh))

;显示关于对话框：
(define (help menu-item event)
  (message-box "关于万花筒程序"
               "万花筒程序：一个模拟万花筒的程序，用Racket编写。\n
本程序尽量全面展示了Racket语言GUI编程方式，以及基本的画布绘图操作。\n
作者：张恒源"  
               main-frame
               '(ok caution)))
