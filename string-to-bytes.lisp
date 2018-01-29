;Given a string, returns a list of character codes for each of the strings characters

(defun string-to-bytes (string)
(defvar charlist)
(setf charlist '(nil))
(loop for c across string do 
	(setf charlist (cons (char-code c) charlist))
)
 (setf charlist (remove nil charlist))
 (return-from string-to-bytes (reverse charlist))
)