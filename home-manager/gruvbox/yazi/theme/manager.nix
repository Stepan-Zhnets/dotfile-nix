# ~/home-manager/modules/yazi/theme/manager.nix

{ lib, ... }:
let colors = import ./color.nix;
in
{
  programs.yazi.theme.manager = {
    cwd = { fg = colors.blue_l; };

    # Hovered
    overed          = { fg = colors.bg; bg = colors.blue_l; };
    preview_hovered = { underline = true; };

    # Find
    find_keyword  = { fg = colors.green_l; italic = true; };
    find_position = { fg = colors.orange_l; bg = "reset"; italic = true; };

    # Marker
    marker_selected = { fg = colors.green_l; bg = colors.green_l; };
    marker_copied   = { fg = colors.green_l; bg = colors.green_l; };
    marker_cut      = { fg = colors.red_l; bg = colors.red_l; };

    # Tab
    tab_active   = { fg = colors.bg; bg = colors.bg_2; };
    tab_inactive = { fg = colors.fg_4; bg = colors.bg_1; };
    tab_width    = 1;

    # Border
    border_symbol = "│";
    border_style  = { fg = colors.bg_3; };
  };
}
