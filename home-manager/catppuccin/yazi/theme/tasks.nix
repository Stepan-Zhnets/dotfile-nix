# ~/home-manager/modules/yazi/theme/tasks.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.tasks = {
    border  = { fg = colors.bg_2; };
    title   = {};
    hovered = { underline = true; };
  };
}