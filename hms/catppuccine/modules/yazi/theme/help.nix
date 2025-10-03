# ~/home-manager/modules/yazi/theme/help.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.help = {
    on      = { fg = colors.orange_l; };
    exec    = { fg = colors.blue_l; };
    desc    = { fg = colors.gray_l; };
    hovered = { bg = colors.bg_2; bold = true; };
    footer  = { fg = colors.bg_1; bg = colors.fg_4; };
  };
}