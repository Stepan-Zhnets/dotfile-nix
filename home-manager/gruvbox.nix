# ~/nix/home-manager/home.nix
{
	imports = [./gruvbox/bundle.nix];

	# Выбор цветовой темы
	# theme.name = "catppuccin_mocha";

	home = {
		username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
	};
}
