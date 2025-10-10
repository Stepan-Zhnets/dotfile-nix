# ~/home-manager/modules/wms/hyprland/settings/general.nix

let
	colorTheme = import ./../../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha_hypr;
in{
	wayland.windowManager.hyprland.settings.general = {
		gaps_in = 0;
		gaps_out = 0;

		border_size = 3;

		"col.active_border" = "rgba(${colors.mauve}ff) rgba(${colors.green}ff) 90deg"; # #cba6f7ff #b4befeff
		"col.inactive_border" = "rgba(${colors.overlay0}ff)"; # #6c7086ff

		resize_on_border = false;
		no_border_on_floating = true;
		allow_tearing = false;

		layout = "dwindle";

		# no_cursor_warps = false;
	};
}
