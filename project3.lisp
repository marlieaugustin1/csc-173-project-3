(setq ext:*warn-on-redefinition* nil)

;   LIST

; Append

; Reverse

; Add an element to the end of a list

; Index-of

; Remove-all


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
   

 ;   REQUIRED

; Check if a number is perfect
(defun perfect(x))

; Check if a number is abundant
    
; Check if a number is deficient
