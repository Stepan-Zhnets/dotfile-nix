# ~/home-manager/modules/wms/hyprland/settings/general.nix

{
wayland.windowManager.hyprland.settings.general = {
		gaps_in = 5;
		gaps_out = 10;

		border_size = 3;

    #"col.active_border" = "rgba(33ccffee) # rgba(00ff99ee) 45deg";
    #"col.inactive_border" = "rgba(595959aa)";

		resize_on_border = false;
		no_border_on_floating = true;
		allow_tearing = false;

		layout = "dwindle";

		# no_cursor_warps = false;
	};
}
