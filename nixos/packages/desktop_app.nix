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
    vscodium
    code-cursor
    zed-editor
    # android-studio

    #=>Tools
    libreoffice
    obsidian
    github-desktop

    #=>Chat
    discord
    telegram-desktop
    simplex-chat-desktop
    thunderbird

    #=>Media
    # spotify
    vlc
    obs-studio
    easyeffects
    youtube-music
    davinci-resolve
    # shotcut
    # olive-editor

    #=> AI
    lmstudio

    #=> WinApps
    freerdp

    #=> {_Training_programs_}
    logisim

    #=> All
    authenticator
  ];
}
