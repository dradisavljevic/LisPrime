; Function that for a given number executres prime factoring on it

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