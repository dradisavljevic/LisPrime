;;;; Forms a list of coprime numbers for number
;;;; Number passed as parameter is one for which coprimality of the other numbers will be calucalated
;;;; Returns one randomly selected coprime number

(defun random-coprime (number)
(defvar coprimelist)
(defvar coprimenum)
(setf coprimelist (coprimes-list number))
(setf coprimenum (nth (random (length coprimelist)) coprimelist))
(return-from random-coprime coprimenum)
)