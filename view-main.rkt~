;view-mail.rkt
;定义主界面视图：

;;;定义主界面：================================================================
(define main-frame
  (new frame%
       [label "万花筒(Artascope)"]
       [width 800]
       [height 600]
       [border 5]))

;;;分割主界面：=================================================================
;定义总面板：
(define panel-all
  (new vertical-panel%
       [parent main-frame]
       [alignment '(left top)]
       [stretchable-width #t]
       [stretchable-height #t]))

;定义工具栏面板：
(define toolbars
  (new horizontal-panel%
       [parent panel-all]
       [alignment '(left top)]
       [stretchable-width #f]
       [stretchable-height #f]
       [border 2]))

;定义工作区：
(define panel-work
  (new horizontal-panel%
       [parent panel-all]
       [alignment '(center center)]))

;定义画布面板：
(define panel-canvas
  (new vertical-panel%
       [parent panel-work]
       [style '(border)]
       [alignment '(left top)]
       [border 10]))

;定义绘图参数设置面板
(define panel-setting
  (new vertical-panel%
       [parent panel-work]
       [alignment '(right top)]
       [border 5]
       [min-width 180]
       [stretchable-width #f]))

;;;定义画布：==================================================================
(define canvas
  (new canvas%
       [parent panel-canvas]))

;;;引入视图控制程序：===========================================================
(include "control-main.rkt")

;;;定义菜单====================================================================
(define menubar
  (new menu-bar%
       [parent main-frame]))

;;程序菜单：
(define menu-prog
  (new menu%
       [label "程序"]
       [parent menubar]))
(define menu-item-draw
  (new menu-item%
       [label "画图"]
       [parent menu-prog]
       [callback draw]))
(define menu-item-clear
  (new menu-item%
       [label "清空画布"]
       [parent menu-prog]
       [callback clear]))
(define separator-menu-item-1
  (new separator-menu-item%
       [parent menu-prog]))
(define menu-item-exit
  (new menu-item%
       [label "退出"]
       [parent menu-prog]
       [callback
        (lambda (item event)
          (send main-frame on-exit))]))

;;帮助菜单：
(define menu-help
  (new menu%
       [label "帮助"]
       [parent menubar]))
(define menu-item-help
  (new menu-item%
       [label "使用指南"]
       [parent menu-help]
       [callback help]))
(define menu-item-about
  (new menu-item%
       [label "关于"]
       [parent menu-help]
       [callback help]))

;;;定义工具栏按钮：=================================================================
(define toolbar-general
  (new horizontal-panel%
       [parent toolbars]
       [alignment '(left top)]
       [stretchable-width #f]
       [stretchable-height #f]))

(define button-draw
  (new button%
       [parent toolbar-general]
       [label "画图"]
       [callback draw]))

(define button-clear
  (new button%
       [parent toolbar-general]
       [label "清空画布"]
       [callback clear]))

(define button-help
  (new button%
       [parent toolbar-general]
       [label "关于此程序"]
       [callback help]))

;;;定义绘图参数设置控件：=======================================================
;轨道参数：
(define group-box-panel-frame
  (new group-box-panel%
       (parent panel-setting)
       (label "轨道参数")
       (alignment (list 'right 'top))
       (stretchable-height #f)))
(define text-field-af0
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道圆起始角")
       (horiz-margin 5)
       (style '(single horizontal-label ))
       (min-width 162)
       (stretchable-width #f) 
       (init-value (number->string (get-af0)))))
(define text-field-rf
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道圆半径")
       (horiz-margin 5)
       (style '(single horizontal-label))
       (min-width 150)
       (stretchable-width #f) 
       (init-value (number->string (get-rf)))))
(define text-field-start-af
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道起始角")
       (horiz-margin 5)
       (min-width 150)
       (stretchable-width #f) 
       (init-value (number->string (get-start-af)))))
(define text-field-end-af
  (new text-field%
       (parent group-box-panel-frame)
       (label "轨道结束角")
       (horiz-margin 5)
       (min-width 150)
       (stretchable-width #f) 
       (init-value (number->string (get-end-af)))))

;滚轮参数：
(define group-box-panel-wheel
  (new group-box-panel%
       (parent panel-setting)
       (label "滚轮参数")
       (alignment (list 'right 'top))
       (stretchable-height #f)))
(define text-field-ap0
  (new text-field%
       (parent group-box-panel-wheel)
       (label "绘制点起始角")
       (horiz-margin 5)
       (min-width 162)
       (stretchable-width #f) 
       (init-value (number->string (get-ap0)))))
(define text-field-rw
  (new text-field%
       (parent group-box-panel-wheel)
       (label "滚轮半径")
       (horiz-margin 5)
       (min-width 138)
       (stretchable-width #f) 
       (init-value (number->string (get-rw)))))
(define text-field-rp
  (new text-field%
       (parent group-box-panel-wheel)
       (label "绘制点半径")
       (horiz-margin 5)
       (min-width 150)
       (stretchable-width #f) 
       (init-value (number->string (get-rp)))))
(define text-field-step-aw
  (new text-field%
       (parent group-box-panel-wheel)
       (label "滚轮角步距")
       (horiz-margin 5)
       (min-width 150)
       (stretchable-width #f) 
       (init-value (number->string (get-step-aw)))))
