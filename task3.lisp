(defun compress (l1)		       
  (cond ((null (cdr l1)) '())
	(t (accum (car l1) 1 (cdr l1)))))

(defun accum (val acc lst)
  (cond ((null lst) (cons (comp-list val acc) nil))
	((eq val (car lst)) (accum val (1+ acc) (cdr lst)))
	(t (cons (comp-list val acc) (accum (car lst) 1 (cdr lst))))))

(defun comp-list (val acc) (if (> acc 1) (list acc val) val))

(compress '(1 1 1 1 0 1 0 0 0 0 0 0 1 1))