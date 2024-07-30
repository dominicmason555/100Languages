compiler := if arch() == "riscv64" { "gcc" } else { "riscv64-unknown-linux-gnu-gcc" }
run_command := if arch() == "riscv64" { "./problem_6" } else { "qemu-riscv64 ./problem_6" }

default: build_and_run

build:
    {{compiler}} problem_6.s -ggdb -o problem_6

run:
    {{run_command}}

qdebug:
    qemu-riscv64 -g 1234 ./problem_6 & riscv64-unknown-linux-gnu-gdb --tui -x init.gdb

clean:
    rm ./problem_6

build_and_run: build run

