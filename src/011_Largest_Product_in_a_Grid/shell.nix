let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_10";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 11: Largest Product in a Grid - https://projecteuler.net/problem=11"
        echo ""
    '';
}
