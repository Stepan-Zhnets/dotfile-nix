# ~/nix/nixos/modules/cli.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [

    wget

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

    #=> Terminal
    alacritty
    yazi
  ];
}