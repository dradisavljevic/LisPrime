;;;; Implementation of the fermat primality test
;;;; For a number that is passed to the function returns whether or not it is a possible prime
;;;; Prints out the test result as string

(defun fermat-primality (num)
(defvar corpimenum)
(defvar calc)
(defvar primeindicator)
(setf coprimenum (random-coprime num))
(setf calc ((expt coprimenum (- num 1))))
(setf primeindicator (rem calc num))
(if (eq primeindicator 1) (return-from fermat-primality "Given number is a possible prime number") (return-from fermat-primality "Given number is not a prime number"))
)