# ~/nix/nixos/modules/hyprland.nix

{ pkgs, lib, inputs, ... }: {
	programs.hyprland = {
		enable = true;
		package = inputs.hyprland.packages."${pkgs.system}".hyprland;
	};
}
