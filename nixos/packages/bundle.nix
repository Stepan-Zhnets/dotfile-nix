# ~/nix/nixos/packages/bundle.nix

{ pkgs, inputs, ... }: {
imports = [
  ./desktop_app.nix
];
}