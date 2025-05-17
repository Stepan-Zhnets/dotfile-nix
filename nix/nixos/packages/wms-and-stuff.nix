# ~/nix/nixos/packages/wms-and-stuff.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [

		# Bar
		waybar
		# polybar
		eww

		# Hypr
		hyprland
		hyprlock
		hypridle
	];
}
