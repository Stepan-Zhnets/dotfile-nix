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
    * {
      font: "Roboto Mono 13";
      background-color: #282C33;
      border-color: #2e343f;
      text-color: #8ca0aa;
      spacing: 0;
      width: 500px;
      height: 800px;
    }

    inputbar {
      border: 0 0 1px 0;
      children: [prompt,entry];
    }

    prompt {
      padding: 16px;
      border: 0 1px 0 0;
    }

    textbox {
      background-color: #2e343f;
      border: 0 0 1px 0;
      border-color: #282C33;
      padding: 8px 16px;
    }

    entry {
      padding: 16px;
    }

    listview {
      cycle: false;
      margin: 0 0 -1px 0;
      scrollbar: false;
    }

    element {
      border: 0 0 1px 0;
      padding: 32px;
        orientation: horizontal;
      margin-left: 50px;
    }

    element selected {
      background-color: #2e343f;
      color: black;
    }

    element-icon {
        size:             48;
        cursor: inherit;
    }

    element-text selected {
        vertical-align: 0.5;
        background-color: #2e343f;
    }
'';
}
