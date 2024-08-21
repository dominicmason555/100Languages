let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_7";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        opensycl
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 7: 10001st Prime - https://projecteuler.net/problem=7"
        echo ""
    '';
}
