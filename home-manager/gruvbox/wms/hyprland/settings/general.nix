# ~/home-manager/gruvbox/wms/hyprland/settings/general.nix

let
	colorTheme = import ./../../../color_theme.nix;
  colors = colorTheme.gruvbox_dark_hypr;
in{
wayland.windowManager.hyprland.settings.general = {
		gaps_in = 5;
		gaps_out = 10;

		border_size = 3;

		"col.active_border" = "rgba(${colors.fg_0}ff) rgba(${colors.fg_4}ff) 90deg"; # #fbf1c7 #a89984
		"col.inactive_border" = "rgba(${colors.bg_0_s}ff)"; # #32302f


		resize_on_border = false;
		no_border_on_floating = true;
		allow_tearing = false;

		layout = "dwindle";

		# no_cursor_warps = false;
	};
}
