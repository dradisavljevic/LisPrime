;;;; Function that computes the modular multiplicative inverse for two passed numbers
;;;; Number return should be such that when multiplied by e and then divided by totient, the result equals 1

(defun modular-multiplicative-inverse (e totient)
  (loop for num from 1
        with d = 0
        while (zerop d)
        when (= (rem (* num e) totient) 1)
          do (setf d num)
        finally (return d)))
