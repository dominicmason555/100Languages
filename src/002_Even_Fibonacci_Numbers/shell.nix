let
  pkgs = import <nixpkgs> {};
  cross = import <nixpkgs> {
    crossSystem = { config = "aarch64-unknown-linux-gnu"; };
  };
in
pkgs.mkShell {
    name = "problem_2";
    buildInputs = [
        cross.buildPackages.gcc
        # cross.buildPackages.glibc.static - Incompatible?
    ];
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        qemu
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 2: Even Fibonacci Numbers - https://projecteuler.net/problem=2"
        echo ""
    '';
}
