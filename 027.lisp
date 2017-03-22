;;; Project Euler, problem 27

;;; O(?)
;;; run-time: 0.2 s
(defun problem-027 ()
  (let ((max-consecutive-primes 0) max-a max-b)
    (loop for a from -999 to 999
        do (loop for b from -999 to 999
               do (loop
                      with consecutive-primes = 0
                      for n from 0
                      for p = (+ (* n (+ n a)) b)
                      while (primep p)
                      do (incf consecutive-primes)
                      finally
                        (when (> consecutive-primes max-consecutive-primes)
                          (setf max-consecutive-primes consecutive-primes
                                max-a a
                                max-b b)))))
    (* max-a max-b)))




#+sbcl
(sb-rt:deftest test-027
    (problem-027)
  -59231)