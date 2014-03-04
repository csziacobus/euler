(let (factors)
  (let ((n 600851475143) (i 2))
    (loop
       (when (= n 1)
	 (return))
       (if (zerop (mod n i))
	   (progn
	     (push i factors)
	     (setq n (/ n i)))
	   (incf i))))
  (reduce #'max factors))
    
