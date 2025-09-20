# ~/nix/packages/games.nix

{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    #=> Engine
    godot

    #=> Minecraft
    lunar-client
    prismlauncher

    #=> Steam
    adwsteamgtk
    
    lutris
  ];
}