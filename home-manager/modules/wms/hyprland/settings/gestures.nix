# ~/home-manager/modules/wms/hyprland/settings/gestures.nix

{ # {_ЖЕСТЫ_}
wayland.windowManager.hyprland.settings.gestures = {
		workspace_swipe = true;
		workspace_swipe_fingers = 3;
		workspace_swipe_invert = false;
		workspace_swipe_distance = 200;
		workspace_swipe_forever = true;
	};
}