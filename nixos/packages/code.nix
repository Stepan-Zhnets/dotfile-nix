# ~/nixos/packages/code.nix


{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Python
    python3
    uv

    #=> N8N
    n8n

    #=> JS
    nodejs_22

    #=> Devops
    docker
  ];
}