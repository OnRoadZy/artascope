;view-toolbar.rkt
;工具栏=======================

;定义工具栏：
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

(define button-help
  (new button%
       [parent toolbar-general]
       [label "关于此程序"]
       [callback help]))
