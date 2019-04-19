(setq ext:*warn-on-redefinition* nil)

;   LIST

(print "LIST FUNCTIONS")
(terpri)


; Append
(defun append(list1 list2)
	(if (null list1)
		list2
		(cons (first list1)(append(rest list1) list2))))
		
(print "Function to append two lists. e.g. using (1 3 x a) and (4 2 b)")
(terpri)
(print(append '(1 3 x a) '(4 2 b)))
(terpri)
(print "Input a list(i.e. (a b c))")
(terpri)
(setq list1 (read))
(print "Input another list(i.e. (a b c))")
(terpri)
(setq list2 (read))
(print (append list1 list2))
(terpri)


; Reverse
(defun reverse(l)
	(if (null l)
		nil
		(append (reverse (cdr l))
		(list (car l)))))

(print "Function to reverse a list. e.g. using list (a b c d)")
(terpri)
(print (reverse '(a b c d)))
(terpri)
(print "Type in a list to reverse: ")
(terpri)
(setq l1 (read))
(terpri)
(print (reverse l1))
(terpri)


; Add an element to the end of a list
(defun addtoend (n list)
  (reverse (cons n (reverse list)))
)

(print "Add an element to the end of a list. e.g. using character x and list (a b d)")
(terpri)
(print(addToEnd 'x '(a b d)))
(terpri)
(print "Type in a character")
(terpri)
(setq chara (read))
(print "Type in a list")
(terpri)
(setq l1 (read))
(print (addtoend chara l1)
(terpri))


; Map



;   SETS
(print "SET FUNCTIONS")


; Set membership
(defun member(n list)
    (if (null list) nil 
        (if (eql n (car list)) t
            (member n (cdr list)))))
            
(print "Function to check set membership. e.g. using element a and list (b c a d) along with element z and list (b c a d)")
(print "checks if 'a' is in list (b c a d)")
(terpri)
(if (null (member 'a '(b c a d))) (print "nil") (print "t"))
(print "checks if 'z' is in list (b c a d)")
(terpri)
(if (null (member 'z '(b c a d))) (print "nil") (print "t"))
(print "Type in a element")
(terpri)
(setq element (read))
(print "Type in a list (ex (1 2 3) )")
(terpri)
(setq l1 (read))
(print(member element l1))
(terpri)


; Insert element into set
(defun insert(n list)
    (if (member n list)
        "DUPLICATE: Cannot insert."
        (cons n list)))

(print "Function to insert an element into a set. e.g. using element a and list (b c d) along with element a and list (a b c d)")
(terpri)
(print "Insert 'a' into (b c d)")
(terpri)
(print(insert 'a '(b c d)))
(terpri)
(print "Insert 'a' into (a b c d)")
(terpri)
(print(insert 'a '(a b c d)))
(terpri)
(print "Type in a list (ex (1 2 3) )")
(terpri)
(setq l1 (read))
(print "Type in an element to be inserted")
(terpri)
(setq element (read))
(print(insert element l1))
(terpri)


; Set union
(defun union (list1 list2)
  (cond ((null list1) list2)
    ((trust(car list1) list2) (union(cdr list1) list2))
    (t (cons (car list1) (union(cdr list1) list2)))))

(print "Function for the union of sets. e.g.")
(print "Union of (a b c) and (a c d)")
(print(union '(a b c) '(a c d)))
(print "Type in a list for union")
(terpri)
(setq l1 (read))
(print "Type in a second list")
(terpri)
(setq l2 (read))
(terpri)
(print (union l1 l2))
(terpri)

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

(print "Set for the intersection of sets. e.g.")

(print "Intersection of (a b c) and (a c d)")
(print(intersect '(a b c) '(a c d) ))
(print "Input a list to intersect(ex (1 2 3) )")
(terpri)
(setq list1 (read))
(print "Input another list to intersect (ex (1 2 3) )")
(terpri)
(setq list2 (read))
(print(intersect list1 list2))

    
;   MATH
(print "MATH FUNCTIONS")

; Absolute value

(defun absolute (n)
    (if (< n 0) (- n) 
        n ))

(print "Function for the absolute value of a number. e.g. for input 7 and -7")
(terpri)
(print(absolute 7))
(terpri)
(print(absolute -7))
(terpri)
(print "Type in a number: ")
(terpri)
(setq num (read))
(print(absolute num))
(terpri)

; Factorial
(defun factorial (n) 
   (if (= n 1) 1 
       (* n (factorial (- n 1)))))
  
(print "Function for the factorial of a number. e.g. for input 5")
(terpri)
(print(factorial 5))
(terpri)
(print "Type in a number")
(terpri)
(setq num (read))
(print(factorial num))
(terpri)

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
  	
(print "Function to check if 3 numbers make up a right triangle. e.g. with input (3 4 5) and (1 2 3)")
(terpri)
(print "checking for numbers (3 4 5)")
(terpri)
(print(right-tri 3 4 5))
(terpri)
(print "checking for numbers(1 2 3)")
(terpri)
(print(right-tri 1 2 3))
(terpri)
(print "type in a number")
(terpri)
(setq l1 (read))
(print "type in a second number")
(terpri)
(setq l2 (read))
(print "type in a third number")
(terpri)
(setq l3 (read))
(print(right-tri l1 l2 l3))
(terpri)

;   REQUIRED
(print "REQUIRED FUNCTIONS")

(defun divisorSum (start n sum integers)
  (if (< n 1)  sum
  (if (member (/ start n) integers)
    (divisorSum start (- n 1) (+ sum (/ start n)) integers)
    (divisorSum start (- n 1) sum integers))))

(defun mod(i integers)
  (if(< i 2) integers
    (mod (- i 1) (cons i integers))))

(defun test (i)
  (divisorSum i (- i 1) 1 (mod (- i 1) '())))

; Perfect
(defun perfect(n)
  (if (= n (test n)) t nil))
  
(print "Function to test if a number is a perfect number")
(print "Checking if 5 is a perfect number")
(print (perfect 5))
(print "Checking if 6 is a perfect number")
(print (perfect 6))
(print "Type in an integer to test: ")
(terpri)
(setq inte (read))
(terpri)
(print (perfect inte))

; Abundant
(defun abundant (n)
  (if (< n (test n)) t nil))

(print "Function to test if a number is an abundant number")
(print "Checking if 5 is an abundant number")
(print (abundant 5))
(print "Checking if 12 is an abundant number")
(print (abundant 12))
(print "Type in an integer to test")
(terpri)
(setq inte (read))
(terpri)
(print (abundant inte))

; Deficient
(defun deficient (n)
  (if (> n (test n)) t nil))
  
(print "Function to test if a number is a deficient number")
(print "Checking if 5 is a deficient number")
(print (deficient 5))
(print "Checking if 12 is a deficient number")
(print (deficient 12))
(print "Type in an integer to test")
(terpri)
(setq inte (read))
(terpri)
(print (deficient inte))