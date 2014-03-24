(let ((array (make-array '(101 101))))
  (with-open-file (input "triangle.txt")
    (dotimes (i 101)
      (dotimes (j i)
	(setf (aref array i j) (read input)))))
  (loop for i from 99 downto -1
       do (loop for j from 0 to i
	       do (incf (aref array i j) (max
					  (aref array (1+ i) j)
					  (aref array (1+ i) (1+ j))))))
  (aref array 0 0))
