;;;; Function that returns all prime numbers in between certain boundaries
;;;; Two parameters passed to the function are numbers in between which prime numbers will be located
;;;; Returns a list of all prime numbers between two numbers

(defun primes-between (firstnum secondnum)
(defvar dummynum)
(defvar primelist)
(setf primelist '(nil))
(if (< secondnum firstnum) (progn (setf dummynum secondnum) (setf secondnum firstnum) (setf firstnum dummynum)))
(loop for a from firstnum to secondnum
 do (if (isprime a) 
	(setf primelist (cons a primelist))
 )
)
(setf primelist (remove nil primelist))
(return-from primes-between (reverse primelist)))