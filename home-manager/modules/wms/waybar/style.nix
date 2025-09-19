# ~/home-manager/modules/wms/waybar/style.nix

{ config, lib, ... }:
let 
  # Import the color theme
  colorTheme = import ./../../color_theme.nix;
  # Use gruvbox_dark theme by default
  colors = colorTheme.gruvbox_dark;
  
  # Color variables for better organization
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
    border-radius: 0;
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
    border-radius: 10px;
    transition: none;
    background: ${bg-secondary};
}

#workspaces button {
    transition: none;
    color: ${fg-secondary};
    background: transparent;
    padding: 5px;
    font-size: 18px;
}

#workspaces button.persistent {
    color: ${fg-secondary};
    font-size: 12px;
}

/* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
#workspaces button:hover {
    transition: none;
    box-shadow: inherit;
    text-shadow: inherit;
    border-radius: inherit;
    color: ${bg-secondary};
    background: ${fg-secondary};
}

#workspaces button.active {
    background: ${bg-tertiary};
    color: ${fg-primary};
    border-radius: inherit;
}

#language {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 10px 0px 0px 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#keyboard-state {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#custom-pacman {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 10px 0px 0px 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#custom-mail {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#submap {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#clock {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px 10px 10px 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#pulseaudio {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#pulseaudio.muted {
    background-color: ${gray-neutral};
    color: ${bg-primary};
}

#custom-mem {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#cpu {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#temperature {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#temperature.critical {
    background-color: ${red-bright};
}

#backlight {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#battery {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

#battery.charging {
    color: ${fg-primary};
    background-color: ${green-bright};
}

#battery.warning:not(.charging) {
    background-color: ${orange-bright};
    color: ${bg-primary};
}

#battery.critical:not(.charging) {
    background-color: ${red-bright};
    color: ${fg-primary};
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#tray {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${fg-primary};
    background: ${bg-secondary};
}

@keyframes blink {
    to {
        background-color: ${fg-primary};
        color: ${bg-primary};
    }
}
  '';
}