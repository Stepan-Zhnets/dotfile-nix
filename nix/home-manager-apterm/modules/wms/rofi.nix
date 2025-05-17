# ~/nix/home-managwe-apterm/modules/wms/rofi.nix

{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = ./themes/apterm.rasi;
    # theme = ./themes/catppuccin-mocha.rasi;
    terminal = "${pkgs.alacritty}/bin/alacritty";

    extraConfig = {
      modi = "drun";
      show-icons = false;
      # drun-display-format = "{icon} {name}";
      drun-display-format = "{name}"; 
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      sidebar-mode = true;
    };
  };

  home.packages = [ pkgs.bemoji ];
}
