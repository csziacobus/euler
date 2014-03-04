(let ((sum 0))
  (let ((a 1) (b 1) (c 0))
    (loop
       (setq c (+ a b))
       (when (> c 4000000)
	 (return))
       (when (evenp c)
	 (incf sum c))
       (setq a b)
       (setq b c)))
    sum)
    
