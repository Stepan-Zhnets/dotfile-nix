# ~/hone-manager/modules/alacritty.nix

{ pkgs, ... }:{
  programs.alacritty = {
    enable = true;
    theme = "catppuccin_mocha"; # gruvbox_light | gruvbox_dark _|_ gotham _|_ dracula _|_ catppuccin_mocha _|_
    # package = [];
    settings = {
      window = {
        padding = {
          x = 5;
          y = 5;
        };
        # decorations = "none";
        opacity = 0.9;
      };
      scrolling.history = 1000;
      font = {
        size = 12;
      };
    };
  };
}
