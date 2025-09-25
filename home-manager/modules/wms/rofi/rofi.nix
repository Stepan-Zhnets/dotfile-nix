# ~/home-manager/modules/wms/rofi/rofi.nix

{ config, pkgs, ... }: {
  imports = [
    ./theme.nix
  ];
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "DejaVu Sans Mono 10";
    location = "bottom"; # center, right, left, top, bottom
    # modules = [];

    terminal = "${pkgs.alacritty}/bin/alacritty";

    extraConfig = {
      modi = "combi,drun,window";
      combi-modi = "combi,drun,window";
      terminal = "alacritty";
      show-icons = true;
      drun-display-format = "{icon} {name}";
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "Apps";
    };
      # sidebar-mode = true;
  };
}
