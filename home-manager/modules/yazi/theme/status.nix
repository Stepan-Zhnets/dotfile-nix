# ~/home-manager/modules/yazi/theme/status.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.status = {
    separator_open  = "";
    separator_close = "";
    separator_style = { fg = colors.bg_1; bg = colors.bg_1; };


    # Progress
    progress_label  = { fg = colors.fg; bold = true; };
    progress_normal = { fg = colors.bg_2; bg = colors.bg_1; };
    progress_error  = { fg = colors.red_l; bg = colors.bg_1; };

    # Permissions
    permissions_t = { fg = colors.bg_2; };
    permissions_r = { fg = colors.green_l; };
    permissions_w = { fg = colors.red_l; };
    permissions_x = { fg = colors.green_l; };
    permissions_s = { fg = colors.bg_3; };
  };
}