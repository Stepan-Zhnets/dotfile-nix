# ~/home-manager/modules/wms/rofi/theme.nix

{
  programs.rofi.theme = let
    inherit (config.lib.formats.rasi) mkLiteral;
  in {
    "*" = {
      #
    };
    "window" = {
      #
    };
  };
}
