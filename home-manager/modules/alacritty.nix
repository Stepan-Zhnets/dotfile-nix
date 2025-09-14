# ~/hone-manager/modules/alacritty.nix

{ pkgs, ... }:{
  programs.alacritty = {
    enable = true;
    theme = "gruvbox_dark"; # gruvbox_light | gruvbox_dark _|_ gotham _|_ dracula _|_ catppuccin_mocha _|_
    # package = [];
    settings = {
      shell = {
        program = "fish";
        # program = "${pkgs.fish}/bin/fish";
      };
      window = {
        padding = {
          x = 10;
          y = 10;
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