(ql:quickload "split-sequence")

(defun e-char-int (character)
  (1+ (- (char-int character) (char-int #\A))))

(defun word-value (word)
  (let ((value 0))
    (loop for i across word
       do (incf value (e-char-int i)))
    value))

(let ((word-list) (value-list) (triangles 0) (triangle))
  (dotimes (i 100000)
    (push (* i (1+ i) 1/2) triangle))
  (with-open-file (input "words.txt")
    (setf word-list 
	  (split-sequence:split-sequence #\, (read-line input))))
  (dolist (word word-list)
    (push (word-value (string-trim "\"" word)) value-list))
  (dolist (value value-list)
    (when (member value triangle)
      (incf triangles)))
  triangles)
	  



