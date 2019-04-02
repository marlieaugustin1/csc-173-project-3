(setq ext:*warn-on-redefinition* nil)

;   LIST

; Append
(defun append(list1 list2)
	(if (null list1)
		list2
		(cons (first list1)(append(rest list1) list2))))

; Reverse
(defun reverse(l)
	(if (null l)
		nil
		(append (reverse (cdr l))
		(list (car l)))))


; Add an element to the end of a list
(defun addtoend (n list)
  (reverse (cons n (reverse list)))
)

; Remove-all

(terpri)
(print " LIST FUNCTIONS ")
(terpri)
(print "Append two lists: ")
(terpri)
(print "(append '(1 3 x a) '(4 2 b))")
(terpri)
(print (append '(1 3 x a) '(4 2 b)))
(terpri)
(print "Function to reverse a list: ")
(terpri)
(print "(reverse '(a b c d)) => ")
(print (reverse '(a b c d)))
(terpri)
(print "Add an element to the end of a list: ")
(terpri)
(print "(addtoend 'd '(a b c)) => ")
(print (addtoend 'd '(a b c)))
(terpri)
(print "Map function: ")
(terpri)
(print "(map 'add3 '(1 2 3 4)  => ")
;(print (map 'add3 '(1 2 3 4))
(terpri)

;   SETS

; Set membership
(defun member(n list)
    (if (null list) 
        nil 
        (if (eql n (car list)) 
            t
            (member n (cdr list))))

; Insert element into set
(defun insert(n list)
    (if (member n list)
        "DUPLICATE: Cannot insert."
        (cons n list))
    
; Set union
(defun union (list1 list2)
  (cond ((null list1) list2)
    ((trust(car list1) list2) (union(cdr list1) list2))
    (t (cons (car list1) (union(cdr list1) list2)))))

; Set intersection
(defun trust (e list)
  (if (null list) nil
    (if (eql e (first list)) t
    (trust e (rest list)))))
	
(defun intersect (list1 list2)
  (if (null list1) list1
    (if (trust (car list1) list2)
      (cons (car list1) (intersect (cdr list1) list2))
      (intersect (cdr list1) list2))))

(print "  SET FUNCTIONS  ")
(terpri)
(print "Member function:")
(terpri)
(print "(member 'a '(b c a d)) => ")
(print (member 'a '(b c a d)))
(terpri)
(print "(member 'x '(b c a d)) =>")
(print (member 'x '(b c a d)))
(terpri)
(print "Insert element into set function")
(terpri)
(print "(insert 'a '(b c d)) => ")
(print (insert 'a '(b c d)))
(terpri)
(print "(insert 'a '(a b c d)) =>")
(print (insert 'a '(a b c d)))
(terpri)
(print "Set union function: ")
(terpri)
(print "(union '(a b c) '(a c d)) => ")
(print (union '(a b c) '(a c d)))
(terpri)
(print "Set intersection function:")
(terpri)
(print "(intersect'(a b c) '(a c d)) => ")
(print (intersect '(a b c) '(a c d)))
(terpri)
    
;   MATH

; Absolute value
(defun absolute (n)
    (if (< n 0) (- n) 
        n ))

; Factorial
(defun factorial (n) 
   (if (= n 1) 1 
       (* n (factorial (- n 1)))))
  
; Fibonacci
(defun nth-fibo(n)
    (if (= n 0) 0
        (if (= n 1) 1
            (+ (n-fib (- n 1)) (n-fib(- n 2))))))

; Right triangle
(defun right-tri(x y z) 
 (if (or (eq (+(* x x) (* y y)) (* z z) ) (eq (+(* x x) (* z z)) (* y y) ) 
 	(eq (+(* y y) (* z z)) (* x x) ) ) t
  	nil ))
 
(terpri)
(print "  MATH FUNCTIONS  ")
(terpri)
(print "Absolute value function: ")
(terpri)
(print "(absolute 7) => ")
(print (absolute 7))
(terpri)
(print "(absolute -7) => ")
(print (absolute -7))
(terpri)
(print "Factorial function: ")
(terpri)
(print "(factorial 5) => ")
(print (factorial 5))
(terpri)
(print "Nth Fibonacci number function: ")
(print "(nth-fibo 6) => ")
(print (nth-fibo 6))
(terpri)
(print "(nth-fibo 10) => ")
(print (nth-fibo 10))
(terpri)
(print "Right triangle: ")
(print "(right-tri 3 4 5) => ")
(print (right-tri 3 4 5))
(terpri)
(print "(right-tri 1 2 3) => ")
(print (right-tri 1 2 3))
(terpri)

 ;   REQUIRED

; Check if a number is perfect


; Check if a number is abundant
    
; Check if a number is deficient
