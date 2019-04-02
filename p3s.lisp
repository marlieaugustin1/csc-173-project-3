(setq ext:*warn-on-redefinition* nil)

(defun reverseList(l)
	(if (null l)
		nil
		(append (reverse (rest l))
		(list (first l)))
    )
)

(defun addToEnd (x list)
  (reverseList (cons x (reverse list)))
)
(print "Function to an element to the end of a list")
(terpri)
(print "Type in a list you want the element to be added to")
(terpri)
(setq list (read))
(terpri)
(print "Enter the element")
(terpri)
(setq el (read))
(terpri)
(print (addToEnd el list))		


(defun test (init)
  (print (sumfactors init (- init 1) 1 (mod (- init 1) '())))
)

(defun deficientp (curr)
  (if (> curr (test curr)) t nil)
)


