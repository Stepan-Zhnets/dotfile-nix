# ~/home-manager/modules/wms/hyprland/hyprland.nix

{
  imports = [
    #
  ];

  wayland.windowManager.hyprland = {
    enable          = true;
    xwayland.enable = true;
    settings = {
      "$mainMod" = "SUPER"; # SUPER | ALT
    };
  }
}