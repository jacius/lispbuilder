;;;;; Converted from the "Bezier" Processing example at:
;;;;; "http://www.processing.org/learning/examples/bezier.html"
;;;;; (C)2006 Luke J Crook

(in-package #:sdl-gfx-examples) 


(defun bezier ()
  (let ((width 200) (height 200))
    (sdl:with-init ()
      (sdl:window width height :title-caption "Bezier, from Processing.org")
      (setf (sdl-base::frame-rate) 5)
      (sdl:clear-display (sdl:color :r 0 :g 0 :b 0))
      (sdl:with-surface (disp sdl:*default-display*)
	(sdl:with-color (col (sdl:color :r 255 :g 255 :b 255))
	  (loop for i from 0 to 100 by 10
	     do (sdl-gfx:draw-bezier (list (sdl:point :x (- 90 (/ i 2.0)) :y (+ 20 i))
					   (sdl:point :x 210 :y 10)
					   (sdl:point :x 220 :y 150)
					   (sdl:point :x (- 120 (/ i 8.0)) :y (+ 150 (/ i 4.0))))
				     5))))
      (sdl:with-events ()
		       (:quit-event () t)
		       (:video-expose-event () (sdl:update-display))))))
