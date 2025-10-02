# ~/home-manager/modules/yazi/theme/fyletype.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.filetype = {
    rules = [
      # Images
      { fg = colors.blue_l; mime = "image/*"; }

      # Video
      { fg = colors.green_l; mime = "video/*"; }
      { fg = colors.green_l; mime = "audio/*"; }

      # {fg = "#"; mime = "application/";}

      # Fallback
      { fg = colors.fg_4; name = "*"; }
      { fg = colors.blue_l; name = "*/"; }
    ];
  };
}