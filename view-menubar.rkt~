;view-menubar.rkt
;菜单======================

(define menubar
  (new menu-bar%
       [parent main-frame]))

(define menu-prog
  (new menu%
       [label "程序"]
       [parent menubar]))

(define menu-item-draw
  (new menu-item%
       [label "画图"]
       [parent menu-prog]
       [callback draw]))

(define menu-item-setting
  (new menu-item%
       [label "设置"]
       [parent menu-prog]
       [callback setting]))

(define menu-item-exit
  (new menu-item%
       [label "退出"]
       [parent menu-prog]
       [callback (lambda (item event) (send main-frame on-exit))]))

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
