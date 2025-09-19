# ~/home-manager/modules/cava.nix

{ config, ... }:
let 
  # Import the color theme
  colorTheme = import ./../../color_theme.nix;
  # Use gruvbox_dark theme by default
  colors = colorTheme.gruvbox_dark;
in
{
  programs.cava = {
    enable = true;
    # package = [];
    settings = {
      color = {
        # Use centralized theme colors
        gradient = 1;

        gradient_color_1 = "'${colors.gray_n}'";
        gradient_color_2 = "'${colors.bg_4}'";
        gradient_color_3 = "'${colors.bg_3}'";
        gradient_color_4 = "'${colors.bg_2}'";
        gradient_color_5 = "'${colors.bg_1}'";
        gradient_color_6 = "'${colors.bg_0}'";
        gradient_color_7 = "'${colors.bg_0_h}'";
      };
    };
  };
}