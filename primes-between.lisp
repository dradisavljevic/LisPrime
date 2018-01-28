;Returns a list of prime numbers between two given numbers

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