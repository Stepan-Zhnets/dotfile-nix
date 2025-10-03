# ~/home-manager/modules/wms/rofi/theme.nix

{ config, ... }:{
  programs.rofi.theme = let
    colorTheme = import ./../../color_theme.nix;
    colors = colorTheme.gruvbox_dark;

    inherit (config.lib.formats.rasi) mkLiteral;
  in {
    "*" = {
      background-color = mkLiteral "#282828";
      foreground-color = mkLiteral "#ebdbb2";
      bg-l = mkLiteral "#3c3836";
    };
    "window" = {
      border = 5;
      y-offset = -5;
      border-color = mkLiteral "#ebdbb2";
    };
  };
}
