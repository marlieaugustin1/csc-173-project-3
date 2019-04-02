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

(defun rightTriangle (x y z) 
 (if (or (eq (+(* x x) (* y y)) (* z z) ) (eq (+(* x x) (* z z)) (* y y) ) 
 	(eq (+(* y y) (* z z)) (* x x) ) )
  	(print "Valid right Triangle")
  	nil 
	))
(print "Check if 3 integers can be the lengths of the two sides and the hypotenuse of a right triangle (in that order)")
(terpri)
(print "Input one side")
(terpri)
(setq s1 (read))
(print "Input the second side")
(terpri)
(setq s2 (read))
(print "Input the hypotenuse")
(terpri)
(setq h (read))
(print (rightTriangle s1 s2 h))
(terpri)



(defun test (init)
  (print (sumfactors init (- init 1) 1 (mod (- init 1) '())))
)

(defun deficientp (curr)
  (if (> curr (test curr)) t nil)
)


