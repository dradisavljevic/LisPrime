; Checks whether or not number is prime number

(defun isprime (primenum) 
(defvar numcheck) 
(setf numcheck 1) 
(loop for a from 1 to (floor (sqrt primenum)) do (if (not (= a 1) ) (if (eq (rem primenum a) 0) (setf numcheck 0) ) ) ) 
(if (eq numcheck 1) (return-from isprime t) (return-from isprime nil) ) )
