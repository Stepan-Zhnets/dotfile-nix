# ~/home-manager/catppuccin/cava.nix

{ config, ... }:
let 
  # Import the color theme
  colorTheme = import ./color_theme.nix;
  # Use gruvbox_dark theme by default
  colors = colorTheme.catppuccin_mocha;
in
{
  programs.cava = {
    enable = true;
    # package = [];
    settings = {
      color = {
        # Use centralized theme colors
        gradient = 1;

        gradient_color_1 = "'${colors.teal}'";
        gradient_color_2 = "'${colors.sky}'";
        gradient_color_3 = "'${colors.sapphire}'";
        gradient_color_4 = "'${colors.blue}'";
        gradient_color_5 = "'${colors.mauve}'";
        gradient_color_6 = "'${colors.pink}'";
        gradient_color_7 = "'${colors.maroon}'";
        gradient_color_8 = "'${colors.red}'";
      };
    };
  };
}