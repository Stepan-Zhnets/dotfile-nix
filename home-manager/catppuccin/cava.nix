# ~/home-manager/modules/cava.nix

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

        gradient_color_1 = "'${colors.text}'";
        gradient_color_2 = "'${colors.surface2}'";
        gradient_color_3 = "'${colors.surface1}'";
        gradient_color_4 = "'${colors.surface0}'";
        gradient_color_5 = "'${colors.base}'";
        gradient_color_6 = "'${colors.mantle}'";
        gradient_color_7 = "'${colors.crust}'";
      };
    };
  };
}