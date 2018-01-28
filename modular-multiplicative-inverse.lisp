; Calculates modular multiplicative inverse for a number and totient
; used for implementation of the RSA algorithm

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