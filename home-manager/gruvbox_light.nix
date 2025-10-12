# ~/nix/home-manager/gruvbox_light.nix
{
	imports = [./gruvbox_light/bundle.nix];

	home = {
		username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
	};
}