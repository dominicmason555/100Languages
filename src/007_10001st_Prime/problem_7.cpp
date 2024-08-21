#include <cmath>
#include <iostream>
#include <vector>

#include <CL/sycl.hpp>

using namespace cl;

class sieve;

/**
 * Find the upper bound for the nth prime number.
 **/
int nth_prime_upper_bound(int n) {
  // Wikipedia says J. Barkler Rosser proved the nth prime is less than
  // n * log( n * log(n) ) where n >= 6. Luckily 10001 is greater than 6.
  float upper_bound = n * std::log(n * std::log(n));
  return static_cast<int>(std::ceil(upper_bound));
}

/**
 * Find the nth prime number
 **/
int nth_prime(int n) {
  auto queue = sycl::queue{};

  // Find the largest possible value of the 10001st prime
  int upper_bound = nth_prime_upper_bound(n);

  // Use the sieve of Eratosthenes with divisors up to the square root of
  // the upper bound of the nth prime
  int largest_divisor = static_cast<int>(std::ceil(std::sqrt(upper_bound)));
  std::vector<int> divisors;
  divisors.push_back(2);
  // Only test division by odd numbers, since testing division by 2 covers evens
  for (int i = 3; i < largest_divisor; i += 2) {
    divisors.push_back(i);
  }
  size_t num_divisors = divisors.size();

  // Array of zeros for each number up to the upper bound of the nth prime,
  // where zero means the number is possibly prime, 1 means it's definitely not.
  std::vector<uint8_t> possible_primes(upper_bound);
  possible_primes[0] = 1; // Zero isn't prime
  possible_primes[1] = 1; // Neither is 1

  {
    // Create on-device buffers copied from our arrays of divisors and possible
    // prime numbers. They will be copied back and freed at the end of this
    // block.
    auto divisors_buf =
        sycl::buffer{divisors.data(), sycl::range{num_divisors}};

    auto primes_buf = sycl::buffer{possible_primes.data(),
                                   sycl::range{possible_primes.size()}};

    queue.submit([&](sycl::handler &cgh) {
      // Our function reads the divisors and writes to the primes.
      sycl::accessor divisors_acc{divisors_buf, cgh, sycl::read_only};
      sycl::accessor primes_acc{primes_buf, cgh, sycl::write_only};

      // In parallel, for all 169 divisors, mark all numbers that are divisible
      // by the divisor as definitely not prime.
      cgh.parallel_for<sieve>(
          sycl::range{num_divisors}, [=](sycl::id<1> divisor_idx) {
            // Get our divisor
            const int divisor = divisors_acc[divisor_idx];
            // Mark everything divisible by the divisor as not prime (1).
            // Will have multiple threads writing to the same address,
            // but they'll all write the same value so don't panic.
            for (int i = 2; i < (upper_bound / divisor); i++) {
              primes_acc[i * divisor] = 1;
            }
          });
    });
  }
  // Now the arrays are back on the host and freed from the device, although if
  // the host and the device share the same memory then the transfer dance isn't
  // necessary

  // Count through the numbers that weren't marked as non-prime, the 10001st one
  // should be the 10001st prime number.
  int prime_counter = 0;
  int nth_prime_number = 0;
  for (int i = 0; (i < possible_primes.size()) && (prime_counter < n); i++) {
    if (possible_primes[i] == 0) {
      nth_prime_number = i;
      prime_counter++;
    }
  }

  return nth_prime_number;
}

int main(int argc, char *argv[]) {

  int nth_prime_number = nth_prime(10001);
  std::cout << "Answer is: " << nth_prime_number << std::endl;

  return 0;
}
