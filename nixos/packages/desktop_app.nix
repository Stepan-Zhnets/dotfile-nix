# ~/nix/nixos/modules/desktop.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Browsers
    firefox
    librewolf
    mullvad-browser
    chromium

    #=> Editors
    vscodium
    code-cursor
    zed-editor
    # android-studio

    #=> Tools
    libreoffice
    obsidian
    github-desktop

    #=> Chat
    discord
    telegram-desktop
    simplex-chat-desktop
    thunderbird

    #=> Media
    # spotify
    vlc
    obs-studio
    easyeffects
    youtube-music
    davinci-resolve
    # shotcut
    # olive-editor
    swappy
    gimp
    ferrishot
    grim
    grimblast

    #=> Audio
    myxer
    mixxc
    pulsemeeter

    #=> Wifi
    iwgtk

    #=> AI
    lmstudio

    #=> WinApps
    freerdp
    dialog
    libnotify

    #=> Training_programs
    logisim
    logisim-evolution

    #=> VPN
    protonvpn-gui
    protonvpn-cli_2

    #=> All
    authenticator

    # pulseaudioFull
    # soundtouch
    # alsa-oss
  ];
}
