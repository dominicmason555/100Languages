compiler := if arch() == "aarch64" { "gcc" } else { "aarch64-unknown-linux-gnu-gcc" }
run_command := if arch() == "aarch64" { "./problem_2" } else { "qemu-aarch64 ./problem_2" }

default: build_and_run

build:
    {{compiler}} problem_2.s -o problem_2

run:
    {{run_command}}

build_and_run: build run

