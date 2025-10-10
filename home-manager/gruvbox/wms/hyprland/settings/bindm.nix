# ~/home-manager/modules/wms/hyprland/settings/bindm.nix

{
  wayland.windowManager.hyprland.settings.bindm = [
    "$mainMod, mouse:272, movewindow"
		"$mainMod, mouse:273, resizewindow"
  ];
}