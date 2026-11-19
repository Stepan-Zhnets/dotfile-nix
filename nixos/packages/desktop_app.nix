# ~/nix/nixos/modules/desktop.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Browsers
    firefox
    librewolf
    # mullvad-browser
    chromium
    # ungoogled-chromium

    #=> Editors
    vscodium
    # code-cursor
    zed-editor
    # android-studio

    #=> Tools
    github-desktop

    #=> Office
    libreoffice
    onlyoffice-desktopeditors
    # cryptpad
    obsidian

    #=> Chat
    discord
    telegram-desktop
    ayugram-desktop
    simplex-chat-desktop
    session-desktop

    #=> Mail
    # protonmail-desktop
    # tutanota-desktop
    # thunderbird

    #=> Media
    # spotify
    vlc
    obs-studio
    easyeffects
    youtube-music
    # davinci-resolve
    # shotcut
    # olive-editor
    kdePackages.kdenlive

    #=>ART
    # pixelorama
    # asepritee
    # libresprite
    gimp

    #=> Screan
    # inkscape
    # swappy
    # ferrishot
    grim
    grimblast

    #=>3D
    # material-maker
    # blender

    #=> Audio
    myxer
    mixxc
    pulsemeeter

    #=> Wifi
    # iwgtk

    #=> AI
    lmstudio

    #=> WinApps
    freerdp
    # dialog
    # libnotify

    #=> Training_programs
    # logisim
    # logisim-evolution

    #=> VPN
    # protonvpn-gui
    # protonvpn-cli_2

    #=> All
    # authenticator
    rustdesk

    # pulseaudioFull
    # soundtouch
    # alsa-oss

    #=> Parser
    # insomnia
  ];
}
