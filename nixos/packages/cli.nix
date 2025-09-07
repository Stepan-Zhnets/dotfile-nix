# ~/nix/nixos/modules/cli.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Fetch
    neofetch
    fastfetch

    #=> Top
    htop
    btop
    nvtopPackages.v3d
    
    #=> 
    cava

    git
  ];
}