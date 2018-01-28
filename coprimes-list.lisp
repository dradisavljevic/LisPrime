; Returns a list of all coprimes for a given number

(defun coprimes-list (num)
(defvar listnum)
(setf listnum '(nil))
(loop for a from 2 to num do (if (eq (gcd num a) 1) (setf listnum (cons a listnum))))
 (setf listnum (remove nil listnum))
 (return-from coprimes-list (reverse listnum)) 
)