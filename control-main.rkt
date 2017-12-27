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
  (af0-v (string->number (send text-field-af0 get-value)))
  (ap0-v (string->number (send text-field-ap0 get-value)))
  (rf-v (string->number (send text-field-rf get-value)))
  (rw-v (string->number (send text-field-rw get-value)))
  (rp-v (string->number (send text-field-rp get-value)))
  (step-aw-v (string->number (send text-field-step-aw get-value)))
  (start-af-v (string->number (send text-field-start-af get-value)))
  (end-af-v (string->number (send text-field-end-af get-value))))

;;;菜单命令/工具栏执行程序====================================================
;绘制万花板：
(define (draw menu-item event)
  (set-draw-parameter);设置绘图参数
  (set-f-center (lambda () (send canvas get-client-size)));设置轨道中心点
  (draw-artascope (send canvas get-dc)))

;清空画布：
(define (clear menu-item event)
  (send canvas refresh))

;显示关于对话框：
(define (help menu-item event)
  (message-box "关于万花板程序"
               "万花板程序：一个模拟万花板的程序，用Racket编写。\n
本程序尽量全面展示了Racket语言GUI编程方式，以及基本的画布绘图操作。\n
作者：ZHY"  
               main-frame
               '(ok caution)))
	       
