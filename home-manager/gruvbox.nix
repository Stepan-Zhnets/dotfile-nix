# ~/nix/home-manager/home.nix
{
	imports = [
		./modules/gruvbox.nix
	];

	# Выбор цветовой темы
	# theme.name = "catppuccin_mocha";

	home = {
		username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
	};
}
