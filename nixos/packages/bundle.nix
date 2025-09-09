# ~/nix/nixos/packages/bundle.nix

{ pkgs, inputs, ... }: {
imports = [
  ./cli.nix
  ./desktop_app.nix
  ./code.nix
  ./games.nix
];
environment.systemPackages = with pkgs; [
  zapret
];
}