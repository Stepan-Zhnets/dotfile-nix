# ~/nix/nixos/modules/bundle.nix

{
	imports = [
		./bootloader.nix
		./sound.nix
		./user.nix
		./xserver.nix
		./nm.nix
		./hyprland.nix
    ./bluetooth.nix
    ./openssh.nix
	./cron.nix
		./nixvim/nixvim.nix
		./virtual-box.nix

    ./devops/devops-bundle.nix

		./drivers.nix
		./steam.nix
	];
}
