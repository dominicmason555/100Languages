(var total 0)
(for [i 0 999]
  (if (or (= (% i 3) 0) (= (% i 5) 0))
    (set total (+ total i))))
(print total)
