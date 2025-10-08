# ~/home-manager/modules/wms/waybar/style.nix

{ config, lib, ... }:
let 
  # Используем тему gruvbox_dark по умолчанию
  colors = {
    bg_0 = "#1d2021";
    bg_1 = "#3c3836";
    bg_2 = "#504945";
    bg_3 = "#665c54";
    fg_1 = "#fbf1c7";
    fg_3 = "#bdae93";
    gray_n = "#928374";
    red_b = "#fb4934";
    green_b = "#b8bb26";
    orange_b = "#fe8019";
  };
  
  # Цветовые переменные для лучшей организации
  bg-primary = colors.bg_0;
  bg-secondary = colors.bg_2;
  bg-tertiary = colors.bg_3;
  fg-primary = colors.fg_1;
  fg-secondary = colors.fg_3;
  gray-neutral = colors.gray_n;
  red-bright = colors.red_b;
  green-bright = colors.green_b;
  orange-bright = colors.orange_b;
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
      background-color: ${bg-primary};
      color: ${fg-primary};
      border-bottom: 1px solid ${fg-secondary};
    }

    .modules {
      margin: 0 5px;
    }

    .module {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 8px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    .module:hover {
      background-color: ${bg-tertiary};
    }

    #clock {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #battery {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #cpu {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #memory {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #pulseaudio {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #backlight {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }

    #tray {
      background-color: ${bg-secondary};
      color: ${fg-primary};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: 4px;
    }
  '';
}

