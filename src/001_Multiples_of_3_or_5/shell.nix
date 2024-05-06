{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    name = "problem_1";
    nativeBuildInputs = with pkgs.buildPackages; [
        just
        lua54Packages.lua
        lua54Packages.fennel
    ];
}
