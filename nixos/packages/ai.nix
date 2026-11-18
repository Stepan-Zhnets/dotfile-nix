#
# ~/nix/nixos/modules/cli.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    opencode
    opencode-desktop

    claude-code
  ];
}