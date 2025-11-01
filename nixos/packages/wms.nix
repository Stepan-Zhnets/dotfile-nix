# ~/nix/nixos/packages/wms-and-stuff.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [

    # {_BAR_}
    waybar
    eww

    # {_APP_LAUNCHER_}
    rofi
    rofi-network-manager
    # rofi-wayland
    wofi

    # {_HYPR_}
    hyprland
    hyprlock
    hypridle
    hyprpaper

    # {_PAPER_}
    waypaper
    mpvpaper

    #=> Logout
    wlogout
  ];
}
