# ~/nix/nixos/modules/cli.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Bash
    fish

    wget

    #=> Lazy
    lazycli
    lazygit
    lazydocker
    lazyssh

    #=> Fetch
    neofetch
    fastfetch
    cpufetch

    #=> Top
    htop
    btop
    neohtop
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
    lsd # ls
    bat # cat
  ];
}
