;;; Project Euler, problem 97

;;; O(1)
;;; run time: ~0 sec
(defun problem-097 ()
  (rem (1+ (* 28433 (expt 2 7830457))) (expt 10 10)))

#+sbcl
(sb-rt:deftest test-097
    (problem-097)
  8739992577)