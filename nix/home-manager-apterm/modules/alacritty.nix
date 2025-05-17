# ~/nix/home-manager-apterm/modules/alacritty.nix

{ pkgs, ... }: {
	programs.alacritty = {
		enable = true;
		settings = {
			env.TERM = "xterm-256color";
			window = {
				padding = {
					x = 5;
					y = 5;
				};
				decorations = "none";
				opacity = 0.5;
			};
			scrolling.history = 1000;
			font = {
				size = 10;
			};
		};
	};
}
