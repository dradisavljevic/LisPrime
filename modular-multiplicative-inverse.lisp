;;;; Function that computes the modular multiplicative inverse for two passed numbers
;;;; Number return should be such that when multiplied by e and then divided by totient, the result equals 1

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