# ~/home-manager/modules/wms/waybar/style.nix

{ config, lib, ... }:
let 
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;
  
  # Цветовые переменные для лучшей организации
  window_bgc = colors.surface0;
  bg-secondary = colors.surface1;
  bg-tertiary = colors.surface2;
  window_fgc = colors.overlay0;
  fg-secondary = colors.subtext1;
  gray-neutral = colors.text;
  red-bright = colors.red;
  green-bright = colors.green;
  orange-bright = colors.peach;
in
{
  programs.waybar.style = ''
    * {
      border: none;
      border-radius: 0px;
      font-family: "JetBrainsMono Nerd Font";
      font-size: 12px;
    }

    window#waybar {
      background-color: ${window_bgc};
      color: ${window_fgc};
    }

    .modules {
      margin: 0 5px;
    }

    .module {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 8px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    .module:hover {
      background-color: ${bg-tertiary};
    }

    #clock {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #battery {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #cpu {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #memory {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #pulseaudio {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #backlight {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #tray {
      background-color: ${bg-secondary};
      color: ${window_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }
  '';
}

