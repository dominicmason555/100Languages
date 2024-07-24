let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
    name = "problem_5";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        ghdl-llvm
    ];
    shellHook = ''
        echo ""
        echo "Project Euler - 100 Problems 100 Languages"
        echo "Problem 5: Smallest Multiple - https://projecteuler.net/problem=5"
        echo ""
    '';
}
