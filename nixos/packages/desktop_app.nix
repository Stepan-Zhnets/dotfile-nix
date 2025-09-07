# ~/nix/nixos/modules/desktop.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=>Browsers
    firefox
    mullvad-browser

    #=>Editors
    neovim
    vim
    vscodium
    code-cursor

    #=>Tools
    obsidian
    github-desktop

    #=>Chat
    # discord
    telegram-desktop

    #=>Media
    spotify
    vlc
    obs-studio

    #=>CLI

    #=>Code
    python3
    uv

    
  ];
}