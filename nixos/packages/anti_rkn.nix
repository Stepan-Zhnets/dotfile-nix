# ~/nixos/packages/anti_rkn.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    wget
  ];
}