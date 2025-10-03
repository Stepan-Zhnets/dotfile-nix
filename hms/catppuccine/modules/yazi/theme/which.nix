# ~/home-manager/modules/yazi/theme/which.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.which = {
    mask            = { bg = colors.bg_1; };
    cand            = { fg = colors.blue_l; };
    rest            = { fg = colors.gray_l; };
    desc            = { fg = colors.orange_l; };
    separator       = "  ";
    separator_style = { fg = colors.bg_2; };
  };
}