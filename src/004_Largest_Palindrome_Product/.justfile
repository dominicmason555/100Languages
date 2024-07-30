default: build_and_run

build:
    gcc -lm -ldl -DWITH_MAIN -export-dynamic s7.c -I. -o s7

run:
    ./s7 ./problem_4.s7

clean:
    rm ./s7

build_and_run: build run

