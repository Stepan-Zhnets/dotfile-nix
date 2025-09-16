# ~/home-manager/modules/yazi/theme/status.nix

{
  programs.yazi.theme.status = {
    separator_open  = "";
    separator_close = "";
    separator_style = { fg = "#3c3836"; bg = "#3c3836"; };


    # Progress
    progress_label  = { fg = "#ebdbb2"; bold = true; };
    progress_normal = { fg = "#504945"; bg = "#3c3836"; };
    progress_error  = { fg = "#fb4934"; bg = "#3c3836"; };

    # Permissions
    permissions_t = { fg = "#504945"; };
    permissions_r = { fg = "#b8bb26"; };
    permissions_w = { fg = "#fb4934"; };
    permissions_x = { fg = "#b8bb26"; };
    permissions_s = { fg = "#665c54"; };
  };
}