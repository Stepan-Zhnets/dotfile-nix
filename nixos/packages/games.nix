# ~/nix/packages/games.nix

{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    #=> Minecraft
    minecraft
    prismlauncher
  ];
}