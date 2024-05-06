{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    name = "problem_1";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lazygit
        lua54Packages.lua
        lua54Packages.fennel
    ];
    shellHook = ''
        echo "Project Euler: Problem 1"
    '';
}
