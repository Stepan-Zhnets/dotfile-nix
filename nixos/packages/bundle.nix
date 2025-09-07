# ~/nix/nixos/packages/bundle.nix

{ pkgs, inputs, ... }: {
imports = [
  ./cli.nix
  ./desktop_app.nix
];
}