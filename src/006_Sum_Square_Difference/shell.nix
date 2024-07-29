let
  pkgs = import <nixpkgs> {};
  cross = import <nixpkgs> {
    crossSystem = { config = "riscv64-unknown-linux-gnu"; };
  };
in
pkgs.mkShell {
    name = "problem_6";
    buildInputs = [
        cross.buildPackages.gcc
        cross.buildPackages.gdb
    ];
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        qemu
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 6: Sum Square Difference - https://projecteuler.net/problem=6"
        echo ""
    '';
}
