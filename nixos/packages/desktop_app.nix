# ~/nix/nixos/modules/desktop.nix

{ config, pkgs, ...}:
{
  #=>Editors
  environment.systemPackages = with pkgs; [
    #=>Browsers
    firefox

    #=>Editors
    neovim
    vim
    vscodium
    code-cursor

    #=>Tools
    obsidian
    github-desktop

    #=>Chat
    discord
    telegram-desktop

    #=>Media
    spotify
    vlc
    obs

    #=>CLI
    neofetch
    fastfetch
    htop
    nvtop
    cava

    #=>Code
    python3
    uv

    
  ];
}