# ~/home-manager/modules/wms/waybar/style.nix

{ config, lib, ... }:
let 
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;
  
  # Цветовые переменные для лучшей организации
  bg-secondary = colors.surface1;
  bg-tertiary = colors.surface2;
  fg-secondary = colors.subtext1;
  gray-neutral = colors.text;
  red-bright = colors.red;
  green-bright = colors.green;
  orange-bright = colors.peach;
  #|==============================|
  # window_br      = "25px 25px 50px 50px";
  # border_radius  = "25px 25px 50px 50px";
  border_radius  = "50px";

  window_bgc     = "rgba(202, 51, 51, 0)";
  window_fgc     = "rgba(202, 51, 51, 0)";
  # window_bgc     = colors.surface0;
  # window_fgc     = colors.overlay0;
  window_bc      = colors.mauve;

  module_bgc     = colors.surface1;
  module_fgc     = colors.peach;
  mod_hover_bgc  = colors.surface0;

  clock_bgc      = colors.surface1;
  clock_fgc      = colors.rosewater;
  
  pulseaudio_bgc = colors.surface1;
  pulseaudio_fgc = colors.sapphire;

  memory_bgc     = colors.surface1;
  memory_fgc     = colors.red;
  
  cpu_bgc        = colors.surface1;
  cpu_fgc        = colors.mauve;

  backlight_bgc  = colors.surface1;
  backlight_fgc  = colors.yellow;

  battery_bgc    = colors.surface1;
  battery_fgc    = colors.green;

  tray_bgc       = colors.surface1;
  tray_fgc       = colors.text;

in
{
  programs.waybar.style = ''
    * {
      border: none;
      border-radius: ${border_radius};
      font-family: "JetBrainsMono Nerd Font";
      font-size: 14px;
    }

    window#waybar {
      background-color: ${window_bgc};
      color: ${window_fgc};
    }

    .modules {
      margin: 0 5px;
    }

    .module {
      background-color: ${module_bgc};
      color: ${module_fgc};
      padding: 0 8px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }

    .module:hover {
      background-color: ${mod_hover_bgc};
    }

    #clock {
      border: 5px;
      background-color: ${clock_bgc};
      color: ${clock_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
      border-color: ${window_bc};
    }

    #battery {
      background-color: ${battery_bgc};
      color: ${battery_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }

    #cpu {
      background-color: ${cpu_bgc};
      color: ${cpu_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }

    #memory {
      background-color: ${memory_bgc};
      color: ${memory_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }

    #pulseaudio {
      background-color: ${pulseaudio_bgc};
      color: ${pulseaudio_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }

    #backlight {
      background-color: ${backlight_bgc};
      color: ${backlight_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }

    #tray {
      background-color: ${tray_bgc};
      color: ${tray_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
    }
  '';
}

