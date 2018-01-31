;;;; Forms a list of prime numbers for given two numbers
;;;; Two numbers passed as parameters are boundaries in between which the prime numbers must be located
;;;; Returns one randomly selected prime number

(defun random-prime (upperbound lowerbound)
(defvar primelist)
(defvar primenum)
(setf primelist (primes-between lowerbound upperbound))
(setf primenum (nth (random (length primelist)) primelist))
(return-from random-prime primenum)
)