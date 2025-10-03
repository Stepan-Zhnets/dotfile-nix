# ~/nix/nixos/modules/bootloader.nix

{ config, pkgs, ... }:
{
	boot = {
		loader = {
			systemd-boot.enable = true;
			efi.canTouchEfiVariables = true;
		};
		initrd.kernelModules = [ "nvidia" ];
		kernelParams = [ "psmouse.synaptics_intertouch=0" ];
	};
}