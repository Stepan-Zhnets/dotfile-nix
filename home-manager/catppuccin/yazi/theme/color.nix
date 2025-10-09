# ~/home-manager/modules/yazi/theme/color.nix

# { config, ... }:
let 
  # Import the color theme
  colorTheme = import ./../../color_theme.nix;
  # Use gruvbox_dark theme by default
  colors = colorTheme.catppuccin_mocha;
in
{
  # Use centralized theme colors
  orange_l = colors.peach;
  blue_l   = colors.blue;
  gray_l   = colors.text;
  bg_2     = colors.surface2;
  bg_1     = colors.surface1;
  fg_4     = colors.overlay2;
  green_l  = colors.green;
  red_l    = colors.red;
  bg_3     = colors.surface2;
  bg       = colors.surface0;
  fg       = colors.overlay0;
  fg_3     = colors.overlay1;
}