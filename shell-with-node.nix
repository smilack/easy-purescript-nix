{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  # this adds all the build inputs of your project package
  inputsFrom = [ (import ~/easy-purescript-nix/default.nix { inherit pkgs; }) ];
  # now add your other dependencies
  buildInputs = with pkgs; [ nodejs nodePackages.npm ];
}
