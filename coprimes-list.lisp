;;;; Function that returns a list of coprime numbers for a certain number
;;;; Receives one parameter which is number for which the coprimes will be computed
;;;; Returns a list coprimes for the passed numer

(defun coprimes-list (num)
(defvar listnum)
(setf listnum '(nil))
(loop for a from 2 to num do (if (eq (gcd num a) 1) (setf listnum (cons a listnum))))
 (setf listnum (remove nil listnum))
 (return-from coprimes-list (reverse listnum)) 
)