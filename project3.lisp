(setq ext:*warn-on-redefinition* nil)

;   REQUIRED

; Check if a number is perfect
(defun perfect(x))


;   SETS

; Set membership
; Insert element into set

;   MATH

; Absolute value
(defun absolute (n)
    (if (< n 0) (- n) 
        n ))

; Factorial
(defun factorial (n) 
   (if (= n 1) 1 
       (* n (factorial (- n 1)))))
