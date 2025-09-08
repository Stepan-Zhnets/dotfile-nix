# ~/nix/packages/games.nix

{ lib, config, ... }:
{
  environment.systemPackages = with pkgs; [
    #=> Minecraft
    prismlauncher
  ]
}