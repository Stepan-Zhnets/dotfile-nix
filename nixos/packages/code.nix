# ~/nixos/packages/code.nix


{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Python
    python3
    uv

    #=> JS
    nodejs_22

    #=> DevOps
    docker
  ];
}
