# ~/nix/home-manager/home.nix
{
	imports = [
		./modules/bundle.nix
	];

	home = {
		username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
	};
}
