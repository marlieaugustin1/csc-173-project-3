(setq ext:*warn-on-redefinition* nil)

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

 ;   REQUIRED

; Check if a number is perfect
(defun perfect(x))
