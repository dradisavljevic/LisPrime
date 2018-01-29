;Forms a list of all the prime numbers in between the two given numbers and returns a randomly chosen number

(defun random-prime (upperbound lowerbound)
(defvar primelist)
(defvar primenum)
(setf primelist (primes-between lowerbound upperbound))
(setf primenum (nth (random (length primelist)) primelist))
(return-from random-prime primenum)
)