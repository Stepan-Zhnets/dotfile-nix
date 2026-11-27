# ~/nix/nixos/packages/bundle.nix

{ pkgs, inputs, ... }: {
imports = [
  ./ai.nix
  ./cli.nix
  ./desktop_app.nix
  ./code.nix
  ./driver.nix
  ./fonts.nix
  ./games.nix
  # ./hack.nix
  ./wms.nix
];
environment.systemPackages = with pkgs; [
  #HAPP-
  # libxtst

  zapret
  # zapret2
  # v2raya
  blueman

  #=> NIX
  home-manager
  nurl

  #=> Style
  base16-schemes
  bibata-cursors
];
}
