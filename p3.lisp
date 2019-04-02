(setq ext:*warn-on-redefinition* nil)

(defun reverseList(l)
	(if (null l)
		nil
		(append (reverse (rest l))
		(list (first l)))
    )
)

(print "Function to reverse a list")
(terpri)
(print "Type in a list that you want to reverse ex: (a b c)")
(terpri)
(setq list (read))
(terpri)
(print (reverseList list))
(terpri)

(defun indexOf(x l)
	(setf i 0)
	(when list
		(if (= (cdr l) c)
			(print i)
			(terpri))
			(incf i 1)
		(indexOf(x (cdr l))))
		
(print "Function to check the index of an element")
(terpri)
(print "Type in the element you want to check")
(terpri)
(setq el (read))
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
