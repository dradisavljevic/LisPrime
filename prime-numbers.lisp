(defun isprime (primenum) 
(defvar numcheck) 
(setf numcheck 1) 
(loop for a from 1 to (floor (sqrt primenum)) do (if (not (= a 1) ) (if (eq (rem primenum a) 0) (setf numcheck 0) ) ) ) 
(if (eq numcheck 1) (return-from isprime t) (return-from isprime nil) ) )


(defun coprime (firstnum secondnum)
(defvar numcheck)
(if (eq (gcd firstnum secondnum) 1) (setf numcheck 1) (setf numcheck 0))
(if (eq numcheck 1) (return-from coprime t) (return-from coprime nil) ) )


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


(defun prime-factors (num)
(defvar listnum)
(defvar primednum)
(defvar primelist)
(setf listnum '(nil))
(setf primednum num)
(setf primelist (primes-between 2 primednum))
(loop while (> primednum 1)
 do (loop for a in primelist
 do (loop while (eq (rem primednum a) 0) do (progn (setf listnum (cons a listnum)) (setf primednum (/ primednum a))))
 )
 )
 (setf listnum (remove nil listnum))
 (return-from prime-factors (reverse listnum))
)

(defun coprimes-list (num)
(defvar listnum)
(setf listnum '(nil))
(loop for a from 2 to num do (if (eq (gcd num a) 1) (setf listnum (cons a listnum))))
 (setf listnum (remove nil listnum))
 (return-from coprimes-list (reverse listnum)) 
)

(defun modular-multiplicative-inverse (e totient)
(defvar d)
(defvar num)
(setf d 0)
(setf num 1)
(loop while (eq d 0)
 do (progn (if (eq (rem (* num e) totient) 1) (setf d num)) (incf num))
)
(return-from modular-multiplicative-inverse d)
)

(defun string-to-bytes (string)
(defvar charlist)
(setf charlist '(nil))
(loop for c across string do 
	(setf charlist (cons (char-code c) charlist))
)
 (setf charlist (remove nil charlist))
 (return-from string-to-bytes (reverse charlist))
)

(defun random-prime (upperbound lowerbound)
(defvar primelist)
(defvar primenum)
(setf primelist (primes-between lowerbound upperbound))
(setf primenum (nth (random (length primelist)) primelist))
(return-from random-prime primenum)
)

(defun random-coprime (number)
(defvar coprimelist)
(defvar coprimenum)
(setf coprimelist (coprimes-list number))
(setf coprimenum (nth (random (length coprimelist)) coprimelist))
(return-from random-coprime coprimenum)
)

(defun fermat-primality (num)
(defvar corpimenum)
(defvar calc)
(defvar primeindicator)
(setf coprimenum (random-coprime num))
(setf calc (expt coprimenum (- num 1)))
(setf primeindicator (rem calc num))
(if (eq primeindicator 1) (return-from fermat-primality "Given number is a possible prime number") (return-from fermat-primality "Given number is not a prime number"))
)
