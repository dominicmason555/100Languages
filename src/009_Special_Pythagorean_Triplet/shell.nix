let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_9";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        sqlite
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 9: Special Pythagorean Triplet - https://projecteuler.net/problem=9"
        echo ""
    '';
}
