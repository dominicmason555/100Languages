let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_8";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        erlang
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 8: Largest Product in a Series - https://projecteuler.net/problem=8"
        echo ""
    '';
}
