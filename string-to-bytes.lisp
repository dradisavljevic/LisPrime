;;;; Converts a string to an array of byte values for each character in string
;;;; Receives one parameter which is string
;;;; Returns a list of byte values

(defun string-to-bytes (string)
(defvar charlist)
(setf charlist '(nil))
(loop for c across string do 
	(setf charlist (cons (char-code c) charlist))
)
 (setf charlist (remove nil charlist))
 (return-from string-to-bytes (reverse charlist))
)