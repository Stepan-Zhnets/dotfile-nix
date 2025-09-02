# ~/nix/nixos/packages/wms-and-stuff.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
	
		#-LogOut
		wlogout

		# Paper
		waypaper

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
