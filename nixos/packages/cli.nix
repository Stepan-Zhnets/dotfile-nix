# ~/nix/nixos/modules/cli.nix

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Bash
    fish

    #=> Editor
    vim
    neovim

    #=> Lazy
    lazycli
    lazygit
    lazydocker
    lazyssh

    #=> Fetch
    neofetch
    fastfetch
    cpufetch
    nerdfetch

    #=> Top
    htop
    btop
    neohtop
    nvtopPackages.full
    duf # disk

    #=> Terminal
    alacritty
    yazi

    #=> ALL
    jq # Легкий и гибкий JSON-процессор командной строки
    fd # Простая, быстрая и удобная альтернатива для поиска
    lsd # ls
    bat # cat
    wget
    cava
    git
  ];
}
