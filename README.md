# 100 Programming Languages for the first 100 Project Euler Problems

This repository is to track my progress in imitating
[jaredkrinke](https://github.com/jaredkrinke)'s
[misguided quest to write code in 100 different programming languages](https://log.schemescape.com/posts/programming-languages/100-languages.html),
specifically by solving the first 100
[Project Euler](https://projecteuler.net/) problems. Get
[nerd-sniped](https://xkcd.com/356/).

**Interested in joining an insane challenge?** Use
[this repository template](https://github.com/NathanielJS1541/100_languages_template)
as a template to get started tracking your progress.

## Credit

Thank (or blame) [jaredkrinke](https://github.com/jaredkrinke) for the
challenge.
Thank [NathanielJS1541](https://github.com/NathanielJS1541/) for the repository
template.

## Running my Solutions

For most of the solutions, if you have [Nix](https://nixos.org/download/)
installed, you should be able to run `nix-shell` in the problem directory to
make the dependencies available, then run `just` to run the solution. If you
have [direnv](https://direnv.net/) installed, then after typing `direnv allow`
in the solution directory, the `nix-shell` command should be automatically run
whenever you enter that solution directory.

## Getting Started / Doing the Challenge

1. (Optional) Make an account on [Project Euler](https://projecteuler.net/) if
   you'd like to submit your answers there to check them.
2. Choose a challenge and a programming language.
3. Enter the language (with a link to the language's page) in the "Language"
   column of the table in the [progress section](#progress).
4. Go to the relevant folder within [src](./src/) (linked in the "Challenge
   Folder" column) and get started! The `README.md` file *should* contain all
   the information you need for the challenge. If it doesn't, let me know by
   opening an issue.
5. Once you've finished, commit your changes and change the
   `:white_square_button:` in the "Completed" column to a `:white_check_mark:`.
   Unfortunately interactive checkboxes can't be used in a table in
   GitHub-flavoured markdown.
6. (Optional) submit your answer on [Project Euler](https://projecteuler.net/).
7. Move on to the next challenge and repeat!

## Progress

Each check mark is a link to the solution source file.

| **Challenge Folder**                                                                                | **Language**                                                                    | **Solution**                                                                     |
|:----------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------:|
| [001_Multiples_of_3_or_5](./src/001_Multiples_of_3_or_5/)                                           | [Fennel](https://fennel-lang.org)                                               | [:white_check_mark:](./src/001_Multiples_of_3_or_5/problem_1.fnl)                |
| [002_Even_Fibonacci_Numbers](./src/002_Even_Fibonacci_Numbers/)                                     | [ARM64 Assembly](https://developer.arm.com/documentation/102374/latest/)        | [:white_check_mark:](./src/002_Even_Fibonacci_Numbers/problem_2.s)               |
| [003_Largest_Prime_Factor](./src/003_Largest_Prime_Factor/)                                         | [Pharo Smalltalk](https://pharo.org)                                            | [:white_check_mark:](./src/003_Largest_Prime_Factor/Integer-hundredLanguages.st) |
| [004_Largest_Palindrome_Product](./src/004_Largest_Palindrome_Product/)                             | [S7 Scheme](https://ccrma.stanford.edu/software/snd/snd/s7.html)                | [:white_check_mark:](./src/004_Largest_Palindrome_Product/problem_4.scm)         |
| [005_Smallest_Multiple](./src/005_Smallest_Multiple/)                                               | [VHDL](https://en.wikipedia.org/wiki/VHDL)                                      | [:white_check_mark:](./src/005_Smallest_Multiple/problem_5.vhdl)                 |
| [006_Sum_Square_Difference](./src/006_Sum_Square_Difference/)                                       | [RISC-V 64 Assembly](https://riscv.org/technical/specifications/)               | [:white_check_mark:](./src/006_Sum_Square_Difference/problem_6.s)                |
| [007_10001st_Prime](./src/007_10001st_Prime/)                                                       | [SYCL C++](https://github.com/AdaptiveCpp/AdaptiveCpp)                          | [:white_check_mark:](./src/007_10001st_Prime/problem_7.cpp)                      |
| [008_Largest_Product_in_a_Series](./src/008_Largest_Product_in_a_Series/)                           | [Erlang](https://www.erlang.org)                                                | [:white_check_mark:](./src/008_Largest_Product_in_a_Series/problem_8.erl)        |
| [009_Special_Pythagorean_Triplet](./src/009_Special_Pythagorean_Triplet/)                           |                                                                                 | :white_square_button:                                                            |
| [010_Summation_of_Primes](./src/010_Summation_of_Primes/)                                           |                                                                                 | :white_square_button:                                                            |
| [011_Largest_Product_in_a_Grid](./src/011_Largest_Product_in_a_Grid/)                               |                                                                                 | :white_square_button:                                                            |
| [012_Highly_Divisible_Triangular_Number](./src/012_Highly_Divisible_Triangular_Number/)             |                                                                                 | :white_square_button:                                                            |
| [013_Large_Sum](./src/013_Large_Sum/)                                                               |                                                                                 | :white_square_button:                                                            |
| [014_Longest_Collatz_Sequence](./src/014_Longest_Collatz_Sequence/)                                 |                                                                                 | :white_square_button:                                                            |
| [015_Lattice_Paths](./src/015_Lattice_Paths/)                                                       |                                                                                 | :white_square_button:                                                            |
| [016_Power_Digit_Sum](./src/016_Power_Digit_Sum/)                                                   |                                                                                 | :white_square_button:                                                            |
| [017_Number_Letter_Counts](./src/017_Number_Letter_Counts/)                                         |                                                                                 | :white_square_button:                                                            |
| [018_Maximum_Path_Sum_I](./src/018_Maximum_Path_Sum_I/)                                             |                                                                                 | :white_square_button:                                                            |
| [019_Counting_Sundays](./src/019_Counting_Sundays/)                                                 |                                                                                 | :white_square_button:                                                            |
| [020_Factorial_Digit_Sum](./src/020_Factorial_Digit_Sum/)                                           |                                                                                 | :white_square_button:                                                            |
| [021_Amicable_Numbers](./src/021_Amicable_Numbers/)                                                 |                                                                                 | :white_square_button:                                                            |
| [022_Names_Scores](./src/022_Names_Scores/)                                                         |                                                                                 | :white_square_button:                                                            |
| [023_Non-Abundant_Sums](./src/023_Non_Abundant_Sums/)                                               |                                                                                 | :white_square_button:                                                            |
| [024_Lexicographic_Permutations](./src/024_Lexicographic_Permutations/)                             |                                                                                 | :white_square_button:                                                            |
| [025_1000-digit_Fibonacci_Number](./src/025_1000_Digit_Fibonacci_Number/)                           |                                                                                 | :white_square_button:                                                            |
| [026_Reciprocal_Cycles](./src/026_Reciprocal_Cycles/)                                               |                                                                                 | :white_square_button:                                                            |
| [027_Quadratic_Primes](./src/027_Quadratic_Primes/)                                                 |                                                                                 | :white_square_button:                                                            |
| [028_Number_Spiral_Diagonals](./src/028_Number_Spiral_Diagonals/)                                   |                                                                                 | :white_square_button:                                                            |
| [029_Distinct_Powers](./src/029_Distinct_Powers/)                                                   |                                                                                 | :white_square_button:                                                            |
| [030_Digit_Fifth_Powers](./src/030_Digit_Fifth_Powers/)                                             |                                                                                 | :white_square_button:                                                            |
| [031_Coin_Sums](./src/031_Coin_Sums/)                                                               |                                                                                 | :white_square_button:                                                            |
| [032_Pandigital_Products](./src/032_Pandigital_Products/)                                           |                                                                                 | :white_square_button:                                                            |
| [033_Digit_Cancelling_Fractions](./src/033_Digit_Cancelling_Fractions/)                             |                                                                                 | :white_square_button:                                                            |
| [034_Digit_Factorials](./src/034_Digit_Factorials/)                                                 |                                                                                 | :white_square_button:                                                            |
| [035_Circular_Primes](./src/035_Circular_Primes/)                                                   |                                                                                 | :white_square_button:                                                            |
| [036_Double_Base_Palindromes](./src/036_Double_Base_Palindromes/)                                   |                                                                                 | :white_square_button:                                                            |
| [037_Truncatable_Primes](./src/037_Truncatable_Primes/)                                             |                                                                                 | :white_square_button:                                                            |
| [038_Pandigital_Multiples](./src/038_Pandigital_Multiples/)                                         |                                                                                 | :white_square_button:                                                            |
| [039_Integer_Right_Triangles](./src/039_Integer_Right_Triangles/)                                   |                                                                                 | :white_square_button:                                                            |
| [040_Champernownes_Constant](./src/040_Champernownes_Constant/)                                     |                                                                                 | :white_square_button:                                                            |
| [041_Pandigital_Prime](./src/041_Pandigital_Prime/)                                                 |                                                                                 | :white_square_button:                                                            |
| [042_Coded_Triangle_Numbers](./src/042_Coded_Triangle_Numbers/)                                     |                                                                                 | :white_square_button:                                                            |
| [043_Sub_String_Divisibility](./src/043_Sub_String_Divisibility/)                                   |                                                                                 | :white_square_button:                                                            |
| [044_Pentagon_Numbers](./src/044_Pentagon_Numbers/)                                                 |                                                                                 | :white_square_button:                                                            |
| [045_Triangular_Pentagonal_and_Hexagonal](./src/045_Triangular_Pentagonal_and_Hexagonal/)           |                                                                                 | :white_square_button:                                                            |
| [046_Goldbachs_Other_Conjecture](./src/046_Goldbachs_Other_Conjecture/)                             |                                                                                 | :white_square_button:                                                            |
| [047_Distinct_Primes_Factors](./src/047_Distinct_Primes_Factors/)                                   |                                                                                 | :white_square_button:                                                            |
| [048_Self_Powers](./src/048_Self_Powers/)                                                           |                                                                                 | :white_square_button:                                                            |
| [049_Prime_Permutations](./src/049_Prime_Permutations/)                                             |                                                                                 | :white_square_button:                                                            |
| [050_Consecutive_Prime_Sum](./src/050_Consecutive_Prime_Sum/)                                       |                                                                                 | :white_square_button:                                                            |
| [051_Prime_Digit_Replacements](./src/051_Prime_Digit_Replacements/)                                 |                                                                                 | :white_square_button:                                                            |
| [052_Permuted_Multiples](./src/052_Permuted_Multiples/)                                             |                                                                                 | :white_square_button:                                                            |
| [053_Combinatoric_Selections](./src/053_Combinatoric_Selections/)                                   |                                                                                 | :white_square_button:                                                            |
| [054_Poker_Hands](./src/054_Poker_Hands/)                                                           |                                                                                 | :white_square_button:                                                            |
| [055_Lychrel_Numbers](./src/055_Lychrel_Numbers/)                                                   |                                                                                 | :white_square_button:                                                            |
| [056_Powerful_Digit_Sum](./src/056_Powerful_Digit_Sum/)                                             |                                                                                 | :white_square_button:                                                            |
| [057_Square_Root_Convergents](./src/057_Square_Root_Convergents/)                                   |                                                                                 | :white_square_button:                                                            |
| [058_Spiral_Primes](./src/058_Spiral_Primes/)                                                       |                                                                                 | :white_square_button:                                                            |
| [059_XOR_Decryption](./src/059_XOR_Decryption/)                                                     |                                                                                 | :white_square_button:                                                            |
| [060_Prime_Pair_Sets](./src/060_Prime_Pair_Sets/)                                                   |                                                                                 | :white_square_button:                                                            |
| [061_Cyclical_Figurate_Numbers](./src/061_Cyclical_Figurate_Numbers/)                               |                                                                                 | :white_square_button:                                                            |
| [062_Cubic_Permutations](./src/062_Cubic_Permutations/)                                             |                                                                                 | :white_square_button:                                                            |
| [063_Powerful_Digit_Counts](./src/063_Powerful_Digit_Counts/)                                       |                                                                                 | :white_square_button:                                                            |
| [064_Odd_Period_Square_Roots](./src/064_Odd_Period_Square_Roots/)                                   |                                                                                 | :white_square_button:                                                            |
| [065_Convergents_of_e](./src/065_Convergents_of_e/)                                                 |                                                                                 | :white_square_button:                                                            |
| [066_Diophantine_Equation](./src/066_Diophantine_Equation/)                                         |                                                                                 | :white_square_button:                                                            |
| [067_Maximum_Path_Sum_II](./src/067_Maximum_Path_Sum_II/)                                           |                                                                                 | :white_square_button:                                                            |
| [068_Magic_5-gon_Ring](./src/068_Magic_5-gon_Ring/)                                                 |                                                                                 | :white_square_button:                                                            |
| [069_Totient_Maximum](./src/069_Totient_Maximum/)                                                   |                                                                                 | :white_square_button:                                                            |
| [070_Totient_Permutation](./src/070_Totient_Permutation/)                                           |                                                                                 | :white_square_button:                                                            |
| [071_Ordered_Fractions](./src/071_Ordered_Fractions/)                                               |                                                                                 | :white_square_button:                                                            |
| [072_Counting_Fractions](./src/072_Counting_Fractions/)                                             |                                                                                 | :white_square_button:                                                            |
| [073_Counting_Fractions_in_a_Range](./src/073_Counting_Fractions_in_a_Range/)                       |                                                                                 | :white_square_button:                                                            |
| [074_Digit_Factorial_Chains](./src/074_Digit_Factorial_Chains/)                                     |                                                                                 | :white_square_button:                                                            |
| [075_Singular_Integer_Right_Triangles](./src/075_Singular_Integer_Right_Triangles/)                 |                                                                                 | :white_square_button:                                                            |
| [076_Counting_Summations](./src/076_Counting_Summations/)                                           |                                                                                 | :white_square_button:                                                            |
| [077_Prime_Summations](./src/077_Prime_Summations/)                                                 |                                                                                 | :white_square_button:                                                            |
| [078_Coin_Partitions](./src/078_Coin_Partitions/)                                                   |                                                                                 | :white_square_button:                                                            |
| [079_Passcode_Derivation](./src/079_Passcode_Derivation/)                                           |                                                                                 | :white_square_button:                                                            |
| [080_Square_Root_Digital_Expansion](./src/080_Square_Root_Digital_Expansion/)                       |                                                                                 | :white_square_button:                                                            |
| [081_Path_Sum_Two_Ways](./src/081_Path_Sum_Two_Ways/)                                               |                                                                                 | :white_square_button:                                                            |
| [082_Path_Sum_Three_Ways](./src/082_Path_Sum_Three_Ways/)                                           |                                                                                 | :white_square_button:                                                            |
| [083_Path_Sum_Four_Ways](./src/083_Path_Sum_Four_Ways/)                                             |                                                                                 | :white_square_button:                                                            |
| [084_Monopoly_Odds](./src/084_Monopoly_Odds/)                                                       |                                                                                 | :white_square_button:                                                            |
| [085_Counting_Rectangles](./src/085_Counting_Rectangles/)                                           |                                                                                 | :white_square_button:                                                            |
| [086_Cuboid_Route](./src/086_Cuboid_Route/)                                                         |                                                                                 | :white_square_button:                                                            |
| [087_Prime_Power_Triples](./src/087_Prime_Power_Triples/)                                           |                                                                                 | :white_square_button:                                                            |
| [088_Product-sum_Numbers](./src/088_Product-sum_Numbers/)                                           |                                                                                 | :white_square_button:                                                            |
| [089_Roman_Numerals](./src/089_Roman_Numerals/)                                                     |                                                                                 | :white_square_button:                                                            |
| [090_Cube_Digit_Pairs](./src/090_Cube_Digit_Pairs/)                                                 |                                                                                 | :white_square_button:                                                            |
| [091_Right_Triangles_with_Integer_Coordinates](./src/091_Right_Triangles_with_Integer_Coordinates/) |                                                                                 | :white_square_button:                                                            |
| [092_Square_Digit_Chains](./src/092_Square_Digit_Chains/)                                           |                                                                                 | :white_square_button:                                                            |
| [093_Arithmetic_Expressions](./src/093_Arithmetic_Expressions/)                                     |                                                                                 | :white_square_button:                                                            |
| [094_Almost_Equilateral_Triangles](./src/094_Almost_Equilateral_Triangles/)                         |                                                                                 | :white_square_button:                                                            |
| [095_Amicable_Chains](./src/095_Amicable_Chains/)                                                   |                                                                                 | :white_square_button:                                                            |
| [096_Su_Doku](./src/096_Su_Doku/)                                                                   |                                                                                 | :white_square_button:                                                            |
| [097_Large_Non_Mersenne_Prime](./src/097_Large_Non_Mersenne_Prime/)                                 |                                                                                 | :white_square_button:                                                            |
| [098_Anagramic_Squares](./src/098_Anagramic_Squares/)                                               |                                                                                 | :white_square_button:                                                            |
| [099_Largest_Exponential](./src/099_Largest_Exponential/)                                           |                                                                                 | :white_square_button:                                                            |
| [100_Arranged_Probability](./src/100_Arranged_Probability/)                                         |                                                                                 | :white_square_button:                                                            |

