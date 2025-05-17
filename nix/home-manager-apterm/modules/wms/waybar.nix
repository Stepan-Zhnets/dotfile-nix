# ~/nix/home-manager-apterm/modules/wms/waybar.nix

{
	programs.waybar = {
		enable = true;
settings = {
mainBar = {
	layer = "top";
	position = "top";
	margin = "9 13 -10 18";

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
		"temperature"
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
		# timezone = "Europe/Moscow";
		tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
		format = "{:%a; %d %b, %I:%M %p}";
	};

	"pulseaudio" = {
		scroll-step = 1; # %, can be a float
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
		thermal-zone = 2;
		hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
		critical-threshold = 80;
		format-critical = "{temperatureC}°C {icon}";
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
  
    style = 
      ''
* {
    border: none;
    border-radius: 0px;
    /* `otf-font-awesome` is required to be installed for icons */
    font-family: JetBrains Mono;
    font-weight: bold; 
    min-height: 20px;
}

window#waybar {
    background: transparent;
}

window#waybar.hidden {
    opacity: 0.2;
}

#workspaces {
    margin-right: 8px;
    border-radius: 0px;
    transition: none;
        background: #383c4a;
}

#workspaces button {
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
    padding: 5px;
    font-size: 18px;
}

#workspaces button.persistent {
    color: rgb(45, 35, 25);
    font-size: 12px;
}

/* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
#workspaces button:hover { /* кнопка при наведении курсора */
    transition: none;
    box-shadow: inherit;
    text-shadow: inherit;
    border-radius: inherit;
    color: rgb(135, 105, 75);
    background: rgb(64, 45, 25);
}

#workspaces button.active { /* Активная кнопка рабочего стола */
    background: rgb(191, 135, 75);
    color: rgb(45, 35, 25);
    border-radius: inherit;
}

#language {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#keyboard-state {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#custom-pacman {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 0px;
    transition: none;
    color: #ffffff;
    background: #383c4a;
}

#custom-mail {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: #ffffff;
    background: #383c4a;
}

#submap {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: #ffffff;
    background: #383c4a;
}

#clock {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#pulseaudio {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#pulseaudio.muted {
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#custom-mem {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#cpu {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#temperature {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#temperature.critical {
    background-color: rgb(135, 105, 75);
}

#backlight {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#battery {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

#battery.charging { /* бптарея заряжается */
    color: rgb(64, 45, 25);
    background-color: rgb(135, 105, 75);
}

#battery.warning:not(.charging) {
    background-color: rgb(191, 135, 75);
    color: rgb(25, 25, 25);
}

#battery.critical:not(.charging) { /* Батарея почти разряжена */
    color: rgb(64, 16, 16);
    background: rgb(191, 135, 75);
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#tray {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 0px;
    transition: none;
    color: rgb(191, 135, 75);
    background: rgb(45, 35, 25);
}

@keyframes blink {
    to {
        color: rgb(191, 135, 75);
        background-color: rgb(45, 35, 25);
    }
}
      '';
  };
}

