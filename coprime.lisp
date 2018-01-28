; Checks whether or not second argument is coprime number of the first one

(defun coprime (firstnum secondnum)
(defvar numcheck)
(if (eq (gcd firstnum secondnum) 1) (setf numcheck 1) (setf numcheck 0))
(if (eq numcheck 1) (return-from coprime t) (return-from coprime nil) ) )