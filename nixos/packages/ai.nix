#
# ~/nix/nixos/modules/ai.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    opencode
    # opencode-desktop

    claude-code

    grok-cli
  ];
}