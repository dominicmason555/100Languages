{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    name = "problem_1";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
    ];
    shellHook = ''
        echo "Project Euler: Problem 1"
    '';
}
