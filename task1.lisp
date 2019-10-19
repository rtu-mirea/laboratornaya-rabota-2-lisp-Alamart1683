;; insert task 1.1
(defun insert (value list index)
  (cond ((= index 0) (push value list))
        ((> index (length list)) nil)
        (t
          (let ((start (subseq list 0 index))
                (end (subseq list index (position (last list) list))))
            (append start (list value) end)))))

(insert 228 (list 14 88 22 17 32 84 56 22) 2)

;; remove task 1.2
(remove 17 (list 14 88 22 17 32 84 56 22))