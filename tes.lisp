(defun x (n l)
  (setf m (* n n))
  (setf g (apply '+ l))
  (if (>= g m) (setf v (+ (random m (make-random-state t))1))
  (setf v (+ (random (- m g) (make-random-state t)) 1)))
  (cond ((> (apply #'+ l) m)(x n nil))

	 ((= n (length l))(cond ((= m (apply #'+ l)) l)
			       (t (x n nil))))
	((member v l)(x n l))
	(t (x n (cons v l)))))
