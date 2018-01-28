; Function to test whether or not a number is a prime number
; Returns t if it's a prime, returns NIL otherwise

(defun isprime (primenum) 
(defvar numcheck) 
(setf numcheck 0) 
(loop for a from 1 to (floor (sqrt primenum)) do (if (not (= a 1) ) (if (= (rem primenum a) 0) (setf numcheck 1) ) ) ) 
(if (= numcheck 0) (return-from isprime t) (return-from isprime nil) ) )
