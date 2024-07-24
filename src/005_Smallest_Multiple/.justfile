@default: all

analyse:
    ghdl -a problem_5.vhdl problem_5_tb.vhdl

build:
    ghdl -e problem_5_tb

run:
    ./problem_5_tb

all: analyse build run

clean:
    rm *.o
    rm problem_5_tb
    rm *.cf
