{ config,  pkgs, ... }:
{
programs.rofi = {
	enable = true;
	package = pkgs.rofi-wayland;
	# theme = ./themes/catppuccin-mocha.rasi;
	font = "Iosevka 12";
	location = "bottom"; # center, top, left, right
	# models = [];
	
	terminal = "${pkgs.alacritty}/bin/alacritty";

	extraConfig = {
		modi = "combi";
		combi-modi = "windowcd, drun";
		terminal = "alacritty";
		show-icons = true;
		drun-display-format = "{icon} {name}";
		disable-history = false;
		hide-scrollbar = true;
		display-drun = "   Apps ";
		sidebar-mode = true;
	};

	theme = let
		inherit (config.lib.formats.rasi) mkLiteral;
	in {
" @import" = "default";
"*" = {
	bg = mkLiteral "#222222";	# Фон
	fg = mkLiteral "#F2F2F2";	# Текст
	bg-l = mkLiteral "#161616";	# 
	fg-l = mkLiteral "#F2F2F2";
	# blue = mklight "#aadb0f";
};
window = {
	border = 6;
	y-offset = -6;
	border-color = mkLiteral "#aadb0f";
};
	};
};

home.packages = [ pkgs.bemoji ];
}
