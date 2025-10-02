# ~/home-manager/modules/yazi/theme/select.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.select = {
    border   = { fg = colors.bg_2; };
    active   = { fg = colors.orange_l; };
    inactive = {};
  };
}