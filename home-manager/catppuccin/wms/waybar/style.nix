# ~/home-manager/modules/wms/waybar/style.nix

{ config, lib, ... }:
let 
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;

  #|==============================|

  # window_br          = "25px 25px 50px 50px"; #top
  # border_radius      = "25px 25px 50px 50px"; #top
  border_radius      = "25px";

  window_bgc         = "rgba(202, 51, 51, 0)";
  window_fgc         = "rgba(202, 51, 51, 0)";
  # window_bgc         = colors.surface0;
  # window_fgc         = colors.overlay0;
  window_bc          = colors.mauve;

  module_bgc         = colors.surface1;
  module_fgc         = colors.peach;
  mod_hover_bgc      = colors.surface0;

  workspaces_br      = "50px";
  workspaces_bg      = colors.surface1;
  ws_bth_fgc         = colors.mauve;
  ws_btn_persistent  = colors.green;
  ws_btn_hower_fgc   = colors.mauve;
  ws_btn_hower_bg    = colors.surface0;
  ws_btn_active_bgc  = colors.mauve;
  ws_btn_active_fgc  = colors.surface0;

  language_br        = "50px 0px 0px 50px";
  language_fgc       = colors.green;
  language_bc        = colors.surface1;
  
  keyboard_br        = "0px 50px 50px 0px";
  keyboard_state_fgc = colors.teal;
  keyboard_state_bg  = colors.surface1;

  clock_bgc          = colors.surface1;
  clock_fgc          = colors.rosewater;
  
  pulseaudio_bgc     = colors.surface1;
  pulseaudio_fgc     = colors.sapphire;

  memory_bgc         = colors.surface1;
  memory_fgc         = colors.red;
  
  cpu_bgc            = colors.surface1;
  cpu_fgc            = colors.mauve;

  backlight_bgc      = colors.surface1;
  backlight_fgc      = colors.yellow;

  battery_bgc        = colors.surface1;
  battery_fgc        = colors.green;

  tray_bgc           = colors.surface1;
  tray_fgc           = colors.text;

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

    window#waybar.hidden {
      opacity: 0.2;
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

    #workspaces {
      margin-right: 8px;
      border: 2 solid ${ws_bth_fgc};
      border-radius: ${workspaces_br};
      transition: none;
      background: ${workspaces_bg};
    }
    #workspaces button {
      transition: none;
      color: ${ws_bth_fgc};
      background: transparent;
      padding: 5px;
      font-size: 18px;
    }
    #workspaces button.persistent {
      color: ${ws_btn_persistent};
      font-size: 12px;
    }
    #workspaces button:hover {
      transition: none;
      box-shadow: inherit;
      text-shadow: inherit;
      border-radius: inherit;
      color: ${ws_btn_hower_fgc};
      background: ${ws_btn_hower_bg};
    }
    #workspaces button.active {
      background: ${ws_btn_active_bgc};
      color: ${ws_btn_active_fgc};
      border-radius: inherit;
    }

    #language {
      padding-left: 16px;
      padding-right: 8px;
      border: 2 solid ${language_fgc};
      border-radius: ${language_br};
      transition: none;
      color: ${language_fgc};
      background: ${language_bc};
    }

    #keyboard-state {
      margin-right: 8px;
      padding-right: 16px;
      border: 2 solid ${keyboard_state_fgc};
      border-radius: ${keyboard_br};
      transition: none;
      color: ${keyboard_state_fgc};
      background: ${keyboard_state_bg};
    }

    #clock {
      border: 5px;
      background-color: ${clock_bgc};
      color: ${clock_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border-radius: ${border_radius};
      border: 2 solid ${clock_fgc};
    }

    #battery {
      background-color: ${battery_bgc};
      color: ${battery_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border: 2 solid ${battery_fgc};
      border-radius: ${border_radius};
    }

    #cpu {
      background-color: ${cpu_bgc};
      color: ${cpu_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border: 2 solid ${cpu_fgc};
      border-radius: ${border_radius};
    }

    #memory {
      background-color: ${memory_bgc};
      color: ${memory_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border: 2 solid ${memory_fgc};
      border-radius: ${border_radius};
    }

    #pulseaudio {
      background-color: ${pulseaudio_bgc};
      color: ${pulseaudio_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border: 2 solid ${pulseaudio_fgc};
      border-radius: ${border_radius};
    }

    #backlight {
      background-color: ${backlight_bgc};
      color: ${backlight_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border: 2 solid ${backlight_fgc};
      border-radius: ${border_radius};
    }

    #tray {
      background-color: ${tray_bgc};
      color: ${tray_fgc};
      padding: 0 10px;
      margin: 3px 2px;
      border: 2 solid ${tray_fgc};
      border-radius: ${border_radius};
    }
  '';
}

