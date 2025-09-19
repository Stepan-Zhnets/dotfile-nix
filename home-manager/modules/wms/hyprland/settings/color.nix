# ~/home-manager/modules/wms/hyprland/settings/color.nix

{ config, ... }:
let 
  # Import the color theme
  colorTheme = import ./../../color_theme.nix;
  # Use gruvbox_dark theme by default
  colors = colorTheme.gruvbox_dark;
in
{
  # Use centralized theme colors
  orange_l = colors.orange_b;
  blue_l   = colors.blue_b;
  gray_l   = colors.gray_n;
  bg_2     = colors.bg_2;
  bg_1     = colors.bg_1;
  fg_4     = colors.fg_4;
  green_l  = colors.green_b;
  red_l    = colors.red_b;
  bg_3     = colors.bg_3;
  bg       = colors.bg_0;
  fg       = colors.fg_1;
  fg_3     = colors.fg_3;
}