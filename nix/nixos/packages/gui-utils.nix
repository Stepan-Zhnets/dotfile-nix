# ~/nix/nixos/packages/gui-utils.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		feh
		imv
		dmenu
		# screenkey
		mako
		gromit-mpx
	];
}
