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

(defun add3To (x)
    (+ x 3)
)

(defun mapFunction (list)
    (if (null list)
        nil
        (cons (add3 (first list))
            (myMap (rest list))
        )
    )
)	

(defun rightTriangle (x y z) 
 (if (or (eq (+(* x x) (* y y)) (* z z) ) (eq (+(* x x) (* z z)) (* y y) ) 
 	(eq (+(* y y) (* z z)) (* x x) ) )
  	(print "Valid right Triangle")
  	nil 
	))


(defun add3List (x)
    (+ x 3)
)

(defun mapFunction (l)
    (if (null l)
        nil
        (cons (add3List (first l))
            (myMap (rest l))
        )
    )
)

(print "Map function to adds 3 to each element in a list")
(terpri)
(print "Input a list of numbers")
(terpri)
(setq list (read))
(print (mapFunction list))
(terpri)

(defun remove-all-occurrences (lst elt)
    (if (null lst)
      nil
      (if (equal (car lst) elt)
        (remove-all-occurrences (cdr lst) elt)
        (cons (car lst) (remove-all-occurrences (cdr lst) elt)))))



(defun test (init)
  (print (sumfactors init (- init 1) 1 (mod (- init 1) '())))
)

(defun deficientp (curr)
  (if (> curr (test curr)) t nil)
)


