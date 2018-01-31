;;;; Checks if number is prime or not.
;;;; Receives one parameter which is number for which test is conducted
;;;; Returns T if number is prime, otherwise returns NIL

(defun isprime (primenum) 
(defvar numcheck) 
(setf numcheck 1) 
(loop for a from 1 to (floor (sqrt primenum)) do (if (not (= a 1) ) (if (eq (rem primenum a) 0) (setf numcheck 0) ) ) ) 
(if (eq numcheck 1) (return-from isprime t) (return-from isprime nil) ) )
