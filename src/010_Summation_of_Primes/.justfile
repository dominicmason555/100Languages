default: build_and_run

build:
  gfortran problem_10.f90 -o problem_10 -fopenmp -Wall -Wextra -std=f2018

run $OMP_NUM_THREADS="8":
    ./problem_10

build_and_run: build run

clean:
  rm ./problem_10
