let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_12";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        hare
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 12: Highly Divisible Triangular Number - https://projecteuler.net/problem=12"
        echo ""
    '';
}
