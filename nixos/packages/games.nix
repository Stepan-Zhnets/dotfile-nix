# ~/nix/packages/games.nix

{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    #=> Minecraft
    lunar-client
    prismlauncher

    #=> Steam
    adwsteamgtk
    
    lutris
  ];
}