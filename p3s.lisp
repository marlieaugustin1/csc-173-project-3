(setq ext:*warn-on-redefinition* nil)

(defun reverseList(l)
	(if (null l)
		nil
		(append (reverse (rest l))
		(list (first l)))
    )
)


(setf i 0)
(defun indexOf(x l)
	(when list
		(if (char= (cdr l) x)
			(print i)
			(terpri))
			(incf i 1)
		(indexOf(x (cdr l)))))
		
(print "Function to check the index of an element")
(terpri)
(print "Type in the element you want to check")
(terpri)
(setq el (read-char))
(terpri)
(print "Enter the list that it is a part of")
(terpri)
(setq list (read))
(terpri)
(print (indexOf el list))


(defun test (init)
  (print (sumfactors init (- init 1) 1 (mod (- init 1) '())))
)

(defun deficientp (curr)
  (if (> curr (test curr)) t nil)
)


