# ~/nix/nixos/modules/desktop.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=>Browsers
    firefox
    librewolf
    mullvad-browser
    chromium

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
    simplex-chat-desktop
    thunderbird

    #=>Media
    spotify
    vlc
    obs-studio
    easyeffects
    youtube-music
    davinci-resolve
    #davinci-resolve-studio

    #=> All
  ];
}
