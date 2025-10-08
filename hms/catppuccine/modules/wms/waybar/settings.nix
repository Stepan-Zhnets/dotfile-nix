# ~/home-manager/modules/wms/waybar/settings.nix

{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "bottom";
      margin = "1 250 1 250";

      modules-left = [
        "hyprland/workspaces"
        "hyprland/language"
        "keyboard-state"
        "hyprland/submap"
      ];
      modules-center = [
        "clock"
      ];
      modules-right = [
        "pulseaudio"
        "custom/mem"
        "cpu"
        "backlight"
        "battery"
        "tray"
      ];

      "hyprland/workspaces" = {
        disable-scroll = true;
      };

      "hyprland/language" = {
        format-en = "US";
        format-ru = "RU";
        min-length = 5;
        tooltip = false;
      };

      "keyboard-state" = {
        numlock = true;
        capslock = true;
        format = "{icon} ";
        format-icons = {
          locked = " ";
          unlocked = "";
        };
      };

      "clock" = {
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format = "{:%a; %d %b, %I:%M %p}";
      };

      "pulseaudio" = {
        reverse-scrolling = 1;
        format = "{volume}% {icon} {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        format-icons = {
          headphone = "";
          hands-free = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = ["" "" ""];
        };
        on-click = "pavucontrol";
        min-length = 13;
      };

      "custom/mem" = {
        format = "{} ";
        interval = 3;
        exec = "free -h | awk '/Mem:/{printf $3}'";
        tooltip = false;
      };

      "cpu" = {
        interval = 2;
        format = "{usage}% ";
        min-length = 6;
      };

      "temperature" = {
        critical-threshold = 80;
        format = "{temperatureC}°C {icon}";
        format-icons = ["" "" "" "" ""];
        tooltip = false;
      };

      "backlight" = {
        device = "intel_backlight";
        format = "{percent}% {icon}";
        format-icons = [""];
        min-length = 7;
      };

      battery = {
        states = {
            warning = 30;
            critical = 15;
        };
        format = "{capacity}% {icon}";
        format-charging = "{capacity}% ";
        format-plugged = "{capacity}% ";
        format-alt = "{time} {icon}";
        format-icons = ["" "" "" "" "" "" "" "" "" ""];
        on-update = "$HOME/.config/waybar/scripts/check_battery.sh";
      };

      tray = {
        icon-size = 16;
        spacing = 0;
      };
    };
  };
}
