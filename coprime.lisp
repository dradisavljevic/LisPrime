;;;; Checks if two passed numbers are coprimes
;;;; Receives two parameters, first one being the number against which test will be conducted
;;;; Second parameter is a candidate for coprime number
;;;; Returns T if second number is indeed coprime, returns NIL otherwise

(defun coprime (firstnum secondnum)
(defvar numcheck)
(if (eq (gcd firstnum secondnum) 1) (setf numcheck 1) (setf numcheck 0))
(if (eq numcheck 1) (return-from coprime t) (return-from coprime nil) ) )