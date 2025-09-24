# ~/nix/nixos/modules/cli.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Bash
    fish

    wget

    #=> Fetch
    neofetch
    fastfetch

    #=> Top
    htop
    btop
    nvtopPackages.v3d
    duf # disk
    
    #=> 
    cava
    git

    #=> Terminal
    alacritty
    yazi

    #=> ALL
    jq # Легкий и гибкий JSON-процессор командной строки
    fd # Простая, быстрая и удобная альтернатива для поиска
  ];
}