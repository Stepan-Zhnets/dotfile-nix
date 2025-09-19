# ~/home-manager/modules/wms/waybar/style.nix

{ lib, ... }:
let colors = import ./color.nix;
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
    background: ${colors.bg_2};
}

#workspaces button {
    transition: none;
    color: ${colors.fg_3};
    background: transparent;
    padding: 5px;
    font-size: 18px;
}

#workspaces button.persistent {
    color: ${colors.fg_3};
    font-size: 12px;
}

/* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
#workspaces button:hover {
    transition: none;
    box-shadow: inherit;
    text-shadow: inherit;
    border-radius: inherit;
    color: ${colors.bg_2};
    background: ${colors.fg_3};
}

#workspaces button.active {
    background: ${colors.bg_3};
    color: ${colors.fg};
    border-radius: inherit;
}

#language {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 10px 0px 0px 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#keyboard-state {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#custom-pacman {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 10px 0px 0px 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#custom-mail {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#submap {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#clock {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px 10px 10px 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#pulseaudio {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#pulseaudio.muted {
    background-color: ${colors.gray};
    color: ${colors.bg};
}

#custom-mem {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#cpu {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#temperature {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#temperature.critical {
    background-color: ${colors.red_l};
}

#backlight {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#battery {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: ${colors.fg};
    background: ${colors.bg_2};
}

#battery.charging {
    color: ${colors.fg};
    background-color: ${colors.green_l};
}

#battery.warning:not(.charging) {
    background-color: ${colors.orange_l};
    color: ${colors.bg};
}

#battery.critical:not(.charging) {
    background-color: ${colors.red_l};
    color: ${colors.fg};
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
    color: ${colors.fg};
    background: ${colors.bg_2};
}

@keyframes blink {
    to {
        background-color: #ffffff;
        color: #000000;
    }
}
  '';
}