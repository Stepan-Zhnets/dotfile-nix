{ ... }:
let
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;

  #|==============================|
  border_bc = colors.green;
  border_radius      = "15px";

  window_bgc = colors.surface0;
  window_fgc = colors.overlay0;
  window_bc  = colors.green;

  mainbox_bgc = colors.sky;

  inputbar_bgc = colors.yellow;

  prompt_bgc = colors.surface0;
  prompt_fgc = colors.mauve;

  entry_bgc = colors.surface0;
  entry_fgc = colors.blue;

  listview_bgc = colors.surface2;

  element_bgc = colors.surface0;
  element_fgc = colors.yellow;
  element_s_bgc = colors.surface2;
  element_s_fgc = colors.yellow;

  button_bgc = colors.surface0;
  button_fgc = colors.lavender;
  button_s_bgc = colors.surface2;
  button_s_fgc = colors.lavender;

  message_bgc = colors.surface0;

  textbox_fgc = colors.yellow;
  textbox_bgc = colors.surface2;
in let
  myrofitheme = ''
    * {
        background-color: ${window_bgc};
    }

    window {
        height: 360px;
        border: 3px;
        border-radius: 15px;
        border-color: ${border_bc};
        background-color: ${window_bgc};
    }

    mainbox {
        background-color: ${mainbox_bgc};
    }

    inputbar {
        children: [prompt,entry];
        background-color: ${inputbar_bgc};
        border-radius: 5px;
        padding: 2px;
    }

    prompt { //=> APPS
        background-color: ${prompt_bgc};
        padding: 6px;
        text-color: ${prompt_fgc};
        border-radius: 3px;
        margin: 20px 0px 0px 20px;
    }

    textbox-prompt-colon {
        expand: false;
        str: ":";
    }

    entry {
        border-radius: 15px;
        padding: 6px;
        margin: 20px 0px 0px 10px;
        text-color: ${entry_fgc};
        background-color: ${entry_fgc};
    }

    listview { //=> область выбора
        border-radius: 20px;
        border: 0px 0px 0px;
        padding: 6px 0px 0px;
        margin: 10px 0px 0px 20px;
        columns: 2;
        lines: 5;
        background-color: ${listview_bgc};
    }

    element { // Элементы выбора
        border-radius: 20px;
        padding: 5px;
        background-color: ${element_bgc};
        text-color: ${element_fgc};
    }

    element-icon { // Иконки элиментов
        border-radius: 10px;
        size: 25px;
    }

    element selected { // Выбранный элимент
        border-radius: 20px;
        background-color:  ${element_s_bgc};
        text-color: ${element_s_fgc};
    }

    mode-switcher {
        spacing: 0;
      }

    button { // Нижние кнопки
        padding: 10px;
        background-color: ${button_bgc};
        text-color: ${button_fgc};
        vertical-align: 0.5;
        horizontal-align: 0.5;
    }

    button selected { // Выбранная нижняя кнопка
      background-color: ${button_s_bgc};
      text-color: ${button_s_fgc};
    }

    message { //
        background-color: ${message_bgc};
        margin: 2px;
        padding: 2px;
        border-radius: 5px;
    }

    textbox { //
        border-radius: 20px;
        padding: 6px;
        margin: 20px 0px 0px 20px;
        text-color: ${textbox_fgc};
        background-color: ${textbox_bgc};
    }

  '';
in{
  programs.rofi.theme = myrofitheme;
}
