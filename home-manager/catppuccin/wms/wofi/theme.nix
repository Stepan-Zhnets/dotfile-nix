# ~/home-manager/catppuccin/wms/wofi/theme.nix

let
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;

  #|==============================|

  border_radius      = "15px";

  window_bgc = colors.surface0;
  window_fgc = colors.overlay0;
  window_bc  = colors.green;

  mainbox_bgc = colors.sky;

  inputbar_bgc = colors.yellow;

  prompt_bgc = colors.surface0;
  prompt_fgc = colors.mauve;

  entry_bgc = colors.blue;
  entry_columns = "2";
  entry_lines = "5";

  textbox_fgc = colors.yellow;
  textbox_bgc = colors.surface2;

in {
  programs.wofi.style = ''

'';
}
