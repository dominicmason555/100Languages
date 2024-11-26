default: build_and_run

build:
  nix run github:roc-lang/roc -- build problem_11.roc

run:
    ./problem_11

build_and_run: build run

clean:
  rm ./problem_11
