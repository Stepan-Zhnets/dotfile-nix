# ~/home-manager/modules/wms/hyprland/settings/misc.nix

{
  wayland.windowManager.hyprland.settings.misc = {
		animate_manual_resizes = true;
		animate_mouse_windowdragging = true;
		enable_swallow = true;
		# render_ahead_of_time = false;
		disable_hyprland_logo = true;
	};
}