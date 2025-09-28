# ~/nix/nixos/packages/wms-and-stuff.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [

    # {_BAR_}
    waybar
    eww

    # {_APP_LAUNCHER_}
    rofi
    # rofi-wayland

    # {_HHYPR_}
    hyprland
    hyprlock
    hypridle
  ];
}
