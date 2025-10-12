# ~/home-manager/gruvbox/wms/waybar/style.nix

{ config, lib, ... }:
let 
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.gruvbox_dark;

  #|==============================|

  # window_br          = "25px 25px 50px 50px"; #top
  # border_radius      = "25px 25px 50px 50px"; #top
  border_radius      = "25px";

  window_bgc         = "rgba(202, 51, 51, 0)";
  window_fgc         = "rgba(202, 51, 51, 0)";
  # window_bgc         = colors.surface0;
  # window_fgc         = colors.overlay0;
  window_bc          = colors.bg_1;

  module_bgc         = colors.bg_1;
  module_fgc         = colors.fg_0;
  mod_hover_bgc      = colors.bg_3;

  workspaces_br      = "50px";
  workspaces_bg      = colors.bg_1;
  ws_bth_fgc         = colors.fg_0;
  ws_btn_persistent  = colors.fg_0;
  ws_btn_hower_fgc   = colors.bg_1;
  ws_btn_hower_bg    = colors.bg_3;
  ws_btn_active_bgc  = colors.fg_0;
  ws_btn_active_fgc  = colors.bg_3;

  language_br        = "50px 0px 0px 50px";
  language_fgc       = colors.fg_0;
  language_bc        = colors.bg_1;
  
  keyboard_br        = "0px 50px 50px 0px";
  keyboard_state_fgc = colors.fg_0;
  keyboard_state_bg  = colors.bg_1;

  clock_bgc          = colors.bg_1;
  clock_fgc          = colors.fg_0;
  
  pulseaudio_bgc     = colors.bg_1;
  pulseaudio_fgc     = colors.fg_0;

  memory_bgc         = colors.bg_1;
  memory_fgc         = colors.fg_0;
  
  cpu_bgc            = colors.bg_1;
  cpu_fgc            = colors.fg_0;

  backlight_bgc      = colors.bg_1;
  backlight_fgc      = colors.fg_0;

  battery_bgc        = colors.bg_1;
  battery_fgc        = colors.fg_0;

  tray_bgc           = colors.bg_1;
  tray_fgc           = colors.fg_0;

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

