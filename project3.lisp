(setq ext:*warn-on-redefinition* nil)

;   LIST

; Append

; Reverse
(defun reverse(l)
	(if (null l)
		nil
		(append (reverse (cdr l))
		(list (car l)))))


; Add an element to the end of a list

; Index-of

; Remove-all

(terpri)
(print " LIST FUNCTIONS ")
(terpri)
(print "Function to reverse a list: ")
(terpri)
(print "(reverse '(a b c d)) => ")
(print (reverse '(a b c d)))
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
    
; Set intersection
    
; Set union
    
; Check if subset or equal
    
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

; GCD
    
; LCM
    
; Prime
 
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

 ;   REQUIRED

; Check if a number is perfect
(defun perfect(x))

; Check if a number is abundant
    
; Check if a number is deficient
