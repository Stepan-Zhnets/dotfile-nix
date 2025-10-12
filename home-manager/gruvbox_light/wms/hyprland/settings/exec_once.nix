# ~/home-manager/modules/wms/hyprland/settings/exec_once.nix

{
  wayland.windowManager.hyprland.settings.exec-once = [
    "waybar"
  ];
}