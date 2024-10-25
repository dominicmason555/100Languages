let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_10";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
	neovim
        lazygit
        gfortran
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 10: Summation of Primes - https://projecteuler.net/problem=10"
        echo ""
    '';
}
