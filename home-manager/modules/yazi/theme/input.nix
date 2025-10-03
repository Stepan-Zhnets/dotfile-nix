# ~/home-manager/modules/yazi/theme/inputs.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.input = {
    border   = { fg = colors.fg_3; };
    title    = {};
    value    = {};
    selected = { reversed = true; };
  };
}