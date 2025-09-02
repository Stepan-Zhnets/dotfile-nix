# ~/nix/nixos/

{ pkgs, lib, ... }: {
programs.eww = {
	enable = true;
	# configDir = /home/zhnets/.config/eww
};
}
