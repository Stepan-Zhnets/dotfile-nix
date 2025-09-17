# ~/home-manager/modules/wms/hyprland/hyprland.nix

{ config, pkgs, ... }:
{
  imports = [
    ./bundle.nix
  ];

  wayland.windowManager.hyprland = {
    enable          = true;
    xwayland.enable = true;
    settings = {
      "$mainMod" = "SUPER"; # SUPER | ALT
      
      monitor = [
        "eDP-1,1920x1200@165,auto,1"
        # "HDMI-A-1,1920x1080@60,auto,1,transform,4"
      ];

      env = [
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XCURSOR_SIZE,36"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,~/screens"
      ];

      debug = {
        disable_logs = false;
        enablee_stdout_logs = true;
      };

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = false;
        };
        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      };
    };
  };
}