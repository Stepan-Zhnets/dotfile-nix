# ~/home-manager/modules/wms/waybar/waybar.nix

{ config, pkgs, ... }:
{
  imports = [
    ./style.nix
    ./settings.nix
    ./modules/bundle.nix
  ];

  programs.waybar = {
    enable = true;
  };
}
