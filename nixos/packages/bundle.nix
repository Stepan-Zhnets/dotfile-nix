# ~/nix/nixos/packages/bundle.nix

{ pkgs, inputs, ... }: {
imports = [
  ./cli.nix
  ./desktop_app.nix
  ./code.nix
  ./driver.nix
  ./fonts.nix
  ./games.nix
  ./wms.nix
];
environment.systemPackages = with pkgs; [
  zapret
  blueman

  #=> NIX
  home-manager

  #=> Color-schemes
  base16-schemes
];
}
