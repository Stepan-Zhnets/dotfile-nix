# ~/hone-manager/modules/alacritty.nix
{ pkgs, ... }:{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        padding = {
          x = 10;
          y = 10;
        };
        decorations = "none";
        # opacity = 0.7
      };
      scrolling.history = 1000;
      font = {
        size = 16;
      };
    };
  };
}