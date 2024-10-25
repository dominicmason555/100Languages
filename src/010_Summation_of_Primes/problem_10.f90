program problem_10
use OMP_LIB
implicit none

integer, parameter :: N = 2000000
integer :: i
integer :: divisor
real :: sqrtN_r = sqrt(real(N))
integer :: sqrtN
integer(8) :: sumPrimes = 0 ! Answer, greater than 2^32

! Create array of 2 000 000 booleans set to .true. for potentially-prime
logical :: isPrime(N)
isPrime = .true.
isPrime(1) = .false. ! 1 is not prime

! Sieve, set each multiple of divisor to false meaning not prime
! where divisor is every element from 2 up to square root of N
sqrtN = int(sqrtN_r)
!$omp parallel do schedule(dynamic) private(divisor, i) shared(isPrime)
    do divisor = 2, sqrtN
        do i = divisor * 2, N, divisor
            isPrime(i) = .false.
        end do
    end do
!$omp end parallel do

! Sum the values which haven't been marked as non-prime
!$omp parallel do reduction(+:sumPrimes)
do i = 1, N
    if (isPrime(i) .eqv. .true.) then
        sumPrimes = sumPrimes + i
    end if
end do
!$omp end parallel do

print *, "Answer:", sumPrimes

end program problem_10

