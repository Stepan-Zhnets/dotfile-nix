# ~/home-manager/catppuccin/wms/rofi/theme.nix

{ config, ... }:
let
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;

  #|==============================|

  border_radius      = "15px";

  window_bgc = colors.surface0;
  window_fgc = colors.overlay0;
  window_bc  = colors.red;

in {
  programs.rofi.theme = let
    inherit (config.lib.formats.rasi) mkLiteral;
  in {
    "*" = {
      background-color = mkLiteral window_bgc;
      foreground-color = mkLiteral window_fgc;
      # bg-l = mkLiteral "#3c3836";
    };
    "window" = {
      border = 5;
      border-radius = mkLiteral border_radius;
      y-offset = -5;
      border-color = mkLiteral window_bc;
      margin = "30px";
    };
    "mainbox" = {#=>
      #
    };
    "inputbar" = {#=>
      children = ["prompt" "entry"];
      padding = "2px";
    };
    "prompt" = {#=>
      #
    };
    "text-box-prompt-colon" = {#=>
      expand = false;
      str = ":";
    };
    "entry" = {#=>
      #
    };
    "listview" = {#=> Область выбора
      #
    };
    "element" = {#=> Элементы выбора
      #
    };
    "element-ison" = {#=> Иконки элиментов
      size = "25px";
    };
    "element selected" = {#=> Выбранный элимент
      #
    };
    "mode-switcher" = {#=>
      #
    };
    "button" = {#=> Кнопка
      #
    };
    "button selected" = {#=> Выбранная кнопка
      #
    };
    "message" = {#=>
      #
    };
    "textbox" = {#=>
      #
    };
  };
}
