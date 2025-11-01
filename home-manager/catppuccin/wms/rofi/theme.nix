# ~/home-manager/catppuccin/wms/rofi/theme.nix

{ config, ... }:
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
  programs.rofi.theme = let
    inherit (config.lib.formats.rasi) mkLiteral;
  in {
    "*" = {
      background-color = mkLiteral window_bgc;
      foreground-color = mkLiteral window_fgc;
      # bg-l = mkLiteral "#3c3836";
    };
    "window" = {
      height = "360px";
      border = 3;
      border-radius = mkLiteral border_radius;
      y-offset = -5;
      border-color = mkLiteral window_bc;
      margin = "30px";
    };
    "mainbox" = {#=> Основная панель
      background-color = mkLiteral mainbox_bgc;
      #
    };
    "inputbar" = {#=> Область ввода
      children = ["prompt" "entry"];
      padding = "2px";
      border-radius = mkLiteral border_radius;
      background-color = mkLiteral inputbar_bgc;
    };
    "prompt" = {#=> APPS
      background-color = mkLiteral prompt_bgc;
      padding = "6px";
      text-color = mkLiteral prompt_fgc;
      border-radius = mkLiteral border_radius;
      margin = "20px 0px 0px 20px";
    };
    "text-box-prompt-colon" = {#=>
      expand = false;
      str = ":";
    };
    "entry" = {#=>
      border-radius = mkLiteral border_radius;
      padding = "6px";
      margin = "10px 0px 0px 20px";
      columns = 2;
      lines = 5;
      background-color = entry_bgc;
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
      text-color = mkLiteral textbox_fgc;
      background-color = mkLiteral textbox_bgc;
      #
    };
  };
}
