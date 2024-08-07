(define (palindromic n) (string=? (number->string n) (reverse (number->string n))))

(define (doubleLoop n1 n2 maxN biggest)
  (let ((isPalindromic (palindromic (* n1 n2)))
        (bigger (< biggest (* n1 n2))))
    (if (> n1 1)
        (if (< n2 2)
            (doubleLoop (- n1 1) maxN maxN (if (and isPalindromic bigger) (* n1 n2) biggest))
            (doubleLoop n1 (- n2 1) maxN (if (and isPalindromic bigger) (* n1 n2) biggest)))
        biggest)))

(define (largest-palindrome-product n)
  (doubleLoop n n n 0))

(let ((answer (largest-palindrome-product 999)))
  (format #t "Answer: ~D~%" answer))

