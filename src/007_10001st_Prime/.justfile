default: build_and_run

build:
    syclcc problem_7.cpp -O3 -o problem_7

run:
    ./problem_7

clean:
    rm ./problem_7

build_and_run: build run

