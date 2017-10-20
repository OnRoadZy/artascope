;定义总面板：
(define panel-all
  (new vertical-panel%
       [parent main-frame]
       [alignment '(left top)]
       [stretchable-width #t]
       [stretchable-height #t]))

;定义工具栏：
(define toolbars
  (new horizontal-panel%
       [parent panel-all]
       [alignment '(left top)]
       [stretchable-width #f]
       [stretchable-height #f]
       [border 2]))
;引入工具栏定义：
(include "view-toolbar.rkt")

;定义工作区面板：
(define panel-work
  (new horizontal-panel%
       [parent panel-all]
       [alignment '(center center)]))

;引入画布定义：
(include "view-canvas.rkt")
;引入绘图参数设置面板：
(include "view-setting.rkt")
