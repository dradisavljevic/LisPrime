;Implemenation of the Fermat primality test. Function returns a textual feedback if the given number is a possible prime.

(defun fermat-primality (num)
(defvar corpimenum)
(defvar calc)
(defvar primeindicator)
(setf coprimenum (random-coprime num))
(setf calc ((expt coprimenum (- num 1))))
(setf primeindicator (rem calc num))
(if (eq primeindicator 1) (return-from fermat-primality "Given number is a possible prime number") (return-from fermat-primality "Given number is not a prime number"))
)